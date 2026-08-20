-- Qahramon 2.0: tiplar (arxetiplar) va kvest orqali ochiladigan jihozlar.
--
-- IKKI YANGILIK:
-- 1) Tip — bu shaxsni tanlash, shuning uchun barcha tiplar darhol va bepul
--    ochiq. Mukofot esa avvalgidek jihoz bo'lib qoladi.
-- 2) Jihoz endi faqat XP bilan emas, aniq TOPSHIRIQ bajarilishi bilan ham
--    ochiladi: davr testini yaxshi yechish, qahramon kvizidan o'tish, kunlik
--    topishmoqlarni yechish, qahramonlar bilan suhbatlashish.
--
-- ESKI QOIDA O'ZGARMAYDI: «ochiq» holati saqlanmaydi — u har safar profil va
-- faoliyat tarixidan hisoblanadi. Demak XP sarflanmaydi va bir marta ochilgan
-- jihoz hech qachon yopilmaydi. 19 ta eski jihozning sharti ham tegilmagan.

-- ============================== TIPLAR ==============================

ALTER TABLE learner_profiles ADD COLUMN avatar_archetype TEXT
    CHECK (avatar_archetype IN (
        'jangchi', 'kochmanchi', 'amirzoda', 'sarkarda', 'oddiy-yigit',
        'jangchi-qiz', 'kochmanchi-qiz', 'malika', 'olima', 'oddiy-qiz'
    ));

-- Eskidan bor foydalanuvchilar tipsiz qolmasin: jinsi bo'yicha oddiy tip.
-- Mehmonlarda jins ham bo'sh — ular tipsiz qoladi (bu to'g'ri holat).
UPDATE learner_profiles
   SET avatar_archetype = CASE avatar_gender
                              WHEN 'FEMALE' THEN 'oddiy-qiz'
                              ELSE 'oddiy-yigit'
                          END
 WHERE avatar_gender IS NOT NULL;

-- ========================= KVEST SHARTLARI =========================

-- unlock_ref — shartning manzili: davr kodi yoki qahramon slug'i.
-- Bo'sh bo'lsa shart «har qanday» degani (masalan, istalgan davr testi).
ALTER TABLE avatar_items ADD COLUMN unlock_ref TEXT;

ALTER TABLE avatar_items DROP CONSTRAINT IF EXISTS avatar_items_unlock_type_check;
ALTER TABLE avatar_items ADD CONSTRAINT avatar_items_unlock_type_check
    CHECK (unlock_type IN (
        'LEVEL', 'TOTAL_XP', 'STREAK',
        'QUIZ_PERFECT',     -- unlock_value ta testni xatosiz yechish
        'ERA_TEST_SCORE',   -- davr testida kamida unlock_value ball (ref = davr kodi yoki bo'sh)
        'HERO_QUIZ_SCORE',  -- qahramon kvizida kamida unlock_value ball (ref = qahramon slug'i)
        'RIDDLE_COUNT',     -- unlock_value ta kunlik topishmoqni yechish
        'TALK_HEROES'       -- unlock_value ta turli qahramon bilan suhbatlashish
    ));

-- ===================== YANGI JIHOZLAR KATALOGI =====================
-- Uch material chizig'i: mis → kumush → oltin. Ordinal shunday qo'yilganki,
-- «Xazina»da bir chiziqning uch bosqichi yonma-yon turadi.

INSERT INTO avatar_items (code, name_uz, slot, description_uz, unlock_type, unlock_value, unlock_ref, ordinal) VALUES

-- ------------------------- Dubulg'a chizig'i -------------------------
('mis-dubulga', $$Mis dubulg'a$$, 'HEAD',
 $$Mis — insoniyat eritishni o'rgangan birinchi metall. Zarafshon vodiysidagi qadimgi ustaxonalarda mis buyumlar to'rt ming yil oldin ham yasalgan.$$,
 'ERA_TEST_SCORE', 8, NULL, 20),
('kumush-dubulga', $$Kumush dubulg'a$$, 'HEAD',
 $$Iloq konlaridan qazib olingan kumush butun Movarounnahr zarbxonalarini dirham bilan ta'minlagan — bu kumush Boltiqbo'yigacha yetib borgan.$$,
 'QUIZ_PERFECT', 3, NULL, 21),
('oltin-dubulga', $$Oltin dubulg'a$$, 'HEAD',
 $$Oltin suvi yuritilgan dubulg'ani faqat oliy martabali jangchilar kiygan: jangda uni uzoqdan ko'rib, saf shu tomonga tortilgan.$$,
 'LEVEL', 12, NULL, 22),

-- -------------------------- Sovut chizig'i --------------------------
('mis-sovut', $$Mis sovut$$, 'BODY',
 $$Ilk sovutlar mis va bronzadan yasalgan. Ular temirdan yumshoqroq bo'lsa-da, o'q va qilich zarbasini sezilarli susaytirgan.$$,
 'ERA_TEST_SCORE', 8, NULL, 23),
('kumush-sovut', $$Kumush sovut$$, 'BODY',
 $$Kumush plastinkalar bilan bezatilgan sovut marosim liboslariga yaqin turgan: kumush qorayib qolmasligi uchun uni doim tozalab turishgan.$$,
 'QUIZ_PERFECT', 5, NULL, 24),
('oltin-sovut', $$Oltin sovut$$, 'BODY',
 $$Temuriylar saroyida zar bilan qoplangan sovut sovg'a qilingan. Zar — oltin ip; u bilan tikish uchun alohida hunarmand — zardo'z kerak bo'lgan.$$,
 'ERA_TEST_SCORE', 9, 'temuriylar', 25),

-- -------------------------- Qalqon chizig'i --------------------------
('mis-qalqon', $$Mis qalqon$$, 'SHIELD',
 $$Yog'och gardishga mis varaq qoqilgan qalqon. Mis yaltirab quyoshni qaytargani uchun raqibning ko'zini qamashtirgan.$$,
 'TALK_HEROES', 3, NULL, 26),
('kumush-qalqon', $$Kumush qalqon$$, 'SHIELD',
 $$Kumush qoplamali qalqonlar ko'proq qo'riqchilarga berilgan — ular hukmdor yonida turgani uchun jihozi ham ko'zga tashlanadigan bo'lgan.$$,
 'QUIZ_PERFECT', 10, NULL, 27),
('oltin-qalqon', $$Oltin qalqon$$, 'SHIELD',
 $$Oltin qalqon jangdan ko'ra qabul marosimlari uchun bo'lgan: uning yuzasiga girih — sakkiz burchakli yulduz naqshi tushirilgan.$$,
 'STREAK', 14, NULL, 28),

-- ---------------------------- Qurollar ----------------------------
('sarkarda-nayzasi', $$Sarkarda nayzasi$$, 'WEAPON',
 $$Amir Temur qo'shinida nayzachilar alohida saf tuzgan. Sarkarda nayzasining dastasiga bayroq bog'langan — u jangda buyruq belgisi bo'lgan.$$,
 'HERO_QUIZ_SCORE', 8, 'amir-temur', 29),
('ulugbek-kamoni', $$Ulug'bek kamoni$$, 'WEAPON',
 $$Mirzo Ulug'bek rasadxonasidagi ulkan sekstant ham kamon kabi yoy shaklida bo'lgan. Uning radiusi 40 metrga yaqin edi.$$,
 'HERO_QUIZ_SCORE', 8, 'mirzo-ulugbek', 30),
('oybolta', $$Oybolta$$, 'WEAPON',
 $$Oybolta — tig'i yarim oyga o'xshagan bolta. Uning nomi ham shundan: «oy» va «bolta».$$,
 'RIDDLE_COUNT', 10, NULL, 31),

-- ----------------------------- Bezak -----------------------------
('navoiy-devoni', $$Navoiy devoni$$, 'ACCESSORY',
 $$Devon — shoirning she'rlari to'plami. Alisher Navoiy to'rtta devonini «Xazoyin ul-maoniy» — «Ma'nolar xazinasi» deb atagan.$$,
 'HERO_QUIZ_SCORE', 8, 'alisher-navoiy', 32);
