package uz.tiriktarix.avatar;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AvatarEquipmentRepository
        extends JpaRepository<AvatarEquipment, AvatarEquipment.Key> {

    List<AvatarEquipment> findByProfileId(Long profileId);

    void deleteByProfileIdAndSlot(Long profileId, String slot);

    /** Profil o'chirilganda — boshqaruv paneli. */
    void deleteByProfileId(Long profileId);
}
