package uz.tiriktarix.film;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FilmRepository extends JpaRepository<Film, Long> {

    List<Film> findAllByOrderByOrdinalAscIdAsc();

    /** Tanlangan tarixning filmlari (V105). */
    List<Film> findByCountryOrderByOrdinalAscIdAsc(String country);

    List<Film> findByEraIdOrderByOrdinalAscIdAsc(Long eraId);

    List<Film> findByHeroIdOrderByOrdinalAscIdAsc(Long heroId);

    // ===== Boshqaruv paneli =====

    long countByStatus(String status);

    long countByEraId(Long eraId);

    long countByHeroId(Long heroId);
}
