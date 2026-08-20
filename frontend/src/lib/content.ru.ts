/**
 * Davr, voqea, film, xarita va jihoz matnini tilga qarab tanlash.
 *
 * MATN QAYERDA. Bazada (V102/V103). Ilgari butun ruscha tarjima shu faylning
 * ichida yotardi: 8 davr, 64 voqea, 35 joy nomi, 17 film, 30 xarita ob'ekti,
 * 32 jihoz. Undan ikkita zarar bor edi:
 *
 *   1) Metodist paneldan yangi voqea yoki film qo'shsa, ruscha matnini kirita
 *      olmasdi — dasturchi TS faylni tahrirlashi kerak edi.
 *   2) Voqea, film va xarita tarjimalari O'ZBEKCHA SARLAVHA bo'yicha
 *      kalitlangan edi. Sarlavhadagi bitta harf tuzatilsa, tarjima jimgina
 *      yo'qolardi. Endi tarjima o'z qatorining yonida turadi va sarlavha
 *      o'zgarsa ham uzilmaydi.
 *
 * ZAXIRA O'ZGARMADI. Ruscha ustun bo'sh bo'lsa — o'zbekcha asl matn
 * qaytariladi: tekshirilmagan matn haqiqat sifatida ko'rsatilmaydi.
 */

import { Lang } from "@/lib/lang";

/**
 * Ruscha matn bo'sh bo'lsa o'zbekchasini beradi. Bo'sh satr ham «yo'q».
 *
 * UKRAIN TILI ham ruschaga qaraydi: ukrain tilidagi tarjima yo'q, va
 * ukrainalik bola uchun ruscha matn o'zbek lotinidan ancha tushunarli.
 * Interfeys esa ukraincha qoladi — u alohida tarjima qilingan.
 */
function pick<T extends string | null>(ru: string | null | undefined, uz: T, lang: Lang): T | string {
  if (lang === "uz") return uz;
  return ru != null && ru.trim() !== "" ? ru : uz;
}

/** Davr nomi. */
export function eraName(
  era: { nameUz: string; nameRu?: string | null },
  lang: Lang,
): string {
  return pick(era.nameRu, era.nameUz, lang);
}

/** Davr tavsifi. */
export function eraDescription(
  era: { descriptionUz: string; descriptionRu?: string | null },
  lang: Lang,
): string {
  return pick(era.descriptionRu, era.descriptionUz, lang);
}

/** Vaqt lentasi voqeasi. */
export function eventCard(
  event: {
    titleUz: string;
    descriptionUz: string;
    locationUz: string | null;
    titleRu?: string | null;
    descriptionRu?: string | null;
    locationRu?: string | null;
  },
  lang: Lang,
): { title: string; description: string; location: string | null } {
  return {
    title: pick(event.titleRu, event.titleUz, lang),
    description: pick(event.descriptionRu, event.descriptionUz, lang),
    location: event.locationUz === null ? null : pick(event.locationRu, event.locationUz, lang),
  };
}

/** Film kartochkasi. */
export function filmCard(
  film: {
    titleUz: string;
    synopsisUz: string | null;
    titleRu?: string | null;
    synopsisRu?: string | null;
  },
  lang: Lang,
): { title: string; synopsis: string | null } {
  return {
    title: pick(film.titleRu, film.titleUz, lang),
    synopsis: film.synopsisUz === null ? null : pick(film.synopsisRu, film.synopsisUz, lang),
  };
}

/** Xarita qatlami. */
export function mapFeature(
  feature: {
    nameUz: string;
    descriptionUz: string | null;
    nameRu?: string | null;
    descriptionRu?: string | null;
  },
  lang: Lang,
): { name: string; description: string | null } {
  return {
    name: pick(feature.nameRu, feature.nameUz, lang),
    description:
      feature.descriptionUz === null ? null : pick(feature.descriptionRu, feature.descriptionUz, lang),
  };
}

/** Qurolxona jihozi. */
export function avatarItem(
  item: {
    nameUz: string;
    descriptionUz: string;
    nameRu?: string | null;
    descriptionRu?: string | null;
  },
  lang: Lang,
): { name: string; description: string } {
  return {
    name: pick(item.nameRu, item.nameUz, lang),
    description: pick(item.descriptionRu, item.descriptionUz, lang),
  };
}

/**
 * Fakt kartochkasi (V108).
 *
 * `topic`, `question`, `fact` va `detail` — kartochkaning butun matni.
 * Bo'sh ruscha ustunda o'zbekcha asl matn qoladi.
 */
export function factCard(
  card: {
    topicUz: string;
    questionUz: string | null;
    factUz: string;
    detailUz: string | null;
    topicRu?: string | null;
    questionRu?: string | null;
    factRu?: string | null;
    detailRu?: string | null;
  },
  lang: Lang,
): { topic: string; question: string | null; fact: string; detail: string | null } {
  return {
    topic: pick(card.topicRu, card.topicUz, lang),
    question: card.questionUz === null ? null : pick(card.questionRu, card.questionUz, lang),
    fact: pick(card.factRu, card.factUz, lang),
    detail: card.detailUz === null ? null : pick(card.detailRu, card.detailUz, lang),
  };
}

/**
 * Test savoli (V108).
 *
 * VARIANTLAR TARTIBI. Ruscha massiv asl massiv bilan bir xil tartibda
 * saqlanadi — `correctIndex` ikkalasiga ham tegishli. Uzunligi mos kelmasa
 * (tarjima chala), butun savol o'zbekcha ko'rsatiladi: aralash ro'yxat
 * noto'g'ri javobga olib kelardi.
 */
export function quizQuestion(
  q: {
    questionUz: string;
    options: string[];
    questionRu?: string | null;
    optionsRu?: string[] | null;
  },
  lang: Lang,
): { question: string; options: string[] } {
  const ru = q.optionsRu;
  const optionsOk = lang !== "uz" && ru != null && ru.length === q.options.length;
  return {
    question: optionsOk ? pick(q.questionRu, q.questionUz, lang) : q.questionUz,
    options: optionsOk ? ru : q.options,
  };
}

/** Javob tahlilidagi izoh (V108). */
export function quizExplanation(
  review: { explanationUz: string | null; explanationRu?: string | null },
  lang: Lang,
): string | null {
  if (!review.explanationUz) return null;
  return pick(review.explanationRu, review.explanationUz, lang);
}
