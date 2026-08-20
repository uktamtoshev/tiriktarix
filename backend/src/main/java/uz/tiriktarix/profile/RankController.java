package uz.tiriktarix.profile;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Unvonlar zinapoyasi (V107) — profil sahifasidagi «Unvonlar» lentasi uchun.
 *
 * <p>Ilgari bu ro'yxat frontendda takrorlangan edi va joriy unvon O'ZBEKCHA
 * NOM bo'yicha topilardi. Unvon nomi tuzatilsa, lenta hech qaysi pog'onani
 * belgilamay qolardi. Endi ro'yxat bazadan keladi va joriy pog'ona
 * {@code minLevel} bo'yicha aniqlanadi — matnga bog'liq emas.
 *
 * <p>Ochiq endpoint: shaxsiy ma'lumot yo'q, faqat o'yin zinapoyasi.
 */
@RestController
@RequestMapping("/api/ranks")
public class RankController {

    public record RankDto(int minLevel, String nameUz, String nameRu, String emoji) {
    }

    private final RankRepository repository;

    public RankController(RankRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    @Transactional(readOnly = true)
    public List<RankDto> list() {
        return repository.findAllByOrderByMinLevelAsc().stream()
                .map(r -> new RankDto(r.getMinLevel(), r.getNameUz(), r.getNameRu(), r.getEmoji()))
                .toList();
    }
}
