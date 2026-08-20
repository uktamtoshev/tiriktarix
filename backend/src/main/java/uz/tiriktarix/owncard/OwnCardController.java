package uz.tiriktarix.owncard;

import jakarta.validation.constraints.NotBlank;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.ProfileService;

/**
 * «Mening kartalarim» (V104) — o'quvchining o'z flesh-kartalari.
 *
 * <p>Manzil {@code clientId} bilan, xuddi profil va sinov natijalari kabi:
 * mehmon ham ishlatishi mumkin, ro'yxatdan o'tgan bola esa kartalarini
 * istalgan qurilmada ko'radi.
 *
 * <p>EGALIK. Har amal profil bo'yicha cheklangan: begona kartani id bo'yicha
 * o'chirib bo'lmaydi.
 */
@RestController
@RequestMapping("/api/own-cards")
public class OwnCardController {

    /** Bitta bolaga ruxsat etilgan karta soni — cheksiz o'sishdan himoya. */
    private static final int MAX_CARDS = 500;

    public record OwnCardDto(Long id, String frontUz, String backUz, long createdAt) {

        static OwnCardDto from(OwnCard c) {
            return new OwnCardDto(c.getId(), c.getFrontUz(), c.getBackUz(),
                    c.getCreatedAt().toEpochMilli());
        }
    }

    public record CreateRequest(@NotBlank String frontUz, @NotBlank String backUz) {
    }

    private final OwnCardRepository repository;
    private final ProfileService profileService;

    public OwnCardController(OwnCardRepository repository, ProfileService profileService) {
        this.repository = repository;
        this.profileService = profileService;
    }

    @GetMapping("/{clientId}")
    public List<OwnCardDto> list(@PathVariable String clientId) {
        LearnerProfile profile = profileService.getOrCreate(clientId);
        return repository.findByProfileIdOrderByCreatedAtDesc(profile.getId())
                .stream().map(OwnCardDto::from).toList();
    }

    @PostMapping("/{clientId}")
    @Transactional
    public OwnCardDto create(@PathVariable String clientId, @RequestBody CreateRequest request) {
        LearnerProfile profile = profileService.getOrCreate(clientId);

        String front = trimmed(request.frontUz(), "Kartaning old tomoni", 500);
        String back = trimmed(request.backUz(), "Kartaning orqa tomoni", 2000);

        if (repository.countByProfileId(profile.getId()) >= MAX_CARDS) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Kartalar soni chegarasiga yetdi (" + MAX_CARDS + "). Keraksizlarini o'chir.");
        }
        return OwnCardDto.from(repository.save(new OwnCard(profile.getId(), front, back)));
    }

    /**
     * O'chirish qolgan ro'yxatni qaytaradi — mijozdagi umumiy {@code api()}
     * yordamchisi har doim JSON kutadi, va bo'sh javob uni yiqitardi.
     */
    @DeleteMapping("/{clientId}/{id}")
    @Transactional
    public List<OwnCardDto> delete(@PathVariable String clientId, @PathVariable Long id) {
        LearnerProfile profile = profileService.getOrCreate(clientId);
        OwnCard card = repository.findByIdAndProfileId(id, profile.getId())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Karta topilmadi"));
        repository.delete(card);
        return repository.findByProfileIdOrderByCreatedAtDesc(profile.getId())
                .stream().map(OwnCardDto::from).toList();
    }

    /** Xato matni bolaga o'zbekcha ko'rinadi — shuning uchun aniq yoziladi. */
    private static String trimmed(String value, String field, int max) {
        String v = value == null ? "" : value.trim();
        if (v.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, field + " bo'sh bo'lmasligi kerak");
        }
        if (v.length() > max) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    field + " juda uzun (eng ko'pi " + max + " belgi)");
        }
        return v;
    }
}
