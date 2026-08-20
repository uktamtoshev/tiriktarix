package uz.tiriktarix.voice;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.Instant;

/**
 * Sintez qilingan ovozning keshlangan nusxasi (V150).
 *
 * <p>Bu MA'LUMOT emas, kesh: yozuvni o'chirib yuborish xavfsiz — matn joyida
 * turadi va ovozni qaytadan sintez qilsa bo'ladi. Shu sababli jadval hajmi
 * cheklangan va zaxira nusxaga uning mazmuni kirmaydi.
 */
@Entity
@Table(name = "voice_cache")
public class VoiceCache {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String cacheKey;

    private String voice;

    private String textUz;

    private String contentType;

    /*
      @Lob QO'YILMAYDI ataylab: Hibernate 6 da u Postgresning `oid` (large
      object) turiga tushadi, ustun esa `bytea`. Oddiy byte[] to'g'ridan-to'g'ri
      `bytea` ga mos keladi.
    */
    private byte[] audio;

    private int bytes;

    private Instant createdAt;

    private Instant lastUsedAt;

    private int hits;

    protected VoiceCache() {
    }

    public VoiceCache(String cacheKey, String voice, String textUz, String contentType, byte[] audio) {
        this.cacheKey = cacheKey;
        this.voice = voice;
        this.textUz = textUz;
        this.contentType = contentType;
        this.audio = audio;
        this.bytes = audio.length;
        this.createdAt = Instant.now();
        this.lastUsedAt = this.createdAt;
        this.hits = 0;
    }

    public Long getId() {
        return id;
    }

    public String getContentType() {
        return contentType;
    }

    public byte[] getAudio() {
        return audio;
    }

    public int getBytes() {
        return bytes;
    }

    public int getHits() {
        return hits;
    }

    /** Har o'qishda chaqiriladi: LRU tozalash aynan shu maydonga tayanadi. */
    public void markUsed() {
        this.lastUsedAt = Instant.now();
        this.hits++;
    }
}
