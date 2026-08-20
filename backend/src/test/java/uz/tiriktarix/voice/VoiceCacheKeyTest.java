package uz.tiriktarix.voice;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

import org.junit.jupiter.api.Test;

/**
 * Kesh kaliti (V150).
 *
 * <p>Eng muhim xossa — OVOZ ALMASHSA KALIT HAM ALMASHADI. Aks holda metodist
 * paneldan boshqa ovoz tanlaganda, bolalar eski tovushni eshitishda davom
 * etardi va buning sababini topish qiyin bo'lardi.
 */
class VoiceCacheKeyTest {

    @Test
    void sameVoiceAndTextGiveSameKey() {
        assertEquals(VoiceCacheService.keyOf("alisher", "Assalomu alaykum"),
                VoiceCacheService.keyOf("alisher", "Assalomu alaykum"));
    }

    @Test
    void differentVoiceGivesDifferentKey() {
        assertNotEquals(VoiceCacheService.keyOf("alisher", "Assalomu alaykum"),
                VoiceCacheService.keyOf("dilnoza", "Assalomu alaykum"));
    }

    @Test
    void differentTextGivesDifferentKey() {
        assertNotEquals(VoiceCacheService.keyOf("alisher", "Assalomu alaykum"),
                VoiceCacheService.keyOf("alisher", "Assalomu alaykum!"));
    }

    /** Ovoz sozlanmagan bo'lsa ham kalit hisoblanishi kerak. */
    @Test
    void nullVoiceIsAllowed() {
        assertEquals(VoiceCacheService.keyOf(null, "matn"), VoiceCacheService.keyOf(null, "matn"));
        assertNotEquals(VoiceCacheService.keyOf(null, "matn"),
                VoiceCacheService.keyOf("ovoz", "matn"));
    }

    /**
     * Ovoz va matn chegarasi aralashmasligi kerak: («ab», «c») va («a», «bc»)
     * bir xil kalit bermasin.
     */
    @Test
    void voiceAndTextBoundaryIsNotAmbiguous() {
        assertNotEquals(VoiceCacheService.keyOf("ab", "c"), VoiceCacheService.keyOf("a", "bc"));
    }
}
