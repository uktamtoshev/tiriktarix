package uz.tiriktarix.quiz;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface QuizQuestionRepository extends JpaRepository<QuizQuestion, Long> {

    List<QuizQuestion> findByHeroId(Long heroId);

    List<QuizQuestion> findByEraId(Long eraId);

    // ===== Boshqaruv paneli =====

    List<QuizQuestion> findAllByOrderByIdAsc();

    long countByHeroId(Long heroId);

    long countByEraId(Long eraId);

    long countByFactCardId(Long factCardId);

    /** Manbasiz savol — ishonchlilik konturidagi teshik, panel buni alohida sanaydi. */
    long countByFactCardIdIsNull();

    /** Kartochkalar ro'yxati uchun: har biriga nechta savol tayangan (bitta so'rovda). */
    @Query("""
            select q.factCardId, count(q) from QuizQuestion q
             where q.factCardId is not null
             group by q.factCardId
            """)
    List<Object[]> countGroupedByFactCard();
}
