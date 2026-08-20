-- Boshqaruv paneli (admin panel): rol, amallar jurnali va integratsiya kalitlari.
--
-- ROL. Foydalanuvchi jadvaliga bitta ustun qo'shiladi. Alohida `admins` jadvali
-- ataylab yaratilmadi: parol tekshiruvi, JWT va BCrypt allaqachon `users` uchun
-- yozilgan, ikkinchi nusxasi faqat xatoliklar manbai bo'lardi.
--
-- ADMIN HISOBI SQL da yaratilmaydi. Parol BCrypt bilan xeshlanadi, buni Java
-- tomonda `AdminBootstrap` bajaradi: shunda parol migratsiya faylida ochiq
-- yotmaydi va uni env orqali almashtirish mumkin (TIRIK_TARIX_ADMIN_PASSWORD).

ALTER TABLE users ADD COLUMN role TEXT NOT NULL DEFAULT 'USER'
    CHECK (role IN ('USER', 'ADMIN'));


-- ===================== AMALLAR JURNALI =====================
--
-- Kontent ishonchliligi loyihaning 1-prinsipi: fakt kartochkasi manba va
-- metodist tasdig'i bilan yashaydi. Demak «kim tasdiqladi» va «kim o'chirdi»
-- degan savolga javob bo'lishi shart — aks holda tasdiq belgisi hech nimani
-- anglatmaydi. Jurnal faqat yoziladi, paneldan tahrirlanmaydi.

CREATE TABLE admin_audit_log (
    id          BIGSERIAL   PRIMARY KEY,
    admin_id    BIGINT      REFERENCES users (id),
    admin_login TEXT        NOT NULL,
    -- CREATE / UPDATE / DELETE / VERIFY / LOGIN / SECRET
    action      TEXT        NOT NULL,
    -- HERO / ERA / EVENT / FACT_CARD / QUIZ / FILM / MAP / USER / PROFILE / CHAT / INTEGRATION
    entity_type TEXT        NOT NULL,
    entity_id   BIGINT,
    summary_uz  TEXT        NOT NULL,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_admin_audit_created ON admin_audit_log (created_at DESC);


-- ===================== INTEGRATSIYA KALITLARI =====================
--
-- TTS (matnni ovozga) va STT (ovozni matnga) xizmatlari o'z kalitlari bilan
-- ishlaydi va bu kalitlar tez-tez yangilanadi. Ularni `application.yml` yoki
-- env da saqlash har safar serverni qayta ishga tushirishni talab qilardi,
-- shuning uchun kalitlar bazada turadi va paneldan almashtiriladi.
--
-- SIR MATNI OCHIQ SAQLANMAYDI. `secret_cipher` — AES-GCM bilan shifrlangan
-- qiymat (Java tomonidagi `SecretCipher`). Shifr kaliti bazada emas, env da:
-- TIRIK_TARIX_SECRETS_KEY. Panelga faqat oxirgi 4 belgi (`secret_hint`)
-- qaytariladi — kalitni ochib ko'rsatadigan endpoint umuman yo'q.

CREATE TABLE integration_keys (
    id            BIGSERIAL   PRIMARY KEY,
    -- Kod bilan chaqiriladi: IntegrationKeyService.secretOf("TTS_MAIN")
    code          TEXT        NOT NULL UNIQUE,
    kind          TEXT        NOT NULL CHECK (kind IN ('TTS', 'STT', 'LLM', 'OTHER')),
    label_uz      TEXT        NOT NULL,
    provider      TEXT,
    base_url      TEXT,
    -- TTS uchun ovoz nomi, STT/LLM uchun model nomi
    model         TEXT,
    secret_cipher TEXT,
    secret_hint   TEXT,
    active        BOOLEAN     NOT NULL DEFAULT TRUE,
    notes_uz      TEXT,
    updated_at    TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_by    TEXT
);

-- Boshlang'ich yozuvlar: kalitsiz, faqat «joy band qilingan» holatda.
-- Panel ularni «kalit kiritilmagan» deb ko'rsatadi va metodist/administrator
-- kalitni o'zi qo'yadi.
INSERT INTO integration_keys (code, kind, label_uz, provider, notes_uz) VALUES
('TTS_MAIN', 'TTS', $$Ovozlantirish (TTS) — asosiy$$, NULL,
 $$Ajdodlar nutqi va matnlarni ovozga aylantirish uchun. Xizmat klienti
IntegrationKeyService.secretOf('TTS_MAIN') orqali kalitni oladi.$$),
('STT_MAIN', 'STT', $$Nutqni tanish (STT) — asosiy$$, NULL,
 $$Bola savolini ovoz bilan berishi uchun. Xizmat klienti
IntegrationKeyService.secretOf('STT_MAIN') orqali kalitni oladi.$$),
('LLM_ANTHROPIC', 'LLM', $$Dialog dvigateli (Claude)$$, $$Anthropic$$,
 $$Zaxira yozuv. HOZIRCHA O'QILMAYDI: dialog dvigateli kalitni ANTHROPIC_API_KEY
env dan oladi va uni ishga tushishda bir marta o'qiydi. Bu yerdagi kalit
dvigatel bazaga ko'chirilgandan keyin ishlay boshlaydi.$$);
