package uz.tiriktarix.voice;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import java.util.List;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * Ajdodlar ovozi: bola savolni ovoz bilan beradi (STT), ajdod javobni ovoz
 * bilan o'qiydi (TTS). Faqat ovozi yoqilgan ajdodlar uchun ishlaydi.
 */
@RestController
@RequestMapping("/api/voice")
public class VoiceController {

    public record StatusDto(boolean tts, boolean stt, List<String> heroes) {
    }

    public record TtsRequest(@NotBlank String heroSlug, @NotBlank String text) {
    }

    public record SttResult(String text) {
    }

    private final VoiceService voiceService;

    public VoiceController(VoiceService voiceService) {
        this.voiceService = voiceService;
    }

    /** Sahifa tugmalarni ko'rsatishdan oldin holatni so'raydi. */
    @GetMapping("/status")
    public StatusDto status() {
        return new StatusDto(voiceService.ttsConfigured(), voiceService.sttConfigured(),
                List.copyOf(voiceService.enabledHeroes()));
    }

    @PostMapping("/tts")
    public ResponseEntity<byte[]> tts(@Valid @RequestBody TtsRequest request) {
        VoiceService.TtsAudio audio = voiceService.speak(request.heroSlug(), request.text());
        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType(audio.contentType()))
                .body(audio.bytes());
    }

    @PostMapping(value = "/stt", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public SttResult stt(@RequestParam String heroSlug,
                         @RequestParam("audio") MultipartFile audio) throws Exception {
        return new SttResult(voiceService.transcribe(heroSlug, audio.getBytes(),
                audio.getOriginalFilename(), audio.getContentType()));
    }
}
