package uz.tiriktarix.profile;

import jakarta.annotation.PostConstruct;
import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * Unvon zinapoyasini bazadan {@link Levels} ga yuklaydi (V107).
 *
 * <p>ISHGA TUSHISHDA TEKSHIRADI. Zinapoya bo'sh bo'lsa yoki 1-darajadan
 * boshlanmasa — dastur ko'tarilmaydi. Sababi: unvonsiz profil bolaga buzuq
 * sahifa ko'rsatadi, va bu xatoni ishga tushish paytida topib olish
 * foydalanuvchi uni topishidan ancha yaxshi. Buni CHECK bilan ifodalab
 * bo'lmaydi — u bitta qatorni ko'radi, butun jadvalni emas.
 *
 * <p>KESHNI YANGILASH. Metodist unvonni paneldan o'zgartirsa,
 * {@link #reload()} chaqiriladi.
 */
@Component
public class RankLadder {

    private final RankRepository repository;

    public RankLadder(RankRepository repository) {
        this.repository = repository;
    }

    @PostConstruct
    @Transactional(readOnly = true)
    public void reload() {
        List<Rank> rows = repository.findAllByOrderByMinLevelAsc();
        if (rows.isEmpty()) {
            throw new IllegalStateException(
                    "«ranks» jadvali bo'sh: unvonlarsiz profil sahifasi buziladi");
        }
        if (rows.get(0).getMinLevel() != 1) {
            throw new IllegalStateException(
                    "Unvonlar zinapoyasi 1-darajadan boshlanishi kerak, hozir — "
                            + rows.get(0).getMinLevel() + "-darajadan");
        }
        Levels.load(rows.stream()
                .map(r -> new Levels.Step(r.getMinLevel(), r.getNameUz(), r.getNameRu(), r.getEmoji()))
                .toList());
    }
}
