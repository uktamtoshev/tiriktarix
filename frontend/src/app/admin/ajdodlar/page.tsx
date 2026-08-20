"use client";

import CrudPage, { CrudConfig } from "@/components/admin/CrudPage";
import { useEraHeroRefs } from "@/components/admin/useRefs";
import { Spinner, VerifiedPill } from "@/components/admin/ui";
import { formatYear } from "@/lib/admin";

/** Ajdodlar — qahramonlar katalogi va ularning tarjimai hollari. */
export default function AdminHeroesPage() {
  const { eraOptions, eraName, ready } = useEraHeroRefs();

  if (!ready) return <Spinner />;

  const config: CrudConfig = {
    endpoint: "/api/admin/heroes",
    addLabel: "Предок",
    labelOf: (row) => String(row.nameUz ?? row.id),
    searchIn: (row) => `${row.slug} ${row.nameUz} ${row.titleUz ?? ""}`,
    fields: [
      { name: "slug", label: "Slug", required: true, hint: "amir-temur" },
      { name: "nameUz", label: "Имя", required: true },
      { name: "titleUz", label: "Титул", inTable: false },
      {
        name: "eraId",
        label: "Эпоха",
        type: "select",
        options: eraOptions,
        render: (row) => eraName(row.eraId),
      },
      {
        name: "birthYear",
        label: "Год рождения",
        type: "number",
        inTable: false,
        hint: "До н.э. — отрицательным числом",
      },
      {
        name: "deathYear",
        label: "Год смерти",
        type: "number",
        required: true,
        hint: "Нужен для правила диалога «не знает событий после своей смерти»",
        render: (row) =>
          `${formatYear(row.birthYear as number | null)} – ${formatYear(row.deathYear as number | null)}`,
      },
      { name: "portraitEmoji", label: "Эмодзи", inTable: false },
      { name: "greetingUz", label: "Приветствие", type: "textarea", rows: 2, inTable: false },
      { name: "bioUz", label: "Краткая биография", type: "textarea", rows: 3, inTable: false },
      {
        name: "onTopicKeywords",
        label: "Ключевые слова темы",
        type: "list",
        inTable: false,
        hint: "По одному слову в строке — чтобы определить, по теме ли вопрос",
      },
      {
        name: "portraitUrl",
        label: "Портрет (медальон)",
        type: "image",
        inTable: false,
        hint: "Загрузите файл или впишите адрес. JPEG, PNG или WebP, до 8 МБ.",
      },
      {
        name: "portraitFullUrl",
        label: "Портрет в полный рост",
        type: "image",
        inTable: false,
        hint: "Показывается в беседе. Пусто — возьмётся портрет медальона.",
      },
      {
        name: "portraitKind",
        label: "Тип изображения",
        type: "select",
        inTable: false,
        options: [
          { value: "PHOTO", label: "PHOTO — фотография" },
          { value: "MINIATURE", label: "MINIATURE — миниатюра эпохи" },
          { value: "ARTWORK", label: "ARTWORK — представление художника" },
        ],
        hint: "У средневекового предка не может быть «фотографии» — интерфейс говорит об этом прямо",
      },
      { name: "portraitCaptionUz", label: "Подпись к изображению", inTable: false },
      { name: "portraitSource", label: "Источник изображения", inTable: false },
      {
        name: "summaryUz",
        label: "Краткая справка (JSON)",
        type: "textarea",
        rows: 6,
        inTable: false,
        hint: 'Карточка под портретом в диалоге: {"rows":[{"label":"Kim bo\'lgan","value":"…"}],"source":"…"}',
      },
      {
        name: "biographyUz",
        label: "Страница биографии",
        type: "textarea",
        rows: 12,
        inTable: false,
        hint: "Блоки «## заголовок», [n] — ссылка на источник",
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
        label: "Биография подтверждена",
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
            фактов: {String(row.factCards)} · вопросов: {String(row.quizQuestions)} ·{" "}
            диалогов: {String(row.conversations)}
          </span>
        ),
      },
    ],
  };

  return (
    <CrudPage
      title="Предки"
      subtitle="Каталог героев. Отметка подтверждения управляет надписью «текст на проверке у методиста» на странице биографии."
      config={config}
    />
  );
}
