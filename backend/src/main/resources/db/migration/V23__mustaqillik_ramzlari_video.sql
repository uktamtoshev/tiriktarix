-- «Mustaqillik ramzlari» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V21 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «O'zbekistonning tarixdagi bayroqlari — davlat bayrog'i — 18 noyabr»
--   kanal      : Mehnat Darsi (5,9 ming obunachi, 7,5 ming ko'rish) —
--                maktab o'quv kanali, qayta yuklama emas
--   davomiyligi: 481 sekund = 8 daq. 01 son. → 8 daqiqa
--   til        : o'zbek
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- KATTA CHEKLOV — METODIST DIQQATIGA. Kartochka mavzusi UCHTA ramz:
-- bayroq, GERB va MADHIYA. Bu video esa faqat BAYROQ haqida: Buxoro
-- amirligi, Xiva va Qo'qon xonliklari, Turkiston general-gubernatorligi
-- bayroqlaridan mustaqil O'zbekiston bayrog'igacha bo'lgan tarix.
-- Gerbdagi Humo qushi va madhiya mualliflari YORITILMAYDI.
--
-- Nega shunday bo'ldi: davlat ramzlari mavzusida 3 daqiqadan uzun va
-- uchala ramzni qamrab oladigan o'quv videosi topilmadi. Aniq mavzuli
-- materiallar (masalan, Forish AKM roliki, 220 ming ko'rish) 2–3
-- daqiqadan qisqa, uzunlari esa mavzudan chetga chiqadi.
--
-- TAVSIYA: bu kartochka o'z animatsiyamiz uchun birinchi navbatdagi
-- nomzod. Uchala ramz, 3 daqiqa, statik grafika, ssenariy to'g'ridan-
-- to'g'ri Konstitutsiyadan olinadi — va ranglar talqinida xato qilish
-- xavfi yo'qoladi.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=LtIaE86qukg',
       status           = 'PUBLISHED',
       duration_minutes = 8,
       source           = $$YouTube: Mehnat Darsi$$
 WHERE title_uz = $$Mustaqillik ramzlari$$;
