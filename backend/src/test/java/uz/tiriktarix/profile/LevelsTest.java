package uz.tiriktarix.profile;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class LevelsTest {

    /*
      Unvonlar zinapoyasi V107 dan boshlab bazada va uni ishga tushishda
      `RankLadder` yuklaydi. Sinovda bazasi yo'q, shuning uchun zinapoya
      qo'lda beriladi — V107 dagi qiymatlar bilan bir xil. Tekshirilayotgan
      narsa o'zgarmadi: darajaga QAYSI pog'ona mos kelishi.
    */
    @BeforeEach
    void loadLadder() {
        Levels.load(List.of(
                new Levels.Step(1, "Boshlovchi", "Начинающий", "🌱"),
                new Levels.Step(4, "Ilg'or", "Продвинутый", "🚀"),
                new Levels.Step(7, "Bilimdon", "Знаток", "📚"),
                new Levels.Step(10, "Tarixchi", "Историк", "🏺"),
                new Levels.Step(13, "Alloma", "Учёный муж", "🔭"),
                new Levels.Step(16, "Donishmand", "Мудрец", "🦉"),
                // Ruscha nomi yo'q pog'ona — o'zbekchasi qaytishi kerak
                new Levels.Step(20, "Sohibqiron", null, "👑")));
    }

    @Test
    void firstLevelNeeds100Xp() {
        assertEquals(1, Levels.of(0).level());
        assertEquals(1, Levels.of(99).level());
        assertEquals(2, Levels.of(100).level());
    }

    @Test
    void secondLevelNeeds200MoreXp() {
        // 100 + 200 = 300 XP — 3-darajaga o'tish chegarasi
        assertEquals(2, Levels.of(299).level());
        assertEquals(3, Levels.of(300).level());
    }

    @Test
    void eachLevelCosts100More() {
        // 4-daraja: 100+200+300 = 600
        assertEquals(4, Levels.of(600).level());
        // 5-daraja: +400 = 1000
        assertEquals(5, Levels.of(1000).level());
    }

    @Test
    void progressWithinLevel() {
        Levels.LevelInfo info = Levels.of(150);
        assertEquals(2, info.level());
        assertEquals(50, info.xpIntoLevel());
        assertEquals(200, info.xpForNext());
    }

    @Test
    void ranksByLevel() {
        assertEquals("Boshlovchi", Levels.of(0).rankUz());
        assertEquals("Boshlovchi", Levels.rankUz(3));
        assertEquals("Ilg'or", Levels.rankUz(4));
        assertEquals("Bilimdon", Levels.rankUz(7));
        assertEquals("Tarixchi", Levels.rankUz(10));
        assertEquals("Alloma", Levels.rankUz(13));
        assertEquals("Donishmand", Levels.rankUz(16));
        assertEquals("Sohibqiron", Levels.rankUz(20));
    }

    @Test
    void russianRankFallsBackToUzbek() {
        assertEquals("Начинающий", Levels.rankRu(1));
        // Tarjimasi yo'q pog'onada o'zbekcha asl nom qoladi
        assertEquals("Sohibqiron", Levels.rankRu(20));
    }
}
