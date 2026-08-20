package uz.tiriktarix.config;

import com.anthropic.client.AnthropicClient;
import com.anthropic.client.okhttp.AnthropicOkHttpClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import uz.tiriktarix.chat.FactCardRetrievalEngine;
import uz.tiriktarix.chat.HeroDialogueEngine;
import uz.tiriktarix.chat.LlmDialogueEngine;
import uz.tiriktarix.factcard.FactCardRepository;

/**
 * Dialog dvigatelini tanlash: Anthropic kaliti mavjud bo'lsa — LLM (RAG),
 * aks holda kalit so'z bo'yicha qidiruv (retrieval). Ikkalasida ham M1
 * qat'iy qoidalari (faqat kartochkalar, ikki darajali rad etish) amal qiladi.
 */
@Configuration
public class DialogueEngineConfig {

    private static final Logger log = LoggerFactory.getLogger(DialogueEngineConfig.class);

    @Bean
    @Primary
    public HeroDialogueEngine heroDialogueEngine(FactCardRetrievalEngine retrieval,
                                                 FactCardRepository factCardRepository,
                                                 AppProperties properties) {
        if (isBlank(System.getenv("ANTHROPIC_API_KEY")) && isBlank(System.getenv("ANTHROPIC_AUTH_TOKEN"))) {
            log.info("ANTHROPIC_API_KEY o'rnatilmagan — kalit so'z (retrieval) rejimi ishlatiladi");
            return retrieval;
        }
        try {
            AnthropicClient client = AnthropicOkHttpClient.fromEnv();
            log.info("LLM dialog dvigateli yoqildi (model: {})", properties.chat().llmModel());
            return new LlmDialogueEngine(client, retrieval, factCardRepository, properties);
        } catch (Exception e) {
            log.warn("Anthropic mijozini yaratib bo'lmadi ({}) — retrieval rejimi ishlatiladi", e.getMessage());
            return retrieval;
        }
    }

    private static boolean isBlank(String value) {
        return value == null || value.isBlank();
    }
}
