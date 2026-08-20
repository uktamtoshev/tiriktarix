package uz.tiriktarix.profile;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * Yutuqning TA'RIFI (V107): matn, emoji, chegara va qaysi ko'rsatkich bo'yicha
 * o'lchanishi.
 *
 * <p>Yutuqning BAJARILGANLIGI saqlanmaydi — u har safar profil ma'lumotlaridan
 * qayta hisoblanadi ({@link AchievementService}). Shuning uchun bir marta
 * olingan yutuq keyin yo'qolmaydi va XP sarflanmaydi.
 */
@Entity
@Table(name = "achievements")
public class AchievementDefinition {

    /**
     * Qaysi ko'rsatkich bo'yicha o'lchanadi. Ro'yxatni KOD biladi — bazada u
     * CHECK bilan qulflangan, shuning uchun noma'lum qiymat kirib kelmaydi.
     */
    public enum Metric {
        XP, STREAK_DAYS, TOTAL_QUIZZES, PERFECT_QUIZZES, TOTAL_QUESTIONS,
        CONVERSATIONS, HEROES_TALKED, RIDDLE_SOLVED
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String code;

    private String metric;

    private int target;

    private String titleUz;

    private String titleRu;

    private String descriptionUz;

    private String descriptionRu;

    private String emoji;

    private Integer ordinal;

    // ===== Boshqaruv paneli uchun (V107). =====

    public void setCode(String code) {
        this.code = code;
    }

    public void setMetric(String metric) {
        this.metric = metric;
    }

    public void setTarget(int target) {
        this.target = target;
    }

    public void setTitleUz(String titleUz) {
        this.titleUz = titleUz;
    }

    public void setTitleRu(String titleRu) {
        this.titleRu = titleRu;
    }

    public void setDescriptionUz(String descriptionUz) {
        this.descriptionUz = descriptionUz;
    }

    public void setDescriptionRu(String descriptionRu) {
        this.descriptionRu = descriptionRu;
    }

    public void setEmoji(String emoji) {
        this.emoji = emoji;
    }

    public void setOrdinal(Integer ordinal) {
        this.ordinal = ordinal;
    }

    public Long getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    public String getMetric() {
        return metric;
    }

    public int getTarget() {
        return target;
    }

    public String getTitleUz() {
        return titleUz;
    }

    public String getTitleRu() {
        return titleRu;
    }

    public String getDescriptionUz() {
        return descriptionUz;
    }

    public String getDescriptionRu() {
        return descriptionRu;
    }

    public String getEmoji() {
        return emoji;
    }

    public Integer getOrdinal() {
        return ordinal;
    }
}
