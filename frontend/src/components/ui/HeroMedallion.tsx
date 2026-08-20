"use client";

import Image from "next/image";
import { Lang, pick, useT } from "@/lib/lang";

const TXT = {
  ru: { photo: "Фотография", miniature: "Миниатюра", artwork: "Представление художника" },
  uz: { photo: "Fotosurat", miniature: "Miniatura", artwork: "Rassom tasavvuri" },
  uk: { photo: "Фотографія", miniature: "Мініатюра", artwork: "Уявлення художника" },
};

/**
 * Ajdod medalyoni — o'yma zar halqa ichidagi portret.
 *
 * Haqiqiy tasvir bo'lsa (miniatura yoki fotosurat) — o'sha ko'rsatiladi.
 * Bo'lmasa — belgi. Yo'q rasm o'ylab topilmaydi: Amir Temur davrida fotografiya
 * yo'q edi va buni bolaga yashirish mumkin emas.
 */

const SIZES = {
  sm: { box: "h-16 w-16", emoji: "text-2xl", px: 64 },
  md: { box: "h-28 w-28", emoji: "text-5xl", px: 112 },
  lg: { box: "h-40 w-40 sm:h-44 sm:w-44", emoji: "text-6xl sm:text-7xl", px: 176 },
} as const;

const GLOWS = {
  zar: "rgba(200,162,71,0.30)",
  feruza: "rgba(79,199,194,0.26)",
  nil: "rgba(90,130,200,0.30)",
  qon: "rgba(155,46,34,0.30)",
} as const;

export type MedallionAccent = keyof typeof GLOWS;

export default function HeroMedallion({
  emoji,
  portraitUrl,
  alt,
  size = "md",
  accent = "zar",
  className = "",
}: {
  emoji: string;
  portraitUrl?: string | null;
  alt?: string;
  size?: keyof typeof SIZES;
  accent?: MedallionAccent;
  className?: string;
}) {
  const s = SIZES[size];
  return (
    <span className={`relative inline-grid ${s.box} place-items-center ${className}`}>
      {/* Ichki nur */}
      <span
        aria-hidden
        className="absolute inset-[12%] rounded-full blur-xl"
        style={{ background: GLOWS[accent] }}
      />

      {portraitUrl ? (
        <span className="absolute inset-[9%] overflow-hidden rounded-full border border-zar/40 bg-obsidian">
          <Image
            src={portraitUrl}
            alt={alt ?? ""}
            width={s.px}
            height={s.px}
            className="h-full w-full object-cover object-top"
            sizes={`${s.px}px`}
          />
        </span>
      ) : (
        <span
          aria-hidden
          className={`relative ${s.emoji} drop-shadow-[0_4px_18px_rgba(0,0,0,0.8)]`}
        >
          {emoji}
        </span>
      )}

      {/* O'yma halqalar — portret ustidan chiziladi */}
      <svg
        aria-hidden
        viewBox="0 0 100 100"
        className="pointer-events-none absolute inset-0 h-full w-full text-zar"
        fill="none"
        stroke="currentColor"
      >
        <circle cx="50" cy="50" r="48" strokeWidth="1" strokeOpacity="0.55" />
        <circle cx="50" cy="50" r="43" strokeWidth="0.7" strokeOpacity="0.3" />
        <circle
          cx="50"
          cy="50"
          r="46"
          strokeWidth="0.8"
          strokeOpacity="0.45"
          strokeDasharray="2 6"
        />
        {[0, 90, 180, 270].map((deg) => (
          <path
            key={deg}
            d="M50 2 L52 7 L57 9 L52 11 L50 16 L48 11 L43 9 L48 7 Z"
            strokeWidth="0.8"
            strokeOpacity="0.7"
            transform={`rotate(${deg} 50 50)`}
            className="fill-obsidian"
          />
        ))}
      </svg>
    </span>
  );
}

/**
 * Ekran o'quvchi uchun tavsif. Ataylab «portreti» deb yozilmaydi: rasm haykal,
 * yodgorlik majmuasi yoki keyingi davr tasviri bo'lishi mumkin, va ko'rmaydigan
 * o'quvchiga ham ko'radiganidek halol aytilishi kerak.
 */
export function portraitAlt(
  nameUz: string,
  kind: "PHOTO" | "MINIATURE" | "ARTWORK" | null,
  lang: Lang,
): string {
  const t = pick(TXT, lang);
  if (kind === "PHOTO") return `${nameUz} — ${t.photo.toLowerCase()}`;
  if (kind === "MINIATURE") return `${nameUz} — ${t.miniature.toLowerCase()}`;
  if (kind === "ARTWORK") return `${nameUz} — ${t.artwork.toLowerCase()}`;
  return nameUz;
}

/** Tasvir turi haqidagi ochiq izoh — «bu fotosurat emas» degan gapni yashirmaymiz. */
export function PortraitCaption({
  kind,
  caption,
  className = "",
}: {
  kind: "PHOTO" | "MINIATURE" | "ARTWORK" | null;
  caption: string | null;
  className?: string;
}) {
  const t = useT(TXT);
  if (!kind || !caption) return null;
  const label = kind === "PHOTO" ? t.photo : kind === "MINIATURE" ? t.miniature : t.artwork;
  return (
    <p className={`text-[10px] leading-relaxed text-dust/85 ${className}`}>
      <span className="font-semibold uppercase tracking-[0.14em] text-zar/90">{label}</span>
      {` · ${caption}`}
    </p>
  );
}
