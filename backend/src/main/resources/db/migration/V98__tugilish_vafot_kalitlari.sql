-- Yangi ajdodlarning «Tug'ilishim» va «Umrimning oxiri» kartochkalariga
-- kafolatlangan tayanch kalitlarni qo'shish (V97 ning davomi).
--
-- Furqatning «Tug'ilishim» kartochkasida «tugil» o'zagi yo'q edi — «Qayerda
-- tug'ilgansiz?» degan eng birinchi savol javobsiz qolardi. Tekshirish
-- o'rniga hammasiga birdek qo'shamiz: takror kalit dvigatelga zarar qilmaydi.

-- Umumiy so'roq so'zlari («qayerda», «qachon») ATAYLAB qo'shilmadi: ular har
-- qanday savolda uchraydi va kartochkani noto'g'ri tortib ketadi. «O'lim»
-- ham yo'q — normallashuvda u «olim» (olim kishi) bilan to'qnashadi.
UPDATE fact_cards SET keywords = keywords || '["tugil", "tavallud"]'::jsonb
WHERE hero_id IN (SELECT id FROM heroes WHERE slug IN
  ('imom-at-termiziy','mahmud-zamaxshariy','burhoniddin-marginoniy','najmiddin-kubro',
   'bahouddin-naqshband','muqimiy','furqat','abdulla-qahhor'))
  AND topic_uz ILIKE '%tug''ilish%';

UPDATE fact_cards SET keywords = keywords || '["vafot"]'::jsonb
WHERE hero_id IN (SELECT id FROM heroes WHERE slug IN
  ('imom-at-termiziy','mahmud-zamaxshariy','burhoniddin-marginoniy','najmiddin-kubro',
   'bahouddin-naqshband','muqimiy','furqat','abdulla-qahhor'))
  AND (topic_uz ILIKE '%umrim%' OR topic_uz ILIKE '%vafot%');
