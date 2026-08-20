"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";

/**
 * Yutuqlar (V107).
 *
 * MA'LUMOT BAZADA, QOIDA KODDA. Metodist matnni, emojini va chegarani
 * o'zgartira oladi. «Показатель» esa — qaysi ko'rsatkich bo'yicha o'lchanishi —
 * faqat kod biladigan ro'yxatdan tanlanadi: yangi TUR ko'rsatkich uchun
 * dasturchi kerak.
 *
 * Yutuqning bajarilgani saqlanmaydi — u har safar profil ma'lumotlaridan qayta
 * hisoblanadi, shuning uchun chegarani o'zgartirish eski natijalarni buzmaydi.
 */
export default function AdminAchievementsPage() {
  const config: CrudConfig = {
    endpoint: "/api/admin/achievements",
    addLabel: "Достижение",
    labelOf: (row) => String(row.titleUz ?? row.id),
    searchIn: (row) => `${row.code} ${row.titleUz} ${row.titleRu ?? ""}`,
    defaults: { metric: "XP", target: 1, ordinal: 0, emoji: "🏅" },
    fields: [
      { name: "code", label: "Код", required: true, hint: "Латиница, строчные: birinchi-qadam" },
      { name: "emoji", label: "Эмодзи", required: true },
      { name: "titleUz", label: "Название (uz)", required: true },
      { name: "titleRu", label: "Название (ru)", hint: "Пусто — покажется узбекский оригинал" },
      {
        name: "descriptionUz",
        label: "Описание (uz)",
        type: "textarea",
        rows: 2,
        required: true,
        inTable: false,
      },
      {
        name: "descriptionRu",
        label: "Описание (ru)",
        type: "textarea",
        rows: 2,
        inTable: false,
        hint: "Пусто — покажется узбекский оригинал",
      },
      {
        name: "metric",
        label: "Показатель",
        type: "select",
        required: true,
        hint: "Список задан кодом: новый показатель добавляет разработчик",
        options: [
          { value: "XP", label: "XP — накоплено очков" },
          { value: "STREAK_DAYS", label: "Серия — дней подряд" },
          { value: "TOTAL_QUIZZES", label: "Тестов пройдено" },
          { value: "PERFECT_QUIZZES", label: "Тестов без ошибок" },
          { value: "TOTAL_QUESTIONS", label: "Всего вопросов отвечено" },
          { value: "CONVERSATIONS", label: "Бесед начато" },
          { value: "HEROES_TALKED", label: "Разных предков" },
          { value: "RIDDLE_SOLVED", label: "Загадка дня решена" },
        ],
      },
      {
        name: "target",
        label: "Порог",
        type: "number",
        required: true,
        hint: "Сколько нужно, чтобы получить значок",
      },
      { name: "ordinal", label: "Порядок", type: "number" },
    ],
  };

  return <CrudPage title="Достижения" config={config} />;
}
