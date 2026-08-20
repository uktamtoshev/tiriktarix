package uz.tiriktarix.profile;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Yutuqlarni hisoblash (V107).
 *
 * <p>MA'LUMOT BAZADA, QOIDA SHU YERDA. Bazada — yutuqning matni, emojisi va
 * chegarasi; bu yerda — qaysi ko'rsatkich uni oziqlantirishi. Shuning uchun
 * metodist yutuq nomini yoki chegarasini paneldan o'zgartira oladi, lekin
 * yangi TUR ko'rsatkich faqat kod bilan qo'shiladi.
 *
 * <p>Hech narsa saqlanmaydi: yutuq har safar profil ma'lumotlaridan qayta
 * hisoblanadi, shuning uchun olingan yutuq keyin yo'qolmaydi.
 */
@Service
public class AchievementService {

    /** Interfeysga chiqadigan yutuq — ta'rif + shu bolaning holati. */
    public record Achievement(String code, String titleUz, String descriptionUz, String emoji,
                              boolean earned, int progress, int target,
                              String titleRu, String descriptionRu) {
    }

    /** Yutuqlarni hisoblash uchun kirish ma'lumotlari. */
    public record Inputs(int xp, int streakDays, int totalQuizzes, int perfectQuizzes,
                         int totalQuestions, long conversations, long heroesTalked,
                         boolean riddleSolved) {
    }

    private final AchievementDefinitionRepository repository;

    public AchievementService(AchievementDefinitionRepository repository) {
        this.repository = repository;
    }

    @Transactional(readOnly = true)
    public List<Achievement> compute(Inputs in) {
        return repository.findAllByOrderByOrdinalAsc().stream()
                .map(d -> {
                    int progress = progressFor(d.getMetric(), in);
                    int target = d.getTarget();
                    return new Achievement(d.getCode(), d.getTitleUz(), d.getDescriptionUz(),
                            d.getEmoji(), progress >= target, Math.min(progress, target), target,
                            d.getTitleRu(), d.getDescriptionRu());
                })
                .toList();
    }

    /**
     * Ko'rsatkichning joriy qiymati.
     *
     * <p>Noma'lum qiymat bazaga CHECK tufayli kira olmaydi; agar baribir kirsa
     * — yutuq shunchaki nol progress bilan ko'rinadi va sahifa yiqilmaydi.
     */
    private static int progressFor(String metric, Inputs in) {
        AchievementDefinition.Metric parsed;
        try {
            parsed = AchievementDefinition.Metric.valueOf(metric);
        } catch (IllegalArgumentException e) {
            return 0;
        }
        return switch (parsed) {
            case XP -> in.xp();
            case STREAK_DAYS -> in.streakDays();
            case TOTAL_QUIZZES -> in.totalQuizzes();
            case PERFECT_QUIZZES -> in.perfectQuizzes();
            case TOTAL_QUESTIONS -> in.totalQuestions();
            case CONVERSATIONS -> (int) Math.min(in.conversations(), Integer.MAX_VALUE);
            case HEROES_TALKED -> (int) Math.min(in.heroesTalked(), Integer.MAX_VALUE);
            case RIDDLE_SOLVED -> in.riddleSolved() ? 1 : 0;
        };
    }
}
