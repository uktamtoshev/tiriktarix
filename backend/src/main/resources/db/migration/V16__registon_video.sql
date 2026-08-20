-- «Registon qanday qurilgan» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13, V14, V15 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «REGISTON MAYDONI HAQIDA SIZ BILMAGAN FAKTLAR»
--   kanal      : Ruxsor Television — tasdiqlangan viloyat telekanali
--                (189 ming obunachi), ya'ni o'z mahsuloti, qayta yuklama emas
--   davomiyligi: 1496 sekund = 24 daq. 56 son. → 25 daqiqa
--   til        : o'zbek
--   nega shu   : dron bilan olingan kadrlarda uchta madrasa yuqoridan
--                ko'rinadi, boshlovchi esa maydonning o'zida turib
--                gapiradi — ansamblni obyekt sifatida ko'rsatadigan yagona
--                kanal darajasidagi material.
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- OGOHLANTIRISH METODIST UCHUN. Ikki nomuvofiqlik bor:
--   1) Kartochkada ~6 daqiqa deb yozilgan, video esa 25 daqiqa. Bola uchun
--      bu bir o'tirishda ko'p — kartochka tavsifini yoki kutilgan
--      davomiylikni qayta ko'rib chiqish kerak.
--   2) Format — boshlovchi bilan reportaj, sahnalashtirilgan hujjatli film
--      emas. Naqshlarning ma'nosi va qurilish tarixi qanchalik
--      yoritilganini odam ko'rib tasdiqlashi kerak.
--
-- verified = FALSE bo'lib qoladi: metodist-tarixchi to'liq ko'rmaguncha.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=iv0Bg1-kem8',
       status           = 'PUBLISHED',
       duration_minutes = 25,
       source           = $$YouTube: Ruxsor Television$$
 WHERE title_uz = $$Registon qanday qurilgan$$;
