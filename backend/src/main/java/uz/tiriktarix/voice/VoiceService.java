package uz.tiriktarix.voice;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.Arrays;
import java.util.Base64;
import java.util.LinkedHashSet;
import java.util.Set;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.config.AppProperties;
import uz.tiriktarix.integration.IntegrationKeyService;
import uz.tiriktarix.integration.IntegrationKeyService.Config;

/**
 * Ajdodlar ovozi: TTS (matn → nutq) va STT (nutq → matn).
 *
 * <p>Ulanish paneldagi TTS_MAIN / STT_MAIN yozuvlaridan olinadi. LOKAL API
 * rejimi: agar sir maydoniga URL yozilgan bo'lsa (http…/synthesize,
 * http…/transcribe), so'rov aynan shu manzilga kalitsiz yuboriladi. Aks holda
 * sir — Bearer kalit, manzil esa base_url dan olinadi.
 *
 * <p>Ovoz hozircha faqat ro'yxatdagi ajdodlarda yoqilgan
 * (tirik-tarix.voice.enabled-heroes) — birinchi bosqichda amir-temur.
 */
@Service
public class VoiceService {

    public record TtsAudio(byte[] bytes, String contentType) {
    }

    private static final int MAX_TTS_CHARS = 700;

    private final IntegrationKeyService keys;
    private final AppProperties properties;
    private final ObjectMapper mapper;
    private final VoiceCacheService cache;
    private final HttpClient http = HttpClient.newBuilder()
            .connectTimeout(Duration.ofSeconds(5))
            .build();

    public VoiceService(IntegrationKeyService keys, AppProperties properties, ObjectMapper mapper,
                        VoiceCacheService cache) {
        this.keys = keys;
        this.properties = properties;
        this.mapper = mapper;
        this.cache = cache;
    }

    // ============================ Holat ============================

    /** Ovoz yoqilgan ajdodlar (vergul bilan; «*» — hammasi; bo'sh — hech kim). */
    public Set<String> enabledHeroes() {
        var voice = properties.voice();
        if (voice == null || voice.enabledHeroes() == null || voice.enabledHeroes().isBlank()) {
            return Set.of();
        }
        return new LinkedHashSet<>(Arrays.stream(voice.enabledHeroes().split(","))
                .map(String::trim)
                .filter(s -> !s.isEmpty())
                .toList());
    }

    private boolean isEnabled(String heroSlug) {
        Set<String> heroes = enabledHeroes();
        return heroes.contains("*") || heroes.contains(heroSlug);
    }

    public boolean ttsConfigured() {
        return keys.secretOf("TTS_MAIN").isPresent();
    }

    public boolean sttConfigured() {
        return keys.secretOf("STT_MAIN").isPresent();
    }

    private void requireEnabled(String heroSlug) {
        if (!isEnabled(heroSlug)) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN,
                    "Bu ajdod uchun ovoz hali yoqilmagan");
        }
    }

    /** Sir URL bo'lsa — manzil o'zi; aks holda base_url manzil, sir esa kalit. */
    private static URI endpointOf(Config cfg) {
        String secret = cfg.secret() == null ? "" : cfg.secret().trim();
        if (secret.startsWith("http://") || secret.startsWith("https://")) {
            return URI.create(secret);
        }
        if (cfg.baseUrl() != null && !cfg.baseUrl().isBlank()) {
            return URI.create(cfg.baseUrl().trim());
        }
        throw new ResponseStatusException(HttpStatus.SERVICE_UNAVAILABLE,
                "Ovoz xizmati manzili sozlanmagan");
    }

    private static String bearerOf(Config cfg) {
        String secret = cfg.secret() == null ? "" : cfg.secret().trim();
        return secret.startsWith("http") ? null : secret;
    }

    // ============================ TTS ============================

    public TtsAudio speak(String heroSlug, String text) {
        requireEnabled(heroSlug);
        if (text == null || text.isBlank()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Matn bo'sh");
        }
        String clean = text.strip();
        if (clean.length() > MAX_TTS_CHARS) {
            clean = clean.substring(0, MAX_TTS_CHARS);
        }
        Config cfg = keys.configOf("TTS_MAIN")
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.SERVICE_UNAVAILABLE,
                        "TTS ulanmagan"));

        /*
          KESH (V150). Bir xil jumla qayta-qayta sintez qilinishi — bu to'g'ridan
          to'g'ri pul. Kalit ovoz va matndan yig'iladi, shuning uchun paneldan
          ovoz almashtirilsa eski tovush ishlatilmaydi.

          Keshning HAR QANDAY nosozligi jimgina o'tadi: bola ovozni baribir
          eshitishi kerak, kesh esa faqat tezlik va xarajat masalasi.
        */
        String voice = cfg.model();
        try {
            var cached = cache.lookup(voice, clean);
            if (cached.isPresent()) {
                return cached.get();
            }
        } catch (RuntimeException e) {
            // keshsiz davom etamiz
        }

        TtsAudio fresh = synthesize(cfg, clean);
        try {
            cache.store(voice, clean, fresh);
        } catch (RuntimeException e) {
            // ovoz allaqachon tayyor — keshga yozilmagani muhim emas
        }
        return fresh;
    }

    /** Tashqi TTS xizmatiga murojaat. Keshdan mustaqil. */
    private TtsAudio synthesize(Config cfg, String clean) {
        try {
            var body = mapper.createObjectNode().put("text", clean);
            if (cfg.model() != null && !cfg.model().isBlank()) {
                body.put("voice", cfg.model());
            }
            HttpRequest.Builder rb = HttpRequest.newBuilder(endpointOf(cfg))
                    .timeout(Duration.ofSeconds(30))
                    .header("Content-Type", "application/json")
                    // ngrok bepul tunnellari bu sarlavhasiz HTML ogohlantirish qaytarishi mumkin
                    .header("ngrok-skip-browser-warning", "1")
                    .POST(HttpRequest.BodyPublishers.ofString(mapper.writeValueAsString(body)));
            String bearer = bearerOf(cfg);
            if (bearer != null && !bearer.isBlank()) {
                rb.header("Authorization", "Bearer " + bearer);
            }
            HttpResponse<byte[]> res = http.send(rb.build(), HttpResponse.BodyHandlers.ofByteArray());
            if (res.statusCode() >= 300) {
                throw new ResponseStatusException(HttpStatus.BAD_GATEWAY,
                        "TTS xizmati xatosi: " + res.statusCode());
            }
            String type = res.headers().firstValue("Content-Type").orElse("audio/wav");
            // Ba'zi lokal xizmatlar audioni JSON ichida base64 qilib qaytaradi
            if (type.contains("json")) {
                JsonNode node = mapper.readTree(res.body());
                for (String field : new String[]{"audio", "audio_base64", "audioContent", "data"}) {
                    if (node.hasNonNull(field)) {
                        return new TtsAudio(Base64.getDecoder().decode(node.get(field).asText()),
                                "audio/wav");
                    }
                }
                throw new ResponseStatusException(HttpStatus.BAD_GATEWAY,
                        "TTS javobida audio topilmadi");
            }
            return new TtsAudio(res.body(), type);
        } catch (IOException | InterruptedException e) {
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            throw new ResponseStatusException(HttpStatus.BAD_GATEWAY,
                    "TTS xizmatiga ulanib bo'lmadi");
        }
    }

    // ============================ STT ============================

    public String transcribe(String heroSlug, byte[] audio, String filename, String contentType) {
        requireEnabled(heroSlug);
        if (audio == null || audio.length == 0) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Audio bo'sh");
        }
        Config cfg = keys.configOf("STT_MAIN")
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.SERVICE_UNAVAILABLE,
                        "STT ulanmagan"));
        try {
            String boundary = "----tirik-tarix-" + System.nanoTime();
            byte[] multipart = multipartFile(boundary, "file",
                    filename == null ? "savol.webm" : filename,
                    contentType == null ? "audio/webm" : contentType, audio);
            HttpRequest.Builder rb = HttpRequest.newBuilder(endpointOf(cfg))
                    .timeout(Duration.ofSeconds(60))
                    .header("Content-Type", "multipart/form-data; boundary=" + boundary)
                    .header("ngrok-skip-browser-warning", "1")
                    .POST(HttpRequest.BodyPublishers.ofByteArray(multipart));
            String bearer = bearerOf(cfg);
            if (bearer != null && !bearer.isBlank()) {
                rb.header("Authorization", "Bearer " + bearer);
            }
            HttpResponse<byte[]> res = http.send(rb.build(), HttpResponse.BodyHandlers.ofByteArray());
            if (res.statusCode() >= 300) {
                throw new ResponseStatusException(HttpStatus.BAD_GATEWAY,
                        "STT xizmati xatosi: " + res.statusCode());
            }
            String raw = new String(res.body(), StandardCharsets.UTF_8).strip();
            // JSON {text|transcript|result: …} yoki oddiy matn — ikkalasini ham qabul qilamiz
            if (raw.startsWith("{")) {
                JsonNode node = mapper.readTree(raw);
                for (String field : new String[]{"text", "transcript", "transcription", "result"}) {
                    if (node.hasNonNull(field) && node.get(field).isTextual()) {
                        return node.get(field).asText().strip();
                    }
                }
                throw new ResponseStatusException(HttpStatus.BAD_GATEWAY,
                        "STT javobida matn topilmadi");
            }
            return raw;
        } catch (IOException | InterruptedException e) {
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            throw new ResponseStatusException(HttpStatus.BAD_GATEWAY,
                    "STT xizmatiga ulanib bo'lmadi");
        }
    }

    /** Bitta fayldan iborat multipart/form-data tanasi (tashqi kutubxonasiz). */
    private static byte[] multipartFile(String boundary, String field, String filename,
                                        String contentType, byte[] data) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        String head = "--" + boundary + "\r\n"
                + "Content-Disposition: form-data; name=\"" + field + "\"; filename=\""
                + filename.replace("\"", "") + "\"\r\n"
                + "Content-Type: " + contentType + "\r\n\r\n";
        out.write(head.getBytes(StandardCharsets.UTF_8));
        out.write(data);
        out.write(("\r\n--" + boundary + "--\r\n").getBytes(StandardCharsets.UTF_8));
        return out.toByteArray();
    }
}
