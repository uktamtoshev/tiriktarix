package uz.tiriktarix.leaderboard;

import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.LearnerProfileRepository;
import uz.tiriktarix.profile.Levels;
import uz.tiriktarix.quiz.QuizResultRepository;

/**
 * Reyting jadvali — ochiq (admin panelidagi ro'yxatdan farqli).
 *
 * XP HISOBIGA TEGILMAYDI. Bu yerda faqat o'qish bor: mavjud
 * `learner_profiles.xp` va `quiz_results.xp_earned` qiymatlari saraladi.
 *
 * DAVR KESIMI. «Butun davr» — profildagi jami XP. «Oy» va «hafta» — shu
 * oraliqda yig'ilgan XP, chunki profilda tarix saqlanmaydi va yagona manba
 * `quiz_results`. Shu bois haftalik jadvalda faqat sinovlardan olingan XP
 * ko'rinadi; boshqa yo'l bilan berilgan XP unda hisobga olinmaydi.
 */
@Service
public class LeaderboardService {

    private static final ZoneId TASHKENT = ZoneId.of("Asia/Tashkent");

    /** Sahifa hajmi cheklanadi — mijoz katta son so'rab serverni bo'g'masin. */
    private static final int MAX_SIZE = 100;

    public enum Period { ALL, MONTH, WEEK }

    /** Jadvaldagi bir qator. `xp` — tanlangan davr uchun qiymat. */
    public record RowDto(int rank, String clientId, String displayName, String rankEmoji,
                         String rankUz, int level, int xp, int streakDays, boolean me) {
    }

    /**
     * @param me joriy o'yinchi qatori — u sahifaga tushmasa ham qaytariladi,
     *           shunda mijoz uni pastda mahkamlab ko'rsata oladi. XP yig'magan
     *           bo'lsa — {@code null}.
     */
    public record PageDto(Period period, List<RowDto> rows, int page, int size,
                          long total, boolean hasMore, RowDto me) {
    }

    private final LearnerProfileRepository profileRepository;
    private final QuizResultRepository quizResultRepository;

    public LeaderboardService(LearnerProfileRepository profileRepository,
                              QuizResultRepository quizResultRepository) {
        this.profileRepository = profileRepository;
        this.quizResultRepository = quizResultRepository;
    }

    @Transactional(readOnly = true)
    public PageDto page(Period period, int page, int size, String clientId) {
        int safePage = Math.max(0, page);
        int safeSize = Math.min(MAX_SIZE, Math.max(1, size));
        return period == Period.ALL
                ? allTime(safePage, safeSize, clientId)
                : withinPeriod(period, safePage, safeSize, clientId);
    }

    // ============================== Butun davr ==============================

    private PageDto allTime(int page, int size, String clientId) {
        Page<LearnerProfile> found = profileRepository.ranking(PageRequest.of(page, size));
        List<RowDto> rows = new ArrayList<>();
        int offset = page * size;
        for (int i = 0; i < found.getContent().size(); i++) {
            LearnerProfile p = found.getContent().get(i);
            rows.add(row(offset + i + 1, p, p.getXp(), clientId));
        }
        return new PageDto(Period.ALL, rows, page, size, found.getTotalElements(),
                found.hasNext(), meRowAllTime(clientId, rows));
    }

    /** Joriy o'yinchi qatori: sahifada bo'lsa qaytadan hisoblanmaydi. */
    private RowDto meRowAllTime(String clientId, List<RowDto> rows) {
        if (clientId == null || clientId.isBlank()) {
            return null;
        }
        if (rows.stream().anyMatch(RowDto::me)) {
            return null;
        }
        Optional<LearnerProfile> mine = profileRepository.findByClientId(clientId);
        if (mine.isEmpty() || mine.get().getXp() <= 0) {
            return null;
        }
        LearnerProfile p = mine.get();
        int rank = (int) profileRepository.aheadOf(p.getXp(), p.getId()) + 1;
        return row(rank, p, p.getXp(), clientId);
    }

    // ============================== Hafta / oy ==============================

    /**
     * Davr kesimi butun ro'yxatni yig'ib, so'ng bo'lakka ajratadi.
     *
     * NEGA SHUNDAY. Bu yerda saralash `quiz_results` agregatidan chiqadi va uni
     * profillar jadvali bilan bitta sahifalanadigan so'rovga birlashtirib
     * bo'lmaydi. Maktab miqyosidagi ma'lumot hajmida bu arzon; hajm o'sganda
     * bu yerni materiallashtirilgan ko'rinishga (yoki keshga) ko'chirish kerak.
     */
    private PageDto withinPeriod(Period period, int page, int size, String clientId) {
        OffsetDateTime since = OffsetDateTime.now(TASHKENT)
                .minusDays(period == Period.WEEK ? 7 : 30);

        // profileId → davr ichida yig'ilgan XP, kamayish tartibida
        Map<Long, Integer> gained = new LinkedHashMap<>();
        for (Object[] pair : quizResultRepository.xpEarnedSince(since)) {
            gained.put((Long) pair[0], ((Number) pair[1]).intValue());
        }
        if (gained.isEmpty()) {
            return new PageDto(period, List.of(), page, size, 0, false, null);
        }

        List<Long> ordered = new ArrayList<>(gained.keySet());
        Map<Long, LearnerProfile> profiles = new LinkedHashMap<>();
        profileRepository.findAllById(ordered).forEach(p -> profiles.put(p.getId(), p));

        List<RowDto> all = new ArrayList<>();
        for (int i = 0; i < ordered.size(); i++) {
            LearnerProfile p = profiles.get(ordered.get(i));
            if (p != null) {
                all.add(row(i + 1, p, gained.get(p.getId()), clientId));
            }
        }

        int from = Math.min(page * size, all.size());
        int to = Math.min(from + size, all.size());
        List<RowDto> slice = all.subList(from, to);
        RowDto me = slice.stream().anyMatch(RowDto::me)
                ? null
                : all.stream().filter(RowDto::me).findFirst().orElse(null);
        return new PageDto(period, List.copyOf(slice), page, size, all.size(), to < all.size(), me);
    }

    // ============================== Yordamchilar ==============================

    private RowDto row(int rank, LearnerProfile p, int xp, String clientId) {
        Levels.LevelInfo info = Levels.of(p.getXp());
        return new RowDto(rank, p.getClientId(), nameOf(p), info.rankEmoji(), info.rankUz(),
                info.level(), xp, p.getStreakDays(), p.getClientId().equals(clientId));
    }

    /**
     * Ko'rsatiladigan ism. Ro'yxatdan o'tmagan bola uchun ism yo'q — o'shanda
     * clientId dan barqaror qisqa yorliq yasaladi, shunda u o'zini jadvalda
     * taniy oladi va ayni paytda hech qanday shaxsiy ma'lumot ochilmaydi.
     */
    private static String nameOf(LearnerProfile p) {
        String name = p.getDisplayName();
        if (name != null && !name.isBlank()) {
            return name.trim();
        }
        String id = p.getClientId() == null ? "" : p.getClientId().replaceAll("[^0-9a-fA-F]", "");
        String tail = id.length() >= 4 ? id.substring(id.length() - 4) : String.valueOf(p.getId());
        return "Mehmon-" + tail.toUpperCase();
    }
}
