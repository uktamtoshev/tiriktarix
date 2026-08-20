"use client";

import { COUNTRIES, COUNTRY_FLAG, COUNTRY_NAME, useCountry } from "@/lib/country";
import { useLang } from "@/lib/lang";

/**
 * Tarix tanlagichi — ikkita bayroq.
 *
 * <p>Bayroq bosilganda BUTUN katalog almashadi: davrlar, ajdodlar, voqealar,
 * filmlar, xaritalar va kartochkalar tanlangan mamlakatnikidan keladi.
 * Til esa o'z holicha qoladi — u alohida tanlanadi.
 *
 * <p>Bayroqning yonida nomi ham yoziladi: faqat bayroqcha ranglar bo'yicha
 * taxmin qilishni talab qiladi, bola esa nimani ochayotganini o'qib bilishi
 * kerak.
 */
export default function CountrySwitch({ className = "" }: { className?: string }) {
  const { country, setCountry } = useCountry();
  const { lang } = useLang();

  return (
    <div
      role="group"
      aria-label={COUNTRY_NAME.UZ[lang] + " / " + COUNTRY_NAME.RU[lang]}
      className={`flex flex-wrap gap-2 ${className}`}
    >
      {COUNTRIES.map((code) => {
        const active = code === country;
        return (
          <button
            key={code}
            type="button"
            onClick={() => setCountry(code)}
            aria-pressed={active}
            className={`flex min-h-[44px] items-center gap-2.5 rounded-sm border px-4 py-2.5 text-left transition-colors ${
              active
                ? "border-zar/70 bg-zar/12"
                : "border-steel-2 bg-steel/50 hover:border-zar/40"
            }`}
          >
            <span aria-hidden className="text-2xl leading-none">
              {COUNTRY_FLAG[code]}
            </span>
            <span
              className={`font-display text-[11px] font-semibold uppercase tracking-[0.14em] ${
                active ? "text-zar-bright" : "text-dust"
              }`}
            >
              {COUNTRY_NAME[code][lang]}
            </span>
          </button>
        );
      })}
    </div>
  );
}
