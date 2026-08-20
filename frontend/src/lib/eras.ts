/** Davrlar bilan ishlash uchun umumiy yordamchilar (bir nechta sahifa ishlatadi). */

import { Lang, pick } from "@/lib/lang";

/**
 * Davr belgilari. Kalit — `eras.code`, u butun jadval bo'yicha yagona,
 * shuning uchun ikkala mamlakat bir xil ro'yxatda yashaydi.
 */
export const ERA_EMOJI: Record<string, string> = {
  // O'zbekiston tarixi
  qadimgi: "🏺",
  antik: "🏛️",
  arab: "📿",
  temuriylar: "🕌",
  xonliklar: "🏰",
  jadidlar: "✒️",
  "xx-asr": "🏭",
  mustaqillik: "🇺🇿",

  // Rossiya tarixi (V300, V301 da IKS ning to'qqiz bo'limiga keltirilgan).
  // Belgi zamon ramzini beradi: cherkov — Rusning nasroniylashuvi, toj —
  // podsholik, langar — Pyotr floti, poyezd — sanoat yuksalishi, qilich —
  // urush va inqilob, tishli g'ildirak — industrlashtirish, sham — Ulug'
  // Vatan urushi xotirasi, raketa — kosmos davri, bayroq — bugungi davlat.
  "rus-drevnyaya": "⛪",
  "rus-tsarstvo": "👑",
  "rus-imperiya-18": "⚓",
  "rus-imperiya-19": "🚂",
  "rus-potryaseniya": "⚔️",
  "rus-sssr-20-30": "⚙️",
  "rus-vov": "🕯️",
  "rus-sssr-sovremennaya": "🚀",
  "rus-federatsiya": "🇷🇺",
};

export function eraEmoji(code: string): string {
  return ERA_EMOJI[code] ?? "📜";
}

/*
  Yil yozuvlari. Bular komponent emas, oddiy funksiya — shuning uchun til
  hook orqali emas, argument bo'lib keladi. Chaqiruvchi uni `useLang()` dan
  oladi.
*/
const TXT = {
  ru: { bc: (y: number) => `${y} до н. э.`, open: "по сей день" },
  uz: { bc: (y: number) => `${y} m.a.`, open: "hozirgacha" },
  uk: { bc: (y: number) => `${y} до н. е.`, open: "донині" },
};

/** Milodgacha bo'lgan yillar manfiy saqlanadi: -329 → «329 m.a.» / «329 до н. э.». */
export function formatYear(year: number | null, lang: Lang, openLabel?: string): string {
  const t = pick(TXT, lang);
  if (year === null) return openLabel ?? t.open;
  return year < 0 ? t.bc(Math.abs(year)) : String(year);
}

/** Voqea oralig'i: bir yil bo'lsa bitta son, aks holda «dan — gacha». */
export function formatRange(yearFrom: number, yearTo: number | null, lang: Lang): string {
  if (yearTo && yearTo !== yearFrom) {
    return `${formatYear(yearFrom, lang)} — ${formatYear(yearTo, lang)}`;
  }
  return formatYear(yearFrom, lang);
}

/**
 * Qahramon yillari nishoni. Afsonaviy qadimgi qahramonlarda yil noma'lum —
 * ikkalasi ham null bo'lsa, nishon umuman ko'rsatilmaydi (null qaytadi).
 * Miloddan avvalgi yillar manfiy saqlanadi va «m.a.» bilan chiqadi.
 */
export function heroYears(birth: number | null, death: number | null, lang: Lang): string | null {
  if (birth === null && death === null) return null;
  if (birth === null) return formatYear(death, lang);
  if (death === null) return formatYear(birth, lang);
  return `${formatYear(birth, lang)}—${formatYear(death, lang)}`;
}
