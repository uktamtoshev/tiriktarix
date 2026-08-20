"use client";

/**
 * Ajdodning tarjimai hol sahifasi.
 *
 * QAT'IY QOIDA. Bu sahifadagi matn KOMPONENTDA YOZILMAGAN — u bazadagi
 * `heroes.biography_uz` dan keladi (V36 migratsiyasi). Sabab oddiy: matn
 * kontent, uni metodist tekshiradi va tahrirlaydi, kod esa faqat ko'rsatadi.
 *
 * Sahifada faqat uchta narsa bor: shapka (portret, ism, yillar), tarjimai
 * hol va manbalar ro'yxati. Boshqa hech narsa — sahifa bitta odamning
 * hayotiga bag'ishlangan.
 */

import Link from "next/link";
import { use, useEffect, useState } from "react";
import { heroYears } from "@/lib/eras";
import { api, Hero } from "@/lib/api";
import Panel from "@/components/ui/Panel";
import Badge from "@/components/ui/Badge";
import SectionTitle from "@/components/ui/SectionTitle";
import HeroMedallion, { portraitAlt, PortraitCaption } from "@/components/ui/HeroMedallion";
import { useLang, useT } from "@/lib/lang";
import { heroCard, portraitCaption } from "@/lib/heroes.ru";
import { heroBiography } from "@/lib/biographies.ru";

const TXT = {
  ru: {
    notFound: "Предок не найден.",
    loading: "Загрузка…",
    backToChat: (name: string) => `Беседа: ${name}`,
    overline: "Биография",
    title: "Жизнь",
    empty: "Биография этого предка ещё не собрана.",
    sources: "Использованная литература",
    unverified: "Текст проходит проверку методиста.",
  },
  uz: {
    notFound: "Ajdod topilmadi.",
    loading: "Yuklanmoqda…",
    backToChat: (name: string) => `${name} bilan suhbat`,
    overline: "Tarjimai hol",
    title: "Hayoti",
    empty: "Bu ajdodning tarjimai holi hali yig'ilmagan.",
    sources: "Foydalanilgan adabiyotlar",
    unverified: "Matn metodist tekshiruvidan o'tmoqda.",
  },
  uk: {
    notFound: "Предка не знайдено.",
    loading: "Завантаження…",
    backToChat: (name: string) => `Бесіда: ${name}`,
    overline: "Біографія",
    title: "Життя",
    empty: "Біографію цього предка ще не зібрано.",
    sources: "Використана література",
    unverified: "Текст проходить перевірку методиста.",
  },
};

type Source = { n: number; title: string; url: string; note: string };

/** Matn `## sarlavha` bloklariga bo'lingan. Har blok oxirida [n] manbalari. */
function parseSections(text: string): { heading: string; body: string; refs: number[] }[] {
  return text
    .split(/^## /m)
    .map((chunk) => chunk.trim())
    .filter(Boolean)
    .map((chunk) => {
      const [heading, ...rest] = chunk.split("\n");
      const body = rest.join("\n").trim();
      const refs = [...body.matchAll(/\[(\d+)\]/g)].map((m) => Number(m[1]));
      return {
        heading: heading.trim(),
        body: body.replace(/\s*\[\d+\]/g, "").trim(),
        refs: [...new Set(refs)],
      };
    });
}

export default function BiographyPage({ params }: { params: Promise<{ slug: string }> }) {
  const t = useT(TXT);
  const { lang } = useLang();
  const { slug } = use(params);
  const [hero, setHero] = useState<Hero | null>(null);
  const [missing, setMissing] = useState(false);

  useEffect(() => {
    api<Hero>(`/api/heroes/${slug}`)
      .then(setHero)
      .catch(() => setMissing(true));
  }, [slug]);

  if (missing) {
    return <p className="py-20 text-center text-sm text-dust">{t.notFound}</p>;
  }
  if (!hero) {
    return (
      <p className="py-20 text-center font-display text-sm uppercase tracking-[0.3em] text-dust">
        {t.loading}
      </p>
    );
  }

  let sources: Source[] = [];
  try {
    sources = hero.biographySources ? (JSON.parse(hero.biographySources) as Source[]) : [];
  } catch {
    sources = [];
  }
  const bio = heroBiography(hero, lang);
  const sections = bio ? parseSections(bio) : [];
  const card = heroCard(hero, lang);

  return (
    <div className="space-y-8">
      <Link
        href={`/qahramonlar/${slug}`}
        className="inline-flex min-h-[44px] items-center gap-2 font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-dust transition-colors hover:text-zar"
      >
        <span aria-hidden>←</span> {t.backToChat(card.name)}
      </Link>

      {/* ============================ Shapka ============================ */}
      <Panel corners girih className="p-7 text-center sm:p-9">
        <HeroMedallion
          emoji={hero.portraitEmoji}
          portraitUrl={hero.portraitUrl}
          alt={portraitAlt(card.name, hero.portraitKind, lang)}
          size="md"
          accent="zar"
        />
        <PortraitCaption
          kind={hero.portraitKind}
          caption={portraitCaption(hero, lang)}
          className="mt-3"
        />
        <h1 className="mt-5 font-display text-2xl font-bold uppercase leading-tight tracking-[0.06em] text-marble sm:text-3xl">
          {card.name}
        </h1>
        <p className="mt-1.5 font-quote text-lg italic text-zar">{card.title}</p>
        {heroYears(hero.birthYear, hero.deathYear, lang) && (
          <Badge tone="dust" className="mt-4">
            {heroYears(hero.birthYear, hero.deathYear, lang)}
          </Badge>
        )}
      </Panel>

      {/* ========================= Tarjimai hol ========================= */}
      <SectionTitle overline={t.overline} title={t.title} />

      {sections.length > 0 ? (
        <div className="space-y-4">
          {sections.map((s, i) => (
            <article
              key={s.heading}
              className="tt-parchment-surface tt-reveal p-5 sm:p-7"
              style={{ animationDelay: `${Math.min(i * 45, 300)}ms` }}
            >
              <h2 className="font-display text-base font-bold uppercase leading-snug tracking-[0.06em] text-[#3a2f14]">
                {s.heading}
              </h2>
              {s.body.split(/\n{2,}/).map((p, j) => (
                <p key={j} className="mt-3 text-[15px] leading-relaxed text-[#2b2415]">
                  {p}
                </p>
              ))}
              {/* Manbasiz xatboshi chop etilmaydi — havola shu yerda turadi */}
              {s.refs.length > 0 && (
                <p className="mt-4 border-t border-[#7a5f1c]/30 pt-3 text-xs text-[#5c4a1e]">
                  {s.refs.map((n, k) => {
                    const src = sources.find((x) => x.n === n);
                    return (
                      <span key={n}>
                        {k > 0 && "; "}
                        {src?.url ? (
                          <a
                            href={src.url}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="underline decoration-[#7a5f1c]/50 underline-offset-2 hover:text-[#2b2415]"
                          >
                            {src.title}
                          </a>
                        ) : (
                          (src?.title ?? `[${n}]`)
                        )}
                      </span>
                    );
                  })}
                </p>
              )}
            </article>
          ))}
        </div>
      ) : (
        <Panel tone="hollow" className="p-6 text-center">
          <p className="text-sm text-dust">{t.empty}</p>
        </Panel>
      )}

      {/* =========================== Manbalar =========================== */}
      {sources.length > 0 && (
        <section className="space-y-3">
          <h2 className="font-display text-sm font-bold uppercase tracking-[0.2em] text-zar/90">
            {t.sources}
          </h2>
          <ol className="space-y-2.5">
            {sources.map((s) => (
              <li key={s.n} className="text-xs leading-relaxed text-dust">
                <span className="text-zar/80">[{s.n}]</span>{" "}
                {s.url ? (
                  <a
                    href={s.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="underline underline-offset-2 hover:text-marble"
                  >
                    {s.title}
                  </a>
                ) : (
                  s.title
                )}
                {s.note && <span className="text-dust/75"> — {s.note}</span>}
              </li>
            ))}
          </ol>
        </section>
      )}

      {/* Metodist tekshiruvi haqida — matn tasdiqlanmaguncha ko'rinadi */}
      {sections.length > 0 && !hero.biographyVerified && (
        <p className="border-t border-steel-2 pt-4 text-[11px] leading-relaxed text-dust/80">
          {t.unverified}
        </p>
      )}
    </div>
  );
}
