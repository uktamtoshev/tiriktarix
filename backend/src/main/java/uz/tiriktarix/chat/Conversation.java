package uz.tiriktarix.chat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.OffsetDateTime;

@Entity
@Table(name = "conversations")
public class Conversation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long heroId;

    private String clientId;

    private OffsetDateTime startedAt;

    protected Conversation() {
    }

    public Conversation(Long heroId, String clientId) {
        this.heroId = heroId;
        this.clientId = clientId;
        this.startedAt = OffsetDateTime.now();
    }

    public Long getId() {
        return id;
    }

    public Long getHeroId() {
        return heroId;
    }

    public String getClientId() {
        return clientId;
    }

    public OffsetDateTime getStartedAt() {
        return startedAt;
    }
}
