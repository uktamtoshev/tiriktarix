package uz.tiriktarix.auth;

/**
 * So'rov kontekstidagi foydalanuvchi: id, uning profil clientId si va roli.
 * Administratorda clientId bo'lmaydi — unda o'quvchi profili yo'q.
 */
public record AuthPrincipal(Long userId, String clientId, String role) {

    public boolean isAdmin() {
        return User.ROLE_ADMIN.equals(role);
    }
}
