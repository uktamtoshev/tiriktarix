"use client";

import { useRouter } from "next/navigation";
import Link from "next/link";
import { useState } from "react";
import { API_URL, AuthResponse, saveSession } from "@/lib/api";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Button from "@/components/ui/Button";
import Logo from "@/components/ui/Logo";
import { useT } from "@/lib/lang";

const TXT = {
  ru: {
    badCredentials: "Неверный псевдоним или пароль",
    error: "Ошибка",
    overline: "Добро пожаловать",
    title: "Вход",
    subtitle: "Введи свой псевдоним и пароль — прогресс вернётся.",
    username: "Псевдоним",
    password: "Пароль",
    noAccount: "У меня нет аккаунта",
    busy: "Подождите…",
    signIn: "Войти",
    toAdmin: "Перейти в админ-панель",
  },
  uz: {
    badCredentials: "Taxallus yoki parol noto'g'ri",
    error: "Xatolik",
    overline: "Xush kelibsiz",
    title: "Kirish",
    subtitle: "Taxallusing va parolingni kirit — progressing qaytadi.",
    username: "Taxallus",
    password: "Parol",
    noAccount: "Hisobim yo'q",
    busy: "Kutib turing…",
    signIn: "Kirish",
    toAdmin: "Boshqaruv paneliga o'tish",
  },
  uk: {
    badCredentials: "Невірний псевдонім або пароль",
    error: "Помилка",
    overline: "Ласкаво просимо",
    title: "Вхід",
    subtitle: "Введи свій псевдонім і пароль — прогрес повернеться.",
    username: "Псевдонім",
    password: "Пароль",
    noAccount: "У мене немає акаунта",
    busy: "Зачекайте…",
    signIn: "Увійти",
    toAdmin: "Перейти в адмінпанель",
  },
};

export default function LoginPage() {
  const t = useT(TXT);
  const router = useRouter();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  /**
   * Administrator o'z hisobi bilan shu sahifaga kirishga urinsa, server 403
   * qaytaradi va «/admin sahifasidan kiring» deb aytadi. Manzilni faqat aytish
   * yetarli emas — yonida bosiladigan havola turadi.
   */
  const [adminHint, setAdminHint] = useState(false);
  const [busy, setBusy] = useState(false);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    setBusy(true);
    setError(null);
    setAdminHint(false);
    try {
      const res = await fetch(`${API_URL}/api/auth/login`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ username: username.trim(), password }),
      });
      const body = await res.json();
      if (!res.ok) {
        // 403 — bu hisobda o'quvchi profili yo'q, u boshqaruv paneliniki
        if (res.status === 403) {
          setAdminHint(true);
        }
        throw new Error(body?.message ?? t.badCredentials);
      }
      const auth = body as AuthResponse;
      // clientId ham saqlanadi — shu sabab boshqa qurilmada progress tiklanadi
      saveSession(auth.token!, auth.clientId);
      router.push("/profil");
    } catch (err) {
      setError(err instanceof Error ? err.message : t.error);
    } finally {
      setBusy(false);
    }
  }

  return (
    <div className="mx-auto max-w-xl space-y-10">
      <Logo size="xl" className="mx-auto" />
      <SectionTitle overline={t.overline} title={t.title} subtitle={t.subtitle} />

      {error && (
        <Panel tone="hollow" className="p-4 text-center">
          <p className="text-sm text-[#e8a99f]">{error}</p>
          {adminHint && (
            <Link
              href="/admin"
              className="mt-3 inline-flex items-center gap-2 rounded-sm border border-zar/40 bg-zar/10 px-4 py-2 font-display text-[11px] font-semibold uppercase tracking-[0.18em] text-zar-bright transition-colors hover:border-zar/70 hover:bg-zar/20"
            >
              🔑 {t.toAdmin}
            </Link>
          )}
        </Panel>
      )}

      <Panel corners girih className="tt-reveal p-7 sm:p-9">
        <form onSubmit={submit} className="space-y-5">
          <div>
            <label
              htmlFor="username"
              className="font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/90"
            >
              {t.username}
            </label>
            <input
              id="username"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              autoComplete="username"
              className="mt-2 w-full rounded-md border border-zar/25 bg-steel/70 px-4 py-3 text-parchment outline-none transition-colors focus:border-zar/70"
            />
          </div>
          <div>
            <label
              htmlFor="password"
              className="font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/90"
            >
              {t.password}
            </label>
            <input
              id="password"
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              autoComplete="current-password"
              className="mt-2 w-full rounded-md border border-zar/25 bg-steel/70 px-4 py-3 text-parchment outline-none transition-colors focus:border-zar/70"
            />
          </div>

          <div className="flex flex-wrap items-center justify-between gap-4 pt-2">
            <Link
              href="/royxat"
              className="font-display text-[11px] font-semibold uppercase tracking-[0.2em] text-dust transition-colors hover:text-zar"
            >
              {t.noAccount}
            </Link>
            <Button type="submit" variant="zar" size="md" disabled={busy}>
              {busy ? t.busy : t.signIn}
            </Button>
          </div>
        </form>
      </Panel>
    </div>
  );
}
