-- «Turkiston muxtoriyati» seriyasiga tashqi video biriktiriladi.
--
-- BU KATALOGDAGI ENG NOZIK MAVZU. Tanlov mezoni odatdagidan qattiqroq edi:
-- shiddatli sarlavhali va siyosiy ohangli materiallar rad etildi (masalan,
-- «Turon sotqinlari», «qonga botirilishi» kabi ramkalar). Tanlangan video —
-- muxtoriyat tarixini uning ilhomchisi, ma'rifatparvar G'ulom Zafariy
-- shaxsi orqali tinch, biografik ohangda ochadi; pleerda tekshirildi:
-- shafqatsiz kadrlar yo'q.
--
-- Video: «Turkiston muxtoriyati ilhomchisi — G'ulom Zafariy»
--   kanal      : UzA — O'zbekiston Milliy axborot agentligining rasmiy kanali
--   davomiyligi: 238 sekund = 3 daq. 58 son. → 4 daqiqa
--   til        : o'zbek (avtomatik subtitr ham o'zbek — a.uz)
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- METODIST UCHUN MAJBURIY: bu mavzuda videoni TO'LIQ ko'rib chiqish shart —
-- Qo'qon fojiasi qanday tilga olinishi, ohang va yosh mosligi odam tomonidan
-- tasdiqlanishi kerak. Video muxtoriyatning to'liq tarixini emas, uni
-- Zafariy shaxsi orqali qisman yoritadi — kartochka tavsifi bilan farqni
-- ham metodist baholasin.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=PaNWwX3HHSI',
       status           = 'PUBLISHED',
       duration_minutes = 4,
       source           = $$YouTube: UzA (O'zbekiston Milliy axborot agentligi)$$
 WHERE title_uz = $$Turkiston muxtoriyati$$;
