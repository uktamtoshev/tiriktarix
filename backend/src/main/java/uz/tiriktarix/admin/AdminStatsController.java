package uz.tiriktarix.admin;

import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.auth.User;
import uz.tiriktarix.auth.UserRepository;
import uz.tiriktarix.chat.ChatMessage;
import uz.tiriktarix.chat.ChatMessageRepository;
import uz.tiriktarix.chat.ConversationRepository;
import uz.tiriktarix.era.EraRepository;
import uz.tiriktarix.event.HistoricalEventRepository;
import uz.tiriktarix.factcard.FactCardRepository;
import uz.tiriktarix.film.FilmRepository;
import uz.tiriktarix.hero.Hero;
import uz.tiriktarix.hero.HeroRepository;
import uz.tiriktarix.map.MapFeatureRepository;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.LearnerProfileRepository;
import uz.tiriktarix.profile.Levels;
import uz.tiriktarix.quiz.QuizQuestionRepository;
import uz.tiriktarix.quiz.QuizResultRepository;

/**
 * Panelning bosh sahifasi uchun ko'rsatkichlar.
 *
 * <p>Raqamlar tanlovi tasodifiy emas: har biri qaror qabul qilishga xizmat
 * qiladi. «Tekshirilmagan kartochka» — metodist navbati, «javobsiz savol» —
 * kontent rejasi, «bugun faol» — mahsulot tirikmi degan savolga javob.
 */
@RestController
@RequestMapping("/api/admin/stats")
public class AdminStatsController {

    private static final ZoneId TASHKENT = ZoneId.of("Asia/Tashkent");
    private static final int ACTIVITY_DAYS = 14;

    public record ContentStats(long eras, long heroes, long heroesBioUnverified, long events,
                               long factCards, long factCardsUnverified, long quizQuestions,
                               long quizWithoutSource, long films, long filmsPublished,
                               long mapFeatures, long mapUnverified) {
    }

    public record LearnerStats(long users, long admins, long profiles, long linkedProfiles,
                               long activeToday, long active7d, long totalXp, long quizzes7d) {
    }

    public record ChatStats(long conversations, long messages, long messages7d,
                            long refusalsNoFact, long refusalsOffTopic) {
    }

    public record DayPoint(String day, long attempts, long correct, long asked) {
    }

    public record HeroPopularity(Long heroId, String nameUz, long conversations) {
    }

    public record ScopeStat(String scope, long attempts, double averageShare) {
    }

    public record LeaderRow(Long profileId, String clientId, String displayName, int xp,
                            int level, String rankUz, int streakDays) {
    }

    /** Panelning «nima qilish kerak» ro'yxati — to'g'ridan-to'g'ri sahifaga havola bilan. */
    public record TodoRow(String label, long count, String href) {
    }

    public record StatsDto(ContentStats content, LearnerStats learners, ChatStats chat,
                           List<DayPoint> activity, List<HeroPopularity> topHeroes,
                           List<ScopeStat> topScopes, List<LeaderRow> leaderboard,
                           List<TodoRow> todo) {
    }

    private final EraRepository eraRepository;
    private final HeroRepository heroRepository;
    private final HistoricalEventRepository eventRepository;
    private final FactCardRepository factCardRepository;
    private final QuizQuestionRepository quizQuestionRepository;
    private final QuizResultRepository quizResultRepository;
    private final FilmRepository filmRepository;
    private final MapFeatureRepository mapRepository;
    private final UserRepository userRepository;
    private final LearnerProfileRepository profileRepository;
    private final ConversationRepository conversationRepository;
    private final ChatMessageRepository chatMessageRepository;

    public AdminStatsController(EraRepository eraRepository, HeroRepository heroRepository,
                                HistoricalEventRepository eventRepository,
                                FactCardRepository factCardRepository,
                                QuizQuestionRepository quizQuestionRepository,
                                QuizResultRepository quizResultRepository,
                                FilmRepository filmRepository, MapFeatureRepository mapRepository,
                                UserRepository userRepository,
                                LearnerProfileRepository profileRepository,
                                ConversationRepository conversationRepository,
                                ChatMessageRepository chatMessageRepository) {
        this.eraRepository = eraRepository;
        this.heroRepository = heroRepository;
        this.eventRepository = eventRepository;
        this.factCardRepository = factCardRepository;
        this.quizQuestionRepository = quizQuestionRepository;
        this.quizResultRepository = quizResultRepository;
        this.filmRepository = filmRepository;
        this.mapRepository = mapRepository;
        this.userRepository = userRepository;
        this.profileRepository = profileRepository;
        this.conversationRepository = conversationRepository;
        this.chatMessageRepository = chatMessageRepository;
    }

    @GetMapping
    public StatsDto stats() {
        LocalDate today = LocalDate.now(TASHKENT);
        OffsetDateTime weekAgo = OffsetDateTime.now().minusDays(7);

        long factsUnverified = factCardRepository.countByVerifiedFalse();
        long mapUnverified = mapRepository.countByVerifiedFalse();
        long bioUnverified = heroRepository.countByBiographyVerifiedFalse();
        long quizNoSource = quizQuestionRepository.countByFactCardIdIsNull();
        long noFact = chatMessageRepository.countByRefusalType(ChatMessage.RefusalType.NO_FACT);

        ContentStats content = new ContentStats(
                eraRepository.count(), heroRepository.count(), bioUnverified,
                eventRepository.count(), factCardRepository.count(), factsUnverified,
                quizQuestionRepository.count(), quizNoSource,
                filmRepository.count(), filmRepository.countByStatus("PUBLISHED"),
                mapRepository.count(), mapUnverified);

        LearnerStats learners = new LearnerStats(
                userRepository.count(), userRepository.countByRole(User.ROLE_ADMIN),
                profileRepository.count(), profileRepository.countByUserIdIsNotNull(),
                profileRepository.countByLastActiveDate(today),
                profileRepository.countByLastActiveDateAfter(today.minusDays(7)),
                profileRepository.totalXp(),
                quizResultRepository.countByCreatedAtAfter(weekAgo));

        ChatStats chat = new ChatStats(
                conversationRepository.count(), chatMessageRepository.count(),
                chatMessageRepository.countByCreatedAtAfter(weekAgo),
                noFact, chatMessageRepository.countByRefusalType(ChatMessage.RefusalType.OFF_TOPIC));

        return new StatsDto(content, learners, chat, activity(), topHeroes(), topScopes(),
                leaderboard(),
                List.of(
                        new TodoRow("Неподтверждённые карточки фактов", factsUnverified, "/admin/faktlar"),
                        new TodoRow("Неподтверждённые биографии", bioUnverified, "/admin/ajdodlar"),
                        new TodoRow("Вопросы тестов без источника", quizNoSource, "/admin/savollar"),
                        new TodoRow("Неподтверждённые слои карты", mapUnverified, "/admin/xarita"),
                        new TodoRow("Вопросы, оставшиеся без ответа", noFact, "/admin/suhbatlar")));
    }

    /** So'nggi ikki hafta: kunlik sinov urinishlari. Bo'sh kunlar ham qatorda turadi. */
    private List<DayPoint> activity() {
        Map<String, Object[]> byDay = quizResultRepository
                .dailyActivity(OffsetDateTime.now().minusDays(ACTIVITY_DAYS))
                .stream()
                .collect(Collectors.toMap(row -> (String) row[0], Function.identity(), (a, b) -> a));

        LocalDate today = LocalDate.now(TASHKENT);
        return java.util.stream.IntStream.rangeClosed(0, ACTIVITY_DAYS - 1)
                .mapToObj(i -> today.minusDays(ACTIVITY_DAYS - 1L - i).toString())
                .map(day -> {
                    Object[] row = byDay.get(day);
                    if (row == null) {
                        return new DayPoint(day, 0, 0, 0);
                    }
                    return new DayPoint(day, num(row[1]), num(row[2]), num(row[3]));
                })
                .toList();
    }

    private List<HeroPopularity> topHeroes() {
        Map<Long, String> names = heroRepository.findAll().stream()
                .collect(Collectors.toMap(Hero::getId, Hero::getNameUz));
        return conversationRepository.countGroupedByHero().stream()
                .limit(8)
                .map(row -> new HeroPopularity((Long) row[0],
                        names.getOrDefault((Long) row[0], "—"), num(row[1])))
                .toList();
    }

    private List<ScopeStat> topScopes() {
        return quizResultRepository.scopePopularity().stream()
                .limit(10)
                .map(row -> new ScopeStat((String) row[0], num(row[1]),
                        row[2] == null ? 0 : ((Number) row[2]).doubleValue()))
                .toList();
    }

    private List<LeaderRow> leaderboard() {
        return profileRepository
                .findAll(PageRequest.of(0, 10, Sort.by(Sort.Direction.DESC, "xp")))
                .getContent().stream()
                .sorted(Comparator.comparingInt(LearnerProfile::getXp).reversed())
                .map(p -> {
                    Levels.LevelInfo info = Levels.of(p.getXp());
                    return new LeaderRow(p.getId(), p.getClientId(), p.getDisplayName(), p.getXp(),
                            info.level(), info.rankUz(), p.getStreakDays());
                })
                .toList();
    }

    private static long num(Object value) {
        return value == null ? 0 : ((Number) value).longValue();
    }
}
