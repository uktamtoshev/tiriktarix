-- «Buxoro: olimlar shahri» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13, V14 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «O'zbekiston tarixi | Animatsion rolik 16-DARS. "Somoniylar"»
--   kanal      : ALDaniy — Maktabgacha va maktab ta'limi vazirligi uchun
--                tayyorlangan o'quv roliki (vazirlik logotipi kadrda turadi)
--   davomiyligi: 303 sekund = 5 daq. 03 son. → 5 daqiqa
--   til        : o'zbek
--   nega shu   : bu haqiqiy animatsiya, ekran yozuvi emas. Kinozaldagi
--                birinchi ikki nashr skrinkast bo'lgani uchun bu bo'lim
--                ko'rinishini sezilarli yaxshilaydi. Manba — vazirlik, ya'ni
--                ishonchli va dunyoviy o'quv materiali.
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- OGOHLANTIRISH METODIST UCHUN. Rolik Somoniylar DAVLATI haqida: asos
-- solinishi, boshqaruv va davlatning yemirilishi. Kartochka tavsifida esa
-- «kutubxonalar, olimlar va ular yozgan kitoblar» deyilgan. Videoning
-- boshida kutubxona sahnasi bor, lekin Ibn Sino, Rudakiy va Narshaxiy
-- alohida yoritilmaydi. Ya'ni video mavzuga qo'shni, aynan ustma-ust emas —
-- kartochka tavsifini videoga moslash yoki keyinchalik aniqroq video topish
-- kerak bo'ladi.
--
-- verified = FALSE bo'lib qoladi: metodist-tarixchi to'liq ko'rmaguncha.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=oOxREWL06E8',
       status           = 'PUBLISHED',
       duration_minutes = 5,
       source           = $$YouTube: ALDaniy (Maktabgacha va maktab ta'limi vazirligi)$$
 WHERE title_uz = $$Buxoro: olimlar shahri$$;
