"use client";

import { useState } from "react";
import { useT } from "@/lib/lang";

const TXT = {
  ru: { open: "Подробнее", close: "Свернуть" },
  uz: { open: "Batafsil", close: "Yopish" },
  uk: { open: "Докладніше", close: "Згорнути" },
};

/**
 * Kartochkadagi «Batafsil» — faktning kengaytmasi SHU YERDA ochiladi.
 *
 * NEGA SHU YERDA. Avval tugma qahramonning tarjimai holiga olib borardi:
 * bola aynan shu fakt haqida ko'proq bilmoqchi bo'lsa, uni boshqa sahifaga
 * jo'natib, o'sha faktni qaytadan qidirishga majbur qilardik. Endi matn
 * kartochkaning o'zida ochiladi — o'qish oqimi uzilmaydi.
 *
 * Matn bo'lmasa, bu komponent umuman chizilmaydi (chaqiruvchi tekshiradi) —
 * o'chirilgan tugma ko'rsatilmaydi.
 */
export default function FactDetail({
  detailUz,
  source,
  tone = "parchment",
}: {
  detailUz: string;
  /** Manba ochilgan matn ostida takrorlanadi — tekshirib bo'ladigan bo'lsin. */
  source?: string;
  tone?: "parchment" | "steel";
}) {
  const t = useT(TXT);
  const [open, setOpen] = useState(false);
  const parchment = tone === "parchment";

  return (
    <div>
      {/* Tugma o'ngda turadi, ochilgan matn esa butun kenglikda — shuning uchun
          tekislash tashqarida emas, shu yerda hal qilinadi */}
      <div className="flex justify-end">
        <button
          type="button"
          onClick={() => setOpen((v) => !v)}
          aria-expanded={open}
          className={`group/link -mr-1 inline-flex min-h-[44px] items-center gap-2 px-1 font-display text-[11px] font-semibold uppercase tracking-[0.24em] transition-colors ${
            parchment
              ? "text-[#5c4a1e] hover:text-[#2b2415]"
              : "text-zar/90 hover:text-zar-bright"
          }`}
        >
          {open ? t.close : t.open}
          {/* Strelka pastga qaraydi — matn shu yerda ochilishini bildiradi */}
          <span
            aria-hidden
            className={`text-base leading-none transition-transform duration-300 ease-tt ${
              open ? "rotate-180" : "group-hover/link:translate-y-0.5"
            }`}
          >
            ↓
          </span>
        </button>
      </div>

      {open && (
        <div
          className={`tt-reveal mt-1 border-t pt-3 text-sm leading-relaxed ${
            parchment ? "border-[#7a5f1c]/30 text-[#2b2415]" : "border-steel-2 text-dust"
          }`}
        >
          {/* Bir necha xatboshi bo'lishi mumkin — bo'sh qatorlar bilan ajratiladi */}
          {detailUz.split(/\n{2,}/).map((para, i) => (
            <p key={i} className={i > 0 ? "mt-2.5" : undefined}>
              {para}
            </p>
          ))}
          {source && (
            <p
              className={`mt-3 border-t pt-2.5 text-xs ${
                parchment ? "border-[#7a5f1c]/25 text-[#5c4a1e]" : "border-steel-2 text-dust/80"
              }`}
            >
              {source}
            </p>
          )}
        </div>
      )}
    </div>
  );
}
