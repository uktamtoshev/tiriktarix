"use client";

import Link from "next/link";
import { useT } from "@/lib/lang";

const TXT = {
  ru: { label: "Таблица лидеров", aria: "Открыть таблицу лидеров" },
  uz: { label: "Reyting jadvali", aria: "Reyting jadvalini ochish" },
  uk: { label: "Таблиця лідерів", aria: "Відкрити таблицю лідерів" },
};

/**
 * «Reyting jadvali» — unvon lavhasidagi JAMI XP / KUNLIK SERIYA bloklari
 * yonidagi tugma.
 *
 * NEGA `Button` EMAS. Qo'shni bloklar — bu tugma emas, lavhachalar; ular bir
 * qatorda va bir xil ko'rinishda turishi kerak. Shu bois bu yerda `Button`
 * variantlari emas, aynan o'sha lavha shakli (`rounded-sm`, `border-zar/40`,
 * `bg-zar/10`, `px-5 py-3.5`) ishlatilgan — yangi rang qo'shilmagan.
 *
 * O'TISH. `next/link` orqali — mijoz tomonidagi navigatsiya saqlanadi
 * (`window.location` ishlatilmaydi).
 */
export default function LeaderboardButton({ className = "" }: { className?: string }) {
  const t = useT(TXT);
  return (
    <Link
      href="/leaderboard"
      aria-label={t.aria}
      className={
        "group flex min-h-[44px] min-w-[44px] flex-col items-center justify-center rounded-sm " +
        "border border-zar/40 bg-zar/10 px-5 py-3.5 text-center transition-colors " +
        "hover:border-zar/70 hover:bg-zar/20 " +
        "focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-zar " +
        className
      }
    >
      <span aria-hidden className="text-2xl leading-none">
        🏆
      </span>
      <span className="mt-1 text-[9px] font-semibold uppercase tracking-[0.2em] text-dust transition-colors group-hover:text-zar">
        {t.label}
      </span>
    </Link>
  );
}
