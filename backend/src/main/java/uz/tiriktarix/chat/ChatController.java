package uz.tiriktarix.chat;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.chat.ChatService.ChatAnswer;

/** M1. Buyuk ajdod bilan suhbat — mahsulot yadrosi. */
@RestController
@RequestMapping("/api/chat")
public class ChatController {

    public record ChatRequest(@NotBlank String clientId,
                              @NotBlank @Size(max = 500) String question) {
    }

    private final ChatService chatService;

    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

    @PostMapping("/{heroSlug}")
    public ChatAnswer ask(@PathVariable String heroSlug, @Valid @RequestBody ChatRequest request) {
        return chatService.ask(heroSlug, request.clientId(), request.question());
    }
}
