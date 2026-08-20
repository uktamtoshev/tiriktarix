package uz.tiriktarix.chat;

import uz.tiriktarix.factcard.FactCard;
import uz.tiriktarix.hero.Hero;

/**
 * Qahramon javobini tanlash strategiyasi.
 *
 * Hozirgi bosqichda — kalit so'zlar bo'yicha qidiruv (retrieval).
 * Keyingi bosqichda shu interfeys orqali LLM (RAG) ulanadi: kontekstga faqat
 * tasdiqlangan kartochkalar beriladi, rad etish qoidalari o'zgarmaydi.
 */
public interface HeroDialogueEngine {

    record DialogueAnswer(String textUz, ChatMessage.RefusalType refusalType, FactCard usedFact) {
    }

    DialogueAnswer answer(Hero hero, String question);
}
