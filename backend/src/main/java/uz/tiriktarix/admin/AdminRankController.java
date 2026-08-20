package uz.tiriktarix.admin;

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
import uz.tiriktarix.profile.Rank;
import uz.tiriktarix.profile.RankLadder;
import uz.tiriktarix.profile.RankRepository;

/**
 * Unvonlar zinapoyasi (V107).
 *
 * <p>ZINAPOYA XOTIRADA KESHLANADI ({@link RankLadder}), chunki
 * {@code Levels.of()} yettita joydan statik chaqiriladi. Shuning uchun har bir
 * o'zgarishdan keyin kesh QAYTA YUKLANADI — aks holda metodist o'zgartirgan
 * unvon faqat serverni qayta ishga tushirgandan keyin ko'rinardi.
 *
 * <p>Zinapoya 1-darajadan boshlanishi shart: aks holda yangi o'quvchi unvonsiz
 * qoladi. Buni bazadagi CHECK ushlay olmaydi (u bitta qatorni ko'radi), shuning
 * uchun tekshiruv shu yerda va {@link RankLadder} ichida.
 */
@RestController
@RequestMapping("/api/admin/ranks")
public class AdminRankController {

    private static final String ENTITY = "RANK";

    public record RankDto(Long id, int minLevel, String nameUz, String nameRu, String emoji) {

        static RankDto from(Rank r) {
            return new RankDto(r.getId(), r.getMinLevel(), r.getNameUz(), r.getNameRu(), r.getEmoji());
        }
    }

    public record RankRequest(Integer minLevel, String nameUz, String nameRu, String emoji) {
    }

    private final RankRepository repository;
    private final RankLadder ladder;
    private final AdminAuditService audit;

    public AdminRankController(RankRepository repository, RankLadder ladder,
                               AdminAuditService audit) {
        this.repository = repository;
        this.ladder = ladder;
        this.audit = audit;
    }

    @GetMapping
    public List<RankDto> list() {
        return repository.findAllByOrderByMinLevelAsc().stream().map(RankDto::from).toList();
    }

    @PostMapping
    @Transactional
    public RankDto create(@AuthenticationPrincipal AuthPrincipal principal,
                          @RequestBody RankRequest request) {
        Rank r = new Rank();
        apply(r, request, null);
        Rank saved = repository.save(r);
        requireLadderStartsAtOne();
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Звание добавлено: " + saved.getNameUz());
        // Keshni oxirida yangilaymiz: undan keyin faqat commit qoladi, ya'ni
        // tranzaksiya orqaga qaytsa xotirada eskirgan zinapoya qolib ketmaydi.
        ladder.reload();
        return RankDto.from(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public RankDto update(@AuthenticationPrincipal AuthPrincipal principal,
                          @PathVariable Long id, @RequestBody RankRequest request) {
        Rank r = repository.findById(id).orElseThrow(() -> notFound("Звание не найдено"));
        apply(r, request, id);
        Rank saved = repository.save(r);
        requireLadderStartsAtOne();
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                "Звание изменено: " + saved.getNameUz());
        ladder.reload();
        return RankDto.from(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        Rank r = repository.findById(id).orElseThrow(() -> notFound("Звание не найдено"));
        repository.delete(r);
        repository.flush();
        requireLadderStartsAtOne();
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id,
                "Звание удалено: " + r.getNameUz());
        ladder.reload();
    }

    private void apply(Rank r, RankRequest request, Long selfId) {
        int minLevel = requiredInt(request.minLevel(), "С какого уровня");
        if (minLevel < 1) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Уровень не может быть меньше 1");
        }
        repository.findAllByOrderByMinLevelAsc().stream()
                .filter(other -> other.getMinLevel() == minLevel && !other.getId().equals(selfId))
                .findFirst()
                .ifPresent(other -> {
                    throw new ResponseStatusException(HttpStatus.CONFLICT,
                            "Для уровня " + minLevel + " звание уже есть: " + other.getNameUz());
                });
        r.setMinLevel(minLevel);
        r.setNameUz(required(request.nameUz(), "Название"));
        r.setNameRu(optional(request.nameRu()));
        r.setEmoji(required(request.emoji(), "Эмодзи"));
    }

    /**
     * Tranzaksiya ichida tekshiriladi: shart buzilsa istisno tashlanadi va
     * o'zgarish orqaga qaytadi — baza hech qachon buzuq holatda qolmaydi.
     */
    private void requireLadderStartsAtOne() {
        repository.flush();
        List<Rank> rows = repository.findAllByOrderByMinLevelAsc();
        if (rows.isEmpty() || rows.get(0).getMinLevel() != 1) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Лестница званий должна начинаться с 1-го уровня — иначе новый ученик остаётся без звания");
        }
    }
}
