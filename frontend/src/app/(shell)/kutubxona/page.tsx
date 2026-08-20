"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import { api, Era, FactCard, Hero } from "@/lib/api";
import { eraEmoji } from "@/lib/eras";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import FilterChip from "@/components/ui/FilterChip";
import Button from "@/components/ui/Button";
import Flashcards from "@/components/Flashcards";
import { factTarget, FactLinkParchment } from "@/components/ui/FactLink";
import FactDetail from "@/components/ui/FactDetail";
import { useLang, useT } from "@/lib/lang";
import { countryQuery, useCountry } from "@/lib/country";
import { heroName } from "@/lib/heroes.ru";
import { eraName, factCard } from "@/lib/content.ru";

const TXT = {
  ru: {
    overline: "Врата VI",
    title: "Сокровищница",
    subtitle:
      "Все карточки фактов — каждая проверена. Именно эти карточки лежат в основе ответов предков, вопросов тестов и сценариев фильмов.",
    flashcards: "Флеш-карточки",
    offline: "Нет связи с сервером. Проверьте, запущен ли бэкенд.",
    all: "Все",
    empty: "По этому фильтру карточек не найдено.",
  },
  uz: {
    overline: "Darvoza VI",
    title: "Xazina",
    subtitle:
      "Barcha fakt kartochkalari — har biri tekshirilgan. Aynan shu kartochkalar ajdodlar javoblari, test savollari va film stsenariylarining asosi.",
    flashcards: "Flesh-kartalar",
    offline: "Server bilan aloqa yo'q. Backend ishga tushganini tekshiring.",
    all: "Barchasi",
    empty: "Bu filtr bo'yicha kartochka topilmadi.",
  },
  uk: {
    overline: "Брама VI",
    title: "Скарбниця",
    subtitle:
      "Усі картки фактів — кожну перевірено. Саме ці картки лежать в основі відповідей предків, питань випробувань і сценаріїв фільмів.",
    flashcards: "Флеш-картки",
    offline: "Немає зв'язку із сервером. Перевірте, чи запущено бекенд.",
    all: "Усі",
    empty: "За цим фільтром карток не знайдено.",
  },
};

export default function LibraryPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  const [heroes, setHeroes] = useState<Hero[]>([]);
  const [eras, setEras] = useState<Era[]>([]);
  const [cards, setCards] = useState<FactCard[]>([]);
  const [filter, setFilter] = useState<string>("all");
  const [error, setError] = useState(false);
  // Flesh-kartalar — sahifa ustidagi qatlam. Oddiy Xazina ko'rinishi tegilmaydi.
  const [flashcards, setFlashcards] = useState(false);

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
    api<Hero[]>(`/api/heroes${countryQuery(country)}`)
      .then(keep(setHeroes))
      .catch(keep(() => setError(true)));
    api<Era[]>(`/api/eras${countryQuery(country)}`)
      .then(keep(setEras))
      .catch(keep(() => setError(true)));
    api<FactCard[]>(`/api/library/factcards${countryQuery(country)}`)
      .then(keep(setCards))
      .catch(keep(() => setError(true)));
    return () => {
      live = false;
    };
  }, [country]);

  const heroById = useMemo(() => new Map(heroes.map((h) => [h.id, h])), [heroes]);
  const eraById = useMemo(() => new Map(eras.map((e) => [e.id, e])), [eras]);

  // «Batafsil» havolasi uchun — slug/kod bo'yicha qidiruv
  const heroLookup = useMemo(
    () => new Map(heroes.map((h) => [h.id, { slug: h.slug, nameUz: h.nameUz }])),
    [heroes],
  );
  const eraLookup = useMemo(
    () => new Map(eras.map((e) => [e.id, { code: e.code, nameUz: e.nameUz }])),
    [eras],
  );

  /**
   * Kartochka kim/nima haqida. Flesh-kartada bu majburiy: mavzuning o'zi
   * («Tug'ilishi») o'nta qahramondan qaysi biri ekanini aytmaydi.
   */
  const linkOf = useCallback(
    (c: FactCard) => factTarget(c, heroLookup, eraLookup, lang),
    [heroLookup, eraLookup, lang],
  );

  const subjectOf = useCallback(
    (c: FactCard): string | null => {
      const hero = c.heroId !== null ? heroById.get(c.heroId) : null;
      if (hero) return `${hero.portraitEmoji} ${heroName(hero, lang)}`;
      const era = c.eraId !== null ? eraById.get(c.eraId) : null;
      if (era) return `${eraEmoji(era.code)} ${eraName(era, lang)}`;
      return null;
    },
    [heroById, eraById, lang],
  );

  const visible = cards.filter((c) => {
    if (filter === "all") return true;
    if (filter.startsWith("hero:")) {
      return c.heroId !== null && heroById.get(c.heroId)?.slug === filter.slice(5);
    }
    if (filter.startsWith("era:")) {
      return c.eraId !== null && eraById.get(c.eraId)?.code === filter.slice(4);
    }
    return true;
  });

  return (
    <div className="space-y-12">
      <SectionTitle overline={t.overline} title={t.title} subtitle={t.subtitle} />

      {/* Yodlash rejimiga kirish — sarlavha blokining ostida */}
      {!flashcards && (
        <div className="-mt-6 text-center">
          <Button
            variant="steel"
            size="sm"
            className="min-h-[44px]"
            onClick={() => setFlashcards(true)}
          >
            {t.flashcards}
          </Button>
        </div>
      )}

      {error && (
        <Panel tone="hollow" className="p-5 text-center">
          <p className="text-sm text-[#e8a99f]">{t.offline}</p>
        </Panel>
      )}

      <div className="space-y-2.5">
        <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:px-0">
          <FilterChip active={filter === "all"} onClick={() => setFilter("all")}>
            {t.all} · {cards.length}
          </FilterChip>
          {heroes.map((h) => (
            <FilterChip
              key={h.slug}
              active={filter === `hero:${h.slug}`}
              onClick={() => setFilter(`hero:${h.slug}`)}
            >
              {h.portraitEmoji} {heroName(h, lang)}
            </FilterChip>
          ))}
        </div>
        <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:px-0">
          {eras.map((e) => (
            <FilterChip
              key={e.code}
              active={filter === `era:${e.code}`}
              onClick={() => setFilter(`era:${e.code}`)}
            >
              {eraEmoji(e.code)} {eraName(e, lang)}
            </FilterChip>
          ))}
        </div>
      </div>

      {flashcards && (
        <Flashcards
          filteredCards={visible}
          subjectOf={subjectOf}
          linkOf={linkOf}
          onExit={() => setFlashcards(false)}
        />
      )}

      {/* Kartochkalar pergamentda — o'qish zonasi */}
      <div key={filter} className={`grid gap-5 sm:grid-cols-2 ${flashcards ? "hidden" : ""}`}>
        {visible.map((c, i) => {
          const hero = c.heroId !== null ? heroById.get(c.heroId) : null;
          const era = c.eraId !== null ? eraById.get(c.eraId) : null;
          const target = factTarget(c, heroLookup, eraLookup, lang);
          const text = factCard(c, lang);
          return (
            <article
              key={c.id}
              className="tt-parchment-surface tt-reveal p-5 sm:p-6"
              style={{ animationDelay: `${Math.min(i * 35, 450)}ms` }}
            >
              <p className="text-[10px] font-semibold uppercase tracking-[0.22em] text-[#5f4a12]">
                {hero && `${hero.portraitEmoji} ${heroName(hero, lang)}`}
                {era && `${eraEmoji(era.code)} ${eraName(era, lang)}`}
              </p>
              <h2 className="mt-2 font-display text-base font-bold uppercase leading-snug tracking-[0.05em] text-[#3a2f14]">
                {text.topic}
              </h2>
              <p className="mt-2.5 text-sm leading-relaxed text-[#2b2415]">{text.fact}</p>

              {/* «Batafsil» — batafsil matn bo'lsa, SHU YERDA ochiladi.
                  Matn yozilmagan kartochkada eski xatti-harakat qoladi:
                  havola qahramon tarjimai holiga yoki davr lentasiga olib boradi. */}
              {text.detail ? (
                <div className="mt-3 border-t border-[#7a5f1c]/30 pt-1">
                  <FactDetail detailUz={text.detail} source={c.source} />
                </div>
              ) : (
                target && (
                  <div className="mt-3 flex justify-end border-t border-[#7a5f1c]/30 pt-1">
                    <FactLinkParchment target={target} />
                  </div>
                )
              )}
            </article>
          );
        })}
      </div>

      {visible.length === 0 && !error && !flashcards && (
        <Panel tone="hollow" className="p-8 text-center">
          <p className="text-sm text-dust">{t.empty}</p>
        </Panel>
      )}
    </div>
  );
}
