package uz.tiriktarix.upload;

import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import uz.tiriktarix.admin.AdminAuditService;
import uz.tiriktarix.auth.AuthPrincipal;

/**
 * Portret yuklash (faqat boshqaruv paneli).
 *
 * <p>Javob — faylning manzili. Uni metodist keyin ajdodning
 * {@code portraitUrl} maydoniga qo'yadi (panel buni avtomatik qiladi).
 * Yuklash va ajdodni saqlash ataylab ikki alohida qadam: rasm yuklangani bilan
 * yozuv hali saqlanmagan bo'lishi mumkin, va aksincha.
 */
@RestController
@RequestMapping("/api/admin/uploads")
public class AdminUploadController {

    private static final String ENTITY = "UPLOAD";

    public record UploadedFile(String url) {
    }

    private final PortraitStorage storage;
    private final AdminAuditService audit;

    public AdminUploadController(PortraitStorage storage, AdminAuditService audit) {
        this.storage = storage;
        this.audit = audit;
    }

    @PostMapping(value = "/portrait", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public UploadedFile portrait(@AuthenticationPrincipal AuthPrincipal principal,
                                 @RequestParam("file") MultipartFile file) {
        String url = storage.store(file);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, null, "Изображение загружено: " + url);
        return new UploadedFile(url);
    }
}
