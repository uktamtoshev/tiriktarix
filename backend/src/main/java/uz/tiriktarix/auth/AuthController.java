package uz.tiriktarix.auth;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.avatar.AvatarService;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.Levels;

/**
 * Akkaunt endpointlari. Elektron pochta va telefon so'ralmaydi — bu bolalar
 * platformasi, faqat taxallus va parol.
 */
@RestController
@RequestMapping("/api/auth")
public class AuthController {

    /**
     * Ro'yxatdan o'tish so'rovi. `firstName`…`school` — V91 dan boshlab
     * majburiy: maktablar bilan ishlash uchun bola kim ekani va qayerda
     * o'qishi kerak. `birthDate` — ISO sana (yyyy-MM-dd).
     */
    public record RegisterRequest(String username, String password, String gender,
                                  String archetype, String displayName,
                                  String firstName, String lastName, String birthDate,
                                  String region, String district, String school,
                                  String anonymousClientId) {
    }

    public record LoginRequest(String username, String password) {
    }

    public record ProfileDto(String clientId, String displayName, int xp, int streakDays,
                             int level, String rankUz, String rankEmoji,
                             int xpIntoLevel, int xpForNext, String avatarGender,
                             String avatarArchetype, String rankRu) {

        /*
          Tip endi bazadan olinadi (V107), shuning uchun uni chaqiruvchi beradi:
          statik fabrika `AvatarService` ga o'zi murojaat qila olmaydi.
        */
        static ProfileDto from(LearnerProfile p, String archetype) {
            Levels.LevelInfo info = Levels.of(p.getXp());
            return new ProfileDto(p.getClientId(), p.getDisplayName(), p.getXp(), p.getStreakDays(),
                    info.level(), info.rankUz(), info.rankEmoji(), info.xpIntoLevel(),
                    info.xpForNext(), p.getAvatarGender(), archetype, info.rankRu());
        }
    }

    public record AuthResponse(String token, String clientId, String username, ProfileDto profile) {
    }

    private final AuthService authService;
    private final AvatarService avatarService;

    public AuthController(AuthService authService, AvatarService avatarService) {
        this.authService = authService;
        this.avatarService = avatarService;
    }

    /**
     * Taxallus bandligini OLDINDAN tekshirish. Sababi: ro'yxatdan o'tish to'rt
     * qadamdan iborat, bandlik esa faqat oxirgi qadamda ma'lum bo'lardi — bola
     * hamma maydonlarni to'ldirib bo'lib, boshiga qaytishga majbur edi.
     * Endi birinchi qadamda darhol aytiladi.
     */
    @GetMapping("/username-available")
    public UsernameAvailability usernameAvailable(@RequestParam String username) {
        return authService.usernameAvailability(username);
    }

    public record UsernameAvailability(boolean valid, boolean available) {
    }

    @PostMapping("/register")
    public AuthResponse register(@RequestBody RegisterRequest request) {
        var result = authService.register(request, request.anonymousClientId());
        return new AuthResponse(result.token(), result.clientId(), request.username(),
                ProfileDto.from(result.profile(), avatarService.archetypeOf(result.profile())));
    }

    @PostMapping("/login")
    public AuthResponse login(@RequestBody LoginRequest request) {
        var result = authService.login(request.username(), request.password());
        return new AuthResponse(result.token(), result.clientId(), request.username(),
                ProfileDto.from(result.profile(), avatarService.archetypeOf(result.profile())));
    }

    @GetMapping("/me")
    public AuthResponse me(@AuthenticationPrincipal AuthPrincipal principal) {
        if (principal == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Avval tizimga kiring");
        }
        LearnerProfile profile = authService.profileOf(principal);
        return new AuthResponse(null, profile.getClientId(),
                authService.usernameOf(principal.userId()), ProfileDto.from(profile, avatarService.archetypeOf(profile)));
    }
}
