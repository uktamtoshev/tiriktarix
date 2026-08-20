"use client";

import { ReactNode, useEffect } from "react";
import { AdminButton } from "./ui";

/**
 * Modal oyna — tahrir shakllari uchun.
 * Escape bilan yopiladi va ochiq turganda sahifa orqasi surilmaydi.
 */
export default function Modal({
  title,
  wide = false,
  onClose,
  footer,
  children,
}: {
  title: ReactNode;
  wide?: boolean;
  onClose: () => void;
  footer?: ReactNode;
  children: ReactNode;
}) {
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") onClose();
    };
    document.addEventListener("keydown", onKey);
    const previous = document.body.style.overflow;
    document.body.style.overflow = "hidden";
    return () => {
      document.removeEventListener("keydown", onKey);
      document.body.style.overflow = previous;
    };
  }, [onClose]);

  return (
    <div className="fixed inset-0 z-50 flex items-start justify-center overflow-y-auto bg-obsidian/80 p-4 backdrop-blur-sm">
      <div
        role="dialog"
        aria-modal="true"
        className={`my-8 w-full rounded-md border border-zar/25 bg-basalt shadow-[0_40px_90px_-30px_rgba(0,0,0,0.95)] ${
          wide ? "max-w-4xl" : "max-w-2xl"
        }`}
      >
        <header className="flex items-center justify-between gap-4 border-b border-zar/15 px-5 py-3">
          <h2 className="font-display text-sm font-semibold uppercase tracking-[0.18em] text-zar-bright">
            {title}
          </h2>
          <AdminButton variant="ghost" size="sm" onClick={onClose} aria-label="Закрыть">
            ✕
          </AdminButton>
        </header>
        <div className="px-5 py-4">{children}</div>
        {footer && (
          <footer className="flex flex-wrap items-center justify-end gap-2 border-t border-zar/15 px-5 py-3">
            {footer}
          </footer>
        )}
      </div>
    </div>
  );
}
