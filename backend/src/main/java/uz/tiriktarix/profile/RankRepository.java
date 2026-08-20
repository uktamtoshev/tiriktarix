package uz.tiriktarix.profile;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RankRepository extends JpaRepository<Rank, Long> {

    List<Rank> findAllByOrderByMinLevelAsc();
}
