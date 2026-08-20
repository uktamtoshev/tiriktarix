-- Hisob qaydnomalari (akkauntlar).
--
-- ARXITEKTURA. Profil avvalgidek anonim clientId (UUID) ga bog'langan bo'lib
-- qoladi — barcha mavjud endpointlar o'zgarishsiz ishlaydi. Akkaunt esa profil
-- ustidagi qo'shimcha qatlam: ro'yxatdan o'tganda mavjud anonim profil akkauntga
-- biriktiriladi, shuning uchun XP, seriya va natijalar yo'qolmaydi.
--
-- BOLALAR PLATFORMASI. Email va telefon yig'ilmaydi — faqat taxallus va parol.

CREATE TABLE users (
    id            BIGSERIAL   PRIMARY KEY,
    username      TEXT        NOT NULL,
    password_hash TEXT        NOT NULL,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Taxallus katta-kichik harfdan qat'i nazar yagona bo'lishi kerak
CREATE UNIQUE INDEX idx_users_username_lower ON users (lower(username));

ALTER TABLE learner_profiles ADD COLUMN user_id BIGINT REFERENCES users (id);

-- Bitta akkauntga bitta profil
CREATE UNIQUE INDEX idx_learner_profiles_user ON learner_profiles (user_id)
    WHERE user_id IS NOT NULL;

-- Mehmonlarda bo'sh qoladi
ALTER TABLE learner_profiles ADD COLUMN avatar_gender TEXT
    CHECK (avatar_gender IN ('MALE', 'FEMALE'));
