"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";
import { useEraHeroRefs } from "@/components/admin/useRefs";
import { AdminButton, Spinner, VerifiedPill } from "@/components/admin/ui";
import { adminApi } from "@/lib/admin";

/**
 * Fakt kartochkalari — platformaning yagona ishonchli kontent birligi.
 *
 * Ro'yxatda tasdiqlash tugmasi bevosita qatorda turadi: metodistning asosiy
 * ishi — o'nlab kartochkani ketma-ket ko'rib chiqish, har biri uchun oyna
 * ochish uni sekinlashtirardi.
 */
export default function AdminFactCardsPage() {
  const { eraOptions, heroOptions, eraName, heroName, ready } = useEraHeroRefs();

  if (!ready) return <Spinner />;

  const config: CrudConfig = {
    endpoint: "/api/admin/fact-cards",
    addLabel: "Карточка",
    labelOf: (row) => String(row.topicUz ?? row.id),
    searchIn: (row) =>
      `${row.topicUz} ${row.questionUz ?? ""} ${row.factUz} ${row.source} ${
        Array.isArray(row.keywords) ? (row.keywords as string[]).join(" ") : ""
      }`,
    defaults: { verified: false },
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
      { name: "topicUz", label: "Тема", required: true },
      {
        name: "questionUz",
        label: "Вопрос",
        type: "textarea",
        rows: 2,
        inTable: false,
        hint: "Лицевая сторона флеш-карточки. Вопрос должен быть самодостаточным: «Amir Temur qachon tug'ilgan?»",
      },
      { name: "factUz", label: "Текст факта", type: "textarea", rows: 5, required: true },
      {
        name: "detailUz",
        label: "Подробно",
        type: "textarea",
        rows: 6,
        inTable: false,
        hint: "Раскрывается по кнопке «Batafsil» в библиотеке. Только проверенные детали: даты, места, контекст. Пусто — кнопка ведёт на биографию, как раньше",
      },
      // ===== Русский перевод (V108). Пусто — показывается узбекский оригинал. =====
      {
        name: "topicRu",
        label: "Тема · RU",
        inTable: false,
        hint: "Пусто — в русском интерфейсе покажется узбекский оригинал",
      },
      {
        name: "questionRu",
        label: "Вопрос · RU",
        type: "textarea",
        rows: 2,
        inTable: false,
      },
      {
        name: "factRu",
        label: "Текст факта · RU",
        type: "textarea",
        rows: 5,
        inTable: false,
        hint: "Голос предка от первого лица — как в оригинале. Даты, имена и названия не меняются",
      },
      {
        name: "detailRu",
        label: "Подробно · RU",
        type: "textarea",
        rows: 6,
        inTable: false,
      },
      {
        name: "keywords",
        label: "Ключевые слова",
        type: "list",
        inTable: false,
        hint: "По одному в строке — для поиска в режиме ключевых слов",
      },
      { name: "source", label: "Источник", required: true, hint: "Учебник, энциклопедия, UNESCO…" },
      {
        name: "verified",
        label: "Подтверждена",
        type: "checkbox",
        hint: "В ответы и тесты попадает только подтверждённая карточка",
        render: (row) => <VerifiedPill value={Boolean(row.verified)} />,
      },
    ],
    extraColumns: [
      {
        label: "Использование",
        render: (row) => (
          <span className="text-[11px] text-dust">
            вопросов: {String(row.usedInQuiz)} · ответов: {String(row.usedInChat)}
          </span>
        ),
      },
      {
        label: "Быстрое действие",
        render: (row, reload) => (
          <AdminButton
            size="sm"
            variant={row.verified ? "steel" : "zar"}
            onClick={async () => {
              await adminApi(`/api/admin/fact-cards/${row.id}/verify`, {
                method: "POST",
                body: JSON.stringify({ verified: !row.verified }),
              });
              await reload();
            }}
          >
            {row.verified ? "Снять" : "Подтвердить"}
          </AdminButton>
        ),
      },
    ],
  };

  return (
    <CrudPage
      title="Карточки фактов"
      subtitle="На эти карточки опирается каждый ответ, вопрос теста и событие. Карточка без источника и подтверждения на платформе не показывается."
      config={config}
    />
  );
}
