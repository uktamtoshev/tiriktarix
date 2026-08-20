"use client";

import { useCallback, useEffect, useState } from "react";
import {
  fetchLeaderboard,
  LeaderboardPage,
  LeaderboardPeriod,
  LeaderboardRow,
} from "@/lib/api";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Button from "@/components/ui/Button";
import FilterChip from "@/components/ui/FilterChip";
import { useT } from "@/lib/lang";

const TXT = {
  ru: {
    periods: { ALL: "За всё время", MONTH: "Месяц", WEEK: "Неделя" },
    overline: "Рейтинг",
    title: "Таблица лидеров",
    subtitle:
      "Самые сильные ученики по XP. Посмотри своё место и постарайся подняться выше.",
    loadFailed: "Не удалось загрузить таблицу",
    loadFailedHint: "Возможно, прервалась связь. Попробуй ещё раз.",
    retry: "Попробовать снова",
    emptyTitle: "Таблица пока пуста",
    emptyAll: "Никто ещё не набрал XP. Пройди испытание первым!",
    emptyPeriod: "За этот период никто ещё не набрал XP. Будь первым!",
    caption: "Рейтинг учеников: место, имя, уровень, XP и ежедневная серия",
    thRank: "Место",
    thPlayer: "Игрок",
    thLevel: "Уровень",
    thStreak: "Серия",
    level: (n: number) => `${n}-й уровень`,
    loading: "Загрузка…",
    showMore: "Показать ещё",
    you: "Ты",
    days: (n: number) => `🔥 ${n} дн.`,
    skeleton: "Таблица лидеров загружается",
  },
  uz: {
    periods: { ALL: "Butun davr", MONTH: "Oy", WEEK: "Hafta" },
    overline: "Reyting",
    title: "Reyting jadvali",
    subtitle:
      "XP bo'yicha eng kuchli o'quvchilar. O'z o'rningni ko'r va yuqoriga ko'tarilishga harakat qil.",
    loadFailed: "Jadvalni yuklab bo'lmadi",
    loadFailedHint: "Aloqa uzilgan bo'lishi mumkin. Qaytadan urinib ko'r.",
    retry: "Qaytadan urinish",
    emptyTitle: "Jadval hali bo'sh",
    emptyAll: "Hech kim hali XP to'plamagan. Birinchi bo'lib sinovdan o't!",
    emptyPeriod: "Bu davrda hali hech kim XP to'plamagan. Birinchi bo'l!",
    caption: "O'quvchilar reytingi: o'rin, ism, daraja, XP va kunlik seriya",
    thRank: "O'rin",
    thPlayer: "O'yinchi",
    thLevel: "Daraja",
    thStreak: "Seriya",
    level: (n: number) => `${n}-daraja`,
    loading: "Yuklanmoqda…",
    showMore: "Yana ko'rsatish",
    you: "Sen",
    days: (n: number) => `🔥 ${n} kun`,
    skeleton: "Reyting jadvali yuklanmoqda",
  },
  uk: {
    periods: { ALL: "За весь час", MONTH: "Місяць", WEEK: "Тиждень" },
    overline: "Рейтинг",
    title: "Таблиця лідерів",
    subtitle: "Найсильніші учні за XP. Подивись своє місце й спробуй піднятися вище.",
    loadFailed: "Не вдалося завантажити таблицю",
    loadFailedHint: "Можливо, урвався зв'язок. Спробуй ще раз.",
    retry: "Спробувати знову",
    emptyTitle: "Таблиця поки порожня",
    emptyAll: "Ніхто ще не набрав XP. Пройди випробування першим!",
    emptyPeriod: "За цей період ніхто ще не набрав XP. Будь першим!",
    caption: "Рейтинг учнів: місце, ім'я, рівень, XP і щоденна серія",
    thRank: "Місце",
    thPlayer: "Гравець",
    thLevel: "Рівень",
    thStreak: "Серія",
    level: (n: number) => `${n}-й рівень`,
    loading: "Завантаження…",
    showMore: "Показати ще",
    you: "Ти",
    days: (n: number) => `🔥 ${n} дн.`,
    skeleton: "Таблиця лідерів завантажується",
  },
};


/**
 * Reyting jadvali.
 *
 * SARALASH. XP bo'yicha kamayish tartibida — o'rinlarni server hisoblaydi,
 * shunda sahifalar orasida raqamlar uzilib qolmaydi.
 *
 * JORIY O'YINCHI. Har doim ko'rinadi: sahifada bo'lsa — ajratilgan qator,
 * bo'lmasa — pastda mahkamlangan qator (server uni alohida qaytaradi).
 *
 * DAVR. «Butun davr» — profildagi jami XP; «oy»/«hafta» — shu oraliqda
 * sinovlardan yig'ilgan XP.
 */

const PERIODS: LeaderboardPeriod[] = ["ALL", "MONTH", "WEEK"];

const PAGE_SIZE = 50;

type Status = "loading" | "ready" | "error";

export default function LeaderboardPageView() {
  const t = useT(TXT);
  const [period, setPeriod] = useState<LeaderboardPeriod>("ALL");
  const [rows, setRows] = useState<LeaderboardRow[]>([]);
  const [data, setData] = useState<LeaderboardPage | null>(null);
  const [status, setStatus] = useState<Status>("loading");
  const [loadingMore, setLoadingMore] = useState(false);

  /** Qayta yuklashni ishga tushiradigan hisoblagich (filtr va «qaytadan urinish»). */
  const [reloadKey, setReloadKey] = useState(0);

  // Birinchi sahifa. setState faqat `await` dan KEYIN chaqiriladi — aks holda
  // effekt ichidagi sinxron setState kaskadli render beradi (linter shuni tekshiradi).
  useEffect(() => {
    let cancelled = false;
    (async () => {
      try {
        const fresh = await fetchLeaderboard(period, 0, PAGE_SIZE);
        if (cancelled) return;
        setData(fresh);
        setRows(fresh.rows);
        setStatus("ready");
      } catch {
        if (!cancelled) setStatus("error");
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [period, reloadKey]);

  /** Keyingi sahifa — hodisa ichida, shuning uchun oddiy setState mumkin. */
  const loadMore = useCallback(async (p: LeaderboardPeriod, page: number) => {
    setLoadingMore(true);
    try {
      const fresh = await fetchLeaderboard(p, page, PAGE_SIZE);
      setData(fresh);
      setRows((prev) => [...prev, ...fresh.rows]);
    } catch {
      setStatus("error");
    } finally {
      setLoadingMore(false);
    }
  }, []);

  function changePeriod(next: LeaderboardPeriod) {
    if (next === period) return;
    setStatus("loading");
    setRows([]);
    setData(null);
    setPeriod(next);
  }

  function retry() {
    setStatus("loading");
    setRows([]);
    setData(null);
    setReloadKey((k) => k + 1);
  }

  const meOutsidePage = data?.me ?? null;

  return (
    <div className="space-y-8">
      <SectionTitle
        align="left"
        overline={t.overline}
        title={t.title}
        subtitle={t.subtitle}
      />

      {/* Davr filtri */}
      <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:px-0">
        {PERIODS.map((code) => (
          <FilterChip key={code} active={period === code} onClick={() => changePeriod(code)}>
            {t.periods[code]}
          </FilterChip>
        ))}
      </div>

      {status === "loading" && <Skeleton label={t.skeleton} />}

      {status === "error" && (
        <Panel corners className="p-10 text-center">
          <p className="font-display text-sm uppercase tracking-[0.2em] text-[#e0a094]">
            {t.loadFailed}
          </p>
          <p className="mx-auto mt-3 max-w-md text-sm text-dust">{t.loadFailedHint}</p>
          <div className="mt-6">
            <Button variant="zar" onClick={retry}>
              {t.retry}
            </Button>
          </div>
        </Panel>
      )}

      {status === "ready" && rows.length === 0 && (
        <Panel corners className="p-10 text-center">
          <p className="text-3xl" aria-hidden>
            🏆
          </p>
          <p className="mt-4 font-display text-sm uppercase tracking-[0.2em] text-marble">
            {t.emptyTitle}
          </p>
          <p className="mx-auto mt-3 max-w-md text-sm text-dust">
            {period === "ALL" ? t.emptyAll : t.emptyPeriod}
          </p>
        </Panel>
      )}

      {status === "ready" && rows.length > 0 && (
        <>
          {/* Katta ekran — jadval */}
          <Panel corners className="hidden overflow-hidden p-0 sm:block">
            <table className="w-full border-collapse text-left">
              <caption className="sr-only">{t.caption}</caption>
              <thead>
                <tr className="border-b border-steel-2">
                  <Th className="w-20 text-center">{t.thRank}</Th>
                  <Th>{t.thPlayer}</Th>
                  <Th className="w-40">{t.thLevel}</Th>
                  <Th className="w-24 text-right">XP</Th>
                  <Th className="w-28 text-right">{t.thStreak}</Th>
                </tr>
              </thead>
              <tbody>
                {rows.map((r) => (
                  <tr
                    key={`${r.clientId}-${r.rank}`}
                    className={`border-b border-steel-2/60 transition-colors last:border-0 ${rowTone(r)}`}
                  >
                    <td className="px-4 py-3 text-center">
                      <RankBadge rank={r.rank} />
                    </td>
                    <td className="px-4 py-3">
                      <PlayerCell row={r} />
                    </td>
                    <td className="px-4 py-3 text-sm text-dust">
                      {t.level(r.level)} · {r.rankUz}
                    </td>
                    <td className="px-4 py-3 text-right font-display font-bold text-zar-bright">
                      {r.xp}
                    </td>
                    <td className="px-4 py-3 text-right text-sm text-dust">
                      {r.streakDays > 0 ? `🔥 ${r.streakDays}` : "—"}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>

            {meOutsidePage && (
              <div className="sticky bottom-0 border-t-2 border-feruza/50 bg-obsidian/95 backdrop-blur">
                <table className="w-full border-collapse text-left">
                  <tbody>
                    <tr className="bg-feruza/10">
                      <td className="w-20 px-4 py-3 text-center">
                        <RankBadge rank={meOutsidePage.rank} />
                      </td>
                      <td className="px-4 py-3">
                        <PlayerCell row={meOutsidePage} />
                      </td>
                      <td className="w-40 px-4 py-3 text-sm text-dust">
                        {t.level(meOutsidePage.level)} · {meOutsidePage.rankUz}
                      </td>
                      <td className="w-24 px-4 py-3 text-right font-display font-bold text-zar-bright">
                        {meOutsidePage.xp}
                      </td>
                      <td className="w-28 px-4 py-3 text-right text-sm text-dust">
                        {meOutsidePage.streakDays > 0 ? `🔥 ${meOutsidePage.streakDays}` : "—"}
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            )}
          </Panel>

          {/* Telefon — kartochkalar */}
          <div className="space-y-3 sm:hidden">
            {rows.map((r) => (
              <PlayerCard key={`${r.clientId}-${r.rank}`} row={r} />
            ))}
            {meOutsidePage && (
              <div className="sticky bottom-3 z-10">
                <PlayerCard row={meOutsidePage} />
              </div>
            )}
          </div>

          {data?.hasMore && (
            <div className="text-center">
              <Button
                variant="steel"
                disabled={loadingMore}
                onClick={() => loadMore(period, (data?.page ?? 0) + 1)}
              >
                {loadingMore ? t.loading : t.showMore}
              </Button>
              <p className="mt-3 text-xs text-dust">
                {rows.length} / {data.total}
              </p>
            </div>
          )}
        </>
      )}
    </div>
  );
}

/** Top-3 va joriy o'yinchi uchun qator foni. */
function rowTone(r: LeaderboardRow): string {
  if (r.me) return "bg-feruza/10";
  if (r.rank === 1) return "bg-zar/10";
  if (r.rank === 2) return "bg-marble/[0.06]";
  if (r.rank === 3) return "bg-zar-deep/10";
  return "hover:bg-steel/40";
}

/** Medal ranglari faqat mavjud tokenlardan: oltin — zar, kumush — marble, bronza — zar-deep. */
function medalTone(rank: number): string {
  if (rank === 1) return "border-zar/70 bg-zar/15 text-zar-bright";
  if (rank === 2) return "border-marble/40 bg-marble/10 text-marble";
  if (rank === 3) return "border-zar-deep/70 bg-zar-deep/15 text-zar";
  return "border-steel-2 text-dust";
}

function RankBadge({ rank }: { rank: number }) {
  return (
    <span
      className={`inline-flex h-9 min-w-9 items-center justify-center rounded-sm border px-2 font-display text-sm font-bold ${medalTone(rank)}`}
    >
      {rank}
    </span>
  );
}

function PlayerCell({ row }: { row: LeaderboardRow }) {
  const t = useT(TXT);
  return (
    <span className="flex items-center gap-3">
      <span
        aria-hidden
        className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full border border-zar/30 bg-zar/10 text-lg"
      >
        {row.rankEmoji}
      </span>
      <span className="min-w-0">
        <span className={`block truncate text-sm ${row.me ? "text-feruza-bright" : "text-marble"}`}>
          {row.displayName}
        </span>
        {row.me && (
          <span className="font-display text-[9px] uppercase tracking-[0.2em] text-feruza">
            {t.you}
          </span>
        )}
      </span>
    </span>
  );
}

function PlayerCard({ row }: { row: LeaderboardRow }) {
  const t = useT(TXT);
  return (
    <Panel
      corners
      className={`p-4 ${row.me ? "border-feruza/50 bg-feruza/10" : ""} ${
        row.rank <= 3 && !row.me ? "border-zar/40" : ""
      }`}
    >
      <div className="flex items-center gap-3">
        <RankBadge rank={row.rank} />
        <div className="min-w-0 flex-1">
          <PlayerCell row={row} />
        </div>
        <div className="shrink-0 text-right">
          <p className="font-display text-lg font-bold text-zar-bright">{row.xp}</p>
          <p className="text-[9px] font-semibold uppercase tracking-[0.2em] text-dust">XP</p>
        </div>
      </div>
      <div className="mt-3 flex justify-between border-t border-steel-2/60 pt-3 text-xs text-dust">
        <span>
          {t.level(row.level)} · {row.rankUz}
        </span>
        <span>{row.streakDays > 0 ? t.days(row.streakDays) : "—"}</span>
      </div>
    </Panel>
  );
}

function Th({ children, className = "" }: { children: React.ReactNode; className?: string }) {
  return (
    <th
      scope="col"
      className={`px-4 py-3 font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-dust ${className}`}
    >
      {children}
    </th>
  );
}

/** Yuklanish — jadval shakli saqlanadi, shunda sahifa sakramaydi. */
function Skeleton({ label }: { label: string }) {
  return (
    <Panel corners className="space-y-3 p-5" aria-busy="true" aria-live="polite">
      <span className="sr-only">{label}</span>
      {Array.from({ length: 8 }).map((_, i) => (
        <div key={i} className="flex items-center gap-4">
          <div className="h-9 w-9 shrink-0 animate-pulse rounded-sm bg-steel-2/70" />
          <div className="h-9 w-9 shrink-0 animate-pulse rounded-full bg-steel-2/70" />
          <div className="h-3 flex-1 animate-pulse rounded-sm bg-steel-2/60" />
          <div className="h-3 w-14 shrink-0 animate-pulse rounded-sm bg-steel-2/60" />
        </div>
      ))}
    </Panel>
  );
}
