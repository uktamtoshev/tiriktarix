-- «Iskandar Sirdaryo bo'yida» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V19 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «Македонский против согдийцев» (Makedonskiy so'g'diylarga qarshi)
--   kanal      : PROFI EDUCATION (169 ming obunachi) — o'quv kanali
--   davomiyligi: 396 sekund = 6 daq. 36 son. → 7 daqiqa
--   til        : RUS — diqqat! Katalogdagi birinchi ruscha video.
--                O'zbek tilida aynan O'rta Osiyo yurishi haqidagi yagona
--                material 87 daqiqalik jonli efir edi (Fikrat) — bolalar
--                formatiga mos emas. Ruscha belgisi bilan qabul qilindi.
--   nega shu   : mavzu kartochka bilan aynan mos — umumiy Aleksandr
--                biografiyasi emas, So'g'diyona qarshiligi. Format —
--                o'qituvchining tinch hikoyasi, jangari kadrlar yo'q
--                (pleerda tekshirildi).
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- OGOHLANTIRISH METODIST UCHUN: til ruscha — auditoriya uchun to'siq
-- bo'lishi mumkin; Spitamen va Aleksandriya Esxata qay darajada
-- yoritilganini to'liq ko'rib baholang. O'zbekcha muqobil chiqsa,
-- almashtirish tavsiya etiladi.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=p7HUguyy6kg',
       status           = 'PUBLISHED',
       duration_minutes = 7,
       source           = $$YouTube: PROFI EDUCATION (rus tilida)$$
 WHERE title_uz = $$Iskandar Sirdaryo bo'yida$$;
