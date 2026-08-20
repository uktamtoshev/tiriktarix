"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";

/**
 * Qahramon tiplari (V107) — FAQAT TAHRIRLASH.
 *
 * NEGA QO'SHISH VA O'CHIRISH YO'Q. Har bir tipning qo'lda chizilgan tasviri bor
 * va u frontend kodida yashaydi. Chizmasi yo'q yangi tip qo'shilsa, bola bo'sh
 * figurani ko'rardi; mavjud tip o'chirilsa — uni tanlagan bolalarning profili
 * buzilardi. Shu sabab bu yerda faqat matn o'zgaradi, ro'yxatning o'zi esa
 * chizma bilan birga dasturchi tomonidan qo'shiladi.
 *
 * `code` ham o'zgarmaydi: aynan u tipni chizmaga bog'laydi.
 */
export default function AdminArchetypesPage() {
  const config: CrudConfig = {
    endpoint: "/api/admin/archetypes",
    // Ro'yxatning o'zi kodga (chizmalarga) bog'langan — faqat matn tahrirlanadi.
    canCreate: false,
    canDelete: false,
    labelOf: (row) => String(row.nameUz ?? row.id),
    searchIn: (row) => `${row.code} ${row.nameUz} ${row.nameRu ?? ""}`,
    fields: [
      {
        name: "code",
        label: "Код",
        required: true,
        hint: "Менять нельзя: к коду привязан рисунок в коде фронтенда",
      },
      {
        name: "gender",
        label: "Пол",
        type: "select",
        required: true,
        options: [
          { value: "MALE", label: "Мальчик" },
          { value: "FEMALE", label: "Девочка" },
        ],
      },
      { name: "nameUz", label: "Название (uz)", required: true },
      { name: "nameRu", label: "Название (ru)", hint: "Пусто — покажется узбекский оригинал" },
      {
        name: "taglineUz",
        label: "Описание (uz)",
        type: "textarea",
        rows: 2,
        required: true,
        inTable: false,
      },
      {
        name: "taglineRu",
        label: "Описание (ru)",
        type: "textarea",
        rows: 2,
        inTable: false,
        hint: "Пусто — покажется узбекский оригинал",
      },
      { name: "ordinal", label: "Порядок", type: "number" },
    ],
  };

  return (
    <CrudPage
      title="Типы героев"
      subtitle="Только текст: список типов задан рисунками в коде, поэтому добавить или удалить тип из панели нельзя."
      config={config}
    />
  );
}
