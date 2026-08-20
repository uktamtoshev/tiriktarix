package uz.tiriktarix.upload;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HexFormat;
import java.util.Map;
import java.util.Optional;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.config.AppProperties;

/**
 * Metodist yuklagan portretlarni saqlash.
 *
 * <p>MUAMMO. Ilgari loyihada yuklash umuman yo'q edi: admin-paneldagi portret
 * maydoni — oddiy matnli URL. Metodist yangi ajdod qo'shsa, uning rasmini
 * QO'YA OLMASDI — kimdir faylni {@code frontend/public/portretlar/} ichiga
 * qo'lda tashlashi va frontendni qayta yig'ishi kerak edi.
 *
 * <p>NEGA BACKEND BERADI, {@code frontend/public/} EMAS. O'sha papkaga yozish
 * faqat lokal ishlashda ko'rinadi: yig'ilgan Next.js sayt papkani qayta
 * o'qimaydi va rasm yo'qoladi. Shuning uchun fayl backend papkasida yotadi va
 * {@code /uploads/**} orqali beriladi.
 *
 * <p>NEGA INTERFEYS EMAS, BITTA SINF. Hozircha bitta saqlash usuli bor —
 * disk. S3/R2 kerak bo'lganda shu sinfning yonida ikkinchisi paydo bo'ladi va
 * chaqiruvchi kod o'zgarmaydi: u faqat {@link #store} va {@link #read} ni
 * biladi.
 */
@Service
public class PortraitStorage {

    /**
     * Ruxsat etilgan turlar — FAYL MAZMUNI bo'yicha aniqlanadi, mijoz aytgan
     * {@code Content-Type} yoki kengaytma bo'yicha emas: ularning ikkalasini
     * ham osongina soxtalashtirish mumkin.
     */
    private static final Map<String, String> MAGIC = Map.of(
            "ffd8ff", "image/jpeg",
            "89504e470d0a1a0a", "image/png",
            "52494646", "image/webp"   // RIFF….WEBP, quyida qo'shimcha tekshiriladi
    );

    private static final long MAX_BYTES = 8L * 1024 * 1024;

    private final Path root;

    public PortraitStorage(AppProperties properties) {
        var uploads = properties.uploads();
        String dir = uploads == null
                ? System.getProperty("user.home") + "/.tirik-tarix/uploads"
                : uploads.dirOrDefault();
        this.root = Path.of(dir).toAbsolutePath().normalize();
    }

    public Path root() {
        return root;
    }

    /**
     * Faylni saqlaydi va uning ochiq manzilini qaytaradi.
     *
     * <p>Fayl nomi MIJOZDAN olinmaydi — u mazmunning SHA-256 idan yasaladi.
     * Shu bilan bir vaqtda uchta muammo yo'qoladi: yo'l bo'ylab chiqib ketish
     * («../../etc/passwd»), o'zbekcha/kirillcha nomlar bilan bog'liq nosozlik
     * va bir xil rasmning takror saqlanishi.
     */
    public String store(MultipartFile file) {
        if (file == null || file.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Файл не выбран");
        }
        if (file.getSize() > MAX_BYTES) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Файл больше 8 МБ — уменьшите изображение");
        }
        byte[] bytes;
        try {
            bytes = file.getBytes();
        } catch (IOException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Файл не удалось прочитать");
        }

        String type = detectType(bytes).orElseThrow(() -> new ResponseStatusException(
                HttpStatus.BAD_REQUEST, "Разрешены только JPEG, PNG и WebP"));
        String name = sha256(bytes) + extensionOf(type);

        try {
            Files.createDirectories(root);
            Path target = root.resolve(name).normalize();
            // Ishonch uchun: nom xeshdan yasalgan bo'lsa ham, papkadan chiqib
            // ketmasligini yakuniy holatda tekshiramiz.
            if (!target.startsWith(root)) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Недопустимое имя файла");
            }
            if (Files.notExists(target)) {
                // Avval vaqtinchalik faylga, so'ng ATOMIK ko'chirish: yozish
                // yarim yo'lda uzilsa, yarim rasm ochiq qolmaydi.
                Path tmp = Files.createTempFile(root, "upload-", ".part");
                try {
                    Files.write(tmp, bytes);
                    Files.move(tmp, target, StandardCopyOption.ATOMIC_MOVE,
                            StandardCopyOption.REPLACE_EXISTING);
                } finally {
                    Files.deleteIfExists(tmp);
                }
            }
        } catch (IOException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR,
                    "Файл не удалось сохранить");
        }
        return "/uploads/" + name;
    }

    /** Faylni o'qish. Nom xeshdan iborat bo'lishi tekshiriladi. */
    public Optional<StoredFile> read(String name) {
        if (name == null || !name.matches("[0-9a-f]{64}\\.(jpg|png|webp)")) {
            return Optional.empty();
        }
        Path target = root.resolve(name).normalize();
        if (!target.startsWith(root) || Files.notExists(target)) {
            return Optional.empty();
        }
        try {
            return Optional.of(new StoredFile(Files.readAllBytes(target), typeOfName(name)));
        } catch (IOException e) {
            return Optional.empty();
        }
    }

    public record StoredFile(byte[] bytes, String contentType) {
    }

    /** Tur faqat fayl boshidagi imzo bo'yicha aniqlanadi. */
    static Optional<String> detectType(byte[] bytes) {
        String head = HexFormat.of().formatHex(bytes, 0, Math.min(bytes.length, 16));
        for (var e : MAGIC.entrySet()) {
            if (head.startsWith(e.getKey())) {
                if ("52494646".equals(e.getKey())) {
                    // RIFF konteynerida WEBP ekanini alohida tasdiqlaymiz:
                    // 8-11 baytlarda «WEBP» yozuvi turadi.
                    if (bytes.length < 12 || !"57454250".equals(head.substring(16, 24))) {
                        return Optional.empty();
                    }
                }
                return Optional.of(e.getValue());
            }
        }
        return Optional.empty();
    }

    private static String extensionOf(String type) {
        return switch (type) {
            case "image/png" -> ".png";
            case "image/webp" -> ".webp";
            default -> ".jpg";
        };
    }

    private static String typeOfName(String name) {
        if (name.endsWith(".png")) return "image/png";
        if (name.endsWith(".webp")) return "image/webp";
        return "image/jpeg";
    }

    private static String sha256(byte[] bytes) {
        try {
            return HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256").digest(bytes));
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }
}
