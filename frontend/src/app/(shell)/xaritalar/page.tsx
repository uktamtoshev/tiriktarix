"use client";

import { useEffect, useMemo, useState } from "react";
import { api, Era, MapFeature } from "@/lib/api";
import CentralAsiaBase from "@/components/art/CentralAsiaBase";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Badge from "@/components/ui/Badge";
import { Star } from "@/components/ui/Ornament";
import { formatYear } from "@/lib/eras";
import { useLang, useT } from "@/lib/lang";
import { countryQuery, useCountry } from "@/lib/country";
import { eraName, mapFeature } from "@/lib/content.ru";

const TXT = {
  ru: {
    kind: { TERRITORY: "Территория", CITY: "Город", ROUTE: "Путь" },
    overline: "Врата III",
    title: "Карты эпох",
    subtitle:
      "Выбери эпоху — границы сдвигаются, города загораются, прочерчиваются пути походов. Нажми на слой, чтобы прочитать его описание.",
    offline: "Нет связи с сервером. Проверьте, запущен ли бэкенд.",
    mapAria: (era: string) => `Карта: ${era}`,
    era: "Эпоха",
    schematic: "Схематично",
    loadingLayers: "Слои загружаются…",
    pickLayer: "Нажми на территорию, город или путь на карте — описание появится здесь.",
    layersOf: (era: string) => `Слои: ${era}`,
    noLayers: "Для этой эпохи слои ещё не добавлены.",
    noBaseTitle: "Карта для истории России ещё не нарисована.",
    noBaseText:
      "Основа карты в проекте — это Средняя Азия. Показывать русские эпохи поверх неё было бы неправдой, поэтому карта здесь пока не рисуется. Остальные врата — предки, лента времени и библиотека — уже работают.",
    draftTitle: "Схематичные границы.",
    draftText:
      "Точные границы средневековых государств в документах расходятся. Поэтому слои территорий и путей нарисованы приблизительно и ждут подтверждения методиста-историка. Города поставлены по настоящим координатам.",
  },
  uz: {
    kind: { TERRITORY: "Hudud", CITY: "Shahar", ROUTE: "Yo'l" },
    overline: "Darvoza III",
    title: "Zamon xaritalari",
    subtitle:
      "Davrni tanla — chegaralar siljiydi, shaharlar yonadi, yurishlar yo'li chiziladi. Qatlamga bosib, uning tavsifini ko'r.",
    offline: "Server bilan aloqa yo'q. Backend ishga tushganini tekshiring.",
    mapAria: (era: string) => `${era} xaritasi`,
    era: "Davr",
    schematic: "Sxematik",
    loadingLayers: "Qatlamlar yuklanmoqda…",
    pickLayer: "Xaritadagi hudud, shahar yoki yo'lga bos — tavsifi shu yerda chiqadi.",
    layersOf: (era: string) => `${era} qatlamlari`,
    noLayers: "Bu davr uchun qatlam hali qo'shilmagan.",
    noBaseTitle: "Rossiya tarixi uchun xarita hali chizilmagan.",
    noBaseText:
      "Loyihadagi xarita asosi — O'rta Osiyo. Rus davrlarini uning ustiga qo'yish yolg'on bo'lardi, shuning uchun bu yerda xarita hozircha chizilmaydi. Qolgan darvozalar — ajdodlar, vaqt lentasi va kutubxona — allaqachon ishlaydi.",
    draftTitle: "Sxematik chegaralar.",
    draftText:
      "O'rta asr davlatlarining aniq chegarasi hujjatlarda bir xil emas. Shu sababli hudud va yo'l qatlamlari taqribiy chizilgan va metodist-tarixchi tasdig'ini kutmoqda. Shaharlar haqiqiy koordinatalarga qo'yilgan.",
  },
  uk: {
    kind: { TERRITORY: "Територія", CITY: "Місто", ROUTE: "Шлях" },
    overline: "Брама III",
    title: "Карти епох",
    subtitle:
      "Обери епоху — кордони зсуваються, міста спалахують, прокладаються шляхи походів. Натисни на шар, щоб прочитати його опис.",
    offline: "Немає зв'язку із сервером. Перевірте, чи запущено бекенд.",
    mapAria: (era: string) => `Карта: ${era}`,
    era: "Епоха",
    schematic: "Схематично",
    loadingLayers: "Шари завантажуються…",
    pickLayer: "Натисни на територію, місто або шлях на карті — опис з'явиться тут.",
    layersOf: (era: string) => `Шари: ${era}`,
    noLayers: "Для цієї епохи шари ще не додано.",
    noBaseTitle: "Карту для історії Росії ще не намальовано.",
    noBaseText:
      "Основа карти в проєкті — Середня Азія. Показувати руські епохи поверх неї було б неправдою, тому карта тут поки не малюється. Решта брам — предки, стрічка часу й бібліотека — уже працюють.",
    draftTitle: "Схематичні кордони.",
    draftText:
      "Точні кордони середньовічних держав у документах розходяться. Тому шари територій і шляхів намальовано приблизно й вони чекають підтвердження методиста-історика. Міста поставлено за справжніми координатами.",
  },
};

/** Hudud qatlamlari navbat bilan shu ranglarni oladi. */
const TERRITORY_COLORS = ["#c8a247", "#2e8a87", "#5a7fbe"] as const;

export default function XaritalarPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  const [eras, setEras] = useState<Era[]>([]);
  const [eraCode, setEraCode] = useState<string | null>(null);
  const [features, setFeatures] = useState<MapFeature[]>([]);
  const [selectedId, setSelectedId] = useState<number | null>(null);
  const [loading, setLoading] = useState(true);
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
      .then(keep((list) => {
        setEras(list);
        setEraCode((code) => code ?? list[0]?.code ?? null);
      }))
      .catch(keep(() => setError(true)));
    return () => {
      live = false;
    };
  }, [country]);

  useEffect(() => {
    if (!eraCode) return;
    api<MapFeature[]>(`/api/maps?eraCode=${eraCode}`)
      .then(setFeatures)
      .catch(() => {
        setFeatures([]);
        setError(true);
      })
      .finally(() => setLoading(false));
  }, [eraCode]);

  const era = eras.find((e) => e.code === eraCode) ?? null;
  const territories = useMemo(() => features.filter((f) => f.kind === "TERRITORY"), [features]);
  const routes = useMemo(() => features.filter((f) => f.kind === "ROUTE"), [features]);
  const cities = useMemo(() => features.filter((f) => f.kind === "CITY"), [features]);
  const selected = features.find((f) => f.id === selectedId) ?? null;
  const hasDraft = features.some((f) => !f.verified);
  const selectedFeature = selected ? mapFeature(selected, lang) : null;

  return (
    <div className="space-y-10">
      <SectionTitle overline={t.overline} title={t.title} subtitle={t.subtitle} />

      {error && (
        <Panel tone="hollow" className="p-5 text-center">
          <p className="text-sm text-[#e8a99f]">{t.offline}</p>
        </Panel>
      )}

      {/* ======================= Davrlar tasmasi ======================= */}
      <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:px-0">
        {eras.map((e) => {
          const active = e.code === eraCode;
          return (
            <button
              key={e.code}
              onClick={() => {
                if (e.code === eraCode) return;
                setLoading(true);
                setSelectedId(null);
                setEraCode(e.code);
              }}
              aria-pressed={active}
              aria-label={`${eraName(e, lang)}: ${formatYear(e.yearFrom, lang)} — ${formatYear(e.yearTo, lang)}`}
              className={`shrink-0 rounded-sm border px-4 py-2.5 text-left transition-all duration-300 ease-tt ${
                active
                  ? "border-zar/60 bg-zar/12"
                  : "border-steel-2 bg-steel/50 hover:border-zar/35"
              }`}
            >
              <span
                className={`block font-display text-[10px] font-semibold uppercase tracking-[0.2em] ${
                  active ? "text-zar-bright" : "text-dust"
                }`}
              >
                {formatYear(e.yearFrom, lang)} — {formatYear(e.yearTo, lang)}
              </span>
              <span
                className={`mt-1 block font-display text-xs font-bold uppercase tracking-[0.08em] ${
                  active ? "text-marble" : "text-dust"
                }`}
              >
                {eraName(e, lang)}
              </span>
            </button>
          );
        })}
      </div>

      <div className="grid gap-6 lg:grid-cols-[1fr_20rem] lg:items-start">
        {/* ============================ Xarita ============================ */}
        {/*
          HALOLLIK. Xarita asosi — O'rta Osiyo (`CentralAsiaBase`), koordinatalar
          o'sha rasmga bog'langan. Rossiya tarixida uni ko'rsatish «862-yil, Rusdan
          Rossiya davlatigacha» sarlavhasi ostida Orol dengizi va Tyan-Shanni
          chizish degani. Shuning uchun asos yo'q mamlakatda xarita o'rniga
          rostini aytadigan panel turadi.
        */}
        {country === "RU" ? (
          <Panel tone="hollow" className="p-8">
            <p className="font-display text-sm font-semibold uppercase tracking-[0.16em] text-zar">
              {t.noBaseTitle}
            </p>
            <p className="mt-3 text-sm leading-relaxed text-dust">{t.noBaseText}</p>
          </Panel>
        ) : (
        <Panel corners className="overflow-hidden p-2 sm:p-3">
          {/* Balandlik cheklangan: xarita bir ekranga sig'ishi kerak */}
          <svg
            viewBox="0 0 1000 700"
            preserveAspectRatio="xMidYMid meet"
            className="h-[min(64vh,700px)] w-full rounded-sm"
            role="img"
            aria-label={t.mapAria(era ? eraName(era, lang) : t.era)}
          >
            <CentralAsiaBase />

            {/* Hududlar — davr almashganda qayta chiziladi */}
            <g key={`terr-${eraCode}`}>
              {territories.map((f, i) => {
                const color = TERRITORY_COLORS[i % TERRITORY_COLORS.length];
                const active = f.id === selectedId;
                return (
                  <path
                    key={f.id}
                    d={f.geometry}
                    fill={color}
                    fillOpacity={active ? 0.34 : 0.18}
                    stroke={color}
                    strokeOpacity={active ? 1 : 0.75}
                    strokeWidth={active ? 3 : 2}
                    strokeLinejoin="round"
                    className="tt-rise cursor-pointer transition-all duration-300"
                    style={{ animationDelay: `${i * 120}ms` }}
                    onClick={() => setSelectedId(active ? null : f.id)}
                  >
                    <title>{mapFeature(f, lang).name}</title>
                  </path>
                );
              })}
            </g>

            {/* Yurish yo'llari — chizib chiqiladi */}
            <g key={`route-${eraCode}`} fill="none" strokeLinecap="round" strokeLinejoin="round">
              {routes.map((f, i) => {
                const active = f.id === selectedId;
                return (
                  <g key={f.id} className="cursor-pointer" onClick={() => setSelectedId(active ? null : f.id)}>
                    {/* Qalin shaffof chiziq — bosish maydonini kengaytiradi */}
                    <path d={f.geometry} stroke="transparent" strokeWidth="22" />
                    <path
                      d={f.geometry}
                      pathLength={1}
                      stroke="#f3d98b"
                      strokeOpacity={active ? 1 : 0.8}
                      strokeWidth={active ? 4.5 : 3}
                      className="tt-route"
                      style={{ animationDelay: `${400 + i * 300}ms` }}
                    >
                      <title>{mapFeature(f, lang).name}</title>
                    </path>
                  </g>
                );
              })}
            </g>

            {/* Shaharlar */}
            <g key={`city-${eraCode}`}>
              {cities.map((f, i) => {
                const [cx, cy] = f.geometry.split(",").map(Number);
                if (Number.isNaN(cx) || Number.isNaN(cy)) return null;
                const active = f.id === selectedId;
                return (
                  <g
                    key={f.id}
                    className="tt-rise cursor-pointer"
                    style={{ animationDelay: `${300 + i * 60}ms` }}
                    onClick={() => setSelectedId(active ? null : f.id)}
                  >
                    <circle cx={cx} cy={cy} r="16" fill="transparent" />
                    {active && (
                      <circle cx={cx} cy={cy} r="12" fill="none" stroke="#f3d98b" strokeOpacity="0.6" strokeWidth="1.5" />
                    )}
                    <circle
                      cx={cx}
                      cy={cy}
                      r={active ? 6 : 4.5}
                      fill="#f3d98b"
                      stroke="#0a0d13"
                      strokeWidth="1.5"
                      className="transition-all duration-300"
                    />
                    <text
                      x={cx + 11}
                      y={cy + 5}
                      fill={active ? "#f7f2e6" : "#ede2c8"}
                      fillOpacity={active ? 1 : 0.85}
                      fontSize="15"
                      fontWeight="600"
                      fontFamily="var(--font-inter), sans-serif"
                      style={{ paintOrder: "stroke", stroke: "#0a0d13", strokeWidth: 3.5 }}
                    >
                      {mapFeature(f, lang).name}
                    </text>
                    <title>{mapFeature(f, lang).name}</title>
                  </g>
                );
              })}
            </g>
          </svg>
        </Panel>
        )}

        {/* ========================= Yon panel ========================= */}
        <div className="space-y-4">
          {/* Tanlangan qatlam */}
          <Panel tone={selected ? "steel" : "hollow"} corners={!!selected} className="p-5">
            {selected ? (
              <>
                <div className="flex flex-wrap items-center gap-2">
                  <Badge tone={selected.kind === "CITY" ? "zar" : selected.kind === "ROUTE" ? "feruza" : "nil"}>
                    {t.kind[selected.kind]}
                  </Badge>
                  {!selected.verified && <Badge tone="dust">{t.schematic}</Badge>}
                </div>
                <h3 className="mt-3 font-display text-base font-bold uppercase leading-snug tracking-[0.06em] text-marble">
                  {selectedFeature?.name}
                </h3>
                {selectedFeature?.description && (
                  <p className="mt-2.5 text-sm leading-relaxed text-dust">
                    {selectedFeature.description}
                  </p>
                )}
                <p className="mt-4 flex items-start gap-2 border-t border-steel-2 pt-3 text-xs leading-relaxed text-dust/85">
                  <Star className="mt-0.5 h-3 w-3 shrink-0 text-zar" />
                  {selected.source}
                </p>
              </>
            ) : (
              <p className="text-sm leading-relaxed text-dust">
                {loading ? t.loadingLayers : t.pickLayer}
              </p>
            )}
          </Panel>

          {/* Davr qatlamlari ro'yxati — klaviatura bilan ham yuriladi */}
          <Panel tone="hollow" className="p-5">
            <p className="font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/90">
              {t.layersOf(era ? eraName(era, lang) : t.era)}
            </p>
            <ul className="mt-3 space-y-1">
              {features.map((f) => {
                const active = f.id === selectedId;
                return (
                  <li key={f.id}>
                    <button
                      onClick={() => setSelectedId(active ? null : f.id)}
                      className={`flex w-full items-center gap-2.5 rounded-sm px-2.5 py-2 text-left text-sm transition-colors ${
                        active ? "bg-zar/12 text-marble" : "text-dust hover:bg-steel/60 hover:text-marble"
                      }`}
                    >
                      <span
                        aria-hidden
                        className={`h-2 w-2 shrink-0 ${
                          f.kind === "CITY"
                            ? "rounded-full bg-zar-bright"
                            : f.kind === "ROUTE"
                              ? "rounded-full bg-feruza-bright"
                              : "rounded-sm bg-nil"
                        }`}
                      />
                      <span className="truncate">{mapFeature(f, lang).name}</span>
                    </button>
                  </li>
                );
              })}
              {!loading && features.length === 0 && (
                <li className="px-2.5 py-2 text-sm text-dust">{t.noLayers}</li>
              )}
            </ul>
          </Panel>

          {/* Ishonchlilik izohi */}
          {hasDraft && (
            <Panel tone="hollow" className="p-5">
              <p className="text-xs leading-relaxed text-dust">
                <span className="font-semibold text-zar/90">{t.draftTitle}</span> {t.draftText}
              </p>
            </Panel>
          )}
        </div>
      </div>
    </div>
  );
}
