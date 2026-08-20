package uz.tiriktarix.profile;

import java.time.LocalDate;
import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface LearnerProfileRepository extends JpaRepository<LearnerProfile, Long> {

    Optional<LearnerProfile> findByClientId(String clientId);

    Optional<LearnerProfile> findByUserId(Long userId);

    // ===== Boshqaruv paneli =====

    long countByLastActiveDate(LocalDate date);

    long countByLastActiveDateAfter(LocalDate date);

    long countByUserIdIsNotNull();

    /**
     * Qidiruv. Bo'sh so'rov uchun {@code ""} yuboriladi va u hamma narsaga mos
     * keladi — «:q is null» shakli ataylab ishlatilmagan: PostgreSQL bunday
     * bog'lamning turini aniqlay olmay `lower(bytea)` deb xato beradi.
     */
    @Query("""
            select p from LearnerProfile p
             where lower(p.clientId) like lower(concat('%', :q, '%'))
                or lower(coalesce(p.displayName, '')) like lower(concat('%', :q, '%'))
                or lower(coalesce(p.firstName, '')) like lower(concat('%', :q, '%'))
                or lower(coalesce(p.lastName, '')) like lower(concat('%', :q, '%'))
                or lower(coalesce(p.schoolUz, '')) like lower(concat('%', :q, '%'))
             order by p.xp desc, p.id asc
            """)
    Page<LearnerProfile> search(@Param("q") String q, Pageable pageable);

    @Query("select coalesce(sum(p.xp), 0) from LearnerProfile p")
    long totalXp();

    // ===== Reyting jadvali (ochiq) =====

    /**
     * «Butun davr» reytingi. XP yig'magan profillar chiqarilmaydi — aks holda
     * jadval hech narsa qilmagan anonim yozuvlar bilan to'lib ketadi.
     * Teng XP da eskiroq profil yuqorida turadi (id o'sish tartibida).
     */
    @Query("select p from LearnerProfile p where p.xp > 0 order by p.xp desc, p.id asc")
    Page<LearnerProfile> ranking(Pageable pageable);

    /**
     * Berilgan profil oldida nechta o'yinchi turibdi. O'rin = shu son + 1.
     * Saralash `ranking()` bilan bir xil bo'lishi shart, aks holda o'rin
     * jadvaldagi qatordan farq qiladi.
     */
    @Query("""
            select count(p) from LearnerProfile p
             where p.xp > 0
               and (p.xp > :xp or (p.xp = :xp and p.id < :id))
            """)
    long aheadOf(@Param("xp") int xp, @Param("id") Long id);
}
