"use client";

import { useEffect } from "react";

/**
 * Do'stona tost — qisqa xushxabar (masalan, «+30 XP»). Bir necha soniyadan
 * keyin o'zi yo'qoladi; maskot pufakchasidan farqi — ekran tepasida turadi.
 */
export default function Toast({ message, onDone }: { message: string; onDone: () => void }) {
  useEffect(() => {
    const t = setTimeout(onDone, 5000);
    return () => clearTimeout(t);
  }, [onDone]);

  return (
    <div role="status" className="pop-in fixed left-1/2 top-20 z-[60] w-max max-w-[90vw] -translate-x-1/2">
      <div className="tt-steel-surface tt-ember flex items-center gap-2.5 rounded-md border border-zar/60 px-5 py-3 font-display text-[13px] font-bold uppercase tracking-[0.12em] text-zar-bright shadow-xl">
        <span aria-hidden>✨</span>
        <span>{message}</span>
      </div>
    </div>
  );
}
