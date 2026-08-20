package uz.tiriktarix.map;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.era.Era;
import uz.tiriktarix.era.EraRepository;

/** M3. Zamon xaritalari — davr bo'yicha xarita qatlamlari. */
@RestController
@RequestMapping("/api/maps")
public class MapController {

    /** Davr tugamagan bo'lsa (year_to = NULL), yuqori chegara sifatida shu yil olinadi. */
    private static final int OPEN_ENDED_YEAR = 2100;

    public record MapFeatureDto(Long id, String kind, String nameUz, String geometry,
                                String descriptionUz, String source, boolean verified,
                                String nameRu, String descriptionRu) {

        static MapFeatureDto from(MapFeature f) {
            return new MapFeatureDto(f.getId(), f.getKind(), f.getNameUz(), f.getGeometry(),
                    f.getDescriptionUz(), f.getSource(), f.isVerified(),
                    f.getNameRu(), f.getDescriptionRu());
        }
    }

    private final MapFeatureRepository mapFeatureRepository;
    private final EraRepository eraRepository;

    public MapController(MapFeatureRepository mapFeatureRepository, EraRepository eraRepository) {
        this.mapFeatureRepository = mapFeatureRepository;
        this.eraRepository = eraRepository;
    }

    @GetMapping
    public List<MapFeatureDto> list(@RequestParam String eraCode) {
        Era era = eraRepository.findByCode(eraCode)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Davr topilmadi"));
        int yearFrom = era.getYearFrom() != null ? era.getYearFrom() : Integer.MIN_VALUE / 2;
        int yearTo = era.getYearTo() != null ? era.getYearTo() : OPEN_ENDED_YEAR;
        return mapFeatureRepository.findForEra(era.getId(), era.getCountry(), yearFrom, yearTo).stream()
                .map(MapFeatureDto::from)
                .toList();
    }
}
