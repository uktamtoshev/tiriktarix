package uz.tiriktarix.event;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "historical_events")
public class HistoricalEvent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long eraId;

    private String titleUz;

    /** Milodgacha bo'lgan yillar manfiy son bilan saqlanadi (masalan, -329). */
    private Integer yearFrom;

    private Integer yearTo;

    private String locationUz;

    private String descriptionUz;

    // ===== Ruscha matn (V102). Ilgari tarjima frontendda, O'ZBEKCHA SARLAVHA
    // bo'yicha kalitlangan edi — metodist sarlavhani tuzatsa, tarjima jimgina
    // yo'qolardi. Endi u shu qatorning o'zida. =====

    private String titleRu;

    private String descriptionRu;

    private String locationRu;

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

    public String getDescriptionRu() {
        return descriptionRu;
    }

    public String getLocationRu() {
        return locationRu;
    }

    public Long getEraId() {
        return eraId;
    }

    public String getTitleUz() {
        return titleUz;
    }

    public Integer getYearFrom() {
        return yearFrom;
    }

    public Integer getYearTo() {
        return yearTo;
    }

    public String getLocationUz() {
        return locationUz;
    }

    public String getDescriptionUz() {
        return descriptionUz;
    }

    // ===== Boshqaruv paneli uchun (V37). Ochiq API faqat o'qiydi. =====

    public void setEraId(Long eraId) {
        this.eraId = eraId;
    }

    public void setTitleUz(String titleUz) {
        this.titleUz = titleUz;
    }

    public void setYearFrom(Integer yearFrom) {
        this.yearFrom = yearFrom;
    }

    public void setYearTo(Integer yearTo) {
        this.yearTo = yearTo;
    }

    public void setLocationUz(String locationUz) {
        this.locationUz = locationUz;
    }

    public void setDescriptionUz(String descriptionUz) {
        this.descriptionUz = descriptionUz;
    }

    public void setTitleRu(String titleRu) {
        this.titleRu = titleRu;
    }

    public void setDescriptionRu(String descriptionRu) {
        this.descriptionRu = descriptionRu;
    }

    public void setLocationRu(String locationRu) {
        this.locationRu = locationRu;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
