"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { authApi, AvatarItem, AvatarState, EquipSlot, getToken } from "@/lib/api";
import { ItemPreview } from "@/components/art/Character";
import Avatar3D from "@/components/art/Avatar3D";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Button, { ButtonLink } from "@/components/ui/Button";
import FilterChip from "@/components/ui/FilterChip";
import { CornerFrame } from "@/components/ui/Ornament";
import { useLang, useT } from "@/lib/lang";
import { avatarItem } from "@/lib/content.ru";

const TXT = {
  ru: {
    slots: {
      HEAD: "Голова",
      BODY: "Верхняя одежда",
      WEAPON: "Оружие",
      SHIELD: "Щит",
      ACCESSORY: "Украшение",
    } as Record<EquipSlot, string>,
    status: { all: "Все", open: "Открыто", locked: "Закрыто" },
    materials: { "mis-": "Медь", "kumush-": "Серебро", "oltin-": "Золото" } as Record<string, string>,
    error: "Ошибка",
    guestSubtitle: "Чтобы снарядить своего героя, нужно сначала зарегистрироваться.",
    guestHint:
      "Зарегистрируйся — появится твой герой. Набранные до этого XP и серия сохранятся.",
    signUp: "Регистрация",
    signIn: "Войти",
    loading: "Загрузка…",
    overline: "Врата VII",
    title: "Оружейная",
    subtitle:
      "Решай тесты, отгадывай загадки, беседуй с предками — так открывается снаряжение. XP не тратится.",
    yourHero: "Твой герой",
    unlockedCount: (open: number, total: number) => `Открыто снаряжения: ${open} / ${total}`,
    all: "Все",
    empty: "По этому выбору снаряжения нет.",
    takeOff: "Снять",
    putOn: "Надеть",
    task: "Задание",
  },
  uz: {
    slots: {
      HEAD: "Bosh",
      BODY: "Ustki kiyim",
      WEAPON: "Qurol",
      SHIELD: "Qalqon",
      ACCESSORY: "Bezak",
    } as Record<EquipSlot, string>,
    status: { all: "Barchasi", open: "Ochilgan", locked: "Yopiq" },
    materials: { "mis-": "Mis", "kumush-": "Kumush", "oltin-": "Oltin" } as Record<string, string>,
    error: "Xatolik",
    guestSubtitle: "Qahramoningni jihozlash uchun avval ro'yxatdan o'tishing kerak.",
    guestHint:
      "Ro'yxatdan o'tsang, o'z qahramoning paydo bo'ladi. Hozirgacha to'plagan XP va seriyang saqlanib qoladi.",
    signUp: "Ro'yxatdan o't",
    signIn: "Kirish",
    loading: "Yuklanmoqda…",
    overline: "Darvoza VII",
    title: "Qurolxona",
    subtitle:
      "Test yech, topishmoq top, qahramonlar bilan gaplash — jihozlar shunday ochiladi. XP sarflanmaydi.",
    yourHero: "Sening qahramoning",
    unlockedCount: (open: number, total: number) => `${open} / ${total} jihoz ochilgan`,
    all: "Barchasi",
    empty: "Bu tanlov bo'yicha jihoz yo'q.",
    takeOff: "Yechish",
    putOn: "Kiyish",
    task: "Topshiriq",
  },
  uk: {
    slots: {
      HEAD: "Голова",
      BODY: "Верхній одяг",
      WEAPON: "Зброя",
      SHIELD: "Щит",
      ACCESSORY: "Прикраса",
    } as Record<EquipSlot, string>,
    status: { all: "Усі", open: "Відкрито", locked: "Закрито" },
    materials: { "mis-": "Мідь", "kumush-": "Срібло", "oltin-": "Золото" } as Record<string, string>,
    error: "Помилка",
    guestSubtitle: "Щоб спорядити свого героя, спершу треба зареєструватися.",
    guestHint: "Зареєструйся — з'явиться твій герой. Набрані до цього XP і серія збережуться.",
    signUp: "Реєстрація",
    signIn: "Увійти",
    loading: "Завантаження…",
    overline: "Брама VII",
    title: "Зброярня",
    subtitle:
      "Розв'язуй тести, відгадуй загадки, розмовляй із предками — так відкривається спорядження. XP не витрачається.",
    yourHero: "Твій герой",
    unlockedCount: (open: number, total: number) => `Відкрито спорядження: ${open} / ${total}`,
    all: "Усі",
    empty: "За цим вибором спорядження немає.",
    takeOff: "Зняти",
    putOn: "Вдягнути",
    task: "Завдання",
  },
};


const SLOTS: EquipSlot[] = ["HEAD", "BODY", "WEAPON", "SHIELD", "ACCESSORY"];

type Status = "all" | "open" | "locked";

const STATUSES: Status[] = ["all", "open", "locked"];

/**
 * Material chizig'i: mis → kumush → oltin. Kod prefiksidan aniqlanadi va
 * kartochkada rangli yorliq bo'lib ko'rinadi — shunda bola bir chiziqning uch
 * bosqichini darhol tanib oladi (ular ordinal bo'yicha yonma-yon turadi).
 * Prefiks — jihoz kodining bo'lagi, u tarjima qilinmaydi; yozuv TXT dan.
 */
const MATERIALS: { prefix: string; className: string }[] = [
  { prefix: "mis-", className: "border-[#b87333]/60 bg-[#b87333]/15 text-[#e0a06a]" },
  { prefix: "kumush-", className: "border-[#aeb9c9]/60 bg-[#aeb9c9]/15 text-[#dde5ef]" },
  { prefix: "oltin-", className: "border-zar/70 bg-zar/15 text-zar-bright" },
];

function materialOf(code: string) {
  return MATERIALS.find((m) => code.startsWith(m.prefix));
}

/**
 * Kvest shartlarida progressni raqam bilan ko'rsatish har doim ham foydali emas:
 * «istalgan davr testida 8 ball» uchun 0/8 tushunarsiz, chunki bu bitta
 * urinishda hal bo'ladi. Shuning uchun progress faqat to'planadigan shartlarda
 * ko'rsatiladi.
 */
const COUNTABLE = new Set([
  "LEVEL",
  "TOTAL_XP",
  "STREAK",
  "QUIZ_PERFECT",
  "RIDDLE_COUNT",
  "TALK_HEROES",
]);

function showsProgress(item: AvatarItem): boolean {
  // Ball shartlarida progress faqat urinish bo'lgandan keyin mazmunli bo'ladi
  return COUNTABLE.has(item.unlockType) || item.progress > 0;
}

export default function QurolxonaPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  /* `load` — barqaror `useCallback([])`; til almashganda u qayta yaratilib
     avatar qaytadan so'ralmasin, shuning uchun matn ref orqali olinadi. */
  const tRef = useRef(t);
  useEffect(() => {
    tRef.current = t;
  }, [t]);
  const [state, setState] = useState<AvatarState | null>(null);
  const [slot, setSlot] = useState<EquipSlot | null>(null);
  const [status, setStatus] = useState<Status>("all");
  const [guest, setGuest] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // setState effekt tanasida sinxron chaqirilmaydi — hammasi promise ichida
  const load = useCallback(() => {
    const request = getToken()
      ? authApi<AvatarState>("/api/avatar")
      : Promise.resolve(null);
    request
      .then((next) => (next ? setState(next) : setGuest(true)))
      .catch((e) => setError(e instanceof Error ? e.message : tRef.current.error));
  }, []);

  useEffect(load, [load]);

  async function toggle(item: AvatarItem) {
    const worn = state?.equipped[item.slot] === item.code;
    try {
      const next = await authApi<AvatarState>("/api/avatar/equip", {
        method: "POST",
        body: JSON.stringify({ slot: item.slot, itemCode: worn ? null : item.code }),
      });
      setState(next);
    } catch (e) {
      setError(e instanceof Error ? e.message : t.error);
    }
  }

  if (guest) {
    return (
      <div className="mx-auto max-w-2xl space-y-10">
        <SectionTitle
          overline={t.overline}
          title={t.title}
          subtitle={t.guestSubtitle}
        />
        <Panel corners girih className="p-8 text-center sm:p-12">
          <Avatar3D
            equipped={{ BODY: "oddiy-chopon", HEAD: "doppi" }}
            size={160}
            className="mx-auto"
          />
          <p className="mx-auto mt-6 max-w-md text-sm leading-relaxed text-dust">{t.guestHint}</p>
          <div className="mt-8 flex flex-wrap justify-center gap-3">
            <ButtonLink href="/royxat" variant="zar" size="md">
              {t.signUp}
            </ButtonLink>
            <ButtonLink href="/kirish" variant="ghost" size="md">
              {t.signIn}
            </ButtonLink>
          </div>
        </Panel>
      </div>
    );
  }

  if (!state) {
    return (
      <p className="py-20 text-center font-display text-sm uppercase tracking-[0.3em] text-dust">
        {error ?? t.loading}
      </p>
    );
  }

  const visible = state.items.filter(
    (i) =>
      (slot === null || i.slot === slot) &&
      (status === "all" || (status === "open" ? i.unlocked : !i.unlocked))
  );
  const openCount = state.items.filter((i) => i.unlocked).length;

  return (
    <div className="space-y-10">
      <SectionTitle overline={t.overline} title={t.title} subtitle={t.subtitle} />

      {error && (
        <Panel tone="hollow" className="p-4 text-center">
          <p className="text-sm text-[#e8a99f]">{error}</p>
        </Panel>
      )}

      <div className="grid gap-6 lg:grid-cols-[19rem_1fr] lg:items-start">
        {/* Jonli ko'rinish — to'liq bo'yda, equip bosilishi bilan yangilanadi */}
        <Panel corners girih className="p-6 text-center lg:sticky lg:top-24">
          <Avatar3D
            gender={state.gender}
            archetype={state.archetype}
            equipped={state.equipped}
            size={200}
            className="mx-auto"
          />
          <p className="mt-4 font-display text-[10px] font-semibold uppercase tracking-[0.24em] text-zar/90">
            {t.yourHero}
          </p>
          <p className="mt-2 text-xs text-dust">
            {t.unlockedCount(openCount, state.items.length)}
          </p>
        </Panel>

        <div className="space-y-4">
          <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:px-0">
            <FilterChip active={slot === null} onClick={() => setSlot(null)}>
              {t.all}
            </FilterChip>
            {SLOTS.map((s) => (
              <FilterChip key={s} active={slot === s} onClick={() => setSlot(s)}>
                {t.slots[s]}
              </FilterChip>
            ))}
          </div>

          <div className="tt-no-scrollbar -mx-4 flex gap-2 overflow-x-auto px-4 sm:mx-0 sm:px-0">
            {STATUSES.map((s) => (
              <FilterChip key={s} active={status === s} onClick={() => setStatus(s)}>
                {t.status[s]}
              </FilterChip>
            ))}
          </div>

          {visible.length === 0 && (
            <Panel tone="hollow" className="p-6 text-center">
              <p className="text-sm text-dust">{t.empty}</p>
            </Panel>
          )}

          <div className="grid gap-4 sm:grid-cols-2">
            {visible.map((item, i) => {
              const worn = state.equipped[item.slot] === item.code;
              const material = materialOf(item.code);
              const info = avatarItem(item, lang);
              return (
                <article
                  key={item.code}
                  className={`tt-reveal relative overflow-hidden rounded-md border p-5 ${
                    item.unlocked
                      ? worn
                        ? "tt-steel-surface border-zar/70"
                        : "tt-steel-surface border-zar/25"
                      : "border-steel-2 bg-steel/30"
                  }`}
                  style={{ animationDelay: `${Math.min(i * 45, 400)}ms` }}
                >
                  {worn && <CornerFrame />}
                  <div className="relative flex items-start gap-4">
                    <span
                      aria-hidden
                      className={`grid h-16 w-16 shrink-0 place-items-center rounded-sm border ${
                        item.unlocked
                          ? "border-zar/30 bg-obsidian/60"
                          : "border-steel-2 bg-obsidian/40 opacity-35 grayscale"
                      }`}
                    >
                      <ItemPreview code={item.code} slot={item.slot} size={56} />
                    </span>

                    <div className="flex-1">
                      <div className="flex flex-wrap items-center gap-2">
                        <p className="font-display text-[9px] font-semibold uppercase tracking-[0.2em] text-zar/90">
                          {t.slots[item.slot]}
                        </p>
                        {material && (
                          <span
                            className={`rounded-sm border px-1.5 py-0.5 font-display text-[8px] font-semibold uppercase tracking-[0.14em] ${material.className}`}
                          >
                            {t.materials[material.prefix]}
                          </span>
                        )}
                      </div>
                      <h3
                        className={`mt-1 font-display text-sm font-bold uppercase leading-snug ${
                          item.unlocked ? "text-marble" : "text-dust/85"
                        }`}
                      >
                        {item.unlocked ? info.name : `🔒 ${info.name}`}
                      </h3>
                      <p className="mt-2 text-xs leading-relaxed text-dust">{info.description}</p>

                      {item.unlocked ? (
                        <div className="mt-4">
                          <Button
                            variant={worn ? "steel" : "zar"}
                            size="sm"
                            onClick={() => toggle(item)}
                          >
                            {worn ? t.takeOff : t.putOn}
                          </Button>
                        </div>
                      ) : (
                        /*
                          Yopiq jihozning asosiy vazifasi — TOPSHIRIQNI aytish.
                          Bola nimani o'rganishi kerakligini so'z bilan o'qiydi,
                          progress esa qanchalik yaqin qolganini ko'rsatadi.
                        */
                        <div className="mt-4 rounded-sm border border-zar/20 bg-obsidian/40 p-3">
                          <p className="font-display text-[9px] font-semibold uppercase tracking-[0.2em] text-zar/80">
                            {t.task}
                          </p>
                          <p className="mt-1.5 text-xs font-semibold leading-relaxed text-parchment">
                            {item.requirementUz}
                          </p>
                          {showsProgress(item) && (
                            <>
                              <div className="mt-2.5 h-1.5 overflow-hidden rounded-sm bg-obsidian/70">
                                <div
                                  className="h-full bg-[linear-gradient(90deg,#7a5f1c,#c8a247)]"
                                  style={{
                                    width: `${Math.min(100, Math.round((item.progress / item.target) * 100))}%`,
                                  }}
                                />
                              </div>
                              <p className="mt-1.5 text-end text-[10px] font-semibold text-dust/80">
                                {item.progress} / {item.target}
                              </p>
                            </>
                          )}
                        </div>
                      )}
                    </div>
                  </div>
                </article>
              );
            })}
          </div>
        </div>
      </div>
    </div>
  );
}
