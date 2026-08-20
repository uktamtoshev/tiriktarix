package uz.tiriktarix.upload;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.HexFormat;
import org.junit.jupiter.api.Test;

/**
 * Yuklangan faylning TURI.
 *
 * <p>Eng muhim xossa: tur faqat fayl MAZMUNI bo'yicha aniqlanadi. Mijoz
 * yuboradigan {@code Content-Type} ham, kengaytma ham soxta bo'lishi mumkin —
 * shuning uchun ularga umuman qaralmaydi. Aks holda panel orqali rasm niqobida
 * ixtiyoriy fayl yuklab qo'yish mumkin bo'lardi.
 */
class PortraitStorageTest {

    private static byte[] hex(String s) {
        return HexFormat.of().parseHex(s);
    }

    @Test
    void detectsJpeg() {
        assertEquals("image/jpeg", PortraitStorage.detectType(hex("ffd8ffe000104a464946")).orElseThrow());
    }

    @Test
    void detectsPng() {
        assertEquals("image/png",
                PortraitStorage.detectType(hex("89504e470d0a1a0a0000000d49484452")).orElseThrow());
    }

    @Test
    void detectsWebp() {
        // RIFF + 4 bayt hajm + «WEBP»
        assertEquals("image/webp",
                PortraitStorage.detectType(hex("52494646aabbccdd57454250")).orElseThrow());
    }

    /** RIFF konteyneri WEBP bo'lmasa (masalan WAV) — rad etiladi. */
    @Test
    void rejectsRiffThatIsNotWebp() {
        assertTrue(PortraitStorage.detectType(hex("52494646aabbccdd57415645")).isEmpty());
    }

    @Test
    void rejectsExecutableAndText() {
        // ELF
        assertTrue(PortraitStorage.detectType(hex("7f454c46020101")).isEmpty());
        // oddiy matn («<?php»)
        assertTrue(PortraitStorage.detectType("<?php echo 1;".getBytes()).isEmpty());
    }

    @Test
    void rejectsEmptyAndShortInput() {
        assertTrue(PortraitStorage.detectType(new byte[0]).isEmpty());
        assertTrue(PortraitStorage.detectType(hex("ffd8")).isEmpty(), "yarim imzo yetarli emas");
        // RIFF boshlandi, lekin «WEBP» ni tekshirishga bayt yetmaydi
        assertTrue(PortraitStorage.detectType(hex("52494646aabb")).isEmpty());
    }

    /** Nom faqat xesh + ruxsat etilgan kengaytma bo'lishi mumkin. */
    @Test
    void nameGuardRejectsTraversal() {
        String hash = "a".repeat(64);
        assertTrue(hash.matches("[0-9a-f]{64}"));
        assertFalse("../../etc/passwd".matches("[0-9a-f]{64}\\.(jpg|png|webp)"));
        assertFalse((hash + ".php").matches("[0-9a-f]{64}\\.(jpg|png|webp)"));
        assertTrue((hash + ".png").matches("[0-9a-f]{64}\\.(jpg|png|webp)"));
    }
}
