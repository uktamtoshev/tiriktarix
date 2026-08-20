package uz.tiriktarix.era;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

@Entity
@Table(name = "eras")
public class Era {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String code;

    private String nameUz;

    private Integer ordinal;

    private Integer yearFrom;

    private Integer yearTo;

    private String descriptionUz;

    /** Davr sahifasidagi matn (V36). Hozircha bo'sh — material yig'ilmagan. */
    private String biographyUz;

    @JdbcTypeCode(SqlTypes.JSON)
    private String biographySources;

    private boolean biographyVerified;

    // ===== Ruscha matn (V102). NULL — interfeys o'zbekcha asl matnni beradi. =====

    private String nameRu;

    private String descriptionRu;

    /**
     * Qaysi tarixga tegishli: 'UZ' — O'zbekiston, 'RU' — Rossiya (V105).
     * Standart 'UZ', shuning uchun eski yozuvlar joyida qoladi.
     */
    private String country;

    public Long getId() {
        return id;
    }

    public String getNameRu() {
        return nameRu;
    }

    public String getDescriptionRu() {
        return descriptionRu;
    }

    public String getCode() {
        return code;
    }

    public String getNameUz() {
        return nameUz;
    }

    public Integer getOrdinal() {
        return ordinal;
    }

    public Integer getYearFrom() {
        return yearFrom;
    }

    public Integer getYearTo() {
        return yearTo;
    }

    public String getDescriptionUz() {
        return descriptionUz;
    }

    public String getBiographyUz() {
        return biographyUz;
    }

    public String getBiographySources() {
        return biographySources;
    }

    public boolean isBiographyVerified() {
        return biographyVerified;
    }

    // ===== Boshqaruv paneli uchun (V37). Ochiq API faqat o'qiydi. =====

    public void setCode(String code) {
        this.code = code;
    }

    public void setNameUz(String nameUz) {
        this.nameUz = nameUz;
    }

    public void setOrdinal(Integer ordinal) {
        this.ordinal = ordinal;
    }

    public void setYearFrom(Integer yearFrom) {
        this.yearFrom = yearFrom;
    }

    public void setYearTo(Integer yearTo) {
        this.yearTo = yearTo;
    }

    public void setDescriptionUz(String descriptionUz) {
        this.descriptionUz = descriptionUz;
    }

    public void setBiographyUz(String biographyUz) {
        this.biographyUz = biographyUz;
    }

    public void setBiographySources(String biographySources) {
        this.biographySources = biographySources;
    }

    public void setBiographyVerified(boolean biographyVerified) {
        this.biographyVerified = biographyVerified;
    }

    public void setNameRu(String nameRu) {
        this.nameRu = nameRu;
    }

    public void setDescriptionRu(String descriptionRu) {
        this.descriptionRu = descriptionRu;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
