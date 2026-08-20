package uz.tiriktarix.film;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import org.junit.jupiter.api.Test;

/**
 * Kinozal XP qoidalari: halol ko'rish vaqti, bir martalik XP va test chegaralari.
 * Barchasi sof funksiyalar — bazasiz tekshiriladi.
 */
class FilmRulesTest {

    private static final OffsetDateTime T0 =
            OffsetDateTime.of(2026, 1, 1, 12, 0, 0, 0, ZoneOffset.UTC);

    // ===================== Halol ko'rish vaqti =====================

    @Test
    void watchIsHonestAfterEnoughTime() {
        // 10 daqiqalik film: talab = 80% - 60s = 420s
        assertEquals(420, FilmRules.requiredSeconds(10));
        assertTrue(FilmRules.honestWatch(T0, T0.plusSeconds(420), 10));
        assertTrue(FilmRules.honestWatch(T0, T0.plusMinutes(10), 10));
    }

    @Test
    void skippingToTheEndIsNotHonest() {
        // Videoni darrov oxiriga o'tkazib yuborish — ENDED bo'lsa ham vaqt yetmaydi
        assertFalse(FilmRules.honestWatch(T0, T0.plusSeconds(15), 10));
        assertFalse(FilmRules.honestWatch(T0, T0.plusSeconds(419), 10));
    }

    @Test
    void watchWithoutStartOrBackwardsClockIsNotHonest() {
        assertFalse(FilmRules.honestWatch(null, T0, 10));
        assertFalse(FilmRules.honestWatch(T0, null, 10));
        assertFalse(FilmRules.honestWatch(T0, T0.minusSeconds(1), 10));
    }

    @Test
    void shortAndUnknownDurationsKeepAMinimalFloor() {
        // Davomiyligi noma'lum film uchun ham nol soniyada «ko'rdim» o'tmaydi
        assertEquals(60, FilmRules.requiredSeconds(null));
        assertEquals(60, FilmRules.requiredSeconds(0));
        // 1 daqiqalik short: 48s - 60s manfiy bo'lardi — kamida 30s talab qilinadi
        assertEquals(30, FilmRules.requiredSeconds(1));
    }

    // ===================== Ko'rish XP — faqat birinchi halol =====================

    @Test
    void watchXpOnlyOnceAndOnlyHonest() {
        assertEquals(30, FilmRules.watchXp(false, true));
        // Qayta ko'rish — XP yo'q
        assertEquals(0, FilmRules.watchXp(true, true));
        // Nohalol — XP yo'q
        assertEquals(0, FilmRules.watchXp(false, false));
        assertEquals(0, FilmRules.watchXp(true, false));
    }

    // ===================== Film testi chegaralari (7/5 dan 10 da) =====================

    @Test
    void quizXpBandsForTenQuestions() {
        assertEquals(30, FilmRules.quizXp(10, 10));
        assertEquals(30, FilmRules.quizXp(8, 10));
        assertEquals(30, FilmRules.quizXp(7, 10));
        assertEquals(20, FilmRules.quizXp(6, 10));
        assertEquals(20, FilmRules.quizXp(5, 10));
        assertEquals(0, FilmRules.quizXp(4, 10));
        assertEquals(0, FilmRules.quizXp(3, 10));
        assertEquals(0, FilmRules.quizXp(0, 10));
    }

    @Test
    void quizXpBandsScaleProportionallyForSmallPools() {
        // 8 savol: 70% → 6 dan, 50% → 4 dan
        assertEquals(30, FilmRules.quizXp(6, 8));
        assertEquals(20, FilmRules.quizXp(4, 8));
        assertEquals(0, FilmRules.quizXp(3, 8));
        // 5 savol: 70% → 4 dan (yuqoriga yaxlitlash), 50% → 3 dan
        assertEquals(30, FilmRules.quizXp(4, 5));
        assertEquals(20, FilmRules.quizXp(3, 5));
        assertEquals(0, FilmRules.quizXp(2, 5));
        // Bo'sh pul — XP yo'q
        assertEquals(0, FilmRules.quizXp(0, 0));
    }

    @Test
    void quizXpOnlyOnFirstAttemptAndOnlyAfterFullWatch() {
        assertEquals(30, FilmRules.quizXpFor(true, true, 8, 10));
        // Qayta urinish — mashq, XP yo'q
        assertEquals(0, FilmRules.quizXpFor(false, true, 10, 10));
        // Film to'liq ko'rilmagan — XP yo'q
        assertEquals(0, FilmRules.quizXpFor(true, false, 10, 10));
        // Ko'rish va test XP lari mustaqil: yaxshi ko'rib, yomon yechish — 0
        assertEquals(0, FilmRules.quizXpFor(true, true, 3, 10));
    }
}
