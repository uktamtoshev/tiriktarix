"use client";

import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect, useRef, useState } from "react";
import { motion } from "framer-motion";
import { api, authApi, AvatarState, getClientId, getToken, logout, Profile } from "@/lib/api";
import Character from "@/components/art/Character";
import Logo from "@/components/ui/Logo";
import NavSunburst from "@/components/ui/NavSunburst";
import LangSwitch from "@/components/ui/LangSwitch";
import { Star } from "@/components/ui/Ornament";
import { useT } from "@/lib/lang";

/**
 * Bo'limlar tartibi. Yozuvlar TXT dan olinadi — manzillar esa hech qachon
 * tarjima qilinmaydi: havolalar ulashiladi va ular ikkala tilda bir xil.
 */
const NAV = [
  "/qahramonlar",
  "/voqealar",
  "/xaritalar",
  "/filmlar",
  "/testlar",
  "/bellashuv",
  "/kutubxona",
  "/qurolxona",
] as const;

const TXT = {
  ru: {
    tagline: "Живая история",
    home: "Главная",
    homeAria: "Tirik tarix — главная",
    nav: {
      "/qahramonlar": "Предки",
      "/voqealar": "События",
      "/xaritalar": "Карты",
      "/filmlar": "Фильмы",
      "/testlar": "Испытания",
      "/bellashuv": "Дуэли",
      "/kutubxona": "Библиотека",
      "/qurolxona": "Оружейная",
    } as Record<string, string>,
    achievements: "Достижения",
    days: "дн.",
    level: (n: number) => `${n}-й уровень`,
    myHero: "Мой герой",
    signOut: "Выйти",
    signIn: "Войти",
    signUp: "Регистрация",
    openMenu: "Открыть меню",
    closeMenu: "Закрыть меню",
  },
  uz: {
    tagline: "Jonli tarix",
    home: "Bosh sahifa",
    homeAria: "Tirik tarix — bosh sahifa",
    nav: {
      "/qahramonlar": "Ajdodlar",
      "/voqealar": "Voqealar",
      "/xaritalar": "Xaritalar",
      "/filmlar": "Filmlar",
      "/testlar": "Sinovlar",
      "/bellashuv": "Bellashuv",
      "/kutubxona": "Kutubxona",
      "/qurolxona": "Qurolxona",
    } as Record<string, string>,
    achievements: "Yutuqlar",
    days: "kun",
    level: (n: number) => `${n}-daraja`,
    myHero: "Mening qahramonim",
    signOut: "Chiqish",
    signIn: "Kirish",
    signUp: "Ro'yxatdan o'tish",
    openMenu: "Menyuni ochish",
    closeMenu: "Menyuni yopish",
  },
  uk: {
    tagline: "Жива історія",
    home: "Головна",
    homeAria: "Tirik tarix — головна",
    nav: {
      "/qahramonlar": "Предки",
      "/voqealar": "Події",
      "/xaritalar": "Карти",
      "/filmlar": "Фільми",
      "/testlar": "Випробування",
      "/bellashuv": "Дуелі",
      "/kutubxona": "Бібліотека",
      "/qurolxona": "Зброярня",
    } as Record<string, string>,
    achievements: "Досягнення",
    days: "дн.",
    level: (n: number) => `${n}-й рівень`,
    myHero: "Мій герой",
    signOut: "Вийти",
    signIn: "Увійти",
    signUp: "Реєстрація",
    openMenu: "Відкрити меню",
    closeMenu: "Закрити меню",
  },
};

function isActive(href: string, pathname: string): boolean {
  return href === "/" ? pathname === "/" : pathname.startsWith(href);
}

/** Medalyon aylanish vaqti — globals.css dagi tt-vault-spin bilan bir xil. */
const VAULT_SPIN_MS = 900;

/** O'tish pardasining uzunligi — globals.css dagi tt-nav-* bilan bir xil. */
const SUN_BURST_MS = 1700;

/** Sarlavhadagi tugmalar — bir xil o'lcham, ikki xil ohang. */
const HEADER_BTN =
  "shrink-0 whitespace-nowrap rounded-sm px-3 py-1.5 font-display text-[10px] font-semibold uppercase tracking-[0.14em] transition";
const HEADER_BTN_QUIET =
  "border border-steel-2 bg-steel/70 text-dust hover:border-zar/50 hover:text-marble";
const HEADER_BTN_GOLD =
  "border border-zar bg-[linear-gradient(160deg,#c8a247,#7a5f1c)] font-bold text-obsidian shadow-[0_8px_20px_-10px_rgba(200,162,71,0.95)] hover:brightness-110";

export default function Header() {
  const t = useT(TXT);
  const pathname = usePathname();
  const router = useRouter();
  const [profile, setProfile] = useState<Profile | null>(null);
  const [menuOpen, setMenuOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);
  const [avatar, setAvatar] = useState<AvatarState | null>(null);
  /** Hisobga kirganmi — «Chiqish» yoki «Ro'yxatdan o'tish» ko'rsatiladi. */
  const [signedIn, setSignedIn] = useState(false);
  const prevXp = useRef(0);
  const [xpBumped, setXpBumped] = useState(false);
  const [vaultSpinning, setVaultSpinning] = useState(false);
  const vaultTimer = useRef<number | null>(null);
  const [navBurst, setNavBurst] = useState(false);
  const burstTimer = useRef<number | null>(null);

  useEffect(() => {
    return () => {
      if (vaultTimer.current) window.clearTimeout(vaultTimer.current);
      if (burstTimer.current) window.clearTimeout(burstTimer.current);
    };
  }, []);

  /*
    Boshqa BO'LIMGA o'tilganda «quyosh pardasi» ochiladi: belgi aylanib
    kattalashadi, so'ng oq quyosh butun ekranni yoritadi (NavSunburst).
    Manzilning birinchi bo'lagiga qaraladi: ajdodlar ro'yxatidan bitta
    ajdodning sahifasiga kirish — bo'lim almashuvi emas, u yerda bunday
    chaqnash ortiqcha shovqin bo'lardi.
  */
  const section = pathname.split("/")[1] ?? "";
  const prevSection = useRef<string | null>(null);

  useEffect(() => {
    // Birinchi yuklanish — bu o'tish emas, chaqnamaydi
    if (prevSection.current === null || prevSection.current === section) {
      prevSection.current = section;
      return;
    }
    prevSection.current = section;
    if (window.matchMedia("(prefers-reduced-motion: reduce)").matches) return;
    // setState taymer ichida — effekt tanasida sinxron chaqirilmasin
    const start = window.setTimeout(() => setNavBurst(true), 0);
    burstTimer.current = window.setTimeout(() => setNavBurst(false), SUN_BURST_MS);
    return () => {
      window.clearTimeout(start);
      if (burstTimer.current) window.clearTimeout(burstTimer.current);
    };
  }, [section]);

  /** Gerb — seyf eshigi: avval shturval aylanadi, keyin bosh sahifa «ochiladi». */
  const openVault = (e: React.MouseEvent) => {
    setMenuOpen(false);
    // Harakat qisqartirilgan rejimda animatsiyasiz — Link o'zi o'tadi
    if (window.matchMedia("(prefers-reduced-motion: reduce)").matches) return;
    e.preventDefault();
    if (vaultSpinning) return;
    setVaultSpinning(true);
    vaultTimer.current = window.setTimeout(() => {
      setVaultSpinning(false);
      if (pathname !== "/") {
        router.push("/");
      } else {
        window.scrollTo({ top: 0, behavior: "smooth" });
      }
    }, VAULT_SPIN_MS);
  };

  useEffect(() => {
    const refresh = () =>
      api<Profile>(`/api/profile/${getClientId()}`)
        .then((p) => {
          if (p.xp > prevXp.current && prevXp.current > 0) {
            setXpBumped(true);
            setTimeout(() => setXpBumped(false), 1200);
          }
          prevXp.current = p.xp;
          setProfile(p);
        })
        .catch(() => setProfile(null));
    refresh();
    // Sahifa ichida XP berilganda (film ko'rish, film testi) darhol yangilanadi
    window.addEventListener("tirik-xp", refresh);
    return () => window.removeEventListener("tirik-xp", refresh);
  }, [pathname]);

  useEffect(() => {
    // Promise ichida — effekt tanasida sinxron setState chaqirilmasin
    const request = getToken()
      ? authApi<AvatarState>("/api/avatar")
      : Promise.resolve(null);
    request
      .then((state) => {
        setAvatar(state);
        setSignedIn(Boolean(getToken()));
      })
      .catch(() => {
        setAvatar(null);
        setSignedIn(Boolean(getToken()));
      });
  }, [pathname]);

  /**
   * Chiqish. Token o'chadi, bola esa o'z clientId si bilan MEHMON bo'lib
   * qoladi — XP va seriya yo'qolmaydi, keyin qaytib kirsa hammasi joyida.
   * Sahifa to'liq qayta yuklanadi: eski profil ma'lumoti ekranda qolmasin.
   */
  function signOut() {
    logout();
    setMenuOpen(false);
    window.location.href = "/";
  }

  useEffect(() => {
    const onScroll = () => setScrolled(window.scrollY > 24);
    onScroll();
    window.addEventListener("scroll", onScroll, { passive: true });
    return () => window.removeEventListener("scroll", onScroll);
  }, []);

  return (
    <>
      {/* O'tish pardasi — sarlavhaning TASHQARISIDA: sarlavha aylantirilganda
          backdrop-blur qo'yadi, u esa fixed elementni o'z ichiga qamab qo'yadi
          va parda butun ekranni egallamay qolardi. */}
      {navBurst && <NavSunburst />}

      <header
      className={`sticky top-0 z-40 transition-all duration-500 ease-tt ${
        scrolled
          ? "border-b border-zar/25 bg-obsidian/85 shadow-[0_10px_40px_-20px_rgba(0,0,0,0.95)] backdrop-blur-xl"
          : "border-b border-transparent bg-transparent"
      }`}
    >
      {/* Sarlavha qatori sahifa mazmunidan KENGROQ (max-w-7xl emas): sakkizta
          bo'lim, belgi va hisob tugmalari 1280 px ga sig'masdi va bir-birining
          ustiga chiqib ketardi. */}
      <div className="mx-auto flex w-full max-w-[1600px] items-center gap-4 px-4 py-3 sm:px-6">
        <Link
          href="/"
          onClick={openVault}
          className="group flex shrink-0 items-center gap-3 pe-2"
          aria-label={t.homeAria}
        >
          <motion.span
            className="block"
            whileHover={vaultSpinning ? undefined : { rotate: [0, -8, 8, 0], scale: 1.08 }}
            whileTap={{ scale: 0.92 }}
            transition={{ duration: 0.6 }}
          >
            <Logo size="md" spinning={vaultSpinning} />
          </motion.span>
          <span className="leading-none whitespace-nowrap">
            <span className="block font-display text-base font-bold uppercase tracking-[0.22em] text-marble sm:text-lg">
              Tirik tarix
            </span>
            <span className="mt-1 block text-[9px] font-semibold uppercase tracking-[0.38em] text-zar/90">
              {t.tagline}
            </span>
          </span>
        </Link>

        {/*
          Sakkizta bo'lim, belgi va hisob tugmalari bitta qatorga zo'rg'a sig'adi.
          min-w-0 — ro'yxat qatorni kengaytirib yubormasin (tugmalar ekrandan
          chiqib ketardi); overflow-x-auto — joy yetmagan tor ekranda ro'yxat
          ustma-ust tushmasin, balki gorizontal siljisin.
        */}
        <nav className="tt-no-scrollbar hidden min-w-0 flex-1 gap-0 overflow-x-auto [justify-content:safe_center] lg:flex">
          {NAV.map((href) => {
            const active = isActive(href, pathname);
            return (
              <Link
                key={href}
                href={href}
                /*
                  Oraliq va harflar orasi 2xl gacha ataylab tor: ruscha
                  yozuvlar o'zbekchasidan uzunroq va til tanlagich ham joy
                  oladi — keng variantda sakkizta bo'lim 1280 px ga sig'may,
                  oxirgisi («Оружейная») qirqilib qolardi. 1536 px dan boshlab
                  joy yetarli va monumental oraliq qaytadi.
                */
                className={`relative whitespace-nowrap px-1.5 py-2 font-display text-[10px] font-semibold uppercase tracking-[0.04em] transition-colors 2xl:px-3 2xl:text-[11px] 2xl:tracking-[0.16em] ${
                  active ? "text-zar-bright" : "text-dust hover:text-marble"
                }`}
              >
                <span className="relative z-10">{t.nav[href]}</span>
                {active && (
                  <motion.span
                    layoutId="nav-underline"
                    className="absolute inset-x-2 -bottom-px h-px bg-gradient-to-r from-transparent via-zar to-transparent"
                    transition={{ type: "spring", stiffness: 420, damping: 34 }}
                  />
                )}
              </Link>
            );
          })}
        </nav>

        <div className="ms-auto flex shrink-0 items-center gap-2 lg:ms-0">
          {/* Mehmonda «0 XP» belgisi ko'rsatilmaydi: u hech narsa demaydi, joyni
              esa egallaydi — o'sha joy «Kirish» tugmasiga kerak. XP birinchi
              ochkolar bilan yoki hisobga kirgach paydo bo'ladi. */}
          {profile && (signedIn || profile.xp > 0) && (
            <>
              <motion.span animate={xpBumped ? { scale: [1, 1.28, 1] } : {}}>
                <Link
                  href="/profil"
                  onClick={() => setMenuOpen(false)}
                  title={`${profile.rankEmoji} ${profile.rankUz} — ${t.level(profile.level)}`}
                  className="flex items-center gap-1.5 rounded-sm border border-zar/40 bg-zar/10 px-3 py-1.5 text-[11px] font-bold uppercase tracking-[0.12em] text-zar-bright transition hover:border-zar/70 hover:bg-zar/20"
                >
                  <Star className="h-3 w-3" />
                  {profile.xp} XP
                </Link>
              </motion.span>
              {/* Seriya va «Kirish» faqat keng ekranda: 1280 px da ular joyni
                  yeb qo'yadi va bo'limlar ro'yxati qirqilib qoladi. */}
              <span className="hidden items-center gap-1.5 rounded-sm border border-qon/45 bg-qon/12 px-3 py-1.5 text-[11px] font-bold uppercase tracking-[0.12em] text-[#e8a99f] sm:flex lg:hidden 2xl:flex">
                🔥 {profile.streakDays} {t.days}
              </span>
            </>
          )}

          {avatar && (
            <Link
              href="/profil"
              aria-label={t.myHero}
              className="relative hidden h-10 w-10 shrink-0 overflow-hidden rounded-full border border-zar/50 bg-steel/70 transition hover:border-zar sm:block"
            >
              <span className="absolute inset-0 grid place-items-center">
                <Character
                  gender={avatar.gender}
                  archetype={avatar.archetype}
                  equipped={avatar.equipped}
                  size={40}
                  crop="head"
                />
              </span>
            </Link>
          )}

          {/* Kirgan bo'lsa — chiqish; bo'lmasa — kirish va ro'yxatdan o'tish.
              Ro'yxatdan o'tish ASOSIY amal, shuning uchun zar tugma. */}
          {signedIn ? (
            <button onClick={signOut} className={`${HEADER_BTN} ${HEADER_BTN_QUIET} hidden sm:block`}>
              {t.signOut}
            </button>
          ) : (
            <>
              <Link
                href="/kirish"
                className={`${HEADER_BTN} ${HEADER_BTN_QUIET} hidden md:block`}
              >
                {t.signIn}
              </Link>
              <Link href="/royxat" className={`${HEADER_BTN} ${HEADER_BTN_GOLD} hidden sm:block`}>
                {t.signUp}
              </Link>
            </>
          )}

          {/* Til tanlagich — telefonda menyuning ichida, u yerda joy kengroq */}
          <LangSwitch className="hidden sm:flex" />

          <button
            aria-label={menuOpen ? t.closeMenu : t.openMenu}
            aria-expanded={menuOpen}
            onClick={() => setMenuOpen(!menuOpen)}
            className="relative grid h-10 w-10 place-items-center rounded-sm border border-zar/30 bg-steel/70 transition active:scale-90 lg:hidden"
          >
            <span
              className={`absolute h-px w-5 bg-zar transition-all duration-300 ${
                menuOpen ? "rotate-45" : "-translate-y-[6px]"
              }`}
            />
            <span className={`absolute h-px w-5 bg-zar transition-all duration-300 ${menuOpen ? "opacity-0" : ""}`} />
            <span
              className={`absolute h-px w-5 bg-zar transition-all duration-300 ${
                menuOpen ? "-rotate-45" : "translate-y-[6px]"
              }`}
            />
          </button>
        </div>
      </div>

      {menuOpen && (
        <nav className="tt-girih tt-girih-fine relative border-t border-zar/20 bg-obsidian/[0.97] backdrop-blur-xl lg:hidden">
          <div className="relative z-10 mx-auto max-w-7xl space-y-1 px-4 py-4 sm:px-6">
            {[
              { href: "/", label: t.home },
              ...NAV.map((href) => ({ href, label: t.nav[href] })),
              { href: "/profil", label: t.achievements },
            ].map((item, i) => {
              const active = isActive(item.href, pathname);
              return (
                <Link
                  key={item.href}
                  href={item.href}
                  onClick={() => setMenuOpen(false)}
                  className={`tt-reveal flex items-center justify-between rounded-sm border px-4 py-3 font-display text-xs font-semibold uppercase tracking-[0.18em] transition ${
                    active
                      ? "border-zar/50 bg-zar/12 text-zar-bright"
                      : "border-steel-2 bg-steel/50 text-dust hover:border-zar/40 hover:text-marble"
                  }`}
                  style={{ animationDelay: `${i * 40}ms` }}
                >
                  {item.label}
                  <span aria-hidden className="text-zar/60">
                    →
                  </span>
                </Link>
              );
            })}

            {/* Hisob amallari — telefonda ular faqat shu yerda ko'rinadi */}
            <div className="flex items-center gap-2 border-t border-steel-2 pt-3">
              {signedIn ? (
                <button onClick={signOut} className={`${HEADER_BTN} ${HEADER_BTN_QUIET} flex-1 py-3`}>
                  {t.signOut}
                </button>
              ) : (
                <>
                  <Link
                    href="/kirish"
                    onClick={() => setMenuOpen(false)}
                    className={`${HEADER_BTN} ${HEADER_BTN_QUIET} flex-1 py-3 text-center`}
                  >
                    {t.signIn}
                  </Link>
                  <Link
                    href="/royxat"
                    onClick={() => setMenuOpen(false)}
                    className={`${HEADER_BTN} ${HEADER_BTN_GOLD} flex-1 py-3 text-center`}
                  >
                    {t.signUp}
                  </Link>
                </>
              )}
              <LangSwitch className="sm:hidden" />
            </div>
          </div>
        </nav>
      )}
      </header>
    </>
  );
}
