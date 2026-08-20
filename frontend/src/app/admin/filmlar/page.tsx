"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";
import { useEraHeroRefs } from "@/components/admin/useRefs";
import { Pill, Spinner, VerifiedPill } from "@/components/admin/ui";

const STATUS_TONE: Record<string, "ok" | "warn" | "info" | "dust"> = {
  PUBLISHED: "ok",
  IN_REVIEW: "info",
  SCRIPT: "dust",
  PLANNED: "dust",
};

/** Kinozal: ishlab chiqarish konveyeri PLANNED → SCRIPT → IN_REVIEW → PUBLISHED. */
export default function AdminFilmsPage() {
  const { eraOptions, heroOptions, eraName, heroName, ready } = useEraHeroRefs();

  if (!ready) return <Spinner />;

  const config: CrudConfig = {
    endpoint: "/api/admin/films",
    addLabel: "Фильм",
    labelOf: (row) => String(row.titleUz ?? row.id),
    searchIn: (row) => `${row.titleUz} ${row.synopsisUz} ${row.source}`,
    defaults: { status: "PLANNED", kind: "SHORT", verified: false, ordinal: 0 },
    fields: [
      { name: "titleUz", label: "Заголовок", required: true },
      {
        name: "kind",
        label: "Тип",
        type: "select",
        required: true,
        options: [
          { value: "SHORT", label: "SHORT — 2–4 минуты" },
          { value: "DOC", label: "DOC — документальный" },
          { value: "FEATURE", label: "FEATURE — полнометражный" },
        ],
      },
      {
        name: "status",
        label: "Статус",
        type: "select",
        required: true,
        options: [
          { value: "PLANNED", label: "PLANNED — запланирован" },
          { value: "SCRIPT", label: "SCRIPT — сценарий написан" },
          { value: "IN_REVIEW", label: "IN_REVIEW — на проверке" },
          { value: "PUBLISHED", label: "PUBLISHED — опубликован" },
        ],
        hint: "Для PUBLISHED обязательна ссылка на видео",
        render: (row) => (
          <Pill tone={STATUS_TONE[String(row.status)] ?? "dust"}>{String(row.status)}</Pill>
        ),
      },
      {
        name: "eraId",
        label: "Эпоха",
        type: "select",
        options: eraOptions,
        render: (row) => (row.eraId ? eraName(row.eraId) : "—"),
      },
      {
        name: "heroId",
        label: "Предок",
        type: "select",
        options: heroOptions,
        inTable: false,
        render: (row) => (row.heroId ? heroName(row.heroId) : "—"),
      },
      { name: "durationMinutes", label: "Длительность (мин.)", type: "number", inTable: false },
      { name: "posterEmoji", label: "Эмодзи", inTable: false },
      { name: "synopsisUz", label: "Краткое содержание", type: "textarea", rows: 4, required: true, inTable: false },
      { name: "videoUrl", label: "Ссылка на видео", inTable: false },
      { name: "source", label: "Источник", required: true, inTable: false },
      { name: "ordinal", label: "Порядок", type: "number", inTable: false },
      {
        name: "verified",
        label: "Сценарий подтверждён",
        type: "checkbox",
        render: (row) => <VerifiedPill value={Boolean(row.verified)} />,
      },
    ],
  };

  return (
    <CrudPage
      title="Фильмы"
      subtitle="Каталог кинозала. Запись хранит не только опубликованное видео, но и стадию производства — интерфейс показывает ребёнку статус честно."
      config={config}
    />
  );
}
