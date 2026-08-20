package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.blockIfUsed;
import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.required;
import static uz.tiriktarix.admin.AdminSupport.requiredInt;

import java.util.List;
import org.springframework.http.HttpStatus;
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
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.era.Era;
import uz.tiriktarix.era.EraRepository;
import uz.tiriktarix.event.HistoricalEventRepository;
import uz.tiriktarix.factcard.FactCardRepository;
import uz.tiriktarix.film.FilmRepository;
import uz.tiriktarix.hero.HeroRepository;
import uz.tiriktarix.map.MapFeatureRepository;
import uz.tiriktarix.quiz.QuizQuestionRepository;

/** Davrlar — butun kontentning skeletini tashkil qiladi, shuning uchun eng ehtiyotkor CRUD. */
@RestController
@RequestMapping("/api/admin/eras")
public class AdminEraController {

    private static final String ENTITY = "ERA";

    public record EraDto(Long id, String code, String nameUz, Integer ordinal, Integer yearFrom,
                         Integer yearTo, String descriptionUz, String biographyUz,
                         String biographySources, boolean biographyVerified,
                         String nameRu, String descriptionRu,
                         long heroes, long events, long factCards, long quizQuestions,
                         long films, long mapFeatures) {
    }

    public record EraRequest(String code, String nameUz, Integer ordinal, Integer yearFrom,
                             Integer yearTo, String descriptionUz, String biographyUz,
                             String biographySources, Boolean biographyVerified,
                             String nameRu, String descriptionRu) {
    }

    private final EraRepository eraRepository;
    private final HeroRepository heroRepository;
    private final HistoricalEventRepository eventRepository;
    private final FactCardRepository factCardRepository;
    private final QuizQuestionRepository quizQuestionRepository;
    private final FilmRepository filmRepository;
    private final MapFeatureRepository mapRepository;
    private final AdminAuditService audit;

    public AdminEraController(EraRepository eraRepository, HeroRepository heroRepository,
                              HistoricalEventRepository eventRepository,
                              FactCardRepository factCardRepository,
                              QuizQuestionRepository quizQuestionRepository,
                              FilmRepository filmRepository, MapFeatureRepository mapRepository,
                              AdminAuditService audit) {
        this.eraRepository = eraRepository;
        this.heroRepository = heroRepository;
        this.eventRepository = eventRepository;
        this.factCardRepository = factCardRepository;
        this.quizQuestionRepository = quizQuestionRepository;
        this.filmRepository = filmRepository;
        this.mapRepository = mapRepository;
        this.audit = audit;
    }

    @GetMapping
    public List<EraDto> list() {
        return eraRepository.findAllByOrderByOrdinalAscIdAsc().stream().map(this::toDto).toList();
    }

    @PostMapping
    @Transactional
    public EraDto create(@AuthenticationPrincipal AuthPrincipal principal,
                         @RequestBody EraRequest request) {
        Era era = new Era();
        apply(era, request, null);
        Era saved = eraRepository.save(era);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Эпоха добавлена: " + saved.getNameUz());
        return toDto(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public EraDto update(@AuthenticationPrincipal AuthPrincipal principal,
                         @PathVariable Long id, @RequestBody EraRequest request) {
        Era era = eraRepository.findById(id).orElseThrow(() -> notFound("Эпоха не найдена"));
        apply(era, request, id);
        Era saved = eraRepository.save(era);
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                "Эпоха изменена: " + saved.getNameUz());
        return toDto(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        Era era = eraRepository.findById(id).orElseThrow(() -> notFound("Эпоха не найдена"));
        // Davrga bog'langan kontent qolib ketmasin: bazadagi tashqi kalit xatosi
        // o'rniga nima to'sqinlik qilayotgani aniq aytiladi.
        blockIfUsed(heroRepository.countByEraId(id), "к эпохе привязаны предки");
        blockIfUsed(eventRepository.countByEraId(id), "к эпохе привязаны события");
        blockIfUsed(factCardRepository.countByEraId(id), "к эпохе привязаны карточки фактов");
        blockIfUsed(quizQuestionRepository.countByEraId(id), "к эпохе привязаны вопросы тестов");
        blockIfUsed(filmRepository.countByEraId(id), "к эпохе привязаны фильмы");
        blockIfUsed(mapRepository.countByEraId(id), "к эпохе привязаны слои карты");
        eraRepository.delete(era);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id, "Эпоха удалена: " + era.getNameUz());
    }

    private void apply(Era era, EraRequest request, Long selfId) {
        String code = required(request.code(), "Код").toLowerCase();
        eraRepository.findByCode(code)
                .filter(other -> !other.getId().equals(selfId))
                .ifPresent(other -> {
                    throw new ResponseStatusException(HttpStatus.CONFLICT, "Этот код занят: " + code);
                });
        era.setCode(code);
        era.setNameUz(required(request.nameUz(), "Название"));
        era.setOrdinal(requiredInt(request.ordinal(), "Порядковый номер"));
        era.setYearFrom(request.yearFrom());
        era.setYearTo(request.yearTo());
        era.setDescriptionUz(optional(request.descriptionUz()));
        era.setBiographyUz(optional(request.biographyUz()));
        era.setBiographySources(optional(request.biographySources()));
        era.setBiographyVerified(Boolean.TRUE.equals(request.biographyVerified()));
        // Ruscha matn ixtiyoriy: bo'sh bo'lsa interfeys o'zbekcha aslini beradi.
        era.setNameRu(optional(request.nameRu()));
        era.setDescriptionRu(optional(request.descriptionRu()));
    }

    private EraDto toDto(Era e) {
        return new EraDto(e.getId(), e.getCode(), e.getNameUz(), e.getOrdinal(), e.getYearFrom(),
                e.getYearTo(), e.getDescriptionUz(), e.getBiographyUz(), e.getBiographySources(),
                e.isBiographyVerified(),
                e.getNameRu(), e.getDescriptionRu(),
                heroRepository.countByEraId(e.getId()), eventRepository.countByEraId(e.getId()),
                factCardRepository.countByEraId(e.getId()), quizQuestionRepository.countByEraId(e.getId()),
                filmRepository.countByEraId(e.getId()), mapRepository.countByEraId(e.getId()));
    }
}
