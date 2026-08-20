"use client";

import { useCallback, useEffect, useState } from "react";
import { AdminIntegration, adminApi, formatDateTime } from "@/lib/admin";
import Modal from "@/components/admin/Modal";
import {
  AdminButton,
  AdminCard,
  Notice,
  Pill,
  Spinner,
} from "@/components/admin/ui";

/**
 * TTS / STT / LLM ulanishlari va kalitlari.
 *
 * NEGA ALOHIDA EKRAN. Kalitlar tez-tez yangilanadi, shuning uchun ular env da
 * emas, bazada turadi va shu sahifadan almashtiriladi — serverni qayta ishga
 * tushirish shart emas. Almashtirish yagona qatorda, bir bosishda bajariladi:
 * bu bo'limdagi eng ko'p takrorlanadigan amal.
 *
 * KALIT KO'RSATILMAYDI. Server hech qachon kalit qiymatini qaytarmaydi —
 * faqat oxirgi to'rt belgi. Panelga kirish huquqi kalitlarni ko'chirib olish
 * huquqini bermasligi kerak.
 */

const KIND_LABEL: Record<string, string> = {
  TTS: "Озвучка (TTS)",
  STT: "Распознавание речи (STT)",
  LLM: "Движок диалогов (LLM)",
  OTHER: "Другое",
};

const KINDS = ["TTS", "STT", "LLM", "OTHER"] as const;

export default function AdminIntegrationsPage() {
  const [items, setItems] = useState<AdminIntegration[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [notice, setNotice] = useState<string | null>(null);
  const [editing, setEditing] = useState<AdminIntegration | null>(null);
  const [creating, setCreating] = useState(false);

  // setState Promise ichida — effekt tanasida sinxron setState chaqirilmasin
  const load = useCallback(
    () =>
      adminApi<AdminIntegration[]>("/api/admin/integrations")
        .then((data) => {
          setItems(data);
          setError(null);
        })
        .catch((e) => {
          setError(e instanceof Error ? e.message : "Не удалось загрузить");
          setItems([]);
        }),
    []
  );

  useEffect(() => {
    load();
  }, [load]);

  async function act(fn: () => Promise<unknown>, message?: string) {
    setError(null);
    setNotice(null);
    try {
      await fn();
      await load();
      if (message) setNotice(message);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Действие не выполнено");
    }
  }

  return (
    <div className="space-y-4">
      <header className="flex flex-wrap items-end justify-between gap-3">
        <div>
          <h1 className="font-display text-xl font-bold uppercase tracking-[0.14em] text-marble">
            API-ключи
          </h1>
          <p className="mt-1 max-w-3xl text-sm text-dust">
            Подключения озвучки (TTS), распознавания речи (STT) и других сервисов. Ключ хранится
            в базе в зашифрованном виде и меняется прямо отсюда — перезапускать сервер не нужно.
          </p>
        </div>
        <AdminButton variant="zar" onClick={() => setCreating(true)}>
          + Подключение
        </AdminButton>
      </header>

      {error && <Notice>{error}</Notice>}
      {notice && <Notice tone="ok">{notice}</Notice>}

      {!items ? (
        <Spinner />
      ) : (
        <div className="grid gap-4 lg:grid-cols-2">
          {items.map((item) => (
            <IntegrationCard
              key={item.id}
              item={item}
              onEdit={() => setEditing(item)}
              onAct={act}
            />
          ))}
        </div>
      )}

      <AdminCard title="Как используются ключи">
        <ul className="space-y-1.5 text-[13px] text-dust">
          <li>
            • Код сервиса берёт ключ через <code className="text-zar-bright">IntegrationKeyService.secretOf(&quot;TTS_MAIN&quot;)</code>{" "}
            — то есть сразу после замены следующий запрос уходит уже с новым ключом.
          </li>
          <li>
            • Ключ шифруется алгоритмом AES-GCM. Ключ шифрования лежит не в базе, а в переменной
            окружения: <code className="text-zar-bright">TIRIK_TARIX_SECRETS_KEY</code>.
          </li>
          <li>
            • Появилась метка «Не расшифровывается» — значит сменился ключ шифрования.
            В этом случае ключ нужно ввести заново.
          </li>
          <li>• Значение ключа никогда не попадает ни в журнал, ни в ответы API.</li>
        </ul>
      </AdminCard>

      {(creating || editing) && (
        <IntegrationModal
          item={editing}
          onClose={() => {
            setCreating(false);
            setEditing(null);
          }}
          onDone={() => {
            setCreating(false);
            setEditing(null);
            load();
          }}
        />
      )}
    </div>
  );
}

function IntegrationCard({
  item,
  onEdit,
  onAct,
}: {
  item: AdminIntegration;
  onEdit: () => void;
  onAct: (fn: () => Promise<unknown>, message?: string) => Promise<void>;
}) {
  const [secret, setSecret] = useState("");
  const [busy, setBusy] = useState(false);

  async function rotate() {
    if (!secret.trim()) return;
    setBusy(true);
    await onAct(
      () =>
        adminApi(`/api/admin/integrations/${item.id}/secret`, {
          method: "PUT",
          body: JSON.stringify({ secret: secret.trim() }),
        }),
      `${item.code}: ключ обновлён.`
    );
    setSecret("");
    setBusy(false);
  }

  return (
    <section className="rounded-md border border-zar/20 bg-basalt/70 p-4">
      <header className="flex flex-wrap items-start justify-between gap-2">
        <div className="min-w-0">
          <div className="flex flex-wrap items-center gap-2">
            <Pill tone="info">{item.kind}</Pill>
            {item.active ? <Pill tone="ok">Включено</Pill> : <Pill tone="dust">Выключено</Pill>}
            {!item.readable && <Pill tone="warn">Не расшифровывается</Pill>}
          </div>
          <h2 className="mt-2 font-display text-sm font-semibold uppercase tracking-[0.14em] text-marble">
            {item.label}
          </h2>
          <p className="mt-0.5 font-mono text-[11px] text-dust">{item.code}</p>
        </div>
        <AdminButton size="sm" onClick={onEdit}>
          Настроить
        </AdminButton>
      </header>

      <dl className="mt-3 grid grid-cols-[auto_1fr] gap-x-3 gap-y-1 text-[12px]">
        <dt className="text-dust">Сервис</dt>
        <dd className="text-parchment">{item.provider || "—"}</dd>
        <dt className="text-dust">Адрес</dt>
        <dd className="truncate text-parchment">{item.baseUrl || "—"}</dd>
        <dt className="text-dust">Модель / голос</dt>
        <dd className="text-parchment">{item.model || "—"}</dd>
        <dt className="text-dust">Ключ</dt>
        <dd className="text-parchment">
          {item.hasSecret ? (
            <span className="font-mono">•••••••• {item.secretHint}</span>
          ) : (
            <span className="text-[#e8a99f]">не задан</span>
          )}
        </dd>
        <dt className="text-dust">Обновлён</dt>
        <dd className="text-parchment">
          {formatDateTime(item.updatedAt)}
          {item.updatedBy ? ` · ${item.updatedBy}` : ""}
        </dd>
      </dl>

      {item.notes && (
        <p className="mt-3 whitespace-pre-line rounded-sm border border-steel-2 bg-steel/40 px-3 py-2 text-[12px] text-dust">
          {item.notes}
        </p>
      )}

      {/* Kalitni almashtirish — bo'limdagi eng tez-tez bajariladigan amal */}
      <div className="mt-3 flex flex-wrap items-center gap-2">
        <input
          type="password"
          value={secret}
          onChange={(e) => setSecret(e.target.value)}
          placeholder="Вставьте новый ключ…"
          autoComplete="off"
          className="min-w-0 flex-1 rounded-sm border border-zar/25 bg-steel/70 px-3 py-2 font-mono text-[13px] text-parchment outline-none focus:border-zar/70"
        />
        <AdminButton variant="zar" onClick={rotate} disabled={busy || !secret.trim()}>
          {busy ? "…" : item.hasSecret ? "Заменить" : "Сохранить"}
        </AdminButton>
        {item.hasSecret && (
          <AdminButton
            variant="qon"
            onClick={() => {
              if (confirm(`Удалить ключ ${item.code}? Сервис перестанет работать.`)) {
                onAct(
                  () => adminApi(`/api/admin/integrations/${item.id}/secret`, { method: "DELETE" }),
                  `${item.code}: ключ удалён.`
                );
              }
            }}
          >
            Удалить ключ
          </AdminButton>
        )}
      </div>
    </section>
  );
}

function IntegrationModal({
  item,
  onClose,
  onDone,
}: {
  item: AdminIntegration | null;
  onClose: () => void;
  onDone: () => void;
}) {
  const [code, setCode] = useState(item?.code ?? "");
  const [kind, setKind] = useState(item?.kind ?? "TTS");
  const [label, setLabel] = useState(item?.label ?? "");
  const [provider, setProvider] = useState(item?.provider ?? "");
  const [baseUrl, setBaseUrl] = useState(item?.baseUrl ?? "");
  const [model, setModel] = useState(item?.model ?? "");
  const [notes, setNotes] = useState(item?.notes ?? "");
  const [active, setActive] = useState(item?.active ?? true);
  const [secret, setSecret] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  const inputClass =
    "mt-2 w-full rounded-sm border border-zar/25 bg-steel/70 px-3 py-2 text-sm text-parchment outline-none focus:border-zar/70";
  const labelClass =
    "font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-zar/90";

  async function submit() {
    setBusy(true);
    setError(null);
    try {
      if (item) {
        await adminApi(`/api/admin/integrations/${item.id}`, {
          method: "PUT",
          body: JSON.stringify({ kind, label, provider, baseUrl, model, notes, active }),
        });
      } else {
        await adminApi("/api/admin/integrations", {
          method: "POST",
          body: JSON.stringify({
            code,
            kind,
            label,
            provider,
            baseUrl,
            model,
            notes,
            secret: secret.trim() || null,
          }),
        });
      }
      onDone();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Не удалось сохранить");
    } finally {
      setBusy(false);
    }
  }

  return (
    <Modal
      title={item ? `Настройка: ${item.code}` : "Новое подключение"}
      onClose={onClose}
      footer={
        <>
          <AdminButton onClick={onClose}>Отмена</AdminButton>
          <AdminButton variant="zar" onClick={submit} disabled={busy}>
            {busy ? "Сохранение…" : "Сохранить"}
          </AdminButton>
        </>
      }
    >
      {error && (
        <div className="mb-3">
          <Notice>{error}</Notice>
        </div>
      )}
      <div className="grid gap-4 sm:grid-cols-2">
        {!item && (
          <div>
            <label className={labelClass}>Код</label>
            <input
              value={code}
              onChange={(e) => setCode(e.target.value)}
              placeholder="TTS_BACKUP"
              className={`${inputClass} font-mono`}
            />
            <p className="mt-1 text-[11px] text-dust">
              По этому коду сервис запрашивает ключ. Заглавные буквы и подчёркивание.
            </p>
          </div>
        )}
        <div>
          <label className={labelClass}>Тип</label>
          <select value={kind} onChange={(e) => setKind(e.target.value as typeof kind)} className={inputClass}>
            {KINDS.map((k) => (
              <option key={k} value={k}>
                {KIND_LABEL[k]}
              </option>
            ))}
          </select>
        </div>
        <div className="sm:col-span-2">
          <label className={labelClass}>Название</label>
          <input value={label} onChange={(e) => setLabel(e.target.value)} className={inputClass} />
        </div>
        <div>
          <label className={labelClass}>Сервис</label>
          <input
            value={provider ?? ""}
            onChange={(e) => setProvider(e.target.value)}
            placeholder="например: наш собственный сервер"
            className={inputClass}
          />
        </div>
        <div>
          <label className={labelClass}>Модель / голос</label>
          <input value={model ?? ""} onChange={(e) => setModel(e.target.value)} className={inputClass} />
        </div>
        <div className="sm:col-span-2">
          <label className={labelClass}>Адрес (base URL)</label>
          <input
            value={baseUrl ?? ""}
            onChange={(e) => setBaseUrl(e.target.value)}
            placeholder="https://tts.example.uz/v1"
            className={inputClass}
          />
        </div>
        {!item && (
          <div className="sm:col-span-2">
            <label className={labelClass}>Ключ (необязательно)</label>
            <input
              type="password"
              value={secret}
              onChange={(e) => setSecret(e.target.value)}
              autoComplete="off"
              className={`${inputClass} font-mono`}
            />
            <p className="mt-1 text-[11px] text-dust">
              Можно ввести и позже — прямо из поля в списке.
            </p>
          </div>
        )}
        <div className="sm:col-span-2">
          <label className={labelClass}>Заметка</label>
          <textarea
            value={notes ?? ""}
            onChange={(e) => setNotes(e.target.value)}
            rows={3}
            className={inputClass}
          />
        </div>
        {item && (
          <div className="sm:col-span-2">
            <label className="flex items-center gap-2 text-sm text-parchment">
              <input
                type="checkbox"
                checked={active}
                onChange={(e) => setActive(e.target.checked)}
                className="h-4 w-4 accent-[#c8a247]"
              />
              Включено — ключ выключенного подключения сервису не выдаётся
            </label>
          </div>
        )}
      </div>
    </Modal>
  );
}
