package uz.tiriktarix.region;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * Viloyat — ro'yxatdan o'tish shaklidagi tanlov (V106).
 *
 * <p>Profilga viloyatning NOMI yoziladi, id emas: ma'muriy bo'linish
 * o'zgarganda eski yozuvlar ma'nosini yo'qotmasligi kerak. Shuning uchun bu
 * jadval — faqat tanlov ro'yxati, {@code learner_profiles} ga tashqi kalit emas.
 */
@Entity
@Table(name = "regions")
public class Region {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameUz;

    private Integer ordinal;

    public Long getId() {
        return id;
    }

    public String getNameUz() {
        return nameUz;
    }

    public Integer getOrdinal() {
        return ordinal;
    }
}
