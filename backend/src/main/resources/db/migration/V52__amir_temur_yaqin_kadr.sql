-- Amir Temur tasviri — YAQIN KADR.
--
-- MUAMMO. Eski fayl to'liq sahnani ko'rsatardi: taxt, ayvon, orqa fondagi
-- bino. Medalyon aylanasi kichkina (200 px atrofida), shuning uchun yuz
-- deyarli ko'rinmasdi — bola kim bilan gaplashayotganini tanimasdi.
--
-- YECHIM. O'sha tasvirning bosh va yelka qismi kesib olindi va kattalashtirildi.
-- Tasvirning o'zi o'zgargani yo'q, faqat kadr — shuning uchun izoh ham,
-- «portret emas» ogohlantirishi ham avvalgidek qoladi.

UPDATE heroes
   SET portrait_url = '/portretlar/amir-temur-yaqin.webp'
 WHERE slug = 'amir-temur';
