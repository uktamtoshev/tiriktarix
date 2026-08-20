package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.pageable;

import java.time.OffsetDateTime;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.admin.AdminSupport.PageDto;

/** Amallar jurnali — faqat o'qish uchun. Yozuvni o'chirish endpointi yo'q. */
@RestController
@RequestMapping("/api/admin/audit")
public class AdminAuditController {

    public record AuditRow(Long id, String adminLogin, String action, String entityType,
                           Long entityId, String summary, OffsetDateTime createdAt) {

        static AuditRow from(AdminAuditEntry e) {
            return new AuditRow(e.getId(), e.getAdminLogin(), e.getAction(), e.getEntityType(),
                    e.getEntityId(), e.getSummary(), e.getCreatedAt());
        }
    }

    private final AdminAuditRepository repository;

    public AdminAuditController(AdminAuditRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    public PageDto<AuditRow> list(@RequestParam(required = false) String entityType,
                                  @RequestParam(defaultValue = "0") int page,
                                  @RequestParam(defaultValue = "50") int size) {
        String filter = optional(entityType);
        Page<AdminAuditEntry> found = filter == null
                ? repository.findAllByOrderByCreatedAtDesc(pageable(page, size))
                : repository.findByEntityTypeOrderByCreatedAtDesc(filter.toUpperCase(), pageable(page, size));
        return PageDto.of(found, found.getContent().stream().map(AuditRow::from).toList());
    }
}
