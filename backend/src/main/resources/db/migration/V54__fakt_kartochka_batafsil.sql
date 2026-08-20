-- Fakt kartochkasiga BATAFSIL matn.
--
-- MUAMMO. Kartochkadagi «Batafsil» tugmasi qahramonning tarjimai holiga olib
-- borardi — ya'ni bola aynan SHU fakt haqida ko'proq bilmoqchi bo'lsa, uni
-- boshqa sahifaga jo'natardik va u yerdan o'sha faktni qidirishga majbur
-- qilardik. Kartochkaning o'zida chuqurroq matn yo'q edi.
--
-- YECHIM. `detail_uz` — o'sha faktning kengaytmasi: sana va joy tafsilotlari,
-- nima uchun muhimligi, atrofidagi tarixiy kontekst. Bir necha jumla, bolaga
-- tushunarli tilda va faqat TEKSHIRILGAN ma'lumot (M1 qoidasi o'zgarmaydi:
-- to'qima yo'q, rivoyat bo'lsa matnning o'zida shunday deyiladi).
--
-- Ustun NULL bo'lishi mumkin: batafsil matni hali yozilmagan kartochkada
-- «Batafsil» tugmasi avvalgidek tarjimai holga olib boradi.

ALTER TABLE fact_cards ADD COLUMN detail_uz TEXT;
