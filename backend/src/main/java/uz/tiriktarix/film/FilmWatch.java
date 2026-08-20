package uz.tiriktarix.film;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.OffsetDateTime;

/**
 * Filmni ko'rish hisobi: qachon boshlangan, qachon to'liq tugatilgan va
 * ko'rish/test XP lari berilganmi. Profil va film juftligi uchun bitta yozuv.
 */
@Entity
@Table(name = "film_watches")
public class FilmWatch {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long profileId;

    private Long filmId;

    /** Oxirgi «ko'rishni boshladim» vaqti — halollik tekshiruvi shunga tayanadi. */
    private OffsetDateTime startedAt;

    /** Birinchi halol to'liq ko'rish vaqti. NULL — hali tugatilmagan. */
    private OffsetDateTime completedAt;

    private boolean watchXpAwarded;

    private boolean quizXpAwarded;

    protected FilmWatch() {
    }

    public FilmWatch(Long profileId, Long filmId) {
        this.profileId = profileId;
        this.filmId = filmId;
    }

    public Long getId() {
        return id;
    }

    public Long getProfileId() {
        return profileId;
    }

    public Long getFilmId() {
        return filmId;
    }

    public OffsetDateTime getStartedAt() {
        return startedAt;
    }

    public void setStartedAt(OffsetDateTime startedAt) {
        this.startedAt = startedAt;
    }

    public OffsetDateTime getCompletedAt() {
        return completedAt;
    }

    public void setCompletedAt(OffsetDateTime completedAt) {
        this.completedAt = completedAt;
    }

    public boolean isWatchXpAwarded() {
        return watchXpAwarded;
    }

    public void setWatchXpAwarded(boolean watchXpAwarded) {
        this.watchXpAwarded = watchXpAwarded;
    }

    public boolean isQuizXpAwarded() {
        return quizXpAwarded;
    }

    public void setQuizXpAwarded(boolean quizXpAwarded) {
        this.quizXpAwarded = quizXpAwarded;
    }
}
