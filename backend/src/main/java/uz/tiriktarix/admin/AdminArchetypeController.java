package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.oneOf;
import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.required;

import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.avatar.Archetype;
import uz.tiriktarix.avatar.ArchetypeRepository;

/**
 * Qahramon tiplari (V107) — FAQAT TAHRIRLASH.
 *
 * <p>NEGA QO'SHISH VA O'CHIRISH YO'Q. Har bir tipning qo'lda chizilgan tasviri
 * bor ({@code Character.tsx}, {@code WarriorFigure.tsx}, {@code /avatar3d/}
 * papkasidagi renderlar) va u frontend kodida yashaydi. Bazaga chizmasi yo'q
 * yangi tip qo'shilsa, bola bo'sh figurani ko'rardi; mavjud tip o'chirilsa —
 * uni tanlagan bolalarning profili buzilardi. Shuning uchun paneldan faqat
 * MATNNI o'zgartirish mumkin, ro'yxatning o'zi esa chizma bilan birga
 * dasturchi tomonidan qo'shiladi.
 */
@RestController
@RequestMapping("/api/admin/archetypes")
public class AdminArchetypeController {

    private static final String ENTITY = "ARCHETYPE";

    public record ArchetypeDto(Long id, String code, String gender, String nameUz, String nameRu,
                               String taglineUz, String taglineRu, Integer ordinal) {

        static ArchetypeDto from(Archetype a) {
            return new ArchetypeDto(a.getId(), a.getCode(), a.getGender(), a.getNameUz(),
                    a.getNameRu(), a.getTaglineUz(), a.getTaglineRu(), a.getOrdinal());
        }
    }

    public record ArchetypeRequest(String code, String gender, String nameUz, String nameRu,
                                   String taglineUz, String taglineRu, Integer ordinal) {
    }

    private final ArchetypeRepository repository;
    private final AdminAuditService audit;

    public AdminArchetypeController(ArchetypeRepository repository, AdminAuditService audit) {
        this.repository = repository;
        this.audit = audit;
    }

    @GetMapping
    public List<ArchetypeDto> list() {
        return repository.findAllByOrderByOrdinalAsc().stream().map(ArchetypeDto::from).toList();
    }

    @PutMapping("/{id}")
    @Transactional
    public ArchetypeDto update(@AuthenticationPrincipal AuthPrincipal principal,
                               @PathVariable Long id, @RequestBody ArchetypeRequest request) {
        Archetype a = repository.findById(id).orElseThrow(() -> notFound("Тип не найден"));

        // Kod — chizma bilan bog'lovchi kalit, uni almashtirib bo'lmaydi.
        String code = required(request.code(), "Код");
        if (!code.equals(a.getCode())) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Код типа менять нельзя: к нему привязан рисунок в коде");
        }

        a.setGender(oneOf(request.gender(), "Пол", "MALE", "FEMALE"));
        a.setNameUz(required(request.nameUz(), "Название"));
        a.setNameRu(optional(request.nameRu()));
        a.setTaglineUz(required(request.taglineUz(), "Описание"));
        a.setTaglineRu(optional(request.taglineRu()));
        a.setOrdinal(request.ordinal() == null ? 0 : request.ordinal());

        Archetype saved = repository.save(a);
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                "Тип героя изменён: " + saved.getNameUz());
        return ArchetypeDto.from(saved);
    }
}
