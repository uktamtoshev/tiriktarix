-- Amir Temur kartochkasiga zamonaviy rassom tasviri biriktiriladi.
--
-- HALOLLIK. Bu TARIXIY YODGORLIK EMAS — zamonaviy illyustratsiya. Loyihaning
-- portret qoidasi shuni talab qiladi: tasvir turi har doim ochiq yoziladi va
-- bolaga «bu o'sha davrdan qolgan» degan taassurot berilmaydi. Shu sababli
-- portrait_kind = 'ARTWORK' («Rassom tasavvuri» deb ko'rsatiladi), izohda esa
-- sun'iy intellekt yordami ochiq aytiladi.
--
-- ESKI TASVIR YO'QOTILMADI. V9 da Amir Temurga 1405–1409-yillardagi HAQIQIY
-- miniatura biriktirilgan edi (Wikimedia, public domain, TSMK Bagdad 411).
-- U fayl — /portretlar/amir-temur.jpg — diskda saqlanib qoladi. Yangi rasm
-- alohida nom bilan qo'yildi (amir-temur-portret.jpg), shuning uchun kerak
-- bo'lsa eski miniaturaga bir qatorlik migratsiya bilan qaytish mumkin.
--
-- Fayl: /portretlar/amir-temur-portret.jpg — 718×395, 70 KB (limit 300 KB),
-- jpeg (webp konverteri mashinada yo'q: cwebp/ImageMagick o'rnatilmagan,
-- sips esa webp yozolmaydi — bu tekshirildi).

UPDATE heroes
   SET portrait_url         = '/portretlar/amir-temur-portret.jpg',
       portrait_kind        = 'ARTWORK',
       portrait_caption_uz  = $$Zamonaviy illyustratsiya (Zafarnoma miniatyuralari asosida, AI yordamida)$$,
       portrait_source      = $$TIRIK TARIX loyihasi uchun yaratilgan, 2026$$
 WHERE slug = 'amir-temur';
