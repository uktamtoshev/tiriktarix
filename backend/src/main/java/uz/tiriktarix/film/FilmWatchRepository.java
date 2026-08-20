package uz.tiriktarix.film;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FilmWatchRepository extends JpaRepository<FilmWatch, Long> {

    Optional<FilmWatch> findByProfileIdAndFilmId(Long profileId, Long filmId);

    List<FilmWatch> findByProfileId(Long profileId);

    void deleteByProfileId(Long profileId);
}
