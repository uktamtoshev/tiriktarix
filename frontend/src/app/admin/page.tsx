"use client";

import Link from "next/link";
import { useEffect, useState } from "react";
import { AdminStats, adminApi } from "@/lib/admin";
import {
  AdminCard,
  Notice,
  Pill,
  Spinner,
  StatTile,
} from "@/components/admin/ui";

/**
 * Bosh sahifa — «bugun nima qilish kerak» javobi.
 * Yuqorida umumiy sonlar, pastda navbat (tekshirilmagan kontent) va
 * faollik: bolalar nimani so'rayapti, nimani yechayapti.
 */
export default function AdminDashboard() {
  const [stats, setStats] = useState<AdminStats | null>(null);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    adminApi<AdminStats>("/api/admin/stats")
      .then(setStats)
      .catch((e) => setError(e instanceof Error ? e.message : "Не удалось загрузить"));
  }, []);

  if (error) return <Notice>{error}</Notice>;
  if (!stats) return <Spinner />;

  const { content, learners, chat } = stats;
  const maxAttempts = Math.max(1, ...stats.activity.map((d) => d.attempts));

  return (
    <div className="space-y-6">
      <h1 className="font-display text-xl font-bold uppercase tracking-[0.14em] text-marble">
        Обзор
      </h1>

      {/* Asosiy ko'rsatkichlar */}
      <div className="grid grid-cols-2 gap-3 md:grid-cols-4">
        <StatTile label="Профили учеников" value={learners.profiles}
          hint={`из них с учётной записью: ${learners.linkedProfiles}`} />
        <StatTile label="Активны сегодня" value={learners.activeToday} tone="feruza"
          hint={`за 7 дней: ${learners.active7d}`} />
        <StatTile label="Тесты (7 дней)" value={learners.quizzes7d}
          hint={`Всего XP: ${learners.totalXp}`} />
        <StatTile label="Сообщения в диалогах (7 дней)" value={chat.messages7d}
          hint={`Всего: ${chat.messages}`} />
      </div>

      {/* Navbat — metodist ishi */}
      <AdminCard title="Очередь — нужна проверка">
        {stats.todo.every((t) => t.count === 0) ? (
          <p className="text-sm text-feruza-bright">Всё проверено — очередь пуста. 🎉</p>
        ) : (
          <ul className="divide-y divide-steel-2/60">
            {stats.todo.map((item) => (
              <li key={item.label}>
                <Link
                  href={item.href}
                  className="flex items-center justify-between gap-3 py-2.5 transition-colors hover:text-zar-bright"
                >
                  <span className="text-sm text-parchment">{item.label}</span>
                  {item.count > 0 ? (
                    <Pill tone="warn">{item.count}</Pill>
                  ) : (
                    <Pill tone="ok">0</Pill>
                  )}
                </Link>
              </li>
            ))}
          </ul>
        )}
      </AdminCard>

      <div className="grid gap-4 lg:grid-cols-2">
        {/* Faollik grafigi */}
        <AdminCard title="Активность в тестах — 14 дней">
          <div className="flex h-36 items-end gap-1">
            {stats.activity.map((day) => (
              <div key={day.day} className="group relative flex-1">
                <div
                  className="w-full rounded-t-sm bg-gradient-to-t from-zar-deep to-zar transition-colors group-hover:from-zar group-hover:to-zar-bright"
                  style={{ height: `${Math.max(3, (day.attempts / maxAttempts) * 130)}px` }}
                  title={`${day.day}: попыток ${day.attempts}, верно ${day.correct} из ${day.asked}`}
                />
              </div>
            ))}
          </div>
          <div className="mt-2 flex justify-between text-[10px] text-dust">
            <span>{stats.activity[0]?.day.slice(5)}</span>
            <span>{stats.activity[stats.activity.length - 1]?.day.slice(5)}</span>
          </div>
        </AdminCard>

        {/* Kontent hisobi */}
        <AdminCard title="Контент">
          <div className="grid grid-cols-2 gap-x-6 gap-y-2 text-sm">
            {(
              [
                ["Эпохи", content.eras, "/admin/davrlar"],
                ["Предки", content.heroes, "/admin/ajdodlar"],
                ["События", content.events, "/admin/voqealar"],
                ["Карточки фактов", content.factCards, "/admin/faktlar"],
                ["Вопросы тестов", content.quizQuestions, "/admin/savollar"],
                ["Фильмы", content.films, "/admin/filmlar"],
                ["Слои карты", content.mapFeatures, "/admin/xarita"],
                ["Учётные записи", learners.users, "/admin/foydalanuvchilar"],
              ] as const
            ).map(([label, value, href]) => (
              <Link
                key={label}
                href={href}
                className="flex items-center justify-between border-b border-steel-2/50 py-1.5 transition-colors hover:text-zar-bright"
              >
                <span className="text-dust">{label}</span>
                <span className="font-semibold text-parchment">{value}</span>
              </Link>
            ))}
          </div>
        </AdminCard>

        {/* Mashhur ajdodlar */}
        <AdminCard title="Диалоги — популярные предки">
          {stats.topHeroes.length === 0 ? (
            <p className="text-sm text-dust">Диалогов пока нет.</p>
          ) : (
            <ul className="space-y-1.5">
              {stats.topHeroes.map((hero, i) => (
                <li key={hero.heroId} className="flex items-center justify-between text-sm">
                  <span className="text-parchment">
                    <span className="mr-2 text-[11px] text-dust">{i + 1}.</span>
                    {hero.nameUz}
                  </span>
                  <span className="text-dust">{hero.conversations} диал.</span>
                </li>
              ))}
            </ul>
          )}
        </AdminCard>

        {/* Yetakchilar */}
        <AdminCard title="Лидеры по XP">
          {stats.leaderboard.length === 0 ? (
            <p className="text-sm text-dust">Профилей пока нет.</p>
          ) : (
            <ul className="space-y-1.5">
              {stats.leaderboard.slice(0, 8).map((row, i) => (
                <li key={row.profileId} className="flex items-center justify-between gap-2 text-sm">
                  <span className="min-w-0 truncate text-parchment">
                    <span className="mr-2 text-[11px] text-dust">{i + 1}.</span>
                    {row.displayName || row.clientId.slice(0, 8) + "…"}
                    <span className="ml-2 text-[11px] text-dust">{row.rankUz}</span>
                  </span>
                  <span className="whitespace-nowrap font-semibold text-zar-bright">{row.xp} XP</span>
                </li>
              ))}
            </ul>
          )}
        </AdminCard>
      </div>

      {/* Rad etishlar */}
      <AdminCard title="Качество диалогов">
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-4">
          <StatTile label="Диалоги" value={chat.conversations} tone="dust" />
          <StatTile label="Сообщения" value={chat.messages} tone="dust" />
          <StatTile label="«История молчит»" value={chat.refusalsNoFact} tone="qon"
            hint="Вопросы, на которые не хватило карточки" />
          <StatTile label="Не по теме" value={chat.refusalsOffTopic} tone="dust" />
        </div>
        <p className="mt-3 text-[12px] text-dust">
          Список вопросов без ответа —{" "}
          <Link href="/admin/suhbatlar" className="text-zar-bright underline-offset-2 hover:underline">
            в разделе «Диалоги»
          </Link>
          . Каждый из них — готовая тема для новой карточки фактов.
        </p>
      </AdminCard>
    </div>
  );
}
