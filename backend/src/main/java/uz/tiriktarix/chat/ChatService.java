package uz.tiriktarix.chat;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.hero.Hero;
import uz.tiriktarix.hero.HeroRepository;
import uz.tiriktarix.profile.ProfileService;

@Service
public class ChatService {

    public record ChatAnswer(String answerUz, String refusalType, String source) {
    }

    private final HeroRepository heroRepository;
    private final ConversationRepository conversationRepository;
    private final ChatMessageRepository messageRepository;
    private final HeroDialogueEngine dialogueEngine;
    private final ProfileService profileService;

    public ChatService(HeroRepository heroRepository,
                       ConversationRepository conversationRepository,
                       ChatMessageRepository messageRepository,
                       HeroDialogueEngine dialogueEngine,
                       ProfileService profileService) {
        this.heroRepository = heroRepository;
        this.conversationRepository = conversationRepository;
        this.messageRepository = messageRepository;
        this.dialogueEngine = dialogueEngine;
        this.profileService = profileService;
    }

    @Transactional
    public ChatAnswer ask(String heroSlug, String clientId, String question) {
        Hero hero = heroRepository.findBySlug(heroSlug)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Qahramon topilmadi"));

        Conversation conversation = conversationRepository
                .findFirstByClientIdAndHeroIdOrderByStartedAtDesc(clientId, hero.getId())
                .orElseGet(() -> conversationRepository.save(new Conversation(hero.getId(), clientId)));

        messageRepository.save(new ChatMessage(conversation.getId(), ChatMessage.Role.USER,
                question, ChatMessage.RefusalType.NONE, null));

        HeroDialogueEngine.DialogueAnswer answer = dialogueEngine.answer(hero, question);

        messageRepository.save(new ChatMessage(conversation.getId(), ChatMessage.Role.HERO,
                answer.textUz(), answer.refusalType(),
                answer.usedFact() == null ? null : answer.usedFact().getId()));

        profileService.recordActivity(clientId, 0);

        return new ChatAnswer(answer.textUz(), answer.refusalType().name(),
                answer.usedFact() == null ? null : answer.usedFact().getSource());
    }
}
