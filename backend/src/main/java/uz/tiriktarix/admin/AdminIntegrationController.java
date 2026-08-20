package uz.tiriktarix.admin;

import java.time.OffsetDateTime;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.auth.User;
import uz.tiriktarix.auth.UserRepository;
import uz.tiriktarix.integration.IntegrationKey;
import uz.tiriktarix.integration.IntegrationKeyService;

/**
 * TTS / STT / LLM ulanishlari va ularning kalitlari.
 *
 * <p>KALIT QAYTARILMAYDI. Javobda faqat «kalit bormi» ({@code hasSecret}),
 * oxirgi to'rt belgi ({@code secretHint}) va kim/qachon almashtirgani bo'ladi.
 * Kalitni ochib ko'rsatadigan endpoint ataylab yozilmagan: panelga kirish
 * huquqi kalitlarni ko'chirib olish huquqini bermasligi kerak.
 *
 * <p>{@code readable = false} — bazadagi shifrni ochib bo'lmayapti degani.
 * Bu deyarli har doim {@code TIRIK_TARIX_SECRETS_KEY} almashganini bildiradi;
 * bunday holda kalitni qaytadan kiritish kerak.
 */
@RestController
@RequestMapping("/api/admin/integrations")
public class AdminIntegrationController {

    private static final String ENTITY = "INTEGRATION";

    public record IntegrationDto(Long id, String code, String kind, String label, String provider,
                                 String baseUrl, String model, boolean hasSecret, String secretHint,
                                 boolean readable, boolean active, String notes,
                                 OffsetDateTime updatedAt, String updatedBy) {
    }

    public record CreateRequest(String code, String kind, String label, String provider,
                                String baseUrl, String model, String notes, String secret) {
    }

    public record UpdateRequest(String kind, String label, String provider, String baseUrl,
                                String model, String notes, Boolean active) {
    }

    public record SecretRequest(String secret) {
    }

    private final IntegrationKeyService service;
    private final UserRepository userRepository;
    private final AdminAuditService audit;

    public AdminIntegrationController(IntegrationKeyService service, UserRepository userRepository,
                                      AdminAuditService audit) {
        this.service = service;
        this.userRepository = userRepository;
        this.audit = audit;
    }

    @GetMapping
    public List<IntegrationDto> list() {
        return service.list().stream().map(this::toDto).toList();
    }

    @PostMapping
    public IntegrationDto create(@AuthenticationPrincipal AuthPrincipal principal,
                                 @RequestBody CreateRequest request) {
        String login = loginOf(principal);
        IntegrationKey key = service.create(request.code(), request.kind(), request.label(),
                request.provider(), request.baseUrl(), request.model(), request.notes(),
                request.secret(), login);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, key.getId(),
                "Подключение добавлено: " + key.getCode());
        return toDto(key);
    }

    @PutMapping("/{id}")
    public IntegrationDto update(@AuthenticationPrincipal AuthPrincipal principal,
                                 @PathVariable Long id, @RequestBody UpdateRequest request) {
        IntegrationKey key = service.update(id, request.kind(), request.label(), request.provider(),
                request.baseUrl(), request.model(), request.notes(), request.active(),
                loginOf(principal));
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                "Подключение изменено: " + key.getCode());
        return toDto(key);
    }

    /** Kalitni almashtirish — eng tez-tez bajariladigan amal. Qiymat jurnalga tushmaydi. */
    @PutMapping("/{id}/secret")
    public IntegrationDto rotate(@AuthenticationPrincipal AuthPrincipal principal,
                                 @PathVariable Long id, @RequestBody SecretRequest request) {
        IntegrationKey key = service.rotate(id, request.secret(), loginOf(principal));
        audit.log(principal, AdminAuditService.SECRET, ENTITY, id,
                "Ключ заменён: " + key.getCode() + " (" + key.getSecretHint() + ")");
        return toDto(key);
    }

    @DeleteMapping("/{id}/secret")
    public IntegrationDto clearSecret(@AuthenticationPrincipal AuthPrincipal principal,
                                      @PathVariable Long id) {
        IntegrationKey key = service.clearSecret(id, loginOf(principal));
        audit.log(principal, AdminAuditService.SECRET, ENTITY, id,
                "Ключ удалён: " + key.getCode());
        return toDto(key);
    }

    @DeleteMapping("/{id}")
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        IntegrationKey key = service.get(id);
        service.delete(id);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id,
                "Подключение удалено: " + key.getCode());
    }

    private IntegrationDto toDto(IntegrationKey k) {
        return new IntegrationDto(k.getId(), k.getCode(), k.getKind(), k.getLabel(), k.getProvider(),
                k.getBaseUrl(), k.getModel(), k.hasSecret(), k.getSecretHint(), service.readable(k),
                k.isActive(), k.getNotes(), k.getUpdatedAt(), k.getUpdatedBy());
    }

    private String loginOf(AuthPrincipal principal) {
        if (principal == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Сначала войдите в систему");
        }
        return userRepository.findById(principal.userId()).map(User::getUsername).orElse("?");
    }
}
