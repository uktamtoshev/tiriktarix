package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.pageable;

import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.admin.AdminSupport.PageDto;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.chat.ChatMessage;
import uz.tiriktarix.chat.ChatMessageRepository;
import uz.tiriktarix.chat.Conversation;
import uz.tiriktarix.chat.ConversationRepository;
import uz.tiriktarix.hero.Hero;
import uz.tiriktarix.hero.HeroRepository;

/**
 * Suhbatlar moderatsiyasi.
 *
 * <p>Eng muhim bo'lim — «javobsiz savollar» ({@code refusalType = NO_FACT}).
 * Bunday har bir yozuv bolaning ajdodga bergan savoli bo'lib, unga fakt
 * kartochkasi topilmagan. Ya'ni bu ro'yxat — kontent rejasining o'zi: qaysi
 * mavzuda kartochka yozish kerakligini bolalarning o'zi aytib beradi.
 */
@RestController
@RequestMapping("/api/admin")
public class AdminChatController {

    public record ConversationRow(Long id, Long heroId, String heroNameUz, String clientId,
                                  OffsetDateTime startedAt, long messages,
                                  OffsetDateTime lastMessageAt) {
    }

    public record MessageRow(Long id, String role, String textUz, String refusalType,
                             Long factCardId, OffsetDateTime createdAt) {

        static MessageRow from(ChatMessage m) {
            return new MessageRow(m.getId(), m.getRole() == null ? null : m.getRole().name(),
                    m.getTextUz(), m.getRefusalType() == null ? null : m.getRefusalType().name(),
                    m.getFactCardId(), m.getCreatedAt());
        }
    }

    /** Javobsiz savol: bolaning savoli + ajdodning rad javobi. */
    public record UnansweredRow(Long conversationId, Long heroId, String heroNameUz,
                                String questionUz, OffsetDateTime askedAt) {
    }

    private final ConversationRepository conversationRepository;
    private final ChatMessageRepository chatMessageRepository;
    private final HeroRepository heroRepository;
    private final AdminAuditService audit;

    public AdminChatController(ConversationRepository conversationRepository,
                               ChatMessageRepository chatMessageRepository,
                               HeroRepository heroRepository, AdminAuditService audit) {
        this.conversationRepository = conversationRepository;
        this.chatMessageRepository = chatMessageRepository;
        this.heroRepository = heroRepository;
        this.audit = audit;
    }

    @GetMapping("/conversations")
    public PageDto<ConversationRow> conversations(@RequestParam(required = false) Long heroId,
                                                  @RequestParam(defaultValue = "0") int page,
                                                  @RequestParam(defaultValue = "25") int size) {
        Page<Conversation> found = heroId == null
                ? conversationRepository.findAllByOrderByStartedAtDesc(pageable(page, size))
                : conversationRepository.findByHeroIdOrderByStartedAtDesc(heroId, pageable(page, size));

        List<Long> ids = found.getContent().stream().map(Conversation::getId).toList();
        Map<Long, Object[]> summary = ids.isEmpty() ? Map.of()
                : chatMessageRepository.summaryOfConversations(ids).stream()
                .collect(Collectors.toMap(row -> (Long) row[0], row -> row, (a, b) -> a));
        Map<Long, String> heroNames = heroNames();

        List<ConversationRow> rows = found.getContent().stream().map(c -> {
            Object[] row = summary.get(c.getId());
            return new ConversationRow(c.getId(), c.getHeroId(),
                    heroNames.getOrDefault(c.getHeroId(), "—"), c.getClientId(), c.getStartedAt(),
                    row == null ? 0 : ((Number) row[1]).longValue(),
                    row == null ? null : (OffsetDateTime) row[2]);
        }).toList();
        return PageDto.of(found, rows);
    }

    @GetMapping("/conversations/{id}/messages")
    public List<MessageRow> messages(@PathVariable Long id) {
        if (!conversationRepository.existsById(id)) {
            throw notFound("Диалог не найден");
        }
        return chatMessageRepository.findByConversationIdOrderByCreatedAt(id).stream()
                .map(MessageRow::from).toList();
    }

    @DeleteMapping("/conversations/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        Conversation conversation = conversationRepository.findById(id)
                .orElseThrow(() -> notFound("Диалог не найден"));
        chatMessageRepository.deleteByConversationId(id);
        conversationRepository.delete(conversation);
        audit.log(principal, AdminAuditService.DELETE, "CHAT", id,
                "Диалог удалён (clientId " + conversation.getClientId() + ")");
    }

    /**
     * Javobsiz qolgan savollar. Rad javobi ajdodniki, savol esa undan oldingi
     * bolaning xabari — shuning uchun juftlik xotirada tuziladi: ikkita so'rov,
     * har bir yozuv uchun alohida so'rovsiz.
     */
    @GetMapping("/chat/unanswered")
    public List<UnansweredRow> unanswered(@RequestParam(defaultValue = "50") int limit) {
        List<ChatMessage> refusals = chatMessageRepository.findByRefusalTypeOrderByCreatedAtDesc(
                ChatMessage.RefusalType.NO_FACT, PageRequest.of(0, Math.min(Math.max(limit, 1), 200)));
        if (refusals.isEmpty()) {
            return List.of();
        }

        List<Long> conversationIds = refusals.stream().map(ChatMessage::getConversationId).distinct().toList();
        Map<Long, List<ChatMessage>> byConversation = chatMessageRepository
                .findByConversationIdInOrderByCreatedAt(conversationIds).stream()
                .collect(Collectors.groupingBy(ChatMessage::getConversationId,
                        HashMap::new, Collectors.toList()));
        Map<Long, Conversation> conversations = conversationRepository.findAllById(conversationIds).stream()
                .collect(Collectors.toMap(Conversation::getId, c -> c));
        Map<Long, String> heroNames = heroNames();

        List<UnansweredRow> rows = new ArrayList<>();
        for (ChatMessage refusal : refusals) {
            String question = questionBefore(byConversation.get(refusal.getConversationId()), refusal);
            Conversation conversation = conversations.get(refusal.getConversationId());
            Long heroId = conversation == null ? null : conversation.getHeroId();
            rows.add(new UnansweredRow(refusal.getConversationId(), heroId,
                    heroNames.getOrDefault(heroId, "—"), question, refusal.getCreatedAt()));
        }
        return rows;
    }

    /** Rad javobidan oldingi eng yaqin bola savoli. */
    private static String questionBefore(List<ChatMessage> messages, ChatMessage refusal) {
        if (messages == null) {
            return null;
        }
        String question = null;
        for (ChatMessage message : messages) {
            if (message.getId().equals(refusal.getId())) {
                break;
            }
            if (message.getRole() == ChatMessage.Role.USER) {
                question = message.getTextUz();
            }
        }
        return question;
    }

    private Map<Long, String> heroNames() {
        return heroRepository.findAll().stream()
                .collect(Collectors.toMap(Hero::getId, Hero::getNameUz));
    }
}
