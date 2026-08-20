-- «Yangi usul maktablari» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V16 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «Turkiston jadidlarining xayriya jamiyatlari, yangi usul maktablari»
--   kanal      : UzA — O'zbekiston Milliy axborot agentligining rasmiy kanali
--                (273 ming obunachi), ya'ni qayta yuklama emas
--   davomiyligi: 1709 sekund = 28 daq. 29 son. → 28 daqiqa
--   til        : o'zbek
--   nega shu   : sarlavha kartochka mavzusi bilan so'zma-so'z mos; davlat
--                agentligi — betaraf ohang kafolatlangan. Tarixchi bilan
--                intervyu formati.
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- OGOHLANTIRISH METODIST UCHUN. Format — tarixchi bilan suhbat, 28 daqiqa;
-- kartochkada esa ~3 daqiqalik SHORT ko'zda tutilgan. Kichik yoshdagi
-- o'quvchi uchun quruq bo'lishi mumkin — bu mavzuga o'z animatsiyamiz
-- ayniqsa mos tushadi.
--
-- verified = FALSE bo'lib qoladi: metodist-tarixchi to'liq ko'rmaguncha.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=_H3umnuI_H8',
       status           = 'PUBLISHED',
       duration_minutes = 28,
       source           = $$YouTube: UzA (O'zbekiston Milliy axborot agentligi)$$
 WHERE title_uz = $$Yangi usul maktablari$$;
