package uz.tiriktarix.leaderboard;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.lang.reflect.Field;
import java.time.OffsetDateTime;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import uz.tiriktarix.leaderboard.LeaderboardService.PageDto;
import uz.tiriktarix.leaderboard.LeaderboardService.Period;
import uz.tiriktarix.leaderboard.LeaderboardService.RowDto;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.LearnerProfileRepository;
import uz.tiriktarix.quiz.QuizResultRepository;

/**
 * Reyting jadvali mantig'i. Baza chaqiruvlari o'rniga mock — bu yerda
 * tekshiriladigan narsa o'rinlarni sanash va joriy o'yinchini topish.
 */
class LeaderboardServiceTest {

    private final LearnerProfileRepository profiles = mock(LearnerProfileRepository.class);
    private final QuizResultRepository results = mock(QuizResultRepository.class);
    private final LeaderboardService service = new LeaderboardService(profiles, results);

    /** `LearnerProfile` da setter yo'q — test uchun maydonlar to'g'ridan-to'g'ri to'ldiriladi. */
    private static LearnerProfile profile(long id, String clientId, String name, int xp, int streak) {
        try {
            LearnerProfile p = new LearnerProfile(clientId);
            set(p, "id", id);
            set(p, "xp", xp);
            set(p, "streakDays", streak);
            p.setDisplayName(name);
            return p;
        } catch (ReflectiveOperationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static void set(Object target, String field, Object value) throws ReflectiveOperationException {
        Field f = LearnerProfile.class.getDeclaredField(field);
        f.setAccessible(true);
        f.set(target, value);
    }

    @Test
    void allTimeRanksByXpDescending() {
        List<LearnerProfile> page = List.of(
                profile(1, "c-1", "Ali", 900, 5),
                profile(2, "c-2", "Vali", 500, 2),
                profile(3, "c-3", "Sardor", 100, 1));
        when(profiles.ranking(any(PageRequest.class)))
                .thenReturn(new PageImpl<>(page, PageRequest.of(0, 50), 3));

        PageDto dto = service.page(Period.ALL, 0, 50, "c-2");

        assertEquals(3, dto.rows().size());
        assertEquals(List.of(1, 2, 3), dto.rows().stream().map(RowDto::rank).toList());
        assertEquals("Ali", dto.rows().get(0).displayName());
        assertEquals(900, dto.rows().get(0).xp());
        assertFalse(dto.hasMore());
    }

    @Test
    void currentPlayerIsMarkedInsideThePage() {
        when(profiles.ranking(any(PageRequest.class))).thenReturn(new PageImpl<>(
                List.of(profile(1, "c-1", "Ali", 900, 5), profile(2, "c-2", "Vali", 500, 2)),
                PageRequest.of(0, 50), 2));

        PageDto dto = service.page(Period.ALL, 0, 50, "c-2");

        assertTrue(dto.rows().get(1).me());
        assertFalse(dto.rows().get(0).me());
        // Sahifada bor ekan — pastda mahkamlanadigan alohida qator kerak emas
        assertNull(dto.me());
    }

    @Test
    void currentPlayerOutsideThePageIsReturnedSeparately() {
        when(profiles.ranking(any(PageRequest.class))).thenReturn(new PageImpl<>(
                List.of(profile(1, "c-1", "Ali", 900, 5)), PageRequest.of(0, 1), 40));
        LearnerProfile mine = profile(7, "c-7", "Bekzod", 120, 3);
        when(profiles.findByClientId("c-7")).thenReturn(Optional.of(mine));
        when(profiles.aheadOf(eq(120), eq(7L))).thenReturn(24L);

        PageDto dto = service.page(Period.ALL, 0, 1, "c-7");

        assertNotNull(dto.me());
        assertEquals(25, dto.me().rank(), "24 kishi oldinda bo'lsa — o'rin 25");
        assertTrue(dto.me().me());
        assertTrue(dto.hasMore());
    }

    @Test
    void anonymousProfileGetsStableGuestLabel() {
        when(profiles.ranking(any(PageRequest.class))).thenReturn(new PageImpl<>(
                List.of(profile(1, "aaaa-bbbb-cc4f2a", null, 300, 1)), PageRequest.of(0, 50), 1));

        PageDto dto = service.page(Period.ALL, 0, 50, null);

        assertEquals("Mehmon-4F2A", dto.rows().get(0).displayName());
    }

    @Test
    void weekPeriodUsesXpEarnedInsideTheWindow() {
        // Davr kesimida XP profildagi jami emas, oraliqda yig'ilgani bo'lishi kerak
        when(results.xpEarnedSince(any(OffsetDateTime.class))).thenReturn(List.of(
                new Object[] {2L, 80},
                new Object[] {1L, 30}));
        when(profiles.findAllById(any())).thenReturn(List.of(
                profile(1, "c-1", "Ali", 900, 5),
                profile(2, "c-2", "Vali", 500, 2)));

        PageDto dto = service.page(Period.WEEK, 0, 50, "c-1");

        assertEquals(2, dto.rows().size());
        assertEquals("Vali", dto.rows().get(0).displayName());
        assertEquals(80, dto.rows().get(0).xp(), "haftalik XP — 80, jami 500 emas");
        assertEquals(30, dto.rows().get(1).xp());
        assertTrue(dto.rows().get(1).me());
    }

    @Test
    void emptyWeekReturnsEmptyBoard() {
        when(results.xpEarnedSince(any(OffsetDateTime.class))).thenReturn(List.of());

        PageDto dto = service.page(Period.WEEK, 0, 50, "c-1");

        assertTrue(dto.rows().isEmpty());
        assertEquals(0, dto.total());
        assertNull(dto.me());
    }

    @Test
    void pageSizeIsClamped() {
        when(profiles.ranking(any(PageRequest.class))).thenReturn(new PageImpl<>(List.of()));

        service.page(Period.ALL, -5, 5_000, null);

        // Manfiy sahifa 0 ga, haddan tashqari hajm 100 ga qisqaradi
        org.mockito.ArgumentCaptor<PageRequest> captor =
                org.mockito.ArgumentCaptor.forClass(PageRequest.class);
        org.mockito.Mockito.verify(profiles).ranking(captor.capture());
        assertEquals(0, captor.getValue().getPageNumber());
        assertEquals(100, captor.getValue().getPageSize());
    }
}
