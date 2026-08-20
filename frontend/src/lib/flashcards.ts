/**
 * Flesh-kartalar — foydalanuvchining O'Z kartalari.
 *
 * QAYERDA SAQLANADI. Bazada, `own_cards` jadvalida (V104). Ilgari ular faqat
 * brauzerning localStorage'ida yotardi va shu sababli yo'qolardi: brauzer
 * xotirasi tozalansa — hammasi ketardi, uyda yozilgan karta maktabda
 * ko'rinmasdi, telefondan kirsa ro'yxat bo'sh edi. Bola o'zi yozgan matn —
 * uning mehnati, uni yo'qotib qo'yish mumkin emas.
 *
 * PRINSIP №1 BUZILMAYDI. Kartalar `fact_cards` dan butunlay ajratilgan alohida
 * jadvalda va faqat egasiga ko'rinadi — tekshirilmagan shaxsiy eslatma umumiy
 * Xazinaga hech qachon tushmaydi.
 *
 * ESKI KARTALAR. Brauzerda qolganlari birinchi ochilishda serverga ko'chiriladi
 * ({@link migrateLegacyCards}), so'ng localStorage kaliti o'chiriladi. Ko'chirish
 * bir marta bo'ladi va xato bo'lsa eski nusxa joyida qoladi.
 */

import { api, getClientId } from "./api";

export type OwnCard = {
  id: number;
  frontUz: string;
  backUz: string;
  createdAt: number;
};

/** Eski (brauzerdagi) kartaning shakli — faqat ko'chirish uchun kerak. */
type LegacyCard = { frontUz?: unknown; backUz?: unknown };

const LEGACY_KEY = "tirik-tarix-flashcards";

/* ---------------------------------------------------------------------------
   Tashqi do'kon (external store) — React'ning `useSyncExternalStore` uchun.
   Ro'yxat serverdan keladi, lekin komponent uni sinxron o'qiydi: shuning uchun
   javob shu yerda saqlanadi va o'zgarganda obunachilarga xabar beriladi.
   --------------------------------------------------------------------------- */

/** Bo'sh ro'yxat — HAR SAFAR bir xil havola, aks holda cheksiz render. */
const EMPTY: OwnCard[] = [];

let cache: OwnCard[] = EMPTY;
let loaded = false;
const listeners = new Set<() => void>();

function emit(): void {
  for (const l of listeners) l();
}

function setCards(cards: OwnCard[]): void {
  cache = cards.length === 0 ? EMPTY : cards;
  emit();
}

export function subscribeOwnCards(onChange: () => void): () => void {
  listeners.add(onChange);
  return () => listeners.delete(onChange);
}

/** Snapshot havolasi o'zgarmasa, React qayta render qilmaydi. */
export function getOwnCardsSnapshot(): OwnCard[] {
  return cache;
}

export function getOwnCardsServerSnapshot(): OwnCard[] {
  return EMPTY;
}

/**
 * Serverdan ro'yxatni olish. Har qanday xato — bo'sh ro'yxat: aloqa yo'qligi
 * butun kutubxona sahifasini yiqitmasligi kerak.
 */
export async function loadOwnCards(): Promise<void> {
  if (typeof window === "undefined") return;
  try {
    await migrateLegacyCards();
    const cards = await api<OwnCard[]>(`/api/own-cards/${getClientId()}`);
    setCards(cards);
  } catch {
    setCards([]);
  } finally {
    loaded = true;
  }
}

export function ownCardsLoaded(): boolean {
  return loaded;
}

export async function addOwnCard(frontUz: string, backUz: string): Promise<void> {
  const created = await api<OwnCard>(`/api/own-cards/${getClientId()}`, {
    method: "POST",
    body: JSON.stringify({ frontUz: frontUz.trim(), backUz: backUz.trim() }),
  });
  setCards([created, ...cache]);
}

export async function removeOwnCard(id: number): Promise<void> {
  // Server qolgan ro'yxatni qaytaradi — ikkinchi so'rov kerak emas.
  const rest = await api<OwnCard[]>(`/api/own-cards/${getClientId()}/${id}`, { method: "DELETE" });
  setCards(rest);
}

/**
 * Brauzerda qolgan eski kartalarni serverga ko'chirish — bir marta.
 *
 * Kalit faqat HAMMASI muvaffaqiyatli yozilgandan keyin o'chiriladi: yarim
 * ko'chirilgan holatda eski nusxa joyida qolgani ma'qul, chunki uni qayta
 * urinib ko'rish mumkin, yo'qolgan matnni esa tiklab bo'lmaydi.
 */
async function migrateLegacyCards(): Promise<void> {
  const clientId = getClientId();
  const key = `${LEGACY_KEY}:${clientId}`;

  let legacy: LegacyCard[];
  try {
    const raw = localStorage.getItem(key);
    if (!raw) return;
    const parsed: unknown = JSON.parse(raw);
    if (!Array.isArray(parsed)) {
      localStorage.removeItem(key);
      return;
    }
    legacy = parsed;
  } catch {
    return;
  }

  const valid = legacy.filter(
    (c): c is { frontUz: string; backUz: string } =>
      typeof c === "object" &&
      c !== null &&
      typeof c.frontUz === "string" &&
      typeof c.backUz === "string" &&
      c.frontUz.trim() !== "" &&
      c.backUz.trim() !== "",
  );

  for (const c of valid) {
    await api<OwnCard>(`/api/own-cards/${clientId}`, {
      method: "POST",
      body: JSON.stringify({ frontUz: c.frontUz.trim(), backUz: c.backUz.trim() }),
    });
  }

  localStorage.removeItem(key);
}
