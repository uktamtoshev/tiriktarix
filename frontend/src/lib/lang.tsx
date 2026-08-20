"use client";

import { useEffect, useSyncExternalStore, ReactNode } from "react";

/**
 * Язык интерфейса: русский (по умолчанию), узбекский и украинский.
 *
 * <p>Голос предка (TTS) и распознавание речи (STT) НЕ зависят от этого
 * переключателя — они всегда работают на узбекском, потому что и модель
 * голоса, и факты в базе узбекские. Переключатель меняет только надписи
 * интерфейса: кнопки, меню, заголовки, подсказки.
 *
 * <p>Содержимое из базы (имена предков, карточки фактов, вопросы тестов,
 * названия областей и районов) тоже остаётся узбекским: это данные, а не
 * интерфейс, и их правит методист, а не код.
 */
export type Lang = "ru" | "uz" | "uk";

export const LANGS: Lang[] = ["ru", "uz", "uk"];

/** Что написано на кнопке переключателя. */
export const LANG_LABEL: Record<Lang, string> = { ru: "RU", uz: "UZ", uk: "UA" };

/** Полное название языка — для aria-label и подсказок. */
export const LANG_NAME: Record<Lang, string> = {
  ru: "Русский",
  uz: "O‘zbekcha",
  uk: "Українська",
};

const STORAGE_KEY = "tirik-til";
const DEFAULT_LANG: Lang = "ru";

function isLang(value: unknown): value is Lang {
  return value === "ru" || value === "uz" || value === "uk";
}

/* ---------------------------------------------------------------------------
   Внешнее хранилище (external store) — как в lib/flashcards.ts.

   Выбор языка живёт в localStorage, а его на сервере нет. Если читать
   localStorage прямо во время рендера, разметка сервера и браузера разойдутся
   и React выдаст ошибку гидратации; если читать в эффекте через setState —
   получится каскадный ре-рендер (и линтер справедливо ругается).

   `useSyncExternalStore` решает обе задачи разом: при рендере на сервере и во
   время гидратации отдаётся `getServerSnapshot` (язык по умолчанию), сразу
   после неё — настоящий сохранённый выбор.
   --------------------------------------------------------------------------- */

let cache: Lang | null = null;
const listeners = new Set<() => void>();

function readFromStorage(): Lang {
  if (typeof window === "undefined") return DEFAULT_LANG;
  try {
    const saved = window.localStorage.getItem(STORAGE_KEY);
    return isLang(saved) ? saved : DEFAULT_LANG;
  } catch {
    // Приватный режим браузера — молча остаёмся на языке по умолчанию
    return DEFAULT_LANG;
  }
}

function subscribe(onChange: () => void): () => void {
  listeners.add(onChange);
  return () => {
    listeners.delete(onChange);
  };
}

function getSnapshot(): Lang {
  if (cache === null) cache = readFromStorage();
  return cache;
}

function getServerSnapshot(): Lang {
  return DEFAULT_LANG;
}

function setLang(next: Lang): void {
  cache = next;
  try {
    window.localStorage.setItem(STORAGE_KEY, next);
  } catch {
    // Не смогли сохранить — язык всё равно переключится до перезагрузки
  }
  for (const listener of listeners) listener();
}

type LangState = { lang: Lang; setLang: (lang: Lang) => void };

/**
 * Провайдер держит единственный побочный эффект — атрибут `<html lang>`.
 * Само значение лежит во внешнем хранилище, поэтому контекст не нужен: любой
 * компонент подписывается на него напрямую через `useLang()`.
 */
export function LangProvider({ children }: { children: ReactNode }) {
  const lang = useLang().lang;

  // <html lang> нужен браузеру и программам чтения с экрана: по нему
  // выбираются правила переноса слов и голос озвучки страницы.
  useEffect(() => {
    document.documentElement.lang = lang;
  }, [lang]);

  return <>{children}</>;
}

/** Текущий язык и способ его сменить. */
export function useLang(): LangState {
  const lang = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);
  return { lang, setLang };
}

/**
 * Выбрать текст текущего языка.
 *
 * <p>УКРАИНСКИЙ ДОБАВЛЯЕТСЯ ПОСТЕПЕННО. Ключ `uk` необязателен: пока его нет,
 * показывается русская строка. Так перевод 34 файлов можно вести по частям,
 * не ломая сборку и не оставляя пользователя с пустым экраном.
 *
 * <p>Строки лежат рядом с компонентом, который их показывает:
 * `const TXT = { ru: {...}, uz: {...} }`, а в разметке — `const t = useT(TXT)`.
 * Так каждый файл остаётся самостоятельным и ничего не теряется при правках.
 */
export type Texts<T> = Record<"ru" | "uz", T> & Partial<Record<"uk", T>>;

export function useT<T>(texts: Texts<T>): T {
  const { lang } = useLang();
  return texts[lang] ?? texts.ru;
}

/** То же самое вне компонента — когда язык уже известен. */
export function pick<T>(texts: Texts<T>, lang: Lang): T {
  return texts[lang] ?? texts.ru;
}
