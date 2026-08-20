package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.oneOf;
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
import uz.tiriktarix.profile.AchievementDefinition;
import uz.tiriktarix.profile.AchievementDefinitionRepository;

/**
 * Yutuqlar (V107).
 *
 * <p>Metodist matnni, emojini va chegarani o'zgartira oladi. {@code metric} —
 * qaysi ko'rsatkich bo'yicha o'lchanishi — faqat KOD biladigan ro'yxatdan
 * tanlanadi: yangi tur ko'rsatkich dasturchisiz qo'shilmaydi.
 *
 * <p>Yutuqning bajarilgani saqlanmaydi, u profil ma'lumotlaridan qayta
 * hisoblanadi — shuning uchun chegarani o'zgartirish eski natijalarni buzmaydi.
 */
@RestController
@RequestMapping("/api/admin/achievements")
public class AdminAchievementController {

    private static final String ENTITY = "ACHIEVEMENT";

    private static final String[] METRICS = {
            "XP", "STREAK_DAYS", "TOTAL_QUIZZES", "PERFECT_QUIZZES", "TOTAL_QUESTIONS",
            "CONVERSATIONS", "HEROES_TALKED", "RIDDLE_SOLVED"
    };

    public record AchievementDto(Long id, String code, String metric, int target,
                                 String titleUz, String titleRu,
                                 String descriptionUz, String descriptionRu,
                                 String emoji, Integer ordinal) {

        static AchievementDto from(AchievementDefinition a) {
            return new AchievementDto(a.getId(), a.getCode(), a.getMetric(), a.getTarget(),
                    a.getTitleUz(), a.getTitleRu(), a.getDescriptionUz(), a.getDescriptionRu(),
                    a.getEmoji(), a.getOrdinal());
        }
    }

    public record AchievementRequest(String code, String metric, Integer target,
                                     String titleUz, String titleRu,
                                     String descriptionUz, String descriptionRu,
                                     String emoji, Integer ordinal) {
    }

    private final AchievementDefinitionRepository repository;
    private final AdminAuditService audit;

    public AdminAchievementController(AchievementDefinitionRepository repository,
                                      AdminAuditService audit) {
        this.repository = repository;
        this.audit = audit;
    }

    @GetMapping
    public List<AchievementDto> list() {
        return repository.findAllByOrderByOrdinalAsc().stream().map(AchievementDto::from).toList();
    }

    @PostMapping
    @Transactional
    public AchievementDto create(@AuthenticationPrincipal AuthPrincipal principal,
                                 @RequestBody AchievementRequest request) {
        AchievementDefinition a = new AchievementDefinition();
        apply(a, request, null);
        AchievementDefinition saved = repository.save(a);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Достижение добавлено: " + saved.getTitleUz());
        return AchievementDto.from(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public AchievementDto update(@AuthenticationPrincipal AuthPrincipal principal,
                                 @PathVariable Long id, @RequestBody AchievementRequest request) {
        AchievementDefinition a = repository.findById(id)
                .orElseThrow(() -> notFound("Достижение не найдено"));
        apply(a, request, id);
        AchievementDefinition saved = repository.save(a);
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                "Достижение изменено: " + saved.getTitleUz());
        return AchievementDto.from(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        AchievementDefinition a = repository.findById(id)
                .orElseThrow(() -> notFound("Достижение не найдено"));
        repository.delete(a);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id,
                "Достижение удалено: " + a.getTitleUz());
    }

    private void apply(AchievementDefinition a, AchievementRequest request, Long selfId) {
        String code = required(request.code(), "Код").toLowerCase();
        repository.findAllByOrderByOrdinalAsc().stream()
                .filter(other -> other.getCode().equals(code) && !other.getId().equals(selfId))
                .findFirst()
                .ifPresent(other -> {
                    throw new ResponseStatusException(HttpStatus.CONFLICT, "Этот код занят: " + code);
                });
        a.setCode(code);
        a.setMetric(oneOf(request.metric(), "Показатель", METRICS));
        a.setTarget(requiredInt(request.target(), "Порог"));
        a.setTitleUz(required(request.titleUz(), "Название"));
        a.setTitleRu(optional(request.titleRu()));
        a.setDescriptionUz(required(request.descriptionUz(), "Описание"));
        a.setDescriptionRu(optional(request.descriptionRu()));
        a.setEmoji(required(request.emoji(), "Эмодзи"));
        a.setOrdinal(request.ordinal() == null ? 0 : request.ordinal());
    }
}
