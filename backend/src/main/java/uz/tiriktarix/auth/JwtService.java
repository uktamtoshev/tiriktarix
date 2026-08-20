package uz.tiriktarix.auth;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.Date;
import javax.crypto.SecretKey;
import org.springframework.stereotype.Service;
import uz.tiriktarix.config.AppProperties;

/**
 * Stateless JWT. Token subyekti — foydalanuvchi id si, qo'shimcha da'vo sifatida
 * profil clientId si saqlanadi (shunda himoyalangan endpointlar bazaga
 * qo'shimcha so'rovsiz profilni topadi).
 *
 * <p>V37 dan boshlab tokenda rol ham bor. Rol tokenga yoziladi, chunki
 * {@code /api/admin/**} har bir so'rovda bazadan foydalanuvchini o'qimasligi
 * kerak; roli o'zgargan hisob esa keyingi kirishda yangi token oladi.
 *
 * <p>Admin tokenida clientId bo'lmaydi: administratorda o'quvchi profili yo'q.
 *
 * TODO: refresh-token va parolni tiklash hozircha skoupdan tashqarida.
 */
@Service
public class JwtService {

    private static final String CLAIM_CLIENT_ID = "cid";
    private static final String CLAIM_ROLE = "role";

    private final SecretKey key;
    private final Duration ttl;
    private final Duration adminTtl;

    public JwtService(AppProperties properties) {
        this.key = Keys.hmacShaKeyFor(properties.auth().jwtSecret().getBytes(StandardCharsets.UTF_8));
        this.ttl = Duration.ofDays(properties.auth().tokenDays());
        // Panel sessiyasi qisqa: admin tokeni o'g'irlansa, zarar oynasi ham qisqa bo'lsin.
        this.adminTtl = Duration.ofHours(properties.auth().adminTokenHours());
    }

    public String issue(Long userId, String clientId) {
        return issue(userId, clientId, User.ROLE_USER);
    }

    public String issue(Long userId, String clientId, String role) {
        long now = System.currentTimeMillis();
        Duration life = User.ROLE_ADMIN.equals(role) ? adminTtl : ttl;
        return Jwts.builder()
                .subject(String.valueOf(userId))
                .claim(CLAIM_CLIENT_ID, clientId)
                .claim(CLAIM_ROLE, role)
                .issuedAt(new Date(now))
                .expiration(new Date(now + life.toMillis()))
                .signWith(key)
                .compact();
    }

    /** Token yaroqsiz yoki muddati o'tgan bo'lsa — null. */
    public Parsed parse(String token) {
        try {
            Claims claims = Jwts.parser().verifyWith(key).build()
                    .parseSignedClaims(token).getPayload();
            String role = claims.get(CLAIM_ROLE, String.class);
            return new Parsed(Long.valueOf(claims.getSubject()),
                    claims.get(CLAIM_CLIENT_ID, String.class),
                    // V37 gacha berilgan tokenlarda rol yo'q — ular oddiy foydalanuvchi
                    role == null ? User.ROLE_USER : role);
        } catch (Exception e) {
            return null;
        }
    }

    public record Parsed(Long userId, String clientId, String role) {
    }
}
