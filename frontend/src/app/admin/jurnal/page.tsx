"use client";

import { useCallback, useEffect, useState } from "react";
import { AdminAuditRow, Page, adminApi, formatDateTime } from "@/lib/admin";
import {
  AdminCard,
  Cell,
  Empty,
  Notice,
  Pager,
  Pill,
  Row,
  Spinner,
  Table,
} from "@/components/admin/ui";

const ACTION_TONE: Record<string, "ok" | "warn" | "info" | "dust"> = {
  CREATE: "ok",
  UPDATE: "info",
  DELETE: "warn",
  VERIFY: "ok",
  SECRET: "warn",
  LOGIN: "dust",
};

const TYPES = [
  "",
  "ERA",
  "HERO",
  "EVENT",
  "FACT_CARD",
  "QUIZ",
  "FILM",
  "MAP",
  "USER",
  "PROFILE",
  "CHAT",
  "INTEGRATION",
  "SESSION",
];

/**
 * Amallar jurnali — faqat o'qish uchun.
 * Kontent ishonchliligi «kim tasdiqladi» degan savolga javobsiz ma'nosiz,
 * shuning uchun yozuvni o'chirish yoki tahrirlash imkoni yo'q.
 */
export default function AdminAuditPage() {
  const [data, setData] = useState<Page<AdminAuditRow> | null>(null);
  const [page, setPage] = useState(0);
  const [type, setType] = useState("");
  const [error, setError] = useState<string | null>(null);

  // setState Promise ichida — effekt tanasida sinxron setState chaqirilmasin
  const load = useCallback(
    () =>
      adminApi<Page<AdminAuditRow>>(
        `/api/admin/audit?page=${page}&size=50${type ? `&entityType=${type}` : ""}`
      )
        .then((result) => {
          setData(result);
          setError(null);
        })
        .catch((e) => setError(e instanceof Error ? e.message : "Не удалось загрузить")),
    [page, type]
  );

  useEffect(() => {
    load();
  }, [load]);

  return (
    <div className="space-y-4">
      <header>
        <h1 className="font-display text-xl font-bold uppercase tracking-[0.14em] text-marble">
          Журнал действий
        </h1>
        <p className="mt-1 max-w-3xl text-sm text-dust">
          Кто, когда и что изменил. Журнал не редактируется. Значения ключей в него не пишутся —
          фиксируется только сам факт замены.
        </p>
      </header>

      {error && <Notice>{error}</Notice>}

      <AdminCard
        title="Записи"
        action={
          <select
            value={type}
            onChange={(e) => {
              setPage(0);
              setType(e.target.value);
            }}
            className="rounded-sm border border-zar/25 bg-steel/70 px-3 py-1.5 text-sm text-parchment outline-none focus:border-zar/70"
          >
            {TYPES.map((t) => (
              <option key={t} value={t}>
                {t || "Все"}
              </option>
            ))}
          </select>
        }
      >
        {!data ? (
          <Spinner />
        ) : data.items.length === 0 ? (
          <Empty>Записей нет.</Empty>
        ) : (
          <>
            <Table head={["Время", "Кто", "Действие", "Объект", "Подробности"]}>
              {data.items.map((row) => (
                <Row key={row.id}>
                  <Cell className="whitespace-nowrap text-[11px] text-dust">
                    {formatDateTime(row.createdAt)}
                  </Cell>
                  <Cell className="whitespace-nowrap text-[12px] font-semibold">{row.adminLogin}</Cell>
                  <Cell>
                    <Pill tone={ACTION_TONE[row.action] ?? "dust"}>{row.action}</Pill>
                  </Cell>
                  <Cell className="whitespace-nowrap text-[11px] text-dust">
                    {row.entityType}
                    {row.entityId ? ` #${row.entityId}` : ""}
                  </Cell>
                  <Cell className="text-[13px]">{row.summary}</Cell>
                </Row>
              ))}
            </Table>
            <Pager page={data.page} pages={data.pages} total={data.total} onChange={setPage} />
          </>
        )}
      </AdminCard>
    </div>
  );
}
