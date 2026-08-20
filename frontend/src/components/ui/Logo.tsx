import Image from "next/image";

/**
 * Loyiha logotipi — Sohibqiron portreti zar halqa ichida, orqasida Registon
 * va Bibixonim siluetlari.
 *
 * NEGA DISK KREM RANGDA. Logotip och fonda chizilgan: portret to'q ko'k
 * (obsidian bilan deyarli bir xil), shuning uchun fonni shaffof qilib bo'lmaydi
 * — belgi qorong'i sahifada ko'rinmay ketardi. Buning o'rniga u MEDALYON bo'lib
 * turadi: krem disk, zar halqa. Bu saytdagi HeroMedallion bilan bir tilda.
 *
 * Tasvirning pastki qismi (yelkalar ostidagi yoy) manba faylda yo'q — uni disk
 * o'z krem foni bilan to'ldiradi, shuning uchun rasm YUQORIGA tekislanadi.
 */

const SIZES = {
  sm: { box: "h-8 w-8", px: 32 },
  md: { box: "h-10 w-10", px: 40 },
  lg: { box: "h-16 w-16", px: 64 },
  xl: { box: "h-24 w-24", px: 96 },
} as const;

export default function Logo({
  size = "md",
  spinning = false,
  className = "",
}: {
  size?: keyof typeof SIZES;
  /** «Seyf shturvali» harakati — belgining o'zi bosilganda ikki marta aylanadi. */
  spinning?: boolean;
  className?: string;
}) {
  const s = SIZES[size];
  return (
    <span
      className={`relative block shrink-0 overflow-hidden rounded-full bg-[#faf8f3] ring-1 ring-zar/50 ${s.box} ${
        spinning ? "tt-vault-spin" : ""
      } ${className}`}
      style={{ boxShadow: "0 6px 18px -8px rgba(0,0,0,0.9)" }}
    >
      <Image
        src="/logo/tirik-tarix-emblem.png"
        alt=""
        aria-hidden
        width={532}
        height={411}
        priority
        className="absolute left-0 top-0 w-full"
        sizes={`${s.px}px`}
      />
    </span>
  );
}

/** To'liq lokap — belgi va «TIRIK TARIX» yozuvi birga (och fonli yuzalar uchun). */
export function LogoLockup({ className = "" }: { className?: string }) {
  return (
    <Image
      src="/logo/tirik-tarix-logo.png"
      alt="Tirik tarix"
      width={603}
      height={694}
      className={className}
      sizes="(max-width: 640px) 60vw, 320px"
    />
  );
}
