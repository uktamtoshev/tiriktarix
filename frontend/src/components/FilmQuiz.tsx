"use client";

import { useState } from "react";
import { motion } from "framer-motion";
import confetti from "canvas-confetti";
import {
  AnswerReview,
  QuizQuestion,
  SubmitResult,
  api,
  getClientId,
  tellMascot,
} from "@/lib/api";
import { optionOrders } from "@/lib/quiz";
import Link from "next/link";
import Button from "@/components/ui/Button";
import Panel from "@/components/ui/Panel";
import { Star } from "@/components/ui/Ornament";
import { useLang, useT } from "@/lib/lang";
import { quizExplanation, quizQuestion } from "@/lib/content.ru";

const TXT = {
  ru: {
    unlocked: (name: string) => `Открыто новое снаряжение: ${name}!`,
    xpEarned: (xp: number) => `+${xp} XP за тест по фильму!`,
    goodTry: "Хороший результат! Это была тренировка — XP даётся с первой попытки.",
    tryAgainMascot: "Пересмотри фильм и попробуй ещё раз!",
    noQuestions: "Для этого фильма вопросов пока нет.",
    unlockedTitle: "Открыто новое снаряжение",
    equipInArmoury: "Надеть в Оружейной →",
    resultTitle: "Итог теста по фильму",
    great: "Отлично! Ты смотрел фильм внимательно.",
    good: "Хороший результат! Попробуй ещё.",
    tryAgain: "Пересмотри фильм и попробуй ещё раз!",
    practiceMode: "Режим тренировки — XP даётся только с первой попытки",
    needed: (n: number) => `Чтобы получить XP, нужно было минимум ${n} верных ответов.`,
    retry: "Ещё раз",
    correct: "Верно! ✔",
    wrong: "Неверно…",
    correctAnswer: "Правильный ответ:",
    next: "Следующий →",
    submitting: "Отправляется…",
    finish: "Завершить",
  },
  uz: {
    unlocked: (name: string) => `Yangi jihoz ochildi: ${name}!`,
    xpEarned: (xp: number) => `Film testi uchun +${xp} XP!`,
    goodTry: "Yaxshi natija! Bu mashq edi — XP birinchi urinishda beriladi.",
    tryAgainMascot: "Filmni yana bir ko'rib, qayta urinib ko'r!",
    noQuestions: "Bu film uchun savollar hali yo'q.",
    unlockedTitle: "Yangi jihoz ochildi",
    equipInArmoury: "Qurolxonada kiyish →",
    resultTitle: "Film testi yakuni",
    great: "Ajoyib! Filmni diqqat bilan ko'rgansan.",
    good: "Yaxshi natija! Yana harakat qil.",
    tryAgain: "Filmni yana bir ko'rib, qayta urinib ko'r!",
    practiceMode: "Mashq rejimi — XP faqat birinchi urinishda beriladi",
    needed: (n: number) => `XP olish uchun kamida ${n} ta to'g'ri javob kerak edi.`,
    retry: "Yana urinish",
    correct: "To'g'ri! ✔",
    wrong: "Noto'g'ri…",
    correctAnswer: "To'g'ri javob:",
    next: "Keyingisi →",
    submitting: "Yuborilmoqda…",
    finish: "Yakunlash",
  },
  uk: {
    unlocked: (name: string) => `Відкрито нове спорядження: ${name}!`,
    xpEarned: (xp: number) => `+${xp} XP за тест по фільму!`,
    goodTry: "Хороший результат! Це було тренування — XP дається з першої спроби.",
    tryAgainMascot: "Передивись фільм і спробуй ще раз!",
    noQuestions: "Для цього фільму питань поки немає.",
    unlockedTitle: "Відкрито нове спорядження",
    equipInArmoury: "Вдягнути у Зброярні →",
    resultTitle: "Підсумок тесту по фільму",
    great: "Відмінно! Ти дивився фільм уважно.",
    good: "Хороший результат! Спробуй ще.",
    tryAgain: "Передивись фільм і спробуй ще раз!",
    practiceMode: "Режим тренування — XP дається лише з першої спроби",
    needed: (n: number) => `Щоб отримати XP, потрібно було щонайменше ${n} правильних відповідей.`,
    retry: "Ще раз",
    correct: "Правильно! ✔",
    wrong: "Неправильно…",
    correctAnswer: "Правильна відповідь:",
    next: "Наступне →",
    submitting: "Надсилається…",
    finish: "Завершити",
  },
};


/**
 * Film testi — savolma-savol rejimi (dialogdagi mikro-kviz uslubida):
 * javob tanlangan zahoti to'g'ri variant va izoh ko'rinadi.
 *
 * Har javob /api/quiz/check bilan darhol tekshiriladi (XP siz), yakunda esa
 * hammasi /api/quiz/submit ga yuboriladi — XP va hisob faqat serverda. Variantlar
 * har ko'rsatishda aralash (lib/quiz), serverga esa asl indeks ketadi.
 */
export default function FilmQuiz({
  filmId,
  questions,
  onFinished,
  onRestart,
}: {
  filmId: number;
  questions: QuizQuestion[];
  onFinished?: (result: SubmitResult) => void;
  /** «Yana urinish» — ota komponent savollarni qaytadan so'raydi. */
  onRestart?: () => void;
}) {
  const t = useT(TXT);
  const { lang } = useLang();
  const [current, setCurrent] = useState(0);
  const [order] = useState<number[][]>(() => optionOrders(questions.map((q) => q.options.length)));
  const [chosen, setChosen] = useState<(number | null)[]>(questions.map(() => null));
  const [reviews, setReviews] = useState<(AnswerReview | null)[]>(questions.map(() => null));
  const [checking, setChecking] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [result, setResult] = useState<SubmitResult | null>(null);

  if (questions.length === 0) {
    return <p className="text-sm text-dust">{t.noQuestions}</p>;
  }

  const total = questions.length;
  const highAt = Math.ceil(total * 0.7);
  const midAt = Math.ceil(total * 0.5);

  const pick = async (originalIndex: number) => {
    if (checking || reviews[current]) return;
    setChecking(true);
    try {
      const review = await api<AnswerReview>("/api/quiz/check", {
        method: "POST",
        body: JSON.stringify({ questionId: questions[current].id, chosenIndex: originalIndex }),
      });
      setChosen((prev) => prev.map((c, i) => (i === current ? originalIndex : c)));
      setReviews((prev) => prev.map((r, i) => (i === current ? review : r)));
    } finally {
      setChecking(false);
    }
  };

  const finish = async () => {
    if (submitting) return;
    setSubmitting(true);
    try {
      const res = await api<SubmitResult>("/api/quiz/submit", {
        method: "POST",
        body: JSON.stringify({
          clientId: getClientId(),
          scope: `film:${filmId}`,
          answers: questions.map((q, i) => ({ questionId: q.id, chosenIndex: chosen[i] ?? -1 })),
        }),
      });
      setResult(res);
      if (res.xpEarned > 0 || res.score >= highAt) {
        confetti({
          particleCount: 90,
          spread: 75,
          origin: { x: 0.5, y: 0.65 },
          colors: ["#f3d98b", "#c8a247", "#7a5f1c", "#ede2c8"],
        });
      }
      if (res.newlyUnlocked && res.newlyUnlocked.length > 0) {
        tellMascot("celebrate", t.unlocked(res.newlyUnlocked[0].nameUz));
      } else if (res.xpEarned > 0) {
        tellMascot("celebrate", t.xpEarned(res.xpEarned));
      } else if (res.score >= midAt) {
        tellMascot("happy", t.goodTry);
      } else {
        tellMascot("sad", t.tryAgainMascot);
      }
      onFinished?.(res);
    } finally {
      setSubmitting(false);
    }
  };

  if (result) {
    const encourage = result.firstAttempt && result.score < midAt;
    return (
      <div className="tt-rise space-y-4">
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

        <Panel corners girih className="p-7 text-center">
          <p className="font-display text-[10px] font-semibold uppercase tracking-[0.34em] text-zar/90">
            {t.resultTitle}
          </p>
          <p className="tt-gold-text mt-3 font-display text-5xl font-bold">
            {result.score}
            <span className="text-2xl text-zar/75"> / {result.total}</span>
          </p>
          <p className="mt-3 font-quote text-lg italic text-parchment">
            {result.score >= highAt ? t.great : result.score >= midAt ? t.good : t.tryAgain}
          </p>
          {result.xpEarned > 0 && (
            <p className="tt-ember mt-5 inline-flex items-center gap-2 rounded-sm border border-zar/50 bg-zar/12 px-5 py-2 font-display text-sm font-bold uppercase tracking-[0.16em] text-zar-bright">
              <Star className="h-3.5 w-3.5" />+{result.xpEarned} XP
            </p>
          )}
          {result.xpEarned === 0 && !result.firstAttempt && (
            <p className="mt-5 inline-block rounded-sm border border-steel-2 bg-steel/60 px-4 py-2 font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-dust">
              {t.practiceMode}
            </p>
          )}
          {encourage && (
            <p className="mt-4 text-sm text-dust">{t.needed(midAt)}</p>
          )}
          {onRestart && (
            <div className="mt-6">
              <Button variant="steel" size="sm" onClick={onRestart}>
                {t.retry}
              </Button>
            </div>
          )}
        </Panel>
      </div>
    );
  }

  const q = questions[current];
  const shown = quizQuestion(q, lang);
  const review = reviews[current];

  return (
    <div className="space-y-4">
      <div className="flex items-center gap-1.5">
        {questions.map((_, i) => (
          <span
            key={i}
            className={`h-1 rounded-full transition-all duration-300 ${
              i === current
                ? "w-7 bg-zar"
                : reviews[i]
                  ? reviews[i]!.correct
                    ? "w-2.5 bg-feruza/70"
                    : "w-2.5 bg-qon/70"
                  : "w-2.5 bg-steel-2"
            }`}
          />
        ))}
        <span className="ms-2.5 font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-dust">
          {current + 1} / {total}
        </span>
      </div>

      <div key={current} className="tt-reveal space-y-4">
        <p className="text-base font-semibold leading-relaxed text-marble sm:text-lg">
          {shown.question}
        </p>
        <div className="grid gap-2.5">
          {order[current].map((originalIndex, displayIndex) => {
            const opt = shown.options[originalIndex];
            const picked = chosen[current] === originalIndex;
            const showCorrect = review && review.correctIndex === originalIndex;
            const showWrong = review && picked && !review.correct;
            return (
              <motion.button
                key={originalIndex}
                whileTap={review ? undefined : { scale: 0.985 }}
                disabled={!!review || checking}
                onClick={() => pick(originalIndex)}
                className={`relative flex items-start gap-3 rounded-md border px-4 py-3.5 text-left text-sm transition-colors duration-200 ${
                  showCorrect
                    ? "border-feruza/60 bg-feruza/12 text-marble"
                    : showWrong
                      ? "border-qon/60 bg-qon/12 text-marble"
                      : picked
                        ? "border-zar/70 bg-zar/12 text-marble"
                        : "border-steel-2 bg-steel/55 text-parchment enabled:hover:border-zar/40 disabled:opacity-70"
                }`}
              >
                <span
                  className={`relative grid h-6 w-6 shrink-0 place-items-center rounded-sm border font-display text-[11px] font-bold ${
                    showCorrect
                      ? "border-feruza/60 bg-feruza/15 text-feruza-bright"
                      : showWrong
                        ? "border-qon/60 bg-qon/15 text-[#e8a99f]"
                        : "border-steel-2 bg-obsidian/60 text-dust"
                  }`}
                >
                  {showCorrect ? "✔" : showWrong ? "✕" : String.fromCharCode(65 + displayIndex)}
                </span>
                <span className="relative leading-relaxed">{opt}</span>
              </motion.button>
            );
          })}
        </div>

        {review && (
          <div
            className={`tt-reveal rounded-md border p-4 text-sm ${
              review.correct ? "border-feruza/45 bg-feruza/10" : "border-qon/50 bg-qon/10"
            }`}
          >
            <p className="font-semibold text-marble">
              {review.correct ? t.correct : t.wrong}
            </p>
            {!review.correct && (
              <p className="mt-1.5 text-dust">
                {t.correctAnswer}{" "}
                <b className="text-parchment">{shown.options[review.correctIndex]}</b>
              </p>
            )}
            {quizExplanation(review, lang) && (
              <p className="mt-1.5 italic leading-relaxed text-dust/85">
                {quizExplanation(review, lang)}
              </p>
            )}
          </div>
        )}
      </div>

      <div className="flex items-center justify-end">
        {review &&
          (current < total - 1 ? (
            <Button variant="steel" size="sm" onClick={() => setCurrent((c) => c + 1)}>
              {t.next}
            </Button>
          ) : (
            <Button variant="zar" size="sm" disabled={submitting} onClick={finish}>
              {submitting ? t.submitting : t.finish}
            </Button>
          ))}
      </div>
    </div>
  );
}
