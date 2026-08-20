"use client";

import { ReactNode, useCallback, useEffect, useMemo, useState } from "react";
import { adminApi, adminApiForm } from "@/lib/admin";
import Modal from "./Modal";
import {
  AdminButton,
  AdminCard,
  Cell,
  Empty,
  Notice,
  Row,
  Spinner,
  Table,
} from "./ui";

/**
 * Kontent bo'limlari uchun umumiy CRUD ekrani.
 *
 * NEGA UMUMIY. Panelda yettita jadval bor va ular bir xil ishlaydi: ro'yxat,
 * qidiruv, «qo'shish», tahrir oynasi, o'chirish. Har biri uchun alohida ekran
 * yozilsa, ettita joyda bir xil xatolar tuzatilishi kerak bo'lardi. Shuning
 * uchun ekran maydonlar tavsifidan quriladi, sahifa esa faqat shu tavsifni
 * beradi.
 */

export type FieldType =
  | "text"
  | "textarea"
  | "number"
  | "select"
  | "checkbox"
  | "list"
  /** Matnli manzil + yuklash tugmasi: fayl serverga ketadi, maydonga URL tushadi. */
  | "image";

export type FieldOption = { value: string | number | null; label: string };

export type FieldDef = {
  name: string;
  label: string;
  type?: FieldType;
  options?: FieldOption[];
  required?: boolean;
  hint?: string;
  rows?: number;
  /** Shaklda butun kenglikni egallaydi. */
  wide?: boolean;
  /** Jadvalda ustun sifatida ko'rsatiladimi. */
  inTable?: boolean;
  /** Jadval katagini o'zgacha chizish. */
  render?: (row: Record<string, unknown>) => ReactNode;
};

export type CrudConfig = {
  endpoint: string;
  fields: FieldDef[];
  /** Yozuvni o'chirish tasdig'ida ko'rsatiladigan nom. */
  labelOf: (row: Record<string, unknown>) => string;
  /** Qidiruv uchun matn. */
  searchIn?: (row: Record<string, unknown>) => string;
  /**
   * Qo'shimcha ustunlar: foydalanish hisoblari yoki tez amallar. {@code reload}
   * — ro'yxatni qayta yuklash (masalan, «tasdiqlash» tugmasidan keyin).
   */
  extraColumns?: {
    label: string;
    render: (row: Record<string, unknown>, reload: () => Promise<void>) => ReactNode;
  }[];
  /** Yangi yozuv uchun boshlang'ich qiymatlar. */
  defaults?: Record<string, unknown>;
  addLabel?: string;
  /**
   * Ro'yxatga qo'shish/o'chirish mumkinmi. Ba'zi jadvallarda ro'yxatning
   * O'ZI kodga bog'langan (masalan, qahramon tiplari: har birining qo'lda
   * chizilgan tasviri bor) — u yerda faqat matn tahrirlanadi. Tugmani
   * ko'rsatib qo'yib, so'ng serverdan xato qaytarish — yomon interfeys.
   */
  canCreate?: boolean;
  canDelete?: boolean;
};

type Values = Record<string, unknown>;

function emptyValue(field: FieldDef): unknown {
  switch (field.type) {
    case "checkbox":
      return false;
    case "list":
      return [];
    default:
      return null;
  }
}

function toFormValue(value: unknown, field: FieldDef): string | boolean {
  if (field.type === "checkbox") return Boolean(value);
  if (field.type === "list") return Array.isArray(value) ? value.join("\n") : "";
  if (value === null || value === undefined) return "";
  return String(value);
}

function fromFormValue(raw: string | boolean, field: FieldDef): unknown {
  if (field.type === "checkbox") return Boolean(raw);
  const text = String(raw);
  if (field.type === "list") {
    return text
      .split("\n")
      .map((line) => line.trim())
      .filter(Boolean);
  }
  if (text.trim() === "") return null;
  if (field.type === "number") {
    const parsed = Number(text);
    return Number.isNaN(parsed) ? null : parsed;
  }
  if (field.type === "select") {
    // select qiymatlari matn bo'lib keladi; raqamli ro'yxatlarda raqamga qaytariladi
    const option = field.options?.find((o) => String(o.value) === text);
    return option ? option.value : text;
  }
  return text;
}

export default function CrudPage({
  title,
  subtitle,
  config,
}: {
  title: string;
  subtitle?: string;
  config: CrudConfig;
}) {
  const [rows, setRows] = useState<Values[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [search, setSearch] = useState("");
  const [editing, setEditing] = useState<Values | null>(null);
  const [creating, setCreating] = useState(false);
  const [form, setForm] = useState<Values>({});
  const [saving, setSaving] = useState(false);
  const [formError, setFormError] = useState<string | null>(null);

  // setState faqat Promise ichida: effekt tanasidagi sinxron setState
  // kaskadli renderlarni keltirib chiqaradi (Header.tsx dagi kabi).
  const load = useCallback(
    () =>
      adminApi<Values[]>(config.endpoint)
        .then((data) => {
          setRows(data);
          setError(null);
        })
        .catch((e) => {
          setError(e instanceof Error ? e.message : "Не удалось загрузить");
          setRows([]);
        }),
    [config.endpoint]
  );

  useEffect(() => {
    load();
  }, [load]);

  const visible = useMemo(() => {
    if (!rows) return [];
    const q = search.trim().toLowerCase();
    if (!q || !config.searchIn) return rows;
    return rows.filter((row) => config.searchIn!(row).toLowerCase().includes(q));
  }, [rows, search, config]);

  const tableFields = config.fields.filter((f) => f.inTable !== false);

  function openCreate() {
    const initial: Values = {};
    for (const field of config.fields) initial[field.name] = emptyValue(field);
    setForm({ ...initial, ...(config.defaults ?? {}) });
    setFormError(null);
    setCreating(true);
    setEditing(null);
  }

  function openEdit(row: Values) {
    const initial: Values = {};
    for (const field of config.fields) initial[field.name] = row[field.name] ?? emptyValue(field);
    setForm(initial);
    setFormError(null);
    setEditing(row);
    setCreating(false);
  }

  function closeForm() {
    setEditing(null);
    setCreating(false);
    setFormError(null);
  }

  async function save() {
    setSaving(true);
    setFormError(null);
    try {
      const id = editing?.id as number | undefined;
      await adminApi(id ? `${config.endpoint}/${id}` : config.endpoint, {
        method: id ? "PUT" : "POST",
        body: JSON.stringify(form),
      });
      closeForm();
      await load();
    } catch (e) {
      setFormError(e instanceof Error ? e.message : "Не удалось сохранить");
    } finally {
      setSaving(false);
    }
  }

  async function remove(row: Values) {
    if (!confirm(`Удалить «${config.labelOf(row)}»? Действие необратимо.`)) return;
    setError(null);
    try {
      await adminApi(`${config.endpoint}/${row.id}`, { method: "DELETE" });
      await load();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Не удалось удалить");
    }
  }

  return (
    <div className="space-y-4">
      <header className="flex flex-wrap items-end justify-between gap-3">
        <div>
          <h1 className="font-display text-xl font-bold uppercase tracking-[0.14em] text-marble">
            {title}
          </h1>
          {subtitle && <p className="mt-1 max-w-2xl text-sm text-dust">{subtitle}</p>}
        </div>
        <div className="flex items-center gap-2">
          {config.searchIn && (
            <input
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              placeholder="Поиск…"
              className="w-52 rounded-sm border border-zar/25 bg-steel/70 px-3 py-2 text-sm text-parchment outline-none transition-colors focus:border-zar/70"
            />
          )}
          {config.canCreate !== false && (
            <AdminButton variant="zar" onClick={openCreate}>
              + {config.addLabel ?? "Добавить"}
            </AdminButton>
          )}
        </div>
      </header>

      {error && <Notice>{error}</Notice>}

      <AdminCard>
        {rows === null ? (
          <Spinner />
        ) : visible.length === 0 ? (
          <Empty>Записей нет.</Empty>
        ) : (
          <>
            <Table
              head={[
                "ID",
                ...tableFields.map((f) => f.label),
                ...(config.extraColumns ?? []).map((c) => c.label),
                "",
              ]}
            >
              {visible.map((row) => (
                <Row key={String(row.id)}>
                  <Cell className="text-[11px] text-dust">{String(row.id)}</Cell>
                  {tableFields.map((field) => (
                    <Cell key={field.name}>
                      {field.render ? field.render(row) : defaultCell(row[field.name], field)}
                    </Cell>
                  ))}
                  {(config.extraColumns ?? []).map((column) => (
                    <Cell key={column.label}>{column.render(row, load)}</Cell>
                  ))}
                  <Cell className="whitespace-nowrap text-right">
                    <AdminButton size="sm" onClick={() => openEdit(row)}>
                      Изменить
                    </AdminButton>{" "}
                    {config.canDelete !== false && (
                      <AdminButton size="sm" variant="qon" onClick={() => remove(row)}>
                        Удалить
                      </AdminButton>
                    )}
                  </Cell>
                </Row>
              ))}
            </Table>
            <p className="mt-3 text-[11px] text-dust">Всего: {visible.length}</p>
          </>
        )}
      </AdminCard>

      {(creating || editing) && (
        <Modal
          wide
          title={editing ? `Изменение: ${config.labelOf(editing)}` : `Добавление: ${title}`}
          onClose={closeForm}
          footer={
            <>
              <AdminButton onClick={closeForm}>Отмена</AdminButton>
              <AdminButton variant="zar" onClick={save} disabled={saving}>
                {saving ? "Сохранение…" : "Сохранить"}
              </AdminButton>
            </>
          }
        >
          {formError && (
            <div className="mb-4">
              <Notice>{formError}</Notice>
            </div>
          )}
          <div className="grid gap-4 sm:grid-cols-2">
            {config.fields.map((field) => (
              <FieldInput
                key={field.name}
                field={field}
                value={toFormValue(form[field.name], field)}
                onChange={(raw) =>
                  setForm((prev) => ({ ...prev, [field.name]: fromFormValue(raw, field) }))
                }
              />
            ))}
          </div>
        </Modal>
      )}
    </div>
  );
}

/**
 * Jadval katagi. Uzun matnlar qisqartiriladi va kengligi cheklanadi: aks holda
 * bitta fakt kartochkasi qatorni ekran balandligicha cho'zib yuboradi va
 * ro'yxatni ko'zdan kechirib bo'lmaydi. To'liq matn tahrir oynasida.
 */
function defaultCell(value: unknown, field: FieldDef): ReactNode {
  if (field.type === "checkbox") return value ? "да" : "нет";
  if (Array.isArray(value)) return value.join(", ") || "—";
  if (value === null || value === undefined || value === "") return "—";
  const text = String(value);
  if (text.length <= 40) return text;
  // Bir qatorga sig'diriladi: to'liq matn `title` da va tahrir oynasida
  return (
    <span className="block w-64 truncate" title={text}>
      {text}
    </span>
  );
}

function FieldInput({
  field,
  value,
  onChange,
}: {
  field: FieldDef;
  value: string | boolean;
  onChange: (value: string | boolean) => void;
}) {
  const inputClass =
    "w-full rounded-sm border border-zar/25 bg-steel/70 px-3 py-2 text-sm text-parchment outline-none transition-colors focus:border-zar/70";
  const id = `field-${field.name}`;

  return (
    <div className={field.wide || field.type === "textarea" || field.type === "list" ? "sm:col-span-2" : ""}>
      <label
        htmlFor={id}
        className="block font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-zar/90"
      >
        {field.label}
        {field.required && <span className="text-[#e8a99f]"> *</span>}
      </label>

      {field.type === "checkbox" ? (
        <label className="mt-2 flex items-center gap-2 text-sm text-parchment">
          <input
            id={id}
            type="checkbox"
            checked={Boolean(value)}
            onChange={(e) => onChange(e.target.checked)}
            className="h-4 w-4 accent-[#c8a247]"
          />
          {field.hint ?? "Да"}
        </label>
      ) : field.type === "select" ? (
        <select
          id={id}
          value={String(value)}
          onChange={(e) => onChange(e.target.value)}
          className={`mt-2 ${inputClass}`}
        >
          <option value="">—</option>
          {(field.options ?? []).map((option) => (
            <option key={String(option.value)} value={String(option.value)}>
              {option.label}
            </option>
          ))}
        </select>
      ) : field.type === "textarea" || field.type === "list" ? (
        <textarea
          id={id}
          value={String(value)}
          rows={field.rows ?? (field.type === "list" ? 4 : 6)}
          onChange={(e) => onChange(e.target.value)}
          className={`mt-2 ${inputClass} font-mono text-[13px] leading-relaxed`}
        />
      ) : field.type === "image" ? (
        <ImageField id={id} value={String(value)} inputClass={inputClass} onChange={onChange} />
      ) : (
        <input
          id={id}
          type={field.type === "number" ? "number" : "text"}
          value={String(value)}
          onChange={(e) => onChange(e.target.value)}
          className={`mt-2 ${inputClass}`}
        />
      )}

      {field.hint && field.type !== "checkbox" && (
        <p className="mt-1 text-[11px] text-dust">{field.hint}</p>
      )}
    </div>
  );
}

/**
 * Rasm maydoni: manzilni qo'lda yozish ham, faylni yuklash ham mumkin.
 *
 * NEGA IKKALASI. Eski portretlar `frontend/public/portretlar/` da yotibdi va
 * ularning manzillari qo'lda yozilgan — ular ishlashda davom etishi kerak.
 * Yangi rasm esa endi shu yerdan yuklanadi: metodist dasturchini kutmaydi.
 *
 * Yuklash yozuvni SAQLAMAYDI — u faqat maydonni to'ldiradi. Saqlash baribir
 * «Сохранить» tugmasi orqali bo'ladi, ya'ni bekor qilish imkoni yo'qolmaydi.
 */
function ImageField({
  id,
  value,
  inputClass,
  onChange,
}: {
  id: string;
  value: string;
  inputClass: string;
  onChange: (next: string | boolean) => void;
}) {
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  async function upload(file: File) {
    setBusy(true);
    setError(null);
    try {
      const body = new FormData();
      body.append("file", file);
      // FormData da Content-Type ni QO'LDA qo'yish mumkin emas: brauzer
      // boundary bilan birga o'zi qo'yadi.
      const res = await adminApiForm<{ url: string }>("/api/admin/uploads/portrait", body);
      onChange(res.url);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Не удалось загрузить");
    } finally {
      setBusy(false);
    }
  }

  return (
    <div className="mt-2 space-y-2">
      <input
        id={id}
        type="text"
        value={value}
        onChange={(e) => onChange(e.target.value)}
        className={inputClass}
        placeholder="/uploads/… или /portretlar/…"
      />
      <div className="flex flex-wrap items-center gap-3">
        <label className="cursor-pointer rounded-sm border border-zar/40 px-3 py-1.5 text-[11px] font-semibold uppercase tracking-[0.14em] text-zar transition-colors hover:border-zar/80">
          {busy ? "Загрузка…" : "Загрузить файл"}
          <input
            type="file"
            accept="image/jpeg,image/png,image/webp"
            disabled={busy}
            className="hidden"
            onChange={(e) => {
              const file = e.target.files?.[0];
              // Qiymatni tozalaymiz: bir xil faylni qayta tanlash ham ishlasin.
              e.target.value = "";
              if (file) upload(file);
            }}
          />
        </label>
        {value && (
          /* eslint-disable-next-line @next/next/no-img-element */
          <img
            src={value}
            alt=""
            className="h-14 w-14 rounded-sm border border-zar/25 object-cover"
          />
        )}
      </div>
      {error && <p className="text-[11px] text-[#e8a99f]">{error}</p>}
    </div>
  );
}
