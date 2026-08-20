package uz.tiriktarix.admin;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.auth.JwtService;
import uz.tiriktarix.auth.User;
import uz.tiriktarix.auth.UserRepository;

/**
 * Panelga kirish. O'quvchilar kirishidan alohida turadi, chunki
 * administratorda o'quvchi profili (clientId, XP, seriya) yo'q.
 */
@RestController
@RequestMapping("/api/admin/auth")
public class AdminAuthController {

    public record LoginRequest(String username, String password) {
    }

    public record LoginResponse(String token, String username, String role) {
    }

    public record PasswordRequest(String currentPassword, String newPassword) {
    }

    private static final int MIN_PASSWORD = 8;

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AdminAuditService audit;

    public AdminAuthController(UserRepository userRepository, PasswordEncoder passwordEncoder,
                               JwtService jwtService, AdminAuditService audit) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
        this.audit = audit;
    }

    @PostMapping("/login")
    @Transactional
    public LoginResponse login(@RequestBody LoginRequest request) {
        User user = userRepository.findByUsernameIgnoreCase(
                        request.username() == null ? "" : request.username())
                .filter(u -> passwordEncoder.matches(
                        request.password() == null ? "" : request.password(), u.getPasswordHash()))
                // Rol xatosi ham «login yoki parol noto'g'ri» deb qaytadi: aks holda
                // tashqaridan qaysi loginlar admin ekanini aniqlash mumkin bo'lardi.
                .filter(User::isAdmin)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.UNAUTHORIZED,
                        "Неверный логин или пароль"));

        audit.logLogin(user.getId(), user.getUsername());
        return new LoginResponse(jwtService.issue(user.getId(), null, user.getRole()),
                user.getUsername(), user.getRole());
    }

    @GetMapping("/me")
    public LoginResponse me(@AuthenticationPrincipal AuthPrincipal principal) {
        User user = current(principal);
        return new LoginResponse(null, user.getUsername(), user.getRole());
    }

    @PostMapping("/password")
    @Transactional
    public LoginResponse changePassword(@AuthenticationPrincipal AuthPrincipal principal,
                                        @RequestBody PasswordRequest request) {
        User user = current(principal);
        if (!passwordEncoder.matches(request.currentPassword() == null ? "" : request.currentPassword(),
                user.getPasswordHash())) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Текущий пароль неверен");
        }
        String next = request.newPassword();
        if (next == null || next.length() < MIN_PASSWORD) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Новый пароль должен быть не короче " + MIN_PASSWORD + " символов");
        }
        user.setPasswordHash(passwordEncoder.encode(next));
        userRepository.save(user);
        audit.log(principal, AdminAuditService.UPDATE, "USER", user.getId(), "Сменил собственный пароль");
        // Token o'zgarmaydi: u parolga emas, foydalanuvchi id siga bog'langan.
        return new LoginResponse(null, user.getUsername(), user.getRole());
    }

    private User current(AuthPrincipal principal) {
        if (principal == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Сначала войдите в систему");
        }
        return userRepository.findById(principal.userId())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Учётная запись не найдена"));
    }
}
