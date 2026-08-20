"use client";

import Link from "next/link";
import GateEmblem, { EmblemName } from "./GateEmblem";
import { CornerFrame } from "./Ornament";
import { useT } from "@/lib/lang";

const TXT = {
  ru: { soon: "Скоро", enter: "Войти во врата" },
  uz: { soon: "Tez orada", enter: "Darvozadan kir" },
  uk: { soon: "Незабаром", enter: "Увійти в браму" },
};

export type Gate = {
  href: string;
  emblem: EmblemName;
  numeral: string;
  title: string;
  text: string;
  /** Darvoza nuri rangi — modul ma'nosiga ko'ra. */
  accent: "zar" | "feruza" | "qon" | "nil";
  soon?: boolean;
};

const ACCENTS = {
  zar: { glow: "rgba(200,162,71,0.45)", text: "text-zar", ring: "group-hover:border-zar/70" },
  feruza: { glow: "rgba(79,199,194,0.35)", text: "text-feruza-bright", ring: "group-hover:border-feruza/70" },
  qon: { glow: "rgba(155,46,34,0.45)", text: "text-[#e0a094]", ring: "group-hover:border-qon/70" },
  nil: { glow: "rgba(53,80,122,0.55)", text: "text-[#9fb8e0]", ring: "group-hover:border-nil/80" },
} as const;

/**
 * Darvoza — lending menyusining asosiy elementi.
 * Qorong'i po'lat plita, o'yma zar hoshiya, orqada peshtoq ravog'i;
 * kursor tekkanda ravoq yorishadi va metall ustidan zar nur o'tadi.
 */
export default function GateCard({ gate, delay = 0 }: { gate: Gate; delay?: number }) {
  const t = useT(TXT);
  const a = ACCENTS[gate.accent];

  return (
    <Link
      href={gate.href}
      className="tt-reveal group relative block"
      style={{ animationDelay: `${delay}ms` }}
    >
      <article
        className={`tt-steel-surface tt-sweep relative flex h-full min-h-[16rem] flex-col overflow-hidden rounded-lg border border-zar/25 p-6 transition-all duration-500 ease-tt group-hover:-translate-y-1.5 sm:p-7 ${a.ring}`}
        style={{ boxShadow: "var(--tt-shadow-niche), var(--tt-inset-gleam)" }}
      >
        <CornerFrame />

        {/* Peshtoq ravog'i — orqa fondagi darvoza silueti */}
        <svg
          aria-hidden
          viewBox="0 0 200 240"
          preserveAspectRatio="xMidYMax meet"
          className={`pointer-events-none absolute -right-6 bottom-0 h-[92%] w-auto opacity-[0.13] transition-all duration-700 ease-tt group-hover:opacity-30 group-hover:scale-105 ${a.text}`}
          fill="none"
          stroke="currentColor"
          strokeWidth="2"
        >
          <path d="M20 240 V96 A80 80 0 0 1 180 96 V240" />
          <path d="M42 240 V100 A58 58 0 0 1 158 100 V240" strokeOpacity="0.6" />
          <path d="M64 240 V104 A36 36 0 0 1 136 104 V240" strokeOpacity="0.35" />
          <path d="M100 26 v-18 M86 16 h28" strokeOpacity="0.5" />
        </svg>

        {/* Nur — kursor tekkanda darvoza «yonadi» */}
        <span
          aria-hidden
          className="pointer-events-none absolute -bottom-24 left-1/2 h-48 w-48 -translate-x-1/2 rounded-full opacity-0 blur-3xl transition-opacity duration-700 group-hover:opacity-100"
          style={{ background: a.glow }}
        />

        <div className="relative z-10 flex flex-1 flex-col">
          <div className="flex items-start justify-between">
            <span
              className={`transition-transform duration-500 ease-tt group-hover:scale-110 ${a.text}`}
            >
              <GateEmblem name={gate.emblem} className="h-14 w-14 sm:h-16 sm:w-16" />
            </span>
            <span className="font-display text-sm font-semibold tracking-[0.3em] text-zar/85">
              {gate.numeral}
            </span>
          </div>

          <h3 className="mt-5 font-display text-lg font-bold uppercase leading-tight tracking-[0.08em] text-marble sm:text-xl">
            {gate.title}
          </h3>
          <p className="mt-2.5 text-sm leading-relaxed text-dust">{gate.text}</p>

          <div className="mt-auto flex items-center gap-2 pt-6">
            {gate.soon ? (
              <span className="rounded-sm border border-zar/30 px-2 py-1 text-[10px] font-semibold uppercase tracking-[0.2em] text-zar/90">
                {t.soon}
              </span>
            ) : (
              <span
                className={`flex items-center gap-2 text-[11px] font-semibold uppercase tracking-[0.28em] opacity-60 transition-all duration-500 ease-tt group-hover:gap-3.5 group-hover:opacity-100 ${a.text}`}
              >
                {t.enter}
                <span aria-hidden className="text-base leading-none">
                  →
                </span>
              </span>
            )}
          </div>
        </div>
      </article>
    </Link>
  );
}
