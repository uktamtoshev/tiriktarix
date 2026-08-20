package uz.tiriktarix.auth;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeParseException;
import java.util.UUID;
import java.util.regex.Pattern;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.avatar.AvatarService;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.LearnerProfileRepository;
import uz.tiriktarix.profile.ProfileService;

/**
 * Ro'yxatdan o'tish va kirish.
 *
 * Eng muhim jihat: ro'yxatdan o'tayotgan bola allaqachon mehmon sifatida XP
 * to'plagan bo'lishi mumkin. Shuning uchun anonim clientId yuborilsa, o'sha
 * profil akkauntga biriktiriladi va progress yo'qolmaydi.
 */
@Service
public class AuthService {

    private static final Pattern USERNAME = Pattern.compile("^[a-zA-Z0-9_]{3,20}$");
    /** Ism va familiya: harflar (o'zbek lotin apostrofi ham), chiziqcha va bo'sh joy. */
    private static final Pattern NAME = Pattern.compile("^[\\p{L}][\\p{L}'’`\\- ]{1,59}$");
    private static final int MIN_PASSWORD = 6;
    private static final int MIN_AGE = 5;

    public record AuthResult(String token, String clientId, LearnerProfile profile) {
    }

    private final UserRepository userRepository;
    private final LearnerProfileRepository profileRepository;
    private final ProfileService profileService;
    private final AvatarService avatarService;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;

    public AuthService(UserRepository userRepository,
                       LearnerProfileRepository profileRepository,
                       ProfileService profileService,
                       AvatarService avatarService,
                       PasswordEncoder passwordEncoder,
                       JwtService jwtService) {
        this.userRepository = userRepository;
        this.profileRepository = profileRepository;
        this.profileService = profileService;
        this.avatarService = avatarService;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
    }

    @Transactional
    public AuthResult register(AuthController.RegisterRequest request, String anonymousClientId) {
        String username = request.username();
        String password = request.password();
        if (username == null || !USERNAME.matcher(username).matches()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Taxallus 3–20 ta harf, raqam yoki _ bo'lishi kerak");
        }
        if (password == null || password.length() < MIN_PASSWORD) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Parol kamida 6 ta belgidan iborat bo'lsin");
        }
        if (userRepository.findByUsernameIgnoreCase(username).isPresent()) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Bu taxallus band");
        }

        String firstName = person(request.firstName(), "Ism");
        String lastName = person(request.lastName(), "Familiya");
        LocalDate birthDate = birthDate(request.birthDate());
        String region = text(request.region(), "Viloyat", 60);
        String district = text(request.district(), "Tuman", 80);
        String school = text(request.school(), "Maktab", 120);

        User user = userRepository.save(new User(username, passwordEncoder.encode(password)));

        // Mehmon profilini biriktiramiz; bo'lmasa — yangisini ochamiz
        LearnerProfile profile = null;
        if (anonymousClientId != null && !anonymousClientId.isBlank()) {
            profile = profileRepository.findByClientId(anonymousClientId)
                    .filter(p -> p.getUserId() == null)
                    .orElse(null);
        }
        if (profile == null) {
            profile = profileService.getOrCreate(UUID.randomUUID().toString());
        }
        profile.attachTo(user.getId());
        String displayName = request.displayName();
        if (displayName != null && !displayName.isBlank()) {
            profile.setDisplayName(displayName.trim());
        }
        // Haqiqiy ism DISPLAY NAME GA YOZILMAYDI: reytingda va suhbatda bola
        // taxallus bilan qoladi, ismini boshqa bolalar ko'rmaydi.
        profile.fillPersonalDetails(firstName, lastName, birthDate, region, district, school);
        profileRepository.save(profile);
        avatarService.initialise(profile, request.gender() == null ? "MALE" : request.gender(),
                request.archetype());

        return new AuthResult(jwtService.issue(user.getId(), profile.getClientId(), user.getRole()),
                profile.getClientId(), profile);
    }

    @Transactional(readOnly = true)
    public AuthResult login(String username, String password) {
        User user = userRepository.findByUsernameIgnoreCase(username == null ? "" : username)
                .filter(u -> passwordEncoder.matches(password == null ? "" : password, u.getPasswordHash()))
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.UNAUTHORIZED,
                        "Taxallus yoki parol noto'g'ri"));
        // Administratorda o'quvchi profili yo'q — u /admin orqali kiradi.
        // Aks holda bu yerda tushunarsiz «Profil topilmadi» chiqardi.
        if (user.isAdmin()) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN,
                    "Bu hisob boshqaruv paneli uchun — /admin sahifasidan kiring");
        }
        LearnerProfile profile = profileRepository.findByUserId(user.getId())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Profil topilmadi"));
        return new AuthResult(jwtService.issue(user.getId(), profile.getClientId(), user.getRole()),
                profile.getClientId(), profile);
    }

    @Transactional(readOnly = true)
    public LearnerProfile profileOf(AuthPrincipal principal) {
        return profileRepository.findByClientId(principal.clientId())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Profil topilmadi"));
    }

    @Transactional(readOnly = true)
    public String usernameOf(Long userId) {
        return userRepository.findById(userId).map(User::getUsername).orElse(null);
    }

    /**
     * Taxallus holati: shakli to'g'rimi va bandmi. Ro'yxatdan o'tishning birinchi
     * qadamida chaqiriladi — bola bandlikni oxirgi qadamda emas, darhol bilsin.
     */
    @Transactional(readOnly = true)
    public AuthController.UsernameAvailability usernameAvailability(String username) {
        boolean valid = username != null && USERNAME.matcher(username.trim()).matches();
        boolean available = valid
                && userRepository.findByUsernameIgnoreCase(username.trim()).isEmpty();
        return new AuthController.UsernameAvailability(valid, available);
    }

    // ===== Shaxsiy ma'lumotlar tekshiruvi (V91) =====

    /**
     * Ism va familiya. Raqam va belgilarga ruxsat berilmaydi — bu maydonlarga
     * taxallus yozib qo'yilmasin, chunki keyin ular maktab hisobotiga tushadi.
     * Apostrof va chiziqcha qoldiriladi: «Sa'dulla», «Abdulla-aka» haqiqiy ismlar.
     */
    private static String person(String value, String field) {
        String name = text(value, field, 60);
        if (!NAME.matcher(name).matches()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    field + " faqat harflardan iborat bo'lsin");
        }
        return name;
    }

    private static String text(String value, String field, int max) {
        String trimmed = value == null ? "" : value.trim().replaceAll("\\s+", " ");
        if (trimmed.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, field + " to'ldirilmagan");
        }
        if (trimmed.length() > max) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    field + " juda uzun (" + max + " belgidan oshmasin)");
        }
        return trimmed;
    }

    /**
     * Tug'ilgan sana. Chegaralar maktab yoshiga qarab qo'yilgan: 5 yoshdan
     * kichik bola o'zi ro'yxatdan o'tmaydi, 100 yoshdan katta esa xato kiritilgan.
     */
    private static LocalDate birthDate(String raw) {
        if (raw == null || raw.isBlank()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Tug'ilgan sana ko'rsatilmagan");
        }
        LocalDate date;
        try {
            date = LocalDate.parse(raw.trim());
        } catch (DateTimeParseException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Tug'ilgan sana noto'g'ri");
        }
        int age = Period.between(date, LocalDate.now()).getYears();
        if (date.isAfter(LocalDate.now()) || age > 100) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Tug'ilgan sanani tekshiring");
        }
        if (age < MIN_AGE) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Ro'yxatdan o'tish " + MIN_AGE + " yoshdan boshlanadi");
        }
        return date;
    }
}
