package uz.tiriktarix.admin;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminAuditRepository extends JpaRepository<AdminAuditEntry, Long> {

    Page<AdminAuditEntry> findAllByOrderByCreatedAtDesc(Pageable pageable);

    Page<AdminAuditEntry> findByEntityTypeOrderByCreatedAtDesc(String entityType, Pageable pageable);
}
