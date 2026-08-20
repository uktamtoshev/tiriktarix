package uz.tiriktarix.avatar;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.Table;
import java.io.Serializable;
import java.util.Objects;

/** Profilning bitta slotidagi kiyilgan jihoz. */
@Entity
@Table(name = "avatar_equipment")
@IdClass(AvatarEquipment.Key.class)
public class AvatarEquipment {

    public static class Key implements Serializable {
        private Long profileId;
        private String slot;

        public Key() {
        }

        public Key(Long profileId, String slot) {
            this.profileId = profileId;
            this.slot = slot;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof Key key)) {
                return false;
            }
            return Objects.equals(profileId, key.profileId) && Objects.equals(slot, key.slot);
        }

        @Override
        public int hashCode() {
            return Objects.hash(profileId, slot);
        }
    }

    @Id
    private Long profileId;

    @Id
    private String slot;

    private Long itemId;

    protected AvatarEquipment() {
    }

    public AvatarEquipment(Long profileId, String slot, Long itemId) {
        this.profileId = profileId;
        this.slot = slot;
        this.itemId = itemId;
    }

    public Long getProfileId() {
        return profileId;
    }

    public String getSlot() {
        return slot;
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }
}
