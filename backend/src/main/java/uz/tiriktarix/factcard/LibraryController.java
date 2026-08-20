package uz.tiriktarix.factcard;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.common.Countries;
import uz.tiriktarix.era.EraRepository;
import uz.tiriktarix.hero.HeroRepository;

/** M5. Kutubxona — barcha tasdiqlangan fakt kartochkalari va manbalar. */
@RestController
@RequestMapping("/api/library")
public class LibraryController {

    public record FactCardDto(Long id, Long heroId, Long eraId, String topicUz,
                              String questionUz, String factUz, String detailUz,
                              String source,
                              String topicRu, String questionRu, String factRu,
                              String detailRu) {

        static FactCardDto from(FactCard c) {
            return new FactCardDto(c.getId(), c.getHeroId(), c.getEraId(),
                    c.getTopicUz(), c.getQuestionUz(), c.getFactUz(), c.getDetailUz(),
                    c.getSource(),
                    c.getTopicRu(), c.getQuestionRu(), c.getFactRu(), c.getDetailRu());
        }
    }

    private final FactCardRepository factCardRepository;
    private final HeroRepository heroRepository;
    private final EraRepository eraRepository;

    public LibraryController(FactCardRepository factCardRepository,
                             HeroRepository heroRepository,
                             EraRepository eraRepository) {
        this.factCardRepository = factCardRepository;
        this.heroRepository = heroRepository;
        this.eraRepository = eraRepository;
    }

    @GetMapping("/factcards")
    public List<FactCardDto> factCards(@RequestParam(required = false) String heroSlug,
                                       @RequestParam(required = false) String eraCode,
                                       @RequestParam(required = false) String country) {
        List<FactCard> cards;
        if (heroSlug != null) {
            var hero = heroRepository.findBySlug(heroSlug)
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Qahramon topilmadi"));
            cards = factCardRepository.findByHeroIdAndVerifiedTrue(hero.getId());
        } else if (eraCode != null) {
            var era = eraRepository.findByCode(eraCode)
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Davr topilmadi"));
            cards = factCardRepository.findByEraIdAndVerifiedTrue(era.getId());
        } else {
            cards = factCardRepository.findByCountryAndVerifiedTrue(Countries.normalize(country));
        }
        return cards.stream().map(FactCardDto::from).toList();
    }
}
