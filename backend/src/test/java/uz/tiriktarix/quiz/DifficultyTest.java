package uz.tiriktarix.quiz;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import uz.tiriktarix.quiz.QuizService.Difficulty;

/**
 * Qiyinlik darajasi XP jadvali test hajmiga proporsional bo'lishi kerak:
 * 80% dan — katta band, 50% dan — kichik band. 10 savolda bu eski 8/5
 * chegaralariga aynan mos keladi, 20 savolda — 16/10.
 */
class DifficultyTest {

    @Test
    void tenQuestionBandsMatchLegacyThresholds() {
        assertEquals(25, Difficulty.MEDIUM.xpFor(10, 10));
        assertEquals(25, Difficulty.MEDIUM.xpFor(8, 10));
        assertEquals(15, Difficulty.MEDIUM.xpFor(7, 10));
        assertEquals(15, Difficulty.MEDIUM.xpFor(5, 10));
        assertEquals(0, Difficulty.MEDIUM.xpFor(4, 10));
    }

    @Test
    void twentyQuestionBandsScaleProportionally() {
        assertEquals(35, Difficulty.HARD.xpFor(20, 20));
        assertEquals(35, Difficulty.HARD.xpFor(16, 20));
        assertEquals(20, Difficulty.HARD.xpFor(15, 20));
        assertEquals(20, Difficulty.HARD.xpFor(10, 20));
        assertEquals(0, Difficulty.HARD.xpFor(9, 20));
        // 40% (eski qat'iy «8 ta» chegarasi) endi katta band EMAS
        assertEquals(0, Difficulty.EASY.xpFor(8, 20));
    }

    @Test
    void emptyOrZeroIsNeverRewarded() {
        assertEquals(0, Difficulty.EASY.xpFor(0, 10));
        assertEquals(0, Difficulty.EASY.xpFor(0, 0));
        assertEquals(0, Difficulty.EASY.xpFor(5, 0));
    }
}
