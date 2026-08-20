-- Ajdodlar ovozining keshi.
--
-- MUAMMO. Har safar bola ajdodning gapini tinglaganda, matn tashqi TTS
-- xizmatiga qaytadan yuborilardi va qaytadan pul to'lanardi. Bir xil jumla —
-- masalan Amir Temurning salomlashuvi — har bir bolada, har bir ochilishda
-- yangidan sintez qilinardi. Ovoz hech qayerda saqlanmasdi: na faylda,
-- na bazada.
--
-- NEGA BAZAGA, FAYLGA EMAS. Loyihada ma'lumot bitta joyda — Postgresda —
-- turishi qoidasi bor. Audio kichik (bir jumla ~20–60 KB) va soni cheklangan.
--
-- KESH — MA'LUMOT EMAS. Uni yo'qotib qo'yish xavfli emas: matn joyida, ovozni
-- istalgan payt qaytadan sintez qilsa bo'ladi. Shu sababli ikkita qaror:
--   1) jadval hajmi cheklangan — eng kam ishlatilgani o'chiriladi (LRU);
--   2) `tools/backup-db.sh` uning MAZMUNINI nusxaga olmaydi — aks holda
--      12 MB lik nusxa yuz megabaytga o'sardi, hech qanday foyda bermay.
--
-- KALIT — OVOZ + MATN. Ajdod slug'i kalitga kirmaydi ataylab: audioni aynan
-- shu ikkisi belgilaydi, va bir xil jumla ikki ajdodda takror saqlanmaydi.
-- Ovoz (`voice`) almashsa, kalit ham o'zgaradi va eski yozuv ishlatilmaydi —
-- shuning uchun metodist ovozni almashtirgach, eski tovush "yopishib" qolmaydi.

CREATE TABLE voice_cache (
    id           bigserial PRIMARY KEY,
    -- SHA-256 (ovoz + matn) — hex qatori. Matnning o'zi uzun bo'lishi mumkin,
    -- shuning uchun indeks xesh ustida.
    cache_key    text        NOT NULL UNIQUE,
    -- Tashxis uchun: qaysi ovoz bilan va qaysi matn sintez qilingan.
    voice        text,
    text_uz      text        NOT NULL,
    content_type text        NOT NULL,
    audio        bytea       NOT NULL,
    bytes        integer     NOT NULL CHECK (bytes > 0),
    created_at   timestamptz NOT NULL DEFAULT now(),
    last_used_at timestamptz NOT NULL DEFAULT now(),
    hits         integer     NOT NULL DEFAULT 0
);

-- LRU tozalash shu indeks bo'yicha ishlaydi.
CREATE INDEX idx_voice_cache_lru ON voice_cache (last_used_at);
