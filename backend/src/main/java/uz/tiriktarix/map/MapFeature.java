package uz.tiriktarix.map;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * Zamon xaritasining bir qatlami: hudud, shahar yoki yurish yo'li.
 *
 * <p>Geometriya bitta SVG mo'ljalida saqlanadi (viewBox 0 0 1000 700):
 * {@code x = (uzunlik - 55) * 50}, {@code y = (47 - kenglik) * 58.333}.
 * TERRITORY va ROUTE uchun — SVG path {@code d}, CITY uchun — {@code "x,y"}.
 *
 * <p>{@code eraId} bo'sh bo'lsa, qatlam barcha davrlarda ko'rinadi (shaharlar);
 * {@code minYear}/{@code maxYear} esa davr yillari bilan kesishishni cheklaydi.
 */
@Entity
@Table(name = "map_features")
public class MapFeature {

    public enum Kind {
        TERRITORY, CITY, ROUTE
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long eraId;

    private String kind;

    private String nameUz;

    private String geometry;

    private String descriptionUz;

    private String source;

    /** Chegaralar sxematik: metodist tasdiqlagunicha false. */
    private boolean verified;

    private Integer minYear;

    private Integer maxYear;

    private Integer ordinal;

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

    public void setNameRu(String nameRu) {
        this.nameRu = nameRu;
    }

    public void setDescriptionRu(String descriptionRu) {
        this.descriptionRu = descriptionRu;
    }

    public Long getEraId() {
        return eraId;
    }

    public String getKind() {
        return kind;
    }

    public String getNameUz() {
        return nameUz;
    }

    public String getGeometry() {
        return geometry;
    }

    public String getDescriptionUz() {
        return descriptionUz;
    }

    public String getSource() {
        return source;
    }

    public boolean isVerified() {
        return verified;
    }

    public Integer getMinYear() {
        return minYear;
    }

    public Integer getMaxYear() {
        return maxYear;
    }

    public Integer getOrdinal() {
        return ordinal;
    }

    // ===== Boshqaruv paneli uchun (V37). Ochiq API faqat o'qiydi. =====

    public void setEraId(Long eraId) {
        this.eraId = eraId;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public void setNameUz(String nameUz) {
        this.nameUz = nameUz;
    }

    public void setGeometry(String geometry) {
        this.geometry = geometry;
    }

    public void setDescriptionUz(String descriptionUz) {
        this.descriptionUz = descriptionUz;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public void setMinYear(Integer minYear) {
        this.minYear = minYear;
    }

    public void setMaxYear(Integer maxYear) {
        this.maxYear = maxYear;
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
