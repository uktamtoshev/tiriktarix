package uz.tiriktarix.voice;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface VoiceCacheRepository extends JpaRepository<VoiceCache, Long> {

    Optional<VoiceCache> findByCacheKey(String cacheKey);

    /**
     * Chegaradan oshgan eng kam ishlatilgan yozuvlarni o'chiradi.
     *
     * <p>Bitta so'rov bilan: ro'yxatni Java tomonga tortib olish katta jadvalda
     * xotirani behuda band qilardi.
     */
    @Modifying
    @Query(value = """
            DELETE FROM voice_cache
            WHERE id IN (
                SELECT id FROM voice_cache
                ORDER BY last_used_at DESC
                OFFSET :keep
            )
            """, nativeQuery = true)
    int evictBeyond(int keep);
}
