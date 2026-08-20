package uz.tiriktarix.avatar;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import uz.tiriktarix.chat.ConversationRepository;
import uz.tiriktarix.era.EraRepository;
import uz.tiriktarix.hero.HeroRepository;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.Levels;
import uz.tiriktarix.quiz.QuizResult;
import uz.tiriktarix.quiz.QuizResultRepository;

/**
 * Jihoz ochilishini hisoblovchi yagona joy.
 *
 * ARXITEKTURA. «Ochiq» holati hech qayerda saqlanmaydi — u har safar ikkita
 * manbadan qayta hisoblanadi: profil ko'rsatkichlari (XP, daraja, seriya) va
 * faoliyat tarixi (quiz_results, conversations). Shu sababli XP sarflanmaydi,
 * bir marta ochilgan jihoz hech qachon yopilmaydi va alohida «ochilganlar»
 * jadvali kerak emas.
 *
 * Barcha ko'rsatkichlar bitta {@link QuestStats} suratiga yig'iladi: shunda
 * 30 dan ortiq jihozni tekshirish uchun bazaga bir marta murojaat qilinadi.
 */
@Service
public class AvatarUnlockService {

    private static final ZoneId TASHKENT = ZoneId.of("Asia/Tashkent");

    /**
     * O'quvchi faoliyatining bir lahzalik surati.
     *
     * @param perfectQuizzes xatosiz yechilgan testlar. Kunlik topishmoq bunga
     *                       kirmaydi: u bitta savol, uni «xatosiz test» deb
     *                       sanash kvestni arzonlashtirib yuborardi.
     * @param riddleDays     topishmoq to'g'ri yechilgan noyob kunlar soni.
     *                       Aynan kunlar sanaladi — topishmoq kuniga bitta
     *                       bo'lgani uchun bir javobni takror yuborish bilan
     *                       kvestni aldab bo'lmaydi.
     */
    public record QuestStats(int xp, int streakDays, int perfectQuizzes, int riddleDays,
                             int heroesTalked, Map<String, Integer> bestEraScore,
                             Map<String, Integer> bestHeroScore) {

        static QuestStats empty() {
            return new QuestStats(0, 0, 0, 0, 0, Map.of(), Map.of());
        }

        /** Istalgan davr bo'yicha eng yaxshi natija. */
        public int bestAnyEraScore() {
            return bestEraScore.values().stream().mapToInt(Integer::intValue).max().orElse(0);
        }

        /** Istalgan qahramon bo'yicha eng yaxshi natija. */
        public int bestAnyHeroScore() {
            return bestHeroScore.values().stream().mapToInt(Integer::intValue).max().orElse(0);
        }
    }

    /** Topshiriqni so'z bilan yozish uchun kerakli nomlar (davr va qahramon). */
    public record Labels(Map<String, String> eraNames, Map<String, String> heroNames) {

        String era(String code) {
            return eraNames.getOrDefault(code, code);
        }

        String hero(String slug) {
            return heroNames.getOrDefault(slug, slug);
        }
    }

    private final QuizResultRepository resultRepository;
    private final ConversationRepository conversationRepository;
    private final EraRepository eraRepository;
    private final HeroRepository heroRepository;

    public AvatarUnlockService(QuizResultRepository resultRepository,
                               ConversationRepository conversationRepository,
                               EraRepository eraRepository,
                               HeroRepository heroRepository) {
        this.resultRepository = resultRepository;
        this.conversationRepository = conversationRepository;
        this.eraRepository = eraRepository;
        this.heroRepository = heroRepository;
    }

    // ========================= Ko'rsatkichlarni yig'ish =========================

    @Transactional(readOnly = true)
    public QuestStats statsOf(LearnerProfile profile) {
        int perfect = 0;
        Set<LocalDate> riddleDays = new HashSet<>();
        Map<String, Integer> bestEra = new HashMap<>();
        Map<String, Integer> bestHero = new HashMap<>();

        for (QuizResult r : resultRepository.findByProfileIdOrderByCreatedAtDesc(profile.getId())) {
            String scope = r.getScope() == null ? "" : r.getScope();
            boolean flawless = r.getTotal() > 0 && r.getScore() == r.getTotal();
            if ("riddle".equals(scope)) {
                if (flawless && r.getCreatedAt() != null) {
                    riddleDays.add(r.getCreatedAt().atZoneSameInstant(TASHKENT).toLocalDate());
                }
                continue;
            }
            if (flawless) {
                perfect++;
            }
            // scope: «era:{kod}:{qiyinlik}» yoki «hero:{slug}:{qiyinlik}»
            String eraCode = refOf(scope, "era:");
            if (eraCode != null) {
                bestEra.merge(eraCode, r.getScore(), Math::max);
            }
            String heroSlug = refOf(scope, "hero:");
            if (heroSlug != null) {
                bestHero.merge(heroSlug, r.getScore(), Math::max);
            }
        }

        int heroesTalked = (int) conversationRepository
                .countDistinctHeroesByClientId(profile.getClientId());

        return new QuestStats(profile.getXp(), profile.getStreakDays(), perfect,
                riddleDays.size(), heroesTalked, bestEra, bestHero);
    }

    /** «era:temuriylar:medium» → «temuriylar». Mos kelmasa — null. */
    private static String refOf(String scope, String prefix) {
        if (!scope.startsWith(prefix)) {
            return null;
        }
        String rest = scope.substring(prefix.length());
        int colon = rest.indexOf(':');
        String ref = colon < 0 ? rest : rest.substring(0, colon);
        return ref.isBlank() ? null : ref;
    }

    @Transactional(readOnly = true)
    public Labels labels() {
        Map<String, String> eras = new HashMap<>();
        eraRepository.findAll().forEach(e -> eras.put(e.getCode(), e.getNameUz()));
        Map<String, String> heroes = new HashMap<>();
        heroRepository.findAll().forEach(h -> heroes.put(h.getSlug(), h.getNameUz()));
        return new Labels(eras, heroes);
    }

    // ============================== Predikatlar ==============================

    /** Har bir shart turi uchun bitta predikat — boshqa hech qayerda takrorlanmaydi. */
    public static boolean isUnlocked(AvatarItem item, QuestStats s) {
        int need = item.getUnlockValue();
        String ref = item.getUnlockRef();
        return switch (AvatarItem.UnlockType.valueOf(item.getUnlockType())) {
            case LEVEL -> Levels.of(s.xp()).level() >= need;
            case TOTAL_XP -> s.xp() >= need;
            case STREAK -> s.streakDays() >= need;
            case QUIZ_PERFECT -> s.perfectQuizzes() >= need;
            case RIDDLE_COUNT -> s.riddleDays() >= need;
            case TALK_HEROES -> s.heroesTalked() >= need;
            // Bo'sh ref — «istalgan davr / istalgan qahramon»
            case ERA_TEST_SCORE -> bestEra(s, ref) >= need;
            case HERO_QUIZ_SCORE -> bestHero(s, ref) >= need;
        };
    }

    /** Yopiq jihoz kartochkasidagi progress-bar uchun {bajarildi, kerak}. */
    public static int[] progressOf(AvatarItem item, QuestStats s) {
        int need = item.getUnlockValue();
        String ref = item.getUnlockRef();
        return switch (AvatarItem.UnlockType.valueOf(item.getUnlockType())) {
            // Darajagacha bo'lgan yo'l XP da ko'rsatiladi — bola uchun tushunarliroq
            case LEVEL -> new int[]{s.xp(), Levels.cumulativeXpToReach(need)};
            case TOTAL_XP -> new int[]{s.xp(), need};
            case STREAK -> new int[]{s.streakDays(), need};
            case QUIZ_PERFECT -> new int[]{s.perfectQuizzes(), need};
            case RIDDLE_COUNT -> new int[]{s.riddleDays(), need};
            case TALK_HEROES -> new int[]{s.heroesTalked(), need};
            // Bu yerda progress «eng yaxshi natijang» degani: 7/9 ball ham ko'rinadi
            case ERA_TEST_SCORE -> new int[]{bestEra(s, ref), need};
            case HERO_QUIZ_SCORE -> new int[]{bestHero(s, ref), need};
        };
    }

    private static int bestEra(QuestStats s, String ref) {
        return ref == null || ref.isBlank()
                ? s.bestAnyEraScore()
                : s.bestEraScore().getOrDefault(ref, 0);
    }

    private static int bestHero(QuestStats s, String ref) {
        return ref == null || ref.isBlank()
                ? s.bestAnyHeroScore()
                : s.bestHeroScore().getOrDefault(ref, 0);
    }

    // ============================ Topshiriq matni ============================

    /**
     * Yopiq jihoz kartochkasida ko'rinadigan topshiriq — so'z bilan.
     * Bu mahsulotning asosiy motivatsiya halqasi: bola nimani o'rganishi
     * kerakligini aniq o'qib turadi.
     */
    public static String requirementUz(AvatarItem item, Labels labels) {
        int need = item.getUnlockValue();
        String ref = item.getUnlockRef();
        return switch (AvatarItem.UnlockType.valueOf(item.getUnlockType())) {
            case LEVEL -> need + "-darajaga yet";
            case TOTAL_XP -> need + " XP to'pla";
            case STREAK -> need + " kun ketma-ket shug'ullan";
            case QUIZ_PERFECT -> need + " ta testni xatosiz yakunla";
            case RIDDLE_COUNT -> need + " ta kunlik topishmoqni yech";
            case TALK_HEROES -> need + " ta turli qahramon bilan gaplash";
            case ERA_TEST_SCORE -> ref == null || ref.isBlank()
                    ? "Istalgan davr testini " + need + "+ ball bilan yech"
                    : labels.era(ref) + " testini " + need + "+ ball bilan yech";
            case HERO_QUIZ_SCORE -> ref == null || ref.isBlank()
                    ? "Istalgan qahramon kvizini " + need + "+ ball bilan yech"
                    : labels.hero(ref) + " kvizini " + need + "+ ball bilan yech";
        };
    }
}
