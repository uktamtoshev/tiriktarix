package uz.tiriktarix.integration;

import java.util.List;
import java.util.Optional;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

/**
 * Integratsiya kalitlari bilan ishlash.
 *
 * <p>Ikki xil mijozi bor:
 * <ul>
 *   <li>boshqaruv paneli — ro'yxat, tahrir, kalitni almashtirish;</li>
 *   <li>xizmat kodlari (TTS/STT klientlari) — {@link #secretOf(String)} va
 *       {@link #configOf(String)}.</li>
 * </ul>
 *
 * <p>Kalit qiymati hech qachon panelga qaytarilmaydi: uni ochib ko'rsatadigan
 * endpoint ataylab yozilmagan. Almashtirish — yagona amal.
 */
@Service
public class IntegrationKeyService {

    /** Xizmat kodiga kerak bo'ladigan hamma narsa. */
    public record Config(String code, String provider, String baseUrl, String model, String secret) {
    }

    private final IntegrationKeyRepository repository;
    private final SecretCipher cipher;

    public IntegrationKeyService(IntegrationKeyRepository repository, SecretCipher cipher) {
        this.repository = repository;
        this.cipher = cipher;
    }

    // ===================== Xizmat kodlari uchun =====================

    /** Faol ulanishning ochiq kaliti. Kalit yo'q yoki o'chirilgan bo'lsa — bo'sh. */
    @Transactional(readOnly = true)
    public Optional<String> secretOf(String code) {
        return configOf(code).map(Config::secret).filter(s -> s != null && !s.isBlank());
    }

    @Transactional(readOnly = true)
    public Optional<Config> configOf(String code) {
        return repository.findByCode(code)
                .filter(IntegrationKey::isActive)
                .map(k -> new Config(k.getCode(), k.getProvider(), k.getBaseUrl(), k.getModel(),
                        cipher.decrypt(k.getSecretCipher())));
    }

    /** Turi bo'yicha birinchi faol ulanish: TTS/STT klientlari shu bilan ishlaydi. */
    @Transactional(readOnly = true)
    public Optional<Config> firstActiveOfKind(String kind) {
        return repository.findByKindAndActiveTrue(kind).stream()
                .filter(IntegrationKey::hasSecret)
                .findFirst()
                .map(k -> new Config(k.getCode(), k.getProvider(), k.getBaseUrl(), k.getModel(),
                        cipher.decrypt(k.getSecretCipher())));
    }

    // ===================== Panel uchun =====================

    @Transactional(readOnly = true)
    public List<IntegrationKey> list() {
        return repository.findAllByOrderByKindAscCodeAsc();
    }

    @Transactional(readOnly = true)
    public IntegrationKey get(Long id) {
        return repository.findById(id).orElseThrow(
                () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Подключение не найдено"));
    }

    @Transactional
    public IntegrationKey create(String code, String kind, String label, String provider,
                                 String baseUrl, String model, String notes,
                                 String secret, String adminLogin) {
        String normalized = normalizeCode(code);
        if (repository.findByCode(normalized).isPresent()) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Подключение с таким кодом уже есть");
        }
        IntegrationKey key = new IntegrationKey(normalized, requireKind(kind), require(label, "Название"));
        key.setProvider(trimToNull(provider));
        key.setBaseUrl(trimToNull(baseUrl));
        key.setModel(trimToNull(model));
        key.setNotes(trimToNull(notes));
        applySecret(key, secret);
        key.touch(adminLogin);
        return repository.save(key);
    }

    @Transactional
    public IntegrationKey update(Long id, String kind, String label, String provider,
                                 String baseUrl, String model, String notes,
                                 Boolean active, String adminLogin) {
        IntegrationKey key = get(id);
        key.setKind(requireKind(kind));
        key.setLabel(require(label, "Название"));
        key.setProvider(trimToNull(provider));
        key.setBaseUrl(trimToNull(baseUrl));
        key.setModel(trimToNull(model));
        key.setNotes(trimToNull(notes));
        if (active != null) {
            key.setActive(active);
        }
        key.touch(adminLogin);
        return repository.save(key);
    }

    /** Kalitni almashtirish — eng tez-tez bajariladigan amal. */
    @Transactional
    public IntegrationKey rotate(Long id, String secret, String adminLogin) {
        IntegrationKey key = get(id);
        if (secret == null || secret.isBlank()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Ключ не может быть пустым");
        }
        applySecret(key, secret);
        key.touch(adminLogin);
        return repository.save(key);
    }

    @Transactional
    public IntegrationKey clearSecret(Long id, String adminLogin) {
        IntegrationKey key = get(id);
        key.setSecretCipher(null);
        key.setSecretHint(null);
        key.touch(adminLogin);
        return repository.save(key);
    }

    @Transactional
    public void delete(Long id) {
        repository.delete(get(id));
    }

    private void applySecret(IntegrationKey key, String secret) {
        if (secret == null || secret.isBlank()) {
            return;
        }
        String trimmed = secret.trim();
        key.setSecretCipher(cipher.encrypt(trimmed));
        key.setSecretHint(SecretCipher.hintOf(trimmed));
    }

    /**
     * Kalit o'qiladimi — panel «kalit bor, lekin ochilmayapti» holatini
     * ko'rsatishi uchun. Bu odatda TIRIK_TARIX_SECRETS_KEY almashganini bildiradi.
     */
    public boolean readable(IntegrationKey key) {
        return !key.hasSecret() || cipher.decrypt(key.getSecretCipher()) != null;
    }

    private static String normalizeCode(String code) {
        String value = require(code, "Код").toUpperCase().replaceAll("[^A-Z0-9_]", "_");
        if (value.length() > 40) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Код слишком длинный");
        }
        return value;
    }

    private static String requireKind(String kind) {
        String value = require(kind, "Тип").toUpperCase();
        return switch (value) {
            case IntegrationKey.KIND_TTS, IntegrationKey.KIND_STT,
                 IntegrationKey.KIND_LLM, IntegrationKey.KIND_OTHER -> value;
            default -> throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Тип должен быть TTS, STT, LLM или OTHER");
        };
    }

    private static String require(String value, String label) {
        if (value == null || value.isBlank()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, label + " — обязательное поле");
        }
        return value.trim();
    }

    private static String trimToNull(String value) {
        return value == null || value.isBlank() ? null : value.trim();
    }
}
