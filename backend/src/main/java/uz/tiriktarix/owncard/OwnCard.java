package uz.tiriktarix.owncard;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.Instant;

/**
 * O'quvchining O'Z flesh-kartasi (V104).
 *
 * <p>Bu metodist tekshirgan fakt emas, balki bolaning shaxsiy eslatmasi.
 * Shuning uchun u {@code fact_cards} dan butunlay ajratilgan va hech qanday
 * ochiq ro'yxatga — Xazinaga, qidiruvga, ajdod javoblariga — tushmaydi.
 * Kartani faqat egasi ko'radi.
 */
@Entity
@Table(name = "own_cards")
public class OwnCard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long profileId;

    /** Old tomon — savol. */
    private String frontUz;

    /** Orqa tomon — javob. */
    private String backUz;

    private Instant createdAt;

    protected OwnCard() {
    }

    public OwnCard(Long profileId, String frontUz, String backUz) {
        this.profileId = profileId;
        this.frontUz = frontUz;
        this.backUz = backUz;
        this.createdAt = Instant.now();
    }

    public Long getId() {
        return id;
    }

    public Long getProfileId() {
        return profileId;
    }

    public String getFrontUz() {
        return frontUz;
    }

    public String getBackUz() {
        return backUz;
    }

    public Instant getCreatedAt() {
        return createdAt;
    }
}
