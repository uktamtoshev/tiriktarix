"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { adminLogin } from "@/lib/admin";
import { AdminButton, Notice } from "@/components/admin/ui";
import Logo from "@/components/ui/Logo";

/** Panelga kirish. O'quvchi kirishidan alohida sahifa va alohida token. */
export default function AdminLoginPage() {
  const router = useRouter();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    setBusy(true);
    setError(null);
    try {
      await adminLogin(username.trim(), password);
      router.replace("/admin");
    } catch (err) {
      setError(err instanceof Error ? err.message : "Не удалось войти");
    } finally {
      setBusy(false);
    }
  }

  const inputClass =
    "mt-2 w-full rounded-sm border border-zar/25 bg-steel/70 px-3 py-2.5 text-sm text-parchment outline-none transition-colors focus:border-zar/70";

  return (
    <div className="grid min-h-screen place-items-center p-4">
      <div className="w-full max-w-sm">
        <header className="mb-6 text-center">
          <Logo size="lg" className="mx-auto mb-4" />
          <p className="font-display text-lg font-bold uppercase tracking-[0.22em] text-marble">
            Tirik tarix
          </p>
          <p className="mt-1 text-[10px] font-semibold uppercase tracking-[0.32em] text-zar/90">
            Админ-панель
          </p>
        </header>

        <form
          onSubmit={submit}
          className="space-y-4 rounded-md border border-zar/25 bg-basalt/80 p-6 shadow-[0_30px_70px_-30px_rgba(0,0,0,0.9)]"
        >
          {error && <Notice>{error}</Notice>}
          <div>
            <label
              htmlFor="admin-username"
              className="font-display text-[10px] font-semibold uppercase tracking-[0.24em] text-zar/90"
            >
              Логин
            </label>
            <input
              id="admin-username"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              autoComplete="username"
              autoFocus
              className={inputClass}
            />
          </div>
          <div>
            <label
              htmlFor="admin-password"
              className="font-display text-[10px] font-semibold uppercase tracking-[0.24em] text-zar/90"
            >
              Пароль
            </label>
            <input
              id="admin-password"
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              autoComplete="current-password"
              className={inputClass}
            />
          </div>
          <AdminButton type="submit" variant="zar" className="w-full" disabled={busy}>
            {busy ? "Подождите…" : "Войти"}
          </AdminButton>
        </form>
      </div>
    </div>
  );
}
