package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.check;
import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.oneOf;
import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.pageable;

import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.admin.AdminSupport.PageDto;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.auth.User;
import uz.tiriktarix.auth.UserRepository;
import uz.tiriktarix.avatar.AvatarEquipmentRepository;
import uz.tiriktarix.chat.ChatMessageRepository;
import uz.tiriktarix.chat.Conversation;
import uz.tiriktarix.chat.ConversationRepository;
import uz.tiriktarix.film.FilmWatchRepository;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.LearnerProfileRepository;
import uz.tiriktarix.profile.Levels;
import uz.tiriktarix.quiz.QuizResultRepository;

/**
 * Hisoblar va o'quvchi profillari.
 *
 * <p>Loyihaning ma'lumot modeli ikki qatlamli: profil anonim {@code clientId}
 * ga bog'langan, hisob esa uning ustidagi qo'shimcha qatlam. Shuning uchun
 * hisobni o'chirish progressni yo'q qilmaydi — profil anonim holatiga qaytadi.
 * Butunlay tozalash kerak bo'lsa, profil alohida o'chiriladi.
 */
@RestController
@RequestMapping("/api/admin")
public class AdminUserController {

    private static final int MIN_PASSWORD = 6;

    public record UserRow(Long id, String username, String role, OffsetDateTime createdAt,
                          Long profileId, String clientId, String displayName, Integer xp,
                          Integer streakDays, LocalDate lastActiveDate) {
    }

    public record ProfileRow(Long id, String clientId, String displayName, int xp, int level,
                             String rankUz, String rankEmoji, int streakDays,
                             LocalDate lastActiveDate, Long userId, String username,
                             String avatarGender, String avatarArchetype,
                             // Ro'yxatdan o'tishda kiritilgan shaxsiy ma'lumotlar (V91).
                             // Faqat shu yerda — ochiq API ularni qaytarmaydi.
                             String firstName, String lastName, LocalDate birthDate,
                             String regionUz, String districtUz, String schoolUz) {
    }

    public record RoleRequest(String role) {
    }

    public record PasswordRequest(String newPassword) {
    }

    public record ProfileRequest(String displayName, Integer xp, Integer streakDays) {
    }

    private final UserRepository userRepository;
    private final LearnerProfileRepository profileRepository;
    private final QuizResultRepository quizResultRepository;
    private final AvatarEquipmentRepository equipmentRepository;
    private final ConversationRepository conversationRepository;
    private final ChatMessageRepository chatMessageRepository;
    private final FilmWatchRepository filmWatchRepository;
    private final PasswordEncoder passwordEncoder;
    private final AdminAuditService audit;

    public AdminUserController(UserRepository userRepository,
                               LearnerProfileRepository profileRepository,
                               QuizResultRepository quizResultRepository,
                               AvatarEquipmentRepository equipmentRepository,
                               ConversationRepository conversationRepository,
                               ChatMessageRepository chatMessageRepository,
                               FilmWatchRepository filmWatchRepository,
                               PasswordEncoder passwordEncoder, AdminAuditService audit) {
        this.userRepository = userRepository;
        this.profileRepository = profileRepository;
        this.quizResultRepository = quizResultRepository;
        this.equipmentRepository = equipmentRepository;
        this.conversationRepository = conversationRepository;
        this.chatMessageRepository = chatMessageRepository;
        this.filmWatchRepository = filmWatchRepository;
        this.passwordEncoder = passwordEncoder;
        this.audit = audit;
    }

    // ===================== Hisoblar =====================

    @GetMapping("/users")
    public PageDto<UserRow> users(@RequestParam(required = false) String q,
                                  @RequestParam(defaultValue = "0") int page,
                                  @RequestParam(defaultValue = "25") int size) {
        Page<User> found = userRepository.search(query(q), pageable(page, size));
        return PageDto.of(found, found.getContent().stream().map(this::toUserRow).toList());
    }

    private UserRow toUserRow(User u) {
        LearnerProfile profile = profileRepository.findByUserId(u.getId()).orElse(null);
        return new UserRow(u.getId(), u.getUsername(), u.getRole(), u.getCreatedAt(),
                profile == null ? null : profile.getId(),
                profile == null ? null : profile.getClientId(),
                profile == null ? null : profile.getDisplayName(),
                profile == null ? null : profile.getXp(),
                profile == null ? null : profile.getStreakDays(),
                profile == null ? null : profile.getLastActiveDate());
    }

    @PutMapping("/users/{id}/role")
    @Transactional
    public UserRow changeRole(@AuthenticationPrincipal AuthPrincipal principal,
                              @PathVariable Long id, @RequestBody RoleRequest request) {
        User user = userRepository.findById(id).orElseThrow(() -> notFound("Учётная запись не найдена"));
        String role = oneOf(request.role(), "Роль", User.ROLE_USER, User.ROLE_ADMIN);
        // O'zini roldan mahrum qilish va oxirgi administratorni yo'qotish —
        // ikkalasi ham panelga kirishning yopilib qolishiga olib keladi.
        if (user.isAdmin() && !User.ROLE_ADMIN.equals(role)) {
            check(!user.getId().equals(principal.userId()), "Нельзя понизить собственную роль");
            check(userRepository.countByRole(User.ROLE_ADMIN) > 1,
                    "Это единственный администратор — понизить роль нельзя");
        }
        user.setRole(role);
        User saved = userRepository.save(user);
        audit.log(principal, AdminAuditService.UPDATE, "USER", id,
                "Роль изменена: " + saved.getUsername() + " → " + role);
        return toUserRow(saved);
    }

    @PostMapping("/users/{id}/password")
    @Transactional
    public void resetPassword(@AuthenticationPrincipal AuthPrincipal principal,
                              @PathVariable Long id, @RequestBody PasswordRequest request) {
        User user = userRepository.findById(id).orElseThrow(() -> notFound("Учётная запись не найдена"));
        String next = request.newPassword();
        if (next == null || next.length() < MIN_PASSWORD) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Пароль должен быть не короче " + MIN_PASSWORD + " символов");
        }
        user.setPasswordHash(passwordEncoder.encode(next));
        userRepository.save(user);
        audit.log(principal, AdminAuditService.UPDATE, "USER", id,
                "Пароль сброшен: " + user.getUsername());
    }

    @DeleteMapping("/users/{id}")
    @Transactional
    public void deleteUser(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        User user = userRepository.findById(id).orElseThrow(() -> notFound("Учётная запись не найдена"));
        check(!user.getId().equals(principal.userId()), "Нельзя удалить собственную учётную запись");
        if (user.isAdmin()) {
            check(userRepository.countByRole(User.ROLE_ADMIN) > 1,
                    "Это единственный администратор — удалить нельзя");
        }
        // Profil o'chmaydi, faqat uziladi: bola progressini yo'qotmaslik uchun.
        profileRepository.findByUserId(id).ifPresent(profile -> {
            profile.detach();
            profileRepository.save(profile);
        });
        userRepository.delete(user);
        audit.log(principal, AdminAuditService.DELETE, "USER", id,
                "Учётная запись удалена: " + user.getUsername() + " (профиль сохранён)");
    }

    // ===================== O'quvchi profillari =====================

    @GetMapping("/profiles")
    public PageDto<ProfileRow> profiles(@RequestParam(required = false) String q,
                                        @RequestParam(defaultValue = "0") int page,
                                        @RequestParam(defaultValue = "25") int size) {
        Page<LearnerProfile> found = profileRepository.search(query(q), pageable(page, size));
        return PageDto.of(found, found.getContent().stream().map(this::toRow).toList());
    }

    @PutMapping("/profiles/{id}")
    @Transactional
    public ProfileRow updateProfile(@AuthenticationPrincipal AuthPrincipal principal,
                                    @PathVariable Long id, @RequestBody ProfileRequest request) {
        LearnerProfile profile = profileRepository.findById(id)
                .orElseThrow(() -> notFound("Профиль не найден"));
        profile.setDisplayName(optional(request.displayName()));
        if (request.xp() != null) {
            check(request.xp() >= 0, "XP не может быть отрицательным");
            profile.setXp(request.xp());
        }
        if (request.streakDays() != null) {
            check(request.streakDays() >= 0, "Серия не может быть отрицательной");
            profile.setStreakDays(request.streakDays());
        }
        LearnerProfile saved = profileRepository.save(profile);
        audit.log(principal, AdminAuditService.UPDATE, "PROFILE", id,
                "Профиль изменён: " + saved.getClientId() + " (XP " + saved.getXp() + ")");
        return toRow(saved);
    }

    /**
     * Profilni butunlay o'chirish: sinov natijalari, jihozlar va suhbatlar bilan
     * birga. Bu qaytarilmaydigan amal — «hammasini unut» talabi uchun.
     */
    @DeleteMapping("/profiles/{id}")
    @Transactional
    public void deleteProfile(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        LearnerProfile profile = profileRepository.findById(id)
                .orElseThrow(() -> notFound("Профиль не найден"));
        quizResultRepository.deleteByProfileId(id);
        equipmentRepository.deleteByProfileId(id);
        filmWatchRepository.deleteByProfileId(id);
        for (Conversation conversation : conversationRepository.findByClientId(profile.getClientId())) {
            chatMessageRepository.deleteByConversationId(conversation.getId());
            conversationRepository.delete(conversation);
        }
        profileRepository.delete(profile);
        audit.log(principal, AdminAuditService.DELETE, "PROFILE", id,
                "Профиль полностью удалён: " + profile.getClientId());
    }

    /** Bo'sh qidiruv — bo'sh satr: shunda LIKE hamma narsaga mos keladi. */
    private static String query(String q) {
        return q == null ? "" : q.trim();
    }

    private ProfileRow toRow(LearnerProfile p) {
        Levels.LevelInfo info = Levels.of(p.getXp());
        String username = p.getUserId() == null ? null
                : userRepository.findById(p.getUserId()).map(User::getUsername).orElse(null);
        return new ProfileRow(p.getId(), p.getClientId(), p.getDisplayName(), p.getXp(), info.level(),
                info.rankUz(), info.rankEmoji(), p.getStreakDays(), p.getLastActiveDate(),
                p.getUserId(), username, p.getAvatarGender(), p.getAvatarArchetype(),
                p.getFirstName(), p.getLastName(), p.getBirthDate(),
                p.getRegionUz(), p.getDistrictUz(), p.getSchoolUz());
    }
}
