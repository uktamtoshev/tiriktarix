"use client";

import { ReactNode } from "react";

/**
 * Panelning mayda qismlari.
 *
 * Panel sayt bilan bitta dizayn tizimida ({@code TEMIR VA ZAR}), lekin
 * zichroq: bu yerda ish qilinadi, taassurot qoldirilmaydi. Shuning uchun
 * animatsiya yo'q, bo'shliqlar kichik, jadval qatorlari past.
 */

export function AdminCard({
  title,
  action,
  className = "",
  children,
}: {
  title?: ReactNode;
  action?: ReactNode;
  className?: string;
  children: ReactNode;
}) {
  return (
    <section
      className={`rounded-md border border-zar/20 bg-basalt/70 shadow-[0_18px_40px_-28px_rgba(0,0,0,0.9)] ${className}`}
    >
      {(title || action) && (
        <header className="flex flex-wrap items-center justify-between gap-3 border-b border-zar/15 px-4 py-3">
          <h2 className="font-display text-[12px] font-semibold uppercase tracking-[0.2em] text-zar-bright">
            {title}
          </h2>
          {action}
        </header>
      )}
      <div className="p-4">{children}</div>
    </section>
  );
}

export function StatTile({
  label,
  value,
  hint,
  tone = "zar",
}: {
  label: string;
  value: ReactNode;
  hint?: string;
  tone?: "zar" | "feruza" | "qon" | "dust";
}) {
  const tones = {
    zar: "text-zar-bright",
    feruza: "text-feruza-bright",
    qon: "text-[#e8a99f]",
    dust: "text-marble",
  } as const;
  return (
    <div className="rounded-md border border-zar/15 bg-steel/50 px-4 py-3">
      <p className="text-[10px] font-semibold uppercase tracking-[0.18em] text-dust">{label}</p>
      <p className={`mt-1 font-display text-2xl font-bold ${tones[tone]}`}>{value}</p>
      {hint && <p className="mt-0.5 text-[11px] text-dust">{hint}</p>}
    </div>
  );
}

export function AdminButton({
  variant = "steel",
  size = "md",
  className = "",
  children,
  ...rest
}: {
  variant?: "zar" | "steel" | "ghost" | "qon";
  size?: "sm" | "md";
} & React.ComponentProps<"button">) {
  const variants = {
    zar: "border-zar-bright/60 bg-[linear-gradient(180deg,#f3d98b,#c8a247)] text-[#241c06] hover:brightness-110",
    steel: "border-zar/25 bg-steel/80 text-parchment hover:border-zar/60 hover:text-marble",
    ghost: "border-transparent bg-transparent text-dust hover:text-zar-bright",
    qon: "border-qon/60 bg-qon/20 text-[#e8a99f] hover:bg-qon/35",
  } as const;
  const sizes = { sm: "px-2.5 py-1 text-[11px]", md: "px-4 py-2 text-xs" } as const;
  return (
    <button
      {...rest}
      className={`inline-flex items-center justify-center gap-1.5 rounded-sm border font-display font-semibold uppercase tracking-[0.12em] transition disabled:cursor-not-allowed disabled:opacity-40 ${variants[variant]} ${sizes[size]} ${className}`}
    >
      {children}
    </button>
  );
}

/** Tasdiqlangan / kutilmoqda kabi holat yorlig'i. */
export function Pill({
  tone = "dust",
  children,
}: {
  tone?: "ok" | "warn" | "info" | "dust";
  children: ReactNode;
}) {
  const tones = {
    ok: "border-feruza/50 bg-feruza/12 text-feruza-bright",
    warn: "border-qon/55 bg-qon/15 text-[#e8a99f]",
    info: "border-nil/60 bg-nil/25 text-[#a8c0e6]",
    dust: "border-steel-2 bg-steel/70 text-dust",
  } as const;
  return (
    <span
      className={`inline-flex items-center gap-1 whitespace-nowrap rounded-sm border px-2 py-0.5 text-[10px] font-semibold uppercase tracking-[0.1em] ${tones[tone]}`}
    >
      {children}
    </span>
  );
}

export function VerifiedPill({ value }: { value: boolean }) {
  return value ? <Pill tone="ok">Подтверждено</Pill> : <Pill tone="warn">Ожидает</Pill>;
}

export function Notice({
  tone = "error",
  children,
}: {
  tone?: "error" | "info" | "ok";
  children: ReactNode;
}) {
  const tones = {
    error: "border-qon/50 bg-qon/12 text-[#e8a99f]",
    info: "border-nil/50 bg-nil/20 text-[#a8c0e6]",
    ok: "border-feruza/45 bg-feruza/12 text-feruza-bright",
  } as const;
  return (
    <div className={`rounded-sm border px-3 py-2 text-sm ${tones[tone]}`} role="status">
      {children}
    </div>
  );
}

export function Spinner({ label = "Загрузка…" }: { label?: string }) {
  return <p className="py-6 text-center text-sm text-dust">{label}</p>;
}

export function Empty({ children }: { children: ReactNode }) {
  return <p className="py-8 text-center text-sm text-dust">{children}</p>;
}

/** Gorizontal skroll bilan jadval — tor ekranda ham sahifa surilib ketmasin. */
export function Table({
  head,
  children,
}: {
  head: ReactNode[];
  children: ReactNode;
}) {
  return (
    <div className="-mx-4 overflow-x-auto px-4">
      <table className="w-full min-w-[720px] border-collapse text-sm">
        <thead>
          <tr className="border-b border-zar/20 text-left">
            {head.map((cell, i) => (
              <th
                key={i}
                className="whitespace-nowrap px-2 py-2 text-[10px] font-semibold uppercase tracking-[0.16em] text-zar/80"
              >
                {cell}
              </th>
            ))}
          </tr>
        </thead>
        <tbody>{children}</tbody>
      </table>
    </div>
  );
}

export function Row({ children }: { children: ReactNode }) {
  return (
    <tr className="border-b border-steel-2/60 align-top transition-colors hover:bg-steel/40">
      {children}
    </tr>
  );
}

export function Cell({
  className = "",
  colSpan,
  children,
}: {
  className?: string;
  colSpan?: number;
  children: ReactNode;
}) {
  return (
    <td colSpan={colSpan} className={`px-2 py-2.5 text-parchment ${className}`}>
      {children}
    </td>
  );
}

export function Pager({
  page,
  pages,
  total,
  onChange,
}: {
  page: number;
  pages: number;
  total: number;
  onChange: (page: number) => void;
}) {
  if (pages <= 1) {
    return <p className="mt-3 text-[11px] text-dust">Всего: {total}</p>;
  }
  return (
    <div className="mt-3 flex items-center justify-between gap-3">
      <p className="text-[11px] text-dust">
        Всего: {total} · страница {page + 1} из {pages}
      </p>
      <div className="flex gap-2">
        <AdminButton size="sm" disabled={page <= 0} onClick={() => onChange(page - 1)}>
          ← Назад
        </AdminButton>
        <AdminButton size="sm" disabled={page + 1 >= pages} onClick={() => onChange(page + 1)}>
          Вперёд →
        </AdminButton>
      </div>
    </div>
  );
}
