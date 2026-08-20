package uz.tiriktarix.film;

import java.time.OffsetDateTime;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.avatar.AvatarService;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.ProfileService;

/**
 * Filmni ko'rish hisobi va +30 XP.
 *
 * <p>Halollik: mijoz «boshladim» va «tugatdim» deb xabar beradi, server esa
 * ular orasidagi vaqtni film davomiyligi bilan solishtiradi ({@link FilmRules}).
 * Videoni oxiriga «o'tkazib yuborish» shu tekshiruvdan o'tmaydi: pleer ENDED
 * desa ham, o'tgan vaqt yetarli bo'lmasa XP berilmaydi.
 */
@Service
public class FilmWatchService {

    public record WatchStateDto(Long filmId, OffsetDateTime completedAt,
                                boolean watchXpAwarded, boolean quizXpAwarded) {

        static WatchStateDto from(FilmWatch w) {
            return new WatchStateDto(w.getFilmId(), w.getCompletedAt(),
                    w.isWatchXpAwarded(), w.isQuizXpAwarded());
        }
    }

    public record WatchResult(boolean completed, boolean firstTime, int xpEarned,
                              int totalXp, int streakDays,
                              List<AvatarService.UnlockedItem> newlyUnlocked) {
    }

    private final FilmRepository filmRepository;
    private final FilmWatchRepository watchRepository;
    private final ProfileService profileService;
    private final AvatarService avatarService;

    public FilmWatchService(FilmRepository filmRepository, FilmWatchRepository watchRepository,
                            ProfileService profileService, AvatarService avatarService) {
        this.filmRepository = filmRepository;
        this.watchRepository = watchRepository;
        this.profileService = profileService;
        this.avatarService = avatarService;
    }

    private Film publishedFilm(Long filmId) {
        Film film = filmRepository.findById(filmId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Film topilmadi"));
        if (!"PUBLISHED".equals(film.getStatus()) || film.getVideoUrl() == null) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Film hali nashr etilmagan");
        }
        return film;
    }

    /** Ko'rish boshlandi — halollik soati shu yerdan yuradi. */
    @Transactional
    public WatchStateDto start(String clientId, Long filmId) {
        publishedFilm(filmId);
        LearnerProfile profile = profileService.getOrCreate(clientId);
        FilmWatch watch = watchRepository.findByProfileIdAndFilmId(profile.getId(), filmId)
                .orElseGet(() -> new FilmWatch(profile.getId(), filmId));
        // Qayta ko'rishda ham soat yangilanadi, lekin tugatilgan yozuv buzilmaydi.
        watch.setStartedAt(OffsetDateTime.now());
        return WatchStateDto.from(watchRepository.save(watch));
    }

    /** Pleer ENDED dedi — vaqtni tekshiramiz va birinchi halol ko'rishga XP beramiz. */
    @Transactional
    public WatchResult complete(String clientId, Long filmId) {
        Film film = publishedFilm(filmId);
        LearnerProfile profile = profileService.getOrCreate(clientId);
        FilmWatch watch = watchRepository.findByProfileIdAndFilmId(profile.getId(), filmId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.BAD_REQUEST,
                        "Avval ko'rishni boshlash kerak"));

        OffsetDateTime now = OffsetDateTime.now();
        boolean alreadyCompleted = watch.getCompletedAt() != null;
        boolean honest = FilmRules.honestWatch(watch.getStartedAt(), now, film.getDurationMinutes());
        int xp = FilmRules.watchXp(alreadyCompleted, honest);

        if (alreadyCompleted) {
            // Qayta ko'rish — mashq: holat saqlanadi, XP yo'q.
            return new WatchResult(true, false, xp, profile.getXp(), profile.getStreakDays(), List.of());
        }
        if (!honest) {
            return new WatchResult(false, false, xp, profile.getXp(), profile.getStreakDays(), List.of());
        }

        watch.setCompletedAt(now);
        watch.setWatchXpAwarded(true);
        watchRepository.save(watch);

        var statsBefore = avatarService.statsOf(profile);
        LearnerProfile updated = profileService.recordActivity(clientId, xp);
        var unlocked = avatarService.newlyUnlocked(statsBefore, avatarService.statsOf(updated));
        return new WatchResult(true, true, xp, updated.getXp(),
                updated.getStreakDays(), unlocked);
    }

    /** Profil bo'yicha barcha ko'rishlar — Kinozal sahifasi shundan holatni biladi. */
    @Transactional(readOnly = true)
    public List<WatchStateDto> watches(String clientId) {
        LearnerProfile profile = profileService.getOrCreate(clientId);
        return watchRepository.findByProfileId(profile.getId()).stream()
                .map(WatchStateDto::from)
                .toList();
    }

    /** Film testi XP berilganda bayroqni ko'taramiz (QuizService chaqiradi). */
    @Transactional
    public void markQuizXpAwarded(Long profileId, Long filmId) {
        watchRepository.findByProfileIdAndFilmId(profileId, filmId).ifPresent(w -> {
            w.setQuizXpAwarded(true);
            watchRepository.save(w);
        });
    }

    /** Film testi uchun XP olish sharti: film to'liq (halol) ko'rilgan bo'lsin. */
    @Transactional(readOnly = true)
    public boolean hasCompletedWatch(Long profileId, Long filmId) {
        return watchRepository.findByProfileIdAndFilmId(profileId, filmId)
                .map(w -> w.getCompletedAt() != null)
                .orElse(false);
    }
}
