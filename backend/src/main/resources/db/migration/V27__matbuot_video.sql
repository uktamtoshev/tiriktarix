-- «Birinchi o'zbek matbuoti» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V26 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «Jadid matbuoti: "Samarqand" gazetasi va "Oyina" jurnali»
--        («Jadidlar — millat qahramonlari» turkumidan)
--   kanal      : UzA — O'zbekiston Milliy axborot agentligining RASMIY
--                kanali (@UzAuzb). Katalogdagi eng vakolatli manbalardan
--                biri: davlat axborot agentligining o'z mahsuloti,
--                perezaliv emas.
--   davomiyligi: 1284 sekund = 21 daq. 24 son. → 21 daqiqa
--   til        : o'zbek
--   tekshirildi: sarlavha, kanal, davomiylik, ochiqligi, embed ruxsati va
--                isFamilySafe belgisi 2026-07-30 da YouTube oEmbed hamda
--                sahifadagi playerResponse orqali tasdiqlangan
--
-- NEGA AYNAN SHU. Kartochka matni — «Gazeta va teatr qanday qilib ma'rifat
-- quroliga aylandi». Video kartochkaning o'zida nomlangan ikkita nashrga —
-- Behbudiyning «Samarqand» gazetasi va «Oyina» jurnaliga — bag'ishlangan,
-- ya'ni mavzuga tekkan emas, aynan ustidan yozilgan. Behbudiy esa matbuot
-- va teatrni bir-biriga bog'laydigan shaxs: «Padarkush» muallifi ham u.
-- Ohang xolis va dunyoviy, o'zagi — ma'rifat, siyosat emas.
--
-- ALTERNATIVA (bir qatorni almashtirish kifoya). Xuddi shu turkumdan
-- «Jadid teatrlari: "Padarkush" effekti» — https://youtu.be/xp5lhwEIKX8,
-- 702 sekund = 11 daq. 42 son., UzA. Kartochkaning teatr yarmini yopadi va
-- davomiyligi 5 daqiqaga yaqinroq. Agar metodist matbuot emas, teatrni
-- oldinga qo'yishni ma'qul ko'rsa — o'sha havolaga o'tiladi.
--
-- OGOHLANTIRISH METODIST UCHUN:
--   1) DAVOMIYLIK: kartochkada ~5 daqiqa, videoda 21 daqiqa. Bola bir
--      o'tirishda ko'rishi qiyin — dars ichida bo'lakka bo'lib berish yoki
--      kartochka davomiyligini qayta baholash kerak.
--   2) YOSH: bu kattalar auditoriyasiga qaralgan hujjatli turkum —
--      o'smirlarga mos, boshlang'ich sinf uchun emas.
--   3) QAMROV: kartochka teatrni ham va'da qiladi. «Padarkush» va «Turon»
--      truppasi bu qismda qanchalik yoritilganini to'liq ko'rib tekshirish
--      kerak; yetarli bo'lmasa — yuqoridagi alternativa.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=CUydgsPs2k8',
       status           = 'PUBLISHED',
       duration_minutes = 21,
       source           = $$YouTube: UzA — O'zbekiston Milliy axborot agentligi$$
 WHERE title_uz = $$Birinchi o'zbek matbuoti$$;
