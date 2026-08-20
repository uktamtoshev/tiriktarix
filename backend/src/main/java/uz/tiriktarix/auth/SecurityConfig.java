package uz.tiriktarix.auth;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.HttpStatusEntryPoint;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

/**
 * Mavjud endpointlar avvalgidek ochiq qoladi — ular anonim clientId bilan
 * ishlaydi. Faqat yangi qo'shilgan shaxsiy endpointlar token talab qiladi.
 *
 * <p>V37: {@code /api/admin/**} butunlay yopiq va faqat ADMIN roliga ochiq.
 * Kirish endpointi istisno — usiz token olib bo'lmaydi.
 *
 * TODO: rate-limiting hozircha skoupdan tashqarida.
 */
@Configuration
public class SecurityConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http, JwtAuthFilter jwtAuthFilter) throws Exception {
        http
                .csrf(csrf -> csrf.disable())
                // CORS sozlamalari WebConfig dagi kabi qo'llanadi
                .cors(cors -> {})
                .sessionManagement(s -> s.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(reg -> reg
                        .requestMatchers("/api/auth/me").authenticated()
                        .requestMatchers("/api/avatar/**").authenticated()
                        .requestMatchers("/api/admin/auth/login").permitAll()
                        .requestMatchers("/api/admin/**").hasRole(User.ROLE_ADMIN)
                        .anyRequest().permitAll())
                .exceptionHandling(e -> e
                        .authenticationEntryPoint(new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED))
                        // Token bor, lekin roli yetmaydi — 401 emas, 403 qaytsin:
                        // panel bu ikkisini farqlaydi (qayta kirish yoki «ruxsat yo'q»).
                        .accessDeniedHandler((request, response, ex) ->
                                response.sendError(HttpStatus.FORBIDDEN.value(), "Ruxsat yo'q")))
                .addFilterBefore(jwtAuthFilter, UsernamePasswordAuthenticationFilter.class);
        return http.build();
    }
}
