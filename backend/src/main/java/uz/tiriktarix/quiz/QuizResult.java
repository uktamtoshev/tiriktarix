package uz.tiriktarix.quiz;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.OffsetDateTime;

@Entity
@Table(name = "quiz_results")
public class QuizResult {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long profileId;

    /** Qamrov: hero:{slug}, era:{code} yoki riddle. */
    private String scope;

    private int score;

    private int total;

    private int xpEarned;

    private OffsetDateTime createdAt;

    protected QuizResult() {
    }

    public QuizResult(Long profileId, String scope, int score, int total, int xpEarned) {
        this.profileId = profileId;
        this.scope = scope;
        this.score = score;
        this.total = total;
        this.xpEarned = xpEarned;
        this.createdAt = OffsetDateTime.now();
    }

    public Long getId() {
        return id;
    }

    public Long getProfileId() {
        return profileId;
    }

    public String getScope() {
        return scope;
    }

    public int getScore() {
        return score;
    }

    public int getTotal() {
        return total;
    }

    public int getXpEarned() {
        return xpEarned;
    }

    public OffsetDateTime getCreatedAt() {
        return createdAt;
    }
}
