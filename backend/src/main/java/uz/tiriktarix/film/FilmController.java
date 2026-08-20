package uz.tiriktarix.film;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.common.Countries;
import uz.tiriktarix.era.EraRepository;
import uz.tiriktarix.film.FilmWatchService.WatchResult;
import uz.tiriktarix.film.FilmWatchService.WatchStateDto;
import uz.tiriktarix.hero.HeroRepository;

/** M2. Kinozal — davr yoki qahramon bo'yicha filmlar katalogi. */
@RestController
@RequestMapping("/api/films")
public class FilmController {

    public record FilmDto(Long id, Long eraId, Long heroId, String titleUz, String kind,
                          Integer durationMinutes, String synopsisUz, String posterEmoji,
                          String status, String videoUrl, String source, boolean verified,
                          String titleRu, String synopsisRu) {

        static FilmDto from(Film f) {
            return new FilmDto(f.getId(), f.getEraId(), f.getHeroId(), f.getTitleUz(), f.getKind(),
                    f.getDurationMinutes(), f.getSynopsisUz(), f.getPosterEmoji(), f.getStatus(),
                    f.getVideoUrl(), f.getSource(), f.isVerified(),
                    f.getTitleRu(), f.getSynopsisRu());
        }
    }

    /** Ko'rish so'rovi — anonim mijoz identifikatoridan boshqa hech narsa yo'q. */
    public record WatchRequest(@NotBlank String clientId) {
    }

    private final FilmRepository filmRepository;
    private final EraRepository eraRepository;
    private final HeroRepository heroRepository;
    private final FilmWatchService watchService;

    public FilmController(FilmRepository filmRepository, EraRepository eraRepository,
                          HeroRepository heroRepository, FilmWatchService watchService) {
        this.filmRepository = filmRepository;
        this.eraRepository = eraRepository;
        this.heroRepository = heroRepository;
        this.watchService = watchService;
    }

    @GetMapping
    public List<FilmDto> list(@RequestParam(required = false) String eraCode,
                              @RequestParam(required = false) String heroSlug,
                              @RequestParam(required = false) String country) {
        List<Film> films;
        if (heroSlug != null) {
            var hero = heroRepository.findBySlug(heroSlug)
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Qahramon topilmadi"));
            films = filmRepository.findByHeroIdOrderByOrdinalAscIdAsc(hero.getId());
        } else if (eraCode != null) {
            var era = eraRepository.findByCode(eraCode)
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Davr topilmadi"));
            films = filmRepository.findByEraIdOrderByOrdinalAscIdAsc(era.getId());
        } else {
            films = filmRepository.findByCountryOrderByOrdinalAscIdAsc(Countries.normalize(country));
        }
        return films.stream().map(FilmDto::from).toList();
    }

    // ===== Ko'rish hisobi (V50): +30 XP birinchi halol to'liq ko'rish uchun =====

    @PostMapping("/{id}/watch/start")
    public WatchStateDto watchStart(@PathVariable Long id, @Valid @RequestBody WatchRequest request) {
        return watchService.start(request.clientId(), id);
    }

    @PostMapping("/{id}/watch/complete")
    public WatchResult watchComplete(@PathVariable Long id, @Valid @RequestBody WatchRequest request) {
        return watchService.complete(request.clientId(), id);
    }

    /** Mijozning barcha ko'rishlari — sahifa qaysi filmga test taklif qilishni biladi. */
    @GetMapping("/watches")
    public List<WatchStateDto> watches(@RequestParam String clientId) {
        return watchService.watches(clientId);
    }
}
