package uz.tiriktarix.film;

import java.time.Duration;
import java.time.OffsetDateTime;

/**
 * Kinozal XP qoidalari — sof funksiyalar, bazasiz test qilinadi.
 *
 * <p>Halol ko'rish: start va complete orasidagi vaqt film davomiyligining
 * ~80 foizidan kam bo'lmasligi kerak. {@code duration_minutes} daqiqagacha
 * yaxlitlangani uchun 60 soniya zaxira ayiriladi — aks holda 3:05 lik video
 * bazada 4 daqiqa bo'lib yozilsa, halol tomoshabin ham testdan o'ta olmasdi.
 */
public final class FilmRules {

    /** To'liq ko'rilgan film uchun bir martalik mukofot. */
    public static final int WATCH_XP = 30;

    /** Film testi: to'g'ri javoblar ulushi 70% dan boshlab — katta mukofot. */
    public static final int QUIZ_XP_HIGH = 30;

    /** Film testi: 50% dan boshlab — kichik mukofot. */
    public static final int QUIZ_XP_MID = 20;

    private static final double HONEST_SHARE = 0.8;
    private static final long ROUNDING_SLACK_SECONDS = 60;
    private static final long MIN_REQUIRED_SECONDS = 30;

    private FilmRules() {
    }

    /** Halol ko'rish uchun talab qilinadigan eng kam soniya. */
    public static long requiredSeconds(Integer durationMinutes) {
        if (durationMinutes == null || durationMinutes <= 0) {
            return ROUNDING_SLACK_SECONDS;
        }
        long share = Math.round(durationMinutes * 60 * HONEST_SHARE);
        return Math.max(MIN_REQUIRED_SECONDS, share - ROUNDING_SLACK_SECONDS);
    }

    /** Start va complete orasi davomiylikka mos keladimi. */
    public static boolean honestWatch(OffsetDateTime startedAt, OffsetDateTime completedAt,
                                      Integer durationMinutes) {
        if (startedAt == null || completedAt == null || completedAt.isBefore(startedAt)) {
            return false;
        }
        long elapsed = Duration.between(startedAt, completedAt).getSeconds();
        return elapsed >= requiredSeconds(durationMinutes);
    }

    /**
     * Ko'rish XP miqdori: faqat BIRINCHI halol to'liq ko'rish uchun.
     * Qayta ko'rish yoki nohalol (tez o'tkazilgan) ko'rish — 0.
     */
    public static int watchXp(boolean alreadyCompleted, boolean honest) {
        return !alreadyCompleted && honest ? WATCH_XP : 0;
    }

    /**
     * Film testi XP miqdori: faqat birinchi urinish va faqat film to'liq
     * ko'rilgan bo'lsa. Qayta yechish — mashq, XP yo'q.
     */
    public static int quizXpFor(boolean firstAttempt, boolean watchedFully, int score, int total) {
        return firstAttempt && watchedFully ? quizXp(score, total) : 0;
    }

    /**
     * Film testi XP jadvali: 70% dan — 30 XP, 50% dan — 20 XP, aks holda 0.
     * 10 savolda bu 7–10 → 30, 5–6 → 20 degani; pul kichik bo'lsa, chegara
     * proporsional qayta hisoblanadi (yuqoriga yaxlitlab).
     */
    public static int quizXp(int score, int total) {
        if (total <= 0 || score <= 0) {
            return 0;
        }
        int highAt = (int) Math.ceil(total * 0.7 - 1e-9);
        int midAt = (int) Math.ceil(total * 0.5 - 1e-9);
        if (score >= highAt) {
            return QUIZ_XP_HIGH;
        }
        if (score >= midAt) {
            return QUIZ_XP_MID;
        }
        return 0;
    }
}
