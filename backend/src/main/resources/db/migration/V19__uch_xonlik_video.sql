-- «Uch xonlik: bir yurt, uch davlat» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V18 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «O'zbek xonliklari: tashkil topish, yuksalish va xotima»
--   kanal      : KunUZ — mamlakatning yirik axborot nashri rasmiy kanali
--                (4,1 mln obunachi, tasdiqlangan) — qayta yuklama emas
--   davomiyligi: 679 sekund = 11 daq. 19 son. → 11 daqiqa
--   til        : o'zbek
--   nega shu   : kartochka mavzusi bilan to'liq mos — bitta xonlik emas,
--                uchchala davlatning paydo bo'lishi, yuksalishi va yakuni
--                bitta arkda. Format: boshlovchi tarixiy XARITALAR fonida,
--                arxiv kadrlari manbasi ko'rsatilgan (UzArxiv). Ohang
--                xolis, tarixshunoslik-kartografiya nuqtai nazaridan.
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- OGOHLANTIRISH METODIST UCHUN. Mavzu siyosiy nozik chegaralarga yaqin
-- (parchalanish, keyinroq mustamlaka bosqini). Pleerda ikki nuqtada
-- tekshirildi — ohang tinch; lekin 11 daqiqani to'liq ko'rib, so'nggi
-- qismda («xotima») bosqin qanday berilganini odam baholashi shart.
-- Kartochkada ~4 daqiqa ko'zda tutilgan edi, video 11 daqiqa.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=R_E824RfEd4',
       status           = 'PUBLISHED',
       duration_minutes = 11,
       source           = $$YouTube: KunUZ$$
 WHERE title_uz = $$Uch xonlik: bir yurt, uch davlat$$;
