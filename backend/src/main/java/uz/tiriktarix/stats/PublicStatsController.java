package uz.tiriktarix.stats;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.era.EraRepository;
import uz.tiriktarix.event.HistoricalEventRepository;
import uz.tiriktarix.factcard.FactCardRepository;
import uz.tiriktarix.film.FilmRepository;
import uz.tiriktarix.hero.HeroRepository;
import uz.tiriktarix.quiz.QuizQuestionRepository;

/**
 * Bosh sahifadagi raqamlar.
 *
 * <p>NEGA KERAK. Ilgari bu to'rt raqam frontendda qo'lda yozilgan ro'yxatda
 * turardi ({@code const STAT_VALUES = ["91", "8", "64", "110"]}) va allaqachon
 * eskirgan edi: bazada 1500 dan ortiq kartochka bo'lgani holda sahifa 91 ni
 * ko'rsatardi. Loyihaning asosiy qoidasi — «bironta ham o'ylab topilgan raqam
 * yo'q» — shu yerda buzilardi.
 *
 * <p>Endi raqamlar bazadan sanaladi va hech qachon eskirmaydi.
 *
 * <p>Bu ochiq endpoint: shaxsiy ma'lumot yo'q, faqat kontent hajmi.
 * Foydalanuvchilar soni va suhbatlar statistikasi bu yerda EMAS — ular
 * boshqaruv panelida ({@code /api/admin/stats}).
 */
@RestController
@RequestMapping("/api/stats")
public class PublicStatsController {

    public record PublicStats(long factCards, long eras, long events, long quizQuestions,
                              long heroes, long films) {
    }

    private final FactCardRepository factCards;
    private final EraRepository eras;
    private final HistoricalEventRepository events;
    private final QuizQuestionRepository quizQuestions;
    private final HeroRepository heroes;
    private final FilmRepository films;

    public PublicStatsController(FactCardRepository factCards, EraRepository eras,
                                 HistoricalEventRepository events,
                                 QuizQuestionRepository quizQuestions,
                                 HeroRepository heroes, FilmRepository films) {
        this.factCards = factCards;
        this.eras = eras;
        this.events = events;
        this.quizQuestions = quizQuestions;
        this.heroes = heroes;
        this.films = films;
    }

    @GetMapping
    public PublicStats stats() {
        return new PublicStats(factCards.count(), eras.count(), events.count(),
                quizQuestions.count(), heroes.count(), films.count());
    }
}
