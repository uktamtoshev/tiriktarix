-- Kinozal: filmni to'liq ko'rganlik hisobi.
--
-- QOIDA: XP faqat BIRINCHI halol ko'rish uchun beriladi (+30) va filmdan
-- keyingi testning BIRINCHI urinishi uchun. Qayta ko'rish va qayta yechish —
-- mashq, XP bermaydi (aks holda bitta film bilan XP «fermasi» ochilardi).
--
-- Halollik tekshiruvi bazaga emas, xizmatga yozilgan: server start/complete
-- orasidagi vaqtni film davomiyligi bilan solishtiradi (FilmRules).
--
-- PII yo'q: yozuv anonim profil (learner_profiles.client_id) ga bog'lanadi.

CREATE TABLE film_watches (
    id               BIGSERIAL PRIMARY KEY,
    profile_id       BIGINT      NOT NULL REFERENCES learner_profiles (id) ON DELETE CASCADE,
    film_id          BIGINT      NOT NULL REFERENCES films (id) ON DELETE CASCADE,
    started_at       TIMESTAMPTZ,
    completed_at     TIMESTAMPTZ,
    watch_xp_awarded BOOLEAN     NOT NULL DEFAULT FALSE,
    quiz_xp_awarded  BOOLEAN     NOT NULL DEFAULT FALSE,
    UNIQUE (profile_id, film_id)
);

CREATE INDEX idx_film_watches_profile ON film_watches (profile_id);
