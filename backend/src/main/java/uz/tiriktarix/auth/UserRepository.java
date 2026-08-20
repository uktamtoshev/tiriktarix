package uz.tiriktarix.auth;

import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Long> {

    /** Taxallus katta-kichik harfdan qat'i nazar qidiriladi. */
    @Query("select u from User u where lower(u.username) = lower(:username)")
    Optional<User> findByUsernameIgnoreCase(@Param("username") String username);

    // ===== Boshqaruv paneli =====

    long countByRole(String role);

    /**
     * Qidiruv. Bo'sh so'rov uchun {@code ""} yuboriladi va u hamma narsaga
     * mos keladi — «:q is null» shakli ataylab ishlatilmagan: PostgreSQL
     * bunday bog'lamning turini aniqlay olmay `lower(bytea)` deb xato beradi.
     */
    @Query("""
            select u from User u
             where lower(u.username) like lower(concat('%', :q, '%'))
             order by u.id desc
            """)
    Page<User> search(@Param("q") String q, Pageable pageable);
}
