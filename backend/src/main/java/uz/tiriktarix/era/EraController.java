package uz.tiriktarix.era;

import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.common.Countries;

@RestController
@RequestMapping("/api/eras")
public class EraController {

    public record EraDto(Long id, String code, String nameUz, Integer ordinal,
                         Integer yearFrom, Integer yearTo, String descriptionUz,
                         String biographyUz, String biographySources,
                         boolean biographyVerified,
                         String nameRu, String descriptionRu) {

        static EraDto from(Era e) {
            return new EraDto(e.getId(), e.getCode(), e.getNameUz(), e.getOrdinal(),
                    e.getYearFrom(), e.getYearTo(), e.getDescriptionUz(),
                    e.getBiographyUz(), e.getBiographySources(),
                    e.isBiographyVerified(),
                    e.getNameRu(), e.getDescriptionRu());
        }
    }

    private final EraRepository eraRepository;

    public EraController(EraRepository eraRepository) {
        this.eraRepository = eraRepository;
    }

    /**
     * Davrlar ro'yxati. {@code country} berilmasa — o'zbek tarixi (V105),
     * shuning uchun eski mijozlar uchun javob o'zgarmaydi.
     */
    @GetMapping
    public List<EraDto> list(@RequestParam(required = false) String country) {
        return eraRepository.findByCountryOrderByOrdinalAsc(Countries.normalize(country))
                .stream().map(EraDto::from).toList();
    }
}
