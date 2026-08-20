"use client";

/**
 * Davr sahifasi — qahramon sahifasining aynan shu tuzilishi: shapka, matn,
 * manbalar. Matn bazadan (`eras.biography_uz`, V36) keladi.
 *
 * HOZIRGI HOLAT. Davrlar uchun material hali yig'ilmagan, shuning uchun
 * sahifa qisqa: shapka va davr tavsifi ko'rinadi, tarjimai hol o'rnida esa
 * ochiq yozuv turadi. Sahifa buzilmaydi — matn qo'shilishi bilan o'zi
 * to'ladi, kodni o'zgartirish shart emas.
 */

import Link from "next/link";
import { use, useEffect, useState } from "react";
import { api, Era } from "@/lib/api";
import { eraEmoji, formatRange } from "@/lib/eras";
import Panel from "@/components/ui/Panel";
import Badge from "@/components/ui/Badge";
import SectionTitle from "@/components/ui/SectionTitle";
import { useLang, useT } from "@/lib/lang";
import { countryQuery, useCountry } from "@/lib/country";
import { eraDescription, eraName } from "@/lib/content.ru";

const TXT = {
  ru: {
    loading: "Загрузка…",
    notFound: "Эпоха не найдена.",
    backToEvents: "События эпохи",
    overline: "Об эпохе",
    empty: "Развёрнутый текст для этой эпохи ещё не собран.",
    sources: "Использованная литература",
    unverified: "Текст проходит проверку методиста.",
  },
  uz: {
    loading: "Yuklanmoqda…",
    notFound: "Davr topilmadi.",
    backToEvents: "Davr voqealari",
    overline: "Davr haqida",
    empty: "Bu davr uchun kengaytirilgan matn hali yig'ilmagan.",
    sources: "Foydalanilgan adabiyotlar",
    unverified: "Matn metodist tekshiruvidan o'tmoqda.",
  },
  uk: {
    loading: "Завантаження…",
    notFound: "Епоху не знайдено.",
    backToEvents: "Події епохи",
    overline: "Про епоху",
    empty: "Розгорнутий текст для цієї епохи ще не зібрано.",
    sources: "Використана література",
    unverified: "Текст проходить перевірку методиста.",
  },
};

type Source = { n: number; title: string; url: string; note: string };

function parseSections(text: string) {
  return text
    .split(/^## /m)
    .map((c) => c.trim())
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

export default function EraPage({ params }: { params: Promise<{ code: string }> }) {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  const { code } = use(params);
  const [eras, setEras] = useState<Era[] | null>(null);

  useEffect(() => {
    /* Bayroq almashtirilganda IKKALA so'rov ham yo'lda bo'ladi va keyin
       kelgani yutadi — eski katalog yangisining ustiga yozilib qolardi.
       Shuning uchun javob faqat effekt hali tirik bo'lsa qo'llanadi. */
    let live = true;
    const keep =
      <T,>(apply: (v: T) => void) =>
      (v: T) => {
        if (live) apply(v);
      };
    api<Era[]>(`/api/eras${countryQuery(country)}`)
      .then(keep(setEras))
      .catch(keep(() => setEras([])));
    return () => {
      live = false;
    };
  }, [country]);

  if (!eras) {
    return (
      <p className="py-20 text-center font-display text-sm uppercase tracking-[0.3em] text-dust">
        {t.loading}
      </p>
    );
  }

  const era = eras.find((e) => e.code === code);
  if (!era) {
    return <p className="py-20 text-center text-sm text-dust">{t.notFound}</p>;
  }

  let sources: Source[] = [];
  try {
    sources = era.biographySources ? (JSON.parse(era.biographySources) as Source[]) : [];
  } catch {
    sources = [];
  }
  const sections = era.biographyUz ? parseSections(era.biographyUz) : [];

  return (
    <div className="space-y-8">
      <Link
        href={`/voqealar?davr=${era.code}`}
        className="inline-flex min-h-[44px] items-center gap-2 font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-dust transition-colors hover:text-zar"
      >
        <span aria-hidden>←</span> {t.backToEvents}
      </Link>

      <Panel corners girih className="p-7 text-center sm:p-9">
        <p aria-hidden className="text-5xl">
          {eraEmoji(era.code)}
        </p>
        <h1 className="mt-4 font-display text-2xl font-bold uppercase leading-tight tracking-[0.06em] text-marble sm:text-3xl">
          {eraName(era, lang)}
        </h1>
        {era.yearFrom !== null && (
          <Badge tone="dust" className="mt-4">
            {formatRange(era.yearFrom, era.yearTo, lang)}
          </Badge>
        )}
        <p className="mx-auto mt-5 max-w-2xl text-sm leading-relaxed text-dust">
          {eraDescription(era, lang)}
        </p>
      </Panel>

      <SectionTitle overline={t.overline} title={eraName(era, lang)} />

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
              {s.refs.length > 0 && (
                <p className="mt-4 border-t border-[#7a5f1c]/30 pt-3 text-xs text-[#5c4a1e]">
                  {s.refs
                    .map((n) => sources.find((x) => x.n === n)?.title ?? `[${n}]`)
                    .join("; ")}
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

      {sections.length > 0 && !era.biographyVerified && (
        <p className="border-t border-steel-2 pt-4 text-[11px] leading-relaxed text-dust/80">
          {t.unverified}
        </p>
      )}
    </div>
  );
}
