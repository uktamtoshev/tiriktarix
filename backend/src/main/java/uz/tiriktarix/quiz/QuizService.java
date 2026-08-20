package uz.tiriktarix.quiz;

import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.config.AppProperties;
import uz.tiriktarix.era.EraRepository;
import uz.tiriktarix.film.Film;
import uz.tiriktarix.film.FilmRepository;
import uz.tiriktarix.film.FilmRules;
import uz.tiriktarix.film.FilmWatchService;
import uz.tiriktarix.hero.HeroRepository;
import uz.tiriktarix.avatar.AvatarService;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.ProfileService;

/** M4. Kvestlar va testlar — bilimlarni tekshirish markazi. */
@Service
public class QuizService {

    private static final ZoneId TASHKENT = ZoneId.of("Asia/Tashkent");

    public record QuestionDto(Long id, String questionUz, List<String> options,
                              String questionRu, List<String> optionsRu) {

        static QuestionDto from(QuizQuestion q) {
            return new QuestionDto(q.getId(), q.getQuestionUz(), q.getOptions(),
                    q.getQuestionRu(), q.getOptionsRu());
        }
    }

    public record AnswerItem(Long questionId, int chosenIndex) {
    }

    /**
     * Qiyinlik darajasi va XP jadvali (chegara test hajmiga proporsional):
     * 80% dan to'g'ri — OSON 15 / O'RTA 25 / QIYIN 35 XP;
     * 50% dan — OSON 5 / O'RTA 15 / QIYIN 20 XP; aks holda 0.
     * 10 savolda bu eski 8-10 va 5-7 chegaralari bilan aynan mos keladi,
     * 20 savolda esa 16-20 va 10-15 bo'ladi.
     */
    public enum Difficulty {
        EASY(15, 5), MEDIUM(25, 15), HARD(35, 20);

        private final int xpHighBand;
        private final int xpMidBand;

        Difficulty(int xpHighBand, int xpMidBand) {
            this.xpHighBand = xpHighBand;
            this.xpMidBand = xpMidBand;
        }

        int xpFor(int score, int total) {
            if (total <= 0 || score <= 0) {
                return 0;
            }
            if (score >= (int) Math.ceil(total * 0.8 - 1e-9)) {
                return xpHighBand;
            }
            if (score >= (int) Math.ceil(total * 0.5 - 1e-9)) {
                return xpMidBand;
            }
            return 0;
        }
    }

    public record AnswerReview(Long questionId, int chosenIndex, int correctIndex,
                               boolean correct, String explanationUz,
                               String explanationRu) {
    }

    public record SubmitResult(int score, int total, int xpEarned, int totalXp,
                               int streakDays, boolean firstAttempt,
                               List<AnswerReview> reviews,
                               List<AvatarService.UnlockedItem> newlyUnlocked) {
    }

    /** Sinov turi: scope satri qaysi pulga tegishliligini aniqlaydi. */
    private sealed interface Scope {
        record Riddle() implements Scope {
        }

        record HeroScope(Long heroId) implements Scope {
        }

        record EraScope(Long eraId) implements Scope {
        }

        record FilmScope(Film film) implements Scope {
        }
    }

    private final QuizQuestionRepository questionRepository;
    private final QuizResultRepository resultRepository;
    private final HeroRepository heroRepository;
    private final EraRepository eraRepository;
    private final FilmRepository filmRepository;
    private final FilmWatchService filmWatchService;
    private final ProfileService profileService;
    private final AvatarService avatarService;
    private final AppProperties properties;

    public QuizService(QuizQuestionRepository questionRepository,
                       QuizResultRepository resultRepository,
                       HeroRepository heroRepository,
                       EraRepository eraRepository,
                       FilmRepository filmRepository,
                       FilmWatchService filmWatchService,
                       ProfileService profileService,
                       AvatarService avatarService,
                       AppProperties properties) {
        this.questionRepository = questionRepository;
        this.resultRepository = resultRepository;
        this.heroRepository = heroRepository;
        this.eraRepository = eraRepository;
        this.filmRepository = filmRepository;
        this.filmWatchService = filmWatchService;
        this.profileService = profileService;
        this.avatarService = avatarService;
        this.properties = properties;
    }

    /** M1 mikro-viktorina: qahramon puldan tasodifiy tanlab olingan savollar. */
    public List<QuestionDto> heroQuiz(String heroSlug) {
        var hero = heroRepository.findBySlug(heroSlug)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Qahramon topilmadi"));
        List<QuizQuestion> questions = new ArrayList<>(questionRepository.findByHeroId(hero.getId()));
        Collections.shuffle(questions);
        return questions.stream()
                .limit(properties.quiz().microQuizSize())
                .map(QuestionDto::from)
                .toList();
    }

    /** M4. Davr testi: bankdan tasodifiy tanlab olingan savollar. */
    public List<QuestionDto> eraQuiz(String eraCode) {
        var era = eraRepository.findByCode(eraCode)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Davr topilmadi"));
        List<QuizQuestion> questions = new ArrayList<>(questionRepository.findByEraId(era.getId()));
        Collections.shuffle(questions);
        return questions.stream()
                .limit(properties.quiz().eraTestSize())
                .map(QuestionDto::from)
                .toList();
    }

    /**
     * Film testi: qahramon va/yoki davr pulidan tasodifiy savollar.
     * Film uchun alohida savol yozilmaydi — ishonchlilik konturi bitta (M1).
     */
    public List<QuestionDto> filmQuiz(Long filmId) {
        Film film = filmRepository.findById(filmId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Film topilmadi"));
        List<QuizQuestion> pool = filmPool(film);
        if (pool.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Bu film uchun savollar hali yo'q");
        }
        Collections.shuffle(pool);
        return pool.stream()
                .limit(properties.quiz().filmQuizSize())
                .map(QuestionDto::from)
                .toList();
    }

    private List<QuizQuestion> filmPool(Film film) {
        List<QuizQuestion> pool = new ArrayList<>();
        if (film.getHeroId() != null) {
            pool.addAll(questionRepository.findByHeroId(film.getHeroId()));
        }
        if (film.getEraId() != null) {
            pool.addAll(questionRepository.findByEraId(film.getEraId()));
        }
        return pool;
    }

    /**
     * Bellashuv uchun savollar pulini beradi — mavzu bo'yicha BARCHA savollar,
     * aralashtirilgan holda.
     *
     * NEGA CHEGARA YO'Q. Mikro-viktorinada savollar soni oldindan ma'lum
     * (`micro-quiz-size`), bellashuvda esa yo'q: bir daqiqada bola nechta
     * savolga ulgursa, shuncha kerak bo'ladi. Chaqqon o'yinchi pulni tugatib
     * qo'ymasligi uchun `DuelService` ro'yxat oxiriga yetganda uni qaytadan
     * boshidan aylantiradi.
     */
    public List<QuestionDto> duelPool(String scope) {
        List<QuizQuestion> pool = new ArrayList<>(poolOf(resolveScope(scope)));
        if (pool.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Bu mavzu bo'yicha savollar hali yo'q");
        }
        Collections.shuffle(pool);
        return pool.stream().map(QuestionDto::from).toList();
    }

    /** Scope → savollar puli. `belongs()` bilan bir xil mantiq, faqat teskari tomondan. */
    private List<QuizQuestion> poolOf(Scope target) {
        if (target instanceof Scope.HeroScope hero) {
            return questionRepository.findByHeroId(hero.heroId());
        }
        if (target instanceof Scope.EraScope era) {
            return questionRepository.findByEraId(era.eraId());
        }
        if (target instanceof Scope.FilmScope film) {
            return filmPool(film.film());
        }
        // Scope.Riddle — butun bank
        return questionRepository.findAllByOrderByIdAsc();
    }

    /** Kunlik topishmoq — sana bo'yicha deterministik tanlanadi. */
    public QuestionDto riddleOfDay() {
        // Barqaror tartib: pul kengayganda ham «bugungi» savol kun davomida o'zgarmaydi
        List<QuizQuestion> all = questionRepository.findAllByOrderByIdAsc();
        if (all.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Savollar yo'q");
        }
        int index = (int) (LocalDate.now(TASHKENT).toEpochDay() % all.size());
        return QuestionDto.from(all.get(index));
    }

    /**
     * Bitta savolni darhol tekshirish — «savolma-savol» rejimi (film testi).
     * XP bermaydi va natija yozmaydi: yakuniy hisob baribir submit orqali o'tadi.
     */
    public AnswerReview check(Long questionId, int chosenIndex) {
        QuizQuestion question = questionRepository.findById(questionId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.BAD_REQUEST,
                        "Savol topilmadi: " + questionId));
        boolean correct = question.getCorrectIndex() == chosenIndex;
        return new AnswerReview(question.getId(), chosenIndex, question.getCorrectIndex(),
                correct, question.getExplanationUz(), question.getExplanationRu());
    }

    @Transactional
    public SubmitResult submit(String clientId, String scope, Difficulty difficulty,
                               List<AnswerItem> answers) {
        if (answers == null || answers.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Javoblar bo'sh");
        }
        Scope target = resolveScope(scope);
        List<AnswerReview> reviews = new ArrayList<>();
        int score = 0;
        for (AnswerItem answer : answers) {
            QuizQuestion question = questionRepository.findById(answer.questionId())
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            "Savol topilmadi: " + answer.questionId()));
            // Savol e'lon qilingan sinovga tegishli bo'lishi shart — aks holda
            // «begona» savollar bilan XP yig'ib bo'lardi.
            if (!belongs(question, target)) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                        "Savol bu sinovga tegishli emas: " + question.getId());
            }
            boolean correct = question.getCorrectIndex() == answer.chosenIndex();
            if (correct) {
                score++;
            }
            reviews.add(new AnswerReview(question.getId(), answer.chosenIndex(),
                    question.getCorrectIndex(), correct, question.getExplanationUz(),
                    question.getExplanationRu()));
        }

        LearnerProfile before = profileService.getOrCreate(clientId);
        // XP faqat BIRINCHI urinish uchun: qayta yechish — mashq (natija yoziladi,
        // eng yaxshi ball jihoz ochilishida hisobga olinadi), lekin XP bermaydi.
        boolean firstAttempt = isFirstAttempt(before.getId(), scope, target);
        int xpEarned;
        if (target instanceof Scope.FilmScope f) {
            // Film testi XP olish uchun film avval to'liq (halol) ko'rilgan bo'lishi kerak
            boolean watched = filmWatchService.hasCompletedWatch(before.getId(), f.film().getId());
            xpEarned = FilmRules.quizXpFor(firstAttempt, watched, score, answers.size());
        } else {
            xpEarned = firstAttempt ? xpFor(target, difficulty, score, answers.size()) : 0;
        }

        // Jihoz ochilishini aniqlash uchun sinovdan oldingi to'liq holatni eslab qolamiz:
        // XP va seriyadan tashqari kvest ko'rsatkichlari ham (xatosiz testlar, ballar).
        var statsBefore = avatarService.statsOf(before);
        LearnerProfile profile = profileService.recordActivity(clientId, xpEarned);
        // Yangi natija kvest ko'rsatkichlariga darhol qo'shilishi uchun flush qilamiz
        resultRepository.saveAndFlush(
                new QuizResult(profile.getId(), storedScope(scope, target, difficulty),
                        score, answers.size(), xpEarned));
        if (xpEarned > 0 && target instanceof Scope.FilmScope f) {
            filmWatchService.markQuizXpAwarded(profile.getId(), f.film().getId());
        }
        var unlocked = avatarService.newlyUnlocked(statsBefore, avatarService.statsOf(profile));
        return new SubmitResult(score, answers.size(), xpEarned, profile.getXp(),
                profile.getStreakDays(), firstAttempt, reviews, unlocked);
    }

    private Scope resolveScope(String scope) {
        if ("riddle".equals(scope)) {
            return new Scope.Riddle();
        }
        if (scope.startsWith("hero:")) {
            var hero = heroRepository.findBySlug(scope.substring("hero:".length()))
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.BAD_REQUEST, "Qahramon topilmadi"));
            return new Scope.HeroScope(hero.getId());
        }
        if (scope.startsWith("era:")) {
            var era = eraRepository.findByCode(scope.substring("era:".length()))
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.BAD_REQUEST, "Davr topilmadi"));
            return new Scope.EraScope(era.getId());
        }
        if (scope.startsWith("film:")) {
            Long filmId;
            try {
                filmId = Long.valueOf(scope.substring("film:".length()));
            } catch (NumberFormatException e) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Noto'g'ri film raqami");
            }
            Film film = filmRepository.findById(filmId)
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.BAD_REQUEST, "Film topilmadi"));
            return new Scope.FilmScope(film);
        }
        throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Noma'lum sinov turi: " + scope);
    }

    private boolean belongs(QuizQuestion question, Scope target) {
        // Kunlik topishmoq butun bankdan tanlanadi
        if (target instanceof Scope.Riddle) {
            return true;
        }
        if (target instanceof Scope.HeroScope h) {
            return Objects.equals(question.getHeroId(), h.heroId());
        }
        if (target instanceof Scope.EraScope e) {
            return Objects.equals(question.getEraId(), e.eraId());
        }
        Film film = ((Scope.FilmScope) target).film();
        return (film.getHeroId() != null && Objects.equals(question.getHeroId(), film.getHeroId()))
                || (film.getEraId() != null && Objects.equals(question.getEraId(), film.getEraId()));
    }

    private boolean isFirstAttempt(Long profileId, String scope, Scope target) {
        // Topishmoq kunlik: bugun (Toshkent) allaqachon yechilgan bo'lsa — takror
        if (target instanceof Scope.Riddle) {
            return !resultRepository.existsByProfileIdAndScopeAndCreatedAtAfter(profileId, "riddle",
                    LocalDate.now(TASHKENT).atStartOfDay(TASHKENT).toOffsetDateTime());
        }
        // Film natijasi aynan «film:{id}» bo'lib saqlanadi
        if (target instanceof Scope.FilmScope) {
            return !resultRepository.existsByProfileIdAndScope(profileId, scope);
        }
        // era:/hero: natijalar qiyinlik qo'shimchasi bilan saqlanadi — prefiks bo'yicha
        return !resultRepository.existsByProfileIdAndScopeStartingWith(profileId, scope + ":");
    }

    private int xpFor(Scope target, Difficulty difficulty, int score, int total) {
        // Kunlik topishmoq (bitta savol) — eski qoida: har to'g'ri javob uchun XP
        if (target instanceof Scope.Riddle) {
            return score * properties.quiz().xpPerCorrect();
        }
        // Film testi: 70% dan — 30, 50% dan — 20 (pul kichik bo'lsa proporsional)
        if (target instanceof Scope.FilmScope) {
            return FilmRules.quizXp(score, total);
        }
        // Davr va qahramon testlari — qiyinlik darajasi bo'yicha bandli jadval
        return difficulty.xpFor(score, total);
    }

    private String storedScope(String scope, Scope target, Difficulty difficulty) {
        if (target instanceof Scope.Riddle) {
            return "riddle";
        }
        // Film testida qiyinlik yo'q — scope aynan «film:{id}» bo'lib saqlanadi
        if (target instanceof Scope.FilmScope) {
            return scope;
        }
        return scope + ":" + difficulty.name().toLowerCase();
    }
}
