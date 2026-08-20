"use client";

import Link from "next/link";
import Logo from "@/components/ui/Logo";
import { Divider } from "@/components/ui/Ornament";
import { useT } from "@/lib/lang";

/** Ustunlar tuzilishi — yozuvlarsiz: ular TXT dan tilga qarab olinadi. */
const COLUMNS: { key: "gates" | "knowledge"; hrefs: string[] }[] = [
  { key: "gates", hrefs: ["/qahramonlar", "/voqealar", "/xaritalar", "/filmlar"] },
  { key: "knowledge", hrefs: ["/testlar", "/kutubxona", "/profil"] },
];

const TXT = {
  ru: {
    columns: { gates: "Врата", knowledge: "Знание" },
    links: {
      "/qahramonlar": "Беседа с предками",
      "/voqealar": "Исторические события",
      "/xaritalar": "Карты эпох",
      "/filmlar": "Документальные фильмы",
      "/testlar": "Испытания",
      "/kutubxona": "Сокровищница — библиотека",
      "/profil": "Зал достижений",
    } as Record<string, string>,
    motto: "«Искусственный интеллект создаёт форму — за правду отвечают люди.»",
    lead:
      "Каждый ответ, вопрос и событие опирается на карточку факта, проверенную методистом-историком.",
    social: "Социальный проект · Узбекистан 🇺🇿",
    admin: "🔑 Админ-панель",
  },
  uz: {
    columns: { gates: "Darvozalar", knowledge: "Bilim" },
    links: {
      "/qahramonlar": "Ajdodlar bilan suhbat",
      "/voqealar": "Tarixiy voqealar",
      "/xaritalar": "Zamon xaritalari",
      "/filmlar": "Hujjatli filmlar",
      "/testlar": "Sinovlar",
      "/kutubxona": "Xazina — kutubxona",
      "/profil": "Yutuqlar zali",
    } as Record<string, string>,
    motto: "«Sun'iy intellekt shaklni yaratadi — haqiqat uchun odamlar javob beradi.»",
    lead:
      "Har bir javob, savol va voqea metodist-tarixchi tasdiqlagan fakt kartochkasiga tayanadi.",
    social: "Ijtimoiy loyiha · O'zbekiston 🇺🇿",
    admin: "🔑 Boshqaruv paneli",
  },
  uk: {
    columns: { gates: "Брами", knowledge: "Знання" },
    links: {
      "/qahramonlar": "Бесіда з предками",
      "/voqealar": "Історичні події",
      "/xaritalar": "Карти епох",
      "/filmlar": "Документальні фільми",
      "/testlar": "Випробування",
      "/kutubxona": "Скарбниця — бібліотека",
      "/profil": "Зала досягнень",
    } as Record<string, string>,
    motto: "«Штучний інтелект створює форму — за правду відповідають люди.»",
    lead:
      "Кожна відповідь, питання і подія спирається на картку факту, перевірену методистом-істориком.",
    social: "Соціальний проєкт · Узбекистан 🇺🇿",
    admin: "🔑 Адмінпанель",
  },
};

/** Qal'a poydevori — sahifaning tosh asosi. */
export default function Footer() {
  const t = useT(TXT);

  return (
    <footer className="tt-girih tt-grain relative mt-24 border-t border-zar/25 bg-[linear-gradient(180deg,#0a0d13,#05070b)]">
      <div className="relative z-10 mx-auto w-full max-w-7xl px-4 py-14 sm:px-6">
        <div className="grid gap-10 sm:grid-cols-2 lg:grid-cols-4">
          <div className="lg:col-span-2">
            <p className="flex items-center gap-3 font-display text-lg font-bold uppercase tracking-[0.22em] text-marble">
              <Logo size="md" />
              Tirik tarix
            </p>
            <p className="mt-4 max-w-md font-quote text-lg italic leading-relaxed text-zar/85">
              {t.motto}
            </p>
            <p className="mt-4 max-w-md text-sm leading-relaxed text-dust">{t.lead}</p>
          </div>

          {COLUMNS.map((col) => (
            <nav key={col.key}>
              <p className="font-display text-[11px] font-semibold uppercase tracking-[0.3em] text-zar/90">
                {t.columns[col.key]}
              </p>
              <ul className="mt-4 space-y-2.5">
                {col.hrefs.map((href) => (
                  <li key={href}>
                    <Link
                      href={href}
                      className="text-sm text-dust transition-colors hover:text-marble"
                    >
                      {t.links[href]}
                    </Link>
                  </li>
                ))}
              </ul>
            </nav>
          ))}
        </div>

        <Divider className="mt-12" />

        <div className="mt-8 flex flex-col items-center gap-3 text-center">
          <p className="font-display text-xs font-semibold uppercase tracking-[0.28em] text-marble">
            {t.social}
          </p>
          {/* Xodimlar uchun kirish. Sahifa oxirida turadi — bu bolalar uchun
              emas, lekin topib bo'lmaydigan darajada yashirin ham emas.
              Havolaning o'zi hech narsa ochmaydi: panel parol so'raydi. */}
          <Link
            href="/admin"
            className="mt-3 inline-flex items-center gap-2 rounded-sm border border-zar/30 bg-zar/[0.06] px-4 py-2 font-display text-[11px] font-semibold uppercase tracking-[0.2em] text-zar/90 transition-colors hover:border-zar/60 hover:bg-zar/12 hover:text-zar-bright"
          >
            {t.admin}
          </Link>
        </div>
      </div>
    </footer>
  );
}
