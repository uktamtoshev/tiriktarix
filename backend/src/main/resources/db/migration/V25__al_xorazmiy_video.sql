-- «Al-Xorazmiy va algoritm» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V24 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «Al-Xorazmiy hayoti va ijodi // Al-Xorazmiy haqida ma'lumot»
--   kanal      : TARIXIY VIDEOLAR TV (136 ming obunachi, 128 ming ko'rish) —
--                yirik o'zbek tarix kanali, o'z mahsuloti
--   davomiyligi: 769 sekund = 12 daq. 49 son. → 13 daqiqa
--   til        : o'zbek
--   nega shu   : yagona nomzod chizilgan illyustratsiya bilan — pleerda
--                tekshirildi: al-Xorazmiy patda kitob ustida, atrofida
--                raqamlar va geometrik chizmalar. Bolalar kartochkasi
--                uchun aynan shunday tasviriy til kerak. Kanal katta va
--                faol, ya'ni havola yo'qolib qolmaydi. Teglarda #xorazm —
--                olimning vatani ham tilga olingan.
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- OGOHLANTIRISH METODIST UCHUN. Kartochkada ~3 daqiqa ko'zda tutilgan,
-- video 13 daqiqa. Kartochka mavzusining o'zagi — «algoritm» va «algebra»
-- so'zlari qayerdan kelgani hamda o'nlik raqamlarning dunyoga tarqalishi;
-- video esa umumiy biografiya. Bu uchta nuqta qanchalik yoritilganini
-- to'liq ko'rib tasdiqlash kerak.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=HO-r634Sq98',
       status           = 'PUBLISHED',
       duration_minutes = 13,
       source           = $$YouTube: TARIXIY VIDEOLAR TV$$
 WHERE title_uz = $$Al-Xorazmiy va algoritm$$;
