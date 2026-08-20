package uz.tiriktarix.auth;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.OffsetDateTime;

/**
 * Foydalanuvchi hisobi. Bolalar platformasi bo'lgani uchun elektron pochta va
 * telefon so'ralmaydi — faqat taxallus va parol saqlanadi.
 */
@Entity
@Table(name = "users")
public class User {

    public static final String ROLE_USER = "USER";
    public static final String ROLE_ADMIN = "ADMIN";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;

    private String passwordHash;

    /** USER — o'quvchi, ADMIN — boshqaruv paneli egasi (V37). */
    private String role;

    private OffsetDateTime createdAt;

    protected User() {
    }

    public User(String username, String passwordHash) {
        this(username, passwordHash, ROLE_USER);
    }

    public User(String username, String passwordHash, String role) {
        this.username = username;
        this.passwordHash = passwordHash;
        this.role = role;
        this.createdAt = OffsetDateTime.now();
    }

    public Long getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getRole() {
        return role == null ? ROLE_USER : role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public boolean isAdmin() {
        return ROLE_ADMIN.equals(getRole());
    }

    public OffsetDateTime getCreatedAt() {
        return createdAt;
    }
}
