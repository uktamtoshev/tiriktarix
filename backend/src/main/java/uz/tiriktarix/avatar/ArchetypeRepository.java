package uz.tiriktarix.avatar;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArchetypeRepository extends JpaRepository<Archetype, Long> {

    List<Archetype> findAllByOrderByOrdinalAsc();
}
