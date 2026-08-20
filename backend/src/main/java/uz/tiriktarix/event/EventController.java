package uz.tiriktarix.event;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.common.Countries;
import uz.tiriktarix.era.EraRepository;

/** M3. Buyuk voqealar — vaqt lentasi. */
@RestController
@RequestMapping("/api/events")
public class EventController {

    public record EventDto(Long id, Long eraId, String titleUz, Integer yearFrom,
                           Integer yearTo, String locationUz, String descriptionUz,
                           String titleRu, String descriptionRu, String locationRu) {

        static EventDto from(HistoricalEvent e) {
            return new EventDto(e.getId(), e.getEraId(), e.getTitleUz(), e.getYearFrom(),
                    e.getYearTo(), e.getLocationUz(), e.getDescriptionUz(),
                    e.getTitleRu(), e.getDescriptionRu(), e.getLocationRu());
        }
    }

    private final HistoricalEventRepository eventRepository;
    private final EraRepository eraRepository;

    public EventController(HistoricalEventRepository eventRepository, EraRepository eraRepository) {
        this.eventRepository = eventRepository;
        this.eraRepository = eraRepository;
    }

    /*
      Davr yoki ajdod ko'rsatilgan bo'lsa, mamlakat AVTOMAT aniqlanadi: davr
      allaqachon bitta tarixga tegishli. Filtrsiz ro'yxatda esa mamlakatni
      so'rovning o'zi aytadi (V105).
    */
    @GetMapping
    public List<EventDto> list(@RequestParam(required = false) String eraCode,
                               @RequestParam(required = false) String country) {
        List<HistoricalEvent> events;
        if (eraCode != null) {
            var era = eraRepository.findByCode(eraCode)
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Davr topilmadi"));
            events = eventRepository.findByEraIdOrderByYearFrom(era.getId());
        } else {
            events = eventRepository.findByCountryOrderByYearFrom(Countries.normalize(country));
        }
        return events.stream().map(EventDto::from).toList();
    }
}
