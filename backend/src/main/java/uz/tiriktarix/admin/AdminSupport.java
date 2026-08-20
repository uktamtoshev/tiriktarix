package uz.tiriktarix.admin;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

/**
 * Panel kontrollerlari uchun mayda yordamchilar: maydon tekshiruvi va sahifalash.
 *
 * <p>Xato matnlari ruscha va aniq — ular to'g'ridan-to'g'ri panelda
 * ko'rsatiladi ({@code server.error.include-message: always}).
 */
public final class AdminSupport {

    private AdminSupport() {
    }

    /** Sahifalangan javob. Panel jadvallari shu shaklni kutadi. */
    public record PageDto<T>(List<T> items, long total, int page, int size, int pages) {

        public static <E, T> PageDto<T> of(Page<E> page, List<T> items) {
            return new PageDto<>(items, page.getTotalElements(), page.getNumber(),
                    page.getSize(), page.getTotalPages());
        }
    }

    /** Sahifa o'lchami cheklangan: panel jadvali bir so'rovda bazani so'rib olmasin. */
    public static Pageable pageable(int page, int size) {
        int safeSize = Math.min(Math.max(size, 1), 200);
        return PageRequest.of(Math.max(page, 0), safeSize);
    }

    public static String required(String value, String label) {
        if (value == null || value.isBlank()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, label + " — обязательное поле");
        }
        return value.trim();
    }

    public static String optional(String value) {
        return value == null || value.isBlank() ? null : value.trim();
    }

    public static Long requiredId(Long value, String label) {
        if (value == null) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, label + " — нужно выбрать значение");
        }
        return value;
    }

    public static int requiredInt(Integer value, String label) {
        if (value == null) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, label + " — обязательное поле");
        }
        return value;
    }

    public static String oneOf(String value, String label, String... allowed) {
        String normalized = required(value, label).toUpperCase();
        for (String option : allowed) {
            if (option.equals(normalized)) {
                return normalized;
            }
        }
        // Maydon nomi jumla ichida emas, qo'shtirnoqda: shunda rus tilidagi
        // kelishik muammosi bo'lmaydi («Тип должно быть…» kabi).
        throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                "Допустимые значения поля «" + label + "»: " + String.join(", ", allowed));
    }

    public static void check(boolean condition, String message) {
        if (!condition) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, message);
        }
    }

    public static ResponseStatusException notFound(String message) {
        return new ResponseStatusException(HttpStatus.NOT_FOUND, message);
    }

    /**
     * Bog'liq yozuvlar bor bo'lsa o'chirishga yo'l qo'yilmaydi. Bazadagi tashqi
     * kalit xatosi o'rniga tushunarli sabab qaytadi.
     */
    public static void blockIfUsed(long count, String what) {
        if (count > 0) {
            throw new ResponseStatusException(HttpStatus.CONFLICT,
                    "Удалить нельзя: " + what + " (" + count + " шт.). Сначала перенесите или удалите их.");
        }
    }

    public static List<String> cleanList(List<String> values) {
        if (values == null) {
            return List.of();
        }
        return values.stream()
                .filter(v -> v != null && !v.isBlank())
                .map(String::trim)
                .toList();
    }
}
