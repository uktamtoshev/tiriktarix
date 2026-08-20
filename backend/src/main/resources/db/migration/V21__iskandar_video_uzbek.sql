-- «Iskandar Sirdaryo bo'yida» — video O'ZBEK TILIDAGISIGA almashtiriladi.
--
-- NEGA ALMASHTIRILDI. V20 da bu kartochkaga ruscha video biriktirilgan edi
-- (PROFI EDUCATION), chunki o'sha paytda o'zbek tilida mos material
-- topilmadi. Keyingi qidiruvda 6-sinf «Qadimgi dunyo tarixi» darsligining
-- 32-mavzusi topildi — u aynan kartochka mavzusi: O'rta Osiyo xalqlarining
-- yunon-makedon bosqinchilariga qarshi kurashi. Mahsulot o'zbek tilida
-- bo'lgani uchun o'zbekcha manba ruschadan afzal.
--
-- Video: «6-sinf. QADIMGI DUNYO TARIXI. 32-Mavzu: O'rta Osiyo xalqlarining
--         yunon-makedon istelochilariga qarshi»
--   kanal      : NURIDDIN RAHMONOV (31,4 ming obunachi, 30 ming ko'rish) —
--                «Avesto» kartochkasidagi muallif bilan bir xil kanal,
--                ya'ni sifat oldindan ma'lum
--   davomiyligi: 1019 sekund = 16 daq. 59 son. → 17 daqiqa
--   til        : o'zbek
--   nega shu   : darslik matni ekranda, o'qituvchi ovozi bilan; pleerda
--                tekshirildi — mil. avv. 334 va 330 yillar, Sharqqa yurish,
--                bosib olingan shaharlarga yunonlarni joylashtirish.
--                Jangari yoki qo'rqinchli kadrlar yo'q.
--   tekshirildi: sarlavha, kanal, davomiylik va ochiqligi 2026-07-30 da
--                YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- OGOHLANTIRISH METODIST UCHUN. Kartochkada ~3 daqiqa ko'zda tutilgan,
-- video 17 daqiqa. Spitamen va Aleksandriya Esxata metadatada tilga
-- olinmagan — ular darsda qanchalik yoritilganini to'liq ko'rib
-- tasdiqlash kerak. Format — darslik ekrani (skrinkast), Kinozalda bu
-- uchinchi shunday material.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=pNlDLWuzFAc',
       status           = 'PUBLISHED',
       duration_minutes = 17,
       source           = $$YouTube: NURIDDIN RAHMONOV$$
 WHERE title_uz = $$Iskandar Sirdaryo bo'yida$$;
