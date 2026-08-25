package uz.tiriktarix.hero;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface HeroRepository extends JpaRepository<Hero, Long> {

    Optional<Hero> findBySlug(String slug);

    /**
     * Tanlangan tarixning ajdodlari (V105) buyuklik tartibida (V311):
     * S→A→B→C, daraja ichida ball bo'yicha, tenglikda ism alifbosi.
     * Daraja harf bilan saqlanadi, alifboda esa 'S' oxirida turadi — shu
     * sabab tartib CASE orqali, ustunning o'zi bilan emas.
     */
    @Query(value = """
            SELECT * FROM heroes WHERE country = :country
            ORDER BY CASE fame_tier WHEN 'S' THEN 0 WHEN 'A' THEN 1 WHEN 'B' THEN 2 ELSE 3 END,
                     fame_score DESC, name_uz ASC
            """, nativeQuery = true)
    List<Hero> findByCountryOrderByFame(String country);

    // ===== Boshqaruv paneli =====

    List<Hero> findAllByOrderByIdAsc();

    long countByEraId(Long eraId);

    long countByBiographyVerifiedFalse();
}
