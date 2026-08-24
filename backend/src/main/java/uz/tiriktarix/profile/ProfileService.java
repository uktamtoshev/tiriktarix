package uz.tiriktarix.profile;

import java.time.LocalDate;
import java.time.ZoneId;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProfileService {

    private static final ZoneId TASHKENT = ZoneId.of("Asia/Tashkent");

    private final LearnerProfileRepository repository;

    public ProfileService(LearnerProfileRepository repository) {
        this.repository = repository;
    }

    @Transactional
    public LearnerProfile getOrCreate(String clientId) {
        return repository.findByClientId(clientId)
                .orElseGet(() -> repository.save(new LearnerProfile(clientId)));
    }

    /** Bellashuv reytingi. Profil hali bo'lmasa — boshlang'ich 1000 bilan yaratiladi. */
    @Transactional
    public int duelRating(String clientId) {
        return getOrCreate(clientId).getDuelRating();
    }

    /**
     * Bellashuvda ustunlik uchun: XP dan hisoblangan hozirgi daraja.
     * Reyting ({@link #duelRating}) bilan aralashtirmang — bu boshqa shkala.
     */
    @Transactional
    public int rankLevel(String clientId) {
        return Levels.of(getOrCreate(clientId).getXp()).level();
    }

    /**
     * Bellashuv natijasini yozadi.
     *
     * @param outcome 1 — g'alaba, 0 — mag'lubiyat, -1 — durang
     */
    @Transactional
    public LearnerProfile applyDuelResult(String clientId, int delta, int outcome) {
        LearnerProfile profile = getOrCreate(clientId);
        profile.recordDuel(delta, outcome);
        return profile;
    }

    @Transactional
    public LearnerProfile recordActivity(String clientId, int xpEarned) {
        LearnerProfile profile = getOrCreate(clientId);
        profile.touch(LocalDate.now(TASHKENT));
        if (xpEarned > 0) {
            profile.addXp(xpEarned);
        }
        return profile;
    }
}
