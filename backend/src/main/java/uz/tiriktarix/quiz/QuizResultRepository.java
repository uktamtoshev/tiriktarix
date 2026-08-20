package uz.tiriktarix.quiz;

import java.time.OffsetDateTime;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface QuizResultRepository extends JpaRepository<QuizResult, Long> {

    List<QuizResult> findByProfileIdOrderByCreatedAtDesc(Long profileId);

    // ===== «XP faqat birinchi urinish uchun» tekshiruvlari =====

    /** era:/hero: — natija qiyinlik qo'shimchasi bilan saqlanadi, prefiks yetadi. */
    boolean existsByProfileIdAndScopeStartingWith(Long profileId, String scopePrefix);

    /** film:{id} — scope aynan shu ko'rinishda saqlanadi. */
    boolean existsByProfileIdAndScope(Long profileId, String scope);

    /** Kunlik topishmoq: bugungi (Toshkent) urinish bormi. */
    boolean existsByProfileIdAndScopeAndCreatedAtAfter(Long profileId, String scope,
                                                       OffsetDateTime after);

    // ===== Boshqaruv paneli =====

    long countByCreatedAtAfter(OffsetDateTime since);

    void deleteByProfileId(Long profileId);

    /**
     * Kunlik faollik grafigi. Sana Toshkent mintaqasida hisoblanadi — aks holda
     * kechqurungi sinovlar ertangi kunga tushib qolardi.
     */
    @Query(value = """
            select to_char((created_at at time zone 'Asia/Tashkent')::date, 'YYYY-MM-DD') as day,
                   count(*)                                                                as attempts,
                   coalesce(sum(score), 0)                                                 as correct,
                   coalesce(sum(total), 0)                                                 as asked
              from quiz_results
             where created_at >= :since
             group by day
             order by day
            """, nativeQuery = true)
    List<Object[]> dailyActivity(@Param("since") OffsetDateTime since);

    // ===== Reyting jadvali: davr bo'yicha kesim =====

    /**
     * Davr ichida yig'ilgan XP — profil bo'yicha jamlangan holda, kamayish
     * tartibida.
     *
     * NEGA SHUNDAY. `learner_profiles.xp` faqat JAMI qiymatni saqlaydi, unda
     * tarix yo'q. «Hafta» va «oy» kesimini olish uchun yagona manba —
     * `quiz_results`: har bir yozuvda `xp_earned` va `created_at` bor.
     * XP hisoblash mantig'iga tegilmaydi, faqat mavjud yozuvlar o'qiladi.
     */
    @Query("""
            select r.profileId, coalesce(sum(r.xpEarned), 0) as gained
              from QuizResult r
             where r.createdAt >= :since
             group by r.profileId
            having coalesce(sum(r.xpEarned), 0) > 0
             order by gained desc, r.profileId asc
            """)
    List<Object[]> xpEarnedSince(@Param("since") OffsetDateTime since);

    /** Eng ko'p yechilgan sinovlar: `hero:{slug}` / `era:{code}` / `riddle`. */
    @Query("""
            select r.scope, count(r), coalesce(avg(cast(r.score as double) / r.total), 0)
              from QuizResult r
             group by r.scope
             order by count(r) desc
            """)
    List<Object[]> scopePopularity();
}
