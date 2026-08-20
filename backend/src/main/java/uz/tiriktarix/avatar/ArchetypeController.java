package uz.tiriktarix.avatar;

import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Qahramon tiplari ro'yxati (V107).
 *
 * <p>NEGA OCHIQ ENDPOINT. Tip ro'yxatdan o'tishning to'rtinchi qadamida
 * tanlanadi — o'shanda bolada hali token yo'q va {@code /api/avatar} ga
 * murojaat qilib bo'lmaydi. Shu sabab ilgari ro'yxat frontendda takrorlangan
 * edi; endi u bitta joydan — bazadan keladi.
 *
 * <p>Ichida shaxsiy ma'lumot yo'q: faqat tip nomi va ta'rifi.
 */
@RestController
@RequestMapping("/api/archetypes")
public class ArchetypeController {

    public record ArchetypeDto(String code, String gender, String nameUz, String nameRu,
                               String taglineUz, String taglineRu) {

        static ArchetypeDto from(Archetype a) {
            return new ArchetypeDto(a.getCode(), a.getGender(), a.getNameUz(), a.getNameRu(),
                    a.getTaglineUz(), a.getTaglineRu());
        }
    }

    private final ArchetypeService archetypes;

    public ArchetypeController(ArchetypeService archetypes) {
        this.archetypes = archetypes;
    }

    @GetMapping
    public List<ArchetypeDto> list() {
        return archetypes.all().stream().map(ArchetypeDto::from).toList();
    }
}
