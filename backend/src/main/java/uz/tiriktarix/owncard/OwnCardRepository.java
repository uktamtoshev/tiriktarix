package uz.tiriktarix.owncard;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OwnCardRepository extends JpaRepository<OwnCard, Long> {

    List<OwnCard> findByProfileIdOrderByCreatedAtDesc(Long profileId);

    /**
     * O'chirishdan oldin egasini tekshirish uchun: id bo'yicha topilgan karta
     * boshqa bolaniki bo'lishi mumkin.
     */
    Optional<OwnCard> findByIdAndProfileId(Long id, Long profileId);

    long countByProfileId(Long profileId);
}
