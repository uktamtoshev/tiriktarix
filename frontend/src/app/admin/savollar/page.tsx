"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";
import { useEraHeroRefs, useFactCardRefs } from "@/components/admin/useRefs";
import { Pill, Spinner } from "@/components/admin/ui";

/**
 * Test savollari.
 *
 * Savol fakt kartochkasiga bog'lanishi kerak — bu ishonchlilik konturi.
 * Bog'lanmagan savollar ro'yxatda «manbasiz» deb belgilanadi va bosh sahifadagi
 * navbatga tushadi.
 */
export default function AdminQuizPage() {
  const { eraOptions, heroOptions, eraName, heroName, ready } = useEraHeroRefs();
  const { cardOptions } = useFactCardRefs();

  if (!ready) return <Spinner />;

  const config: CrudConfig = {
    endpoint: "/api/admin/quiz-questions",
    addLabel: "Вопрос",
    labelOf: (row) => String(row.questionUz ?? row.id),
    searchIn: (row) =>
      `${row.questionUz} ${Array.isArray(row.options) ? (row.options as string[]).join(" ") : ""}`,
    defaults: { correctIndex: 0 },
    fields: [
      {
        name: "heroId",
        label: "Предок",
        type: "select",
        options: heroOptions,
        render: (row) => (row.heroId ? heroName(row.heroId) : "—"),
      },
      {
        name: "eraId",
        label: "Эпоха",
        type: "select",
        options: eraOptions,
        hint: "Обязательно одно из двух: предок или эпоха",
        render: (row) => (row.eraId ? eraName(row.eraId) : "—"),
      },
      { name: "questionUz", label: "Вопрос", type: "textarea", rows: 2, required: true },
      {
        name: "options",
        label: "Варианты ответа",
        type: "list",
        required: true,
        rows: 5,
        hint: "По одному варианту в строке, от 2 до 6",
        render: (row) =>
          Array.isArray(row.options) ? (
            <ol className="list-decimal space-y-0.5 ps-4 text-[12px]">
              {(row.options as string[]).map((option, i) => (
                <li key={i} className={i === row.correctIndex ? "text-feruza-bright" : "text-dust"}>
                  {option}
                </li>
              ))}
            </ol>
          ) : (
            "—"
          ),
      },
      {
        name: "correctIndex",
        label: "Номер правильного ответа",
        type: "number",
        required: true,
        hint: "Считая с нуля: первый вариант — 0",
        inTable: false,
      },
      {
        name: "factCardId",
        label: "Карточка-источник",
        type: "select",
        options: cardOptions,
        hint: "Ответ должен содержаться именно в этой карточке",
        render: (row) =>
          row.factCardId ? (
            <span className="text-[11px] text-dust">#{String(row.factCardId)}</span>
          ) : (
            <Pill tone="warn">Без источника</Pill>
          ),
      },
      { name: "explanationUz", label: "Пояснение", type: "textarea", rows: 3, inTable: false },
      // ===== Русский перевод (V108). Пусто — показывается узбекский оригинал. =====
      {
        name: "questionRu",
        label: "Вопрос · RU",
        type: "textarea",
        rows: 2,
        inTable: false,
        hint: "Пусто — в русском интерфейсе покажется узбекский оригинал",
      },
      {
        name: "optionsRu",
        label: "Варианты · RU",
        type: "list",
        inTable: false,
        hint: "ТОТ ЖЕ порядок, что и в оригинале — номер правильного ответа общий. Если число вариантов не совпадёт, вопрос целиком покажется по-узбекски",
      },
      {
        name: "explanationRu",
        label: "Пояснение · RU",
        type: "textarea",
        rows: 3,
        inTable: false,
      },
    ],
  };

  return (
    <CrudPage
      title="Вопросы тестов"
      subtitle="Вопросы тестов и микро-квизов. Правильный ответ в списке подсвечен зелёным."
      config={config}
    />
  );
}
