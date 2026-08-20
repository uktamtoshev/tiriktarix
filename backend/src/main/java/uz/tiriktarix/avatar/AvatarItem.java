package uz.tiriktarix.avatar;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * Qahramon jihozi. «Ochiq/yopiq» holati saqlanmaydi — u profildan hisoblanadi,
 * shuning uchun XP sarflanmaydi va ochilgan jihoz hech qachon yopilmaydi.
 */
@Entity
@Table(name = "avatar_items")
public class AvatarItem {

    public enum Slot {
        HEAD, BODY, WEAPON, SHIELD, ACCESSORY
    }

    /**
     * Ochilish sharti. Uchtasi profil ko'rsatkichlaridan, beshtasi esa bajarilgan
     * topshiriqlardan hisoblanadi — lekin ikkalasi ham saqlanmaydi, har safar
     * qayta hisoblanadi.
     */
    public enum UnlockType {
        LEVEL, TOTAL_XP, STREAK,
        /** unlock_value ta testni xatosiz yakunlash. */
        QUIZ_PERFECT,
        /** Davr testida kamida unlock_value ball; unlock_ref — davr kodi yoki bo'sh. */
        ERA_TEST_SCORE,
        /** Qahramon kvizida kamida unlock_value ball; unlock_ref — qahramon slug'i. */
        HERO_QUIZ_SCORE,
        /** unlock_value ta kunlik topishmoqni yechish. */
        RIDDLE_COUNT,
        /** unlock_value ta turli qahramon bilan suhbatlashish. */
        TALK_HEROES
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String code;

    private String nameUz;

    private String slot;

    private String descriptionUz;

    private String unlockType;

    private int unlockValue;

    /** Shartning manzili: davr kodi yoki qahramon slug'i. Bo'sh — «har qanday». */
    private String unlockRef;

    private int ordinal;

    // ===== Ruscha matn (V102). NULL — interfeys o'zbekcha asl matnni beradi. =====

    private String nameRu;

    private String descriptionRu;

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

    public Long getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    public String getNameUz() {
        return nameUz;
    }

    public String getSlot() {
        return slot;
    }

    public String getDescriptionUz() {
        return descriptionUz;
    }

    public String getUnlockType() {
        return unlockType;
    }

    public int getUnlockValue() {
        return unlockValue;
    }

    public String getUnlockRef() {
        return unlockRef;
    }

    public int getOrdinal() {
        return ordinal;
    }
}
