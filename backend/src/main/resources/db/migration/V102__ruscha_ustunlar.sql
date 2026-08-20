-- Ruscha matn uchun ustunlar + ajdod medalyoni rangi va to'liq portreti.
--
-- MUAMMO. Loyihaning butun ruscha tarjimasi bazada emas, frontend ichidagi
-- ikki TypeScript faylida yotardi: `lib/heroes.ru.ts` (121 ajdod) va
-- `lib/content.ru.ts` (8 davr, 64 voqea, 35 joy nomi, 17 film, 30 xarita
-- ob'ekti, 32 jihoz). Bundan uchta zarar:
--
--   1) Metodist admin-paneldan yangi ajdod yoki voqea qo'shsa, uning ruscha
--      matnini KIRITA OLMAYDI — buning uchun dasturchi TS faylni tahrirlab,
--      frontendni qayta yig'ishi kerak edi.
--   2) Voqea, film va xarita tarjimalari O'ZBEKCHA SARLAVHA bo'yicha
--      kalitlangan edi. Metodist sarlavhadagi bitta harfni tuzatsa, tarjima
--      jimgina yo'qolardi.
--   3) Bitta ma'lumot ikki joyda: baza va TS fayl. Ular vaqt o'tishi bilan
--      ajralib ketadi.
--
-- YECHIM. Tarjima o'z yozuvining yonida, bir jadvalda turadi va `id` bo'yicha
-- bog'lanadi — sarlavha o'zgarsa ham uzilmaydi.
--
-- QOIDA O'ZGARMAYDI. Ustunlar NULL bo'lishi mumkin: tarjima yo'q bo'lsa,
-- interfeys tekshirilgan o'zbekcha asl matnni ko'rsatadi. Bu «Prinsip №1» ga
-- mos — tekshirilmagan matn haqiqat sifatida chiqmaydi.
--
-- Matnning O'ZI keyingi migratsiyada (V103) ko'chiriladi.

-- ═══════════ Ajdodlar ═══════════
ALTER TABLE heroes
  ADD COLUMN name_ru             text,
  ADD COLUMN title_ru            text,
  ADD COLUMN bio_ru              text,
  ADD COLUMN portrait_caption_ru text;

-- Medalyon rangi. Ilgari 38 ta slug ikki sahifa komponentida SO'ZMA-SO'Z
-- takrorlangan ro'yxatda yotardi — yangi ajdod qo'shish uchun ikkala TS
-- faylni tahrirlash kerak edi. Endi bu ajdodning o'z xossasi.
-- NULL — interfeys standart rangni («zar») qo'yadi.
ALTER TABLE heroes ADD COLUMN accent text;
ALTER TABLE heroes ADD CONSTRAINT heroes_accent_check
  CHECK (accent IS NULL OR accent IN ('zar', 'feruza', 'nil', 'qon'));

-- Suhbat sahifasidagi TO'LIQ bo'yli kadr. `portrait_url` — medalyondagi yaqin
-- kadr; bu esa boshqa fayl. Ilgari komponentda bitta yozuvli jadval edi.
ALTER TABLE heroes ADD COLUMN portrait_full_url text;

-- ═══════════ Davrlar ═══════════
ALTER TABLE eras
  ADD COLUMN name_ru        text,
  ADD COLUMN description_ru text;

-- ═══════════ Vaqt lentasi voqealari ═══════════
ALTER TABLE historical_events
  ADD COLUMN title_ru       text,
  ADD COLUMN description_ru text,
  ADD COLUMN location_ru    text;

-- ═══════════ Hujjatli filmlar ═══════════
ALTER TABLE films
  ADD COLUMN title_ru    text,
  ADD COLUMN synopsis_ru text;

-- ═══════════ Xarita ob'ektlari ═══════════
ALTER TABLE map_features
  ADD COLUMN name_ru        text,
  ADD COLUMN description_ru text;

-- ═══════════ Avatar jihozlari ═══════════
ALTER TABLE avatar_items
  ADD COLUMN name_ru        text,
  ADD COLUMN description_ru text;
