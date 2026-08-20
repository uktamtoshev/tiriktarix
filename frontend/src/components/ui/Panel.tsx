import { ReactNode } from "react";
import { CornerFrame } from "./Ornament";

type Tone = "steel" | "parchment" | "hollow";

const TONES: Record<Tone, string> = {
  steel: "tt-steel-surface tt-engraved text-parchment",
  parchment: "tt-parchment-surface",
  hollow: "rounded-lg border border-zar/20 bg-basalt/60 backdrop-blur-sm",
};

/**
 * Panel — tizimning asosiy sirti.
 * `steel` — qorong'i po'lat karta, `parchment` — o'qish zonasi (faktlar, chat),
 * `hollow` — yengil ramka (filtr paneli, izoh).
 */
export default function Panel({
  tone = "steel",
  corners = false,
  girih = false,
  className = "",
  children,
}: {
  tone?: Tone;
  corners?: boolean;
  girih?: boolean;
  className?: string;
  children: ReactNode;
}) {
  return (
    <div
      className={`relative overflow-hidden ${TONES[tone]} ${girih ? "tt-girih tt-girih-fine" : ""} ${className}`}
    >
      {corners && <CornerFrame />}
      <div className="relative z-10">{children}</div>
    </div>
  );
}
