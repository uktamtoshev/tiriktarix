package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.required;
import static uz.tiriktarix.admin.AdminSupport.requiredId;
import static uz.tiriktarix.admin.AdminSupport.requiredInt;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.era.EraRepository;
import uz.tiriktarix.event.HistoricalEvent;
import uz.tiriktarix.event.HistoricalEventRepository;

/** Voqealar lentasi. Milodgacha bo'lgan yillar manfiy son bilan kiritiladi (-329). */
@RestController
@RequestMapping("/api/admin/events")
public class AdminEventController {

    private static final String ENTITY = "EVENT";

    public record EventDto(Long id, Long eraId, String titleUz, Integer yearFrom, Integer yearTo,
                           String locationUz, String descriptionUz,
                           String titleRu, String descriptionRu, String locationRu) {

        static EventDto from(HistoricalEvent e) {
            return new EventDto(e.getId(), e.getEraId(), e.getTitleUz(), e.getYearFrom(),
                    e.getYearTo(), e.getLocationUz(), e.getDescriptionUz(),
                    e.getTitleRu(), e.getDescriptionRu(), e.getLocationRu());
        }
    }

    public record EventRequest(Long eraId, String titleUz, Integer yearFrom, Integer yearTo,
                               String locationUz, String descriptionUz,
                               String titleRu, String descriptionRu, String locationRu) {
    }

    private final HistoricalEventRepository eventRepository;
    private final EraRepository eraRepository;
    private final AdminAuditService audit;

    public AdminEventController(HistoricalEventRepository eventRepository,
                                EraRepository eraRepository, AdminAuditService audit) {
        this.eventRepository = eventRepository;
        this.eraRepository = eraRepository;
        this.audit = audit;
    }

    @GetMapping
    public List<EventDto> list(@RequestParam(required = false) Long eraId) {
        List<HistoricalEvent> events = eraId == null
                ? eventRepository.findAllByOrderByYearFrom()
                : eventRepository.findByEraIdOrderByYearFrom(eraId);
        return events.stream().map(EventDto::from).toList();
    }

    @PostMapping
    @Transactional
    public EventDto create(@AuthenticationPrincipal AuthPrincipal principal,
                           @RequestBody EventRequest request) {
        HistoricalEvent event = new HistoricalEvent();
        apply(event, request);
        HistoricalEvent saved = eventRepository.save(event);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Событие добавлено: " + saved.getTitleUz());
        return EventDto.from(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public EventDto update(@AuthenticationPrincipal AuthPrincipal principal,
                           @PathVariable Long id, @RequestBody EventRequest request) {
        HistoricalEvent event = eventRepository.findById(id).orElseThrow(() -> notFound("Событие не найдено"));
        apply(event, request);
        HistoricalEvent saved = eventRepository.save(event);
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                "Событие изменено: " + saved.getTitleUz());
        return EventDto.from(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        HistoricalEvent event = eventRepository.findById(id).orElseThrow(() -> notFound("Событие не найдено"));
        eventRepository.delete(event);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id,
                "Событие удалено: " + event.getTitleUz());
    }

    private void apply(HistoricalEvent event, EventRequest request) {
        Long eraId = requiredId(request.eraId(), "Эпоха");
        if (!eraRepository.existsById(eraId)) {
            throw notFound("Эпоха не найдена");
        }
        event.setEraId(eraId);
        event.setTitleUz(required(request.titleUz(), "Заголовок"));
        event.setYearFrom(requiredInt(request.yearFrom(), "Год начала"));
        event.setYearTo(request.yearTo());
        event.setLocationUz(optional(request.locationUz()));
        event.setDescriptionUz(required(request.descriptionUz(), "Описание"));
        // Ruscha matn ixtiyoriy: bo'sh bo'lsa interfeys o'zbekcha aslini beradi.
        event.setTitleRu(optional(request.titleRu()));
        event.setDescriptionRu(optional(request.descriptionRu()));
        event.setLocationRu(optional(request.locationRu()));
    }
}
