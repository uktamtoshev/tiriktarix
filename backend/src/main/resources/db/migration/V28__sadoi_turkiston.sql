-- Kinozalga yangi kartochka: «Sadoi Turkiston» gazetasi.
--
-- NEGA YANGI KARTOCHKA, ALMASHTIRISH EMAS. V27 da «Birinchi o'zbek
-- matbuoti» kartochkasiga Behbudiyning Samarqanddagi nashrlari haqidagi
-- video biriktirilgan. «Sadoi Turkiston» — o'sha hikoyaning ikkinchi
-- yarmi: Toshkent matbuoti, boshqa odamlar, boshqa gazeta. Bittasini
-- ikkinchisi bilan almashtirish katalogni kambag'allashtiradi, shuning
-- uchun jadidlar davriga uchinchi seriya qo'shiladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V27 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «"Sadoi Turkiston" — milliy matbuotimiz durdonasi»
--        («Jadidlar — millat qahramonlari» turkumidan)
--   kanal      : UzA — O'zbekiston Milliy axborot agentligining RASMIY
--                kanali (@UzAuzb), V27 dagi video bilan bir turkum
--   davomiyligi: 638 sekund = 10 daq. 38 son. → 11 daqiqa
--   til        : o'zbek
--   tekshirildi: sarlavha, kanal, davomiylik, ochiqligi, embed ruxsati va
--                isFamilySafe belgisi 2026-07-30 da YouTube oEmbed hamda
--                sahifadagi playerResponse orqali tasdiqlangan
--
-- MAVZU BO'YICHA FAKTLAR (sinopsis shularga tayanadi):
--   «Sadoi Turkiston» 1914-yil 4-aprelda Toshkentda chiqa boshlagan.
--   Muharriri — Ubaydullaxo'ja Asadullaxo'jayev (Ubaydulla Xo'jayev),
--   Saratovda huquq bo'yicha o'qib qaytgan jadid. Gazeta atrofida Abdulla
--   Avloniy, Munavvarqori Abdurashidxonov kabi ma'rifatparvarlar
--   to'plangan; sahifalarida yosh Cho'lponning ilk asarlari bosilgan.
--   Manba: «O'zbekiston milliy ensiklopediyasi», jadid.uz.
--
-- OGOHLANTIRISH METODIST UCHUN:
--   1) DAVOMIYLIK: kartochkada 11 daqiqa deb yozildi — bu videoning
--      haqiqiy uzunligi, ya'ni bu yerda kartochka bilan video orasida
--      farq yo'q (V25–V27 dagidan farqli o'laroq).
--   2) YOSH: turkum kattalar auditoriyasiga qaralgan — o'smirlarga mos,
--      boshlang'ich sinf uchun emas.
--   3) Sinopsis matni videoni to'liq ko'rgandan keyin aniqlashtirilishi
--      mumkin: video qaysi tafsilotlarga urg'u berishini tekshirish kerak.
--
-- verified = FALSE.

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz,
                   poster_emoji, status, video_url, source, ordinal)
SELECT id, 'DOC', $$«Sadoi Turkiston» gazetasi$$, 11,
       $$1914-yil, Toshkent: bir gazeta qanday qilib butun o'lkaning ovoziga aylandi va uning sahifalarida kimlar yozgan.$$,
       $$🗞️$$, 'PUBLISHED',
       'https://www.youtube.com/watch?v=d7s55YBvVtQ',
       $$YouTube: UzA — O'zbekiston Milliy axborot agentligi$$, 3
  FROM eras WHERE code = 'jadidlar';
