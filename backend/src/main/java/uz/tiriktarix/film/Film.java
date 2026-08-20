package uz.tiriktarix.film;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * M2. Kinozal birligi — tarixiy short yoki hujjatli film.
 *
 * <p>Yozuv nafaqat nashr etilgan videoni, balki ishlab chiqarish bosqichini ham
 * saqlaydi: PLANNED → SCRIPT → IN_REVIEW → PUBLISHED. Faqat PUBLISHED holatida
 * {@code videoUrl} to'ldiriladi (bu shart bazada CHECK bilan qo'riqlanadi).
 */
@Entity
@Table(name = "films")
public class Film {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long eraId;

    private Long heroId;

    private String titleUz;

    /** SHORT — 2–4 daqiqa, DOC — hujjatli, FEATURE — to'liq metrajli. */
    private String kind;

    private Integer durationMinutes;

    private String synopsisUz;

    private String posterEmoji;

    private String status;

    private String videoUrl;

    private String source;

    /** Stsenariyni metodist-tarixchi tasdiqlaganmi. */
    private boolean verified;

    private Integer ordinal;

    // ===== Ruscha matn (V102). NULL — interfeys o'zbekcha asl matnni beradi. =====

    private String titleRu;

    private String synopsisRu;

    /**
     * Qaysi tarixga tegishli: 'UZ' — O'zbekiston, 'RU' — Rossiya (V105).
     * Standart 'UZ', shuning uchun eski yozuvlar joyida qoladi.
     */
    private String country;

    public Long getId() {
        return id;
    }

    public String getTitleRu() {
        return titleRu;
    }

    public String getSynopsisRu() {
        return synopsisRu;
    }

    public void setTitleRu(String titleRu) {
        this.titleRu = titleRu;
    }

    public void setSynopsisRu(String synopsisRu) {
        this.synopsisRu = synopsisRu;
    }

    public Long getEraId() {
        return eraId;
    }

    public Long getHeroId() {
        return heroId;
    }

    public String getTitleUz() {
        return titleUz;
    }

    public String getKind() {
        return kind;
    }

    public Integer getDurationMinutes() {
        return durationMinutes;
    }

    public String getSynopsisUz() {
        return synopsisUz;
    }

    public String getPosterEmoji() {
        return posterEmoji;
    }

    public String getStatus() {
        return status;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public String getSource() {
        return source;
    }

    public boolean isVerified() {
        return verified;
    }

    public Integer getOrdinal() {
        return ordinal;
    }

    // ===== Boshqaruv paneli uchun (V37). Ochiq API faqat o'qiydi. =====

    public void setEraId(Long eraId) {
        this.eraId = eraId;
    }

    public void setHeroId(Long heroId) {
        this.heroId = heroId;
    }

    public void setTitleUz(String titleUz) {
        this.titleUz = titleUz;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public void setDurationMinutes(Integer durationMinutes) {
        this.durationMinutes = durationMinutes;
    }

    public void setSynopsisUz(String synopsisUz) {
        this.synopsisUz = synopsisUz;
    }

    public void setPosterEmoji(String posterEmoji) {
        this.posterEmoji = posterEmoji;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public void setOrdinal(Integer ordinal) {
        this.ordinal = ordinal;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
