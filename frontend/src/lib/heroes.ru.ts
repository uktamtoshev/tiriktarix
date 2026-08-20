/**
 * Ajdod kartochkasi matnini tilga qarab tanlash.
 *
 * MATN QAYERDA. Bazada (V102/V103). Ilgari 121 ajdodning ruscha ismi, unvoni
 * va tarjimai holi shu faylning ichida, `slug` bo'yicha kalitlangan jadvalda
 * yotardi — ya'ni metodist admin-paneldan yangi ajdod qo'shsa, uning ruscha
 * matnini KIRITA OLMASDI: buning uchun dasturchi shu faylni tahrirlab,
 * frontendni qayta yig'ishi kerak edi. Endi matn `heroes` jadvalining
 * `name_ru`, `title_ru`, `bio_ru`, `portrait_caption_ru` ustunlarida va uni
 * paneldan tahrirlash mumkin.
 *
 * ZAXIRA O'ZGARMADI. Ruscha ustun bo'sh bo'lsa — o'zbekcha asl matn
 * qaytariladi. Bu «Prinsip №1» ga mos: tekshirilmagan matn haqiqat sifatida
 * ko'rsatilmaydi, va tarjimasi yo'q yangi ajdod sahifani buzmaydi.
 */

import { Lang } from "@/lib/lang";

/**
 * Ruscha matn bo'sh bo'lsa o'zbekchasini beradi. Bo'sh satr ham «yo'q».
 *
 * UKRAIN TILI ham ruschaga qaraydi: ukrain tilidagi tarjima yo'q, va
 * ukrainalik bola uchun ruscha matn o'zbek lotinidan ancha tushunarli.
 * Interfeys esa ukraincha qoladi — u alohida tarjima qilingan.
 */
function pick(ru: string | null | undefined, uz: string, lang: Lang): string {
  if (lang === "uz") return uz;
  return ru != null && ru.trim() !== "" ? ru : uz;
}

/** Kartochka matni: ism, unvon, qisqacha tarjimai hol. */
export function heroCard(
  hero: {
    nameUz: string;
    titleUz: string;
    bioUz: string;
    nameRu?: string | null;
    titleRu?: string | null;
    bioRu?: string | null;
  },
  lang: Lang,
): { name: string; title: string; bio: string } {
  return {
    name: pick(hero.nameRu, hero.nameUz, lang),
    title: pick(hero.titleRu, hero.titleUz, lang),
    bio: pick(hero.bioRu, hero.bioUz, lang),
  };
}

/** Faqat ism — ro'yxatlar, filtrlar va sarlavhalar uchun. */
export function heroName(
  hero: { nameUz: string; nameRu?: string | null },
  lang: Lang,
): string {
  return pick(hero.nameRu, hero.nameUz, lang);
}

/** Portret ostidagi izoh. Portret yo'q bo'lsa — null. */
export function portraitCaption(
  hero: { portraitCaptionUz: string | null; portraitCaptionRu?: string | null },
  lang: Lang,
): string | null {
  if (!hero.portraitCaptionUz) return null;
  return pick(hero.portraitCaptionRu, hero.portraitCaptionUz, lang);
}
