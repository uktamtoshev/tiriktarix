package uz.tiriktarix.duel;

import java.security.SecureRandom;
import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.profile.ProfileService;
import uz.tiriktarix.quiz.QuizService;
import uz.tiriktarix.quiz.QuizService.QuestionDto;

/**
 * Bellashuv — ikki o'yinchining bir daqiqalik bahsi.
 *
 * QOIDA (eng muhimi). Raqib SENING savollaringni ko'rmaydi, sen ham uniki:
 * har bir o'yinchining savollari serverda saqlanadi va tashqariga faqat
 * SO'ROVCHINING o'z joriy savoli chiqadi. Umumiy bo'lgan yagona narsa —
 * hisob va qolgan vaqt.
 *
 * IKKI YO'L BILAN O'YIN BOSHLANADI.
 *   1) «O'ynash» — navbat. Server reytingi yaqin raqibni o'zi topadi va
 *      ikkalasi xonaga tushgach o'yin avtomatik boshlanadi.
 *   2) Kod — do'st bilan o'ynash uchun: xona ochiladi, kod aytiladi, startni
 *      xona egasi beradi.
 *
 * REYTING. O'yin tugagach Elo formulasi bo'yicha hisoblanadi va profilga
 * yoziladi. Kuchli raqibni yengish ko'p ball beradi, kuchsizni yengish — kam.
 *
 * NEGA XOTIRADA, BAZADA EMAS. Bellashuv umri — bir daqiqa. Bu kontent emas,
 * o'tkinchi holat. Faqat NATIJA (reyting) bazaga tushadi.
 *
 * XATOGA JAZO YO'Q. Noto'g'ri javobda ball qo'shilmaydi va keyingi savol
 * darhol keladi — bir daqiqalik o'yinda minus ball bolani cho'chitadi.
 */
@Service
public class DuelService {

    /** Bir raund — bir daqiqa. */
    public static final int ROUND_SECONDS = 60;

    /** Elo K-koeffitsiyenti: bitta o'yinda reyting qanchaga siljishi mumkin. */
    private static final int ELO_K = 24;

    /** Tashlab ketilgan xonalar shuncha vaqtdan keyin o'chiriladi. */
    private static final Duration LIFETIME = Duration.ofMinutes(30);

    /** Navbatda shuncha turgandan keyin yozuv eskirgan deb hisoblanadi. */
    private static final Duration QUEUE_LIFETIME = Duration.ofMinutes(3);

    /** Boshida faqat shu qadar farqli raqib mos keladi… */
    private static final int MATCH_BASE = 60;

    /** …har kutilgan soniya oynani shuncha kengaytiradi. */
    private static final int MATCH_GROWTH = 30;

    /** Shuncha soniyadan keyin oyna butunlay ochiladi — bola raqibsiz qolmasin. */
    private static final int MATCH_OPEN_AFTER = 45;

    private static final int MAX_CODE_ATTEMPTS = 50;

    public enum Phase { WAITING, RUNNING, FINISHED }

    public enum QueuePhase { SEARCHING, MATCHED }

    // ============================== Tashqi DTO'lar ==============================

    /** Raqib haqida tashqariga chiqadigan YAGONA ma'lumot. Savoli bu yerda yo'q. */
    public record SideDto(String nickname, String scope, int score, int rating) {
    }

    /** `question` — DOIM so'rovchining o'z savoli; `ratingDelta` — o'yin oxirida. */
    public record DuelStateDto(String code, Phase phase, int secondsLeft,
                               SideDto me, SideDto opponent,
                               QuestionDto question, boolean host, boolean ranked,
                               String outcome, Integer ratingDelta) {
    }

    /** Navbat holati: qidirilmoqda yoki raqib topildi. */
    public record QueueStateDto(QueuePhase phase, int rating, int waitedSeconds,
                                int toleranceNow, String code) {
    }

    // ============================== Ichki holat ==============================

    private static final class Side {
        private final String clientId;
        private final String nickname;
        private final String scope;
        private final int ratingAtStart;
        /** O'yinchining SHAXSIY savollari — tashqariga to'liq chiqmaydi. */
        private final List<QuestionDto> pool;
        private int cursor;
        private int score;
        private Integer ratingDelta;

        private Side(String clientId, String nickname, String scope, int rating, List<QuestionDto> pool) {
            this.clientId = clientId;
            this.nickname = nickname;
            this.scope = scope;
            this.ratingAtStart = rating;
            this.pool = pool;
        }

        /** Pul tugasa boshidan aylanadi — chaqqon o'yinchi savolsiz qolmasin. */
        private QuestionDto current() {
            return pool.get(cursor % pool.size());
        }

        private SideDto toDto() {
            return new SideDto(nickname, scope, score, ratingAtStart);
        }
    }

    private static final class Duel {
        private final String code;
        private final Instant createdAt = Instant.now();
        private final Side host;
        /** Navbat orqali topilgan o'yin startni kutmaydi — ikkalasi kelishi bilan boshlanadi. */
        private final boolean ranked;
        private final Set<String> arrived = new HashSet<>();
        private Side guest;
        private Instant startedAt;
        private boolean rated;

        private Duel(String code, Side host, boolean ranked) {
            this.code = code;
            this.host = host;
            this.ranked = ranked;
        }

        private Side sideOf(String clientId) {
            if (host.clientId.equals(clientId)) {
                return host;
            }
            return guest != null && guest.clientId.equals(clientId) ? guest : null;
        }

        private Side otherThan(Side side) {
            return side == host ? guest : host;
        }

        private Phase phase() {
            if (startedAt == null) {
                return Phase.WAITING;
            }
            return secondsLeft() > 0 ? Phase.RUNNING : Phase.FINISHED;
        }

        private int secondsLeft() {
            if (startedAt == null) {
                return ROUND_SECONDS;
            }
            long gone = Duration.between(startedAt, Instant.now()).toSeconds();
            return (int) Math.max(0, ROUND_SECONDS - gone);
        }
    }

    /** Navbatda turgan o'yinchi. */
    private static final class Waiting {
        private final String clientId;
        private final String nickname;
        private final String scope;
        private final int rating;
        private final Instant since = Instant.now();

        private Waiting(String clientId, String nickname, String scope, int rating) {
            this.clientId = clientId;
            this.nickname = nickname;
            this.scope = scope;
            this.rating = rating;
        }

        private int waited() {
            return (int) Duration.between(since, Instant.now()).toSeconds();
        }

        /**
         * Kutish uzaygani sayin mos raqiblar doirasi kengayadi.
         *
         * NEGA CHEKSIZ BO'LIB KETADI. Maktabda ayni paytda navbatda ikki-uch
         * bola turishi mumkin va ularning reytingi juda farq qilishi mumkin.
         * Qat'iy yuqori chegara qo'yilsa, ular bir-birini umuman topmaydi va
         * navbatda abadiy turadi. Shuning uchun {@link #MATCH_OPEN_AFTER}
         * soniyadan keyin har qanday raqib qabul qilinadi: teng bo'lmagan
         * o'yin — raqibsiz qolishdan yaxshiroq.
         */
        private int tolerance() {
            int waited = waited();
            if (waited >= MATCH_OPEN_AFTER) {
                return Integer.MAX_VALUE;
            }
            return MATCH_BASE + MATCH_GROWTH * waited;
        }
    }

    private final Map<String, Duel> rooms = new ConcurrentHashMap<>();
    private final Map<String, Waiting> queue = new ConcurrentHashMap<>();
    /** Juftlik topilgach o'yinchi kodni shu yerdan oladi. */
    private final Map<String, String> matched = new ConcurrentHashMap<>();
    private final Object matchLock = new Object();

    private final SecureRandom random = new SecureRandom();
    private final QuizService quizService;
    private final ProfileService profileService;

    public DuelService(QuizService quizService, ProfileService profileService) {
        this.quizService = quizService;
        this.profileService = profileService;
    }

    // ============================== Navbat (reyting) ==============================

    /**
     * «O'ynash» — navbatga tushish. Har chaqiruvda juftlash urinib ko'riladi,
     * chunki kutish uzaygani sayin mos raqiblar doirasi kengayadi.
     */
    public QueueStateDto enqueue(String clientId, String nickname, String scope) {
        // Mavzuda savol yo'q bo'lsa — navbatga tushishdan oldin aytamiz
        quizService.duelPool(scope);
        int rating = profileService.duelRating(clientId);
        synchronized (matchLock) {
            sweepQueue();
            String ready = matched.get(clientId);
            if (ready != null) {
                return new QueueStateDto(QueuePhase.MATCHED, rating, 0, 0, ready);
            }
            queue.put(clientId, new Waiting(clientId, cleanNickname(nickname, "O'yinchi"), scope, rating));
            tryMatch(clientId);
            return queueState(clientId, rating);
        }
    }

    /** Navbat holati. Bu yerda ham juftlash urinib ko'riladi — oyna kengaygan bo'lishi mumkin. */
    public QueueStateDto queueState(String clientId) {
        synchronized (matchLock) {
            sweepQueue();
            String ready = matched.get(clientId);
            if (ready != null) {
                return new QueueStateDto(QueuePhase.MATCHED, ratingInQueue(clientId), 0, 0, ready);
            }
            Waiting me = queue.get(clientId);
            if (me == null) {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Siz navbatda emassiz");
            }
            tryMatch(clientId);
            return queueState(clientId, me.rating);
        }
    }

    /** Navbatdan chiqish. */
    public void dequeue(String clientId) {
        synchronized (matchLock) {
            queue.remove(clientId);
            matched.remove(clientId);
        }
    }

    private QueueStateDto queueState(String clientId, int rating) {
        String ready = matched.get(clientId);
        if (ready != null) {
            return new QueueStateDto(QueuePhase.MATCHED, rating, 0, 0, ready);
        }
        Waiting me = queue.get(clientId);
        int waited = me == null ? 0 : me.waited();
        int tolerance = me == null ? MATCH_BASE : me.tolerance();
        return new QueueStateDto(QueuePhase.SEARCHING, rating, waited, tolerance, null);
    }

    private int ratingInQueue(String clientId) {
        Waiting me = queue.get(clientId);
        return me != null ? me.rating : profileService.duelRating(clientId);
    }

    /**
     * Reyting bo'yicha juftlash: eng yaqin raqib tanlanadi, ammo faqat
     * ikkalasining biri uchun ham oyna yetadigan bo'lsa. Uzoq kutgan o'yinchi
     * yangi kelganni «tortib olishi» mumkin — shuning uchun ikkala tolerantlik
     * ham tekshiriladi.
     */
    private void tryMatch(String clientId) {
        Waiting me = queue.get(clientId);
        if (me == null) {
            return;
        }
        Waiting best = null;
        int bestGap = Integer.MAX_VALUE;
        for (Waiting other : queue.values()) {
            if (other.clientId.equals(me.clientId)) {
                continue;
            }
            int gap = Math.abs(other.rating - me.rating);
            if (gap > Math.max(me.tolerance(), other.tolerance())) {
                continue;
            }
            if (gap < bestGap) {
                bestGap = gap;
                best = other;
            }
        }
        if (best == null) {
            return;
        }
        queue.remove(me.clientId);
        queue.remove(best.clientId);
        Duel duel = pair(me, best);
        matched.put(me.clientId, duel.code);
        matched.put(best.clientId, duel.code);
    }

    private Duel pair(Waiting a, Waiting b) {
        Side host = new Side(a.clientId, a.nickname, a.scope, a.rating, quizService.duelPool(a.scope));
        Side guest = new Side(b.clientId, b.nickname, b.scope, b.rating, quizService.duelPool(b.scope));
        Duel duel = new Duel(nextFreeCode(), host, true);
        duel.guest = guest;
        rooms.put(duel.code, duel);
        return duel;
    }

    private void sweepQueue() {
        Instant deadline = Instant.now().minus(QUEUE_LIFETIME);
        queue.values().removeIf(w -> w.since.isBefore(deadline));
    }

    // ============================== Kod bilan o'yin ==============================

    /** Xona ochish. Qaytgan kodni o'yinchi raqibiga aytadi. */
    public DuelStateDto create(String clientId, String nickname, String scope) {
        sweepExpired();
        Side host = new Side(clientId, cleanNickname(nickname, "Chaqiruvchi"), scope,
                profileService.duelRating(clientId), quizService.duelPool(scope));
        Duel duel = new Duel(nextFreeCode(), host, false);
        rooms.put(duel.code, duel);
        return state(duel, host);
    }

    /** Kod bo'yicha qo'shilish. Raqib O'Z mavzusini tanlaydi — u boshqa bo'lishi mumkin. */
    public DuelStateDto join(String code, String clientId, String nickname, String scope) {
        Duel duel = require(code);
        synchronized (duel) {
            Side existing = duel.sideOf(clientId);
            if (existing != null) {
                // Sahifa yangilangan bo'lsa — bu qayta kirish, yangi o'yinchi emas
                return state(duel, existing);
            }
            if (duel.guest != null) {
                throw new ResponseStatusException(HttpStatus.CONFLICT, "Bu bellashuvda joy band");
            }
            if (duel.startedAt != null) {
                throw new ResponseStatusException(HttpStatus.CONFLICT, "Bellashuv allaqachon boshlangan");
            }
            duel.guest = new Side(clientId, cleanNickname(nickname, "Raqib"), scope,
                    profileService.duelRating(clientId), quizService.duelPool(scope));
            return state(duel, duel.guest);
        }
    }

    /** Startni faqat xona egasi beradi va faqat raqib kelgach. */
    public DuelStateDto start(String code, String clientId) {
        Duel duel = require(code);
        synchronized (duel) {
            Side side = requireSide(duel, clientId);
            if (side != duel.host) {
                throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Startni xona egasi beradi");
            }
            if (duel.guest == null) {
                throw new ResponseStatusException(HttpStatus.CONFLICT, "Raqib hali qo'shilmadi");
            }
            if (duel.startedAt == null) {
                duel.startedAt = Instant.now();
            }
            return state(duel, side);
        }
    }

    // ============================== O'yin ==============================

    /** Holatni so'rash — sekundiga bir marta chaqiriladi. */
    public DuelStateDto state(String code, String clientId) {
        Duel duel = require(code);
        synchronized (duel) {
            return state(duel, requireSide(duel, clientId));
        }
    }

    /**
     * Javob. Tekshiruv SERVERDA: mijoz «to'g'ri javob berdim» deb ayta olmaydi.
     * Noto'g'ri javobda ball qo'shilmaydi, ammo savol baribir almashadi.
     */
    public DuelStateDto answer(String code, String clientId, Long questionId, int chosenIndex) {
        Duel duel = require(code);
        synchronized (duel) {
            Side side = requireSide(duel, clientId);
            if (duel.phase() != Phase.RUNNING) {
                return state(duel, side);
            }
            // Faqat joriy savolga javob qabul qilinadi — eski savolni qayta
            // yuborib ball to'plash yo'lini yopadi
            if (!side.current().id().equals(questionId)) {
                return state(duel, side);
            }
            if (quizService.check(questionId, chosenIndex).correct()) {
                side.score++;
            }
            side.cursor++;
            return state(duel, side);
        }
    }

    /** O'yinchi chiqib ketdi — xonani bo'shatamiz. */
    public void leave(String code, String clientId) {
        Duel duel = rooms.get(code);
        if (duel == null) {
            return;
        }
        synchronized (duel) {
            if (duel.sideOf(clientId) != null) {
                rooms.remove(code);
            }
        }
        matched.remove(clientId);
    }

    // ============================== Yordamchilar ==============================

    private DuelStateDto state(Duel duel, Side side) {
        // Navbat orqali topilgan o'yin: ikkalasi ekranga kelishi bilan boshlanadi
        if (duel.ranked && duel.startedAt == null && duel.guest != null) {
            duel.arrived.add(side.clientId);
            if (duel.arrived.size() >= 2) {
                duel.startedAt = Instant.now();
            }
        }
        Phase phase = duel.phase();
        if (phase == Phase.FINISHED) {
            applyRating(duel);
        }
        Side other = duel.otherThan(side);
        // Savol faqat o'yin ketayotganda va faqat SHU o'yinchi uchun beriladi
        QuestionDto question = phase == Phase.RUNNING ? side.current() : null;
        return new DuelStateDto(duel.code, phase, duel.secondsLeft(),
                side.toDto(), other == null ? null : other.toDto(),
                question, side == duel.host, duel.ranked,
                outcome(phase, side, other), side.ratingDelta);
    }

    /**
     * Reytingni bir marta hisoblab, profillarga yozadi.
     *
     * Alohida taymer yo'q: birinchi bo'lib holatni so'ragan o'yinchi hisobni
     * ishga tushiradi. `rated` bayrog'i takror yozilishdan saqlaydi.
     */
    private void applyRating(Duel duel) {
        if (duel.rated || duel.guest == null) {
            return;
        }
        duel.rated = true;
        Side a = duel.host;
        Side b = duel.guest;
        double actualA = a.score > b.score ? 1 : (a.score < b.score ? 0 : 0.5);
        int deltaA = eloDelta(a.ratingAtStart, b.ratingAtStart, actualA);
        int deltaB = eloDelta(b.ratingAtStart, a.ratingAtStart, 1 - actualA);
        a.ratingDelta = deltaA;
        b.ratingDelta = deltaB;
        profileService.applyDuelResult(a.clientId, deltaA, outcomeCode(actualA));
        profileService.applyDuelResult(b.clientId, deltaB, outcomeCode(1 - actualA));
    }

    /** Elo: kutilgan natijadan qanchalik chetlashgan bo'lsa, shuncha ball. */
    private static int eloDelta(int mine, int opponent, double actual) {
        double expected = 1.0 / (1.0 + Math.pow(10, (opponent - mine) / 400.0));
        return (int) Math.round(ELO_K * (actual - expected));
    }

    /** 1 — g'alaba, 0 — mag'lubiyat, -1 — durang (LearnerProfile shartiga mos). */
    private static int outcomeCode(double actual) {
        if (actual == 1) {
            return 1;
        }
        return actual == 0 ? 0 : -1;
    }

    /** Yakun so'rovchining nuqtai nazaridan. */
    private String outcome(Phase phase, Side side, Side other) {
        if (phase != Phase.FINISHED || other == null) {
            return null;
        }
        if (side.score > other.score) {
            return "WIN";
        }
        return side.score < other.score ? "LOSS" : "DRAW";
    }

    private Duel require(String code) {
        Duel duel = rooms.get(code == null ? "" : code.trim());
        if (duel == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Bunday kodli bellashuv topilmadi");
        }
        return duel;
    }

    private Side requireSide(Duel duel, String clientId) {
        Side side = duel.sideOf(clientId);
        if (side == null) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Siz bu bellashuv ishtirokchisi emassiz");
        }
        return side;
    }

    private String nextFreeCode() {
        for (int i = 0; i < MAX_CODE_ATTEMPTS; i++) {
            String code = String.format("%04d", random.nextInt(10_000));
            if (!rooms.containsKey(code)) {
                return code;
            }
        }
        throw new ResponseStatusException(HttpStatus.SERVICE_UNAVAILABLE,
                "Hozir bo'sh kod topilmadi, birozdan keyin urinib ko'ring");
    }

    private static String cleanNickname(String raw, String fallback) {
        if (raw == null || raw.isBlank()) {
            return fallback;
        }
        String trimmed = raw.trim();
        return trimmed.length() > 24 ? trimmed.substring(0, 24) : trimmed;
    }

    /** Tashlab ketilgan xonalarni tozalash — xotira cheksiz o'smasligi uchun. */
    private void sweepExpired() {
        Instant deadline = Instant.now().minus(LIFETIME);
        List<String> gone = new ArrayList<>();
        rooms.forEach((code, duel) -> {
            if (duel.createdAt.isBefore(deadline)) {
                gone.add(code);
            }
        });
        gone.forEach(rooms::remove);
    }
}
