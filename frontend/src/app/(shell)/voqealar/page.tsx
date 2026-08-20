"use client";

import { useEffect, useMemo, useState, useSyncExternalStore } from "react";
import { api, Era, HistoricalEvent } from "@/lib/api";
import { eraEmoji, formatRange } from "@/lib/eras";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Badge from "@/components/ui/Badge";
import FilterChip from "@/components/ui/FilterChip";
import { CornerFrame } from "@/components/ui/Ornament";
import { useLang, useT } from "@/lib/lang";
import { countryQuery, useCountry } from "@/lib/country";
import { eraName, eventCard } from "@/lib/content.ru";

const TXT = {
  ru: {
    overline: "Врата II",
    title: "Лента времени",
    subtitle:
      "От пещеры Селунгур до независимости — важные события в хронологическом порядке. Выбери эпоху, чтобы увидеть только её время.",
    subtitleRU:
      "От призвания Рюрика до наших дней — важные события в хронологическом порядке. Выбери эпоху, чтобы увидеть только её время.",
    offline: "Нет связи с сервером. Проверьте, запущен ли бэкенд.",
    all: "Все",
    empty: "Для этой эпохи событий не найдено.",
  },
  uz: {
    overline: "Darvoza II",
    title: "Vaqt lentasi",
    subtitle:
      "Selungur g'oridan mustaqillikkacha — muhim voqealar xronologik tartibda. Davrni tanlab, faqat o'sha zamonni ko'r.",
    subtitleRU:
      "Ryurikning chorlanishidan bugungi kungacha — muhim voqealar xronologik tartibda. Davrni tanlab, faqat o'sha zamonni ko'r.",
    offline: "Server bilan aloqa yo'q. Backend ishga tushganini tekshiring.",
    all: "Barchasi",
    empty: "Bu davr uchun voqealar topilmadi.",
  },
  uk: {
    overline: "Брама II",
    title: "Стрічка часу",
    subtitle:
      "Від печери Селунгур до незалежності — важливі події у хронологічному порядку. Обери епоху, щоб побачити лише її час.",
    subtitleRU:
      "Від покликання Рюрика до наших днів — важливі події у хронологічному порядку. Обери епоху, щоб побачити лише її час.",
    offline: "Немає зв'язку із сервером. Перевірте, чи запущено бекенд.",
    all: "Усі",
    empty: "Для цієї епохи подій не знайдено.",
  },
};

/*
  MANZILDAGI ?davr=<kod> NI O'QISH.

  Avval bu yerda `useSearchParams()` turardi va u butun sahifani `Suspense`
  chegarasiga o'rashni talab qilardi. Next.js 16 ning dev rejimida o'sha
  chegara ochilmay qolib, sahifa bo'm-bo'sh ko'rinardi (ishlab chiqarish
  qurilishida esa muammo yo'q edi).

  Endi manzil qatori tashqi do'kon sifatida o'qiladi: serverda va
  gidratatsiya paytida «all» qaytadi, undan keyin — manzildagi haqiqiy
  qiymat. Suspense ham, effekt ichida setState ham kerak emas.
*/
const NO_SUBSCRIBE = () => () => {};

function readEraFromUrl(): string {
  return new URLSearchParams(window.location.search).get("davr") ?? "all";
}

function serverEra(): string {
  return "all";
}

export default function EventsPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  const urlEra = useSyncExternalStore(NO_SUBSCRIBE, readEraFromUrl, serverEra);
  const [eras, setEras] = useState<Era[]>([]);
  const [events, setEvents] = useState<HistoricalEvent[]>([]);
  /* Manzil faqat BOSHLANG'ICH qiymatni beradi: bola filtrni bosgach, uning
     tanlovi ustun turadi va manzil uni qaytarib qo'ymaydi. */
  const [picked, setPicked] = useState<string | null>(null);
  const selected = picked ?? urlEra;
  const setSelected = setPicked;
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
    api<HistoricalEvent[]>(`/api/events${countryQuery(country)}`)
      .then(keep(setEvents))
      .catch(keep(() => setError(true)));
    return () => {
      live = false;
    };
  }, [country]);

  const eraById = useMemo(() => new Map(eras.map((e) => [e.id, e])), [eras]);
  const visible =
    selected === "all" ? events : events.filter((e) => eraById.get(e.eraId)?.code === selected);

  return (
    <div className="space-y-12">
      {/*
        Tavsif mamlakatga bog'liq: «Selungur g'oridan» — o'zbek tarixi haqida,
        rus tarixida u yolg'on bo'lib qoladi.
      */}
      <SectionTitle
        overline={t.overline}
        title={t.title}
        subtitle={country === "RU" ? t.subtitleRU : t.subtitle}
      />

      {error && (
        <Panel tone="hollow" className="p-5 text-center">
          <p className="text-sm text-[#e8a99f]">{t.offline}</p>
        </Panel>
      )}

      <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:px-0">
        <FilterChip active={selected === "all"} onClick={() => setSelected("all")}>
          {t.all}
        </FilterChip>
        {eras.map((era) => (
          <FilterChip
            key={era.code}
            active={selected === era.code}
            onClick={() => setSelected(era.code)}
          >
            {eraEmoji(era.code)} {eraName(era, lang)}
          </FilterChip>
        ))}
      </div>

      {/* Zar vaqt o'qi — voqealar unga osilgan lavhalar kabi */}
      <ol key={selected} className="relative space-y-5 ps-10">
        <span
          aria-hidden
          className="absolute bottom-3 start-[17px] top-3 w-px bg-[linear-gradient(180deg,transparent,rgba(200,162,71,0.55)_5%,rgba(200,162,71,0.55)_95%,transparent)]"
        />
        {visible.map((e, i) => {
          const era = eraById.get(e.eraId);
          const card = eventCard(e, lang);
          return (
            <li
              key={e.id}
              className="tt-reveal relative"
              style={{ animationDelay: `${Math.min(i * 45, 500)}ms` }}
            >
              {/* O'qdagi tugun — sakkiz burchakli yulduz */}
              <span aria-hidden className="absolute -start-[30px] top-6 text-zar">
                <svg viewBox="0 0 32 32" className="h-4 w-4" fill="none" stroke="currentColor" strokeWidth="1.6">
                  <path d="M16 2 L20 12 L30 16 L20 20 L16 30 L12 20 L2 16 L12 12 Z" />
                  <circle cx="16" cy="16" r="3" className="fill-obsidian" />
                </svg>
              </span>

              <Panel className="p-5 transition-colors duration-500 hover:border-zar/45 sm:p-6">
                <CornerFrame />
                <div className="flex flex-wrap items-center gap-2.5">
                  <span className="font-display text-sm font-bold uppercase tracking-[0.14em] text-zar-bright">
                    {formatRange(e.yearFrom, e.yearTo, lang)}
                  </span>
                  {card.location && (
                    <span className="text-xs text-dust">· {card.location}</span>
                  )}
                  {era && (
                    <Badge tone="dust" className="ms-auto">
                      {eraEmoji(era.code)} {eraName(era, lang)}
                    </Badge>
                  )}
                </div>
                <h2 className="mt-3 font-display text-base font-bold uppercase leading-snug tracking-[0.05em] text-marble sm:text-lg">
                  {card.title}
                </h2>
                <p className="mt-2 text-sm leading-relaxed text-dust">{card.description}</p>
              </Panel>
            </li>
          );
        })}
      </ol>

      {visible.length === 0 && !error && (
        <Panel tone="hollow" className="p-8 text-center">
          <p className="text-sm text-dust">{t.empty}</p>
        </Panel>
      )}
    </div>
  );
}
