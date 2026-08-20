"use client";

import { useCallback, useEffect, useState } from "react";
import {
  AdminChatMessage,
  AdminConversation,
  AdminUnanswered,
  Page,
  adminApi,
  formatDateTime,
} from "@/lib/admin";
import Modal from "@/components/admin/Modal";
import {
  AdminButton,
  AdminCard,
  Cell,
  Empty,
  Notice,
  Pager,
  Pill,
  Row,
  Spinner,
  Table,
} from "@/components/admin/ui";

/**
 * Suhbatlar moderatsiyasi.
 *
 * Sahifaning eng qimmatli qismi — «javobsiz savollar». Har bir yozuv bolaning
 * ajdodga bergan savoli bo'lib, unga fakt kartochkasi topilmagan. Ya'ni kontent
 * rejasini bolalarning o'zi yozib beradi: shu ro'yxatdagi mavzular bo'yicha
 * yangi kartochka yozish kerak.
 */
export default function AdminChatPage() {
  const [tab, setTab] = useState<"unanswered" | "all">("unanswered");

  return (
    <div className="space-y-4">
      <header>
        <h1 className="font-display text-xl font-bold uppercase tracking-[0.14em] text-marble">
          Диалоги
        </h1>
        <p className="mt-1 max-w-3xl text-sm text-dust">
          О чём дети спрашивают предков и какие вопросы остались без ответа.
        </p>
      </header>

      <div className="flex gap-2">
        <AdminButton
          variant={tab === "unanswered" ? "zar" : "steel"}
          onClick={() => setTab("unanswered")}
        >
          Вопросы без ответа
        </AdminButton>
        <AdminButton variant={tab === "all" ? "zar" : "steel"} onClick={() => setTab("all")}>
          Все диалоги
        </AdminButton>
      </div>

      {tab === "unanswered" ? <UnansweredList /> : <ConversationList />}
    </div>
  );
}

function UnansweredList() {
  const [rows, setRows] = useState<AdminUnanswered[] | null>(null);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    adminApi<AdminUnanswered[]>("/api/admin/chat/unanswered?limit=100")
      .then(setRows)
      .catch((e) => setError(e instanceof Error ? e.message : "Не удалось загрузить"));
  }, []);

  if (error) return <Notice>{error}</Notice>;

  return (
    <AdminCard title="«История об этом молчит» — вопросы без ответа">
      {!rows ? (
        <Spinner />
      ) : rows.length === 0 ? (
        <Empty>Вопросов без ответа нет — карточки покрывают все вопросы.</Empty>
      ) : (
        <>
          <p className="mb-3 text-[12px] text-dust">
            Каждая строка — готовая тема для новой карточки фактов. Как только карточка появится,
            предок начнёт отвечать на этот вопрос.
          </p>
          <Table head={["Предок", "Вопрос ребёнка", "Время"]}>
            {rows.map((row, i) => (
              <Row key={`${row.conversationId}-${i}`}>
                <Cell className="whitespace-nowrap text-[12px]">{row.heroNameUz}</Cell>
                <Cell className="text-parchment">{row.questionUz ?? "—"}</Cell>
                <Cell className="whitespace-nowrap text-[11px] text-dust">
                  {formatDateTime(row.askedAt)}
                </Cell>
              </Row>
            ))}
          </Table>
          <p className="mt-3 text-[11px] text-dust">Всего: {rows.length}</p>
        </>
      )}
    </AdminCard>
  );
}

function ConversationList() {
  const [data, setData] = useState<Page<AdminConversation> | null>(null);
  const [page, setPage] = useState(0);
  const [error, setError] = useState<string | null>(null);
  const [open, setOpen] = useState<AdminConversation | null>(null);

  // setState Promise ichida — effekt tanasida sinxron setState chaqirilmasin
  const load = useCallback(
    () =>
      adminApi<Page<AdminConversation>>(`/api/admin/conversations?page=${page}&size=25`)
        .then((result) => {
          setData(result);
          setError(null);
        })
        .catch((e) => setError(e instanceof Error ? e.message : "Не удалось загрузить")),
    [page]
  );

  useEffect(() => {
    load();
  }, [load]);

  async function remove(conversation: AdminConversation) {
    if (!confirm("Удалить диалог и все его сообщения?")) return;
    try {
      await adminApi(`/api/admin/conversations/${conversation.id}`, { method: "DELETE" });
      await load();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Не удалось удалить");
    }
  }

  return (
    <>
      {error && <Notice>{error}</Notice>}
      <AdminCard title="Диалоги">
        {!data ? (
          <Spinner />
        ) : data.items.length === 0 ? (
          <Empty>Диалогов нет.</Empty>
        ) : (
          <>
            <Table head={["ID", "Предок", "clientId", "Сообщений", "Начат", "Последнее сообщение", ""]}>
              {data.items.map((conversation) => (
                <Row key={conversation.id}>
                  <Cell className="text-[11px] text-dust">{conversation.id}</Cell>
                  <Cell className="font-semibold">{conversation.heroNameUz}</Cell>
                  <Cell className="font-mono text-[11px] text-dust">
                    {conversation.clientId.slice(0, 12)}…
                  </Cell>
                  <Cell>{conversation.messages}</Cell>
                  <Cell className="whitespace-nowrap text-[11px] text-dust">
                    {formatDateTime(conversation.startedAt)}
                  </Cell>
                  <Cell className="whitespace-nowrap text-[11px] text-dust">
                    {formatDateTime(conversation.lastMessageAt)}
                  </Cell>
                  <Cell className="whitespace-nowrap text-right">
                    <AdminButton size="sm" onClick={() => setOpen(conversation)}>
                      Открыть
                    </AdminButton>{" "}
                    <AdminButton size="sm" variant="qon" onClick={() => remove(conversation)}>
                      Удалить
                    </AdminButton>
                  </Cell>
                </Row>
              ))}
            </Table>
            <Pager page={data.page} pages={data.pages} total={data.total} onChange={setPage} />
          </>
        )}
      </AdminCard>

      {open && <MessagesModal conversation={open} onClose={() => setOpen(null)} />}
    </>
  );
}

function MessagesModal({
  conversation,
  onClose,
}: {
  conversation: AdminConversation;
  onClose: () => void;
}) {
  const [messages, setMessages] = useState<AdminChatMessage[] | null>(null);

  useEffect(() => {
    adminApi<AdminChatMessage[]>(`/api/admin/conversations/${conversation.id}/messages`)
      .then(setMessages)
      .catch(() => setMessages([]));
  }, [conversation.id]);

  return (
    <Modal wide title={`Диалог #${conversation.id} — ${conversation.heroNameUz}`} onClose={onClose}>
      {!messages ? (
        <Spinner />
      ) : messages.length === 0 ? (
        <Empty>Сообщений нет.</Empty>
      ) : (
        <ul className="space-y-3">
          {messages.map((message) => (
            <li
              key={message.id}
              className={`rounded-sm border px-3 py-2 ${
                message.role === "USER"
                  ? "border-steel-2 bg-steel/60"
                  : "border-zar/25 bg-zar/[0.06]"
              }`}
            >
              <div className="mb-1 flex flex-wrap items-center gap-2">
                <Pill tone={message.role === "USER" ? "dust" : "info"}>
                  {message.role === "USER" ? "Ребёнок" : "Предок"}
                </Pill>
                {message.refusalType && message.refusalType !== "NONE" && (
                  <Pill tone="warn">{message.refusalType}</Pill>
                )}
                {message.factCardId && (
                  <Pill tone="ok">карточка #{message.factCardId}</Pill>
                )}
                <span className="text-[11px] text-dust">{formatDateTime(message.createdAt)}</span>
              </div>
              <p className="whitespace-pre-wrap text-sm text-parchment">{message.textUz}</p>
            </li>
          ))}
        </ul>
      )}
    </Modal>
  );
}
