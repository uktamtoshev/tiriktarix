"use client";

import { LANG_LABEL, LANG_NAME, LANGS, useLang } from "@/lib/lang";

/**
 * Til tanlagich — RU | UZ.
 *
 * <p>Ikkita til yonma-yon turadi (ochiladigan ro'yxat emas): tanlov ikkita
 * bo'lganda ro'yxat ortiqcha bosish talab qiladi, bola esa qaysi til
 * yoqilganini darhol ko'rishi kerak.
 *
 * <p>MUHIM: bu tanlagich faqat interfeys yozuvlarini almashtiradi. Ajdod
 * ovozi (TTS) va gapni tanish (STT) doim o'zbekcha qoladi — ular «Prinsip №1»
 * bo'yicha o'zbek tilidagi tasdiqlangan kartochkalarga bog'langan.
 */
export default function LangSwitch({ className = "" }: { className?: string }) {
  const { lang, setLang } = useLang();

  return (
    <div
      role="group"
      aria-label="Til / Язык"
      className={`flex shrink-0 items-center gap-px overflow-hidden rounded-sm border border-steel-2 bg-steel/70 p-px ${className}`}
    >
      {LANGS.map((code) => {
        const active = code === lang;
        return (
          <button
            key={code}
            type="button"
            onClick={() => setLang(code)}
            aria-pressed={active}
            title={LANG_NAME[code]}
            className={`rounded-[2px] px-2 py-1 font-display text-[10px] font-bold uppercase tracking-[0.12em] transition ${
              active
                ? "bg-zar/20 text-zar-bright"
                : "text-dust hover:bg-steel-2/60 hover:text-marble"
            }`}
          >
            {LANG_LABEL[code]}
          </button>
        );
      })}
    </div>
  );
}
