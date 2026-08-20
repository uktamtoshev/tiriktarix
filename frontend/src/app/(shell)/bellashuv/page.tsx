"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { api, duelApi, DuelState, Era, Hero, QueueState } from "@/lib/api";
import { eraEmoji } from "@/lib/eras";
import { shuffled } from "@/lib/quiz";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Button from "@/components/ui/Button";
import { useLang, useT } from "@/lib/lang";
import { countryQuery, useCountry } from "@/lib/country";
import { heroName } from "@/lib/heroes.ru";
import { eraName } from "@/lib/content.ru";

const TXT = {
  ru: {
    error: "Произошла ошибка",
    back: "Назад",
    overline: "Врата VII",
    title: "Дуэли",
    subtitle:
      "Двое игроков, одна минута. Соперник не видит твоих вопросов — виден только счёт. Тема у каждого своя.",
    ranked: "По рейтингу",
    play: "Играть",
    playHint:
      "Выбираешь тему и нажимаешь кнопку — сервер сам найдёт соперника, близкого тебе по силе. Победа поднимает рейтинг.",
    findOpponent: "Найти соперника",
    orWithFriend: "Или с другом — по коду",
    createRoom: "Открыть состязание",
    createRoomHint: "Получишь четырёхзначный код и скажешь его другу.",
    joinRoom: "Войти по коду",
    joinRoomHint: "Введёшь код, который назвал друг.",
    opponentRole: "Соперник",
    hostRole: "Приглашающий",
    player: "Игрок",
    duelCode: "Код состязания",
    yourName: "Твоё имя",
    yourTopic: "Твоя тема",
    topicHint: "Вопросы придут из этой темы. У соперника она может быть другой.",
    waiting: "Ожидание…",
    join: "Войти",
    getCode: "Получить код",
    searching: "Ищем соперника",
    yourRating: "Твой рейтинг",
    waitedAny: (sec: number) => `${sec} секунд · принимается любой соперник`,
    waitedWindow: (sec: number, tol: number) => `${sec} секунд · окно рейтинга ±${tol}`,
    searchHint:
      "Сначала ищется соперник, равный тебе по силе. Чем дольше ждёшь, тем шире круг — без соперника не останешься.",
    cancel: "Отмена",
    leaveDuel: "Выйти из состязания",
    seconds: (n: number) => `${n} секунд`,
    score: "счёт",
    waitingOpponent: "Ожидание…",
    opponentFound: "Соперник найден",
    opponentInfo: (rating: number | null, topic: string) => `Рейтинг ${rating} · тема ${topic}`,
    startsWhenReady: "Начнём, как только вы оба будете готовы…",
    friendJoinedHost:
      "Соперник присоединился. Как начнёшь, у вас обоих пойдёт отсчёт на одну минуту.",
    friendJoinedGuest: "Ты готов. Старт даёт хозяин комнаты.",
    tellCode: "Скажи этот код другу — он войдёт через «Войти по коду».",
    start: "Начать",
    waitingForOpponent: "Ждём соперника…",
    yourQuestion: "Твой вопрос",
    wrongHint: "За неверный ответ балл не даётся — вопрос просто меняется. Торопись!",
    timeUp: "Время вышло",
    win: "Победа",
    loss: "Поражение",
    draw: "Ничья",
    rating: "Рейтинг",
    playAgain: "Ещё одно состязание",
  },
  uz: {
    error: "Xatolik yuz berdi",
    back: "Orqaga",
    overline: "Darvoza VII",
    title: "Bellashuv",
    subtitle:
      "Ikki o'yinchi, bir daqiqa. Raqibing savollaringni ko'rmaydi — faqat hisob ko'rinadi. Mavzu har kimda o'ziniki.",
    ranked: "Reyting bo'yicha",
    play: "O'ynash",
    playHint:
      "Mavzuni tanlaysan va tugmani bosasan — server senga kuching yaqin bo'lgan raqibni topadi. G'alaba reytingni ko'taradi.",
    findOpponent: "Raqib topish",
    orWithFriend: "Yoki do'sting bilan — kod orqali",
    createRoom: "Bellashuv ochish",
    createRoomHint: "To'rt xonali kod olasan va do'stingga aytasan.",
    joinRoom: "Kod bilan qo'shilish",
    joinRoomHint: "Do'sting aytgan kodni kiritasan.",
    opponentRole: "Raqib",
    hostRole: "Chaqiruvchi",
    player: "O'yinchi",
    duelCode: "Bellashuv kodi",
    yourName: "Isming",
    yourTopic: "Mavzung",
    topicHint: "Savollar shu mavzudan keladi. Raqibingniki boshqa bo'lishi mumkin.",
    waiting: "Kutilmoqda…",
    join: "Qo'shilish",
    getCode: "Kod olish",
    searching: "Raqib qidirilmoqda",
    yourRating: "Sening reytinging",
    waitedAny: (sec: number) => `${sec} soniya · har qanday raqib qabul qilinadi`,
    waitedWindow: (sec: number, tol: number) => `${sec} soniya · ±${tol} reyting oynasi`,
    searchHint:
      "Avval kuching teng bo'lgan raqib qidiriladi. Kutish uzaygani sayin doira kengayadi — shunda ham raqibsiz qolmaysan.",
    cancel: "Bekor qilish",
    leaveDuel: "Bellashuvdan chiqish",
    seconds: (n: number) => `${n} soniya`,
    score: "hisob",
    waitingOpponent: "Kutilmoqda…",
    opponentFound: "Raqib topildi",
    opponentInfo: (rating: number | null, topic: string) => `Reytingi ${rating} · mavzusi ${topic}`,
    startsWhenReady: "Ikkalangiz tayyor bo'lishingiz bilan boshlanadi…",
    friendJoinedHost:
      "Raqibing qo'shildi. Boshlaganingda ikkalangizda ham bir daqiqa hisoblana boshlaydi.",
    friendJoinedGuest: "Sen tayyorsan. Startni xona egasi beradi.",
    tellCode: "Bu kodni do'stingga ayt — u «Kod bilan qo'shilish» orqali kiradi.",
    start: "Boshlash",
    waitingForOpponent: "Raqib kutilmoqda…",
    yourQuestion: "Sening savoling",
    wrongHint: "Xato javobda ball qo'shilmaydi — savol shunchaki almashadi. Shoshil!",
    timeUp: "Vaqt tugadi",
    win: "G'alaba",
    loss: "Mag'lubiyat",
    draw: "Durang",
    rating: "Reyting",
    playAgain: "Yana bellashuv",
  },
  uk: {
    error: "Сталася помилка",
    back: "Назад",
    overline: "Брама VII",
    title: "Дуелі",
    subtitle:
      "Двоє гравців, одна хвилина. Суперник не бачить твоїх питань — видно лише рахунок. Тема в кожного своя.",
    ranked: "За рейтингом",
    play: "Грати",
    playHint:
      "Обираєш тему й натискаєш кнопку — сервер сам знайде суперника, близького тобі за силою. Перемога піднімає рейтинг.",
    findOpponent: "Знайти суперника",
    orWithFriend: "Або з другом — за кодом",
    createRoom: "Відкрити дуель",
    createRoomHint: "Отримаєш чотиризначний код і скажеш його другові.",
    joinRoom: "Увійти за кодом",
    joinRoomHint: "Уведеш код, який назвав друг.",
    opponentRole: "Суперник",
    hostRole: "Запрошувач",
    player: "Гравець",
    duelCode: "Код дуелі",
    yourName: "Твоє ім'я",
    yourTopic: "Твоя тема",
    topicHint: "Питання прийдуть із цієї теми. У суперника вона може бути іншою.",
    waiting: "Очікування…",
    join: "Увійти",
    getCode: "Отримати код",
    searching: "Шукаємо суперника",
    yourRating: "Твій рейтинг",
    waitedAny: (sec: number) => `${sec} секунд · приймається будь-який суперник`,
    waitedWindow: (sec: number, tol: number) => `${sec} секунд · вікно рейтингу ±${tol}`,
    searchHint:
      "Спершу шукається суперник, рівний тобі за силою. Що довше чекаєш, то ширше коло — без суперника не залишишся.",
    cancel: "Скасувати",
    leaveDuel: "Вийти з дуелі",
    seconds: (n: number) => `${n} секунд`,
    score: "рахунок",
    waitingOpponent: "Очікування…",
    opponentFound: "Суперника знайдено",
    opponentInfo: (rating: number | null, topic: string) => `Рейтинг ${rating} · тема ${topic}`,
    startsWhenReady: "Почнемо, щойно ви обидва будете готові…",
    friendJoinedHost:
      "Суперник приєднався. Щойно почнеш, у вас обох піде відлік на одну хвилину.",
    friendJoinedGuest: "Ти готовий. Старт дає господар кімнати.",
    tellCode: "Скажи цей код другові — він увійде через «Увійти за кодом».",
    start: "Почати",
    waitingForOpponent: "Чекаємо суперника…",
    yourQuestion: "Твоє питання",
    wrongHint: "За неправильну відповідь бал не дається — питання просто змінюється. Поспішай!",
    timeUp: "Час вийшов",
    win: "Перемога",
    loss: "Поразка",
    draw: "Нічия",
    rating: "Рейтинг",
    playAgain: "Ще одна дуель",
  },
};


/**
 * Bellashuv — ikki o'yinchining bir daqiqalik bahsi.
 *
 * ASOSIY QOIDA. Raqib sening savolingni ko'rmaydi, sen ham uniki: savollar
 * serverda turadi va bu sahifaga faqat SENING joriy savoling keladi. Umumiy
 * bo'lgan yagona narsa — hisob va qolgan vaqt.
 *
 * IKKI YO'L.
 *   «O'ynash» — server reytingi yaqin raqibni o'zi topadi va o'yin ikkalasi
 *   ekranga kelishi bilan boshlanadi. Natija reytingga yoziladi.
 *   «Do'st bilan» — kod orqali: xona ochiladi, kod aytiladi. Reytingsiz.
 */

type Step = "mode" | "quick" | "searching" | "create" | "join" | "room";

/** Mavzu tanlovi: davr yoki ajdod. `scope` serverdagi format bilan bir xil. */
type Topic = { scope: string; label: string; emoji: string };

const POLL_MS = 1000;

export default function DuelPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  const [step, setStep] = useState<Step>("mode");
  const [heroes, setHeroes] = useState<Hero[]>([]);
  const [eras, setEras] = useState<Era[]>([]);
  const [nickname, setNickname] = useState("");
  const [topic, setTopic] = useState<Topic | null>(null);
  const [codeInput, setCodeInput] = useState("");
  const [duel, setDuel] = useState<DuelState | null>(null);
  const [queue, setQueue] = useState<QueueState | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  const [picked, setPicked] = useState<number | null>(null);

  /** Javob yuborilayotgan payt kelgan poll javobi eskirgan bo'lishi mumkin. */
  const answering = useRef(false);

  useEffect(() => {
    /* Bayroq almashtirilganda IKKALA so'rov ham yo'lda bo'ladi va keyin
       kelgani yutadi — eski katalog yangisining ustiga yozilib qolardi.
       Shuning uchun javob faqat effekt hali tirik bo'lsa qo'llanadi. */
    let live = true;
    const keep =
      <T,>(apply: (v: T) => void) =>
      (v: T) => {
        if (live) apply(v);
      };
    api<Era[]>(`/api/eras${countryQuery(country)}`).then(keep(setEras)).catch(keep(() => undefined));
    api<Hero[]>(`/api/heroes${countryQuery(country)}`).then(keep(setHeroes)).catch(keep(() => undefined));
    return () => {
      live = false;
    };
  }, [country]);

  const topics: Topic[] = useMemo(
    () => [
      ...eras.map((e) => ({
        scope: `era:${e.code}`,
        label: eraName(e, lang),
        emoji: eraEmoji(e.code),
      })),
      ...heroes.map((h) => ({
        scope: `hero:${h.slug}`,
        label: heroName(h, lang),
        emoji: h.portraitEmoji,
      })),
    ],
    [eras, heroes, lang],
  );

  const labelOf = useCallback(
    (scope: string) => topics.find((item) => item.scope === scope)?.label ?? scope,
    [topics],
  );

  // Navbat: raqib topilishini kutamiz. Oyna kutish bilan kengayadi — shuning
  // uchun har so'rovda server yana juftlashga urinadi.
  useEffect(() => {
    if (step !== "searching") return;
    const id = setInterval(async () => {
      try {
        const q = await duelApi.queueState();
        setQueue(q);
        if (q.phase === "MATCHED" && q.code) {
          setDuel(await duelApi.state(q.code));
          setStep("room");
        }
      } catch {
        // tarmoq uzilsa — keyingi urinishda tiklanadi
      }
    }, POLL_MS);
    return () => clearInterval(id);
  }, [step]);

  // O'yin: hisob va qolgan vaqt shundan keladi
  useEffect(() => {
    if (!duel || duel.phase === "FINISHED") return;
    const code = duel.code;
    const id = setInterval(() => {
      if (answering.current) return;
      duelApi
        .state(code)
        .then((fresh) => {
          if (!answering.current) setDuel(fresh);
        })
        .catch(() => undefined);
    }, POLL_MS);
    return () => clearInterval(id);
  }, [duel]);

  async function run(action: () => Promise<DuelState>) {
    setBusy(true);
    setError(null);
    try {
      setDuel(await action());
      setStep("room");
    } catch (e) {
      setError(e instanceof Error ? e.message : t.error);
    } finally {
      setBusy(false);
    }
  }

  async function startSearch() {
    if (!topic) return;
    setBusy(true);
    setError(null);
    try {
      const q = await duelApi.enqueue(nickname, topic.scope);
      setQueue(q);
      if (q.phase === "MATCHED" && q.code) {
        setDuel(await duelApi.state(q.code));
        setStep("room");
      } else {
        setStep("searching");
      }
    } catch (e) {
      setError(e instanceof Error ? e.message : t.error);
    } finally {
      setBusy(false);
    }
  }

  async function choose(displayIndex: number, originalIndex: number) {
    if (!duel?.question || answering.current) return;
    answering.current = true;
    setPicked(displayIndex);
    try {
      setDuel(await duelApi.answer(duel.code, duel.question.id, originalIndex));
    } catch {
      // tarmoq uzilsa — keyingi poll holatni tiklaydi
    } finally {
      setPicked(null);
      answering.current = false;
    }
  }

  function reset() {
    if (duel) duelApi.leave(duel.code).catch(() => undefined);
    duelApi.dequeue().catch(() => undefined);
    setDuel(null);
    setQueue(null);
    setTopic(null);
    setCodeInput("");
    setError(null);
    setStep("mode");
  }

  const backButton = (onClick: () => void, label: string = t.back) => (
    <button
      onClick={onClick}
      className="inline-flex items-center gap-2 font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-dust transition-colors hover:text-zar"
    >
      <span aria-hidden>←</span> {label}
    </button>
  );

  // ============================ 1-bosqich: rejim ============================

  if (step === "mode") {
    return (
      <div className="space-y-10">
        <SectionTitle
          overline={t.overline}
          title={t.title}
          subtitle={t.subtitle}
        />

        {/* Asosiy yo'l: bir tugma — server raqibni o'zi topadi */}
        <Panel corners girih className="p-8 text-center sm:p-10">
          <p className="font-display text-[11px] font-semibold uppercase tracking-[0.3em] text-zar/90">
            {t.ranked}
          </p>
          <h2 className="mt-3 font-display text-2xl font-bold uppercase tracking-[0.05em] text-marble sm:text-3xl">
            {t.play}
          </h2>
          <p className="mx-auto mt-3 max-w-lg text-sm leading-relaxed text-dust">{t.playHint}</p>
          <div className="mt-7">
            <Button variant="zar" size="lg" onClick={() => setStep("quick")}>
              {t.findOpponent}
            </Button>
          </div>
        </Panel>

        {/* Ikkinchi yo'l: tanish bilan, kod orqali */}
        <div>
          <p className="mb-4 text-center font-display text-[11px] font-semibold uppercase tracking-[0.3em] text-dust">
            {t.orWithFriend}
          </p>
          <div className="grid gap-5 sm:grid-cols-2">
            <button onClick={() => setStep("create")} className="text-left">
              <Panel corners className="h-full p-6 transition-colors hover:border-zar/50">
                <h3 className="font-display text-base font-bold uppercase tracking-[0.05em] text-marble">
                  {t.createRoom}
                </h3>
                <p className="mt-2 text-sm leading-relaxed text-dust">{t.createRoomHint}</p>
              </Panel>
            </button>
            <button onClick={() => setStep("join")} className="text-left">
              <Panel corners className="h-full p-6 transition-colors hover:border-zar/50">
                <h3 className="font-display text-base font-bold uppercase tracking-[0.05em] text-marble">
                  {t.joinRoom}
                </h3>
                <p className="mt-2 text-sm leading-relaxed text-dust">{t.joinRoomHint}</p>
              </Panel>
            </button>
          </div>
        </div>
      </div>
    );
  }

  // ======================= 2-bosqich: ism, kod, mavzu =======================

  if (step === "quick" || step === "create" || step === "join") {
    const joining = step === "join";
    const quick = step === "quick";
    const ready = topic !== null && (!joining || codeInput.trim().length === 4);
    return (
      <div className="space-y-8">
        {backButton(() => {
          setStep("mode");
          setError(null);
        })}

        <SectionTitle
          align="left"
          overline={quick ? t.ranked : joining ? t.opponentRole : t.hostRole}
          title={quick ? t.findOpponent : joining ? t.joinRoom : t.createRoom}
        />

        <Panel corners className="space-y-6 p-6 sm:p-7">
          {joining && (
            <label className="block">
              <span className="font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-zar/90">
                {t.duelCode}
              </span>
              <input
                value={codeInput}
                onChange={(e) => setCodeInput(e.target.value.replace(/\D/g, "").slice(0, 4))}
                inputMode="numeric"
                placeholder="0000"
                aria-label={t.duelCode}
                className="mt-2 w-full rounded-md border border-steel-2 bg-tun/60 px-4 py-3 text-center font-display text-2xl tracking-[0.5em] text-marble outline-none focus:border-zar/60"
              />
            </label>
          )}

          <label className="block">
            <span className="font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-zar/90">
              {t.yourName}
            </span>
            <input
              value={nickname}
              onChange={(e) => setNickname(e.target.value.slice(0, 24))}
              placeholder={quick ? t.player : joining ? t.opponentRole : t.hostRole}
              aria-label={t.yourName}
              className="mt-2 w-full rounded-md border border-steel-2 bg-tun/60 px-4 py-3 text-sm text-marble outline-none focus:border-zar/60"
            />
          </label>

          <div>
            <span className="font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-zar/90">
              {t.yourTopic}
            </span>
            <p className="mt-1 text-xs text-dust">{t.topicHint}</p>
            <div className="tt-no-scrollbar mt-3 max-h-64 overflow-y-auto pr-1">
              <div className="flex flex-wrap gap-2">
                {topics.map((item) => (
                  <button
                    key={item.scope}
                    onClick={() => setTopic(item)}
                    aria-pressed={topic?.scope === item.scope}
                    className={`rounded-md border px-3 py-2 text-xs transition-colors ${
                      topic?.scope === item.scope
                        ? "border-zar/70 bg-zar/15 text-marble"
                        : "border-steel-2 text-dust hover:border-zar/40 hover:text-marble"
                    }`}
                  >
                    {item.emoji} {item.label}
                  </button>
                ))}
              </div>
            </div>
          </div>

          {error && <p className="text-sm text-[#e0a094]">{error}</p>}

          <Button
            variant="zar"
            disabled={!ready || busy}
            onClick={() =>
              quick
                ? startSearch()
                : run(() =>
                    joining
                      ? duelApi.join(codeInput.trim(), nickname, topic!.scope)
                      : duelApi.create(nickname, topic!.scope),
                  )
            }
          >
            {busy ? t.waiting : quick ? t.findOpponent : joining ? t.join : t.getCode}
          </Button>
        </Panel>
      </div>
    );
  }

  // ========================= 3-bosqich: raqib qidiruvi =========================

  if (step === "searching") {
    return (
      <div className="space-y-8">
        <SectionTitle align="left" overline={t.ranked} title={t.searching} />
        <Panel corners girih className="p-9 text-center sm:p-12">
          <p className="font-display text-[11px] font-semibold uppercase tracking-[0.3em] text-zar/90">
            {t.yourRating}
          </p>
          <p className="mt-3 font-display text-5xl font-bold tracking-[0.06em] text-marble sm:text-6xl">
            {queue?.rating ?? "—"}
          </p>

          {/* Qidiruv oynasi kengayib borishini ko'rsatamiz — kutish bekorga emas */}
          <div className="mx-auto mt-8 max-w-sm">
            <div className="h-1.5 overflow-hidden rounded-full bg-steel-2">
              <div
                className="h-full animate-pulse bg-[linear-gradient(90deg,#4fc7c2,#c8a247)] transition-[width] duration-1000 ease-linear"
                style={{ width: `${Math.min(100, ((queue?.waitedSeconds ?? 0) / 45) * 100)}%` }}
              />
            </div>
            <p className="mt-3 text-xs text-dust">
              {queue
                ? queue.waitedSeconds >= 45
                  ? t.waitedAny(queue.waitedSeconds)
                  : t.waitedWindow(queue.waitedSeconds, queue.toleranceNow)
                : "…"}
            </p>
          </div>

          <p className="mx-auto mt-6 max-w-md text-sm leading-relaxed text-dust">{t.searchHint}</p>

          <div className="mt-8">
            <Button
              variant="steel"
              onClick={() => {
                duelApi.dequeue().catch(() => undefined);
                setQueue(null);
                setStep("mode");
              }}
            >
              {t.cancel}
            </Button>
          </div>
        </Panel>
      </div>
    );
  }

  // ============================ 4-bosqich: xona ============================

  if (!duel) return null;

  const waitingForOpponent = duel.phase === "WAITING";

  return (
    <div className="space-y-6">
      {backButton(reset, t.leaveDuel)}

      {/* Umumiy tablo: ikkalasi ko'radigan yagona narsa */}
      <Panel corners className="p-5 sm:p-6">
        <div className="flex items-center justify-between gap-4">
          <Sideboard
            name={duel.me.nickname}
            rating={duel.me.rating}
            topic={labelOf(duel.me.scope)}
            mine
          />
          <div className="shrink-0 text-center">
            <p className="font-display text-3xl font-bold tracking-[0.08em] text-marble sm:text-4xl">
              {duel.me.score} : {duel.opponent?.score ?? 0}
            </p>
            <p className="mt-1 font-display text-[10px] uppercase tracking-[0.3em] text-dust">
              {duel.phase === "RUNNING" ? t.seconds(duel.secondsLeft) : t.score}
            </p>
          </div>
          <Sideboard
            name={duel.opponent?.nickname ?? t.waitingOpponent}
            rating={duel.opponent?.rating ?? null}
            topic={duel.opponent ? labelOf(duel.opponent.scope) : "—"}
          />
        </div>
        {duel.phase === "RUNNING" && (
          <div className="mt-4 h-1.5 overflow-hidden rounded-full bg-steel-2">
            <div
              className="h-full bg-[linear-gradient(90deg,#f3d98b,#c8a247)] transition-[width] duration-1000 ease-linear"
              style={{ width: `${(duel.secondsLeft / 60) * 100}%` }}
            />
          </div>
        )}
      </Panel>

      {waitingForOpponent && duel.ranked && (
        <Panel corners girih className="p-9 text-center sm:p-11">
          <p className="font-display text-[11px] font-semibold uppercase tracking-[0.3em] text-zar/90">
            {t.opponentFound}
          </p>
          <h2 className="mt-3 font-display text-2xl font-bold uppercase tracking-[0.05em] text-marble">
            {duel.opponent?.nickname}
          </h2>
          <p className="mt-3 text-sm text-dust">
            {t.opponentInfo(
              duel.opponent?.rating ?? null,
              duel.opponent ? labelOf(duel.opponent.scope) : "—",
            )}
          </p>
          <p className="mt-5 text-sm text-dust">{t.startsWhenReady}</p>
        </Panel>
      )}

      {waitingForOpponent && !duel.ranked && (
        <Panel corners girih className="p-7 text-center sm:p-9">
          <p className="font-display text-[11px] font-semibold uppercase tracking-[0.3em] text-zar/90">
            {t.duelCode}
          </p>
          <p className="mt-3 font-display text-5xl font-bold tracking-[0.35em] text-marble sm:text-6xl">
            {duel.code}
          </p>
          <p className="mx-auto mt-4 max-w-md text-sm leading-relaxed text-dust">
            {duel.opponent
              ? duel.host
                ? t.friendJoinedHost
                : t.friendJoinedGuest
              : t.tellCode}
          </p>
          {duel.host && (
            <div className="mt-6">
              <Button
                variant="zar"
                disabled={!duel.opponent || busy}
                onClick={() => run(() => duelApi.start(duel.code))}
              >
                {duel.opponent ? t.start : t.waitingForOpponent}
              </Button>
            </div>
          )}
        </Panel>
      )}

      {duel.phase === "RUNNING" && duel.question && (
        <Panel corners girih className="p-6 sm:p-8">
          <p className="font-display text-[10px] font-semibold uppercase tracking-[0.3em] text-zar/90">
            {t.yourQuestion}
          </p>
          <h2 className="mt-3 text-lg leading-relaxed text-marble sm:text-xl">
            {duel.question.questionUz}
          </h2>
          <Options question={duel.question} picked={picked} onPick={choose} />
          <p className="mt-5 text-center text-xs text-dust">{t.wrongHint}</p>
        </Panel>
      )}

      {duel.phase === "FINISHED" && (
        <Panel corners girih className="p-8 text-center sm:p-10">
          <p className="font-display text-[11px] font-semibold uppercase tracking-[0.3em] text-zar/90">
            {t.timeUp}
          </p>
          <h2
            className={`mt-4 font-display text-3xl font-bold uppercase tracking-[0.06em] sm:text-4xl ${
              duel.outcome === "WIN"
                ? "text-zar"
                : duel.outcome === "LOSS"
                  ? "text-[#e0a094]"
                  : "text-marble"
            }`}
          >
            {duel.outcome === "WIN" ? t.win : duel.outcome === "LOSS" ? t.loss : t.draw}
          </h2>
          <p className="mt-4 text-sm text-dust">
            {duel.me.nickname} {duel.me.score} : {duel.opponent?.score ?? 0}{" "}
            {duel.opponent?.nickname ?? "—"}
          </p>

          {duel.ranked && duel.ratingDelta !== null && (
            <div className="mx-auto mt-6 max-w-xs rounded-md border border-steel-2 px-5 py-4">
              <p className="font-display text-[10px] uppercase tracking-[0.3em] text-dust">{t.rating}</p>
              <p className="mt-2 font-display text-2xl font-bold text-marble">
                {duel.me.rating + duel.ratingDelta}{" "}
                <span className={duel.ratingDelta >= 0 ? "text-zar" : "text-[#e0a094]"}>
                  ({duel.ratingDelta >= 0 ? "+" : ""}
                  {duel.ratingDelta})
                </span>
              </p>
            </div>
          )}

          <div className="mt-7">
            <Button variant="steel" onClick={reset}>
              {t.playAgain}
            </Button>
          </div>
        </Panel>
      )}
    </div>
  );
}

/** Tablodagi bir tomon. Raqib tomonida ham faqat ism, reyting, mavzu va ball. */
function Sideboard({
  name,
  rating,
  topic,
  mine = false,
}: {
  name: string;
  rating: number | null;
  topic: string;
  mine?: boolean;
}) {
  return (
    <div className={`min-w-0 flex-1 ${mine ? "text-left" : "text-right"}`}>
      <p
        className={`truncate font-display text-[11px] font-semibold uppercase tracking-[0.22em] ${
          mine ? "text-zar" : "text-feruza-bright"
        }`}
      >
        {name}
      </p>
      <p className="mt-1 truncate text-xs text-dust">
        {rating !== null && <span className="text-marble">{rating}</span>}
        {rating !== null && " · "}
        {topic}
      </p>
    </div>
  );
}

/**
 * Javob tugmalari. Variantlar ekranda aralashtiriladi, ammo serverga DOIM asl
 * indeks yuboriladi — `lib/quiz.ts` dagi qoida bilan bir xil.
 */
function Options({
  question,
  picked,
  onPick,
}: {
  question: { id: number; options: string[] };
  picked: number | null;
  onPick: (displayIndex: number, originalIndex: number) => void;
}) {
  // Har yangi savolda tartib qaytadan aralashadi
  const order = useMemo(
    () => shuffled(question.options.map((_, i) => i)),
    // eslint-disable-next-line react-hooks/exhaustive-deps -- savol almashgandagina qayta aralashadi
    [question.id],
  );

  return (
    <div className="mt-6 grid gap-3 sm:grid-cols-2">
      {order.map((originalIndex, displayIndex) => (
        <button
          key={originalIndex}
          onClick={() => onPick(displayIndex, originalIndex)}
          disabled={picked !== null}
          className={`min-h-[56px] rounded-md border px-4 py-3 text-left text-sm transition-colors ${
            picked === displayIndex
              ? "border-zar/70 bg-zar/15 text-marble"
              : "border-steel-2 text-dust hover:border-zar/50 hover:text-marble disabled:opacity-60"
          }`}
        >
          {question.options[originalIndex]}
        </button>
      ))}
    </div>
  );
}
