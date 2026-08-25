-- Jihozlarda nodirlik darajasi va pullik jihozlar.
--
-- ⚠ V11 SHAPKASIDAGI QOIDAGA ISTISNO.
-- V11 da yozilgan edi: «ochiq» holati hech qayerda saqlanmaydi, u har safar
-- profildan qayta hisoblanadi, shu sababli ichki valyuta yo'q. Bu qoida
-- PAID turidan boshqa hamma tur uchun kuchida qoladi.
-- PAID jihoz XP bilan ochilmaydi va hech qachon ochilmaydi — u faqat sotib
-- olinadi, sotib olingani esa avatar_purchases jadvalida SAQLANADI.
-- Boshqacha ilojisiz: to'lovni profil ko'rsatkichlaridan qayta hisoblab
-- bo'lmaydi. XP hamon sarflanmaydi — pullik jihoz XP ga aloqador emas.
--
-- Bu migratsiya faqat KATALOG tomonini ochadi: bayroq, narx va sotib
-- olinganlar jadvali. Haqiqiy to'lov (Payme/Click, ota-ona roziligi,
-- cheklar) shu yerda YO'Q va alohida ish sifatida qilinadi.

-- ============================ Nodirlik ============================
-- COMMON — oddiy jihoz, RARE — nodir. Nodirlik faqat ko'rinish uchun:
-- u ochilish shartiga ta'sir qilmaydi, vitrinada belgi bo'lib turadi.

ALTER TABLE avatar_items
    ADD COLUMN rarity TEXT NOT NULL DEFAULT 'COMMON';

ALTER TABLE avatar_items ADD CONSTRAINT avatar_items_rarity_check
    CHECK (rarity IN ('COMMON', 'RARE'));

-- ============================== Narx ==============================
-- So'mda, butun son. Faqat PAID jihozda bo'ladi.

ALTER TABLE avatar_items
    ADD COLUMN price_uzs INT;

-- =========================== PAID turi ============================

ALTER TABLE avatar_items DROP CONSTRAINT IF EXISTS avatar_items_unlock_type_check;
ALTER TABLE avatar_items ADD CONSTRAINT avatar_items_unlock_type_check
    CHECK (unlock_type IN (
        'LEVEL', 'TOTAL_XP', 'STREAK',
        'QUIZ_PERFECT',     -- unlock_value ta testni xatosiz yechish
        'ERA_TEST_SCORE',   -- davr testida kamida unlock_value ball
        'HERO_QUIZ_SCORE',  -- qahramon kvizida kamida unlock_value ball
        'RIDDLE_COUNT',     -- unlock_value ta kunlik topishmoqni yechish
        'TALK_HEROES',      -- unlock_value ta turli qahramon bilan suhbat
        'PAID'              -- sotib olinadi; unlock_value ishlatilmaydi, 0 turadi
    ));

-- Narx va tur bir-biriga mos bo'lishi shart: PAID da narx bor,
-- qolganlarida yo'q. Shu bilan «bepul jihozga narx qo'yib qo'yish»
-- yoki «pullik jihozni narxsiz qoldirish» xatosi bazaga kirmaydi.
ALTER TABLE avatar_items ADD CONSTRAINT avatar_items_price_check
    CHECK (
        (unlock_type = 'PAID' AND price_uzs IS NOT NULL AND price_uzs > 0)
        OR
        (unlock_type <> 'PAID' AND price_uzs IS NULL)
    );

-- ========================= Sotib olinganlar =========================
-- Yagona joy, bu yerda «ochiq» holati haqiqatan saqlanadi.
-- price_uzs nusxasi ataylab saqlanadi: katalogdagi narx keyin o'zgarsa ham,
-- bola qancha to'laganini bilib turish kerak.

CREATE TABLE avatar_purchases (
    profile_id   BIGINT      NOT NULL REFERENCES learner_profiles (id) ON DELETE CASCADE,
    item_id      BIGINT      NOT NULL REFERENCES avatar_items (id) ON DELETE CASCADE,
    price_uzs    INT         NOT NULL,
    purchased_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (profile_id, item_id)
);

CREATE INDEX idx_avatar_purchases_profile ON avatar_purchases (profile_id);

COMMENT ON TABLE avatar_purchases IS
    'Sotib olingan pullik jihozlar. Loyihada «ochiq» holati saqlanadigan yagona joy.';
