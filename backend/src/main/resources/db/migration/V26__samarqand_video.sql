-- «Bir kun Samarqandda, 1400-yil» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V25 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «TEMURIYLAR DAVRI MADANIYATI» («Moziyga sayohat» turkumidan)
--   kanal      : O'zR FA Temuriylar tarixi davlat muzeyi — Fanlar
--                akademiyasi muzeyining RASMIY kanali. Katalogdagi eng
--                yuqori ilmiy vakolatli manba: muzey xodimi ekspozitsiya
--                ichida turib gapiradi.
--   davomiyligi: 2062 sekund = 34 daq. 22 son. → 34 daqiqa
--   til        : o'zbek
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- NEGA AYNAN SHU. Kartochka Temuriylar poytaxtidagi kundalik hayot
-- haqida: bozor, hunarmandlar ustaxonasi, madrasa, shahar devorlari.
-- Qidiruvda «bir kun shaharda» janridagi o'zbekcha video topilmadi.
-- Mavjudlaridan bu — mavzuga eng yaqini: madaniyat, hunarmandchilik va
-- muzey buyumlari orqali davr turmushi ko'rsatiladi; qolganlari yo
-- me'morchilik (Registon kartochkasi bor), yo Temur biografiyasi
-- (alohida kartochka), yo turistik roliklar.
--
-- OGOHLANTIRISH METODIST UCHUN — IKKI JIDDIY NUQTA:
--   1) DAVOMIYLIK: kartochkada ~4 daqiqa, videoda 34 daqiqa. Bu
--      katalogdagi eng katta farq. Bola bir o'tirishda ko'rmaydi.
--   2) MAVZU: video «madaniyat» haqida — ilm, san'at, me'morchilik.
--      Bozor va hunarmand ustaxonasi kabi kundalik maishiy tafsilotlar
--      qanchalik borligini to'liq ko'rib baholash kerak.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=sl3RmwFFVgU',
       status           = 'PUBLISHED',
       duration_minutes = 34,
       source           = $$YouTube: O'zR FA Temuriylar tarixi davlat muzeyi$$
 WHERE title_uz = $$Bir kun Samarqandda, 1400-yil$$;
