package uz.tiriktarix.hero;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.util.List;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

@Entity
@Table(name = "heroes")
public class Hero {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String slug;

    private String nameUz;

    private String titleUz;

    private Integer birthYear;

    private Integer deathYear;

    private Long eraId;

    private String bioUz;

    private String greetingUz;

    private String portraitEmoji;

    /**
     * Haqiqiy tasvir manzili. O'rta asr ajdodlarining fotosurati yo'q va bo'lishi
     * ham mumkin emas, shuning uchun tasvir turi alohida saqlanadi va interfeysda
     * ochiq yoziladi: PHOTO — fotosurat, MINIATURE — davr miniaturasi,
     * ARTWORK — rassomning keyingi tasavvuri.
     */
    private String portraitUrl;

    private String portraitKind;

    private String portraitCaptionUz;

    private String portraitSource;

    /**
     * Suhbat panelidagi TO'LIQ bo'yli kadr (V102). {@link #portraitUrl} —
     * medalyondagi yaqin kadr, bu esa boshqa fayl. NULL bo'lsa suhbatda
     * medalyon tasviri ishlatiladi.
     */
    private String portraitFullUrl;

    /**
     * Medalyon rangi (V102): zar | feruza | nil | qon. Ilgari bu jadval ikki
     * sahifa komponentida so'zma-so'z takrorlanardi va yangi ajdod qo'shish
     * uchun frontendni tahrirlash kerak edi. NULL — interfeys «zar» qo'yadi.
     */
    private String accent;

    // ===== Ruscha matn (V102). NULL bo'lsa interfeys o'zbekcha asl matnni
    // ko'rsatadi — tekshirilmagan matn haqiqat sifatida chiqmaydi. =====

    private String nameRu;

    private String titleRu;

    private String bioRu;

    private String portraitCaptionRu;

    /**
     * Portret ostidagi qisqacha ma'lumot (V90): kim bo'lgan, nima qilgan.
     * Shakli — {"rows": [{"label", "value"}], "source"}. NULL bo'lsa suhbat
     * sahifasida karta chizilmaydi.
     */
    @JdbcTypeCode(SqlTypes.JSON)
    private String summaryUz;

    /** Tarjimai hol sahifasining matni (V36). Internetdan, ruxsat etilgan manbalardan. */
    private String biographyUz;

    /** Manbalar ro'yxati: [{n, title, url, note}] — sahifa oxirida ko'rsatiladi. */
    @JdbcTypeCode(SqlTypes.JSON)
    private String biographySources;

    /** Metodist o'qib chiqqanmi. FALSE bo'lsa sahifada ogohlantirish turadi. */
    private boolean biographyVerified;

    /** Qahramonga tegishli mavzu so'zlari — savol mavzuga oidligini aniqlash uchun. */
    @JdbcTypeCode(SqlTypes.JSON)
    private List<String> onTopicKeywords;

    /**
     * Qaysi tarixga tegishli: 'UZ' — O'zbekiston, 'RU' — Rossiya (V105).
     * Standart 'UZ', shuning uchun eski yozuvlar joyida qoladi.
     */
    private String country;

    public Long getId() {
        return id;
    }

    public String getPortraitUrl() {
        return portraitUrl;
    }

    public String getPortraitKind() {
        return portraitKind;
    }

    public String getPortraitCaptionUz() {
        return portraitCaptionUz;
    }

    public String getSummaryUz() {
        return summaryUz;
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

    public String getPortraitSource() {
        return portraitSource;
    }

    public String getSlug() {
        return slug;
    }

    public String getNameUz() {
        return nameUz;
    }

    public String getTitleUz() {
        return titleUz;
    }

    public Integer getBirthYear() {
        return birthYear;
    }

    public Integer getDeathYear() {
        return deathYear;
    }

    public Long getEraId() {
        return eraId;
    }

    public String getBioUz() {
        return bioUz;
    }

    public String getGreetingUz() {
        return greetingUz;
    }

    public String getPortraitEmoji() {
        return portraitEmoji;
    }

    public List<String> getOnTopicKeywords() {
        return onTopicKeywords;
    }

    public String getPortraitFullUrl() {
        return portraitFullUrl;
    }

    public String getAccent() {
        return accent;
    }

    public String getNameRu() {
        return nameRu;
    }

    public String getTitleRu() {
        return titleRu;
    }

    public String getBioRu() {
        return bioRu;
    }

    public String getPortraitCaptionRu() {
        return portraitCaptionRu;
    }

    // ===== Boshqaruv paneli uchun (V37). Ochiq API faqat o'qiydi. =====

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public void setNameUz(String nameUz) {
        this.nameUz = nameUz;
    }

    public void setTitleUz(String titleUz) {
        this.titleUz = titleUz;
    }

    public void setBirthYear(Integer birthYear) {
        this.birthYear = birthYear;
    }

    public void setDeathYear(Integer deathYear) {
        this.deathYear = deathYear;
    }

    public void setEraId(Long eraId) {
        this.eraId = eraId;
    }

    public void setBioUz(String bioUz) {
        this.bioUz = bioUz;
    }

    public void setGreetingUz(String greetingUz) {
        this.greetingUz = greetingUz;
    }

    public void setPortraitEmoji(String portraitEmoji) {
        this.portraitEmoji = portraitEmoji;
    }

    public void setPortraitUrl(String portraitUrl) {
        this.portraitUrl = portraitUrl;
    }

    public void setPortraitKind(String portraitKind) {
        this.portraitKind = portraitKind;
    }

    public void setPortraitCaptionUz(String portraitCaptionUz) {
        this.portraitCaptionUz = portraitCaptionUz;
    }

    public void setPortraitSource(String portraitSource) {
        this.portraitSource = portraitSource;
    }

    public void setSummaryUz(String summaryUz) {
        this.summaryUz = summaryUz;
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

    public void setOnTopicKeywords(List<String> onTopicKeywords) {
        this.onTopicKeywords = onTopicKeywords;
    }

    public void setPortraitFullUrl(String portraitFullUrl) {
        this.portraitFullUrl = portraitFullUrl;
    }

    public void setAccent(String accent) {
        this.accent = accent;
    }

    public void setNameRu(String nameRu) {
        this.nameRu = nameRu;
    }

    public void setTitleRu(String titleRu) {
        this.titleRu = titleRu;
    }

    public void setBioRu(String bioRu) {
        this.bioRu = bioRu;
    }

    public void setPortraitCaptionRu(String portraitCaptionRu) {
        this.portraitCaptionRu = portraitCaptionRu;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
