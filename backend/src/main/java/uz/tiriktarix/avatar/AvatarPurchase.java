package uz.tiriktarix.avatar;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.Table;
import java.io.Serializable;
import java.time.OffsetDateTime;
import java.util.Objects;

/**
 * Sotib olingan pullik jihoz.
 *
 * Loyihada «ochiq» holati SAQLANADIGAN yagona joy — qolgan hamma jihoz
 * profildan qayta hisoblanadi ({@link AvatarUnlockService}). To'lovni
 * ko'rsatkichlardan qayta hisoblab bo'lmaydi, shuning uchun istisno.
 *
 * priceUzs nusxasi ataylab saqlanadi: katalogdagi narx keyin o'zgarsa ham,
 * bola qancha to'lagani yozuvda qoladi.
 */
@Entity
@Table(name = "avatar_purchases")
@IdClass(AvatarPurchase.Key.class)
public class AvatarPurchase {

    public static class Key implements Serializable {
        private Long profileId;
        private Long itemId;

        public Key() {
        }

        public Key(Long profileId, Long itemId) {
            this.profileId = profileId;
            this.itemId = itemId;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof Key key)) {
                return false;
            }
            return Objects.equals(profileId, key.profileId) && Objects.equals(itemId, key.itemId);
        }

        @Override
        public int hashCode() {
            return Objects.hash(profileId, itemId);
        }
    }

    @Id
    @Column(name = "profile_id")
    private Long profileId;

    @Id
    @Column(name = "item_id")
    private Long itemId;

    @Column(name = "price_uzs")
    private int priceUzs;

    @Column(name = "purchased_at")
    private OffsetDateTime purchasedAt;

    protected AvatarPurchase() {
    }

    public AvatarPurchase(Long profileId, Long itemId, int priceUzs) {
        this.profileId = profileId;
        this.itemId = itemId;
        this.priceUzs = priceUzs;
        this.purchasedAt = OffsetDateTime.now();
    }

    public Long getProfileId() {
        return profileId;
    }

    public Long getItemId() {
        return itemId;
    }

    public int getPriceUzs() {
        return priceUzs;
    }

    public OffsetDateTime getPurchasedAt() {
        return purchasedAt;
    }
}
