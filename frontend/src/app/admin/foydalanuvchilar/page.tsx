"use client";

import { useCallback, useEffect, useState } from "react";
import {
  AdminProfile,
  AdminUser,
  Page,
  adminApi,
  formatDate,
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
 * Hisoblar va o'quvchi profillari.
 *
 * MUHIM FARQ. Hisobni o'chirish progressni yo'q qilmaydi: profil anonim
 * holatiga qaytadi va bola o'z brauzeridan yana kirib ishlashda davom etadi.
 * Butunlay tozalash kerak bo'lsa — profil alohida o'chiriladi (bu qaytmaydi).
 */
export default function AdminUsersPage() {
  const [tab, setTab] = useState<"users" | "profiles">("users");

  return (
    <div className="space-y-4">
      <header>
        <h1 className="font-display text-xl font-bold uppercase tracking-[0.14em] text-marble">
          Пользователи
        </h1>
        <p className="mt-1 max-w-3xl text-sm text-dust">
          Учётная запись — слой поверх профиля. При удалении учётной записи прогресс сохраняется;
          при удалении профиля XP, результаты тестов и диалоги пропадают безвозвратно.
        </p>
      </header>

      <div className="flex gap-2">
        <AdminButton variant={tab === "users" ? "zar" : "steel"} onClick={() => setTab("users")}>
          Учётные записи
        </AdminButton>
        <AdminButton
          variant={tab === "profiles" ? "zar" : "steel"}
          onClick={() => setTab("profiles")}
        >
          Профили учеников
        </AdminButton>
      </div>

      {tab === "users" ? <UsersTable /> : <ProfilesTable />}
    </div>
  );
}

function UsersTable() {
  const [data, setData] = useState<Page<AdminUser> | null>(null);
  const [page, setPage] = useState(0);
  const [q, setQ] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [passwordFor, setPasswordFor] = useState<AdminUser | null>(null);

  // setState Promise ichida — effekt tanasida sinxron setState chaqirilmasin
  const load = useCallback(
    () =>
      adminApi<Page<AdminUser>>(`/api/admin/users?page=${page}&size=25&q=${encodeURIComponent(q)}`)
        .then((result) => {
          setData(result);
          setError(null);
        })
        .catch((e) => setError(e instanceof Error ? e.message : "Не удалось загрузить")),
    [page, q]
  );

  useEffect(() => {
    load();
  }, [load]);

  async function act(fn: () => Promise<unknown>) {
    setError(null);
    try {
      await fn();
      await load();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Действие не выполнено");
    }
  }

  return (
    <>
      {error && <Notice>{error}</Notice>}
      <AdminCard
        title="Учётные записи"
        action={
          <input
            value={q}
            onChange={(e) => {
              setPage(0);
              setQ(e.target.value);
            }}
            placeholder="Поиск по логину…"
            className="w-52 rounded-sm border border-zar/25 bg-steel/70 px-3 py-1.5 text-sm text-parchment outline-none focus:border-zar/70"
          />
        }
      >
        {!data ? (
          <Spinner />
        ) : data.items.length === 0 ? (
          <Empty>Учётные записи не найдены.</Empty>
        ) : (
          <>
            <Table head={["ID", "Логин", "Роль", "Зарегистрирован", "Профиль", "XP", "Серия", ""]}>
              {data.items.map((user) => (
                <Row key={user.id}>
                  <Cell className="text-[11px] text-dust">{user.id}</Cell>
                  <Cell className="font-semibold">{user.username}</Cell>
                  <Cell>
                    {user.role === "ADMIN" ? (
                      <Pill tone="warn">ADMIN</Pill>
                    ) : (
                      <Pill tone="dust">ученик</Pill>
                    )}
                  </Cell>
                  <Cell className="text-[11px] text-dust">{formatDateTime(user.createdAt)}</Cell>
                  <Cell className="text-[11px] text-dust">
                    {/* Administratorda o'quvchi profili yo'q — bu yerda «—» turadi */}
                    {user.displayName ||
                      (user.clientId ? `${user.clientId.slice(0, 10)}…` : "—")}
                  </Cell>
                  <Cell>{user.xp ?? "—"}</Cell>
                  <Cell>{user.streakDays ?? "—"}</Cell>
                  <Cell className="whitespace-nowrap text-right">
                    <AdminButton
                      size="sm"
                      onClick={() =>
                        act(() =>
                          adminApi(`/api/admin/users/${user.id}/role`, {
                            method: "PUT",
                            body: JSON.stringify({
                              role: user.role === "ADMIN" ? "USER" : "ADMIN",
                            }),
                          })
                        )
                      }
                    >
                      {user.role === "ADMIN" ? "Снять админа" : "Сделать админом"}
                    </AdminButton>{" "}
                    <AdminButton size="sm" onClick={() => setPasswordFor(user)}>
                      Пароль
                    </AdminButton>{" "}
                    <AdminButton
                      size="sm"
                      variant="qon"
                      onClick={() => {
                        if (
                          confirm(
                            `Удалить учётную запись «${user.username}»? Профиль и прогресс сохранятся.`
                          )
                        ) {
                          act(() => adminApi(`/api/admin/users/${user.id}`, { method: "DELETE" }));
                        }
                      }}
                    >
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

      {passwordFor && (
        <PasswordModal
          user={passwordFor}
          onClose={() => setPasswordFor(null)}
          onDone={() => {
            setPasswordFor(null);
            load();
          }}
        />
      )}
    </>
  );
}

function PasswordModal({
  user,
  onClose,
  onDone,
}: {
  user: AdminUser;
  onClose: () => void;
  onDone: () => void;
}) {
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  async function submit() {
    setBusy(true);
    setError(null);
    try {
      await adminApi(`/api/admin/users/${user.id}/password`, {
        method: "POST",
        body: JSON.stringify({ newPassword: password }),
      });
      onDone();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Не удалось сохранить");
    } finally {
      setBusy(false);
    }
  }

  return (
    <Modal
      title={`Сброс пароля: ${user.username}`}
      onClose={onClose}
      footer={
        <>
          <AdminButton onClick={onClose}>Отмена</AdminButton>
          <AdminButton variant="zar" onClick={submit} disabled={busy || password.length < 6}>
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
      <label className="font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-zar/90">
        Новый пароль
      </label>
      <input
        type="text"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
        className="mt-2 w-full rounded-sm border border-zar/25 bg-steel/70 px-3 py-2 text-sm text-parchment outline-none focus:border-zar/70"
      />
      <p className="mt-1 text-[11px] text-dust">
        Минимум 6 символов. Пароль пользователю передаёте вы сами — больше он нигде не показывается.
      </p>
    </Modal>
  );
}

function ProfilesTable() {
  const [data, setData] = useState<Page<AdminProfile> | null>(null);
  const [page, setPage] = useState(0);
  const [q, setQ] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [editing, setEditing] = useState<AdminProfile | null>(null);

  const load = useCallback(
    () =>
      adminApi<Page<AdminProfile>>(
        `/api/admin/profiles?page=${page}&size=25&q=${encodeURIComponent(q)}`
      )
        .then((result) => {
          setData(result);
          setError(null);
        })
        .catch((e) => setError(e instanceof Error ? e.message : "Не удалось загрузить")),
    [page, q]
  );

  useEffect(() => {
    load();
  }, [load]);

  async function remove(profile: AdminProfile) {
    if (
      !confirm(
        `Удалить профиль «${profile.displayName || profile.clientId}» ПОЛНОСТЬЮ?\n\nXP, результаты тестов, снаряжение и диалоги пропадут. Действие необратимо.`
      )
    ) {
      return;
    }
    setError(null);
    try {
      await adminApi(`/api/admin/profiles/${profile.id}`, { method: "DELETE" });
      await load();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Не удалось удалить");
    }
  }

  return (
    <>
      {error && <Notice>{error}</Notice>}
      <AdminCard
        title="Профили учеников"
        action={
          <input
            value={q}
            onChange={(e) => {
              setPage(0);
              setQ(e.target.value);
            }}
            placeholder="Имя, фамилия, школа или clientId…"
            className="w-52 rounded-sm border border-zar/25 bg-steel/70 px-3 py-1.5 text-sm text-parchment outline-none focus:border-zar/70"
          />
        }
      >
        {!data ? (
          <Spinner />
        ) : data.items.length === 0 ? (
          <Empty>Профили не найдены.</Empty>
        ) : (
          <>
            <Table
              head={[
                "ID",
                "Имя",
                "ФИО",
                "Школа",
                "XP",
                "Уровень",
                "Серия",
                "Последняя активность",
                "Аккаунт",
                "",
              ]}
            >
              {data.items.map((profile) => (
                <Row key={profile.id}>
                  <Cell className="text-[11px] text-dust">{profile.id}</Cell>
                  <Cell className="font-semibold">{profile.displayName || "—"}</Cell>
                  {/* Настоящее имя и школа — только здесь: на сайте виден псевдоним */}
                  <Cell className="text-[12px]">
                    {profile.firstName || profile.lastName
                      ? `${profile.lastName ?? ""} ${profile.firstName ?? ""}`.trim()
                      : "—"}
                    {profile.birthDate && (
                      <span className="block text-[11px] text-dust">
                        {formatDate(profile.birthDate)}
                      </span>
                    )}
                  </Cell>
                  <Cell className="text-[12px]">
                    {profile.schoolUz || "—"}
                    {profile.regionUz && (
                      <span className="block text-[11px] text-dust">
                        {profile.regionUz}
                        {profile.districtUz ? `, ${profile.districtUz}` : ""}
                      </span>
                    )}
                  </Cell>
                  <Cell className="font-semibold text-zar-bright">{profile.xp}</Cell>
                  <Cell className="whitespace-nowrap text-[12px]">
                    {profile.rankEmoji} {profile.rankUz}
                  </Cell>
                  <Cell>{profile.streakDays}</Cell>
                  <Cell className="text-[11px] text-dust">{formatDate(profile.lastActiveDate)}</Cell>
                  <Cell className="text-[11px] text-dust">{profile.username || "гость"}</Cell>
                  <Cell className="whitespace-nowrap text-right">
                    <AdminButton size="sm" onClick={() => setEditing(profile)}>
                      Изменить
                    </AdminButton>{" "}
                    <AdminButton size="sm" variant="qon" onClick={() => remove(profile)}>
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

      {editing && (
        <ProfileModal
          profile={editing}
          onClose={() => setEditing(null)}
          onDone={() => {
            setEditing(null);
            load();
          }}
        />
      )}
    </>
  );
}

function ProfileModal({
  profile,
  onClose,
  onDone,
}: {
  profile: AdminProfile;
  onClose: () => void;
  onDone: () => void;
}) {
  const [displayName, setDisplayName] = useState(profile.displayName ?? "");
  const [xp, setXp] = useState(String(profile.xp));
  const [streak, setStreak] = useState(String(profile.streakDays));
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  const inputClass =
    "mt-2 w-full rounded-sm border border-zar/25 bg-steel/70 px-3 py-2 text-sm text-parchment outline-none focus:border-zar/70";

  async function submit() {
    setBusy(true);
    setError(null);
    try {
      await adminApi(`/api/admin/profiles/${profile.id}`, {
        method: "PUT",
        body: JSON.stringify({
          displayName: displayName.trim() || null,
          xp: Number(xp),
          streakDays: Number(streak),
        }),
      });
      onDone();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Не удалось сохранить");
    } finally {
      setBusy(false);
    }
  }

  return (
    <Modal
      title={`Профиль: ${profile.displayName || profile.clientId.slice(0, 12)}`}
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
        <div className="sm:col-span-2">
          <label className="font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-zar/90">
            Отображаемое имя
          </label>
          <input value={displayName} onChange={(e) => setDisplayName(e.target.value)} className={inputClass} />
        </div>
        <div>
          <label className="font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-zar/90">
            XP
          </label>
          <input type="number" value={xp} onChange={(e) => setXp(e.target.value)} className={inputClass} />
          <p className="mt-1 text-[11px] text-dust">
            Для ручной правки. Открытие снаряжения считается от XP.
          </p>
        </div>
        <div>
          <label className="font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-zar/90">
            Серия (дней)
          </label>
          <input type="number" value={streak} onChange={(e) => setStreak(e.target.value)} className={inputClass} />
        </div>
      </div>
    </Modal>
  );
}
