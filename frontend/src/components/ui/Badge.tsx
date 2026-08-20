import { ReactNode } from "react";

type Tone = "zar" | "feruza" | "qon" | "nil" | "dust";

const TONES: Record<Tone, string> = {
  zar: "border-zar/45 bg-zar/12 text-zar-bright",
  feruza: "border-feruza/50 bg-feruza/12 text-feruza-bright",
  qon: "border-qon/60 bg-qon/15 text-[#e8a99f]",
  nil: "border-nil/60 bg-nil/20 text-[#a8c0e6]",
  dust: "border-steel-2 bg-steel/70 text-dust",
};

/** Muhr — kichik yorliq: davr, yil, manba, qiyinlik. */
export default function Badge({
  tone = "zar",
  className = "",
  children,
}: {
  tone?: Tone;
  className?: string;
  children: ReactNode;
}) {
  return (
    <span
      className={`inline-flex items-center gap-1.5 rounded-sm border px-2.5 py-1 text-[11px] font-semibold uppercase tracking-[0.14em] ${TONES[tone]} ${className}`}
    >
      {children}
    </span>
  );
}
