package uz.tiriktarix.map;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface MapFeatureRepository extends JpaRepository<MapFeature, Long> {

    /**
     * Davr uchun ko'rinadigan barcha qatlamlar: shu davrga biriktirilganlari va
     * davr yillari bilan kesishadigan «doimiy» qatlamlar (shaharlar).
     *
     * <p>MAMLAKAT SHARTI MAJBURIY. Shaharlarda `eraId` bo'sh — ular davrga
     * emas, yillar oralig'iga bog'langan. Mamlakat tekshirilmasa, bunday
     * qatlamlar ikkinchi tarixga ham oqib o'tadi: rus davri tanlanganda
     * ro'yxatda Samarqand va Buxoro chiqib qoladi.
     */
    @Query("""
            select f from MapFeature f
            where f.country = :country
              and (f.eraId = :eraId
                   or (f.eraId is null
                       and (f.minYear is null or f.minYear <= :yearTo)
                       and (f.maxYear is null or f.maxYear >= :yearFrom)))
            order by f.kind, f.ordinal
            """)
    List<MapFeature> findForEra(@Param("eraId") Long eraId,
                                @Param("country") String country,
                                @Param("yearFrom") int yearFrom,
                                @Param("yearTo") int yearTo);

    // ===== Boshqaruv paneli =====

    List<MapFeature> findAllByOrderByOrdinalAscIdAsc();

    long countByVerifiedFalse();

    long countByEraId(Long eraId);
}
