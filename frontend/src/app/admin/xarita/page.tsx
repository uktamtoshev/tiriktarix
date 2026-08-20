"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";
import { useEraHeroRefs } from "@/components/admin/useRefs";
import { Pill, Spinner, VerifiedPill } from "@/components/admin/ui";
import { formatYear } from "@/lib/admin";

/**
 * Zamon xaritasi qatlamlari.
 *
 * Geometriya bitta SVG mo'ljalida saqlanadi (viewBox 0 0 1000 700), shuning
 * uchun frontend hech qanday proyeksiya hisoblamaydi. Chegaralar sxematik —
 * tasdiq belgisi shu sababli muhim.
 */
export default function AdminMapPage() {
  const { eraOptions, eraName, ready } = useEraHeroRefs();

  if (!ready) return <Spinner />;

  const config: CrudConfig = {
    endpoint: "/api/admin/map-features",
    addLabel: "Слой",
    labelOf: (row) => String(row.nameUz ?? row.id),
    searchIn: (row) => `${row.nameUz} ${row.kind} ${row.descriptionUz ?? ""}`,
    defaults: { kind: "CITY", verified: false, ordinal: 0 },
    fields: [
      { name: "nameUz", label: "Название", required: true },
      {
        name: "kind",
        label: "Тип",
        type: "select",
        required: true,
        options: [
          { value: "TERRITORY", label: "TERRITORY — территория" },
          { value: "CITY", label: "CITY — город" },
          { value: "ROUTE", label: "ROUTE — маршрут похода" },
        ],
        render: (row) => <Pill tone="info">{String(row.kind)}</Pill>,
      },
      {
        name: "eraId",
        label: "Эпоха",
        type: "select",
        options: eraOptions,
        hint: "Пусто — слой виден во всех эпохах (так сделаны города)",
        render: (row) => (row.eraId ? eraName(row.eraId) : "все эпохи"),
      },
      {
        name: "geometry",
        label: "Геометрия",
        type: "textarea",
        rows: 3,
        required: true,
        hint: "TERRITORY/ROUTE — SVG path «d»; CITY — «x,y». viewBox: 0 0 1000 700",
        render: (row) => (
          <code className="text-[11px] text-dust">
            {String(row.geometry).slice(0, 40)}
            {String(row.geometry).length > 40 ? "…" : ""}
          </code>
        ),
      },
      {
        name: "minYear",
        label: "Виден с года",
        type: "number",
        inTable: false,
        hint: "Только для слоёв без эпохи",
      },
      { name: "maxYear", label: "Виден до года", type: "number", inTable: false },
      {
        name: "ordinal",
        label: "Порядок",
        type: "number",
        inTable: false,
      },
      { name: "descriptionUz", label: "Описание", type: "textarea", rows: 3, inTable: false },
      { name: "source", label: "Источник", required: true, inTable: false },
      {
        name: "verified",
        label: "Подтверждён",
        type: "checkbox",
        hint: "Неподтверждённый слой помечается на карте как «ожидает подтверждения методиста»",
        render: (row) => <VerifiedPill value={Boolean(row.verified)} />,
      },
    ],
    extraColumns: [
      {
        label: "Годы",
        render: (row) =>
          row.minYear || row.maxYear ? (
            <span className="text-[11px] text-dust">
              {formatYear(row.minYear as number | null)} – {formatYear(row.maxYear as number | null)}
            </span>
          ) : (
            <span className="text-[11px] text-dust">—</span>
          ),
      },
    ],
  };

  return (
    <CrudPage
      title="Слои карты"
      subtitle="Территории, города и маршруты походов. Границы схематичны — точные границы средневековых государств в источниках расходятся."
      config={config}
    />
  );
}
