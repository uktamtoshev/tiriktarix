package uz.tiriktarix.event;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HistoricalEventRepository extends JpaRepository<HistoricalEvent, Long> {

    List<HistoricalEvent> findByEraIdOrderByYearFrom(Long eraId);

    List<HistoricalEvent> findAllByOrderByYearFrom();

    /** Tanlangan tarixning voqealari (V105). */
    List<HistoricalEvent> findByCountryOrderByYearFrom(String country);

    // ===== Boshqaruv paneli =====

    long countByEraId(Long eraId);
}
