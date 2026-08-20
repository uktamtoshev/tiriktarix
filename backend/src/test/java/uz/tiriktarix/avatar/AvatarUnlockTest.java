package uz.tiriktarix.avatar;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;
import org.junit.jupiter.api.Test;
import uz.tiriktarix.avatar.AvatarUnlockService.Labels;
import uz.tiriktarix.avatar.AvatarUnlockService.QuestStats;

/**
 * Jihoz ochilishi chegaralari. Bu mantiq bazada saqlanmaydi, shuning uchun uni
 * alohida tekshirish muhim: bir XP yoki bir ball kam bo'lsa jihoz yopiq qolishi
 * kerak. Har bir shart turi uchun alohida chegara testi bor.
 */
class AvatarUnlockTest {

    // ============================ Yordamchilar ============================

    private static AvatarItem item(String slot, String unlockType, int unlockValue) {
        return item(slot, unlockType, unlockValue, null);
    }

    private static AvatarItem item(String slot, String unlockType, int unlockValue, String ref) {
        AvatarItem i = new AvatarItem();
        set(i, "slot", slot);
        set(i, "unlockType", unlockType);
        set(i, "unlockValue", unlockValue);
        set(i, "unlockRef", ref);
        return i;
    }

    private static void set(Object target, String field, Object value) {
        try {
            Field f = AvatarItem.class.getDeclaredField(field);
            f.setAccessible(true);
            f.set(target, value);
        } catch (ReflectiveOperationException e) {
            throw new IllegalStateException(e);
        }
    }

    /** Faqat XP va seriyasi bo'lgan surat. */
    private static QuestStats profile(int xp, int streakDays) {
        return new QuestStats(xp, streakDays, 0, 0, 0, Map.of(), Map.of());
    }

    private static QuestStats quests(int perfect, int riddleDays, int heroesTalked,
                                     Map<String, Integer> eras, Map<String, Integer> heroes) {
        return new QuestStats(0, 0, perfect, riddleDays, heroesTalked, eras, heroes);
    }

    // ===================== Eski shartlar (1.0) o'zgarmadi =====================

    @Test
    void totalXpBoundary() {
        AvatarItem sword = item("WEAPON", "TOTAL_XP", 500);
        assertFalse(AvatarUnlockService.isUnlocked(sword, profile(499, 0)), "499 XP da po'lat qilich yopiq");
        assertTrue(AvatarUnlockService.isUnlocked(sword, profile(500, 0)), "500 XP da po'lat qilich ochiq");
    }

    @Test
    void levelBoundary() {
        // 2-darajaga 100 XP kerak (50·2·1)
        AvatarItem armour = item("BODY", "LEVEL", 2);
        assertFalse(AvatarUnlockService.isUnlocked(armour, profile(99, 0)), "99 XP — hali 1-daraja");
        assertTrue(AvatarUnlockService.isUnlocked(armour, profile(100, 0)), "100 XP — 2-daraja, charm sovut ochiq");
    }

    @Test
    void streakBoundary() {
        AvatarItem talisman = item("ACCESSORY", "STREAK", 7);
        assertFalse(AvatarUnlockService.isUnlocked(talisman, profile(100000, 6)));
        assertTrue(AvatarUnlockService.isUnlocked(talisman, profile(0, 7)), "seriya XP dan mustaqil");
    }

    @Test
    void topItemNeedsLevelTwenty() {
        AvatarItem best = item("WEAPON", "LEVEL", 20);
        // 20-darajaga 50·20·19 = 19000 XP kerak
        assertFalse(AvatarUnlockService.isUnlocked(best, profile(18999, 0)));
        assertTrue(AvatarUnlockService.isUnlocked(best, profile(19000, 0)));
    }

    // ========================= Kvest shartlari (2.0) =========================

    @Test
    void quizPerfectBoundary() {
        // Kumush sovut — 5 ta xatosiz test
        AvatarItem armour = item("BODY", "QUIZ_PERFECT", 5);
        assertFalse(AvatarUnlockService.isUnlocked(armour, quests(4, 0, 0, Map.of(), Map.of())),
                "4 ta xatosiz test yetarli emas");
        assertTrue(AvatarUnlockService.isUnlocked(armour, quests(5, 0, 0, Map.of(), Map.of())));
    }

    @Test
    void eraTestScoreBoundaryForAnyEra() {
        // Mis sovut — istalgan davr testida 8 ball
        AvatarItem armour = item("BODY", "ERA_TEST_SCORE", 8);
        QuestStats seven = quests(0, 0, 0, Map.of("temuriylar", 7, "arab", 6), Map.of());
        QuestStats eight = quests(0, 0, 0, Map.of("temuriylar", 8, "arab", 6), Map.of());
        assertFalse(AvatarUnlockService.isUnlocked(armour, seven), "7/10 mis sovutni ochmaydi");
        assertTrue(AvatarUnlockService.isUnlocked(armour, eight), "8/10 mis sovutni ochadi");
    }

    @Test
    void eraTestScoreRespectsRef() {
        // Oltin sovut — aynan Temuriylar davri testida 9 ball
        AvatarItem armour = item("BODY", "ERA_TEST_SCORE", 9, "temuriylar");
        assertFalse(AvatarUnlockService.isUnlocked(armour,
                        quests(0, 0, 0, Map.of("arab", 10), Map.of())),
                "boshqa davrdagi 10 ball oltin sovutni ochmaydi");
        assertFalse(AvatarUnlockService.isUnlocked(armour,
                quests(0, 0, 0, Map.of("temuriylar", 8), Map.of())));
        assertTrue(AvatarUnlockService.isUnlocked(armour,
                quests(0, 0, 0, Map.of("temuriylar", 9), Map.of())));
    }

    @Test
    void heroQuizScoreBoundary() {
        // Sarkarda nayzasi — Amir Temur kvizida 8 ball
        AvatarItem spear = item("WEAPON", "HERO_QUIZ_SCORE", 8, "amir-temur");
        assertFalse(AvatarUnlockService.isUnlocked(spear,
                        quests(0, 0, 0, Map.of(), Map.of("mirzo-ulugbek", 10))),
                "boshqa qahramon kvizi nayzani ochmaydi");
        assertFalse(AvatarUnlockService.isUnlocked(spear,
                quests(0, 0, 0, Map.of(), Map.of("amir-temur", 7))));
        assertTrue(AvatarUnlockService.isUnlocked(spear,
                quests(0, 0, 0, Map.of(), Map.of("amir-temur", 8))));
    }

    @Test
    void riddleCountBoundary() {
        AvatarItem axe = item("WEAPON", "RIDDLE_COUNT", 10);
        assertFalse(AvatarUnlockService.isUnlocked(axe, quests(0, 9, 0, Map.of(), Map.of())));
        assertTrue(AvatarUnlockService.isUnlocked(axe, quests(0, 10, 0, Map.of(), Map.of())));
    }

    @Test
    void talkHeroesBoundary() {
        AvatarItem shield = item("SHIELD", "TALK_HEROES", 3);
        assertFalse(AvatarUnlockService.isUnlocked(shield, quests(0, 0, 2, Map.of(), Map.of())));
        assertTrue(AvatarUnlockService.isUnlocked(shield, quests(0, 0, 3, Map.of(), Map.of())));
    }

    // ============================ Progress-bar ============================

    @Test
    void progressShowsBestScoreSoFar() {
        AvatarItem armour = item("BODY", "ERA_TEST_SCORE", 9, "temuriylar");
        int[] p = AvatarUnlockService.progressOf(armour,
                quests(0, 0, 0, Map.of("temuriylar", 7), Map.of()));
        assertEquals(7, p[0], "eng yaxshi natija ko'rsatiladi");
        assertEquals(9, p[1]);
    }

    @Test
    void levelProgressIsShownInXp() {
        AvatarItem helmet = item("HEAD", "LEVEL", 12);
        int[] p = AvatarUnlockService.progressOf(helmet, profile(3000, 0));
        assertEquals(3000, p[0]);
        assertEquals(6600, p[1], "12-darajaga 50·12·11 = 6600 XP kerak");
    }

    // ========================== Topshiriq matni ==========================

    @Test
    void requirementIsWrittenInWords() {
        Labels labels = new Labels(Map.of("temuriylar", "Temuriylar davri"),
                Map.of("amir-temur", "Amir Temur"));

        assertEquals("Temuriylar davri testini 9+ ball bilan yech",
                AvatarUnlockService.requirementUz(item("BODY", "ERA_TEST_SCORE", 9, "temuriylar"), labels));
        assertEquals("Istalgan davr testini 8+ ball bilan yech",
                AvatarUnlockService.requirementUz(item("BODY", "ERA_TEST_SCORE", 8), labels));
        assertEquals("Amir Temur kvizini 8+ ball bilan yech",
                AvatarUnlockService.requirementUz(item("WEAPON", "HERO_QUIZ_SCORE", 8, "amir-temur"), labels));
        assertEquals("3 ta testni xatosiz yakunla",
                AvatarUnlockService.requirementUz(item("HEAD", "QUIZ_PERFECT", 3), labels));
        assertEquals("10 ta kunlik topishmoqni yech",
                AvatarUnlockService.requirementUz(item("WEAPON", "RIDDLE_COUNT", 10), labels));
        assertEquals("3 ta turli qahramon bilan gaplash",
                AvatarUnlockService.requirementUz(item("SHIELD", "TALK_HEROES", 3), labels));
        assertEquals("14 kun ketma-ket shug'ullan",
                AvatarUnlockService.requirementUz(item("SHIELD", "STREAK", 14), labels));
        assertEquals("12-darajaga yet",
                AvatarUnlockService.requirementUz(item("HEAD", "LEVEL", 12), labels));
        assertEquals("500 XP to'pla",
                AvatarUnlockService.requirementUz(item("WEAPON", "TOTAL_XP", 500), labels));
    }

    // ============================== Tiplar ==============================

    /*
      Tiplar ro'yxati V107 dan boshlab bazada, shuning uchun sinov ombor
      o'rniga soxta ro'yxat beradi. Tekshirilayotgan narsa o'zgarmadi: bu
      QOIDA — yigit tipi qizga tushmasligi kerak.
    */
    private static ArchetypeService archetypeServiceWith(Archetype... rows) {
        ArchetypeRepository repo = mock(ArchetypeRepository.class);
        when(repo.findAllByOrderByOrdinalAsc()).thenReturn(List.of(rows));
        return new ArchetypeService(repo);
    }

    @Test
    void archetypeMustMatchGender() {
        ArchetypeService archetypes = archetypeServiceWith(
                new Archetype("jangchi", "MALE", "Jangchi", null, "…", null, 0),
                new Archetype("oddiy-yigit", "MALE", "Oddiy yigit", null, "…", null, 1),
                new Archetype("olima", "FEMALE", "Olima", null, "…", null, 2),
                new Archetype("oddiy-qiz", "FEMALE", "Oddiy qiz", null, "…", null, 3));

        assertTrue(archetypes.matchesGender("jangchi", "MALE"));
        assertFalse(archetypes.matchesGender("jangchi", "FEMALE"), "yigit tipi qizga tushmaydi");
        assertTrue(archetypes.matchesGender("olima", "FEMALE"));
        assertFalse(archetypes.isValid("noma'lum-tip"));
        assertEquals("oddiy-qiz", archetypes.defaultFor("FEMALE"));
        assertEquals("oddiy-yigit", archetypes.defaultFor("MALE"));
        assertEquals(4, archetypes.all().size());
    }

    /** Standart tip o'chirilgan bo'lsa — shu jinsning birinchi tipi olinadi. */
    @Test
    void defaultArchetypeFallsBackWhenPreferredMissing() {
        ArchetypeService archetypes = archetypeServiceWith(
                new Archetype("jangchi", "MALE", "Jangchi", null, "…", null, 0),
                new Archetype("malika", "FEMALE", "Malika", null, "…", null, 1));

        assertEquals("jangchi", archetypes.defaultFor("MALE"));
        assertEquals("malika", archetypes.defaultFor("FEMALE"));
    }
}
