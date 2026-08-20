"use client";

import { useEffect, useState } from "react";
import { motion } from "framer-motion";
import { api, authApi, AvatarState, Gender, getClientId, getToken, logout, ProfileStats, Rank } from "@/lib/api";
import { Archetype, archetypeName, archetypesOf, fetchArchetypes } from "@/lib/archetypes";
import Character from "@/components/art/Character";
import Avatar3D from "@/components/art/Avatar3D";
import { ButtonLink } from "@/components/ui/Button";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Badge from "@/components/ui/Badge";
import Button from "@/components/ui/Button";
import HeroMedallion from "@/components/ui/HeroMedallion";
import LeaderboardButton from "@/components/ui/LeaderboardButton";
import { CornerFrame, Star } from "@/components/ui/Ornament";
import { useLang, useT } from "@/lib/lang";
import CountrySwitch from "@/components/ui/CountrySwitch";

const TXT = {
  ru: {
    loading: "Загрузка…",
    error: "Ошибка",
    overline: "Достижения",
    title: "Зал достижений",
    subtitle: "Набирай XP, повышай звание и собери все награды зала.",
    demoOn: "Демо включено",
    demoOff: "Смотреть демо",
    level: (n: number) => `${n}-й уровень`,
    toLevel: (n: number) => `до ${n}-го уровня`,
    totalXp: "Всего XP",
    streak: "Ежедневная серия",
    yourHero: "Твой герой",
    heroHint:
      "Снаряжение надевается в «Оружейной». XP не тратится — открытое снаряжение остаётся твоим.",
    armoury: "Оружейная",
    signOut: "Выйти",
    changeType: "Сменить тип",
    boy: "Мальчик",
    girl: "Девочка",
    createHero: "Создай своего героя",
    createHeroHint: "Зарегистрируйся — появится твой герой, а набранный XP сохранится.",
    signUp: "Регистрация",
    signIn: "Войти",
    ranksTitle: "Лестница званий",
    levelRange: (range: string) => `${range} ур.`,
    passed: "Пройдено",
    youAreHere: "Вы здесь",
    tiles: ["Решено испытаний", "Без ошибок", "Верных ответов", "Бесед"],
    badges: "Награды",
    historyTitle: "Какая история открыта",
    historyHint:
      "Флаг переключает весь каталог: эпохи, предков, события, карты, фильмы и карточки. Язык интерфейса при этом не меняется — он выбирается отдельно.",
  },
  uz: {
    loading: "Yuklanmoqda…",
    error: "Xatolik",
    overline: "Yutuqlar",
    title: "Yutuqlar zali",
    subtitle: "XP to'pla, unvoningni ko'tar va zaldagi barcha nishonlarni qo'lga kirit.",
    demoOn: "Demo yoniq",
    demoOff: "Demo ko'rish",
    level: (n: number) => `${n}-daraja`,
    toLevel: (n: number) => `${n}-darajagacha`,
    totalXp: "Jami XP",
    streak: "Kunlik seriya",
    yourHero: "Sening qahramoning",
    heroHint:
      "Jihozlarni «Qurolxona»da kiyasan. XP sarflanmaydi — ochilgan jihoz sizniki bo'lib qoladi.",
    armoury: "Qurolxona",
    signOut: "Chiqish",
    changeType: "Tipni almashtir",
    boy: "O'g'il bola",
    girl: "Qiz bola",
    createHero: "Qahramoningni yarat",
    createHeroHint:
      "Ro'yxatdan o'tsang, o'z qahramoning paydo bo'ladi va to'plagan XP saqlanib qoladi.",
    signUp: "Ro'yxatdan o't",
    signIn: "Kirish",
    ranksTitle: "Unvonlar zinasi",
    levelRange: (range: string) => `${range}-daraja`,
    passed: "O'tildi",
    youAreHere: "Shu yerdasiz",
    tiles: ["Sinov yechildi", "Xatosiz sinov", "To'g'ri javob", "Suhbat"],
    badges: "Nishonlar",
    historyTitle: "Qaysi tarix ochiq",
    historyHint:
      "Bayroq butun katalogni almashtiradi: davrlar, ajdodlar, voqealar, xaritalar, filmlar va kartochkalar. Interfeys tili esa o'zgarmaydi — u alohida tanlanadi.",
  },
  uk: {
    ranks: {
      Boshlovchi: "Початківець",
      "Ilg'or": "Просунутий",
      Bilimdon: "Знавець",
      Tarixchi: "Історик",
      Alloma: "Учений муж",
      Donishmand: "Мудрець",
      Sohibqiron: "Сохібкіран",
    } as Record<string, string>,
    loading: "Завантаження…",
    error: "Помилка",
    overline: "Досягнення",
    title: "Зала досягнень",
    subtitle: "Набирай XP, підвищуй звання і збери всі нагороди зали.",
    demoOn: "Демо ввімкнено",
    demoOff: "Дивитися демо",
    level: (n: number) => `${n}-й рівень`,
    toLevel: (n: number) => `до ${n}-го рівня`,
    totalXp: "Усього XP",
    streak: "Щоденна серія",
    yourHero: "Твій герой",
    heroHint:
      "Спорядження вдягається у «Зброярні». XP не витрачається — відкрите спорядження лишається твоїм.",
    armoury: "Зброярня",
    signOut: "Вийти",
    changeType: "Змінити тип",
    boy: "Хлопчик",
    girl: "Дівчинка",
    createHero: "Створи свого героя",
    createHeroHint: "Зареєструйся — з'явиться твій герой, а набраний XP збережеться.",
    signUp: "Реєстрація",
    signIn: "Увійти",
    ranksTitle: "Драбина звань",
    levelRange: (range: string) => `${range} рів.`,
    passed: "Пройдено",
    youAreHere: "Ви тут",
    tiles: ["Розв'язано випробувань", "Без помилок", "Правильних відповідей", "Бесід"],
    badges: "Нагороди",
    historyTitle: "Яка історія відкрита",
    historyHint:
      "Прапор перемикає весь каталог: епохи, предків, події, карти, фільми й картки. Мова інтерфейсу при цьому не змінюється — вона обирається окремо.",
  },
};


/**
 * Demo rejim — sahifani «to'ldirilgan» holatda ko'rsatish uchun.
 *
 * YUTUQLAR RO'YXATI BU YERDA TAKRORLANMAYDI. Ilgari o'n bitta yutuq shu yerga
 * so'zma-so'z ko'chirilgan edi va `Achievements.java` bilan ajralib ketishi
 * mumkin edi. Endi ta'riflar serverdan olinadi (V107 da ular bazaga ko'chdi),
 * bu yerda esa faqat NAMUNAVIY raqamlar qo'yiladi.
 */
function demoStatsFrom(real: ProfileStats): ProfileStats {
  const earnedUpTo = 8;
  return {
    profile: {
      clientId: "demo",
      xp: 780,
      level: 4,
      streakDays: 6,
      rankUz: "Ilg'or",
      rankRu: "Продвинутый",
      rankEmoji: "🚀",
      xpIntoLevel: 180,
      xpForNext: 400,
      activeToday: true,
    },
    totalQuizzes: 14,
    perfectQuizzes: 5,
    totalCorrect: 52,
    totalQuestions: 64,
    conversations: 9,
    heroesTalked: 3,
    achievements: real.achievements.map((a, i) => ({
      ...a,
      earned: i < earnedUpTo,
      progress: i < earnedUpTo ? a.target : Math.max(1, Math.round(a.target * 0.6)),
    })),
  };
}

export default function ProfilePage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const [real, setReal] = useState<ProfileStats | null>(null);
  const [demo, setDemo] = useState(false);
  const [avatar, setAvatar] = useState<AvatarState | null>(null);
  // Qaysi jinsning tiplari ko'rsatilyapti. Tip tanlanganda jins ham shunga o'tadi.
  const [genderTab, setGenderTab] = useState<Gender | null>(null);
  const [avatarError, setAvatarError] = useState<string | null>(null);
  /* Tiplar ro'yxati bazadan (V107). Kelmasa — tanlov ko'rsatilmaydi,
     sahifaning qolgani ishlayveradi. */
  const [archetypes, setArchetypes] = useState<Archetype[]>([]);
  /* Unvonlar zinapoyasi bazadan (V107). Kelmasa — lenta ko'rsatilmaydi. */
  const [ranks, setRanks] = useState<Rank[]>([]);

  useEffect(() => {
    fetchArchetypes().then(setArchetypes);
    api<Rank[]>("/api/ranks").then(setRanks).catch(() => setRanks([]));
    api<ProfileStats>(`/api/profile/${getClientId()}/stats`)
      .then(setReal)
      .catch(() => setReal(null));
    if (getToken()) {
      authApi<AvatarState>("/api/avatar")
        .then((next) => {
          setAvatar(next);
          setGenderTab(next.gender ?? "MALE");
        })
        .catch(() => setAvatar(null));
    }
  }, []);

  /** Tipni almashtirish bepul: jihozlar joyida qoladi, faqat qiyofa o'zgaradi. */
  async function chooseArchetype(code: string) {
    try {
      const next = await authApi<AvatarState>("/api/avatar/archetype", {
        method: "PATCH",
        body: JSON.stringify({ archetype: code }),
      });
      setAvatar(next);
      setGenderTab(next.gender ?? genderTab);
      setAvatarError(null);
    } catch (e) {
      setAvatarError(e instanceof Error ? e.message : t.error);
    }
  }

  /* Demo yutuq ta'riflarini serverdan oladi — shuning uchun u haqiqiy
     javob kelgandagina ishlaydi. */
  const stats = demo && real ? demoStatsFrom(real) : real;

  if (!stats) {
    return (
      <p className="py-20 text-center font-display text-sm uppercase tracking-[0.3em] text-dust">
        {t.loading}
      </p>
    );
  }

  const p = stats.profile;
  const progressPct = Math.round((p.xpIntoLevel / p.xpForNext) * 100);
  /* Joriy pog'ona DARAJA bo'yicha topiladi, nom bo'yicha emas: nom
     tahrirlansa ham lenta to'g'ri pog'onani belgilaydi. */
  const currentRankIdx = ranks.reduce(
    (found, r, i) => (r.minLevel <= p.level ? i : found),
    -1,
  );
  const earned = stats.achievements.filter((a) => a.earned);

  /* Unvon ikkala tilda serverdan keladi (V107) — ilgari ruscha nom shu yerda
     O'ZBEKCHA NOM bo'yicha qidirilardi va unvon tuzatilsa yo'qolardi. */
  const rankLabel = lang === "ru" ? p.rankRu : p.rankUz;

  const STATS_TILES = [
    String(stats.totalQuizzes),
    String(stats.perfectQuizzes),
    `${stats.totalCorrect}/${stats.totalQuestions}`,
    String(stats.conversations),
  ].map((value, i) => ({ value, label: t.tiles[i] }));

  return (
    <div className="space-y-14">
      <div className="flex flex-wrap items-end justify-between gap-5">
        <SectionTitle
          align="left"
          overline={t.overline}
          title={t.title}
          subtitle={t.subtitle}
        />
        <Button variant={demo ? "zar" : "steel"} size="sm" onClick={() => setDemo(!demo)}>
          {demo ? t.demoOn : t.demoOff}
        </Button>
      </div>

      {/* ===================== Unvon lavhasi ===================== */}
      <Panel corners girih className="p-7 sm:p-9">
        <div className="flex flex-wrap items-center gap-8">
          <HeroMedallion emoji={p.rankEmoji} size="md" accent="zar" />

          <div className="min-w-[15rem] flex-1">
            <p className="font-display text-[10px] font-semibold uppercase tracking-[0.3em] text-zar/90">
              {t.level(p.level)}
            </p>
            <h2 className="tt-gold-text mt-2 font-display text-3xl font-bold uppercase tracking-[0.06em] sm:text-4xl">
              {rankLabel}
            </h2>

            <div className="mt-5">
              <div className="mb-2 flex justify-between text-[10px] font-semibold uppercase tracking-[0.16em] text-dust">
                <span>
                  {p.xpIntoLevel} / {p.xpForNext} XP
                </span>
                <span>{t.toLevel(p.level + 1)}</span>
              </div>
              <div className="h-2.5 overflow-hidden rounded-sm border border-steel-2 bg-obsidian/70">
                <motion.div
                  initial={{ width: 0 }}
                  animate={{ width: `${progressPct}%` }}
                  transition={{ duration: 1.1, ease: [0.16, 1, 0.3, 1] }}
                  className="h-full bg-[linear-gradient(90deg,#7a5f1c,#c8a247_45%,#f3d98b)]"
                />
              </div>
            </div>
          </div>

          <div className="flex gap-3">
            <div className="rounded-sm border border-zar/40 bg-zar/10 px-5 py-3.5 text-center">
              <p className="font-display text-2xl font-bold text-zar-bright">{p.xp}</p>
              <p className="mt-1 text-[9px] font-semibold uppercase tracking-[0.2em] text-dust">
                {t.totalXp}
              </p>
            </div>
            <div className="rounded-sm border border-qon/45 bg-qon/12 px-5 py-3.5 text-center">
              <p className="font-display text-2xl font-bold text-[#e8a99f]">{p.streakDays}</p>
              <p className="mt-1 text-[9px] font-semibold uppercase tracking-[0.2em] text-dust">
                {t.streak}
              </p>
            </div>

            {/* Reyting jadvali — qo'shni lavhalar bilan bir qatorda */}
            <LeaderboardButton />
          </div>
        </div>
      </Panel>

      {/* ===================== Qahramon sahnasi ===================== */}
      {avatar ? (
        <Panel corners girih className="p-7 sm:p-9">
          <div className="flex flex-col items-center gap-8 sm:flex-row sm:items-center">
            <Avatar3D
              gender={avatar.gender}
              archetype={avatar.archetype}
              equipped={avatar.equipped}
              size={180}
            />
            <div className="flex-1 text-center sm:text-left">
              <p className="font-display text-[10px] font-semibold uppercase tracking-[0.3em] text-zar/90">
                {t.yourHero}
              </p>
              <h2 className="mt-2 font-display text-2xl font-bold uppercase tracking-[0.06em] text-marble">
                {archetypeName(archetypes, avatar.archetype, lang) || rankLabel}
              </h2>
              <p className="mt-2 text-sm leading-relaxed text-dust">{t.heroHint}</p>
              <div className="mt-6 flex flex-wrap justify-center gap-3 sm:justify-start">
                <ButtonLink href="/qurolxona" variant="zar" size="sm">
                  {t.armoury}
                </ButtonLink>
                <Button
                  variant="steel"
                  size="sm"
                  onClick={() => {
                    logout();
                    window.location.href = "/";
                  }}
                >
                  {t.signOut}
                </Button>
              </div>
            </div>
          </div>

          {/*
            Tipni almashtirish — bepul va istalgan paytda: bu shaxsni tanlash,
            mukofot emas. Jihozlar joyida qoladi, faqat gavda va libos o'zgaradi.
          */}
          <div className="mt-8 border-t border-steel-2 pt-6">
            <div className="flex flex-wrap items-center justify-between gap-3">
              <h3 className="font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-zar/85">
                {t.changeType}
              </h3>
              <div className="flex gap-2">
                {(["MALE", "FEMALE"] as Gender[]).map((gnd) => (
                  <button
                    key={gnd}
                    onClick={() => setGenderTab(gnd)}
                    aria-pressed={genderTab === gnd}
                    className={`rounded-sm border px-3 py-1.5 font-display text-[10px] font-semibold uppercase tracking-[0.14em] transition-colors ${
                      genderTab === gnd
                        ? "border-zar/70 bg-zar/12 text-zar-bright"
                        : "border-steel-2 text-dust hover:border-zar/40"
                    }`}
                  >
                    {gnd === "MALE" ? t.boy : t.girl}
                  </button>
                ))}
              </div>
            </div>

            {avatarError && <p className="mt-3 text-xs text-[#e8a99f]">{avatarError}</p>}

            <div className="tt-no-scrollbar -mx-2 mt-4 flex gap-3 overflow-x-auto px-2 pb-2">
              {archetypesOf(archetypes, genderTab ?? "MALE").map((option) => {
                const active = avatar.archetype === option.code;
                return (
                  <button
                    key={option.code}
                    onClick={() => chooseArchetype(option.code)}
                    aria-pressed={active}
                    className={`relative flex min-w-[7.5rem] shrink-0 flex-col items-center rounded-sm border p-3 transition-colors ${
                      active ? "border-zar/70 bg-zar/10" : "border-steel-2 bg-steel/40 hover:border-zar/40"
                    }`}
                  >
                    <Character gender={option.gender} archetype={option.code} size={64} />
                    <span
                      className={`mt-2 font-display text-[10px] font-bold uppercase tracking-[0.08em] ${
                        active ? "text-zar-bright" : "text-dust"
                      }`}
                    >
                      {archetypeName(archetypes, option.code, lang)}
                    </span>
                  </button>
                );
              })}
            </div>
          </div>
        </Panel>
      ) : (
        <Panel tone="hollow" className="flex flex-col items-center gap-5 p-7 text-center sm:flex-row sm:text-left">
          <Character
            gender="MALE"
            archetype="oddiy-yigit"
            equipped={{ BODY: "oddiy-chopon", HEAD: "doppi" }}
            size={120}
          />
          <div className="flex-1">
            <h2 className="font-display text-base font-bold uppercase tracking-[0.08em] text-marble">
              {t.createHero}
            </h2>
            <p className="mt-2 text-sm leading-relaxed text-dust">{t.createHeroHint}</p>
            <div className="mt-5 flex flex-wrap justify-center gap-3 sm:justify-start">
              <ButtonLink href="/royxat" variant="zar" size="sm">
                {t.signUp}
              </ButtonLink>
              <ButtonLink href="/kirish" variant="ghost" size="sm">
                {t.signIn}
              </ButtonLink>
            </div>
          </div>
        </Panel>
      )}

      {/* ===================== Qaysi tarix ochiq ===================== */}
      <section>
        <h2 className="flex items-center gap-2.5 font-display text-sm font-bold uppercase tracking-[0.24em] text-zar/85">
          <Star className="h-3.5 w-3.5" />
          {t.historyTitle}
        </h2>
        <p className="mt-3 max-w-2xl text-sm leading-relaxed text-dust">{t.historyHint}</p>
        <CountrySwitch className="mt-5" />
      </section>

      {/* ===================== Unvonlar zinasi ===================== */}
      <section>
        <h2 className="flex items-center gap-2.5 font-display text-sm font-bold uppercase tracking-[0.24em] text-zar/85">
          <Star className="h-3.5 w-3.5" />
          {t.ranksTitle}
        </h2>
        <div className="tt-no-scrollbar -mx-4 mt-5 flex gap-3 overflow-x-auto px-4 pb-2 sm:mx-0 sm:px-0">
          {ranks.map((r, i) => {
            const current = i === currentRankIdx;
            const passed = i < currentRankIdx;
            return (
              <div
                key={r.minLevel}
                className={`tt-reveal relative min-w-[8.5rem] shrink-0 rounded-sm border p-4 text-center transition ${
                  current
                    ? "border-zar/70 bg-zar/12"
                    : passed
                      ? "border-zar/25 bg-steel/60"
                      : "border-steel-2 bg-steel/35"
                }`}
                style={{ animationDelay: `${i * 60}ms` }}
              >
                {current && <CornerFrame />}
                <span aria-hidden className={`text-3xl ${current || passed ? "" : "opacity-35 grayscale"}`}>
                  {r.emoji}
                </span>
                <p
                  className={`mt-2 font-display text-xs font-bold uppercase tracking-[0.08em] ${
                    current ? "text-zar-bright" : passed ? "text-parchment" : "text-dust/80"
                  }`}
                >
                  {lang === "ru" ? (r.nameRu ?? r.nameUz) : r.nameUz}
                </p>
                <p className="mt-1 text-[10px] text-dust/85">
                  {/* Oraliq zinapoyaning o'zidan chiqadi: keyingi pog'onagacha,
                      oxirgisida esa «20+». Ilgari u qo'lda yozilgan satr edi. */}
                  {t.levelRange(
                    ranks[i + 1] ? `${r.minLevel}–${ranks[i + 1].minLevel - 1}` : `${r.minLevel}+`,
                  )}
                </p>
                {passed && (
                  <p className="mt-1.5 text-[9px] font-semibold uppercase tracking-[0.14em] text-zar/90">
                    {t.passed}
                  </p>
                )}
                {current && (
                  <p className="mt-1.5 text-[9px] font-semibold uppercase tracking-[0.14em] text-zar-bright">
                    {t.youAreHere}
                  </p>
                )}
              </div>
            );
          })}
        </div>
      </section>

      {/* ===================== Raqamlar ===================== */}
      <section className="grid grid-cols-2 gap-4 sm:grid-cols-4">
        {STATS_TILES.map((s, i) => (
          <Panel key={s.label} corners className="p-5 text-center">
            <span className="tt-reveal block" style={{ animationDelay: `${i * 70}ms` }}>
              <p className="tt-gold-text font-display text-3xl font-bold">{s.value}</p>
              <p className="mt-2 text-[9px] font-semibold uppercase tracking-[0.2em] text-dust">
                {s.label}
              </p>
            </span>
          </Panel>
        ))}
      </section>

      {/* ===================== Nishonlar ===================== */}
      <section>
        <div className="flex items-center justify-between gap-4">
          <h2 className="flex items-center gap-2.5 font-display text-sm font-bold uppercase tracking-[0.24em] text-zar/85">
            <Star className="h-3.5 w-3.5" />
            {t.badges}
          </h2>
          <Badge tone="zar">
            {earned.length} / {stats.achievements.length}
          </Badge>
        </div>

        <div className="mt-5 grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {stats.achievements.map((a, i) => (
            <div
              key={a.code}
              className={`tt-reveal relative overflow-hidden rounded-md border p-5 ${
                a.earned
                  ? "tt-steel-surface border-zar/45"
                  : "border-steel-2 bg-steel/30"
              }`}
              style={{ animationDelay: `${Math.min(i * 45, 500)}ms` }}
            >
              {a.earned && <CornerFrame />}
              <div className="relative flex items-start gap-3.5">
                <span
                  aria-hidden
                  className={`text-3xl ${a.earned ? "drop-shadow-[0_4px_14px_rgba(0,0,0,0.7)]" : "opacity-30 grayscale"}`}
                >
                  {a.emoji}
                </span>
                <div className="flex-1">
                  <h3
                    className={`font-display text-xs font-bold uppercase leading-snug tracking-[0.06em] ${
                      a.earned ? "text-zar-bright" : "text-dust/85"
                    }`}
                  >
                    {a.titleUz}
                  </h3>
                  <p className={`mt-1.5 text-xs leading-relaxed ${a.earned ? "text-dust" : "text-dust/80"}`}>
                    {a.descriptionUz}
                  </p>

                  {!a.earned && (
                    <div className="mt-3">
                      <div className="h-1.5 overflow-hidden rounded-sm bg-obsidian/70">
                        <div
                          className="h-full bg-[linear-gradient(90deg,#7a5f1c,#c8a247)]"
                          style={{ width: `${Math.round((a.progress / a.target) * 100)}%` }}
                        />
                      </div>
                      <p className="mt-1.5 text-end text-[10px] font-semibold text-dust/80">
                        {a.progress} / {a.target}
                      </p>
                    </div>
                  )}
                </div>
              </div>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}
