"use client";

import Link from "next/link";
import { FactCard } from "@/lib/api";
import { Lang, pick, useT } from "@/lib/lang";

/**
 * Fakt kartochkasidan «batafsil» ga o'tish havolasi.
 *
 * NEGA ALOHIDA FAYL. Bitta va o'sha havola uch joyda chiziladi — kutubxona,
 * qahramon sahifasi va flesh-kartalar. Uchta nusxa o'rniga bitta manba:
 * uslub ham, aria-label ham, manzil qoidasi ham bir joyda turadi.
 *
 * USLUB. Qahramon kartochkasidagi «Suhbatni boshlash →» bilan bir xil:
 * kichik harflar, keng oraliq va o'ng tomonga suriladigan strelka.
 */

type Target = { href: string; label: string; ariaSubject: string };

const TXT = {
  ru: {
    detail: "Подробнее",
    era: "Смотреть эпоху",
    aria: (subject: string) => `Подробнее о «${subject}»`,
  },
  uz: {
    detail: "Batafsil",
    era: "Davrni ko'rish",
    aria: (subject: string) => `${subject} haqida batafsil`,
  },
  uk: {
    detail: "Докладніше",
    era: "Дивитися епоху",
    aria: (subject: string) => `Докладніше про «${subject}»`,
  },
};

/**
 * Kartochka qayerga olib borishini aniqlaydi.
 *   qahramonga bog'langan  → o'sha ajdod sahifasidagi tarjimai hol bo'limi
 *   davrga bog'langan      → o'sha davrning vaqt lentasi
 *   ikkalasi ham yo'q      → havola umuman chizilmaydi (o'chirilgan tugma emas)
 *
 * <p>Yozuv tilga bog'liq, shuning uchun `lang` argument bo'lib keladi: bu
 * oddiy funksiya, u hook chaqira olmaydi.
 */
export function factTarget(
  card: FactCard,
  heroSlugById: Map<number, { slug: string; nameUz: string }>,
  eraCodeById: Map<number, { code: string; nameUz: string }>,
  lang: Lang,
): Target | null {
  const t = pick(TXT, lang);
  if (card.heroId !== null) {
    const hero = heroSlugById.get(card.heroId);
    if (hero) {
      return {
        href: `/qahramonlar/${hero.slug}/tarjimai-hol`,
        label: t.detail,
        ariaSubject: hero.nameUz,
      };
    }
  }
  if (card.eraId !== null) {
    const era = eraCodeById.get(card.eraId);
    if (era) {
      return {
        href: `/davrlar/${era.code}`,
        label: t.era,
        ariaSubject: era.nameUz,
      };
    }
  }
  return null;
}

/** Pergament ustidagi variant — to'q rang, AA kontrast. */
export function FactLinkParchment({ target }: { target: Target }) {
  const t = useT(TXT);
  return (
    <Link
      href={target.href}
      aria-label={t.aria(target.ariaSubject)}
      className="group/link -mr-1 inline-flex min-h-[44px] items-center gap-2 px-1 font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-[#5c4a1e] transition-colors hover:text-[#2b2415]"
    >
      {target.label}
      {/* Strelka faqat siljiydi — kartochka balandligi o'zgarmaydi */}
      <span
        aria-hidden
        className="text-base leading-none transition-transform duration-300 ease-tt group-hover/link:translate-x-1"
      >
        →
      </span>
    </Link>
  );
}

/** Qorong'i sirt (po'lat panel) ustidagi variant. */
export function FactLinkSteel({ target }: { target: Target }) {
  const t = useT(TXT);
  return (
    <Link
      href={target.href}
      aria-label={t.aria(target.ariaSubject)}
      className="group/link inline-flex min-h-[44px] items-center gap-2 font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-zar/90 transition-colors hover:text-zar-bright"
    >
      {target.label}
      <span
        aria-hidden
        className="text-base leading-none transition-transform duration-300 ease-tt group-hover/link:translate-x-1"
      >
        →
      </span>
    </Link>
  );
}
