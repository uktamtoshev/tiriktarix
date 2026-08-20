package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.blockIfUsed;
import static uz.tiriktarix.admin.AdminSupport.check;
import static uz.tiriktarix.admin.AdminSupport.cleanList;
import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.required;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.chat.ChatMessageRepository;
import uz.tiriktarix.factcard.FactCard;
import uz.tiriktarix.factcard.FactCardRepository;
import uz.tiriktarix.quiz.QuizQuestionRepository;

/**
 * Fakt kartochkalari — platformaning yagona ishonchli kontent birligi.
 *
 * <p>Shu sababli bu yerdagi «tasdiqlash» tugmasi eng mas'uliyatli amal:
 * tasdiqlangan kartochkagina ajdod javobiga, test savoliga va kutubxonaga
 * chiqadi. Har bir tasdiq jurnalga yoziladi.
 */
@RestController
@RequestMapping("/api/admin/fact-cards")
public class AdminFactCardController {

    private static final String ENTITY = "FACT_CARD";

    public record FactCardDto(Long id, Long heroId, Long eraId, String topicUz, String questionUz,
                              String factUz, String detailUz, List<String> keywords, String source,
                              boolean verified, long usedInQuiz, long usedInChat,
                              String topicRu, String questionRu, String factRu, String detailRu) {
    }

    public record FactCardRequest(Long heroId, Long eraId, String topicUz, String questionUz,
                                  String factUz, String detailUz, List<String> keywords,
                                  String source, Boolean verified,
                                  String topicRu, String questionRu, String factRu,
                                  String detailRu) {
    }

    public record VerifyRequest(Boolean verified) {
    }

    private final FactCardRepository factCardRepository;
    private final QuizQuestionRepository quizQuestionRepository;
    private final ChatMessageRepository chatMessageRepository;
    private final AdminAuditService audit;

    public AdminFactCardController(FactCardRepository factCardRepository,
                                   QuizQuestionRepository quizQuestionRepository,
                                   ChatMessageRepository chatMessageRepository,
                                   AdminAuditService audit) {
        this.factCardRepository = factCardRepository;
        this.quizQuestionRepository = quizQuestionRepository;
        this.chatMessageRepository = chatMessageRepository;
        this.audit = audit;
    }

    /**
     * Ro'yxat. Foydalanish hisoblari har bir kartochka uchun alohida emas, ikkita
     * guruhlangan so'rov bilan olinadi: kartochkalar yuzlab, N+1 bu yerda sezilardi.
     */
    @GetMapping
    public List<FactCardDto> list() {
        Map<Long, Long> inQuiz = grouped(quizQuestionRepository.countGroupedByFactCard());
        Map<Long, Long> inChat = grouped(chatMessageRepository.countGroupedByFactCard());
        return factCardRepository.findAllByOrderByIdAsc().stream()
                .map(c -> toDto(c, inQuiz.getOrDefault(c.getId(), 0L),
                        inChat.getOrDefault(c.getId(), 0L)))
                .toList();
    }

    private static Map<Long, Long> grouped(List<Object[]> rows) {
        Map<Long, Long> result = new HashMap<>();
        for (Object[] row : rows) {
            result.put((Long) row[0], ((Number) row[1]).longValue());
        }
        return result;
    }

    @PostMapping
    @Transactional
    public FactCardDto create(@AuthenticationPrincipal AuthPrincipal principal,
                              @RequestBody FactCardRequest request) {
        FactCard card = new FactCard();
        apply(card, request);
        FactCard saved = factCardRepository.save(card);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Карточка добавлена: " + saved.getTopicUz());
        return toDto(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public FactCardDto update(@AuthenticationPrincipal AuthPrincipal principal,
                              @PathVariable Long id, @RequestBody FactCardRequest request) {
        FactCard card = factCardRepository.findById(id).orElseThrow(() -> notFound("Карточка не найдена"));
        apply(card, request);
        FactCard saved = factCardRepository.save(card);
        audit.log(principal, AdminAuditService.UPDATE, ENTITY, id,
                "Карточка изменена: " + saved.getTopicUz());
        return toDto(saved);
    }

    /** Tasdiqlash — alohida endpoint: ro'yxatdan bir bosishda bajariladi. */
    @PostMapping("/{id}/verify")
    @Transactional
    public FactCardDto verify(@AuthenticationPrincipal AuthPrincipal principal,
                              @PathVariable Long id, @RequestBody VerifyRequest request) {
        FactCard card = factCardRepository.findById(id).orElseThrow(() -> notFound("Карточка не найдена"));
        boolean value = Boolean.TRUE.equals(request.verified());
        card.setVerified(value);
        FactCard saved = factCardRepository.save(card);
        audit.log(principal, AdminAuditService.VERIFY, ENTITY, id,
                (value ? "Подтверждена: " : "Подтверждение снято: ") + saved.getTopicUz());
        return toDto(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        FactCard card = factCardRepository.findById(id).orElseThrow(() -> notFound("Карточка не найдена"));
        blockIfUsed(quizQuestionRepository.countByFactCardId(id), "на карточку опираются вопросы тестов");
        blockIfUsed(chatMessageRepository.countByFactCardId(id), "карточка была ответом в диалогах");
        factCardRepository.delete(card);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id,
                "Карточка удалена: " + card.getTopicUz());
    }

    private void apply(FactCard card, FactCardRequest request) {
        // Kartochka yo ajdodga, yo davrga tegishli bo'lishi kerak — aks holda u
        // hech qayerda ko'rinmaydi va qidiruvga ham tushmaydi.
        check(request.heroId() != null || request.eraId() != null,
                "Карточку нужно привязать к предку или к эпохе");
        card.setHeroId(request.heroId());
        card.setEraId(request.eraId());
        card.setTopicUz(required(request.topicUz(), "Тема"));
        card.setQuestionUz(optional(request.questionUz()));
        card.setFactUz(required(request.factUz(), "Текст факта"));
        card.setDetailUz(optional(request.detailUz()));
        card.setKeywords(cleanList(request.keywords()));
        card.setSource(required(request.source(), "Источник"));
        card.setVerified(Boolean.TRUE.equals(request.verified()));
        // Ruscha tarjima (V108). Bo'sh qoldirilsa — interfeys o'zbekcha aslini beradi.
        card.setTopicRu(optional(request.topicRu()));
        card.setQuestionRu(optional(request.questionRu()));
        card.setFactRu(optional(request.factRu()));
        card.setDetailRu(optional(request.detailRu()));
    }

    private FactCardDto toDto(FactCard c) {
        return toDto(c, quizQuestionRepository.countByFactCardId(c.getId()),
                chatMessageRepository.countByFactCardId(c.getId()));
    }

    private FactCardDto toDto(FactCard c, long usedInQuiz, long usedInChat) {
        return new FactCardDto(c.getId(), c.getHeroId(), c.getEraId(), c.getTopicUz(),
                c.getQuestionUz(), c.getFactUz(), c.getDetailUz(),
                c.getKeywords() == null ? List.of() : c.getKeywords(),
                c.getSource(), c.isVerified(), usedInQuiz, usedInChat,
                c.getTopicRu(), c.getQuestionRu(), c.getFactRu(), c.getDetailRu());
    }
}
