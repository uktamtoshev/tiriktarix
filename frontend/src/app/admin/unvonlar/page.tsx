"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";

/**
 * Unvonlar zinapoyasi (V107).
 *
 * Daraja XP dan hisoblanadi (formula kodda), unvon esa — darajaning oralig'i.
 * Shuning uchun bu yerda faqat QUYI chegara ko'rsatiladi: keyingi pog'onagacha
 * bo'lgan hamma daraja shu unvonga tegishli.
 *
 * Server ikkita shartni qo'riqlaydi: zinapoya 1-darajadan boshlanishi kerak va
 * bir darajada ikkita unvon bo'lmasligi kerak.
 */
export default function AdminRanksPage() {
  const config: CrudConfig = {
    endpoint: "/api/admin/ranks",
    addLabel: "Звание",
    labelOf: (row) => String(row.nameUz ?? row.id),
    searchIn: (row) => `${row.nameUz} ${row.nameRu ?? ""}`,
    defaults: { minLevel: 1, emoji: "🌱" },
    fields: [
      {
        name: "minLevel",
        label: "С какого уровня",
        type: "number",
        required: true,
        hint: "Лестница обязана начинаться с 1 — иначе новый ученик остаётся без звания",
      },
      { name: "emoji", label: "Эмодзи", required: true },
      { name: "nameUz", label: "Название (uz)", required: true },
      { name: "nameRu", label: "Название (ru)", hint: "Пусто — покажется узбекский оригинал" },
    ],
  };

  return (
    <CrudPage
      title="Звания"
      subtitle="Ступени, которые ученик проходит по мере роста уровня. Изменения видны сразу — перезапуск сервера не нужен."
      config={config}
    />
  );
}
