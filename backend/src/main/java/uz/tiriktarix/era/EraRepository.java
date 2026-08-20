package uz.tiriktarix.era;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EraRepository extends JpaRepository<Era, Long> {

    Optional<Era> findByCode(String code);

    /** Tanlangan tarixning davrlari (V105). */
    List<Era> findByCountryOrderByOrdinalAsc(String country);

    // ===== Boshqaruv paneli =====

    List<Era> findAllByOrderByOrdinalAscIdAsc();
}
