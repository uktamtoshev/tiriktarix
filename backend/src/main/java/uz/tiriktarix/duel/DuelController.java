package uz.tiriktarix.duel;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.duel.DuelService.DuelStateDto;

/**
 * Bellashuv API.
 *
 * Har bir javob — bitta va o'sha `DuelStateDto`: unda so'rovchining O'Z savoli,
 * ikkala tomonning hisobi va qolgan vaqt bo'ladi. Raqibning savoli hech qaysi
 * javobga tushmaydi — bu shu bo'limning asosiy qoidasi.
 */
@RestController
@RequestMapping("/api/duel")
public class DuelController {

    public record CreateRequest(@NotBlank String clientId, String nickname, @NotBlank String scope) {
    }

    public record JoinRequest(@NotBlank String clientId, String nickname, @NotBlank String scope) {
    }

    public record ActorRequest(@NotBlank String clientId) {
    }

    public record AnswerRequest(@NotBlank String clientId, @NotNull Long questionId, int chosenIndex) {
    }

    public record BotRequest(@NotBlank String clientId, String nickname, @NotBlank String scope,
                             @NotNull DuelService.BotLevel level) {
    }

    private final DuelService duelService;

    public DuelController(DuelService duelService) {
        this.duelService = duelService;
    }

    // ============================== Navbat (reyting) ==============================

    /** «O'ynash»: navbatga tushish. Server reytingi yaqin raqibni o'zi topadi. */
    @PostMapping("/queue")
    public DuelService.QueueStateDto enqueue(@Valid @RequestBody CreateRequest request) {
        return duelService.enqueue(request.clientId(), request.nickname(), request.scope());
    }

    /** Navbat holati: hali qidirilmoqdami yoki raqib topildimi (kod bilan). */
    @GetMapping("/queue")
    public DuelService.QueueStateDto queueState(@RequestParam String clientId) {
        return duelService.queueState(clientId);
    }

    /** Navbatdan chiqish. */
    @DeleteMapping("/queue")
    public void dequeue(@RequestParam String clientId) {
        duelService.dequeue(clientId);
    }

    /** Xona ochish. Javobdagi `code` — raqibga aytiladigan to'rt xonali kod. */
    @PostMapping
    public DuelStateDto create(@Valid @RequestBody CreateRequest request) {
        return duelService.create(request.clientId(), request.nickname(), request.scope());
    }

    /** Ilvirs bilan mashq jangi: darhol boshlanadi, reytingga yozilmaydi. */
    @PostMapping("/bot")
    public DuelStateDto createBot(@Valid @RequestBody BotRequest request) {
        return duelService.createBot(request.clientId(), request.nickname(), request.scope(),
                request.level());
    }

    /** Kod bo'yicha qo'shilish. Mavzu o'z tanlovi — chaqiruvchinikidan farq qilishi mumkin. */
    @PostMapping("/{code}/join")
    public DuelStateDto join(@PathVariable String code, @Valid @RequestBody JoinRequest request) {
        return duelService.join(code, request.clientId(), request.nickname(), request.scope());
    }

    /** Startni xona egasi beradi. */
    @PostMapping("/{code}/start")
    public DuelStateDto start(@PathVariable String code, @Valid @RequestBody ActorRequest request) {
        return duelService.start(code, request.clientId());
    }

    /** Holat: hisob, qolgan vaqt va so'rovchining joriy savoli. */
    @GetMapping("/{code}")
    public DuelStateDto state(@PathVariable String code, @RequestParam String clientId) {
        return duelService.state(code, clientId);
    }

    /** Javob berish. To'g'riligini server tekshiradi. */
    @PostMapping("/{code}/answer")
    public DuelStateDto answer(@PathVariable String code, @Valid @RequestBody AnswerRequest request) {
        return duelService.answer(code, request.clientId(), request.questionId(), request.chosenIndex());
    }

    /** Xonani tark etish. */
    @DeleteMapping("/{code}")
    public void leave(@PathVariable String code, @RequestParam String clientId) {
        duelService.leave(code, clientId);
    }
}
