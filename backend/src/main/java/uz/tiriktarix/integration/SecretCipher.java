package uz.tiriktarix.integration;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.springframework.stereotype.Component;
import uz.tiriktarix.config.AppProperties;

/**
 * Integratsiya kalitlarini shifrlash — AES-256/GCM.
 *
 * <p>NEGA SHIFR. TTS/STT/LLM kalitlari bazada yotadi (ular tez-tez yangilanadi
 * va serverni qayta ishga tushirmasdan almashtirilishi kerak). Bazaning nusxasi
 * chiqib ketsa, ochiq matndagi kalitlar shu zahoti ishlatilardi.
 *
 * <p>SHIFR KALITI BAZADA EMAS: u {@code TIRIK_TARIX_SECRETS_KEY} env dan
 * olinadi va SHA-256 orqali 32 baytga keltiriladi. Demak baza nusxasi o'zicha
 * yetarli emas. Env dagi kalit almashtirilsa, eski qiymatlarni ochib bo'lmaydi —
 * ularni paneldan qayta kiritish kerak (panel buni ochiq aytadi).
 *
 * <p>GCM tanlangan: u shifrlash bilan birga yaxlitlikni ham tekshiradi, ya'ni
 * bazadagi qiymat qo'lda o'zgartirilsa, ochishda xato beradi.
 */
@Component
public class SecretCipher {

    private static final int IV_BYTES = 12;
    private static final int TAG_BITS = 128;

    private final SecretKeySpec key;
    private final SecureRandom random = new SecureRandom();

    public SecretCipher(AppProperties properties) {
        this.key = new SecretKeySpec(sha256(properties.admin().secretsKey()), "AES");
    }

    public String encrypt(String plain) {
        try {
            byte[] iv = new byte[IV_BYTES];
            random.nextBytes(iv);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(Cipher.ENCRYPT_MODE, key, new GCMParameterSpec(TAG_BITS, iv));
            byte[] encrypted = cipher.doFinal(plain.getBytes(StandardCharsets.UTF_8));

            byte[] out = new byte[iv.length + encrypted.length];
            System.arraycopy(iv, 0, out, 0, iv.length);
            System.arraycopy(encrypted, 0, out, iv.length, encrypted.length);
            return Base64.getEncoder().encodeToString(out);
        } catch (Exception e) {
            throw new IllegalStateException("Не удалось зашифровать ключ", e);
        }
    }

    /** Ochib bo'lmasa — {@code null}. Chaqiruvchi buni «kalit yaroqsiz» deb ko'rsatadi. */
    public String decrypt(String stored) {
        if (stored == null || stored.isBlank()) {
            return null;
        }
        try {
            byte[] raw = Base64.getDecoder().decode(stored);
            byte[] iv = new byte[IV_BYTES];
            System.arraycopy(raw, 0, iv, 0, IV_BYTES);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(Cipher.DECRYPT_MODE, key, new GCMParameterSpec(TAG_BITS, iv));
            byte[] plain = cipher.doFinal(raw, IV_BYTES, raw.length - IV_BYTES);
            return new String(plain, StandardCharsets.UTF_8);
        } catch (Exception e) {
            return null;
        }
    }

    /** Panelda ko'rsatiladigan ishora: «…a4f2». Kalitning o'zi hech qachon qaytarilmaydi. */
    public static String hintOf(String secret) {
        if (secret == null || secret.isBlank()) {
            return null;
        }
        String trimmed = secret.trim();
        return trimmed.length() <= 4 ? "…" : "…" + trimmed.substring(trimmed.length() - 4);
    }

    private static byte[] sha256(String value) {
        try {
            return MessageDigest.getInstance("SHA-256")
                    .digest(value.getBytes(StandardCharsets.UTF_8));
        } catch (Exception e) {
            throw new IllegalStateException("SHA-256 недоступен", e);
        }
    }
}
