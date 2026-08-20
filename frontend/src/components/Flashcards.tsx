"use client";

/**
 * Flesh-kartalar — yodlash rejimi.
 *
 * Kutubxona sahifasining USTIGA qo'yiladigan qatlam: oddiy Xazina ko'rinishi,
 * filtrlar va API chaqiruvlari o'z holicha qoladi. Bu yerda yangi ma'lumot
 * olinmaydi — sahifa allaqachon yuklagan kartochkalar `deckSource` orqali
 * uzatiladi (README dagi «kuchsiz telefon» talabi: qo'shimcha so'rov yo'q).
 *
 * DIZAYN. Agdarish dialoglardagi metafora ustiga qurilgan:
 *   OLD tomon  — po'lat plita, o'quvchining savoli
 *   ORQA tomon — pergament, tarixning javobi (va manba)
 * Animatsiya — sof CSS 3D (`.tt-flip`, globals.css), npm bog'liqligi yo'q.
 */

import { useCallback, useEffect, useMemo, useState, useSyncExternalStore } from "react";
import { FactCard } from "@/lib/api";
import {
  addOwnCard,
  getOwnCardsServerSnapshot,
  getOwnCardsSnapshot,
  loadOwnCards,
  OwnCard,
  removeOwnCard,
  subscribeOwnCards,
} from "@/lib/flashcards";
import Panel from "@/components/ui/Panel";
import Button from "@/components/ui/Button";
import Badge from "@/components/ui/Badge";
import { CornerFrame } from "@/components/ui/Ornament";
import { FactLinkSteel } from "@/components/ui/FactLink";
import { Lang, pick, useLang, useT } from "@/lib/lang";
import { factCard } from "@/lib/content.ru";

const TXT = {
  ru: {
    fallbackQuestion: (topic: string) => `Что ты знаешь про «${topic}»?`,
    badge: "Флеш-карточки",
    modeTitle: "Откуда возьмём карточки?",
    modeHint: "На лицевой стороне вопрос, на обороте ответ. Нажми — карточка перевернётся.",
    fromLibrary: "Взять из библиотеки",
    createOwn: "Создам сам",
    exit: "Выход",
    pickHint: (n: number) =>
      `По текущему фильтру ${n} карточек. Отметь нужные или возьми все сразу.`,
    takeAll: "Взять все",
    start: "Начать",
    noCards: "По этому фильтру карточек нет. Измени фильтр.",
    back: "Назад",
    ownHint: "Твои карточки сохраняются в твоём профиле — они будут с тобой на любом устройстве.",
    cardError: "Карточку не удалось сохранить. Проверь связь и попробуй ещё раз.",
    question: "Вопрос",
    answer: "Ответ",
    questionPlaceholder: "Например: когда построили Регистан?",
    answerPlaceholder: "Текст ответа",
    add: "Добавить",
    deleteAria: (front: string) => `Удалить карточку «${front}»`,
    delete: "Удалить",
    shuffle: "Перемешать",
    flipToQuestionAria: (back: string) => `Ответ: ${back}. Нажми, чтобы вернуться к вопросу`,
    flipToAnswerAria: (subject: string, front: string) =>
      `Вопрос: ${subject}${front}. Нажми, чтобы увидеть ответ`,
    whatDoYouKnow: "Что ты об этом знаешь?",
    prev: "Предыдущая",
    next: "Следующая",
    showQuestion: "Показать вопрос",
    showAnswer: "Показать ответ",
    keys: "Пробел — перевернуть, ← → — листать.",
  },
  uz: {
    fallbackQuestion: (topic: string) => `${topic} haqida nima bilasan?`,
    badge: "Flesh-kartalar",
    modeTitle: "Kartalarni qayerdan olamiz?",
    modeHint: "Kartaning old tomonida savol, orqasida javob. Bosilganda ag'dariladi.",
    fromLibrary: "Kutubxonadan olish",
    createOwn: "O'zim yarataman",
    exit: "Chiqish",
    pickHint: (n: number) =>
      `Joriy filtr bo'yicha ${n} ta kartochka. Kerakligini belgilang yoki hammasini oling.`,
    takeAll: "Hammasini olish",
    start: "Boshlash",
    noCards: "Bu filtr bo'yicha kartochka yo'q. Filtrni o'zgartiring.",
    back: "Orqaga",
    ownHint: "Kartalaring profilingda saqlanadi — istalgan qurilmada yoningda bo'ladi.",
    cardError: "Kartani saqlab bo'lmadi. Aloqani tekshirib, qayta urinib ko'r.",
    question: "Savol",
    answer: "Javob",
    questionPlaceholder: "Masalan: Registon qachon qurilgan?",
    answerPlaceholder: "Javob matni",
    add: "Qo'shish",
    deleteAria: (front: string) => `«${front}» kartasini o'chirish`,
    delete: "O'chirish",
    shuffle: "Aralashtirish",
    flipToQuestionAria: (back: string) => `Javob: ${back}. Savolga qaytish uchun bosing`,
    flipToAnswerAria: (subject: string, front: string) =>
      `Savol: ${subject}${front}. Javobni ko'rish uchun bosing`,
    whatDoYouKnow: "Bu haqda nima bilasan?",
    prev: "Oldingisi",
    next: "Keyingisi",
    showQuestion: "Savolni ko'rish",
    showAnswer: "Javobni ko'rish",
    keys: "Probel — ag'darish, ← → — varaqlash.",
  },
  uk: {
    fallbackQuestion: (topic: string) => `Що ти знаєш про «${topic}»?`,
    badge: "Флеш-картки",
    modeTitle: "Звідки візьмемо картки?",
    modeHint: "На лицьовому боці питання, на звороті відповідь. Натисни — картка перевернеться.",
    fromLibrary: "Узяти з бібліотеки",
    createOwn: "Створю сам",
    exit: "Вихід",
    pickHint: (n: number) => `За поточним фільтром ${n} карток. Познач потрібні або візьми всі одразу.`,
    takeAll: "Узяти всі",
    start: "Почати",
    noCards: "За цим фільтром карток немає. Зміни фільтр.",
    back: "Назад",
    ownHint: "Твої картки зберігаються у твоєму профілі — вони будуть з тобою на будь-якому пристрої.",
    cardError: "Картку не вдалося зберегти. Перевір зв'язок і спробуй ще раз.",
    question: "Питання",
    answer: "Відповідь",
    questionPlaceholder: "Наприклад: коли збудували Регістан?",
    answerPlaceholder: "Текст відповіді",
    add: "Додати",
    deleteAria: (front: string) => `Видалити картку «${front}»`,
    delete: "Видалити",
    shuffle: "Перемішати",
    flipToQuestionAria: (back: string) => `Відповідь: ${back}. Натисни, щоб повернутися до питання`,
    flipToAnswerAria: (subject: string, front: string) =>
      `Питання: ${subject}${front}. Натисни, щоб побачити відповідь`,
    whatDoYouKnow: "Що ти про це знаєш?",
    prev: "Попередня",
    next: "Наступна",
    showQuestion: "Показати питання",
    showAnswer: "Показати відповідь",
    keys: "Пробіл — перевернути, ← → — гортати.",
  },
};


/** Koloda birligi — manbasi qayerdan kelganidan qat'i nazar bir xil shakl. */
type DeckCard = {
  key: string;
  /**
   * Savol KIM yoki NIMA haqidaligi. Katalogda o'nga yaqin qahramon bor va
   * mavzuning o'zi («Tug'ilishi») kimniki ekanini aytmaydi — subyektsiz
   * karta savol emas, taxmin bo'lib qoladi.
   */
  subjectUz: string | null;
  frontUz: string;
  backUz: string;
  /** Faqat Xazina kartochkalarida bo'ladi — M1 bo'yicha ko'rsatilishi shart. */
  source: string | null;
  /** «Batafsil» manzili. O'z kartalarida yo'q. */
  link: { href: string; label: string; ariaSubject: string } | null;
};

type Step = "mode" | "pick" | "create" | "train";

/**
 * Karta oldidagi savol.
 *
 * Asosiy manba — bazadagi tayyor `questionUz` (V32): u kim haqidaligini
 * o'zi aytadi — «Amir Temur qachon va qayerda tug'ilgan?».
 * Zaxira — mavzudan yasalgan matn: agar kartochka yangi bo'lib, unga hali
 * savol yozilmagan bo'lsa, karta baribir ishlaydi.
 */
function questionOf(c: FactCard, lang: Lang): string {
  const text = factCard(c, lang);
  return text.question?.trim() || pick(TXT, lang).fallbackQuestion(text.topic);
}

function ownToDeck(c: OwnCard): DeckCard {
  return {
    key: `own:${c.id}`,
    subjectUz: null,
    frontUz: c.frontUz,
    backUz: c.backUz,
    source: null,
    link: null,
  };
}

/** Fisher–Yates — nusxa ustida, kirish massivi o'zgarmaydi. */
function shuffled<T>(items: T[]): T[] {
  const out = [...items];
  for (let i = out.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [out[i], out[j]] = [out[j], out[i]];
  }
  return out;
}

export default function Flashcards({
  /** Sahifadagi FILTRLANGAN kartochkalar — «Hammasini olish» aynan shularni oladi. */
  filteredCards,
  /** Kartochka kim/nima haqida — qahramon yoki davr nomi. Sahifa biladi, biz emas. */
  subjectOf,
  /** «Batafsil» manzili — sahifadagi qahramon/davr ro'yxatidan hisoblanadi. */
  linkOf,
  onExit,
}: {
  filteredCards: FactCard[];
  subjectOf: (card: FactCard) => string | null;
  linkOf: (card: FactCard) => { href: string; label: string; ariaSubject: string } | null;
  onExit: () => void;
}) {
  const t = useT(TXT);
  const { lang } = useLang();

  const factToDeck = useCallback(
    (c: FactCard): DeckCard => ({
      key: `fact:${c.id}`,
      subjectUz: subjectOf(c),
      frontUz: questionOf(c, lang),
      backUz: factCard(c, lang).fact,
      source: c.source,
      link: linkOf(c),
    }),
    [subjectOf, linkOf, lang],
  );

  const [step, setStep] = useState<Step>("mode");
  const [selected, setSelected] = useState<Set<number>>(new Set());
  const [deck, setDeck] = useState<DeckCard[]>([]);
  const [index, setIndex] = useState(0);
  const [flipped, setFlipped] = useState(false);
  const [front, setFront] = useState("");
  const [back, setBack] = useState("");

  // O'z kartalari — bazadan (V104), tashqi do'kon orqali
  const own: OwnCard[] = useSyncExternalStore(
    subscribeOwnCards,
    getOwnCardsSnapshot,
    getOwnCardsServerSnapshot,
  );
  /* Kartani qo'shish/o'chirish endi serverga boradi. Aloqa uzilsa bola nima
     bo'lganini bilishi kerak — jim qolish eng yomon variant. */
  const [cardError, setCardError] = useState(false);
  const [saving, setSaving] = useState(false);

  useEffect(() => {
    loadOwnCards();
  }, []);

  const startTraining = useCallback((cards: DeckCard[]) => {
    if (cards.length === 0) return;
    setDeck(cards);
    setIndex(0);
    setFlipped(false);
    setStep("train");
  }, []);

  const flip = useCallback(() => setFlipped((f) => !f), []);

  /**
   * Varaqlash. MUHIM: setIndex boshqa updater ICHIDA chaqirilmaydi —
   * updater sof bo'lishi shart, aks holda StrictMode uni ikki marta ishga
   * tushirib, karta bittadan emas, ikkitadan sakraydi.
   */
  const go = useCallback(
    (delta: number) => {
      const n = deck.length;
      if (n === 0) return;
      setIndex((i) => (i + delta + n) % n);
      setFlipped(false);
    },
    [deck.length],
  );

  // Klaviatura: probel — ag'darish, o'qlar — varaqlash
  useEffect(() => {
    if (step !== "train") return;
    const onKey = (e: KeyboardEvent) => {
      const tag = (e.target as HTMLElement | null)?.tagName;
      if (tag === "INPUT" || tag === "TEXTAREA") return;
      if (e.key === " " || e.key === "Spacebar") {
        e.preventDefault();
        flip();
      } else if (e.key === "ArrowRight") {
        e.preventDefault();
        go(1);
      } else if (e.key === "ArrowLeft") {
        e.preventDefault();
        go(-1);
      }
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [step, flip, go]);

  const current = deck[index];

  const ownDeck = useMemo(() => own.map(ownToDeck), [own]);

  /* ------------------------------- 1. Rejim tanlash ------------------------------ */

  if (step === "mode") {
    return (
      <Panel tone="hollow" corners className="p-6 sm:p-8">
        <div className="text-center">
          <Badge>{t.badge}</Badge>
          <h3 className="mt-3 font-display text-xl font-bold uppercase tracking-[0.06em] text-marble">
            {t.modeTitle}
          </h3>
          <p className="mx-auto mt-2 max-w-lg text-sm leading-relaxed text-dust">{t.modeHint}</p>
        </div>

        <div className="mt-6 grid gap-3 sm:grid-cols-2">
          <Button
            variant="zar"
            className="min-h-[44px] w-full"
            onClick={() => setStep("pick")}
          >
            {t.fromLibrary}
          </Button>
          <Button
            variant="steel"
            className="min-h-[44px] w-full"
            onClick={() => setStep("create")}
          >
            {t.createOwn}
          </Button>
        </div>

        <div className="mt-5 text-center">
          <Button variant="ghost" size="sm" className="min-h-[44px]" onClick={onExit}>
            {t.exit}
          </Button>
        </div>
      </Panel>
    );
  }

  /* --------------------------- 2. Xazinadan tanlash ------------------------------ */

  if (step === "pick") {
    const chosen = filteredCards.filter((c) => selected.has(c.id));
    return (
      <Panel tone="hollow" corners className="p-5 sm:p-7">
        <div className="flex flex-wrap items-center justify-between gap-3">
          <div>
            <Badge>{t.fromLibrary}</Badge>
            <p className="mt-2 text-sm text-dust">{t.pickHint(filteredCards.length)}</p>
          </div>
          <div className="flex flex-wrap gap-2">
            <Button
              variant="steel"
              size="sm"
              className="min-h-[44px]"
              disabled={filteredCards.length === 0}
              onClick={() => startTraining(filteredCards.map(factToDeck))}
            >
              {t.takeAll}
            </Button>
            <Button
              variant="zar"
              size="sm"
              className="min-h-[44px]"
              disabled={chosen.length === 0}
              onClick={() => startTraining(chosen.map(factToDeck))}
            >
              {t.start} · {chosen.length}
            </Button>
          </div>
        </div>

        <ul className="mt-5 grid max-h-[52vh] gap-2 overflow-y-auto pr-1 sm:grid-cols-2">
          {filteredCards.map((c) => {
            const on = selected.has(c.id);
            return (
              <li key={c.id}>
                <button
                  type="button"
                  aria-pressed={on}
                  onClick={() =>
                    setSelected((prev) => {
                      const next = new Set(prev);
                      if (next.has(c.id)) next.delete(c.id);
                      else next.add(c.id);
                      return next;
                    })
                  }
                  className={`flex w-full items-start gap-3 rounded-sm border p-3 text-left transition-colors ${
                    on
                      ? "border-zar/60 bg-zar/12"
                      : "border-steel-2 bg-steel/40 hover:border-zar/35"
                  }`}
                >
                  <span
                    aria-hidden
                    className={`mt-0.5 flex h-4 w-4 shrink-0 items-center justify-center rounded-[3px] border ${
                      on ? "border-zar bg-zar/30 text-zar-bright" : "border-steel-2"
                    }`}
                  >
                    {on && (
                      <svg viewBox="0 0 24 24" className="h-3 w-3" fill="none" stroke="currentColor" strokeWidth="3">
                        <path d="M5 13l4 4L19 7" />
                      </svg>
                    )}
                  </span>
                  <span className="text-sm leading-snug text-marble">{factCard(c, lang).topic}</span>
                </button>
              </li>
            );
          })}
        </ul>

        {filteredCards.length === 0 && (
          <p className="mt-4 text-center text-sm text-dust">{t.noCards}</p>
        )}

        <div className="mt-5 flex flex-wrap justify-center gap-2">
          <Button variant="ghost" size="sm" className="min-h-[44px]" onClick={() => setStep("mode")}>
            {t.back}
          </Button>
          <Button variant="ghost" size="sm" className="min-h-[44px]" onClick={onExit}>
            {t.exit}
          </Button>
        </div>
      </Panel>
    );
  }

  /* ----------------------------- 3. O'zim yarataman ------------------------------ */

  if (step === "create") {
    return (
      <Panel tone="hollow" corners className="p-5 sm:p-7">
        <Badge>{t.createOwn}</Badge>
        <p className="mt-2 text-sm text-dust">{t.ownHint}</p>

        <form
          className="mt-5 space-y-3"
          onSubmit={async (e) => {
            e.preventDefault();
            if (!front.trim() || !back.trim() || saving) return;
            setSaving(true);
            setCardError(false);
            try {
              await addOwnCard(front, back);
              setFront("");
              setBack("");
            } catch {
              // Matn maydonda qoladi — bola yozganini qayta terishi shart emas.
              setCardError(true);
            } finally {
              setSaving(false);
            }
          }}
        >
          <div>
            <label htmlFor="fc-front" className="block text-xs font-semibold uppercase tracking-[0.18em] text-zar/90">
              {t.question}
            </label>
            <input
              id="fc-front"
              value={front}
              onChange={(e) => setFront(e.target.value)}
              maxLength={200}
              className="mt-1.5 min-h-[44px] w-full rounded-sm border border-steel-2 bg-steel/50 px-3 py-2 text-sm text-marble placeholder:text-dust/60"
              placeholder={t.questionPlaceholder}
            />
          </div>
          <div>
            <label htmlFor="fc-back" className="block text-xs font-semibold uppercase tracking-[0.18em] text-zar/90">
              {t.answer}
            </label>
            <textarea
              id="fc-back"
              value={back}
              onChange={(e) => setBack(e.target.value)}
              maxLength={600}
              rows={3}
              className="mt-1.5 w-full rounded-sm border border-steel-2 bg-steel/50 px-3 py-2 text-sm text-marble placeholder:text-dust/60"
              placeholder={t.answerPlaceholder}
            />
          </div>
          <Button
            type="submit"
            variant="zar"
            size="sm"
            className="min-h-[44px]"
            disabled={!front.trim() || !back.trim() || saving}
          >
            {t.add}
          </Button>
          {cardError && <p className="text-sm text-[#e8a99f]">{t.cardError}</p>}
        </form>

        {own.length > 0 && (
          <ul className="mt-6 space-y-2">
            {own.map((c) => (
              <li
                key={c.id}
                className="flex items-start justify-between gap-3 rounded-sm border border-steel-2 bg-steel/40 p-3"
              >
                <div className="min-w-0">
                  <p className="truncate text-sm font-semibold text-marble">{c.frontUz}</p>
                  <p className="mt-0.5 line-clamp-2 text-xs text-dust">{c.backUz}</p>
                </div>
                <button
                  type="button"
                  onClick={() => {
                    setCardError(false);
                    removeOwnCard(c.id).catch(() => setCardError(true));
                  }}
                  aria-label={t.deleteAria(c.frontUz)}
                  className="min-h-[44px] shrink-0 px-2 text-xs font-semibold uppercase tracking-[0.14em] text-[#e8a99f] hover:text-[#f5c4bc]"
                >
                  {t.delete}
                </button>
              </li>
            ))}
          </ul>
        )}

        <div className="mt-6 flex flex-wrap justify-center gap-2">
          <Button
            variant="zar"
            size="sm"
            className="min-h-[44px]"
            disabled={own.length === 0}
            onClick={() => startTraining(ownDeck)}
          >
            {t.start} · {own.length}
          </Button>
          <Button variant="ghost" size="sm" className="min-h-[44px]" onClick={() => setStep("mode")}>
            {t.back}
          </Button>
          <Button variant="ghost" size="sm" className="min-h-[44px]" onClick={onExit}>
            {t.exit}
          </Button>
        </div>
      </Panel>
    );
  }

  /* -------------------------------- 4. Mashq ------------------------------------- */

  if (!current) return null;

  return (
    <div className="space-y-4">
      <div className="flex flex-wrap items-center justify-between gap-3">
        <Badge>
          {index + 1} / {deck.length}
        </Badge>
        <div className="flex flex-wrap gap-2">
          <Button
            variant="steel"
            size="sm"
            className="min-h-[44px]"
            onClick={() => {
              setDeck((d) => shuffled(d));
              setIndex(0);
              setFlipped(false);
            }}
          >
            {t.shuffle}
          </Button>
          <Button variant="ghost" size="sm" className="min-h-[44px]" onClick={onExit}>
            {t.exit}
          </Button>
        </div>
      </div>

      {/* Kartaning o'zi — bosilsa ag'dariladi */}
      <div className="tt-flip h-[340px] w-full sm:h-[380px]" data-flipped={flipped}>
        <button
          type="button"
          onClick={flip}
          aria-label={
            flipped
              ? t.flipToQuestionAria(current.backUz)
              : t.flipToAnswerAria(
                  current.subjectUz ? `${current.subjectUz}. ` : "",
                  current.frontUz,
                )
          }
          className="tt-flip-inner block text-left"
        >
          {/* OLD — po'lat plita, o'quvchining savoli */}
          <span className="tt-flip-face tt-steel-surface tt-engraved relative rounded-md border border-zar/30 p-6 sm:p-8">
            <CornerFrame className="text-zar/45" />
            <span className="block text-[10px] font-semibold uppercase tracking-[0.24em] text-zar/85">
              {current.subjectUz ?? t.whatDoYouKnow}
            </span>
            <span className="mt-auto flex flex-1 items-center">
              <span className="font-display text-lg font-bold uppercase leading-snug tracking-[0.04em] text-marble sm:text-2xl">
                {current.frontUz}
              </span>
            </span>
          </span>

          {/* ORQA — pergament, tarixning javobi */}
          <span className="tt-flip-face tt-flip-back tt-parchment-surface relative p-6 sm:p-8">
            <CornerFrame className="text-[#7a5f1c]/50" />
            <span className="block text-[10px] font-semibold uppercase tracking-[0.24em] text-[#5f4a12]">
              {t.answer}
            </span>
            <span className="mt-3 block flex-1 text-sm leading-relaxed text-[#2b2415] sm:text-base">
              {current.backUz}
            </span>
            {current.source && (
              <span className="mt-4 block border-t border-[#7a5f1c]/30 pt-3 text-[11px] leading-snug text-[#5c4a1e]">
                {current.source}
              </span>
            )}
          </span>
        </button>
      </div>

      {/* Havola karta TASHQARISIDA: <a> ni <button> ichiga solib bo'lmaydi. */}
      {current.link && (
        <div className="flex justify-end">
          <FactLinkSteel target={current.link} />
        </div>
      )}

      {/* Karta almashganini ekran o'quvchi ham bilsin */}
      <p aria-live="polite" className="sr-only">
        {index + 1} / {deck.length}.{" "}
        {flipped ? current.backUz : `${current.subjectUz ? `${current.subjectUz}. ` : ""}${current.frontUz}`}
      </p>

      <div className="flex flex-wrap items-center justify-center gap-2">
        <Button variant="ghost" size="sm" className="min-h-[44px]" onClick={() => go(-1)}>
          {t.prev}
        </Button>
        <Button variant="zar" size="sm" className="min-h-[44px]" onClick={flip}>
          {flipped ? t.showQuestion : t.showAnswer}
        </Button>
        <Button variant="steel" size="sm" className="min-h-[44px]" onClick={() => go(1)}>
          {t.next}
        </Button>
      </div>

      <p className="text-center text-[11px] text-dust/80">{t.keys}</p>
    </div>
  );
}
