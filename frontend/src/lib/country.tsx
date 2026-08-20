"use client";

import { useEffect, useSyncExternalStore, ReactNode } from "react";

/**
 * Qaysi TARIX ochilgan: O'zbekiston yoki Rossiya (V105).
 *
 * <p>TIL BILAN ADASHTIRMANG. Til — bu yozuvlar qaysi tilda ekani
 * (`lib/lang.tsx`). Mamlakat — bu QAYSI KATALOG ko'rsatilishi: davrlar,
 * ajdodlar, voqealar, filmlar, xaritalar va kartochkalar boshqa to'plamdan
 * keladi. Ikkalasi mustaqil: rus tilida o'zbek tarixini o'qish ham,
 * o'zbek tilida rus tarixini o'qish ham mumkin.
 *
 * <p>Saqlash va gidratatsiya `lib/lang.tsx` bilan bir xil ishlaydi: tashqi
 * do'kon (`useSyncExternalStore`), serverda va gidratatsiya paytida standart
 * qiymat, undan keyin — saqlangan tanlov.
 */
export type Country = "UZ" | "RU";

export const COUNTRIES: Country[] = ["UZ", "RU"];

/** Bayroq — tanlagichdagi belgi. */
export const COUNTRY_FLAG: Record<Country, string> = { UZ: "🇺🇿", RU: "🇷🇺" };

/** Tarixning nomi — har uch tilda. */
export const COUNTRY_NAME: Record<Country, { ru: string; uz: string; uk: string }> = {
  UZ: { ru: "История Узбекистана", uz: "O‘zbekiston tarixi", uk: "Історія Узбекистану" },
  RU: { ru: "История России", uz: "Rossiya tarixi", uk: "Історія Росії" },
};

const STORAGE_KEY = "tirik-mamlakat";
const DEFAULT_COUNTRY: Country = "UZ";

function isCountry(value: unknown): value is Country {
  return value === "UZ" || value === "RU";
}

let cache: Country | null = null;
const listeners = new Set<() => void>();

function readFromStorage(): Country {
  if (typeof window === "undefined") return DEFAULT_COUNTRY;
  try {
    const saved = window.localStorage.getItem(STORAGE_KEY);
    return isCountry(saved) ? saved : DEFAULT_COUNTRY;
  } catch {
    return DEFAULT_COUNTRY;
  }
}

function subscribe(onChange: () => void): () => void {
  listeners.add(onChange);
  return () => {
    listeners.delete(onChange);
  };
}

function getSnapshot(): Country {
  if (cache === null) cache = readFromStorage();
  return cache;
}

function getServerSnapshot(): Country {
  return DEFAULT_COUNTRY;
}

function setCountry(next: Country): void {
  cache = next;
  try {
    window.localStorage.setItem(STORAGE_KEY, next);
  } catch {
    // Приватный режим — выбор продержится до перезагрузки
  }
  for (const listener of listeners) listener();
}

type CountryState = { country: Country; setCountry: (next: Country) => void };

/**
 * Tanlangan tarixni saqlab turadi va uni `<html data-country>` ga yozadi —
 * shunda uslublar ham, tashqi vositalar ham qaysi katalog ochiqligini biladi.
 */
export function CountryProvider({ children }: { children: ReactNode }) {
  const { country } = useCountry();

  useEffect(() => {
    document.documentElement.dataset.country = country;
  }, [country]);

  return <>{children}</>;
}

/** Tanlangan tarix va uni almashtirish usuli. */
export function useCountry(): CountryState {
  const country = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);
  return { country, setCountry };
}

/**
 * So'rov qatoriga qo'shiladigan bo'lak.
 *
 * <p>Standart tarix uchun ataylab BO'SH satr qaytadi: shunda o'zbek
 * katalogining manzillari avvalgidek qoladi va brauzer keshini buzmaydi.
 */
export function countryQuery(country: Country, separator: "?" | "&" = "?"): string {
  return country === DEFAULT_COUNTRY ? "" : `${separator}country=${country}`;
}

/**
 * «Bu tarix hali to'ldirilmagan» yozuvi.
 *
 * <p>Ikkinchi tarix qo'shilganda katalog BO'SH bo'ladi: tuzilma tayyor,
 * mazmunni esa metodist-tarixchi kiritadi. Bola bo'sh sahifani ko'rib
 * «buzilibdi» deb o'ylamasligi kerak — nima bo'layotgani ochiq yoziladi.
 */
export const COUNTRY_EMPTY: Record<"ru" | "uz" | "uk", { title: string; hint: string }> = {
  ru: {
    title: "Эта история ещё готовится",
    hint: "Материал собирает и проверяет методист-историк. Пока можно вернуться к истории Узбекистана — флаг переключается в профиле.",
  },
  uz: {
    title: "Bu tarix hali tayyorlanmoqda",
    hint: "Materialni metodist-tarixchi yig'moqda va tekshirmoqda. Hozircha O'zbekiston tarixiga qaytish mumkin — bayroq profilda almashadi.",
  },
  uk: {
    title: "Ця історія ще готується",
    hint: "Матеріал збирає та перевіряє методист-історик. Поки що можна повернутися до історії Узбекистану — прапор перемикається у профілі.",
  },
};
