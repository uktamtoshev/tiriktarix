"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";
import { useEraHeroRefs } from "@/components/admin/useRefs";
import { Spinner } from "@/components/admin/ui";
import { formatYear } from "@/lib/admin";

/** Voqealar lentasi. Milodgacha yillar manfiy son bilan kiritiladi. */
export default function AdminEventsPage() {
  const { eraOptions, eraName, ready } = useEraHeroRefs();

  if (!ready) return <Spinner />;

  const config: CrudConfig = {
    endpoint: "/api/admin/events",
    addLabel: "Событие",
    labelOf: (row) => String(row.titleUz ?? row.id),
    searchIn: (row) => `${row.titleUz} ${row.locationUz ?? ""} ${row.descriptionUz}`,
    fields: [
      {
        name: "eraId",
        label: "Эпоха",
        type: "select",
        options: eraOptions,
        required: true,
        render: (row) => eraName(row.eraId),
      },
      { name: "titleUz", label: "Заголовок", required: true },
      {
        name: "yearFrom",
        label: "Год начала",
        type: "number",
        required: true,
        hint: "До н.э. — отрицательным числом: -329",
        render: (row) => formatYear(row.yearFrom as number | null),
      },
      {
        name: "yearTo",
        label: "Год окончания",
        type: "number",
        render: (row) => formatYear(row.yearTo as number | null),
      },
      { name: "locationUz", label: "Место" },
      { name: "descriptionUz", label: "Описание", type: "textarea", rows: 4, required: true },
    ],
  };

  return (
    <CrudPage
      title="События"
      subtitle="Лента исторических событий — на страницах эпох показывается в хронологическом порядке."
      config={config}
    />
  );
}
