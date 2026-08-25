package uz.tiriktarix.hero;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.common.Countries;

@RestController
@RequestMapping("/api/heroes")
public class HeroController {

    public record HeroDto(Long id, String slug, String nameUz, String titleUz,
                          Integer birthYear, Integer deathYear, Long eraId, String bioUz,
                          String greetingUz, String portraitEmoji,
                          String portraitUrl, String portraitKind,
                          String portraitCaptionUz, String portraitSource,
                          String summaryUz, String biographyUz, String biographySources,
                          boolean biographyVerified,
                          String portraitFullUrl, String accent,
                          String nameRu, String titleRu, String bioRu,
                          String portraitCaptionRu,
                          String fameTier, int fameScore) {

        static HeroDto from(Hero h) {
            return new HeroDto(h.getId(), h.getSlug(), h.getNameUz(), h.getTitleUz(),
                    h.getBirthYear(), h.getDeathYear(), h.getEraId(), h.getBioUz(),
                    h.getGreetingUz(), h.getPortraitEmoji(),
                    h.getPortraitUrl(), h.getPortraitKind(),
                    h.getPortraitCaptionUz(), h.getPortraitSource(),
                    h.getSummaryUz(), h.getBiographyUz(), h.getBiographySources(),
                    h.isBiographyVerified(),
                    h.getPortraitFullUrl(), h.getAccent(),
                    h.getNameRu(), h.getTitleRu(), h.getBioRu(),
                    h.getPortraitCaptionRu(),
                    h.getFameTier(), h.getFameScore());
        }
    }

    private final HeroRepository heroRepository;

    public HeroController(HeroRepository heroRepository) {
        this.heroRepository = heroRepository;
    }

    /** Ajdodlar ro'yxati buyuklik tartibida. {@code country} berilmasa — o'zbek tarixi (V105). */
    @GetMapping
    public List<HeroDto> list(@RequestParam(required = false) String country) {
        return heroRepository.findByCountryOrderByFame(Countries.normalize(country))
                .stream().map(HeroDto::from).toList();
    }

    @GetMapping("/{slug}")
    public HeroDto get(@PathVariable String slug) {
        return heroRepository.findBySlug(slug)
                .map(HeroDto::from)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Qahramon topilmadi"));
    }
}
