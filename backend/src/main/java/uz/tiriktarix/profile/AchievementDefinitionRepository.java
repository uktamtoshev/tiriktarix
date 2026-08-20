package uz.tiriktarix.profile;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AchievementDefinitionRepository extends JpaRepository<AchievementDefinition, Long> {

    List<AchievementDefinition> findAllByOrderByOrdinalAsc();
}
