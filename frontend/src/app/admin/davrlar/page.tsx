"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";
import { VerifiedPill } from "@/components/admin/ui";
import { formatYear } from "@/lib/admin";

/** Davrlar — kontent skeleti. O'chirishdan oldin server bog'liq yozuvlarni tekshiradi. */
export default function AdminErasPage() {
  const config: CrudConfig = {
    endpoint: "/api/admin/eras",
    addLabel: "Эпоха",
    labelOf: (row) => String(row.nameUz ?? row.id),
    searchIn: (row) => `${row.code} ${row.nameUz}`,
    fields: [
      { name: "code", label: "Код", required: true, hint: "Латиница, строчные: temuriylar" },
      { name: "nameUz", label: "Название", required: true },
      { name: "ordinal", label: "Порядок", type: "number", required: true },
      {
        name: "yearFrom",
        label: "Год начала",
        type: "number",
        hint: "До н.э. — отрицательным числом: -329",
        render: (row) => formatYear(row.yearFrom as number | null),
      },
      {
        name: "yearTo",
        label: "Год окончания",
        type: "number",
        render: (row) => formatYear(row.yearTo as number | null),
      },
      { name: "descriptionUz", label: "Описание", type: "textarea", rows: 3, inTable: false },
      {
        name: "biographyUz",
        label: "Текст страницы эпохи",
        type: "textarea",
        rows: 10,
        inTable: false,
        hint: "Делится на блоки «## заголовок», [n] — ссылка на источник",
      },
      {
        name: "biographySources",
        label: "Источники (JSON)",
        type: "textarea",
        rows: 3,
        inTable: false,
        hint: '[{"n":1,"title":"...","url":"..."}]',
      },
      {
        name: "biographyVerified",
        label: "Текст подтверждён",
        type: "checkbox",
        hint: "Методист вычитал",
        render: (row) => <VerifiedPill value={Boolean(row.biographyVerified)} />,
      },
    ],
    extraColumns: [
      {
        label: "Связанный контент",
        render: (row) => (
          <span className="text-[11px] text-dust">
            предков: {String(row.heroes)} · событий: {String(row.events)} · фактов:{" "}
            {String(row.factCards)} · вопросов: {String(row.quizQuestions)}
          </span>
        ),
      },
    ],
  };

  return (
    <CrudPage
      title="Эпохи"
      subtitle="Восемь исторических эпох — скелет всего контента. Удалить эпоху можно только тогда, когда к ней ничего не привязано."
      config={config}
    />
  );
}
