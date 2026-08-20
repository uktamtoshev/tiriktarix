/**
 * O'zbekiston ma'muriy bo'linishi — ro'yxatdan o'tish shakli uchun.
 *
 * NIMA UCHUN RO'YXAT, MATN EMAS. Bola tumanini o'zi yozsa, bazada bir tuman
 * o'nta xil imloda yotadi va maktab kesimidagi hisobot yig'ilmaydi. Shuning
 * uchun viloyat ham, tuman ham TANLANADI.
 *
 * QAYERDAN KELADI. Bazadan, `/api/regions` orqali (V106). Ilgari 14 viloyat va
 * 194 tuman shu faylning ichida yozilgan edi — va faylning o'z izohida
 * ta'kidlanganidek, bu ro'yxatni SOATO (MHOBT) rasmiy klassifikatori bilan
 * solishtirib turish kerak: tumanlar tashkil etiladi va nomlari almashadi.
 * Har bir shunday o'zgarish uchun frontendni qayta yig'ish noto'g'ri edi.
 *
 * «BOSHQA TUMAN» — bazada YO'Q va bo'lmasligi kerak: u ma'muriy birlik emas,
 * balki interfeysning zaxira varianti. Ro'yxat to'liq bo'lmasa yoki server
 * javob bermasa, bola tumanini o'zi yozadi va ro'yxatdan o'ta oladi.
 *
 * Tuman bazaga NOMI bilan yoziladi (kod bilan emas): ma'muriy bo'linish
 * o'zgarganda eski yozuvlar ma'nosini yo'qotmasin.
 */

import { api } from "./api";

export const OTHER_DISTRICT = "Boshqa tuman";

export type Region = {
  /** Viloyat nomi — bazaga shu holda tushadi. */
  nameUz: string;
  districtsUz: string[];
};

/**
 * Viloyatlar ro'yxati. Xato bo'lsa — bo'sh ro'yxat: shakl baribir ishlaydi,
 * chunki bola «Boshqa tuman» orqali o'z tumanini yoza oladi.
 */
export async function fetchRegions(): Promise<Region[]> {
  try {
    return await api<Region[]>("/api/regions");
  } catch {
    return [];
  }
}

/** Tanlangan viloyatning tumanlari + oxirida «Boshqa tuman». */
export function districtsOf(regions: Region[], regionName: string): string[] {
  const region = regions.find((r) => r.nameUz === regionName);
  if (!region) return [OTHER_DISTRICT];
  return [...region.districtsUz, OTHER_DISTRICT];
}
