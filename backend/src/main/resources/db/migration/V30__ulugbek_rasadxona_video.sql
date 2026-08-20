-- «Ulug'bek rasadxonasi: 1018 yulduz» seriyasiga tashqi video biriktiriladi.
-- Bu QAHRAMON kartochkasi (mirzo-ulugbek), davr kartochkasi emas.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V29 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «Mirzo Ulugʻbek hayoti va ijodi // Mirzo Ulugʻbek haqida maʼlumot»
--   kanal      : TARIXIY VIDEOLAR TV (@TARIXIYVIDEOLARTV) — yirik o'zbek
--                tarix kanali, o'z chizilgan mahsuloti. V25 (Al-Xorazmiy)
--                kartochkasida ham shu kanal ishlatilgan.
--   davomiyligi: 595 sekund = 9 daq. 55 son. → 10 daqiqa
--   til        : o'zbek
--   ko'rishlar : 134 000+ — havolaning yo'qolib qolish ehtimoli past
--   tekshirildi: sarlavha, kanal, davomiylik, ochiqligi, embed ruxsati va
--                isFamilySafe belgisi 2026-07-31 da YouTube oEmbed hamda
--                sahifadagi playerResponse orqali tasdiqlangan
--
-- NEGA AYNAN SHU. Kartochka o'zagi — rasadxona ishi: sekstant, teleskopsiz
-- o'lchov, «Zij-i Ko'ragoniy» yulduzlar jadvali. Videoning teglarida
-- «Ulugʻbek rasadxonasi», «Ulugʻbek rasadxonasi haqida maʼlumot» va
-- «Zidji Ko'ragoniy» bor, ya'ni rasadxona va jadval alohida bo'lim sifatida
-- yoritiladi. Qolgan nomzodlar orasida bu — o'zbek tilidagi, 7 daqiqaga eng
-- yaqin, bolalar ko'ra oladigan chizilgan ta'limiy material. Kanal katta va
-- faol, katalogda allaqachon sinovdan o'tgan.
--
-- ALTERNATIVA (bir qatorni almashtirish kifoya). «Mirzo Ulugʻbek | Buyuk
-- bobolarim Bolaligi» — https://youtu.be/ssR3IK41Bog, 596 sekund = 9 daq.
-- 56 son., Astir animation studio (O'zbekiston Kinematografiya agentligi
-- ishtirokida). To'liq bolalar animatsiyasi, ohangi eng xavfsiz. Tanlanmadi
-- ikki sabab bilan: (1) mavzusi Ulug'bekning BOLALIGI, rasadxona ishi emas;
-- (2) afishasida bola qo'lida TELESKOP — kartochka esa aynan «teleskopsiz
-- o'lchov» haqida, ya'ni tasvir kartochka g'oyasiga zid.
--
-- ILMIY CHUQURLIK KERAK BO'LSA (metodist uchun uchinchi variant, RU):
-- «Обсерватория Улугбека: гигантский секстант с точностью до секунд дуги» —
-- https://youtu.be/t7dpzkfxh8o, 2263 sekund = 37 daq. 43 son., «Архириум».
-- Tavsifida aynan kartochkadagi mazmun bor: 40 metrli yer osti sekstanti,
-- meridian bo'ylab yo'nalish, yil uzunligining bir daqiqadan kam xato bilan
-- o'lchanishi va 1018 YULDUZLI katalog. Asosiy tanlovga olinmadi: rus tili,
-- 37 daqiqa, kichik kanal va Ulug'bekning o'ldirilishi videoning e'lon
-- qilingan to'rtta savolidan biri — bu bolalar kartochkasi uchun og'ir.
--
-- OGOHLANTIRISH METODIST UCHUN:
--   1) RAQAMLAR. Kartochkada 1018 yulduz. Videoda qaysi raqam aytilishini
--      to'liq ko'rmasdan tasdiqlab bo'lmaydi — manbalarda 1018/1019/1022
--      variantlari uchraydi. Ko'rib, kartochka bilan solishtirish kerak.
--   2) HIKOYANING OXIRI. Video «hayoti va ijodi» formatida, teglarida
--      «Mirzo Ulugʻbek va Abdulatif» bor — ya'ni o'ldirilish mavzusi
--      tegiladi. Qanday ohangda berilgani ko'rilishi shart; og'ir yoki
--      naturalistik bo'lsa — yuqoridagi animatsiyaga o'tiladi.
--   3) QAMROV. Video umumiy biografiya; sekstantning ishlash prinsipi
--      qanchalik tushuntirilgani tekshirilishi kerak. Yetarli bo'lmasa,
--      kartochka matni bilan to'ldiriladi.
--   4) DAVOMIYLIK: kartochkada ~7 daqiqa, videoda 10 — farq kichik.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=eFr3SUWeTbc',
       status           = 'PUBLISHED',
       duration_minutes = 10,
       source           = $$YouTube: TARIXIY VIDEOLAR TV$$
 WHERE title_uz = $$Ulug'bek rasadxonasi: 1018 yulduz$$;
