-- «Avesto» sahifalari seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas. Kontseptsiya bo'yicha o'z animatsiyamiz
-- 2-fazada tayyorlanadi; hozircha kartochkaga tashqi ta'limiy video ulanadi.
-- Shu sababli interfeysda 4-bosqich matni «Animatsiya tayyor» emas, balki
-- «Video biriktirildi (tashqi manba)» deb ko'rsatiladi — bolaga yolg'on
-- aytilmaydi.
--
-- Video: «6-SINF QADIMGI DUNYO TARIXI 21-MAVZU: ZARDUSHTIYLIK VA AVESTO»
--   kanal      : Tarixchi.uz
--   davomiyligi: 829 sekund = 13 daq. 49 son. → 14 daqiqa
--   til        : o'zbek
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- verified = FALSE bo'lib qoladi: videoni metodist-tarixchi to'liq ko'rib
-- chiqmaguncha uni tasdiqlangan deb belgilash mumkin emas.
--
-- films_published_needs_video cheklovi o'z-o'zidan bajariladi: video_url
-- to'ldirilgani uchun status PUBLISHED bo'lishi mumkin.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=MPHK4D0yiy8',
       status           = 'PUBLISHED',
       duration_minutes = 14,
       source           = $$YouTube: Tarixchi.uz$$
 WHERE title_uz = $$«Avesto» sahifalari$$;
