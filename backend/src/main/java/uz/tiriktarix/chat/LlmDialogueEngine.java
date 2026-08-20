package uz.tiriktarix.chat;

import com.anthropic.client.AnthropicClient;
import com.anthropic.errors.AnthropicIoException;
import com.anthropic.errors.AnthropicServiceException;
import com.anthropic.models.messages.CacheControlEphemeral;
import com.anthropic.models.messages.MessageCreateParams;
import com.anthropic.models.messages.StructuredMessageCreateParams;
import com.anthropic.models.messages.TextBlockParam;
import com.anthropic.models.messages.ThinkingConfigAdaptive;
import com.fasterxml.jackson.annotation.JsonClassDescription;
import com.fasterxml.jackson.annotation.JsonPropertyDescription;
import java.util.List;
import java.util.Optional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import uz.tiriktarix.common.TextNormalizer;
import uz.tiriktarix.config.AppProperties;
import uz.tiriktarix.factcard.FactCard;
import uz.tiriktarix.factcard.FactCardRepository;
import uz.tiriktarix.hero.Hero;

/**
 * LLM (RAG) dialog dvigateli: Claude modeli javob shaklini yaratadi, lekin
 * kontekstga FAQAT metodist tasdiqlagan fakt kartochkalari beriladi.
 * Kontseptsiya formulasi: «II shaklni yaratadi — haqiqat uchun odamlar javob beradi».
 *
 * M1 qat'iy qoidalari saqlanadi: ikki darajali rad etish va vafot yili chegarasi.
 * Har qanday xatolikda kalit so'z (retrieval) dvigateliga qaytadi — mahsulot
 * API kalitisiz yoki tarmoq uzilganda ham ishlashda davom etadi.
 */
public class LlmDialogueEngine implements HeroDialogueEngine {

    private static final Logger log = LoggerFactory.getLogger(LlmDialogueEngine.class);

    @JsonClassDescription("Qahramonning bola savoliga javobi")
    public record LlmReply(
            @JsonPropertyDescription("Qahramonning birinchi shaxsdagi javobi, o'zbek (lotin) tilida, 2-4 gap. Rad etilganda bo'sh qoldir.")
            String answerUz,
            @JsonPropertyDescription("NONE — javob kartochkada bor; NO_FACT — savol qahramon haqida, lekin kartochkalarda javob yo'q yoki vafotidan keyingi davr; OFF_TOPIC — savol mavzudan tashqari")
            String refusalType,
            @JsonPropertyDescription("Javob olingan kartochka raqami (1 dan boshlab), rad etilganda null")
            Integer factNumber) {
    }

    private final AnthropicClient client;
    private final FactCardRetrievalEngine fallback;
    private final FactCardRepository factCardRepository;
    private final AppProperties properties;

    public LlmDialogueEngine(AnthropicClient client,
                             FactCardRetrievalEngine fallback,
                             FactCardRepository factCardRepository,
                             AppProperties properties) {
        this.client = client;
        this.fallback = fallback;
        this.factCardRepository = factCardRepository;
        this.properties = properties;
    }

    @Override
    public DialogueAnswer answer(Hero hero, String question) {
        // 4-qoida deterministik tekshiruv: vafotdan keyingi yillar — LLMga
        // yubormasdan rad. Vafot yili noma'lum ajdodlarda chegara qo'llanmaydi
        // (null bo'lsa taqqoslash xatoga olib kelardi).
        Integer deathYear = hero.getDeathYear();
        boolean asksAboutAfterDeath = deathYear != null
                && TextNormalizer.extractYears(TextNormalizer.normalize(question))
                        .stream().anyMatch(year -> year > deathYear);
        if (asksAboutAfterDeath) {
            return new DialogueAnswer(properties.chat().refusalNoFact(),
                    ChatMessage.RefusalType.NO_FACT, null);
        }

        List<FactCard> cards = factCardRepository.findByHeroIdAndVerifiedTrue(hero.getId());
        if (cards.isEmpty()) {
            return fallback.answer(hero, question);
        }

        try {
            return askLlm(hero, question, cards);
        } catch (AnthropicServiceException e) {
            log.warn("LLM API xatosi ({}), retrieval rejimiga o'tildi: {}", e.statusCode(), e.getMessage());
            return fallback.answer(hero, question);
        } catch (AnthropicIoException e) {
            log.warn("LLM tarmoq xatosi, retrieval rejimiga o'tildi: {}", e.getMessage());
            return fallback.answer(hero, question);
        } catch (RuntimeException e) {
            log.warn("LLM javobini qayta ishlashda xato, retrieval rejimiga o'tildi", e);
            return fallback.answer(hero, question);
        }
    }

    private DialogueAnswer askLlm(Hero hero, String question, List<FactCard> cards) {
        StructuredMessageCreateParams<LlmReply> params = MessageCreateParams.builder()
                .model(properties.chat().llmModel())
                .maxTokens(16000L)
                .thinking(ThinkingConfigAdaptive.builder().build())
                // Tizim prompti qahramon bo'yicha barqaror — prefiks keshlanadi
                .systemOfTextBlockParams(List.of(TextBlockParam.builder()
                        .text(buildSystemPrompt(hero, cards))
                        .cacheControl(CacheControlEphemeral.builder().build())
                        .build()))
                .outputConfig(LlmReply.class)
                .addUserMessage(question)
                .build();

        Optional<LlmReply> reply = client.messages().create(params).content().stream()
                .flatMap(block -> block.text().stream())
                .map(text -> text.text())
                .findFirst();

        if (reply.isEmpty()) {
            log.warn("LLM javobida matn bloki yo'q, retrieval rejimiga o'tildi");
            return fallback.answer(hero, question);
        }
        return toAnswer(reply.get(), cards);
    }

    private DialogueAnswer toAnswer(LlmReply reply, List<FactCard> cards) {
        ChatMessage.RefusalType refusal = parseRefusal(reply.refusalType());
        if (refusal == ChatMessage.RefusalType.NO_FACT) {
            return new DialogueAnswer(properties.chat().refusalNoFact(), refusal, null);
        }
        if (refusal == ChatMessage.RefusalType.OFF_TOPIC) {
            return new DialogueAnswer(properties.chat().refusalOffTopic(), refusal, null);
        }
        if (reply.answerUz() == null || reply.answerUz().isBlank()) {
            return new DialogueAnswer(properties.chat().refusalNoFact(),
                    ChatMessage.RefusalType.NO_FACT, null);
        }
        FactCard used = null;
        if (reply.factNumber() != null && reply.factNumber() >= 1 && reply.factNumber() <= cards.size()) {
            used = cards.get(reply.factNumber() - 1);
        }
        return new DialogueAnswer(reply.answerUz().trim(), ChatMessage.RefusalType.NONE, used);
    }

    private ChatMessage.RefusalType parseRefusal(String value) {
        try {
            return value == null ? ChatMessage.RefusalType.NONE : ChatMessage.RefusalType.valueOf(value);
        } catch (IllegalArgumentException e) {
            return ChatMessage.RefusalType.NONE;
        }
    }

    private String buildSystemPrompt(Hero hero, List<FactCard> cards) {
        StringBuilder sb = new StringBuilder();
        sb.append("Sen ").append(hero.getNameUz());
        if (hero.getTitleUz() != null) {
            sb.append(" (").append(hero.getTitleUz()).append(")");
        }
        // Yillar noma'lum bo'lishi mumkin (afsonaviy shaxslar) — o'shanda
        // promptga «null-null» yozilmasin, aks holda model sanani o'ylab topadi.
        if (hero.getBirthYear() != null || hero.getDeathYear() != null) {
            sb.append(", ").append(hero.getBirthYear() == null ? "?" : hero.getBirthYear())
                    .append("-").append(hero.getDeathYear() == null ? "?" : hero.getDeathYear())
                    .append(" yillarda yashagan");
        }
        sb.append(" tarixiy shaxs rolidasan. O'zbekiston tarixini o'rganayotgan ")
                .append("10-15 yoshli bolalar bilan suhbatlashyapsan.\n\n");
        sb.append("QAT'IY QOIDALAR:\n");
        sb.append("1. Javobda FAQAT quyidagi tasdiqlangan fakt kartochkalaridagi ma'lumotlardan foydalan. ")
                .append("O'zingdan yangi tarixiy fakt, sana yoki nom qo'shish taqiqlanadi.\n");
        sb.append("2. Savol sen haqingda-yu, lekin kartochkalarda javob yo'q bo'lsa — refusalType=\"NO_FACT\".\n");
        sb.append("3. Savol sen va tarixing bilan bog'liq bo'lmasa — refusalType=\"OFF_TOPIC\".\n");
        if (hero.getDeathYear() != null) {
            sb.append("4. Sen ").append(hero.getDeathYear())
                    .append("-yilda vafot etgansan: undan keyingi voqealarni bilmaysan — refusalType=\"NO_FACT\".\n");
        } else {
            sb.append("4. Vafot yiling manbalarda aniq emas: o'z davringdan keyingi voqealarni ")
                    .append("bilmaysan — refusalType=\"NO_FACT\".\n");
        }
        sb.append("5. Javob birinchi shaxsda, samimiy, bolaga tushunarli o'zbek (lotin) tilida, 2-4 gap. ")
                .append("Kartochka matnini savolga moslab qayta ifodalashing mumkin, lekin faktni o'zgartirma.\n");
        sb.append("6. Javob olingan kartochka raqamini factNumber maydoniga yoz; rad etishda null qoldir.\n\n");
        sb.append("TASDIQLANGAN FAKT KARTOCHKALARI:\n");
        for (int i = 0; i < cards.size(); i++) {
            FactCard card = cards.get(i);
            sb.append(i + 1).append(". [").append(card.getTopicUz()).append("] ")
                    .append(card.getFactUz()).append("\n");
        }
        return sb.toString();
    }
}
