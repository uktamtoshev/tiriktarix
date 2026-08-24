"use client";

import { useEffect, useState } from "react";
import { motion } from "framer-motion";
import { api, Era, QuizQuestion } from "@/lib/api";
import QuizRunner from "@/components/QuizRunner";
import HeroScene from "@/components/art/HeroScene";
import Container from "@/components/ui/Container";
import GateCard, { Gate } from "@/components/ui/GateCard";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Button, { ButtonLink } from "@/components/ui/Button";
import { Divider, Star } from "@/components/ui/Ornament";
import { formatYear } from "@/lib/eras";
import { useLang, useT } from "@/lib/lang";
import { countryQuery, COUNTRY_NAME, useCountry } from "@/lib/country";
import { eraDescription, eraName } from "@/lib/content.ru";

/**
 * Lending menyusi — mahsulotning oltita darvozasi. Bu yerda faqat
 * o'zgarmas qismi: manzil, belgi, raqam va rang. Sarlavha bilan matn TXT dan
 * tilga qarab olinadi.
 */
const GATE_SHAPE: Omit<Gate, "title" | "text">[] = [
  { href: "/qahramonlar", emblem: "suhbat", numeral: "I", accent: "zar" },
  { href: "/voqealar", emblem: "voqealar", numeral: "II", accent: "feruza" },
  { href: "/xaritalar", emblem: "xarita", numeral: "III", accent: "nil" },
  { href: "/filmlar", emblem: "film", numeral: "IV", accent: "zar" },
  { href: "/testlar", emblem: "sinov", numeral: "V", accent: "qon" },
  { href: "/kutubxona", emblem: "xazina", numeral: "VI", accent: "feruza" },
];

/**
 * Bosh sahifadagi raqamlar bazadan keladi (`/api/stats`). Ilgari ular shu yerda
 * qo'lda yozilgan edi va eskirib qolgandi: sahifa 91 kartochka deb turgan
 * paytda bazada 1500 dan ortiq kartochka bor edi. Yuklanmaguncha «—»
 * ko'rsatiladi — o'ylab topilgan raqam ko'rsatishdan ko'ra shunisi to'g'ri.
 */
type PublicStats = {
  factCards: number;
  eras: number;
  events: number;
  quizQuestions: number;
  heroes: number;
  films: number;
};

const TXT = {
  ru: {
    gates: {
      "/qahramonlar": {
        title: "Беседа с предками",
        text: "Задай вопрос Амиру Темуру, Мирзо Улугбеку или Алишеру Навои — они ответят на основе проверенных фактов.",
      },
      "/voqealar": {
        title: "Исторические события",
        text: "От «Авесты» до независимости — восемь эпох и более шестидесяти событий на ленте времени.",
      },
      "/xaritalar": {
        title: "Карты эпох",
        text: "Выбери эпоху — границы сдвигаются, города загораются, прочерчиваются пути походов.",
      },
      "/filmlar": {
        title: "Документальные фильмы",
        text: "Короткие исторические ролики и документальные фильмы — каждый опирается на проверенные данные.",
      },
      "/testlar": {
        title: "Испытания",
        text: "Тесты по эпохам, ежедневная загадка, XP и серия — проверь свои знания в бою.",
      },
      "/kutubxona": {
        title: "Сокровищница — библиотека",
        text: "Все карточки фактов: фильтры по героям и эпохам.",
      },
    } as Record<string, { title: string; text: string }>,
    statLabels: ["Карточек фактов", "Исторических эпох", "Событий", "Вопросов в тестах"],
    h1a: "Не читай",
    h1b: "про героев —",
    h1gold: "«поговори» с ними",
    lead:
      "Беседы с великими предками, карты эпох, документальные фильмы и испытания. Полностью бесплатно.",
    ctaPrimary: "Войти во врата →",
    ctaSecondary: "Посмотреть врата",
    quote: "«История — это не мёртвые даты, а живые голоса.»",
    menuOverline: "Меню",
    menuTitle: "Шесть врат",
    menuSubtitle: "Каждые врата — отдельный мир истории. С чего начать, выбираешь ты.",
    chronicleOverline: "Летопись",
    chronicleTitle: "Восемь эпох",
    chronicleSubtitle: "От пещеры Селунгур до независимости — весь путь на одной линии.",
    riddleOverline: "Каждый день новая",
    riddleTitle: "Ежедневная загадка",
    riddleText: "Тебя ждёт вопрос от предков. Верный ответ — 10 XP.",
    riddleOpen: "Развернуть свиток",
    principleOverline: "Принцип №1",
    principleTitle: "Искусственный интеллект создаёт форму — за правду отвечают люди",
    principleSubtitle:
      "Каждый ответ героя, каждый вопрос теста и каждое событие берутся из карточки факта, проверенной методистом-историком. Если ответа в карточке нет, герой прямо говорит: «Об этом история молчит».",
    principleCta: "Смотреть карточки",
  },
  uz: {
    gates: {
      "/qahramonlar": {
        title: "Ajdodlar bilan suhbat",
        text: "Amir Temur, Mirzo Ulug'bek va Alisher Navoiyga savol ber — ular tasdiqlangan faktlar asosida javob beradi.",
      },
      "/voqealar": {
        title: "Tarixiy voqealar",
        text: "«Avesto»dan mustaqillikkacha — sakkiz davr, oltmishdan ortiq voqea vaqt o'qida.",
      },
      "/xaritalar": {
        title: "Zamon xaritalari",
        text: "Davrni tanla — chegaralar siljiydi, shaharlar yonadi, yurishlar yo'li chiziladi.",
      },
      "/filmlar": {
        title: "Hujjatli filmlar",
        text: "Qisqa tarixiy shortlar va hujjatli filmlar — har biri tekshirilgan ma'lumotga tayanadi.",
      },
      "/testlar": {
        title: "Sinovlar",
        text: "Davrlar bo'yicha testlar, kunlik topishmoq, XP va seriya — bilimingni jangda sina.",
      },
      "/kutubxona": {
        title: "Xazina — kutubxona",
        text: "Barcha fakt kartochkalari: qahramonlar va davrlar bo'yicha filtrlar.",
      },
    } as Record<string, { title: string; text: string }>,
    statLabels: ["Fakt kartochkasi", "Tarixiy davr", "Voqea", "Sinov savoli"],
    h1a: "Qahramonlar haqida",
    h1b: "o'qima —",
    h1gold: "ular bilan «gaplash»",
    lead:
      "Buyuk ajdodlar bilan suhbat, zamon xaritalari, hujjatli filmlar va sinovlar. Butunlay o'zbek tilida, butunlay bepul.",
    ctaPrimary: "Darvozadan kir →",
    ctaSecondary: "Darvozalarni ko'rish",
    quote: "«Tarix — o'lik sanalar emas, tirik ovozlar.»",
    menuOverline: "Menyu",
    menuTitle: "Oltita darvoza",
    menuSubtitle: "Har bir darvoza — tarixning alohida olami. Qayerdan boshlashni o'zing tanla.",
    chronicleOverline: "Salnoma",
    chronicleTitle: "Sakkiz davr",
    chronicleSubtitle: "Selungur g'oridan mustaqillikkacha — butun yo'lni bir chiziqda ko'r.",
    riddleOverline: "Har kuni yangi",
    riddleTitle: "Kunlik topishmoq",
    riddleText: "Ajdodlardan bir savol seni kutmoqda. To'g'ri javob — 10 XP.",
    riddleOpen: "O'ramani och",
    principleOverline: "Prinsip №1",
    principleTitle: "Sun'iy intellekt shaklni yaratadi — haqiqat uchun odamlar javob beradi",
    principleSubtitle:
      "Qahramonning har bir javobi, har bir test savoli va har bir voqea metodist-tarixchi tasdiqlagan fakt kartochkasidan oladi. Javob kartochkada bo'lmasa, qahramon to'g'ridan-to'g'ri aytadi: «Bu haqda tarix sukut saqlaydi».",
    principleCta: "Kartochkalarni ko'rish",
  },
  uk: {
    gates: {
      "/qahramonlar": {
        title: "Бесіда з предками",
        text: "Постав питання Аміру Темуру, Мірзо Улугбеку чи Алішеру Навої — вони відповідять на основі перевірених фактів.",
      },
      "/voqealar": {
        title: "Історичні події",
        text: "Від «Авести» до незалежності — вісім епох і понад шістдесят подій на стрічці часу.",
      },
      "/xaritalar": {
        title: "Карти епох",
        text: "Обери епоху — кордони зсуваються, міста спалахують, прокладаються шляхи походів.",
      },
      "/filmlar": {
        title: "Документальні фільми",
        text: "Короткі історичні ролики та документальні фільми — кожен спирається на перевірені дані.",
      },
      "/testlar": {
        title: "Випробування",
        text: "Тести за епохами, щоденна загадка, XP і серія — перевір свої знання в бою.",
      },
      "/kutubxona": {
        title: "Скарбниця — бібліотека",
        text: "Усі картки фактів: фільтри за героями та епохами.",
      },
    } as Record<string, { title: string; text: string }>,
    statLabels: ["Карток фактів", "Історичних епох", "Подій", "Питань у тестах"],
    h1a: "Не читай",
    h1b: "про героїв —",
    h1gold: "«поговори» з ними",
    lead:
      "Бесіди з великими предками, карти епох, документальні фільми та випробування. Повністю безкоштовно.",
    ctaPrimary: "Увійти в браму →",
    ctaSecondary: "Подивитися брами",
    quote: "«Історія — це не мертві дати, а живі голоси.»",
    menuOverline: "Меню",
    menuTitle: "Шість брам",
    menuSubtitle: "Кожна брама — окремий світ історії. З чого почати, обираєш ти.",
    chronicleOverline: "Літопис",
    chronicleTitle: "Вісім епох",
    chronicleSubtitle: "Від печери Селунгур до незалежності — увесь шлях на одній лінії.",
    riddleOverline: "Щодня нова",
    riddleTitle: "Щоденна загадка",
    riddleText: "На тебе чекає питання від предків. Правильна відповідь — 10 XP.",
    riddleOpen: "Розгорнути сувій",
    principleOverline: "Принцип №1",
    principleTitle: "Штучний інтелект створює форму — за правду відповідають люди",
    principleSubtitle:
      "Кожна відповідь героя, кожне питання тесту й кожна подія беруться з картки факту, перевіреної методистом-істориком. Якщо відповіді в картці немає, герой прямо каже: «Про це історія мовчить».",
    principleCta: "Дивитися картки",
  },
};

export default function Home() {
  const t = useT(TXT);
  const { lang } = useLang();
  const { country } = useCountry();
  const [riddle, setRiddle] = useState<QuizQuestion | null>(null);
  const [showRiddle, setShowRiddle] = useState(false);
  const [eras, setEras] = useState<Era[]>([]);
  const [counts, setCounts] = useState<PublicStats | null>(null);

  const gates: Gate[] = GATE_SHAPE.map((g) => ({ ...g, ...t.gates[g.href] }));
  // Tartib `statLabels` bilan bir xil: kartochka, davr, voqea, sinov savoli.
  const stats = [
    counts?.factCards,
    counts?.eras,
    counts?.events,
    counts?.quizQuestions,
  ].map((value, i) => ({
    value: value === undefined ? "—" : value.toLocaleString(lang === "ru" ? "ru-RU" : "uz-UZ"),
    label: t.statLabels[i],
  }));

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
    api<QuizQuestion>("/api/quiz/riddle").then(keep(setRiddle)).catch(keep(() => setRiddle(null)));
    api<Era[]>(`/api/eras${countryQuery(country)}`).then(keep(setEras)).catch(keep(() => setEras([])));
    // Raqamlar chiqmasa sahifa baribir ishlaydi — o'rnida «—» turadi.
    api<PublicStats>("/api/stats").then(keep(setCounts)).catch(keep(() => setCounts(null)));
    return () => {
      live = false;
    };
  }, [country]);

  return (
    <>
      {/* ============================ HERO «SARHAD» ============================ */}
      <section className="relative flex min-h-[92vh] items-center justify-center overflow-hidden">
        <HeroScene />

        <Container className="relative z-10 py-28 text-center">
          <motion.p
            initial={{ opacity: 0, y: 14 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.9, ease: [0.16, 1, 0.3, 1] }}
            className="flex items-center justify-center gap-3 text-[10px] font-semibold uppercase tracking-[0.42em] text-zar/85 sm:text-[11px]"
          >
            <Star className="h-3 w-3" />
            {COUNTRY_NAME[country][lang]}
            <Star className="h-3 w-3" />
          </motion.p>

          <h1 className="tt-reveal-blur mt-7 font-display text-[2rem] font-bold uppercase leading-[1.15] tracking-[0.04em] text-marble sm:text-5xl lg:text-6xl">
            {t.h1a}
            <br />
            {t.h1b} <span className="tt-gold-text">{t.h1gold}</span>
          </h1>

          <p
            className="tt-reveal mx-auto mt-8 max-w-2xl text-base leading-relaxed text-dust sm:text-lg"
            style={{ animationDelay: "220ms" }}
          >
            {t.lead}
          </p>

          <div
            className="tt-reveal mt-11 flex flex-col items-center justify-center gap-4 sm:flex-row"
            style={{ animationDelay: "380ms" }}
          >
            <ButtonLink href="/qahramonlar" size="lg" sweep className="tt-ember">
              {t.ctaPrimary}
            </ButtonLink>
            <ButtonLink href="#darvozalar" variant="ghost" size="lg">
              {t.ctaSecondary}
            </ButtonLink>
          </div>

          <p
            className="tt-reveal mt-14 font-quote text-lg italic text-zar/90 sm:text-xl"
            style={{ animationDelay: "560ms" }}
          >
            {t.quote}
          </p>
        </Container>

        {/* Skroll ishorasi */}
        <motion.div
          aria-hidden
          animate={{ y: [0, 10, 0], opacity: [0.4, 1, 0.4] }}
          transition={{ duration: 2.6, repeat: Infinity, ease: "easeInOut" }}
          className="absolute bottom-7 left-1/2 z-10 -translate-x-1/2 text-zar"
        >
          <svg viewBox="0 0 24 40" className="h-9 w-6" fill="none" stroke="currentColor" strokeWidth="1.2">
            <rect x="4" y="1" width="16" height="26" rx="8" />
            <path d="M12 8 v5" />
            <path d="M7 32 l5 6 5-6" strokeOpacity="0.6" />
          </svg>
        </motion.div>
      </section>

      {/* ============================= DARVOZALAR ============================= */}
      <section id="darvozalar" className="relative scroll-mt-24 py-24">
        <Container width="wide">
          <SectionTitle
            overline={t.menuOverline}
            title={t.menuTitle}
            subtitle={t.menuSubtitle}
          />

          <div className="mt-14 grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
            {gates.map((gate, i) => (
              <GateCard key={gate.href} gate={gate} delay={i * 90} />
            ))}
          </div>
        </Container>
      </section>

      {/* ============================== SALNOMA ============================== */}
      {eras.length > 0 && (
        <section className="relative py-20">
          <Container width="wide">
            <SectionTitle
              overline={t.chronicleOverline}
              title={t.chronicleTitle}
              subtitle={t.chronicleSubtitle}
            />

            <div className="relative mt-14">
              <span aria-hidden className="tt-timeline-axis absolute left-0 right-0 top-[42px] h-px" />
              <div className="tt-no-scrollbar flex gap-4 overflow-x-auto pb-4">
                {eras.map((era, i) => (
                  <a
                    key={era.code}
                    href={`/voqealar?era=${era.code}`}
                    className="tt-reveal group relative w-56 shrink-0"
                    style={{ animationDelay: `${i * 70}ms` }}
                  >
                    {/* O'q ustidagi tugun */}
                    <span
                      aria-hidden
                      className="mx-auto flex h-[84px] items-center justify-center text-zar transition-transform duration-500 ease-tt group-hover:scale-125"
                    >
                      <svg viewBox="0 0 32 32" className="h-6 w-6" fill="none" stroke="currentColor" strokeWidth="1.4">
                        <path d="M16 2 L20 12 L30 16 L20 20 L16 30 L12 20 L2 16 L12 12 Z" />
                        <circle cx="16" cy="16" r="3.4" className="fill-obsidian" />
                      </svg>
                    </span>
                    <Panel className="p-5 transition-all duration-500 ease-tt group-hover:-translate-y-1">
                      <p className="font-display text-[10px] font-semibold uppercase tracking-[0.24em] text-zar/90">
                        {era.yearFrom !== null ? formatYear(era.yearFrom, lang) : ""}
                        {era.yearTo !== null ? ` — ${era.yearTo}` : " —"}
                      </p>
                      <h3 className="mt-2 font-display text-sm font-bold uppercase leading-snug text-marble">
                        {eraName(era, lang)}
                      </h3>
                      <p className="mt-2 line-clamp-3 text-xs leading-relaxed text-dust">
                        {eraDescription(era, lang)}
                      </p>
                    </Panel>
                  </a>
                ))}
              </div>
            </div>
          </Container>
        </section>
      )}

      {/* ========================== KUNLIK TOPISHMOQ ========================== */}
      {riddle && (
        <section className="relative py-16">
          <Container>
            <Panel tone="steel" corners girih className="p-7 sm:p-10">
              <div className="flex flex-col items-center gap-6 text-center">
                <span aria-hidden className="text-zar">
                  <svg viewBox="0 0 64 64" className="h-12 w-12" fill="none" stroke="currentColor" strokeWidth="1.3">
                    <path d="M14 12 h30 a6 6 0 0 1 6 6 v34 a6 6 0 0 1-6 6 H14 a6 6 0 0 0 6-6 V18 a6 6 0 0 0-6-6Z" />
                    <path d="M26 24 h16 M26 32 h16 M26 40 h10" strokeOpacity="0.5" />
                  </svg>
                </span>
                <div>
                  <p className="font-display text-[10px] font-semibold uppercase tracking-[0.34em] text-zar/90">
                    {t.riddleOverline}
                  </p>
                  <h2 className="mt-3 font-display text-xl font-bold uppercase text-marble sm:text-2xl">
                    {t.riddleTitle}
                  </h2>
                </div>

                {showRiddle ? (
                  <div className="w-full text-left">
                    <QuizRunner questions={[riddle]} scope="riddle" />
                  </div>
                ) : (
                  <>
                    <p className="max-w-md text-sm leading-relaxed text-dust">{t.riddleText}</p>
                    <Button onClick={() => setShowRiddle(true)} variant="zar" size="md">
                      {t.riddleOpen}
                    </Button>
                  </>
                )}
              </div>
            </Panel>
          </Container>
        </section>
      )}

      {/* ============================== MANIFEST ============================== */}
      <section className="relative py-20">
        <Container width="wide">
          <Divider />
          <div className="mt-14 grid gap-12 lg:grid-cols-[1.1fr_1fr] lg:items-center">
            <div>
              <SectionTitle
                align="left"
                overline={t.principleOverline}
                title={t.principleTitle}
                subtitle={t.principleSubtitle}
              />
              <div className="mt-8">
                <ButtonLink href="/kutubxona" variant="steel" size="md">
                  {t.principleCta}
                </ButtonLink>
              </div>
            </div>

            <div className="grid grid-cols-2 gap-4">
              {stats.map((s, i) => (
                <Panel key={s.label} corners className="p-6 text-center">
                  <span style={{ animationDelay: `${i * 80}ms` }} className="tt-reveal block">
                    <p className="tt-gold-text font-display text-4xl font-bold sm:text-5xl">{s.value}</p>
                    <p className="mt-2 text-[10px] font-semibold uppercase tracking-[0.2em] text-dust">
                      {s.label}
                    </p>
                  </span>
                </Panel>
              ))}
            </div>
          </div>
        </Container>
      </section>
    </>
  );
}
