"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { motion } from "framer-motion";
import confetti from "canvas-confetti";
import { api, getClientId, QuizDifficulty, QuizQuestion, SubmitResult, tellMascot } from "@/lib/api";
import { optionOrders } from "@/lib/quiz";
import Link from "next/link";
import Button from "@/components/ui/Button";
import Panel from "@/components/ui/Panel";
import { CornerFrame, Star } from "@/components/ui/Ornament";
import { useLang, useT } from "@/lib/lang";
import { quizExplanation, quizQuestion } from "@/lib/content.ru";

const TXT = {
  ru: {
    unlocked: (name: string) => `Открыто новое снаряжение: ${name}!`,
    perfectStreak: (days: number) => `Без единой ошибки! Твоя серия — ${days} дн., ты чемпион! 🔥`,
    perfectMascot: "Молодец! Ни одной ошибки! 🎉",
    goodXp: (xp: number) => `Хороший результат! Ты набрал +${xp} XP!`,
    goodPractice: "Хороший результат! Это была тренировка — XP даётся с первой попытки.",
    sadMascot: "Не расстраивайся… Почитаем карточки и попробуем ещё раз?",
    noQuestions: "Вопросы не найдены.",
    unlockedTitle: "Открыто новое снаряжение",
    equipInArmoury: "Надеть в Оружейной →",
    resultTitle: "Итог испытания",
    perfect: "Отлично! Все ответы верны.",
    good: "Хороший результат! Попробуй ещё.",
    retry: "Попробуй ещё раз — история требует терпения.",
    practiceMode: "Режим тренировки — XP даётся только с первой попытки",
    unanswered: "Без ответа — засчитано как неверный",
    correctAnswer: "Правильный ответ:",
    prev: "← Предыдущий",
    next: "Следующий →",
    submitting: "Отправляется…",
    finish: "Завершить",
  },
  uz: {
    unlocked: (name: string) => `Yangi jihoz ochildi: ${name}!`,
    perfectStreak: (days: number) => `Xatosiz! Seriyang ${days} kun bo'ldi — sen chempionsan! 🔥`,
    perfectMascot: "Barakalla! Bitta ham xato yo'q! 🎉",
    goodXp: (xp: number) => `Yaxshi natija! +${xp} XP to'plading!`,
    goodPractice: "Yaxshi natija! Bu mashq edi — XP birinchi urinishda beriladi.",
    sadMascot: "Xafa bo'lma... Kartochkalarni o'qib, yana urinib ko'ramizmi?",
    noQuestions: "Savollar topilmadi.",
    unlockedTitle: "Yangi jihoz ochildi",
    equipInArmoury: "Qurolxonada kiyish →",
    resultTitle: "Sinov yakuni",
    perfect: "Ajoyib! Barcha javoblar to'g'ri.",
    good: "Yaxshi natija! Yana harakat qil.",
    retry: "Qayta urinib ko'r — tarix sabr talab qiladi.",
    practiceMode: "Mashq rejimi — XP faqat birinchi urinishda beriladi",
    unanswered: "Javob berilmagan — noto'g'ri hisoblandi",
    correctAnswer: "To'g'ri javob:",
    prev: "← Oldingi",
    next: "Keyingi →",
    submitting: "Yuborilmoqda…",
    finish: "Yakunlash",
  },
  uk: {
    unlocked: (name: string) => `Відкрито нове спорядження: ${name}!`,
    perfectStreak: (days: number) => `Без жодної помилки! Твоя серія — ${days} дн., ти чемпіон! 🔥`,
    perfectMascot: "Молодець! Жодної помилки! 🎉",
    goodXp: (xp: number) => `Хороший результат! Ти набрав +${xp} XP!`,
    goodPractice: "Хороший результат! Це було тренування — XP дається з першої спроби.",
    sadMascot: "Не засмучуйся… Почитаємо картки і спробуємо ще раз?",
    noQuestions: "Питань не знайдено.",
    unlockedTitle: "Відкрито нове спорядження",
    equipInArmoury: "Вдягнути у Зброярні →",
    resultTitle: "Підсумок випробування",
    perfect: "Чудово! Усі відповіді правильні.",
    good: "Хороший результат! Спробуй ще.",
    retry: "Спробуй ще раз — історія вимагає терпіння.",
    practiceMode: "Режим тренування — XP дається лише з першої спроби",
    unanswered: "Без відповіді — зараховано як неправильну",
    correctAnswer: "Правильна відповідь:",
    prev: "← Попереднє",
    next: "Наступне →",
    submitting: "Надсилається…",
    finish: "Завершити",
  },
};


type Props = {
  questions: QuizQuestion[];
  scope: string;
  /** Berilsa, umumiy taymer ishlaydi. */
  timerSeconds?: number;
  /** Qiyinlik darajasi — XP hisobiga ta'sir qiladi (standart: EASY). */
  difficulty?: QuizDifficulty;
  onFinished?: (result: SubmitResult) => void;
};

/** Salyut — zar va po'lat ranglarida. */
function fireConfetti() {
  const defaults = {
    spread: 70,
    ticks: 90,
    gravity: 0.9,
    scalar: 1.1,
    colors: ["#f3d98b", "#c8a247", "#7a5f1c", "#ede2c8"],
  };
  confetti({ ...defaults, particleCount: 80, origin: { x: 0.3, y: 0.7 }, angle: 60 });
  confetti({ ...defaults, particleCount: 80, origin: { x: 0.7, y: 0.7 }, angle: 120 });
  setTimeout(
    () => confetti({ ...defaults, particleCount: 60, origin: { x: 0.5, y: 0.6 }, spread: 100 }),
    250
  );
}

export default function QuizRunner({ questions, scope, timerSeconds, difficulty, onFinished }: Props) {
  const t = useT(TXT);
  const { lang } = useLang();
  /* `submit` — taymer effektidagi barqaror `useCallback`. Til almashganda u
     qayta yaratilib, sanoq boshidan ketmasligi uchun matn ref orqali olinadi. */
  const tRef = useRef(t);
  useEffect(() => {
    tRef.current = t;
  }, [t]);
  const [current, setCurrent] = useState(0);
  const [chosen, setChosen] = useState<(number | null)[]>(questions.map(() => null));
  // Variantlar ekranda aralash tartibda, lekin `chosen` va server DOIM asl
  // indeks bilan ishlaydi — order[savol][ekran o'rni] = asl indeks.
  const [order] = useState<number[][]>(() => optionOrders(questions.map((q) => q.options.length)));
  const [result, setResult] = useState<SubmitResult | null>(null);
  const [submitting, setSubmitting] = useState(false);
  const [secondsLeft, setSecondsLeft] = useState(timerSeconds ?? 0);
  const submittedRef = useRef(false);

  const submit = useCallback(
    async (answers: (number | null)[]) => {
      if (submittedRef.current) return;
      submittedRef.current = true;
      setSubmitting(true);
      // O'tkazib yuborilgan yoki ulgurilmagan savollar avtomatik noto'g'ri
      // hisoblanadi: chosenIndex -1 hech qaysi variantga mos kelmaydi.
      const payload = questions.map((q, i) => ({
        questionId: q.id,
        chosenIndex: answers[i] ?? -1,
      }));
      try {
        const res = await api<SubmitResult>("/api/quiz/submit", {
          method: "POST",
          body: JSON.stringify({
            clientId: getClientId(),
            scope,
            difficulty: difficulty ?? "EASY",
            answers: payload,
          }),
        });
        setResult(res);
        if (res.score >= Math.ceil(res.total * 0.8)) {
          fireConfetti();
        }
        // Yangi jihoz ochilgan bo'lsa — bu sinovning eng yoqimli lahzasi
        if (res.newlyUnlocked && res.newlyUnlocked.length > 0) {
          fireConfetti();
          tellMascot("celebrate", tRef.current.unlocked(res.newlyUnlocked[0].nameUz));
        } else if (res.score === res.total) {
          tellMascot(
            "celebrate",
            res.streakDays >= 3
              ? tRef.current.perfectStreak(res.streakDays)
              : tRef.current.perfectMascot
          );
        } else if (res.score >= res.total / 2) {
          tellMascot(
            "happy",
            res.xpEarned > 0 ? tRef.current.goodXp(res.xpEarned) : tRef.current.goodPractice
          );
        } else {
          tellMascot("sad", tRef.current.sadMascot);
        }
        onFinished?.(res);
      } finally {
        setSubmitting(false);
      }
    },
    [questions, scope, difficulty, onFinished]
  );

  useEffect(() => {
    if (!timerSeconds || result) return;
    const t = setInterval(() => {
      setSecondsLeft((s) => {
        if (s <= 1) {
          clearInterval(t);
          setChosen((answers) => {
            submit(answers);
            return answers;
          });
          return 0;
        }
        return s - 1;
      });
    }, 1000);
    return () => clearInterval(t);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [timerSeconds]);

  if (questions.length === 0) {
    return <p className="text-sm text-dust">{t.noQuestions}</p>;
  }

  if (result) {
    const byId = new Map(questions.map((q) => [q.id, q]));
    const perfect = result.score === result.total;
    return (
      <div className="tt-rise space-y-5">
        {/* Yangi ochilgan jihozlar */}
        {result.newlyUnlocked?.length > 0 && (
          <Panel corners className="tt-ember border-zar/60 p-5 text-center">
            <p className="font-display text-[10px] font-semibold uppercase tracking-[0.3em] text-zar/90">
              {t.unlockedTitle}
            </p>
            <p className="tt-gold-text mt-2 font-display text-xl font-bold uppercase">
              {result.newlyUnlocked.map((u) => u.nameUz).join(" · ")}
            </p>
            <Link
              href="/qurolxona"
              className="mt-3 inline-block font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-zar transition-colors hover:text-zar-bright"
            >
              {t.equipInArmoury}
            </Link>
          </Panel>
        )}

        {/* Natija lavhasi — toshga o'yilgan hisob */}
        <Panel corners girih className="p-8 text-center">
          <p className="font-display text-[10px] font-semibold uppercase tracking-[0.34em] text-zar/90">
            {t.resultTitle}
          </p>
          <p className="tt-gold-text mt-4 font-display text-6xl font-bold">
            {result.score}
            <span className="text-3xl text-zar/75"> / {result.total}</span>
          </p>
          <p className="mt-4 font-quote text-lg italic text-parchment">
            {perfect ? t.perfect : result.score >= result.total / 2 ? t.good : t.retry}
          </p>
          {result.xpEarned > 0 && (
            <p className="tt-ember mt-6 inline-flex items-center gap-2 rounded-sm border border-zar/50 bg-zar/12 px-5 py-2 font-display text-sm font-bold uppercase tracking-[0.16em] text-zar-bright">
              <Star className="h-3.5 w-3.5" />+{result.xpEarned} XP
            </p>
          )}
          {result.xpEarned === 0 && !result.firstAttempt && (
            <p className="mt-6 inline-block rounded-sm border border-steel-2 bg-steel/60 px-4 py-2 font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-dust">
              {t.practiceMode}
            </p>
          )}
        </Panel>

        {/* Xatolar tahlili */}
        <div className="space-y-3">
          {result.reviews.map((r, i) => {
            const q = byId.get(r.questionId);
            if (!q) return null;
            return (
              <div
                key={r.questionId}
                className={`tt-reveal rounded-md border p-4 ${
                  r.correct
                    ? "border-feruza/45 bg-feruza/10"
                    : "border-qon/50 bg-qon/10"
                }`}
                style={{ animationDelay: `${i * 70}ms` }}
              >
                <p className="flex items-start gap-2.5 text-sm font-semibold text-marble">
                  <span
                    aria-hidden
                    className={`mt-0.5 shrink-0 ${r.correct ? "text-feruza-bright" : "text-[#e8a99f]"}`}
                  >
                    {r.correct ? "✔" : "✕"}
                  </span>
                  {quizQuestion(q, lang).question}
                </p>
                {r.chosenIndex === -1 && (
                  <p className="mt-2 inline-block rounded-sm border border-steel-2 bg-steel/70 px-2.5 py-1 text-[10px] font-semibold uppercase tracking-[0.14em] text-dust">
                    {t.unanswered}
                  </p>
                )}
                <p className="mt-2 text-sm text-dust">
                  {t.correctAnswer}{" "}
                  <b className="text-parchment">{quizQuestion(q, lang).options[r.correctIndex]}</b>
                </p>
                {quizExplanation(r, lang) && (
                  <p className="mt-1.5 text-sm italic leading-relaxed text-dust/85">
                    {quizExplanation(r, lang)}
                  </p>
                )}
              </div>
            );
          })}
        </div>
      </div>
    );
  }

  const q = questions[current];
  const shown = quizQuestion(q, lang);
  const answeredCount = chosen.filter((c) => c !== null).length;
  const timerRatio = timerSeconds ? secondsLeft / timerSeconds : 0;
  const urgent = secondsLeft <= 10;

  return (
    <div className="space-y-5">
      {/* Yuqori qator: qadamlar va qum soati */}
      <div className="flex items-center justify-between gap-4">
        <div className="flex items-center gap-1.5">
          {questions.map((_, i) => (
            <span
              key={i}
              className={`h-1 rounded-full transition-all duration-300 ${
                i === current
                  ? "w-7 bg-zar"
                  : chosen[i] !== null
                    ? "w-2.5 bg-zar/45"
                    : "w-2.5 bg-steel-2"
              }`}
            />
          ))}
          <span className="ms-2.5 font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-dust">
            {current + 1} / {questions.length}
          </span>
        </div>

        {timerSeconds ? (
          <div className="relative h-12 w-12 shrink-0">
            <svg viewBox="0 0 48 48" className="h-12 w-12 -rotate-90">
              <circle cx="24" cy="24" r="20" fill="none" stroke="#262f42" strokeWidth="3" />
              <circle
                cx="24"
                cy="24"
                r="20"
                fill="none"
                stroke={urgent ? "#9b2e22" : "#c8a247"}
                strokeWidth="3"
                strokeLinecap="round"
                strokeDasharray={2 * Math.PI * 20}
                strokeDashoffset={2 * Math.PI * 20 * (1 - timerRatio)}
                style={{ transition: "stroke-dashoffset 1s linear" }}
              />
            </svg>
            <span
              className={`absolute inset-0 flex items-center justify-center font-display text-xs font-bold ${
                urgent ? "animate-pulse text-[#e8a99f]" : "text-zar"
              }`}
            >
              {secondsLeft}
            </span>
          </div>
        ) : null}
      </div>

      {/* Savol va variantlar */}
      <div key={current} className="tt-reveal space-y-4">
        <p className="text-base font-semibold leading-relaxed text-marble sm:text-lg">
          {shown.question}
        </p>
        <div className="grid gap-2.5">
          {order[current].map((originalIndex, displayIndex) => {
            const opt = shown.options[originalIndex];
            const picked = chosen[current] === originalIndex;
            return (
              <motion.button
                key={originalIndex}
                whileTap={{ scale: 0.985 }}
                onClick={() => {
                  const next = [...chosen];
                  next[current] = originalIndex;
                  setChosen(next);
                }}
                className={`relative flex items-start gap-3 rounded-md border px-4 py-3.5 text-left text-sm transition-colors duration-200 ${
                  picked
                    ? "border-zar/70 bg-zar/12 text-marble"
                    : "border-steel-2 bg-steel/55 text-parchment hover:border-zar/40"
                }`}
              >
                {picked && <CornerFrame />}
                <span
                  className={`relative grid h-6 w-6 shrink-0 place-items-center rounded-sm border font-display text-[11px] font-bold ${
                    picked
                      ? "border-zar/60 bg-zar/20 text-zar-bright"
                      : "border-steel-2 bg-obsidian/60 text-dust"
                  }`}
                >
                  {String.fromCharCode(65 + displayIndex)}
                </span>
                <span className="relative leading-relaxed">{opt}</span>
              </motion.button>
            );
          })}
        </div>
      </div>

      {/* Navigatsiya */}
      <div className="flex items-center justify-between gap-3">
        <button
          disabled={current === 0}
          onClick={() => setCurrent((c) => c - 1)}
          className="font-display text-[11px] font-semibold uppercase tracking-[0.2em] text-dust transition-colors hover:text-marble disabled:opacity-35"
        >
          {t.prev}
        </button>
        {current < questions.length - 1 ? (
          <Button variant="steel" size="sm" onClick={() => setCurrent((c) => c + 1)}>
            {t.next}
          </Button>
        ) : (
          <Button
            variant="zar"
            size="sm"
            disabled={submitting || answeredCount === 0}
            onClick={() => submit(chosen)}
          >
            {submitting ? t.submitting : t.finish}
          </Button>
        )}
      </div>
    </div>
  );
}
