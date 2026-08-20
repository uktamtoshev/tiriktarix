package uz.tiriktarix.profile;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.LocalDate;

/**
 * Anonim o'quvchi profili. MVPda ro'yxatdan o'tish yo'q — brauzer
 * clientId (UUID) orqali taniladi, shaxsiy ma'lumotlar saqlanmaydi.
 */
@Entity
@Table(name = "learner_profiles")
public class LearnerProfile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String clientId;

    private String displayName;

    private int xp;

    private int streakDays;

    private LocalDate lastActiveDate;

    /** Akkauntga biriktirilgan bo'lsa to'ladi; mehmonlarda bo'sh. */
    private Long userId;

    /** Qahramon jinsi: MALE / FEMALE. Mehmonlarda bo'sh. */
    private String avatarGender;

    /** Qahramon tipi (arxetip): jangchi, malika, olima… Mehmonlarda bo'sh. */
    private String avatarArchetype;

    /**
     * Shaxsiy ma'lumotlar (V91) — ro'yxatdan o'tishda so'raladi, mehmonlarda
     * bo'sh. Bu maydonlar OCHIQ EMAS: reytingda va suhbatda taxallus
     * ({@link #displayName}) ko'rinadi, haqiqiy ism faqat boshqaruv panelida.
     */
    private String firstName;

    private String lastName;

    private LocalDate birthDate;

    private String regionUz;

    private String districtUz;

    private String schoolUz;

    /** Bellashuv reytingi (V89). Boshlang'ich qiymat — 1000. */
    private int duelRating = 1000;

    private int duelWins;

    private int duelLosses;

    private int duelDraws;

    protected LearnerProfile() {
    }

    public LearnerProfile(String clientId) {
        this.clientId = clientId;
        this.xp = 0;
        this.streakDays = 0;
    }

    /** Faollik seriyasini (strik) yangilaydi: kecha faol bo'lsa +1, uzilsa 1 dan boshlanadi. */
    public void touch(LocalDate today) {
        if (today.equals(lastActiveDate)) {
            return;
        }
        if (lastActiveDate != null && lastActiveDate.plusDays(1).equals(today)) {
            streakDays++;
        } else {
            streakDays = 1;
        }
        lastActiveDate = today;
    }

    public void addXp(int amount) {
        this.xp += amount;
    }

    /**
     * Bellashuv natijasini yozadi.
     *
     * @param delta   reyting o'zgarishi (manfiy bo'lishi mumkin)
     * @param outcome 1 — g'alaba, 0 — mag'lubiyat, boshqasi — durang
     */
    public void recordDuel(int delta, int outcome) {
        // Reyting nolga tushib ketmasin: bola uchun «0 ball» tushkunlik beradi
        this.duelRating = Math.max(100, this.duelRating + delta);
        if (outcome > 0) {
            this.duelWins++;
        } else if (outcome == 0) {
            this.duelLosses++;
        } else {
            this.duelDraws++;
        }
    }

    public int getDuelRating() {
        return duelRating;
    }

    public int getDuelWins() {
        return duelWins;
    }

    public int getDuelLosses() {
        return duelLosses;
    }

    public int getDuelDraws() {
        return duelDraws;
    }

    public Long getId() {
        return id;
    }

    public String getClientId() {
        return clientId;
    }

    public String getDisplayName() {
        return displayName;
    }

    public int getXp() {
        return xp;
    }

    public int getStreakDays() {
        return streakDays;
    }

    public LocalDate getLastActiveDate() {
        return lastActiveDate;
    }

    public Long getUserId() {
        return userId;
    }

    public String getAvatarGender() {
        return avatarGender;
    }

    /** Anonim profilni akkauntga biriktiradi — XP va seriya saqlanib qoladi. */
    public void attachTo(Long userId) {
        this.userId = userId;
    }

    public void setAvatarGender(String avatarGender) {
        this.avatarGender = avatarGender;
    }

    public String getAvatarArchetype() {
        return avatarArchetype;
    }

    public void setAvatarArchetype(String avatarArchetype) {
        this.avatarArchetype = avatarArchetype;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    // ===== Shaxsiy ma'lumotlar (V91) =====

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public String getRegionUz() {
        return regionUz;
    }

    public String getDistrictUz() {
        return districtUz;
    }

    public String getSchoolUz() {
        return schoolUz;
    }

    /** Ro'yxatdan o'tishda bir marta to'ldiriladi (AuthService tekshiruvidan keyin). */
    public void fillPersonalDetails(String firstName, String lastName, LocalDate birthDate,
                                    String regionUz, String districtUz, String schoolUz) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthDate = birthDate;
        this.regionUz = regionUz;
        this.districtUz = districtUz;
        this.schoolUz = schoolUz;
    }

    // ===== Boshqaruv paneli uchun (V37) =====

    /** Faqat administrator tuzatishi uchun: noto'g'ri hisoblangan XP ni qo'lda to'g'rilash. */
    public void setXp(int xp) {
        this.xp = xp;
    }

    public void setStreakDays(int streakDays) {
        this.streakDays = streakDays;
    }

    /** Hisob o'chirilganda profil anonim holatiga qaytadi — progress yo'qolmaydi. */
    public void detach() {
        this.userId = null;
    }
}
