package uz.tiriktarix.factcard;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.util.List;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

/**
 * Fakt kartochkasi — butun platformaning yagona ishonchli kontent birligi.
 * Har qanday javob, test savoli va voqea faqat tasdiqlangan kartochkaga tayanadi
 * (kontseptsiya, 4-bo'lim: «ИИ генерирует форму — люди отвечают за правду»).
 */
@Entity
@Table(name = "fact_cards")
public class FactCard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long heroId;

    private Long eraId;

    private String topicUz;

    /**
     * Tayyor savol matni (V32). Mavzudan avtomatik yasab bo'lmaydi: mavzular
     * ot birikmasi va subyektni aytmaydi, savol esa o'zi yetarli bo'lishi kerak.
     */
    private String questionUz;

    private String factUz;

    /**
     * «Batafsil» matni (V54): shu faktning kengaytmasi — tafsilotlar va
     * tarixiy kontekst. NULL bo'lishi mumkin: unda kartochka avvalgidek
     * tarjimai holga havola qiladi.
     */
    private String detailUz;

    @JdbcTypeCode(SqlTypes.JSON)
    private List<String> keywords;

    private String source;

    private boolean verified;

    /**
     * Qaysi tarixga tegishli: 'UZ' — O'zbekiston, 'RU' — Rossiya (V105).
     * Standart 'UZ', shuning uchun eski yozuvlar joyida qoladi.
     */
    private String country;

    // ===== Ruscha matn (V108). NULL — interfeys o'zbekcha aslini beradi. =====

    private String topicRu;

    private String questionRu;

    private String factRu;

    private String detailRu;

    public Long getId() {
        return id;
    }

    public Long getHeroId() {
        return heroId;
    }

    public Long getEraId() {
        return eraId;
    }

    public String getTopicUz() {
        return topicUz;
    }

    public String getQuestionUz() {
        return questionUz;
    }

    public String getFactUz() {
        return factUz;
    }

    public String getDetailUz() {
        return detailUz;
    }

    public List<String> getKeywords() {
        return keywords;
    }

    public String getSource() {
        return source;
    }

    public boolean isVerified() {
        return verified;
    }

    // ===== Boshqaruv paneli uchun (V37). Ochiq API faqat o'qiydi. =====

    public void setHeroId(Long heroId) {
        this.heroId = heroId;
    }

    public void setEraId(Long eraId) {
        this.eraId = eraId;
    }

    public void setTopicUz(String topicUz) {
        this.topicUz = topicUz;
    }

    public void setQuestionUz(String questionUz) {
        this.questionUz = questionUz;
    }

    public void setFactUz(String factUz) {
        this.factUz = factUz;
    }

    public void setDetailUz(String detailUz) {
        this.detailUz = detailUz;
    }

    public void setKeywords(List<String> keywords) {
        this.keywords = keywords;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    public String getTopicRu() {
        return topicRu;
    }

    public String getQuestionRu() {
        return questionRu;
    }

    public String getFactRu() {
        return factRu;
    }

    public String getDetailRu() {
        return detailRu;
    }

    public void setTopicRu(String topicRu) {
        this.topicRu = topicRu;
    }

    public void setQuestionRu(String questionRu) {
        this.questionRu = questionRu;
    }

    public void setFactRu(String factRu) {
        this.factRu = factRu;
    }

    public void setDetailRu(String detailRu) {
        this.detailRu = detailRu;
    }

}
