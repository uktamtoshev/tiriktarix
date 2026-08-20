package uz.tiriktarix.avatar;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * Qahramon tipi (arxetip) — V107 dan boshlab bazada.
 *
 * <p>QOIDA: tip — bu «men kimman» degan tanlov, mukofot emas. Barcha tiplar
 * birinchi kundanoq ochiq va bepul, ularni istagan paytda almashtirish mumkin.
 * Mukofot esa {@link AvatarItem} bo'lib qoladi.
 */
@Entity
@Table(name = "archetypes")
public class Archetype {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String code;

    private String gender;

    private String nameUz;

    private String nameRu;

    private String taglineUz;

    private String taglineRu;

    private Integer ordinal;

    /** JPA uchun. */
    protected Archetype() {
    }

    public Archetype(String code, String gender, String nameUz, String nameRu,
                     String taglineUz, String taglineRu, Integer ordinal) {
        this.code = code;
        this.gender = gender;
        this.nameUz = nameUz;
        this.nameRu = nameRu;
        this.taglineUz = taglineUz;
        this.taglineRu = taglineRu;
        this.ordinal = ordinal;
    }

    // ===== Boshqaruv paneli uchun (V107). Ochiq API faqat o'qiydi. =====

    public void setCode(String code) {
        this.code = code;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setNameUz(String nameUz) {
        this.nameUz = nameUz;
    }

    public void setNameRu(String nameRu) {
        this.nameRu = nameRu;
    }

    public void setTaglineUz(String taglineUz) {
        this.taglineUz = taglineUz;
    }

    public void setTaglineRu(String taglineRu) {
        this.taglineRu = taglineRu;
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

    public String getGender() {
        return gender;
    }

    public String getNameUz() {
        return nameUz;
    }

    public String getNameRu() {
        return nameRu;
    }

    public String getTaglineUz() {
        return taglineUz;
    }

    public String getTaglineRu() {
        return taglineRu;
    }

    public Integer getOrdinal() {
        return ordinal;
    }
}
