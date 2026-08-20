import { ReactNode } from "react";

const WIDTHS = {
  narrow: "max-w-3xl",
  base: "max-w-5xl",
  wide: "max-w-7xl",
} as const;

/** Sahifa markazi — barcha ekranlar uchun yagona kenglik va chekka bo'shliq. */
export default function Container({
  children,
  width = "base",
  className = "",
}: {
  children: ReactNode;
  width?: keyof typeof WIDTHS;
  className?: string;
}) {
  return (
    <div className={`mx-auto w-full ${WIDTHS[width]} px-4 sm:px-6 ${className}`}>{children}</div>
  );
}
