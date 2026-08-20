"use client";

import { useEffect, useState } from "react";
import { api, Era, QuizDifficulty, QuizQuestion } from "@/lib/api";
import { eraEmoji, formatYear } from "@/lib/eras";
import QuizRunner from "@/components/QuizRunner";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Badge from "@/components/ui/Badge";
import { CornerFrame } from "@/components/ui/Ornament";
import { useLang, useT } from "@/lib/lang";
import { countryQuery, useCountry } from "@/lib/country";
import { eraDescription, eraName } from "@/lib/content.ru";

const TXT = {
  ru: {
    difficulty: {
      EASY: {
        label: "Лёгкий",
        desc: "Без таймера — думай спокойно.",
        xp: "16–20 верных: +15 XP · 10–15: +5 XP",
      },
      MEDIUM: {
        label: "Средний",
        desc: "На всё даётся две минуты.",
        xp: "16–20 верных: +25 XP · 10–15: +15 XP",
      },
      HARD: {
        label: "Сложный",
        desc: "Всего одна минута — будь быстрым!",
        xp: "16–20 верных: +35 XP · 10–15: +20 XP",
      },
    },
    otherEra: "Другая эпоха",
    test: "Испытание",
    loadingQuestions: "Вопросы загружаются…",
    pickWeapon: "Выбери своё оружие",
    pickWeaponSubtitle:
      "Чем тяжелее уровень, тем больше XP. В каждом испытании 20 вопросов, ошибки разбираются в конце.",
    seconds: (n: number) => `${n} секунд`,
    noTimer: "Без таймера",
    overline: "Врата V",
    title: "Испытания",
    subtitle:
      "Выбери эпоху и оружие, проверь свои знания и набери XP. К каждой ошибке даётся пояснение.",
    offline: "Нет связи с сервером. Проверьте, запущен ли бэкенд.",
    startTest: "Начать испытание",
  },
  uz: {
    difficulty: {
      EASY: {
        label: "Oson",
        desc: "Taymersiz — bemalol o'ylab yech.",
        xp: "16–20 to'g'ri: +15 XP · 10–15: +5 XP",
      },
      MEDIUM: {
        label: "O'rta",
        desc: "Ikki daqiqa vaqt beriladi.",
        xp: "16–20 to'g'ri: +25 XP · 10–15: +15 XP",
      },
      HARD: {
        label: "Qiyin",
        desc: "Atigi bir daqiqa — chaqqon bo'l!",
        xp: "16–20 to'g'ri: +35 XP · 10–15: +20 XP",
      },
    },
    otherEra: "Boshqa davr",
    test: "Sinov",
    loadingQuestions: "Savollar yuklanmoqda…",
    pickWeapon: "Qurolingni tanla",
    pickWeaponSubtitle:
      "Daraja qanchalik og'ir bo'lsa, XP shuncha ko'p. Har bir sinov — 20 savol, xatolar oxirida tahlil qilinadi.",
    seconds: (n: number) => `${n} soniya`,
    noTimer: "Taymersiz",
    overline: "Darvoza V",
    title: "Sinovlar",
    subtitle:
      "Davrni va qurolingni tanla, bilimingni sinovdan o'tkaz va XP to'pla. Har bir xatoga izoh beriladi.",
    offline: "Server bilan aloqa yo'q. Backend ishga tushganini tekshiring.",
    startTest: "Sinovni boshlash",
  },
  uk: {
    difficulty: {
      EASY: {
        label: "Легкий",
        desc: "Без таймера — думай спокійно.",
        xp: "16–20 правильних: +15 XP · 10–15: +5 XP",
      },
      MEDIUM: {
        label: "Середній",
        desc: "На все дається дві хвилини.",
        xp: "16–20 правильних: +25 XP · 10–15: +15 XP",
      },
      HARD: {
        label: "Складний",
        desc: "Лише одна хвилина — будь швидким!",
        xp: "16–20 правильних: +35 XP · 10–15: +20 XP",
      },
    },
    otherEra: "Інша епоха",
    test: "Випробування",
    loadingQuestions: "Питання завантажуються…",
    pickWeapon: "Обери свою зброю",
    pickWeaponSubtitle:
      "Що важчий рівень, то більше XP. У кожному випробуванні 20 питань, помилки розбираються наприкінці.",
    seconds: (n: number) => `${n} секунд`,
    noTimer: "Без таймера",
    overline: "Брама V",
    title: "Випробування",
    subtitle:
      "Обери епоху і зброю, перевір свої знання та набери XP. До кожної помилки дається пояснення.",
    offline: "Немає зв'язку із сервером. Перевірте, чи запущено бекенд.",
    startTest: "Почати випробування",
  },
};


type DifficultyOption = {
  code: QuizDifficulty;
  blade: "dagger" | "sword" | "sabre";
  timer?: number;
  accentText: string;
  accentBorder: string;
  glow: string;
};

/** Qiyinlik — uch xil qurol: xanjar, qilich, qilich-sabya. Yozuvlar TXT da. */
const DIFFICULTIES: DifficultyOption[] = [
  {
    code: "EASY",
    blade: "dagger",
    timer: undefined,
    accentText: "text-feruza-bright",
    accentBorder: "hover:border-feruza/70",
    glow: "rgba(79,199,194,0.30)",
  },
  {
    code: "MEDIUM",
    blade: "sword",
    timer: 120,
    accentText: "text-zar",
    accentBorder: "hover:border-zar/70",
    glow: "rgba(200,162,71,0.35)",
  },
  {
    code: "HARD",
    blade: "sabre",
    timer: 60,
    accentText: "text-[#e0a094]",
    accentBorder: "hover:border-qon/80",
    glow: "rgba(155,46,34,0.40)",
  },
];

/** Qurol siluetlari — qiyinlik darajasi belgisi. */
function Blade({ kind, className = "" }: { kind: DifficultyOption["blade"]; className?: string }) {
  const common = {
    fill: "none" as const,
    stroke: "currentColor",
    strokeWidth: 1.4,
    strokeLinecap: "round" as const,
    strokeLinejoin: "round" as const,
  };
  return (
    <svg aria-hidden viewBox="0 0 64 64" className={className}>
      {kind === "dagger" && (
        <g {...common}>
          <path d="M32 8 L37 26 L32 44 L27 26 Z" />
          <path d="M20 46 H44" />
          <path d="M32 46 V56" />
          <circle cx="32" cy="58" r="2.6" />
        </g>
      )}
      {kind === "sword" && (
        <g {...common}>
          <path d="M32 4 L36 22 L36 42 L28 42 L28 22 Z" />
          <path d="M16 46 H48" />
          <path d="M20 46 l-3 4 M44 46 l3 4" strokeOpacity="0.6" />
          <path d="M32 46 V57" />
          <path d="M27 60 h10" />
        </g>
      )}
      {kind === "sabre" && (
        <g {...common}>
          <path d="M12 52 C22 40 34 22 46 8 C50 14 50 24 44 32 C36 42 24 50 14 56 Z" />
          <path d="M12 52 L8 58" />
          <path d="M8 46 C4 50 4 56 8 58" strokeOpacity="0.7" />
        </g>
      )}
    </svg>
  );
}

export default function TestsPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  const [eras, setEras] = useState<Era[]>([]);
  const [selected, setSelected] = useState<Era | null>(null);
  const [difficulty, setDifficulty] = useState<DifficultyOption | null>(null);
  const [questions, setQuestions] = useState<QuizQuestion[] | null>(null);
  const [error, setError] = useState(false);

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
      .catch(keep(() => setError(true)));
    return () => {
      live = false;
    };
  }, [country]);

  function reset() {
    setSelected(null);
    setDifficulty(null);
    setQuestions(null);
  }

  async function startTest(era: Era, level: DifficultyOption) {
    setDifficulty(level);
    setQuestions(null);
    try {
      const qs = await api<QuizQuestion[]>(`/api/quiz/era/${era.code}`);
      setQuestions(qs);
    } catch {
      setError(true);
    }
  }

  const backLink = (
    <button
      onClick={reset}
      className="inline-flex items-center gap-2 font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-dust transition-colors hover:text-zar"
    >
      <span aria-hidden>←</span> {t.otherEra}
    </button>
  );

  // 3-bosqich: sinov
  if (selected && difficulty) {
    return (
      <div className="space-y-6">
        {backLink}
        <div>
          <p className="flex items-center gap-2 font-display text-[10px] font-semibold uppercase tracking-[0.3em] text-zar/90">
            {eraEmoji(selected.code)} {eraName(selected, lang)}
          </p>
          <h1 className="mt-3 font-display text-2xl font-bold uppercase tracking-[0.06em] text-marble sm:text-3xl">
            {t.test} · {t.difficulty[difficulty.code].label}
          </h1>
        </div>
        <Panel corners girih className="p-6 sm:p-8">
          {questions === null ? (
            <p className="py-10 text-center font-display text-sm uppercase tracking-[0.3em] text-dust">
              {t.loadingQuestions}
            </p>
          ) : (
            <QuizRunner
              key={`${selected.code}-${difficulty.code}`}
              questions={questions}
              scope={`era:${selected.code}`}
              difficulty={difficulty.code}
              timerSeconds={difficulty.timer}
            />
          )}
        </Panel>
      </div>
    );
  }

  // 2-bosqich: qurolni tanlash
  if (selected) {
    return (
      <div className="space-y-10">
        {backLink}
        <SectionTitle
          overline={`${eraEmoji(selected.code)} ${eraName(selected, lang)}`}
          title={t.pickWeapon}
          subtitle={t.pickWeaponSubtitle}
        />
        <div className="grid gap-5 sm:grid-cols-3">
          {DIFFICULTIES.map((d, i) => (
            <button
              key={d.code}
              onClick={() => startTest(selected, d)}
              className="tt-reveal group block text-left"
              style={{ animationDelay: `${i * 90}ms` }}
            >
              <article
                className={`tt-steel-surface tt-sweep relative flex h-full flex-col items-center overflow-hidden rounded-lg border border-zar/25 p-7 text-center transition-all duration-500 ease-tt group-hover:-translate-y-1.5 ${d.accentBorder}`}
                style={{ boxShadow: "var(--tt-shadow-niche), var(--tt-inset-gleam)" }}
              >
                <CornerFrame />
                <span
                  aria-hidden
                  className="pointer-events-none absolute -bottom-20 left-1/2 h-40 w-40 -translate-x-1/2 rounded-full opacity-0 blur-3xl transition-opacity duration-700 group-hover:opacity-100"
                  style={{ background: d.glow }}
                />
                <span
                  className={`relative transition-transform duration-500 ease-tt group-hover:scale-110 ${d.accentText}`}
                >
                  <Blade kind={d.blade} className="h-16 w-16" />
                </span>
                <h2 className="relative mt-4 font-display text-lg font-bold uppercase tracking-[0.1em] text-marble">
                  {t.difficulty[d.code].label}
                </h2>
                <p className="relative mt-2 text-sm leading-relaxed text-dust">
                  {t.difficulty[d.code].desc}
                </p>
                <Badge tone="dust" className="relative mt-5">
                  {d.timer ? t.seconds(d.timer) : t.noTimer}
                </Badge>
                <p className="relative mt-4 text-[11px] leading-relaxed text-dust/85">
                  {t.difficulty[d.code].xp}
                </p>
              </article>
            </button>
          ))}
        </div>
      </div>
    );
  }

  // 1-bosqich: davr tanlash
  return (
    <div className="space-y-12">
      <SectionTitle overline={t.overline} title={t.title} subtitle={t.subtitle} />

      {error && (
        <Panel tone="hollow" className="p-5 text-center">
          <p className="text-sm text-[#e8a99f]">{t.offline}</p>
        </Panel>
      )}

      <div className="grid gap-5 sm:grid-cols-2">
        {eras.map((era, i) => (
          <button
            key={era.code}
            onClick={() => setSelected(era)}
            className="tt-reveal group block text-left"
            style={{ animationDelay: `${i * 70}ms` }}
          >
            <Panel className="h-full p-6 transition-all duration-500 ease-tt group-hover:-translate-y-1 group-hover:border-zar/50">
              <CornerFrame />
              <div className="flex items-start gap-4">
                <span aria-hidden className="text-3xl transition-transform duration-500 group-hover:scale-110">
                  {eraEmoji(era.code)}
                </span>
                <div className="flex-1">
                  <p className="font-display text-[10px] font-semibold uppercase tracking-[0.22em] text-zar/90">
                    {formatYear(era.yearFrom, lang)} — {formatYear(era.yearTo, lang)}
                  </p>
                  <h2 className="mt-1.5 font-display text-base font-bold uppercase leading-snug tracking-[0.05em] text-marble">
                    {eraName(era, lang)}
                  </h2>
                  <p className="mt-2 text-sm leading-relaxed text-dust">{eraDescription(era, lang)}</p>
                  <span className="mt-4 flex items-center gap-2 text-[11px] font-semibold uppercase tracking-[0.24em] text-zar opacity-60 transition-all duration-500 ease-tt group-hover:gap-3.5 group-hover:opacity-100">
                    {t.startTest}
                    <span aria-hidden className="text-base leading-none">
                      →
                    </span>
                  </span>
                </div>
              </div>
            </Panel>
          </button>
        ))}
      </div>
    </div>
  );
}
