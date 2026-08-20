package uz.tiriktarix.chat;

import java.util.List;
import org.springframework.stereotype.Component;
import uz.tiriktarix.common.TextNormalizer;
import uz.tiriktarix.config.AppProperties;
import uz.tiriktarix.factcard.FactCard;
import uz.tiriktarix.factcard.FactCardRepository;
import uz.tiriktarix.hero.Hero;

/**
 * M1 qat'iy qoidalari:
 * 1) javob faqat metodist tasdiqlagan fakt kartochkasidan olinadi;
 * 2) savol qahramon haqida, lekin kartochkada javob yo'q — «Bu haqda tarix sukut saqlaydi»;
 * 3) savol mavzudan tashqari — «Iltimos, men haqimda savol ber»;
 * 4) qahramon o'z vafotidan keyingi voqealarni «bilmaydi».
 */
@Component
public class FactCardRetrievalEngine implements HeroDialogueEngine {

    /** Har qanday qahramonga oid umumiy so'zlar — savol mavzuga oidligini baholash uchun. */
    private static final List<String> GENERIC_ON_TOPIC = List.of(
            "sen", "siz", "hayot", "tarix", "qachon", "qayerda", "kim", "nima",
            "tugilgan", "vafot", "yashagan", "davr", "asr", "yil");

    private final FactCardRepository factCardRepository;
    private final AppProperties properties;

    public FactCardRetrievalEngine(FactCardRepository factCardRepository, AppProperties properties) {
        this.factCardRepository = factCardRepository;
        this.properties = properties;
    }

    @Override
    public DialogueAnswer answer(Hero hero, String question) {
        String normalized = TextNormalizer.normalize(question);

        // 4-qoida: vafotdan keyingi yillar haqida qahramon hech narsa bilmaydi.
        // Vafot yili NOMA'LUM ajdodlar ham bor (To'maris, Shiroq, xoqonlar —
        // ularda sana manbada yo'q va o'ylab topilmaydi). Ularda chegara
        // qo'llanmaydi: aks holda getDeathYear() null bo'lib, bola yil aytilgan
        // savol yozganda suhbat javob o'rniga xato bilan uzilardi.
        Integer deathYear = hero.getDeathYear();
        boolean asksAboutAfterDeath = deathYear != null
                && TextNormalizer.extractYears(normalized).stream()
                        .anyMatch(year -> year > deathYear);
        if (asksAboutAfterDeath) {
            return new DialogueAnswer(properties.chat().refusalNoFact(),
                    ChatMessage.RefusalType.NO_FACT, null);
        }

        FactCard best = null;
        int bestScore = 0;
        for (FactCard card : factCardRepository.findByHeroIdAndVerifiedTrue(hero.getId())) {
            int score = matchScore(normalized, card.getKeywords());
            if (score > bestScore) {
                bestScore = score;
                best = card;
            }
        }
        if (best != null) {
            return new DialogueAnswer(best.getFactUz(), ChatMessage.RefusalType.NONE, best);
        }

        return isOnTopic(normalized, hero)
                ? new DialogueAnswer(properties.chat().refusalNoFact(), ChatMessage.RefusalType.NO_FACT, null)
                : new DialogueAnswer(properties.chat().refusalOffTopic(), ChatMessage.RefusalType.OFF_TOPIC, null);
    }

    private int matchScore(String normalizedQuestion, List<String> keywords) {
        if (keywords == null) {
            return 0;
        }
        int score = 0;
        for (String keyword : keywords) {
            if (normalizedQuestion.contains(TextNormalizer.normalize(keyword))) {
                score++;
            }
        }
        return score;
    }

    private boolean isOnTopic(String normalizedQuestion, Hero hero) {
        List<String> heroWords = hero.getOnTopicKeywords() == null ? List.of() : hero.getOnTopicKeywords();
        return java.util.stream.Stream.concat(heroWords.stream(), GENERIC_ON_TOPIC.stream())
                .map(TextNormalizer::normalize)
                .anyMatch(normalizedQuestion::contains);
    }
}
