package uz.tiriktarix.avatar;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AvatarPurchaseRepository
        extends JpaRepository<AvatarPurchase, AvatarPurchase.Key> {

    List<AvatarPurchase> findByProfileId(Long profileId);

    boolean existsByProfileIdAndItemId(Long profileId, Long itemId);

    /** Profil o'chirilganda — boshqaruv paneli. */
    void deleteByProfileId(Long profileId);
}
