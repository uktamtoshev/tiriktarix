package uz.tiriktarix.profile;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * Unvon zinapoyasining bir pog'onasi (V107).
 *
 * <p>Daraja XP dan hisoblanadi (formula {@link Levels} da qoladi), unvon esa —
 * darajaning oralig'i. Jadvalda faqat QUYI chegara: keyingi pog'onagacha
 * bo'lgan hamma daraja shu unvonga tegishli.
 */
@Entity
@Table(name = "ranks")
public class Rank {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int minLevel;

    private String nameUz;

    private String nameRu;

    private String emoji;

    // ===== Boshqaruv paneli uchun (V107). =====

    public void setMinLevel(int minLevel) {
        this.minLevel = minLevel;
    }

    public void setNameUz(String nameUz) {
        this.nameUz = nameUz;
    }

    public void setNameRu(String nameRu) {
        this.nameRu = nameRu;
    }

    public void setEmoji(String emoji) {
        this.emoji = emoji;
    }

    public Long getId() {
        return id;
    }

    public int getMinLevel() {
        return minLevel;
    }

    public String getNameUz() {
        return nameUz;
    }

    public String getNameRu() {
        return nameRu;
    }

    public String getEmoji() {
        return emoji;
    }
}
