package uz.tiriktarix.integration;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.OffsetDateTime;

/**
 * Tashqi xizmat ulanishi: TTS (ovozlantirish), STT (nutqni tanish), LLM.
 *
 * <p>Kalit tez-tez yangilanadi, shuning uchun u env da emas, bazada turadi va
 * paneldan almashtiriladi — serverni qayta ishga tushirish shart emas.
 * {@code secretCipher} — AES-GCM bilan shifrlangan qiymat ({@link SecretCipher}),
 * {@code secretHint} — panelda ko'rsatiladigan oxirgi to'rt belgi.
 */
@Entity
@Table(name = "integration_keys")
public class IntegrationKey {

    public static final String KIND_TTS = "TTS";
    public static final String KIND_STT = "STT";
    public static final String KIND_LLM = "LLM";
    public static final String KIND_OTHER = "OTHER";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /** Kod bilan chaqiriladi: {@code IntegrationKeyService.secretOf("TTS_MAIN")}. */
    private String code;

    private String kind;

    private String label;

    private String provider;

    private String baseUrl;

    /** TTS uchun ovoz nomi, STT/LLM uchun model nomi. */
    private String model;

    private String secretCipher;

    private String secretHint;

    private boolean active;

    private String notes;

    private OffsetDateTime updatedAt;

    private String updatedBy;

    protected IntegrationKey() {
    }

    public IntegrationKey(String code, String kind, String label) {
        this.code = code;
        this.kind = kind;
        this.label = label;
        this.active = true;
        this.updatedAt = OffsetDateTime.now();
    }

    public void touch(String adminLogin) {
        this.updatedAt = OffsetDateTime.now();
        this.updatedBy = adminLogin;
    }

    public boolean hasSecret() {
        return secretCipher != null && !secretCipher.isBlank();
    }

    public Long getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    public String getBaseUrl() {
        return baseUrl;
    }

    public void setBaseUrl(String baseUrl) {
        this.baseUrl = baseUrl;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getSecretCipher() {
        return secretCipher;
    }

    public void setSecretCipher(String secretCipher) {
        this.secretCipher = secretCipher;
    }

    public String getSecretHint() {
        return secretHint;
    }

    public void setSecretHint(String secretHint) {
        this.secretHint = secretHint;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public OffsetDateTime getUpdatedAt() {
        return updatedAt;
    }

    public String getUpdatedBy() {
        return updatedBy;
    }
}
