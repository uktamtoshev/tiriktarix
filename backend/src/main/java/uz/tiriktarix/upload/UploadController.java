package uz.tiriktarix.upload;

import org.springframework.http.CacheControl;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.time.Duration;

/**
 * Yuklangan portretlarni berish.
 *
 * <p>NEGA STATIK RESURS HANDLERI EMAS. Bu yerda fayl nomi qat'iy tekshiriladi
 * (faqat SHA-256 xesh va uchta kengaytma), shuning uchun papkadan tashqariga
 * chiqib ketishning yo'li yo'q. Bundan tashqari javobning turi va keshi
 * aniq boshqariladi.
 *
 * <p>Nom fayl MAZMUNIDAN yasalgani uchun bir manzil hech qachon boshqa rasmga
 * o'zgarmaydi — shu bois kesh «abadiy» qilib qo'yilgan.
 */
@RestController
@RequestMapping("/uploads")
public class UploadController {

    private final PortraitStorage storage;

    public UploadController(PortraitStorage storage) {
        this.storage = storage;
    }

    @GetMapping("/{name}")
    public ResponseEntity<byte[]> file(@PathVariable String name) {
        var found = storage.read(name)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Fayl topilmadi"));
        return ResponseEntity.ok()
                .header("Content-Type", found.contentType())
                .cacheControl(CacheControl.maxAge(Duration.ofDays(365)).cachePublic().immutable())
                .body(found.bytes());
    }
}
