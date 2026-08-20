package uz.tiriktarix.chat;

import java.time.OffsetDateTime;
import java.util.List;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ChatMessageRepository extends JpaRepository<ChatMessage, Long> {

    List<ChatMessage> findByConversationIdOrderByCreatedAt(Long conversationId);

    List<ChatMessage> findByConversationIdInOrderByCreatedAt(List<Long> conversationIds);

    // ===== Boshqaruv paneli =====

    long countByConversationId(Long conversationId);

    long countByFactCardId(Long factCardId);

    long countByRefusalType(ChatMessage.RefusalType refusalType);

    long countByCreatedAtAfter(OffsetDateTime since);

    void deleteByConversationId(Long conversationId);

    /**
     * Javobsiz qolgan savollar (refusalType = NO_FACT). Bu panelning eng
     * qimmatli ro'yxati: har bir bunday yozuv — bolaning savoli, unga fakt
     * kartochkasi yetishmagan. Demak kontent rejasi shu yerdan tug'iladi.
     */
    List<ChatMessage> findByRefusalTypeOrderByCreatedAtDesc(ChatMessage.RefusalType refusalType,
                                                           Pageable pageable);

    /** Suhbatlar ro'yxati uchun: xabarlar soni va oxirgi xabar vaqti (bitta so'rovda). */
    @Query("""
            select m.conversationId, count(m), max(m.createdAt) from ChatMessage m
             where m.conversationId in :ids
             group by m.conversationId
            """)
    List<Object[]> summaryOfConversations(@Param("ids") List<Long> ids);

    /** Kartochkalar ro'yxati uchun: har biri suhbatlarda necha marta javob bo'lgan. */
    @Query("""
            select m.factCardId, count(m) from ChatMessage m
             where m.factCardId is not null
             group by m.factCardId
            """)
    List<Object[]> countGroupedByFactCard();
}
