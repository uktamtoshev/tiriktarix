package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.blockIfUsed;
import static uz.tiriktarix.admin.AdminSupport.cleanList;
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
import uz.tiriktarix.chat.ConversationRepository;
import uz.tiriktarix.factcard.FactCardRepository;
import uz.tiriktarix.film.FilmRepository;
import uz.tiriktarix.hero.Hero;
import uz.tiriktarix.hero.HeroRepository;
import uz.tiriktarix.quiz.QuizQuestionRepository;

/**
 * Ajdodlar. Portret turi ({@code portraitKind}) ataylab majburiy emas, lekin
 * kiritilsa faqat uchta qiymatdan biri bo'ladi: o'rta asr ajdodining
 * «fotosurati» bo'lishi mumkin emas va interfeys buni ochiq yozadi.
 */
@RestController
@RequestMapping("/api/admin/heroes")
public class AdminHeroController {

    private static final String ENTITY = "HERO";

    public record HeroDto(Long id, String slug, String nameUz, String titleUz, Integer birthYear,
                          Integer deathYear, Long eraId, String bioUz, String greetingUz,
                          String portraitEmoji, String portraitUrl, String portraitKind,
                          String portraitCaptionUz, String portraitSource, String summaryUz,
                          String biographyUz, String biographySources, boolean biographyVerified,
                          List<String> onTopicKeywords,
                          String portraitFullUrl, String accent,
                          String nameRu, String titleRu, String bioRu, String portraitCaptionRu,
                          long factCards, long quizQuestions, long films, long conversations) {
    }

    public record HeroRequest(String slug, String nameUz, String titleUz, Integer birthYear,
                              Integer deathYear, Long eraId, String bioUz, String greetingUz,
                              String portraitEmoji, String portraitUrl, String portraitKind,
                              String portraitCaptionUz, String portraitSource, String summaryUz,
                              String biographyUz, String biographySources, Boolean biographyVerified,
                              List<String> onTopicKeywords,
                              String portraitFullUrl, String accent,
                              String nameRu, String titleRu, String bioRu, String portraitCaptionRu) {
    }

    private final HeroRepository heroRepository;
    private final FactCardRepository factCardRepository;
    private final QuizQuestionRepository quizQuestionRepository;
    private final FilmRepository filmRepository;
    private final ConversationRepository conversationRepository;
    private final AdminAuditService audit;

    public AdminHeroController(HeroRepository heroRepository, FactCardRepository factCardRepository,
                               QuizQuestionRepository quizQuestionRepository,
                               FilmRepository filmRepository,
                               ConversationRepository conversationRepository,
                               AdminAuditService audit) {
        this.heroRepository = heroRepository;
        this.factCardRepository = factCardRepository;
        this.quizQuestionRepository = quizQuestionRepository;
        this.filmRepository = filmRepository;
        this.conversationRepository = conversationRepository;
        this.audit = audit;
    }

    @GetMapping
    public List<HeroDto> list() {
        return heroRepository.findAllByOrderByIdAsc().stream().map(this::toDto).toList();
    }

    @PostMapping
    @Transactional
    public HeroDto create(@AuthenticationPrincipal AuthPrincipal principal,
                          @RequestBody HeroRequest request) {
        Hero hero = new Hero();
        apply(hero, request, null);
        Hero saved = heroRepository.save(hero);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Предок добавлен: " + saved.getNameUz());
        return toDto(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public HeroDto update(@AuthenticationPrincipal AuthPrincipal principal,
                          @PathVariable Long id, @RequestBody HeroRequest request) {
        Hero hero = heroRepository.findById(id).orElseThrow(() -> notFound("Предок не найден"));
        boolean wasVerified = hero.isBiographyVerified();
        apply(hero, request, id);
        Hero saved = heroRepository.save(hero);
        boolean verificationChanged = wasVerified != saved.isBiographyVerified();
        audit.log(principal, verificationChanged ? AdminAuditService.VERIFY : AdminAuditService.UPDATE,
                ENTITY, id, verificationChanged
                        ? (saved.isBiographyVerified() ? "Биография подтверждена: " : "Подтверждение снято: ")
                          + saved.getNameUz()
                        : "Предок изменён: " + saved.getNameUz());
        return toDto(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        Hero hero = heroRepository.findById(id).orElseThrow(() -> notFound("Предок не найден"));
        blockIfUsed(factCardRepository.countByHeroId(id), "у предка есть карточки фактов");
        blockIfUsed(quizQuestionRepository.countByHeroId(id), "у предка есть вопросы тестов");
        blockIfUsed(filmRepository.countByHeroId(id), "к предку привязаны фильмы");
        blockIfUsed(conversationRepository.countByHeroId(id), "есть история диалогов с предком");
        heroRepository.delete(hero);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id, "Предок удалён: " + hero.getNameUz());
    }

    private void apply(Hero hero, HeroRequest request, Long selfId) {
        String slug = required(request.slug(), "Slug").toLowerCase();
        heroRepository.findBySlug(slug)
                .filter(other -> !other.getId().equals(selfId))
                .ifPresent(other -> {
                    throw new ResponseStatusException(HttpStatus.CONFLICT, "Этот slug занят: " + slug);
                });
        hero.setSlug(slug);
        hero.setNameUz(required(request.nameUz(), "Имя"));
        hero.setTitleUz(optional(request.titleUz()));
        hero.setBirthYear(request.birthYear());
        // Vafot yili majburiy: dialog dvigateli «o'z o'limidan keyingi voqealarni
        // bilmaslik» qoidasini aynan shu maydonga tayanib bajaradi.
        hero.setDeathYear(requiredInt(request.deathYear(), "Год смерти"));
        hero.setEraId(request.eraId());
        hero.setBioUz(optional(request.bioUz()));
        hero.setGreetingUz(optional(request.greetingUz()));
        hero.setPortraitEmoji(optional(request.portraitEmoji()));
        hero.setPortraitUrl(optional(request.portraitUrl()));
        String kind = optional(request.portraitKind());
        hero.setPortraitKind(kind == null ? null
                : AdminSupport.oneOf(kind, "Тип изображения", "PHOTO", "MINIATURE", "ARTWORK"));
        hero.setPortraitCaptionUz(optional(request.portraitCaptionUz()));
        hero.setPortraitSource(optional(request.portraitSource()));
        hero.setSummaryUz(optional(request.summaryUz()));
        hero.setBiographyUz(optional(request.biographyUz()));
        hero.setBiographySources(optional(request.biographySources()));
        hero.setBiographyVerified(Boolean.TRUE.equals(request.biographyVerified()));
        hero.setOnTopicKeywords(cleanList(request.onTopicKeywords()));
        hero.setPortraitFullUrl(optional(request.portraitFullUrl()));
        String accent = optional(request.accent());
        hero.setAccent(accent == null ? null
                : AdminSupport.oneOf(accent, "Цвет медальона", "zar", "feruza", "nil", "qon"));
        // Ruscha matn ixtiyoriy: bo'sh bo'lsa interfeys o'zbekcha aslini beradi.
        hero.setNameRu(optional(request.nameRu()));
        hero.setTitleRu(optional(request.titleRu()));
        hero.setBioRu(optional(request.bioRu()));
        hero.setPortraitCaptionRu(optional(request.portraitCaptionRu()));
    }

    private HeroDto toDto(Hero h) {
        return new HeroDto(h.getId(), h.getSlug(), h.getNameUz(), h.getTitleUz(), h.getBirthYear(),
                h.getDeathYear(), h.getEraId(), h.getBioUz(), h.getGreetingUz(), h.getPortraitEmoji(),
                h.getPortraitUrl(), h.getPortraitKind(), h.getPortraitCaptionUz(), h.getPortraitSource(),
                h.getSummaryUz(), h.getBiographyUz(), h.getBiographySources(), h.isBiographyVerified(),
                h.getOnTopicKeywords() == null ? List.of() : h.getOnTopicKeywords(),
                h.getPortraitFullUrl(), h.getAccent(),
                h.getNameRu(), h.getTitleRu(), h.getBioRu(), h.getPortraitCaptionRu(),
                factCardRepository.countByHeroId(h.getId()),
                quizQuestionRepository.countByHeroId(h.getId()),
                filmRepository.countByHeroId(h.getId()),
                conversationRepository.countByHeroId(h.getId()));
    }
}
