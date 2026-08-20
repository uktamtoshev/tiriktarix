package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.check;
import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.oneOf;
import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.required;

import java.util.List;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.film.Film;
import uz.tiriktarix.film.FilmRepository;

/**
 * Kinozal. Yozuv ishlab chiqarish bosqichini saqlaydi:
 * PLANNED → SCRIPT → IN_REVIEW → PUBLISHED.
 *
 * <p>PUBLISHED holatida video havolasi bo'lishi shart — bu qoida bazada CHECK
 * bilan qo'riqlangan, panel esa uni oldindan, tushunarli xabar bilan tekshiradi.
 */
@RestController
@RequestMapping("/api/admin/films")
public class AdminFilmController {

    private static final String ENTITY = "FILM";

    public record FilmDto(Long id, Long eraId, Long heroId, String titleUz, String kind,
                          Integer durationMinutes, String synopsisUz, String posterEmoji,
                          String status, String videoUrl, String source, boolean verified,
                          Integer ordinal, String titleRu, String synopsisRu) {

        static FilmDto from(Film f) {
            return new FilmDto(f.getId(), f.getEraId(), f.getHeroId(), f.getTitleUz(), f.getKind(),
                    f.getDurationMinutes(), f.getSynopsisUz(), f.getPosterEmoji(), f.getStatus(),
                    f.getVideoUrl(), f.getSource(), f.isVerified(), f.getOrdinal(),
                    f.getTitleRu(), f.getSynopsisRu());
        }
    }

    public record FilmRequest(Long eraId, Long heroId, String titleUz, String kind,
                              Integer durationMinutes, String synopsisUz, String posterEmoji,
                              String status, String videoUrl, String source, Boolean verified,
                              Integer ordinal, String titleRu, String synopsisRu) {
    }

    private final FilmRepository filmRepository;
    private final AdminAuditService audit;

    public AdminFilmController(FilmRepository filmRepository, AdminAuditService audit) {
        this.filmRepository = filmRepository;
        this.audit = audit;
    }

    @GetMapping
    public List<FilmDto> list() {
        return filmRepository.findAllByOrderByOrdinalAscIdAsc().stream().map(FilmDto::from).toList();
    }

    @PostMapping
    @Transactional
    public FilmDto create(@AuthenticationPrincipal AuthPrincipal principal,
                          @RequestBody FilmRequest request) {
        Film film = new Film();
        apply(film, request);
        Film saved = filmRepository.save(film);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Фильм добавлен: " + saved.getTitleUz());
        return FilmDto.from(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public FilmDto update(@AuthenticationPrincipal AuthPrincipal principal,
                          @PathVariable Long id, @RequestBody FilmRequest request) {
        Film film = filmRepository.findById(id).orElseThrow(() -> notFound("Фильм не найден"));
        String previousStatus = film.getStatus();
        apply(film, request);
        Film saved = filmRepository.save(film);
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                previousStatus != null && !previousStatus.equals(saved.getStatus())
                        ? "Статус фильма: " + previousStatus + " → " + saved.getStatus() + " (" + saved.getTitleUz() + ")"
                        : "Фильм изменён: " + saved.getTitleUz());
        return FilmDto.from(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        Film film = filmRepository.findById(id).orElseThrow(() -> notFound("Фильм не найден"));
        filmRepository.delete(film);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id, "Фильм удалён: " + film.getTitleUz());
    }

    private void apply(Film film, FilmRequest request) {
        String status = oneOf(request.status(), "Статус", "PLANNED", "SCRIPT", "IN_REVIEW", "PUBLISHED");
        String videoUrl = optional(request.videoUrl());
        check(!"PUBLISHED".equals(status) || videoUrl != null,
                "Для опубликованного фильма нужна ссылка на видео");

        film.setEraId(request.eraId());
        film.setHeroId(request.heroId());
        film.setTitleUz(required(request.titleUz(), "Заголовок"));
        film.setKind(oneOf(request.kind(), "Тип", "SHORT", "DOC", "FEATURE"));
        film.setDurationMinutes(request.durationMinutes());
        film.setSynopsisUz(required(request.synopsisUz(), "Краткое содержание"));
        film.setPosterEmoji(optional(request.posterEmoji()));
        film.setStatus(status);
        film.setVideoUrl(videoUrl);
        film.setSource(required(request.source(), "Источник"));
        film.setVerified(Boolean.TRUE.equals(request.verified()));
        film.setOrdinal(request.ordinal() == null ? 0 : request.ordinal());
        // Ruscha matn ixtiyoriy: bo'sh bo'lsa interfeys o'zbekcha aslini beradi.
        film.setTitleRu(optional(request.titleRu()));
        film.setSynopsisRu(optional(request.synopsisRu()));
    }
}
