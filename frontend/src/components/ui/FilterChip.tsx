import { ReactNode } from "react";

/** Filtr yorlig'i — davr yoki qahramon bo'yicha saralash uchun. */
export default function FilterChip({
  active,
  onClick,
  children,
}: {
  active: boolean;
  onClick: () => void;
  children: ReactNode;
}) {
  return (
    <button
      onClick={onClick}
      aria-pressed={active}
      className={`shrink-0 rounded-sm border px-4 py-2 font-display text-[10px] font-semibold uppercase tracking-[0.18em] transition-colors ${
        active
          ? "border-zar/60 bg-zar/12 text-zar-bright"
          : "border-steel-2 bg-steel/50 text-dust hover:border-zar/35 hover:text-marble"
      }`}
    >
      {children}
    </button>
  );
}
