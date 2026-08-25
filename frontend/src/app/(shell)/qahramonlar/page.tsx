"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";
import { heroYears } from "@/lib/eras";
import { api, Era, Hero } from "@/lib/api";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Badge from "@/components/ui/Badge";
import FilterChip from "@/components/ui/FilterChip";
import HeroMedallion, { MedallionAccent, portraitAlt, PortraitCaption } from "@/components/ui/HeroMedallion";
import { CornerFrame } from "@/components/ui/Ornament";
import { Lang, useLang, useT } from "@/lib/lang";
import { COUNTRY_EMPTY, countryQuery, useCountry } from "@/lib/country";
import { heroCard, portraitCaption } from "@/lib/heroes.ru";
import { eraName } from "@/lib/content.ru";

const TXT = {
  ru: {
    overline: "Врата I",
    title: "Зал предков",
    subtitle:
      "Выбери предка и задай ему вопрос. Он отвечает только на основе карточек фактов, проверенных методистом-историком, — а если ответа в карточке нет, скажет об этом прямо.",
    all: "Все",
    searchPlaceholder: "Искать предка по имени…",
    searchAria: "Поиск предка",
    offline: "Нет связи с сервером. Проверьте, запущен ли бэкенд.",
    empty: "Никого не нашлось. Измени фильтр или поисковый запрос.",
    startChat: "Начать беседу",
    greatSection: "Великие предки",
    allSection: "Все предки",
    greatBadge: "Великий",
    sortAria: "Порядок списка",
    sortFame: "По известности",
    sortEra: "По эпохе",
    sortAlpha: "По алфавиту",
    showMore: "Показать ещё",
    ruleTitle: "Правило достоверности.",
    ruleA: "Предок не знает событий, случившихся после его смерти; если ответа в карточке нет, он отвечает",
    ruleQuote1: "«Об этом история молчит»",
    ruleB: ", а на вопрос не по теме говорит",
    ruleQuote2: "«Пожалуйста, спроси обо мне»",
    ruleEnd: ".",
  },
  uz: {
    overline: "Darvoza I",
    title: "Ajdodlar zali",
    subtitle:
      "Ajdodni tanla va unga savol ber. U faqat tarixchi-metodist tasdiqlagan fakt kartochkalari asosida javob beradi — kartochkada javob bo'lmasa, buni ochiq aytadi.",
    all: "Barchasi",
    searchPlaceholder: "Ajdodni ismi bo'yicha qidir…",
    searchAria: "Ajdodni qidirish",
    offline: "Server bilan aloqa yo'q. Backend ishga tushganini tekshiring.",
    empty: "Hech kim topilmadi. Filtrni yoki qidiruv so'zini o'zgartirib ko'r.",
    startChat: "Suhbatni boshlash",
    greatSection: "Buyuk ajdodlar",
    allSection: "Barcha ajdodlar",
    greatBadge: "Buyuk",
    sortAria: "Ro'yxat tartibi",
    sortFame: "Mashhurlik bo'yicha",
    sortEra: "Davr bo'yicha",
    sortAlpha: "Alifbo bo'yicha",
    showMore: "Ko'proq ko'rsatish",
    ruleTitle: "Ishonchlilik qoidasi.",
    ruleA: "Ajdod o'z vafot yilidan keyingi voqealarni bilmaydi, kartochkada javob bo'lmasa",
    ruleQuote1: "«Bu haqda tarix sukut saqlaydi»",
    ruleB: "deb javob beradi, mavzudan tashqari savolga esa",
    ruleQuote2: "«Iltimos, men haqimda savol ber»",
    ruleEnd: "deydi.",
  },
  uk: {
    overline: "Брама I",
    title: "Зала предків",
    subtitle:
      "Обери предка і постав йому питання. Він відповідає лише на основі карток фактів, перевірених методистом-істориком, — а якщо відповіді в картці немає, скаже про це прямо.",
    all: "Усі",
    searchPlaceholder: "Шукати предка за іменем…",
    searchAria: "Пошук предка",
    offline: "Немає зв'язку із сервером. Перевірте, чи запущено бекенд.",
    empty: "Нікого не знайдено. Зміни фільтр або пошуковий запит.",
    startChat: "Почати бесіду",
    greatSection: "Великі предки",
    allSection: "Усі предки",
    greatBadge: "Великий",
    sortAria: "Порядок списку",
    sortFame: "За відомістю",
    sortEra: "За епохою",
    sortAlpha: "За алфавітом",
    showMore: "Показати ще",
    ruleTitle: "Правило достовірності.",
    ruleA: "Предок не знає подій, що сталися після його смерті; якщо відповіді в картці немає, він відповідає",
    ruleQuote1: "«Про це історія мовчить»",
    ruleB: ", а на питання не по темі каже",
    ruleQuote2: "«Будь ласка, запитай про мене»",
    ruleEnd: ".",
  },
};

const ACCENT_TEXT: Record<MedallionAccent, string> = {
  zar: "text-zar",
  feruza: "text-feruza-bright",
  nil: "text-[#9fb8e0]",
  qon: "text-[#e0a094]",
};

const ACCENT_BORDER: Record<MedallionAccent, string> = {
  zar: "group-hover:border-zar/70",
  feruza: "group-hover:border-feruza/70",
  nil: "group-hover:border-nil/80",
  qon: "group-hover:border-qon/70",
};

/**
 * Medalyon rangi bazadan keladi (V102). Ilgari bu jadval shu yerda va
 * suhbat sahifasida so'zma-so'z takrorlanardi.
 */
function accentOf(hero: { accent: MedallionAccent | null }): MedallionAccent {
  return hero.accent ?? "zar";
}

/**
 * Ro'yxat tartibi (V311). «Mashhurlik» — server bergan buyuklik tartibi
 * (S→C, ball, alifbo); «davr» — tug'ilgan yil bo'yicha xronologiya;
 * «alifbo» — ko'rsatilayotgan ism bo'yicha.
 */
type SortMode = "fame" | "davr" | "alifbo";

/** Bir bosishda shuncha karta qo'shiladi — 120 ta kartani birdan chizmaymiz. */
const TAIL_PAGE = 24;

export default function HeroesPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  const [heroes, setHeroes] = useState<Hero[]>([]);
  const [eras, setEras] = useState<Era[]>([]);
  const [error, setError] = useState(false);
  /* Zal katta bo'lib ketdi (120+ ajdod) — davr filtri va qidiruvsiz kerakli
     ajdodni topish qiyin. null — barcha davrlar. */
  const [eraFilter, setEraFilter] = useState<number | null>(null);
  const [query, setQuery] = useState("");
  const [sortMode, setSortMode] = useState<SortMode>("fame");
  const [tailCount, setTailCount] = useState(TAIL_PAGE);

  // Filtr/tartib almashganda sahifalash boshidan — eski «dum» qolib ketmasin
  useEffect(() => {
    setTailCount(TAIL_PAGE);
  }, [eraFilter, query, sortMode, country]);

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
    // Davrlar paneli yiqilsa ham zal ishlayveradi — filtrlar shunchaki chiqmaydi
    api<Era[]>(`/api/eras${countryQuery(country)}`)
      .then(keep(setEras))
      .catch(keep(() => setEras([])));
    return () => {
      live = false;
    };
  }, [country]);

  const visible = useMemo(() => {
    const q = query.trim().toLowerCase();
    const filtered = heroes.filter((h) => {
      if (eraFilter !== null && h.eraId !== eraFilter) return false;
      const card = heroCard(h, lang);
      if (q && !`${h.nameUz} ${h.titleUz} ${card.name} ${card.title}`.toLowerCase().includes(q))
        return false;
      return true;
    });
    // «Mashhurlik» — server tartibi o'zi; qolgan ikkitasi shu yerda saralanadi.
    if (sortMode === "davr") {
      return [...filtered].sort((a, b) => {
        const ay = a.birthYear ?? a.deathYear ?? 99_999;
        const by = b.birthYear ?? b.deathYear ?? 99_999;
        if (ay !== by) return ay - by;
        return heroCard(a, lang).name.localeCompare(heroCard(b, lang).name);
      });
    }
    if (sortMode === "alifbo") {
      return [...filtered].sort((a, b) =>
        heroCard(a, lang).name.localeCompare(heroCard(b, lang).name),
      );
    }
    return filtered;
  }, [heroes, eraFilter, query, lang, sortMode]);

  /* «Buyuk ajdodlar» bo'limi faqat asosiy ko'rinishda: filtr yo qidiruv
     yoqilganda bola aynan nimanidir izlayapti — bo'laklamay, bitta ro'yxat. */
  const sectioned = sortMode === "fame" && eraFilter === null && query.trim() === "";
  const great = sectioned ? visible.filter((h) => h.fameTier === "S") : [];
  const rest = sectioned ? visible.filter((h) => h.fameTier !== "S") : visible;
  const restShown = rest.slice(0, tailCount);

  return (
    <div className="space-y-14">
      <SectionTitle overline={t.overline} title={t.title} subtitle={t.subtitle} />

      {/* ================== Davr filtri va qidiruv ================== */}
      <div className="space-y-4">
        <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:flex-wrap sm:px-0">
          <FilterChip active={eraFilter === null} onClick={() => setEraFilter(null)}>
            {t.all}
          </FilterChip>
          {eras.map((e) => (
            <FilterChip
              key={e.id}
              active={eraFilter === e.id}
              onClick={() => setEraFilter(eraFilter === e.id ? null : e.id)}
            >
              {eraName(e, lang)}
            </FilterChip>
          ))}
        </div>
        <input
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder={t.searchPlaceholder}
          aria-label={t.searchAria}
          className="w-full max-w-md rounded-md border border-zar/25 bg-steel/70 px-4 py-2.5 text-sm text-parchment outline-none transition-colors placeholder:text-dust/60 focus:border-zar/70"
        />
        <div role="group" aria-label={t.sortAria} className="flex flex-wrap gap-2">
          {(
            [
              ["fame", t.sortFame],
              ["davr", t.sortEra],
              ["alifbo", t.sortAlpha],
            ] as const
          ).map(([mode, label]) => (
            <FilterChip key={mode} active={sortMode === mode} onClick={() => setSortMode(mode)}>
              {label}
            </FilterChip>
          ))}
        </div>
      </div>

      {error && (
        <Panel tone="hollow" className="p-6 text-center">
          <p className="text-sm text-[#e8a99f]">{t.offline}</p>
        </Panel>
      )}

      {/* Tanlangan tarix hali bo'sh — bu xato emas, buni aytib qo'yamiz */}
      {!error && heroes.length === 0 && (
        <Panel tone="hollow" className="p-8 text-center">
          <p className="font-display text-sm uppercase tracking-[0.2em] text-marble">
            {COUNTRY_EMPTY[lang].title}
          </p>
          <p className="mx-auto mt-3 max-w-md text-sm leading-relaxed text-dust">
            {COUNTRY_EMPTY[lang].hint}
          </p>
        </Panel>
      )}

      {/* Filtr hech narsa qoldirmasa — jim qolmaymiz */}
      {!error && visible.length === 0 && heroes.length > 0 && (
        <Panel tone="hollow" className="p-6 text-center">
          <p className="text-sm text-dust">{t.empty}</p>
        </Panel>
      )}

      {/* ============ Buyuk ajdodlar (S) — kattaroq kartalar ============ */}
      {sectioned && great.length > 0 && (
        <section className="space-y-6">
          <h2 className="font-display text-sm font-semibold uppercase tracking-[0.3em] text-zar/90">
            {t.greatSection}
          </h2>
          <div className="grid gap-6 md:grid-cols-2">
            {great.map((h, i) => (
              <HeroCard key={h.slug} hero={h} index={i} lang={lang}
                startChat={t.startChat} greatBadge={t.greatBadge} />
            ))}
          </div>
        </section>
      )}

      {/* ============ Barcha ajdodlar (yoki filtr natijasi) ============ */}
      <section className="space-y-6">
        {sectioned && restShown.length > 0 && (
          <h2 className="font-display text-sm font-semibold uppercase tracking-[0.3em] text-dust">
            {t.allSection}
          </h2>
        )}
        <div className="grid gap-6 md:grid-cols-3">
          {restShown.map((h, i) => (
            <HeroCard key={h.slug} hero={h} index={i} lang={lang}
              startChat={t.startChat} greatBadge={t.greatBadge} />
          ))}
        </div>
        {rest.length > tailCount && (
          <div className="text-center">
            <button
              onClick={() => setTailCount((n) => n + TAIL_PAGE)}
              className="rounded-md border border-zar/40 px-6 py-2.5 font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-zar transition-colors hover:border-zar/80 hover:text-zar-bright"
            >
              {t.showMore} · {rest.length - tailCount}
            </button>
          </div>
        )}
      </section>

      <Panel tone="hollow" className="p-6">
        <div className="flex flex-col gap-4 sm:flex-row sm:items-center">
          <span aria-hidden className="text-zar">
            <svg viewBox="0 0 48 48" className="h-9 w-9" fill="none" stroke="currentColor" strokeWidth="1.3">
              <path d="M24 4 L42 11 v13 c0 11-9 18-18 20 C15 42 6 35 6 24 V11 Z" />
              <path d="M24 17 v10 M24 32 v.5" strokeOpacity="0.8" />
            </svg>
          </span>
          <p className="text-sm leading-relaxed text-dust">
            <span className="font-semibold text-marble">{t.ruleTitle}</span> {t.ruleA}{" "}
            <span className="text-zar/90">{t.ruleQuote1}</span> {t.ruleB}{" "}
            <span className="text-zar/90">{t.ruleQuote2}</span> {t.ruleEnd}
          </p>
        </div>
      </Panel>
    </div>
  );
}

/**
 * Zaldagi bitta karta. Ilgari JSX ro'yxat ichida yotardi; endi ikki bo'lim
 * («Buyuk» va «Barcha») bir xil kartani ishlatadi. S darajali ajdodda
 * «Buyuk» belgisi turadi — bola nega bu ajdod tepada ekanini ko'radi.
 */
function HeroCard({
  hero: h,
  index: i,
  lang,
  startChat,
  greatBadge,
}: {
  hero: Hero;
  index: number;
  lang: Lang;
  startChat: string;
  greatBadge: string;
}) {
  const accent = accentOf(h);
  const card = heroCard(h, lang);
  return (
    <Link
      href={`/qahramonlar/${h.slug}`}
      className="tt-reveal group block"
      /* Kechikish chegaralangan: 60+ kartada oxirgilari 7 soniya kutib
         qolardi. Birinchi qator "to'lqin" bo'lib chiqadi, qolganlari darhol. */
      style={{ animationDelay: `${Math.min(i * 110, 880)}ms` }}
    >
      <article
        className={`tt-steel-surface tt-sweep relative flex h-full flex-col items-center overflow-hidden rounded-lg border border-zar/25 px-6 pb-7 pt-10 text-center transition-all duration-500 ease-tt group-hover:-translate-y-1.5 ${ACCENT_BORDER[accent]}`}
        style={{ boxShadow: "var(--tt-shadow-niche), var(--tt-inset-gleam)" }}
      >
        <CornerFrame />

        {h.fameTier === "S" && (
          <span className="absolute right-4 top-4 z-10 rounded-sm border border-zar/50 bg-zar/15 px-2 py-0.5 font-display text-[10px] font-semibold uppercase tracking-[0.22em] text-zar-bright">
            {greatBadge}
          </span>
        )}

        {/* Tosh nisha — portret ravog'i */}
        <svg
          aria-hidden
          viewBox="0 0 200 260"
          preserveAspectRatio="xMidYMin meet"
          className={`pointer-events-none absolute left-1/2 top-4 h-56 w-56 -translate-x-1/2 opacity-20 transition-opacity duration-700 group-hover:opacity-40 ${ACCENT_TEXT[accent]}`}
          fill="none"
          stroke="currentColor"
          strokeWidth="1.6"
        >
          <path d="M28 260 V104 A72 72 0 0 1 172 104 V260" />
          <path d="M48 260 V108 A52 52 0 0 1 152 108 V260" strokeOpacity="0.55" />
          <path d="M100 30 v-16 M88 20 h24" strokeOpacity="0.6" />
        </svg>

        <div className="relative z-10 flex flex-1 flex-col items-center">
          <HeroMedallion
            emoji={h.portraitEmoji}
            portraitUrl={h.portraitUrl}
            alt={portraitAlt(card.name, h.portraitKind, lang)}
            size="lg"
            accent={accent}
            className="transition-transform duration-500 ease-tt group-hover:scale-105"
          />
          <PortraitCaption
            kind={h.portraitKind}
            caption={portraitCaption(h, lang)}
            className="mt-3"
          />

          <h2 className="mt-6 font-display text-xl font-bold uppercase tracking-[0.08em] text-marble">
            {card.name}
          </h2>
          <p
            className={`mt-1.5 font-quote text-lg italic leading-snug ${ACCENT_TEXT[accent]}`}
          >
            {card.title}
          </p>

          {heroYears(h.birthYear, h.deathYear, lang) && (
            <Badge tone="dust" className="mt-4">
              {heroYears(h.birthYear, h.deathYear, lang)}
            </Badge>
          )}

          <p className="mt-5 text-sm leading-relaxed text-dust">{card.bio}</p>

          <span
            className={`mt-auto flex items-center gap-2 pt-7 text-[11px] font-semibold uppercase tracking-[0.28em] opacity-60 transition-all duration-500 ease-tt group-hover:gap-3.5 group-hover:opacity-100 ${ACCENT_TEXT[accent]}`}
          >
            {startChat}
            <span aria-hidden className="text-base leading-none">
              →
            </span>
          </span>
        </div>
      </article>
    </Link>
  );
}
