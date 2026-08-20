import Link from "next/link";
import { ComponentProps, ReactNode } from "react";

type Variant = "zar" | "steel" | "ghost" | "qon";
type Size = "sm" | "md" | "lg";

const BASE =
  "relative inline-flex items-center justify-center gap-2 font-display font-semibold uppercase tracking-[0.12em] " +
  "transition-all duration-200 ease-tt disabled:cursor-not-allowed disabled:opacity-45 " +
  "hover:-translate-y-0.5 active:translate-y-0 active:scale-[0.98]";

const VARIANTS: Record<Variant, string> = {
  // Quyma oltin — asosiy harakat
  zar:
    "text-[#241c06] rounded-md border border-zar-bright/60 " +
    "bg-[linear-gradient(180deg,#f3d98b_0%,#c8a247_52%,#8d6d20_100%)] " +
    "shadow-[0_10px_30px_-10px_rgba(200,162,71,0.7),inset_0_1px_0_rgba(255,250,235,0.55)] " +
    "hover:shadow-[0_16px_40px_-12px_rgba(243,217,139,0.85),inset_0_1px_0_rgba(255,250,235,0.7)]",
  // Damashq po'lati — ikkilamchi
  steel:
    "text-parchment rounded-md border border-zar/30 bg-[linear-gradient(165deg,#262f42,#141a26)] " +
    "shadow-[0_10px_26px_-12px_rgba(0,0,0,0.9),inset_0_1px_0_rgba(243,217,139,0.12)] " +
    "hover:border-zar/60 hover:text-marble",
  // Shaffof — uchlamchi
  ghost:
    "text-zar rounded-md border border-zar/25 bg-transparent hover:border-zar/60 hover:bg-zar/10",
  // Jang/qiyinlik — juda kam ishlatiladi
  qon:
    "text-[#ffeae7] rounded-md border border-qon/70 bg-[linear-gradient(165deg,#9b2e22,#5c1a12)] " +
    "shadow-[0_10px_26px_-12px_rgba(155,46,34,0.8)] hover:border-qon",
};

const SIZES: Record<Size, string> = {
  sm: "px-4 py-2 text-[11px]",
  md: "px-6 py-3 text-xs sm:text-[13px]",
  lg: "px-9 py-4 text-sm sm:text-base",
};

type CommonProps = {
  variant?: Variant;
  size?: Size;
  sweep?: boolean;
  className?: string;
  children: ReactNode;
};

function classes({ variant = "zar", size = "md", sweep, className = "" }: CommonProps) {
  return `${BASE} ${VARIANTS[variant]} ${SIZES[size]} ${sweep ? "tt-sweep-loop" : "tt-sweep"} ${className}`;
}

export default function Button({
  variant,
  size,
  sweep,
  className,
  children,
  ...rest
}: CommonProps & Omit<ComponentProps<"button">, keyof CommonProps>) {
  return (
    <button className={classes({ variant, size, sweep, className, children })} {...rest}>
      <span className="relative z-10 flex items-center gap-2">{children}</span>
    </button>
  );
}

export function ButtonLink({
  href,
  variant,
  size,
  sweep,
  className,
  children,
  ...rest
}: CommonProps & { href: string } & Omit<ComponentProps<typeof Link>, keyof CommonProps | "href">) {
  return (
    <Link href={href} className={classes({ variant, size, sweep, className, children })} {...rest}>
      <span className="relative z-10 flex items-center gap-2">{children}</span>
    </Link>
  );
}
