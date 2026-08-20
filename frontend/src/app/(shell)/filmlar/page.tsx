"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  api,
  Era,
  Film,
  FilmWatchState,
  QuizQuestion,
  WatchResult,
  getClientId,
  tellMascot,
} from "@/lib/api";
import { eraEmoji } from "@/lib/eras";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Badge from "@/components/ui/Badge";
import FilmPoster from "@/components/ui/FilmPoster";
import Button, { ButtonLink } from "@/components/ui/Button";
import FilterChip from "@/components/ui/FilterChip";
import { Star } from "@/components/ui/Ornament";
import Toast from "@/components/ui/Toast";
import VideoModal from "@/components/ui/VideoModal";
import FilmQuiz from "@/components/FilmQuiz";
import { authorOf, isExternal, parseVideo, VideoSource } from "@/lib/video";
import { Lang, pick, useLang, useT } from "@/lib/lang";
import { countryQuery, useCountry } from "@/lib/country";
import { eraName, filmCard } from "@/lib/content.ru";

const TXT = {
  ru: {
    kind: { SHORT: "Ролик", DOC: "Документальный", FEATURE: "Полный метр" },
    pipeline: {
      PLANNED: { label: "В плане", note: "Тема выбрана, карточки фактов собираются." },
      SCRIPT: { label: "Сценарий", note: "На основе карточек написана короткая история." },
      IN_REVIEW: { label: "На проверке", note: "Методист-историк читает сценарий." },
      PUBLISHED: { label: "Опубликовано", note: "Анимация готова, можно смотреть в кинозале." },
    },
    externalNote: "Видео прикреплено (внешний канал). Собственная анимация готовится во 2-й фазе.",
    overline: "Врата IV",
    title: "Кинозал",
    subtitle:
      "Исторические ролики и документальные фильмы по эпохам. Каждый сценарий рождается из проверенной карточки факта и проходит проверку методиста-историка.",
    offline: "Нет связи с сервером. Проверьте, запущен ли бэкенд.",
    buildingTitle: "Кинозал строится.",
    buildingText: (n: number) =>
      `Ниже — производственный план ${n} серий. Анимация готовится во 2-й фазе концепции, поэтому пока ни одна серия не опубликована: на каждой афише указан её настоящий этап.`,
    all: "Все",
    minutes: (n: number) => `${n} мин.`,
    minutesShort: (n: number) => `${n} мин.`,
    watched: "✓ Просмотрено",
    watchAria: (title: string) => `${title} — смотреть видео`,
    author: "Автор",
    externalChannel: " · Внешний канал, не наша анимация.",
    videoLangNote: "Звук видео — на узбекском языке.",
    watch: "Смотреть",
    quizPrompt: "Ты досмотрел фильм до конца — теперь проверь, что запомнил!",
    quizLoading: "Вопросы загружаются…",
    quizStart: "Проверь свои знания",
    pipelineTitle: "Этап производства",
    video: "Видео",
    script: "Сценарий",
    filmQuiz: "Тест по фильму",
    noFilms: "Для этой эпохи серии пока не запланированы. Выбери другую эпоху.",
    whyTitle: "Почему это не просто мультфильм",
    whyText:
      "Искусственный интеллект создаёт форму — за правду отвечают люди. Каждая серия начинается с проверенной карточки факта, сценарий прочитывает методист-историк, и только после этого готовится анимация. На каждой афише указан документ, на который опирается сценарий.",
    toFacts: "Карточки фактов",
    toHeroes: "Поговорить с предками",
    watchXp: (xp: number) => `+${xp} XP за полный просмотр фильма!`,
    watchXpMascot: "+30 XP за то, что досмотрел фильм до конца! Теперь проверь свои знания!",
  },
  uz: {
    kind: { SHORT: "Short", DOC: "Hujjatli", FEATURE: "To'liq metraj" },
    pipeline: {
      PLANNED: { label: "Rejada", note: "Mavzu tanlandi, fakt kartochkalari yig'ilmoqda." },
      SCRIPT: { label: "Stsenariy", note: "Kartochkalar asosida qisqa hikoya yozildi." },
      IN_REVIEW: { label: "Tekshiruvda", note: "Metodist-tarixchi stsenariyni o'qimoqda." },
      PUBLISHED: { label: "Nashr etildi", note: "Animatsiya tayyor, kinozalda ko'rish mumkin." },
    },
    externalNote: "Video biriktirildi (tashqi kanal). O'z animatsiyamiz 2-fazada tayyorlanadi.",
    overline: "Darvoza IV",
    title: "Kinozal",
    subtitle:
      "Tarixiy shortlar va hujjatli filmlar davrlar bo'yicha. Har bir stsenariy tasdiqlangan fakt kartochkasidan tug'iladi va metodist-tarixchi tekshiruvidan o'tadi.",
    offline: "Server bilan aloqa yo'q. Backend ishga tushganini tekshiring.",
    buildingTitle: "Kinozal qurilmoqda.",
    buildingText: (n: number) =>
      `Quyida — ${n} ta seriyaning ishlab chiqarish rejasi. Animatsiya kontseptsiyaning 2-fazasida tayyorlanadi, shuning uchun hozircha birorta seriya nashr etilmagan: har bir afishada uning haqiqiy bosqichi ko'rsatilgan.`,
    all: "Barchasi",
    minutes: (n: number) => `${n} daqiqa`,
    minutesShort: (n: number) => `${n} daq.`,
    watched: "✓ Ko'rilgan",
    watchAria: (title: string) => `${title} — videoni ko'rish`,
    author: "Muallif",
    externalChannel: " · Tashqi kanal, o'z animatsiyamiz emas.",
    /** O'zbek foydalanuvchiga video o'zbekcha ekanini aytish shart emas. */
    videoLangNote: "",
    watch: "Ko'rish",
    quizPrompt: "Filmni to'liq ko'rding — endi nimalarni eslab qolganingni tekshir!",
    quizLoading: "Savollar yuklanmoqda…",
    quizStart: "Bilimingni sinab ko'r",
    pipelineTitle: "Ishlab chiqarish bosqichi",
    video: "Video",
    script: "Stsenariy",
    filmQuiz: "Film testi",
    noFilms: "Bu davr uchun seriya hali rejalashtirilmagan. Boshqa davrni tanlab ko'r.",
    whyTitle: "Nega bu shunchaki multfilm emas",
    whyText:
      "Sun'iy intellekt shaklni yaratadi — haqiqat uchun odamlar javob beradi. Har bir seriya tasdiqlangan fakt kartochkasidan boshlanadi, stsenariyni metodist-tarixchi o'qib chiqadi va faqat shundan keyin animatsiya tayyorlanadi. Har bir afishada stsenariy tayangan hujjat ko'rsatilgan.",
    toFacts: "Fakt kartochkalari",
    toHeroes: "Ajdodlar bilan gaplash",
    watchXp: (xp: number) => `Filmni to'liq ko'rganing uchun +${xp} XP!`,
    watchXpMascot: "Filmni to'liq ko'rganing uchun +30 XP! Endi bilimingni sinab ko'r!",
  },
  uk: {
    kind: { SHORT: "Ролик", DOC: "Документальний", FEATURE: "Повний метр" },
    pipeline: {
      PLANNED: { label: "У плані", note: "Тему обрано, картки фактів збираються." },
      SCRIPT: { label: "Сценарій", note: "На основі карток написано коротку історію." },
      IN_REVIEW: { label: "На перевірці", note: "Методист-історик читає сценарій." },
      PUBLISHED: { label: "Опубліковано", note: "Анімація готова, можна дивитися в кінозалі." },
    },
    externalNote: "Відео прикріплено (зовнішній канал). Власна анімація готується у 2-й фазі.",
    overline: "Брама IV",
    title: "Кінозал",
    subtitle:
      "Історичні ролики та документальні фільми за епохами. Кожен сценарій народжується з перевіреної картки факту і проходить перевірку методиста-історика.",
    offline: "Немає зв'язку із сервером. Перевірте, чи запущено бекенд.",
    buildingTitle: "Кінозал будується.",
    buildingText: (n: number) =>
      `Нижче — виробничий план ${n} серій. Анімація готується у 2-й фазі концепції, тому поки жодну серію не опубліковано: на кожній афіші вказано її справжній етап.`,
    all: "Усі",
    minutes: (n: number) => `${n} хв.`,
    minutesShort: (n: number) => `${n} хв.`,
    watched: "✓ Переглянуто",
    watchAria: (title: string) => `${title} — дивитися відео`,
    author: "Автор",
    externalChannel: " · Зовнішній канал, не наша анімація.",
    videoLangNote: "Звук відео — узбецькою мовою.",
    watch: "Дивитися",
    quizPrompt: "Ти додивився фільм до кінця — тепер перевір, що запам'ятав!",
    quizLoading: "Питання завантажуються…",
    quizStart: "Перевір свої знання",
    pipelineTitle: "Етап виробництва",
    video: "Відео",
    script: "Сценарій",
    filmQuiz: "Тест по фільму",
    noFilms: "Для цієї епохи серії поки не заплановано. Обери іншу епоху.",
    whyTitle: "Чому це не просто мультфільм",
    whyText:
      "Штучний інтелект створює форму — за правду відповідають люди. Кожна серія починається з перевіреної картки факту, сценарій прочитує методист-історик, і лише після цього готується анімація. На кожній афіші вказано документ, на який спирається сценарій.",
    toFacts: "Картки фактів",
    toHeroes: "Поговорити з предками",
    watchXp: (xp: number) => `+${xp} XP за повний перегляд фільму!`,
    watchXpMascot: "+30 XP за те, що додивився фільм до кінця! Тепер перевір свої знання!",
  },
};

/** Konveyer bosqichlari tartibi — indeks bosqichni bildiradi, yozuv TXT dan. */
const PIPELINE_ORDER: Film["status"][] = ["PLANNED", "SCRIPT", "IN_REVIEW", "PUBLISHED"];

const STATUS_TONE: Record<Film["status"], "dust" | "nil" | "feruza" | "zar"> = {
  PLANNED: "dust",
  SCRIPT: "nil",
  IN_REVIEW: "feruza",
  PUBLISHED: "zar",
};

/**
 * 4-bosqich matni. HALOLLIK QOIDASI: tashqi video biriktirilgan bo'lsa,
 * «Animatsiya tayyor» deb yozish yolg'on bo'ladi — o'z animatsiyamizni biz hali
 * chizmadik. Shu sababli bunday kartochkada matn boshqacha.
 */
function pipelineNote(status: Film["status"], video: VideoSource | null, lang: Lang): string {
  const t = pick(TXT, lang);
  if (status !== "PUBLISHED" || !isExternal(video)) {
    return t.pipeline[status].note;
  }
  return t.externalNote;
}

export default function FilmlarPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  /* Tost va maskot matni `useCallback([])` ichida ishlatiladi — til almashsa
     ham qayta yaratilmasin, shuning uchun havola ref orqali beriladi. */
  const tRef = useRef(t);
  useEffect(() => {
    tRef.current = t;
  }, [t]);
  const [eras, setEras] = useState<Era[]>([]);
  const [films, setFilms] = useState<Film[]>([]);
  const [eraId, setEraId] = useState<number | null>(null);
  const [selectedId, setSelectedId] = useState<number | null>(null);
  /** Ochilgan video oynasi. null — iframe hali yaratilmagan (fasad). */
  const [playing, setPlaying] = useState<Film | null>(null);
  const [error, setError] = useState(false);
  /** Ko'rish hisobi: filmId → holat. Test tugmasi shu holatdan yonadi. */
  const [watches, setWatches] = useState<Record<number, FilmWatchState>>({});
  const [toast, setToast] = useState<string | null>(null);
  /** Ochilgan film testi: savollar serverdan har safar yangi (aralash) keladi. */
  const [quiz, setQuiz] = useState<{ filmId: number; questions: QuizQuestion[] } | null>(null);
  const [quizLoading, setQuizLoading] = useState(false);

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
    api<Film[]>(`/api/films${countryQuery(country)}`)
      .then(keep(setFilms))
      .catch(keep(() => setError(true)));
    api<FilmWatchState[]>(`/api/films/watches?clientId=${getClientId()}`)
      .then(
        keep<FilmWatchState[]>((list) =>
          setWatches(Object.fromEntries(list.map((w) => [w.filmId, w]))),
        ),
      )
      .catch(keep(() => {}));
    return () => {
      live = false;
    };
  }, [country]);

  /** Fasad bosildi: pleer ochiladi va halollik soati serverda yuradi. */
  const openPlayer = useCallback((film: Film) => {
    setPlaying(film);
    api(`/api/films/${film.id}/watch/start`, {
      method: "POST",
      body: JSON.stringify({ clientId: getClientId() }),
    }).catch(() => {});
  }, []);

  /** Pleer ENDED dedi — server vaqtni tekshirib, birinchi halol ko'rishga XP beradi. */
  const handleEnded = useCallback((film: Film) => {
    api<WatchResult>(`/api/films/${film.id}/watch/complete`, {
      method: "POST",
      body: JSON.stringify({ clientId: getClientId() }),
    })
      .then((res) => {
        if (res.completed) {
          setWatches((prev) => ({
            ...prev,
            [film.id]: {
              filmId: film.id,
              completedAt: prev[film.id]?.completedAt ?? new Date().toISOString(),
              watchXpAwarded: prev[film.id]?.watchXpAwarded || res.xpEarned > 0,
              quizXpAwarded: prev[film.id]?.quizXpAwarded ?? false,
            },
          }));
        }
        if (res.xpEarned > 0) {
          setToast(tRef.current.watchXp(res.xpEarned));
          tellMascot("celebrate", tRef.current.watchXpMascot);
          window.dispatchEvent(new CustomEvent("tirik-xp"));
        }
      })
      .catch(() => {});
  }, []);

  /** «Bilimingni sinab ko'r»: savollar film qahramoni/davri pulidan. */
  const startQuiz = useCallback((filmId: number) => {
    setQuizLoading(true);
    api<QuizQuestion[]>(`/api/quiz/film/${filmId}`)
      .then((questions) => setQuiz({ filmId, questions }))
      .catch(() => setQuiz(null))
      .finally(() => setQuizLoading(false));
  }, []);

  /** Afisha bosilganda tanlov almashadi; ochiq film testi ham yopiladi. */
  const selectFilm = useCallback((filmId: number | null) => {
    setSelectedId(filmId);
    setQuiz(null);
  }, []);

  const visible = useMemo(
    () => (eraId === null ? films : films.filter((f) => f.eraId === eraId)),
    [films, eraId]
  );
  const selected = films.find((f) => f.id === selectedId) ?? null;
  const selectedVideo = parseVideo(selected?.videoUrl);
  const playingVideo = parseVideo(playing?.videoUrl);
  const published = films.filter((f) => f.status === "PUBLISHED").length;
  const selectedCard = selected ? filmCard(selected, lang) : null;

  return (
    <div className="space-y-12">
      <SectionTitle overline={t.overline} title={t.title} subtitle={t.subtitle} />

      {error && (
        <Panel tone="hollow" className="p-5 text-center">
          <p className="text-sm text-[#e8a99f]">{t.offline}</p>
        </Panel>
      )}

      {/* Ochiq holat: hozircha nashr etilgan seriya yo'q */}
      {films.length > 0 && published === 0 && (
        <Panel tone="hollow" className="flex flex-col gap-4 p-6 sm:flex-row sm:items-center">
          <span aria-hidden className="text-zar">
            <svg viewBox="0 0 48 48" className="h-10 w-10" fill="none" stroke="currentColor" strokeWidth="1.3">
              <rect x="6" y="12" width="36" height="24" rx="2" />
              <path d="M14 12 v24 M34 12 v24" strokeOpacity="0.4" />
              <path d="M21 20 L29 24 L21 28 Z" />
            </svg>
          </span>
          <p className="text-sm leading-relaxed text-dust">
            <span className="font-semibold text-marble">{t.buildingTitle}</span>{" "}
            {t.buildingText(films.length)}
          </p>
        </Panel>
      )}

      {/* ======================= Davr bo'yicha filtr ======================= */}
      <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:px-0">
        <FilterChip active={eraId === null} onClick={() => setEraId(null)}>
          {t.all}
        </FilterChip>
        {eras.map((e) => (
          <FilterChip key={e.code} active={eraId === e.id} onClick={() => setEraId(e.id)}>
            {eraEmoji(e.code)} {eraName(e, lang)}
          </FilterChip>
        ))}
      </div>

      {/* ========================== Tanlangan seans ========================== */}
      {selected && (
        <Panel corners girih className="tt-rise p-6 sm:p-8">
          <div className="grid gap-7 sm:grid-cols-[13rem_1fr] sm:items-start">
            <div className="mx-auto w-40 sm:mx-0 sm:w-full">
              <FilmPoster film={selected} active />
            </div>

            <div>
              <div className="flex flex-wrap items-center gap-2">
                <Badge tone="zar">{t.kind[selected.kind]}</Badge>
                {selected.durationMinutes && (
                  <Badge tone="dust">{t.minutes(selected.durationMinutes)}</Badge>
                )}
                <Badge tone={STATUS_TONE[selected.status]}>
                  {t.pipeline[selected.status].label}
                </Badge>
                {watches[selected.id]?.completedAt && <Badge tone="feruza">{t.watched}</Badge>}
              </div>

              <h2 className="mt-4 font-display text-xl font-bold uppercase leading-tight tracking-[0.06em] text-marble sm:text-2xl">
                {selectedCard?.title}
              </h2>
              <p className="mt-3 text-sm leading-relaxed text-dust sm:text-base">
                {selectedCard?.synopsis}
              </p>

              {/*
                Video bor bo'lsa — yuqorida ko'rish bloki. Plyer bu yerda ham
                yuklanmaydi: faqat kadr va «Ko'rish» tugmasi (fasad naqshi).
                Konveyer holati pastda qoladi — bola qaysi bosqichda ekanini
                ko'rib turishi kerak.
              */}
              {selectedVideo && (
                <div className="mt-6 overflow-hidden rounded-md border border-zar/35 bg-obsidian/60">
                  {selectedVideo.kind === "YOUTUBE" && (
                    <button
                      onClick={() => openPlayer(selected)}
                      className="group relative block w-full"
                      aria-label={t.watchAria(selectedCard?.title ?? selected.titleUz)}
                    >
                      {/* eslint-disable-next-line @next/next/no-img-element -- tashqi CDN, next/image sozlanmagan */}
                      <img
                        src={selectedVideo.thumbnailUrl}
                        alt=""
                        loading="lazy"
                        decoding="async"
                        aria-hidden
                        className="aspect-video w-full object-cover opacity-80 transition-opacity duration-500 ease-tt group-hover:opacity-100"
                      />
                      <span
                        aria-hidden
                        className="absolute left-1/2 top-1/2 grid h-16 w-16 -translate-x-1/2 -translate-y-1/2 place-items-center rounded-full border border-zar/70 bg-obsidian/75 transition-transform duration-500 ease-tt group-hover:scale-110"
                      >
                        <svg viewBox="0 0 24 24" className="h-7 w-7" fill="#f3d98b">
                          <path d="M8 5.5 L19 12 L8 18.5 Z" />
                        </svg>
                      </span>
                    </button>
                  )}

                  <div className="flex flex-wrap items-center justify-between gap-3 px-4 py-3.5">
                    <div className="min-w-0">
                      <span className="rounded-sm border border-zar/50 px-2 py-0.5 font-display text-[9px] font-semibold uppercase tracking-[0.16em] text-zar-bright">
                        {selectedVideo.platformUz}
                      </span>
                      <p className="mt-2 text-xs leading-relaxed text-dust">
                        {t.author}: {authorOf(selected.source, selectedVideo)}
                        {isExternal(selectedVideo) && t.externalChannel}
                      </p>
                      {/*
                        HALOLLIK. Interfeys ruscha/ukraincha bo'lsa ham, videoning
                        ovozi o'zbekcha. Buni aytmaslik — bolani aldash bo'ladi.
                      */}
                      {t.videoLangNote && (
                        <p className="mt-1 text-xs leading-relaxed text-dust/80">
                          {t.videoLangNote}
                        </p>
                      )}
                    </div>
                    {selectedVideo.kind === "EXTERNAL" ? (
                      <a
                        href={selectedVideo.url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="rounded-sm border border-zar/60 px-3.5 py-2 font-display text-[11px] font-semibold uppercase tracking-[0.16em] text-zar transition-colors hover:border-zar hover:text-zar-bright"
                      >
                        {t.watch} ↗
                      </a>
                    ) : (
                      <Button variant="zar" size="sm" onClick={() => openPlayer(selected)}>
                        {t.watch}
                      </Button>
                    )}
                  </div>
                </div>
              )}

              {/* Film to'liq ko'rilgach — bilim sinovi (savollar qahramon/davr pulidan) */}
              {watches[selected.id]?.completedAt && (!quiz || quiz.filmId !== selected.id) && (
                <div className="mt-6 flex flex-wrap items-center gap-3 rounded-md border border-feruza/35 bg-feruza/8 px-4 py-3.5">
                  <p className="text-sm text-parchment">{t.quizPrompt}</p>
                  <Button
                    variant="zar"
                    size="sm"
                    disabled={quizLoading}
                    onClick={() => startQuiz(selected.id)}
                  >
                    {quizLoading ? t.quizLoading : t.quizStart}
                  </Button>
                </div>
              )}

              <div className="mt-7">
                <p className="font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/90">
                  {t.pipelineTitle}
                </p>
                <ol className="mt-4 space-y-2.5">
                  {PIPELINE_ORDER.map((status, i) => {
                    const currentIndex = PIPELINE_ORDER.indexOf(selected.status);
                    const done = i < currentIndex;
                    const current = i === currentIndex;
                    return (
                      <li key={status} className="flex items-start gap-3">
                        <span
                          aria-hidden
                          className={`mt-0.5 grid h-6 w-6 shrink-0 place-items-center rounded-sm border font-display text-[10px] font-bold ${
                            current
                              ? "border-zar/70 bg-zar/20 text-zar-bright"
                              : done
                                ? "border-zar/35 bg-zar/8 text-zar/90"
                                : "border-steel-2 bg-steel/50 text-dust/80"
                          }`}
                        >
                          {done ? "✓" : i + 1}
                        </span>
                        <span>
                          <span
                            className={`block text-sm font-semibold ${
                              current ? "text-marble" : done ? "text-dust" : "text-dust/80"
                            }`}
                          >
                            {t.pipeline[status].label}
                          </span>
                          <span
                            className={`block text-xs leading-relaxed ${
                              current ? "text-dust" : "text-dust/80"
                            }`}
                          >
                            {pipelineNote(status, selectedVideo, lang)}
                          </span>
                        </span>
                      </li>
                    );
                  })}
                </ol>
              </div>

              {/*
                Yorliq halol bo'lishi kerak: tashqi video biriktirilgan
                kartochkada `source` da kanal turadi, stsenariy emas.
              */}
              <p className="mt-6 flex items-start gap-2 border-t border-steel-2 pt-4 text-xs leading-relaxed text-dust/85">
                <Star className="mt-0.5 h-3 w-3 shrink-0 text-zar" />
                {isExternal(selectedVideo) ? t.video : t.script}: {selected.source}
              </p>
            </div>
          </div>
        </Panel>
      )}

      {/* ============================ Film testi ============================ */}
      {selected && quiz && quiz.filmId === selected.id && (
        <Panel corners girih className="tt-rise p-6 sm:p-8">
          <p className="font-display text-[10px] font-semibold uppercase tracking-[0.3em] text-zar/90">
            {t.filmQuiz}
          </p>
          <h3 className="mt-2 font-display text-lg font-bold uppercase tracking-[0.05em] text-marble">
            {selectedCard?.title}
          </h3>
          <div className="mt-5">
            <FilmQuiz
              key={quiz.questions.map((q) => q.id).join("-")}
              filmId={selected.id}
              questions={quiz.questions}
              onRestart={() => startQuiz(selected.id)}
              onFinished={(res) => {
                if (res.xpEarned > 0) {
                  setWatches((prev) => ({
                    ...prev,
                    [selected.id]: { ...prev[selected.id], quizXpAwarded: true },
                  }));
                  window.dispatchEvent(new CustomEvent("tirik-xp"));
                }
              }}
            />
          </div>
        </Panel>
      )}

      {/* ============================= Afishalar ============================= */}
      <div className="grid grid-cols-2 gap-5 sm:grid-cols-3 lg:grid-cols-4">
        {visible.map((film, i) => {
          const active = film.id === selectedId;
          const video = parseVideo(film.videoUrl);
          return (
            <div key={film.id} className="tt-reveal" style={{ animationDelay: `${i * 60}ms` }}>
              <button
                onClick={() => selectFilm(active ? null : film.id)}
                aria-pressed={active}
                className="group block w-full text-left"
              >
                <FilmPoster film={film} active={active} />
                <div className="mt-3">
                  <div className="flex flex-wrap items-center gap-1.5">
                    <span className="font-display text-[9px] font-semibold uppercase tracking-[0.2em] text-zar/90">
                      {t.kind[film.kind]}
                    </span>
                    {film.durationMinutes && (
                      <span className="text-[10px] text-dust/85">· {t.minutesShort(film.durationMinutes)}</span>
                    )}
                  </div>
                  <h3
                    className={`mt-1 font-display text-sm font-bold uppercase leading-snug transition-colors ${
                      active ? "text-zar-bright" : "text-marble"
                    }`}
                  >
                    {filmCard(film, lang).title}
                  </h3>
                  <span
                    className={`mt-2 inline-block rounded-sm border px-2 py-0.5 text-[9px] font-semibold uppercase tracking-[0.16em] ${
                      film.status === "IN_REVIEW"
                        ? "border-feruza/45 text-feruza-bright"
                        : film.status === "SCRIPT"
                          ? "border-nil/60 text-[#a8c0e6]"
                          : film.status === "PUBLISHED"
                            ? "border-zar/50 text-zar-bright"
                            : "border-steel-2 text-dust"
                    }`}
                  >
                    {t.pipeline[film.status].label}
                  </span>
                </div>
              </button>

              {/*
                Videoni ro'yxatdan ham ochish mumkin. Alohida tugma: afisha
                tugmasi ichiga tugma joylash mumkin emas (HTML buziladi).
              */}
              {video &&
                (video.kind === "EXTERNAL" ? (
                  <a
                    href={video.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="mt-2.5 inline-flex items-center gap-1.5 rounded-sm border border-zar/50 px-2.5 py-1 font-display text-[10px] font-semibold uppercase tracking-[0.16em] text-zar transition-colors hover:border-zar hover:text-zar-bright"
                  >
                    {video.platformUz} ↗
                  </a>
                ) : (
                  <button
                    onClick={() => openPlayer(film)}
                    className="mt-2.5 inline-flex items-center gap-1.5 rounded-sm border border-zar/50 px-2.5 py-1 font-display text-[10px] font-semibold uppercase tracking-[0.16em] text-zar transition-colors hover:border-zar hover:text-zar-bright"
                  >
                    ▶ {t.watch}{watches[film.id]?.completedAt ? " ✓" : ""}
                  </button>
                ))}
            </div>
          );
        })}
      </div>

      {visible.length === 0 && !error && (
        <Panel tone="hollow" className="p-8 text-center">
          <p className="text-sm text-dust">{t.noFilms}</p>
        </Panel>
      )}

      {/* ======================= Ishonchlilik konveyeri ======================= */}
      <Panel tone="hollow" className="p-6">
        <h3 className="font-display text-sm font-bold uppercase tracking-[0.22em] text-zar/85">
          {t.whyTitle}
        </h3>
        <p className="mt-3 max-w-3xl text-sm leading-relaxed text-dust">{t.whyText}</p>
        <div className="mt-6 flex flex-wrap gap-3">
          <ButtonLink href="/kutubxona" variant="steel" size="sm">
            {t.toFacts}
          </ButtonLink>
          <ButtonLink href="/qahramonlar" variant="ghost" size="sm">
            {t.toHeroes}
          </ButtonLink>
        </div>
      </Panel>

      {/* Iframe faqat shu yerda — «Ko'rish» bosilgandan keyin */}
      {playing && playingVideo && (
        <VideoModal
          video={playingVideo}
          titleUz={filmCard(playing, lang).title}
          attributionUz={authorOf(playing.source, playingVideo)}
          onClose={() => setPlaying(null)}
          onEnded={() => handleEnded(playing)}
        />
      )}

      {toast && <Toast message={toast} onDone={() => setToast(null)} />}
    </div>
  );
}

