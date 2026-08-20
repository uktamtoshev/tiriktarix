package uz.tiriktarix.avatar;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AvatarItemRepository extends JpaRepository<AvatarItem, Long> {

    List<AvatarItem> findAllByOrderByOrdinalAsc();

    Optional<AvatarItem> findByCode(String code);
}
