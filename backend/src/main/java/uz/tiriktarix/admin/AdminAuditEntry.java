package uz.tiriktarix.admin;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.OffsetDateTime;

/**
 * Boshqaruv panelidagi amal izi.
 *
 * <p>Yozuv o'chirilmaydi va tahrirlanmaydi: «kim tasdiqladi» degan savolga
 * javob bo'lmasa, kontentdagi tasdiq belgisi hech nimani anglatmaydi.
 */
@Entity
@Table(name = "admin_audit_log")
public class AdminAuditEntry {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long adminId;

    /** Login alohida saqlanadi: hisob o'chsa ham jurnal o'qilishi kerak. */
    private String adminLogin;

    private String action;

    private String entityType;

    private Long entityId;

    private String summary;

    private OffsetDateTime createdAt;

    protected AdminAuditEntry() {
    }

    public AdminAuditEntry(Long adminId, String adminLogin, String action,
                           String entityType, Long entityId, String summary) {
        this.adminId = adminId;
        this.adminLogin = adminLogin;
        this.action = action;
        this.entityType = entityType;
        this.entityId = entityId;
        this.summary = summary;
        this.createdAt = OffsetDateTime.now();
    }

    public Long getId() {
        return id;
    }

    public Long getAdminId() {
        return adminId;
    }

    public String getAdminLogin() {
        return adminLogin;
    }

    public String getAction() {
        return action;
    }

    public String getEntityType() {
        return entityType;
    }

    public Long getEntityId() {
        return entityId;
    }

    public String getSummary() {
        return summary;
    }

    public OffsetDateTime getCreatedAt() {
        return createdAt;
    }
}
