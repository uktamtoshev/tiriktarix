package uz.tiriktarix.hero;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HeroRepository extends JpaRepository<Hero, Long> {

    Optional<Hero> findBySlug(String slug);

    /** Tanlangan tarixning ajdodlari (V105). */
    List<Hero> findByCountry(String country);

    // ===== Boshqaruv paneli =====

    List<Hero> findAllByOrderByIdAsc();

    long countByEraId(Long eraId);

    long countByBiographyVerifiedFalse();
}
