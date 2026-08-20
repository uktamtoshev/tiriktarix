package uz.tiriktarix.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import uz.tiriktarix.auth.User;
import uz.tiriktarix.auth.UserRepository;
import uz.tiriktarix.config.AppProperties;

/**
 * Birinchi administrator hisobi.
 *
 * <p>Parol migratsiyada emas, shu yerda yaratiladi: BCrypt xeshi Java tomonda
 * hisoblanadi va parolning o'zi SQL faylida ochiq yotmaydi.
 *
 * <p>MUHIM QOIDA: hisob allaqachon bo'lsa, PAROL TEGILMAYDI. Administrator
 * parolni paneldan almashtirganidan keyin serverni qayta ishga tushirish uni
 * eski qiymatga qaytarib qo'ymasligi kerak. Faqat rol tekshiriladi.
 */
@Component
public class AdminBootstrap implements ApplicationRunner {

    private static final Logger log = LoggerFactory.getLogger(AdminBootstrap.class);

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final AppProperties properties;

    public AdminBootstrap(UserRepository userRepository, PasswordEncoder passwordEncoder,
                          AppProperties properties) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.properties = properties;
    }

    @Override
    @Transactional
    public void run(ApplicationArguments args) {
        String username = properties.admin().username();
        String password = properties.admin().password();
        if (username == null || username.isBlank() || password == null || password.isBlank()) {
            log.warn("Учётная запись администратора не настроена — панель останется закрытой");
            return;
        }

        userRepository.findByUsernameIgnoreCase(username).ifPresentOrElse(existing -> {
            if (!existing.isAdmin()) {
                existing.setRole(User.ROLE_ADMIN);
                userRepository.save(existing);
                log.info("Учётной записи «{}» выдана роль ADMIN", username);
            }
        }, () -> {
            userRepository.save(new User(username, passwordEncoder.encode(password), User.ROLE_ADMIN));
            log.info("Создана учётная запись администратора: {}", username);
        });
    }
}
