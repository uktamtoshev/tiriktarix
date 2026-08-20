package uz.tiriktarix.profile;

import java.util.List;

/**
 * Daraja tizimi: N-darajani o'tish uchun N * 100 XP kerak
 * (1-daraja — 100 XP, 2-daraja — 200 XP, 3-daraja — 300 XP va hokazo).
 * L-darajaga yetish uchun jami XP = 100 * (1 + 2 + … + (L-1)) = 50 * L * (L-1).
 *
 * <p>FORMULA KODDA, UNVONLAR BAZADA (V107). Unvon nomlari va emojilari ilgari
 * shu yerda yozilgan edi va {@code profil/page.tsx} da takrorlangan edi. Endi
 * ular {@code ranks} jadvalida, va {@link RankLadder} ularni ishga tushishda
 * bir marta shu yerga yuklaydi.
 *
 * <p>NEGA STATIK QOLDI. {@code Levels.of()} yettita joydan chaqiriladi, shu
 * jumladan DTO larning statik fabrikalaridan ({@code ProfileDto.from}).
 * Ularning hammasiga bog'liqlik uzatish katta va xavfli o'zgarish bo'lardi,
 * ma'lumot esa yiliga bir marta o'zgaradi — shuning uchun zinapoya bir marta
 * yuklanadi va xotirada turadi.
 */
public final class Levels {

    public record LevelInfo(int level, String rankUz, String rankEmoji,
                            int xpIntoLevel, int xpForNext, String rankRu) {
    }

    /** Bir pog'ona: shu darajadan boshlab shu unvon. */
    record Step(int minLevel, String nameUz, String nameRu, String emoji) {
    }

    /**
     * Ishga tushishda {@link RankLadder} to'ldiradi. Bo'sh bo'lsa — dastur
     * ko'tarilmaydi, chunki unvonsiz profil bolaga buzuq sahifa ko'rsatadi.
     */
    private static volatile List<Step> ladder = List.of();

    private Levels() {
    }

    static void load(List<Step> steps) {
        ladder = steps;
    }

    public static LevelInfo of(int xp) {
        int level = 1;
        while (cumulativeXpToReach(level + 1) <= xp) {
            level++;
        }
        int xpIntoLevel = xp - cumulativeXpToReach(level);
        int xpForNext = level * 100;
        return new LevelInfo(level, rankUz(level), rankEmoji(level), xpIntoLevel, xpForNext,
                rankRu(level));
    }

    /** L-darajaga yetish uchun kerak bo'lgan jami XP. */
    public static int cumulativeXpToReach(int level) {
        return 50 * level * (level - 1);
    }

    public static String rankUz(int level) {
        Step s = stepFor(level);
        return s == null ? "" : s.nameUz();
    }

    /** Ruscha nom. Bo'sh bo'lsa — o'zbekcha asli. */
    public static String rankRu(int level) {
        Step s = stepFor(level);
        if (s == null) return "";
        return s.nameRu() == null || s.nameRu().isBlank() ? s.nameUz() : s.nameRu();
    }

    public static String rankEmoji(int level) {
        Step s = stepFor(level);
        return s == null ? "" : s.emoji();
    }

    /** Darajaga mos eng yuqori pog'ona. Zinapoya bo'sh bo'lsa — null. */
    private static Step stepFor(int level) {
        Step found = null;
        for (Step s : ladder) {
            if (s.minLevel() <= level) {
                found = s;
            } else {
                break;
            }
        }
        return found;
    }
}
