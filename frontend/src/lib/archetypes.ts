/**
 * Qahramon tiplari (arxetiplar).
 *
 * QOIDA: tip — bu «men kimman» degan tanlov, mukofot emas. Shuning uchun barcha
 * tiplar birinchi kundanoq ochiq va bepul, ularni istagan paytda almashtirish
 * mumkin. Mukofot esa «Qurolxona»dagi jihoz bo'lib qoladi.
 *
 * NIMA QAYERDA (V107). Chegara ma'lumot bilan chizmaning orasidan o'tadi:
 *
 *   • MATN — nom va ta'rif — bazada, `/api/archetypes` orqali keladi. Ilgari u
 *     shu faylda ham, `Archetypes.java` da ham yozilgan edi va ikki nusxa
 *     bir-biridan uzoqlashishi mumkin edi.
 *
 *   • `ArchetypeCode` — KODDA qoladi va shunday qolishi kerak. Har bir tipning
 *     qo'lda chizilgan tasviri bor (`Character.tsx` dagi LOOKS, `WarriorFigure`
 *     dagi REAL_LOOKS, `Avatar3D` dagi renderlar). Bu birlashma tipi shu
 *     jadvallarning KALITI: bazaga chizmasi yo'q yangi tip qo'shilsa,
 *     kompilyator darhol aytadi. Ro'yxatni bazadan olsak, bu himoya yo'qoladi
 *     va bola bo'sh figurani ko'rardi.
 */

import { api, Gender } from "@/lib/api";
import { Lang } from "@/lib/lang";

/**
 * Chizmasi bor tiplar — YAGONA ro'yxat.
 *
 * Tip birlashmasi shundan chiqariladi (pastda), va ish paytida tekshirish ham
 * shu yerdan ({@link hasArtwork}). Ilgari bu ro'yxat uchinchi marta
 * `Avatar3D.tsx` ichida `KNOWN` to'plami sifatida takrorlangan edi.
 */
export const ARCHETYPE_CODES = [
  "jangchi",
  "kochmanchi",
  "amirzoda",
  "sarkarda",
  "oddiy-yigit",
  "jangchi-qiz",
  "kochmanchi-qiz",
  "malika",
  "olima",
  "oddiy-qiz",
] as const;

export type ArchetypeCode = (typeof ARCHETYPE_CODES)[number];

/** Bazadan kelgan kodning chizmasi bormi. */
export function hasArtwork(code: string | null | undefined): code is ArchetypeCode {
  return code != null && (ARCHETYPE_CODES as readonly string[]).includes(code);
}

/** Serverdan keladigan tip. `code` — kalit, u hech qachon tarjima qilinmaydi. */
export type Archetype = {
  code: ArchetypeCode;
  gender: Gender;
  nameUz: string;
  nameRu: string | null;
  taglineUz: string;
  taglineRu: string | null;
};

/**
 * Tiplar ro'yxati. Xato bo'lsa — bo'sh ro'yxat: sahifa yiqilmaydi, shunchaki
 * tanlov ko'rsatilmaydi va bola standart tip bilan davom etadi.
 */
export async function fetchArchetypes(): Promise<Archetype[]> {
  try {
    return await api<Archetype[]>("/api/archetypes");
  } catch {
    return [];
  }
}

export function archetypesOf(all: Archetype[], gender: Gender): Archetype[] {
  return all.filter((a) => a.gender === gender);
}

/** Ruscha matn bo'sh bo'lsa — o'zbekcha asli. */
export function archetypeName(
  all: Archetype[],
  code: string | null | undefined,
  lang: Lang,
): string {
  const found = all.find((a) => a.code === code);
  if (!found) return "";
  const ru = found.nameRu;
  return lang === "ru" && ru != null && ru.trim() !== "" ? ru : found.nameUz;
}

export function archetypeTagline(a: Archetype, lang: Lang): string {
  const ru = a.taglineRu;
  return lang === "ru" && ru != null && ru.trim() !== "" ? ru : a.taglineUz;
}

/**
 * Tipsiz (eski) profil uchun jins bo'yicha oddiy tip.
 *
 * Serverga murojaat qilmaydi ataylab: uni chizuvchi komponentlar render
 * paytida sinxron chaqiradi va kutib turolmaydi. Qiymatlar `ArchetypeCode`
 * birlashmasidan, ya'ni chizmasi bor tiplardan.
 */
export function defaultArchetype(gender: Gender | null | undefined): ArchetypeCode {
  return gender === "FEMALE" ? "oddiy-qiz" : "oddiy-yigit";
}
