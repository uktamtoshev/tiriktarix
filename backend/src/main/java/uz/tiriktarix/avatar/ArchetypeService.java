package uz.tiriktarix.avatar;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Qahramon tiplari ustidagi qoidalar (V107).
 *
 * <p>Ilgari bu {@code Archetypes} statik sinfi edi va ro'yxat kodda yozilgan
 * edi — ya'ni tip nomini o'zgartirish uchun dasturchi kerak edi. Endi ro'yxat
 * bazada, qoidalar esa shu yerda.
 *
 * <p>Jadval kichik (10 qator) va kunda o'zgarmaydi, shuning uchun keshsiz
 * o'qiladi: ortiqcha murakkablikdan ko'ra to'g'ri javob muhimroq.
 */
@Service
public class ArchetypeService {

    private final ArchetypeRepository repository;

    public ArchetypeService(ArchetypeRepository repository) {
        this.repository = repository;
    }

    @Transactional(readOnly = true)
    public List<Archetype> all() {
        return repository.findAllByOrderByOrdinalAsc();
    }

    @Transactional(readOnly = true)
    public boolean isValid(String code) {
        return code != null && find(code).isPresent();
    }

    /** Tanlangan tip jinsga mos keladimi — yigit tipini qiz tanlay olmaydi. */
    @Transactional(readOnly = true)
    public boolean matchesGender(String code, String gender) {
        return find(code).map(a -> a.getGender().equals(gender)).orElse(false);
    }

    /**
     * Tip ko'rsatilmagan (yoki eskirgan) hollarda jins bo'yicha oddiy tip.
     *
     * <p>Baza bo'sh qolsa ham profil buzilmasligi kerak, shuning uchun oxirgi
     * chora sifatida shu jinsning birinchi tipi olinadi.
     */
    @Transactional(readOnly = true)
    public String defaultFor(String gender) {
        String preferred = "FEMALE".equals(gender) ? "oddiy-qiz" : "oddiy-yigit";
        if (find(preferred).isPresent()) {
            return preferred;
        }
        return all().stream()
                .filter(a -> a.getGender().equals(gender))
                .map(Archetype::getCode)
                .findFirst()
                .orElse(null);
    }

    private Optional<Archetype> find(String code) {
        return all().stream().filter(a -> a.getCode().equals(code)).findFirst();
    }
}
