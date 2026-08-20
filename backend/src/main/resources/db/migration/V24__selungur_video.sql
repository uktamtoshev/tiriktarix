-- «Selungur g'oridagi izlar» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V23 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «ENG QADIMGI ODAMLARNING RIVOJLANISH BOSQICHLARI»
--   kanal      : Tarix_Registan (263 obunachi, 4,4 ming ko'rish) — kichik
--                o'quv kanali, qayta yuklama emas
--   davomiyligi: 691 sekund = 11 daq. 31 son. → 12 daqiqa
--   til        : o'zbek
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- ENG MUHIM CHEKLOV — MAVZU KARTOCHKADAN KENG.
-- Kartochka aynan SELUNGUR g'ori haqida: Farg'ona vodiysidagi g'orda
-- arxeologlar nima topgani, tosh qurollar va «fergantrop» qoldiqlari.
-- Video esa umuman eng qadimgi odamlar haqida: rivojlanish bosqichlari,
-- yashagan hududlari, muzlik davri, qoyatosh rasmlari, totemizm.
-- SELUNGUR VA FERGANTROP TILGA OLINMAYDI (metadatada yo'q, pleerda
-- tekshirilgan qismlarda ham uchramadi).
--
-- Nega shunday: Selungur g'ori haqida internetda umuman video yo'q.
-- Qidiruv ikki marta, ikki tilda va qirg'iz tomondan ham o'tkazildi
-- (g'or aslida Qirg'iziston hududida, Aydarken yaqinida). Turmush va
-- Sputnik KG saytlarida videolar bor, lekin YouTube'da emas — ularni
-- Kinozalga qo'yib bo'lmaydi.
--
-- TAVSIYA: bu kartochka ham «Mustaqillik ramzlari» kabi o'z
-- animatsiyamiz uchun birinchi navbatdagi nomzod — 3 daqiqa, tosh
-- qurollar va g'or statik grafikada chiziladi, dalillar 6-sinf
-- darsligidan olinadi.
--
-- verified = FALSE. Metodist mavzu mosligini alohida baholasin.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=Tv031tnbgdI',
       status           = 'PUBLISHED',
       duration_minutes = 12,
       source           = $$YouTube: Tarix_Registan$$
 WHERE title_uz = $$Selungur g'oridagi izlar$$;
