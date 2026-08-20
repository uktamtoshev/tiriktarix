package uz.tiriktarix.chat;

import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ConversationRepository extends JpaRepository<Conversation, Long> {

    Optional<Conversation> findFirstByClientIdAndHeroIdOrderByStartedAtDesc(String clientId, Long heroId);

    long countByClientId(String clientId);

    @Query("select count(distinct c.heroId) from Conversation c where c.clientId = :clientId")
    long countDistinctHeroesByClientId(@Param("clientId") String clientId);

    // ===== Boshqaruv paneli =====

    Page<Conversation> findAllByOrderByStartedAtDesc(Pageable pageable);

    Page<Conversation> findByHeroIdOrderByStartedAtDesc(Long heroId, Pageable pageable);

    long countByHeroId(Long heroId);

    List<Conversation> findByClientId(String clientId);

    /** Qaysi ajdod bilan qancha suhbat bo'lgan — panel reytingi. */
    @Query("select c.heroId, count(c) from Conversation c group by c.heroId order by count(c) desc")
    List<Object[]> countGroupedByHero();
}
