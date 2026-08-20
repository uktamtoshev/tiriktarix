import { ReactNode } from "react";
import { Star } from "./Ornament";

/**
 * Bo'lim sarlavhasi — monumental: kichik zar oldi-yozuv, katta Cinzel sarlavha,
 * ostida chiziladigan zar chiziq.
 */
export default function SectionTitle({
  overline,
  title,
  subtitle,
  align = "center",
  className = "",
}: {
  overline?: string;
  title: ReactNode;
  subtitle?: ReactNode;
  align?: "center" | "left";
  className?: string;
}) {
  const centered = align === "center";
  return (
    <header className={`${centered ? "text-center" : "text-left"} ${className}`}>
      {overline && (
        <p
          className={`flex items-center gap-2.5 text-[11px] font-semibold uppercase tracking-[0.35em] text-zar/90 ${
            centered ? "justify-center" : ""
          }`}
        >
          <Star className="h-3 w-3" />
          {overline}
          <Star className="h-3 w-3" />
        </p>
      )}
      <h2 className="mt-3 font-display text-2xl font-bold uppercase text-marble sm:text-4xl">
        {title}
      </h2>
      <span
        aria-hidden
        className={`tt-draw mt-4 block h-px w-28 bg-gradient-to-r from-zar to-transparent ${
          centered ? "mx-auto bg-gradient-to-r from-transparent via-zar to-transparent" : ""
        }`}
      />
      {subtitle && (
        <p
          className={`mt-4 text-sm leading-relaxed text-dust sm:text-base ${
            centered ? "mx-auto max-w-2xl" : "max-w-2xl"
          }`}
        >
          {subtitle}
        </p>
      )}
    </header>
  );
}
