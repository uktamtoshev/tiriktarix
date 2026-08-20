package uz.tiriktarix.quiz;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.util.List;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

@Entity
@Table(name = "quiz_questions")
public class QuizQuestion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long heroId;

    private Long eraId;

    /** Savol qaysi fakt kartochkasidan yaratilgan — ishonchlilik konturi. */
    private Long factCardId;

    private String questionUz;

    @JdbcTypeCode(SqlTypes.JSON)
    private List<String> options;

    private int correctIndex;

    private String explanationUz;

    /**
     * Qaysi tarixga tegishli: 'UZ' — O'zbekiston, 'RU' — Rossiya (V105).
     * Standart 'UZ', shuning uchun eski yozuvlar joyida qoladi.
     */
    private String country;

    // ===== Ruscha matn (V108). NULL — interfeys o'zbekcha aslini beradi. =====

    private String questionRu;

    private String explanationRu;

    /** Variantlar tartibi asl `options` bilan BIR XIL — `correctIndex` umumiy. */
    @JdbcTypeCode(SqlTypes.JSON)
    private List<String> optionsRu;

    public Long getId() {
        return id;
    }

    public Long getHeroId() {
        return heroId;
    }

    public Long getEraId() {
        return eraId;
    }

    public Long getFactCardId() {
        return factCardId;
    }

    public String getQuestionUz() {
        return questionUz;
    }

    public List<String> getOptions() {
        return options;
    }

    public int getCorrectIndex() {
        return correctIndex;
    }

    public String getExplanationUz() {
        return explanationUz;
    }

    // ===== Boshqaruv paneli uchun (V37). Ochiq API faqat o'qiydi. =====

    public void setHeroId(Long heroId) {
        this.heroId = heroId;
    }

    public void setEraId(Long eraId) {
        this.eraId = eraId;
    }

    public void setFactCardId(Long factCardId) {
        this.factCardId = factCardId;
    }

    public void setQuestionUz(String questionUz) {
        this.questionUz = questionUz;
    }

    public void setOptions(List<String> options) {
        this.options = options;
    }

    public void setCorrectIndex(int correctIndex) {
        this.correctIndex = correctIndex;
    }

    public void setExplanationUz(String explanationUz) {
        this.explanationUz = explanationUz;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    public String getQuestionRu() {
        return questionRu;
    }

    public String getExplanationRu() {
        return explanationRu;
    }

    public List<String> getOptionsRu() {
        return optionsRu;
    }

    public void setQuestionRu(String questionRu) {
        this.questionRu = questionRu;
    }

    public void setExplanationRu(String explanationRu) {
        this.explanationRu = explanationRu;
    }

    public void setOptionsRu(List<String> optionsRu) {
        this.optionsRu = optionsRu;
    }

}
