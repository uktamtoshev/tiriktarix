package uz.tiriktarix.admin;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.auth.User;
import uz.tiriktarix.auth.UserRepository;

/** Amallar jurnaliga yozadi. Hech qachon sir qiymatini yozmaydi — faqat faktni. */
@Service
public class AdminAuditService {

    public static final String CREATE = "CREATE";
    public static final String UPDATE = "UPDATE";
    public static final String DELETE = "DELETE";
    public static final String VERIFY = "VERIFY";
    public static final String LOGIN = "LOGIN";
    public static final String SECRET = "SECRET";

    private final AdminAuditRepository repository;
    private final UserRepository userRepository;

    public AdminAuditService(AdminAuditRepository repository, UserRepository userRepository) {
        this.repository = repository;
        this.userRepository = userRepository;
    }

    @Transactional
    public void log(AuthPrincipal principal, String action, String entityType,
                    Long entityId, String summary) {
        Long adminId = principal == null ? null : principal.userId();
        String login = adminId == null ? "?"
                : userRepository.findById(adminId).map(User::getUsername).orElse("?");
        repository.save(new AdminAuditEntry(adminId, login, action, entityType, entityId, summary));
    }

    @Transactional
    public void logLogin(Long adminId, String login) {
        repository.save(new AdminAuditEntry(adminId, login, LOGIN, "SESSION", adminId,
                "Вход в панель"));
    }
}
