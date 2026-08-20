package uz.tiriktarix.chat;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.OffsetDateTime;

@Entity
@Table(name = "chat_messages")
public class ChatMessage {

    public enum Role { USER, HERO }

    /**
     * Ikki darajali rad etish (kontseptsiya M1):
     * NO_FACT — savol qahramon haqida, lekin kartochkada javob yo'q;
     * OFF_TOPIC — savol umuman mavzudan tashqari.
     */
    public enum RefusalType { NONE, NO_FACT, OFF_TOPIC }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long conversationId;

    @Enumerated(EnumType.STRING)
    private Role role;

    private String textUz;

    @Enumerated(EnumType.STRING)
    private RefusalType refusalType;

    private Long factCardId;

    private OffsetDateTime createdAt;

    protected ChatMessage() {
    }

    public ChatMessage(Long conversationId, Role role, String textUz,
                       RefusalType refusalType, Long factCardId) {
        this.conversationId = conversationId;
        this.role = role;
        this.textUz = textUz;
        this.refusalType = refusalType;
        this.factCardId = factCardId;
        this.createdAt = OffsetDateTime.now();
    }

    public Long getId() {
        return id;
    }

    public Long getConversationId() {
        return conversationId;
    }

    public Role getRole() {
        return role;
    }

    public String getTextUz() {
        return textUz;
    }

    public RefusalType getRefusalType() {
        return refusalType;
    }

    public Long getFactCardId() {
        return factCardId;
    }

    public OffsetDateTime getCreatedAt() {
        return createdAt;
    }
}
