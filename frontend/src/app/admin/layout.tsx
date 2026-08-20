"use client";

import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { ReactNode, createContext, useContext, useEffect, useState } from "react";
import {
  AdminSession,
  adminApi,
  adminLogout,
  getAdminToken,
} from "@/lib/admin";
import Logo from "@/components/ui/Logo";

/**
 * Boshqaruv paneli qobig'i.
 *
 * Sayt qobig'idan ATAYLAB ajratilgan: bu yerda maskot, parallaks va o'quvchi
 * navigatsiyasi yo'q — panel ish quroli. Sessiya tekshiruvi shu yerda: token
 * yaroqsiz bo'lsa, hamma sahifadan /admin/kirish ga qaytariladi.
 */

const NAV: { href: string; label: string }[] = [
  { href: "/admin", label: "Обзор" },
  { href: "/admin/davrlar", label: "Эпохи" },
  { href: "/admin/ajdodlar", label: "Предки" },
  { href: "/admin/voqealar", label: "События" },
  { href: "/admin/faktlar", label: "Карточки фактов" },
  { href: "/admin/savollar", label: "Вопросы тестов" },
  { href: "/admin/filmlar", label: "Фильмы" },
  { href: "/admin/xarita", label: "Карта" },
  // O'yin mexanikasi matnlari (V107): ilgari ular kodda yozilgan edi
  { href: "/admin/yutuqlar", label: "Достижения" },
  { href: "/admin/unvonlar", label: "Звания" },
  { href: "/admin/tiplar", label: "Типы героев" },
  { href: "/admin/foydalanuvchilar", label: "Пользователи" },
  { href: "/admin/suhbatlar", label: "Диалоги" },
  { href: "/admin/integratsiyalar", label: "API-ключи" },
  { href: "/admin/jurnal", label: "Журнал" },
];

const SessionContext = createContext<AdminSession | null>(null);

export function useAdminSession() {
  return useContext(SessionContext);
}

export default function AdminLayout({ children }: { children: ReactNode }) {
  const pathname = usePathname();
  const router = useRouter();
  const [session, setSession] = useState<AdminSession | null>(null);
  const [checking, setChecking] = useState(true);

  const isLoginPage = pathname === "/admin/kirish";

  useEffect(() => {
    // Kirish sahifasida sessiya tekshirilmaydi; `checking` ham o'zgartirilmaydi,
    // chunki bu sahifa quyida undan oldin qaytariladi.
    if (isLoginPage) {
      return;
    }
    if (!getAdminToken()) {
      router.replace("/admin/kirish");
      return;
    }
    adminApi<AdminSession>("/api/admin/auth/me")
      .then((s) => {
        setSession(s);
        setChecking(false);
      })
      .catch(() => {
        adminLogout();
        router.replace("/admin/kirish");
      });
  }, [isLoginPage, pathname, router]);

  function logout() {
    adminLogout();
    router.replace("/admin/kirish");
  }

  if (isLoginPage) {
    return <div className="min-h-screen bg-obsidian">{children}</div>;
  }

  if (checking) {
    return (
      <div className="grid min-h-screen place-items-center bg-obsidian">
        <p className="text-sm text-dust">Проверка сессии…</p>
      </div>
    );
  }

  return (
    <SessionContext.Provider value={session}>
      <div className="min-h-screen bg-obsidian lg:flex">
        {/* Yon panel (bo'lim menyusi) */}
        <aside className="border-b border-zar/15 bg-basalt/80 lg:sticky lg:top-0 lg:h-screen lg:w-60 lg:shrink-0 lg:overflow-y-auto lg:border-b-0 lg:border-r">
          <div className="flex items-center justify-between gap-2 px-4 py-4">
            <Link href="/admin" className="flex items-center gap-2.5 leading-none">
              <Logo size="sm" />
              <span>
                <span className="block font-display text-sm font-bold uppercase tracking-[0.2em] text-marble">
                  Tirik tarix
                </span>
                <span className="mt-1 block text-[9px] font-semibold uppercase tracking-[0.3em] text-zar/90">
                  Админ-панель
                </span>
              </span>
            </Link>
          </div>
          <nav className="flex gap-1 overflow-x-auto px-2 pb-3 lg:block lg:space-y-0.5 lg:overflow-visible lg:pb-4">
            {NAV.map((item) => {
              const active =
                item.href === "/admin" ? pathname === "/admin" : pathname.startsWith(item.href);
              return (
                <Link
                  key={item.href}
                  href={item.href}
                  className={`block whitespace-nowrap rounded-sm px-3 py-2 font-display text-[11px] font-semibold uppercase tracking-[0.14em] transition-colors ${
                    active
                      ? "bg-zar/15 text-zar-bright"
                      : "text-dust hover:bg-steel/60 hover:text-marble"
                  }`}
                >
                  {item.label}
                </Link>
              );
            })}
          </nav>
          <div className="hidden border-t border-zar/15 px-4 py-3 lg:block">
            <p className="text-[11px] text-dust">
              {session ? `👤 ${session.username}` : ""}
            </p>
            <div className="mt-2 flex flex-wrap gap-2">
              <Link
                href="/"
                className="text-[11px] font-semibold uppercase tracking-[0.12em] text-dust transition-colors hover:text-zar-bright"
              >
                ← На сайт
              </Link>
              <button
                onClick={logout}
                className="text-[11px] font-semibold uppercase tracking-[0.12em] text-[#e8a99f] transition-colors hover:text-qon"
              >
                Выйти
              </button>
            </div>
          </div>
        </aside>

        {/* Kontent */}
        <div className="min-w-0 flex-1">
          {/* Mobil uchun yuqori qator */}
          <div className="flex items-center justify-between border-b border-zar/10 px-4 py-2 lg:hidden">
            <p className="text-[11px] text-dust">{session ? `👤 ${session.username}` : ""}</p>
            <button
              onClick={logout}
              className="text-[11px] font-semibold uppercase tracking-[0.12em] text-[#e8a99f]"
            >
              Выйти
            </button>
          </div>
          <main className="p-4 sm:p-6">{children}</main>
        </div>
      </div>
    </SessionContext.Provider>
  );
}
