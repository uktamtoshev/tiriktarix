package uz.tiriktarix.avatar;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.auth.AuthPrincipal;

/** Qahramon jihozlari — faqat ro'yxatdan o'tgan foydalanuvchi uchun. */
@RestController
@RequestMapping("/api/avatar")
public class AvatarController {

    public record EquipRequest(String slot, String itemCode) {
    }

    public record GenderRequest(String gender) {
    }

    public record ArchetypeRequest(String archetype) {
    }

    private final AvatarService avatarService;

    public AvatarController(AvatarService avatarService) {
        this.avatarService = avatarService;
    }

    @GetMapping
    public AvatarService.AvatarState state(@AuthenticationPrincipal AuthPrincipal principal) {
        return avatarService.stateOf(clientId(principal));
    }

    @PostMapping("/equip")
    public AvatarService.AvatarState equip(@AuthenticationPrincipal AuthPrincipal principal,
                                           @RequestBody EquipRequest request) {
        return avatarService.equip(clientId(principal), request.slot(), request.itemCode());
    }

    @PatchMapping("/gender")
    public AvatarService.AvatarState gender(@AuthenticationPrincipal AuthPrincipal principal,
                                            @RequestBody GenderRequest request) {
        return avatarService.setGender(clientId(principal), request.gender());
    }

    /** Tipni almashtirish bepul: bu shaxsni tanlash, mukofot emas. */
    @PatchMapping("/archetype")
    public AvatarService.AvatarState archetype(@AuthenticationPrincipal AuthPrincipal principal,
                                               @RequestBody ArchetypeRequest request) {
        return avatarService.setArchetype(clientId(principal), request.archetype());
    }

    private String clientId(AuthPrincipal principal) {
        if (principal == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Avval tizimga kiring");
        }
        return principal.clientId();
    }
}
