-- Boburga Britaniya muzeyidagi tasvir biriktiriladi.
--
-- KIMLIGI ANIQ EMAS — VA BU IZOHDA OCHIQ YOZILGAN. Wikimedia Commons'dagi
-- tavsifda shunday deyilgan: «1605–1615 idealized portrait of Babur
-- (1483–1530) OR Mirza Muhammad Hakim (1553–1585)», muzeyning o'z nomi esa
-- umuman «Seated prince in Persian costume». Ya'ni rasmda Bobur ekani
-- isbotlanmagan. Loyihaning M1 prinsipi bo'yicha bunday narsani jimgina
-- «Bobur portreti» deb qo'yish mumkin emas, shuning uchun izohda
-- «kimligi aniq emas» degan gap turadi va bola buni o'qiydi.
--
-- Bu qaror foydalanuvchi bilan kelishildi (2026-07-31): tasvir qo'yiladi,
-- lekin ogohlantirish bilan.
--
-- ESKI FAYL SAQLANADI. Oldin 1598-yilgi miniatura turgan edi
-- (/portretlar/bobur.jpg) — u diskda qoladi, kerak bo'lsa bir qatorlik
-- migratsiya bilan qaytariladi.
--
-- Fayl: 578×780, webp, 134 KB. Litsenziya Commons API orqali tekshirildi.

UPDATE heroes
   SET portrait_url        = '/portretlar/bobur.webp',
       portrait_kind       = 'MINIATURE',
       portrait_caption_uz = $$Fors uslubidagi tasvir, taxminan 1605–1615-yillar, Britaniya muzeyi — kimligi aniq emas$$,
       portrait_source     = $$Wikimedia Commons, British Museum 1921,1011,0.3 — public domain$$
 WHERE slug = 'bobur';
