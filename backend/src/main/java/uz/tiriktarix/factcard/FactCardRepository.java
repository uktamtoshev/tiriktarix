package uz.tiriktarix.factcard;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FactCardRepository extends JpaRepository<FactCard, Long> {

    List<FactCard> findByHeroIdAndVerifiedTrue(Long heroId);

    List<FactCard> findByEraIdAndVerifiedTrue(Long eraId);

    List<FactCard> findByVerifiedTrue();

    /** Tanlangan tarixning tasdiqlangan kartochkalari (V105). */
    List<FactCard> findByCountryAndVerifiedTrue(String country);

    // ===== Boshqaruv paneli =====

    List<FactCard> findAllByOrderByIdAsc();

    long countByVerifiedFalse();

    long countByHeroId(Long heroId);

    long countByEraId(Long eraId);
}
