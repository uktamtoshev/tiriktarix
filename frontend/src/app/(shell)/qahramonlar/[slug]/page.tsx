"use client";

import Link from "next/link";
import { use, useEffect, useRef, useState } from "react";
import { motion } from "framer-motion";
import { heroYears } from "@/lib/eras";
import { api, API_URL, ChatAnswer, FactCard, getClientId, Hero, QuizQuestion, tellMascot } from "@/lib/api";
import QuizRunner from "@/components/QuizRunner";
import Panel from "@/components/ui/Panel";
import SectionTitle from "@/components/ui/SectionTitle";
import Badge from "@/components/ui/Badge";
import Button from "@/components/ui/Button";
import HeroMedallion, { MedallionAccent, portraitAlt, PortraitCaption } from "@/components/ui/HeroMedallion";
import FactDetail from "@/components/ui/FactDetail";
import { CornerFrame, Star } from "@/components/ui/Ornament";
import { useLang, useT } from "@/lib/lang";
import { heroCard, portraitCaption } from "@/lib/heroes.ru";
import { factCard } from "@/lib/content.ru";
import { heroSummary } from "@/lib/biographies.ru";

/*
  DIQQAT. Bu yerdagi yozuvlar interfeysga tegishli va tarjima qilinadi, LEKIN
  ovoz yo'llari — TTS va STT — DOIM o'zbekcha qoladi: `rec.lang = "uz-UZ"`,
  brauzer ovozi tanlovi (uz → tr → az → ru) va serverning `/api/voice/*`
  chaqiruvlari til tanlagichga bog'liq emas. Ajdodning javobi ham bazadagi
  o'zbekcha kartochkadan keladi — uni rus ovozi bilan o'qish yolg'on bo'lardi.
*/
const TXT = {
  ru: {
    browserVoice:
      "Предок сейчас говорит голосом браузера — когда его собственный голос будет готов, он сменится.",
    connectionLost: "Извините, связь прервалась. Попробуйте ещё раз.",
    loading: "Загрузка…",
    backToHall: "Зал предков",
    microQuiz: "Мини-тест",
    microQuizTitle: "Мини-тест — что ты запомнил из беседы?",
    microQuizHint: "У тебя есть одна минута.",
    suggestionsTitle: "О чём можно спросить",
    transcribing: "Голос превращается в текст…",
    askPlaceholder: (name: string) => `Напиши вопрос для «${name}»…`,
    stopRecording: "Остановить запись",
    askByVoice: "Задать вопрос голосом",
    send: "Отправить",
    safety:
      "Не пиши свои личные данные (имя, адрес, телефон). Предок отвечает только на основе проверенных исторических фактов.",
    bioOverline: "Биография",
    noFacts: "Для этого предка карточки фактов пока не собраны.",
    bioNote:
      "Биография собирается только из проверенных карточек фактов — под каждым абзацем указано, откуда он взят.",
    stopVoice: "Остановить озвучку",
    readAloud: "Прочитать вслух",
    stop: "Стоп",
    listen: "Слушать",
  },
  uz: {
    browserVoice:
      "Ajdod hozir brauzer ovozi bilan gapiryapti — o'z ovozi tayyor bo'lganda almashadi.",
    connectionLost: "Kechirasiz, aloqa uzildi. Yana urinib ko'ring.",
    loading: "Yuklanmoqda…",
    backToHall: "Ajdodlar zali",
    microQuiz: "Mikro-sinov",
    microQuizTitle: "Mikro-sinov — suhbatdan nimani esladingiz?",
    microQuizHint: "Bir daqiqa vaqting bor.",
    suggestionsTitle: "Nima haqida so'rash mumkin",
    transcribing: "Ovoz matnga aylantirilmoqda…",
    askPlaceholder: (name: string) => `${name}ga savol yozing…`,
    stopRecording: "Yozishni to'xtatish",
    askByVoice: "Savolni ovoz bilan berish",
    send: "Yuborish",
    safety:
      "Shaxsiy ma'lumotlaringizni (ism, manzil, telefon) yozmang. Ajdod faqat tasdiqlangan tarixiy faktlar asosida javob beradi.",
    bioOverline: "Tarjimai hol",
    noFacts: "Bu ajdod uchun hali fakt kartochkalari yig'ilmagan.",
    bioNote:
      "Tarjimai hol faqat tasdiqlangan fakt kartochkalaridan yig'iladi — har bir xatboshining ostida u qayerdan olingani turadi.",
    stopVoice: "Ovozni to'xtatish",
    readAloud: "Ovoz chiqarib o'qish",
    stop: "To'xtatish",
    listen: "Tinglash",
  },
  uk: {
    browserVoice:
      "Предок зараз говорить голосом браузера — коли його власний голос буде готовий, він зміниться.",
    connectionLost: "Вибачте, зв'язок урвався. Спробуйте ще раз.",
    loading: "Завантаження…",
    backToHall: "Зала предків",
    microQuiz: "Міні-тест",
    microQuizTitle: "Міні-тест — що ти запам'ятав із бесіди?",
    microQuizHint: "У тебе є одна хвилина.",
    suggestionsTitle: "Про що можна запитати",
    transcribing: "Голос перетворюється на текст…",
    askPlaceholder: (name: string) => `Напиши питання для «${name}»…`,
    stopRecording: "Зупинити запис",
    askByVoice: "Поставити питання голосом",
    send: "Надіслати",
    safety:
      "Не пиши свої особисті дані (ім'я, адресу, телефон). Предок відповідає лише на основі перевірених історичних фактів.",
    bioOverline: "Біографія",
    noFacts: "Для цього предка картки фактів поки не зібрано.",
    bioNote:
      "Біографія збирається лише з перевірених карток фактів — під кожним абзацом указано, звідки він узятий.",
    stopVoice: "Зупинити озвучення",
    readAloud: "Прочитати вголос",
    stop: "Стоп",
    listen: "Слухати",
  },
};

type Message = {
  role: "user" | "hero";
  text: string;
  source?: string | null;
  /** NONE — oddiy javob; NO_FACT/OFF_TOPIC — rad javobi, toshga o'yilgandek chiziladi. */
  refusal?: ChatAnswer["refusalType"];
};

/**
 * Brauzer nutq tanish moslamasi — TypeScript da standart tiplari yo'q
 * (Chrome/Safari kengaytmasi), shuning uchun kerakli qismini o'zimiz e'lon
 * qilamiz. Yangi npm bog'liqligi qo'shilmaydi.
 */
type SpeechRecognitionEventLike = {
  results: ArrayLike<ArrayLike<{ transcript: string }>>;
};

type SpeechRecognitionLike = {
  lang: string;
  interimResults: boolean;
  continuous: boolean;
  onresult: ((event: SpeechRecognitionEventLike) => void) | null;
  start: () => void;
  stop: () => void;
};

const ACCENT_TEXT: Record<MedallionAccent, string> = {
  zar: "text-zar",
  feruza: "text-feruza-bright",
  nil: "text-[#9fb8e0]",
  qon: "text-[#e0a094]",
};

/**
 * Portret ostidagi qisqacha ma'lumot (V90). Matn bazada, komponentda emas —
 * uni metodist tahrirlaydi. Yozuv buzuq bo'lsa karta shunchaki chizilmaydi:
 * bitta ajdodning noto'g'ri JSON i butun sahifani yiqitmasligi kerak.
 */
type HeroSummary = { rows: { label: string; value: string }[]; source?: string };

function parseSummary(raw: string | null): HeroSummary | null {
  if (!raw) return null;
  try {
    const parsed = JSON.parse(raw) as HeroSummary;
    return Array.isArray(parsed?.rows) && parsed.rows.length > 0 ? parsed : null;
  } catch {
    return null;
  }
}

export default function HeroChatPage({ params }: { params: Promise<{ slug: string }> }) {
  const t = useT(TXT);
  const { lang } = useLang();
  const { slug } = use(params);
  const [hero, setHero] = useState<Hero | null>(null);
  /** Tarjimai hol bo'limi shu kartochkalardan yig'iladi — boshqa manba yo'q. */
  const [facts, setFacts] = useState<FactCard[]>([]);
  const [suggestions, setSuggestions] = useState<string[]>([]);
  const [messages, setMessages] = useState<Message[]>([]);
  const [input, setInput] = useState("");
  const [sending, setSending] = useState(false);
  const [quiz, setQuiz] = useState<QuizQuestion[] | null>(null);
  const bottomRef = useRef<HTMLDivElement>(null);

  // ===== Ajdod ovozi (TTS/STT) — server qaysi ajdodlarga ruxsat berganini aytadi =====
  const [voice, setVoice] = useState({ tts: false, stt: false });
  const [speakingIdx, setSpeakingIdx] = useState<number | null>(null);
  const [recording, setRecording] = useState(false);
  const [transcribing, setTranscribing] = useState(false);
  const audioRef = useRef<HTMLAudioElement | null>(null);
  const recorderRef = useRef<MediaRecorder | null>(null);
  const chunksRef = useRef<Blob[]>([]);
  const recognitionRef = useRef<SpeechRecognitionLike | null>(null);
  const browserTextRef = useRef("");

  // Medalyon rangi bazadan (V102). Ajdod hali yuklanmagan bo'lsa — standart «zar».
  const accent: MedallionAccent = hero?.accent ?? "zar";

  useEffect(() => {
    api<Hero>(`/api/heroes/${slug}`).then((h) => {
      setHero(h);
      setMessages([{ role: "hero", text: h.greetingUz }]);
    });
    api<FactCard[]>(`/api/library/factcards?heroSlug=${slug}`)
      .then((cards) => {
        setFacts(cards);
        setSuggestions(cards.map((c) => c.topicUz));  // taklif matni savolga aylanadi — asl tilda
      })
      .catch(() => {
        setFacts([]);
        setSuggestions([]);
      });
    // Ajdod ro'yxatda bo'lsa yetarli: server ovozi ishlamasa ham, brauzer
    // o'qiydi va tinglaydi — bola uchun jimlik buzilgan mahsulotdek ko'rinadi.
    api<{ tts: boolean; stt: boolean; heroes: string[] }>("/api/voice/status")
      .then((s) => {
        // «*» — hamma ajdodlar uchun ovoz yoqilgan
        const enabled = s.heroes.includes("*") || s.heroes.includes(slug);
        const canListen =
          typeof window !== "undefined" &&
          ("SpeechRecognition" in window || "webkitSpeechRecognition" in window);
        setVoice({ tts: enabled, stt: enabled && (s.stt || canListen) });
      })
      .catch(() => setVoice({ tts: false, stt: false }));
  }, [slug]);

  // Sahifadan chiqishda ovoz to'xtaydi
  useEffect(() => {
    return () => {
      audioRef.current?.pause();
      window.speechSynthesis?.cancel();
      recorderRef.current?.stop();
    };
  }, []);

  const voiceDownNotified = useRef(false);

  /**
   * Brauzerning o'z ovozi — zaxira yo'l.
   *
   * Server TTS si ishlamay qolsa (tunnel uxlab qolgan, kalit almashgan),
   * ajdod baribir gapirishi kerak: bola uchun jimlik — buzilgan mahsulot.
   * O'zbekcha ovoz odatda tizimda bo'lmaydi, shuning uchun eng yaqin
   * talaffuzli ovoz tanlanadi: uz → tr → az → ru → birinchi mavjud.
   */
  function speakWithBrowser(text: string, idx: number): boolean {
    if (typeof window === "undefined" || !window.speechSynthesis) return false;
    const synth = window.speechSynthesis;
    synth.cancel();

    const start = () => {
      const utter = new SpeechSynthesisUtterance(text);
      const voices = synth.getVoices();
      const pick = (prefix: string) => voices.find((v) => v.lang.toLowerCase().startsWith(prefix));
      const chosen = pick("uz") ?? pick("tr") ?? pick("az") ?? pick("ru") ?? voices[0];
      if (chosen) {
        utter.voice = chosen;
        utter.lang = chosen.lang;
      }
      // Sohibqiron ohangi: sekinroq va pastroq — bola matnni ulgurib eshitadi
      utter.rate = 0.92;
      utter.pitch = 0.9;
      utter.onend = () => setSpeakingIdx((cur) => (cur === idx ? null : cur));
      utter.onerror = () => setSpeakingIdx((cur) => (cur === idx ? null : cur));
      synth.speak(utter);
    };

    // Chrome ovozlar ro'yxatini keyinroq yuklaydi: bo'sh bo'lsa, `voiceschanged`
    // ni kutamiz, aks holda ovoz tanlanmay qoladi.
    if (synth.getVoices().length === 0) {
      synth.addEventListener("voiceschanged", start, { once: true });
      // Hodisa kelmasa ham jim qolmaymiz — standart ovoz bilan o'qiymiz
      window.setTimeout(() => {
        if (!synth.speaking && !synth.pending) start();
      }, 300);
    } else {
      start();
    }
    return true;
  }

  /** Ajdod javobini ovoz chiqarib o'qish. Qayta bosish — to'xtatish. */
  async function speak(text: string, idx: number) {
    const stopAll = () => {
      audioRef.current?.pause();
      window.speechSynthesis?.cancel();
    };
    if (speakingIdx === idx) {
      stopAll();
      setSpeakingIdx(null);
      return;
    }
    stopAll();
    setSpeakingIdx(idx);
    try {
      const res = await fetch(`${API_URL}/api/voice/tts`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ heroSlug: slug, text }),
      });
      if (!res.ok) throw new Error(String(res.status));
      const url = URL.createObjectURL(await res.blob());
      const audio = new Audio(url);
      audioRef.current = audio;
      audio.onended = () => {
        setSpeakingIdx((cur) => (cur === idx ? null : cur));
        URL.revokeObjectURL(url);
      };
      audio.onpause = () => setSpeakingIdx((cur) => (cur === idx ? null : cur));
      await audio.play();
    } catch {
      // Server ovozi yo'q — brauzer ovozi bilan gapiramiz
      if (speakWithBrowser(text, idx)) {
        if (!voiceDownNotified.current) {
          voiceDownNotified.current = true;
          tellMascot("happy", t.browserVoice);
        }
        return;
      }
      setSpeakingIdx(null);
    }
  }

  /**
   * Savolni ovoz bilan berish: bir bosishda yozish, ikkinchisida to'xtatish.
   *
   * Ikki yo'l BIR VAQTDA ishlaydi: audio serverdagi STT ga yuboriladi va
   * shu bilan birga brauzerning o'z tanish moslamasi tinglaydi. Natija
   * serverdan kelsa — o'sha olinadi (u o'zbek tiliga sozlangan), kelmasa
   * brauzer matni ishlatiladi. Shunda bola qayta gapirishga majbur bo'lmaydi.
   */
  async function toggleRecording() {
    if (recording) {
      recorderRef.current?.stop();
      recognitionRef.current?.stop();
      return;
    }
    // Brauzer tanish moslamasi (Chrome/Safari) — zaxira matn shu yerda yig'iladi
    browserTextRef.current = "";
    const SR = (window as unknown as {
      SpeechRecognition?: new () => SpeechRecognitionLike;
      webkitSpeechRecognition?: new () => SpeechRecognitionLike;
    });
    const Recognition = SR.SpeechRecognition ?? SR.webkitSpeechRecognition;
    if (Recognition) {
      try {
        const rec = new Recognition();
        rec.lang = "uz-UZ";
        rec.interimResults = false;
        rec.continuous = true;
        rec.onresult = (e: SpeechRecognitionEventLike) => {
          let out = "";
          for (let i = 0; i < e.results.length; i++) out += e.results[i][0].transcript + " ";
          browserTextRef.current = out.trim();
        };
        rec.start();
        recognitionRef.current = rec;
      } catch {
        recognitionRef.current = null;
      }
    }

    try {
      const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
      const recorder = new MediaRecorder(stream);
      recorderRef.current = recorder;
      chunksRef.current = [];
      recorder.ondataavailable = (e) => chunksRef.current.push(e.data);
      recorder.onstop = async () => {
        stream.getTracks().forEach((t) => t.stop());
        recognitionRef.current?.stop();
        setRecording(false);
        const blob = new Blob(chunksRef.current, { type: recorder.mimeType || "audio/webm" });
        if (blob.size === 0) return;
        setTranscribing(true);
        try {
          const form = new FormData();
          form.append("audio", blob, "savol.webm");
          const res = await fetch(`${API_URL}/api/voice/stt?heroSlug=${slug}`, {
            method: "POST",
            body: form,
          });
          if (!res.ok) throw new Error(String(res.status));
          const data = (await res.json()) as { text: string };
          if (data.text) {
            setInput(data.text);
            return;
          }
          throw new Error("bo'sh");
        } catch {
          // Server javob bermadi — brauzer tanigan matnni qo'yamiz
          const fallback = browserTextRef.current.trim();
          if (fallback) setInput(fallback);
        } finally {
          setTranscribing(false);
        }
      };
      recorder.start();
      setRecording(true);
    } catch {
      recognitionRef.current?.stop();
      setRecording(false);
    }
  }

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: "smooth", block: "nearest" });
  }, [messages, quiz]);

  async function send(question: string) {
    const text = question.trim();
    if (!text || sending) return;
    setInput("");
    setSending(true);
    // Ajdod javobining kelgusi o'rni — avto-o'qish uchun (yuborish ketma-ket,
    // shuning uchun uzunlikni oldindan bilish xavfsiz)
    const heroIndex = messages.length + 1;
    setMessages((m) => [...m, { role: "user", text }]);
    try {
      const answer = await api<ChatAnswer>(`/api/chat/${slug}`, {
        method: "POST",
        body: JSON.stringify({ clientId: getClientId(), question: text }),
      });
      setMessages((m) => [
        ...m,
        {
          role: "hero",
          text: answer.answerUz,
          source: answer.source,
          refusal: answer.refusalType,
        },
      ]);
      // Ajdod javobni O'ZI o'qib beradi (bola allaqachon sahifa bilan
      // ishlagani uchun brauzer avto-ovozga ruxsat beradi)
      if (voice.tts) {
        speak(answer.answerUz, heroIndex);
      }
    } catch {
      setMessages((m) => [
        ...m,
        { role: "hero", text: t.connectionLost },
      ]);
    } finally {
      setSending(false);
    }
  }

  async function startQuiz() {
    const questions = await api<QuizQuestion[]>(`/api/quiz/hero/${slug}`);
    setQuiz(questions);
  }

  if (!hero) {
    return (
      <p className="py-20 text-center font-display text-sm uppercase tracking-[0.3em] text-dust">
        {t.loading}
      </p>
    );
  }

  const heroAnswers = messages.filter((m) => m.role === "hero").length - 1;
  // To'liq bo'yli kadr bazadan (V102); yo'q bo'lsa — medalyondagi yaqin kadr.
  const fullPortrait = hero.portraitUrl ? (hero.portraitFullUrl ?? hero.portraitUrl) : null;
  const years = heroYears(hero.birthYear, hero.deathYear, lang);
  const summary = parseSummary(heroSummary(hero, lang));
  const card = heroCard(hero, lang);

  return (
    <div className="space-y-6">
      <Link
        href="/qahramonlar"
        className="inline-flex items-center gap-2 font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-dust transition-colors hover:text-zar"
      >
        <span aria-hidden>←</span> {t.backToHall}
      </Link>

      <div className="grid gap-6 lg:grid-cols-[22rem_1fr] lg:items-start">
        {/*
          ===================== Ajdod kartasi (chap ustun) =====================
          Suhbatda ajdodning O'ZI o'tiradi: katta, to'liq tasvir — bola kim bilan
          gaplashayotganini ko'rib turadi. Tasvirning ustiga hech narsa
          yozilmaydi; yashagan yillari esa tasvir OSTIDA, alohida yo'lakchada
          turadi — bola suhbatdoshi qaysi davrdan ekanini darrov ko'rsin.
          Ism va tasvir manbasi avvalgidek pastdagi «Tarjimai hol» bo'limida.
        */}
        {/* Karta yopishqoq: suhbat pastga ketganda ham ajdod ko'rinib turadi.
            Qisqacha ma'lumot bilan u ekrandan baland bo'lib qolishi mumkin —
            shuning uchun kartaning O'ZI aylanadi, aks holda oxirgi qatorlar
            (vafoti, manba) kesilib qolardi. */}
        <Panel
          corners
          className="tt-no-scrollbar overflow-hidden p-0 lg:sticky lg:top-24 lg:max-h-[calc(100vh-8rem)] lg:overflow-y-auto"
        >
          {fullPortrait ? (
            <div className="relative">
              {/* eslint-disable-next-line @next/next/no-img-element -- to'liq bo'yli kadr, next/image kadrni kesadi */}
              <img
                src={fullPortrait}
                alt={portraitAlt(card.name, hero.portraitKind, lang)}
                className="block w-full"
              />
              {/* Pastdan yumshoq soya — tugma tasvir ustida o'qiladi */}
              <div className="pointer-events-none absolute inset-x-0 bottom-0 h-24 bg-[linear-gradient(to_top,rgba(10,13,19,0.9),transparent)]" />
              {heroAnswers >= 2 && !quiz && (
                <div className="tt-rise absolute inset-x-4 bottom-4">
                  <Button onClick={startQuiz} variant="zar" size="sm" className="w-full">
                    {t.microQuiz}
                  </Button>
                </div>
              )}
            </div>
          ) : (
            <div className="p-7 text-center">
              <HeroMedallion
                emoji={hero.portraitEmoji}
                portraitUrl={hero.portraitUrl}
                alt={portraitAlt(card.name, hero.portraitKind, lang)}
                size="md"
                accent={accent}
              />
              {heroAnswers >= 2 && !quiz && (
                <div className="tt-rise mt-6">
                  <Button onClick={startQuiz} variant="zar" size="sm" className="w-full">
                    {t.microQuiz}
                  </Button>
                </div>
              )}
            </div>
          )}

          {/* Yashagan yillari. Afsonaviy ajdodlarda yil noma'lum — o'shanda
              heroYears() null qaytaradi va yo'lakcha umuman chizilmaydi. */}
          {years && (
            <p className="border-t border-steel-2 px-4 py-3 text-center font-display text-[11px] font-semibold uppercase tracking-[0.24em] text-zar/90">
              {years}
            </p>
          )}

          {/* Qisqacha ma'lumot — kim bo'lgan va nima qilgan. Matn bazadan
              (heroes.summary_uz), shuning uchun to'ldirilmagan ajdodda karta
              yo'q. Manba pastda: tekshirib bo'ladigan bo'lib qolsin. */}
          {summary && (
            <div className="border-t border-steel-2 px-4 py-4">
              <dl className="space-y-3">
                {summary.rows.map((row) => (
                  <div key={row.label}>
                    <dt className="font-display text-[10px] font-semibold uppercase tracking-[0.2em] text-zar/75">
                      {row.label}
                    </dt>
                    <dd className="mt-1 text-[13px] leading-relaxed text-dust">{row.value}</dd>
                  </div>
                ))}
              </dl>
              {summary.source && (
                <p className="mt-4 border-t border-steel-2 pt-3 text-[11px] leading-relaxed text-dust/75">
                  {summary.source}
                </p>
              )}
            </div>
          )}
        </Panel>

        {/* ======================= Suhbat o'ramasi (o'ng) ======================= */}
        <div className="space-y-4">
          {/* Xabarlar pastdan yuqoriga to'planadi — suhbat o'ramasi kabi */}
          <Panel className="flex min-h-[52vh] flex-col justify-end gap-4 p-5 sm:p-6">
            {messages.map((m, i) => (
              <Message
                key={i}
                message={m}
                accent={accent}
                speaking={speakingIdx === i}
                onSpeak={voice.tts && m.role === "hero" ? () => speak(m.text, i) : undefined}
              />
            ))}

            {sending && (
              <div className="tt-reveal flex justify-start">
                <div className="flex items-center gap-1.5 rounded-md border border-zar/25 bg-steel/70 px-4 py-3">
                  <span className="typing-dot" />
                  <span className="typing-dot" />
                  <span className="typing-dot" />
                </div>
              </div>
            )}

            {quiz && (
              <div className="tt-rise mt-2 rounded-md border border-zar/35 bg-obsidian/60 p-5">
                <h2 className="flex items-center gap-2 font-display text-sm font-bold uppercase tracking-[0.16em] text-marble">
                  <Star className="h-3.5 w-3.5 text-zar" />
                  {t.microQuizTitle}
                </h2>
                <p className="mt-1.5 text-xs text-dust">{t.microQuizHint}</p>
                <div className="mt-4">
                  <QuizRunner
                    questions={quiz}
                    scope={`hero:${slug}`}
                    difficulty="MEDIUM"
                    timerSeconds={60}
                  />
                </div>
              </div>
            )}
            <div ref={bottomRef} />
          </Panel>

          {suggestions.length > 0 && (
            <div>
              <p className="mb-2.5 font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/90">
                {t.suggestionsTitle}
              </p>
              <div className="flex flex-wrap gap-2">
                {suggestions.slice(0, 6).map((s, i) => (
                  <motion.button
                    key={s}
                    whileHover={{ y: -2 }}
                    whileTap={{ scale: 0.97 }}
                    onClick={() => send(s)}
                    className="tt-reveal rounded-sm border border-steel-2 bg-steel/60 px-3.5 py-2 text-xs font-medium text-dust transition-colors hover:border-zar/50 hover:text-marble"
                    style={{ animationDelay: `${i * 60}ms` }}
                  >
                    {s}
                  </motion.button>
                ))}
              </div>
            </div>
          )}

          <form
            onSubmit={(e) => {
              e.preventDefault();
              send(input);
            }}
            className="flex gap-2.5"
          >
            <input
              value={input}
              onChange={(e) => setInput(e.target.value)}
              placeholder={
                transcribing ? t.transcribing : t.askPlaceholder(card.name)
              }
              maxLength={500}
              className="flex-1 rounded-md border border-zar/25 bg-steel/70 px-5 py-3.5 text-parchment placeholder:text-dust/80 outline-none transition-colors focus:border-zar/70"
            />
            {voice.stt && (
              <button
                type="button"
                onClick={toggleRecording}
                disabled={transcribing}
                aria-label={recording ? t.stopRecording : t.askByVoice}
                aria-pressed={recording}
                className={`grid w-12 shrink-0 place-items-center rounded-md border transition-colors ${
                  recording
                    ? "animate-pulse border-qon/70 bg-qon/15 text-[#e8a99f]"
                    : transcribing
                      ? "border-steel-2 bg-steel/50 text-dust/60"
                      : "border-zar/40 bg-steel/70 text-zar hover:border-zar hover:text-zar-bright"
                }`}
              >
                <svg viewBox="0 0 24 24" className="h-5 w-5" fill="none" stroke="currentColor" strokeWidth="1.6">
                  <rect x="9" y="3.5" width="6" height="11" rx="3" />
                  <path d="M5.5 11.5 a6.5 6.5 0 0 0 13 0 M12 18 v2.5 M9 20.5 h6" strokeLinecap="round" />
                </svg>
              </button>
            )}
            <Button type="submit" variant="zar" size="md" disabled={sending || !input.trim()}>
              {t.send}
            </Button>
          </form>

          {/* Bolalar xavfsizligi eslatmasi — kiritish maydonining yonida turadi */}
          <p className="text-[11px] leading-relaxed text-dust/70">{t.safety}</p>
        </div>
      </div>

      {/* ======================= Tarjimai hol ======================= */}
      <section id="tarjimai-hol" className="scroll-mt-24 space-y-5 pt-6">
        <SectionTitle
          overline={t.bioOverline}
          title={card.name}
          subtitle={card.bio}
        />
        {/* Yillar va tasvir manbasi — suhbat panelidan shu yerga ko'chdi:
            halollik qoidasi saqlanadi, suhbatda esa faqat ajdodning o'zi */}
        <div className="space-y-2 text-center">
          {years && <Badge tone="dust">{years}</Badge>}
          <PortraitCaption
            kind={hero.portraitKind}
            caption={portraitCaption(hero, lang)}
          />
        </div>

        {facts.length > 0 ? (
          <div className="grid gap-5 sm:grid-cols-2">
            {facts.map((c) => (
              <article key={c.id} className="tt-parchment-surface p-5 sm:p-6">
                {/* Matn tilga qarab tanlanadi; ruschasi bo'sh bo'lsa — asl o'zbekcha */}
                <h3 className="font-display text-base font-bold uppercase leading-snug tracking-[0.05em] text-[#3a2f14]">
                  {factCard(c, lang).topic}
                </h3>
                <p className="mt-2.5 text-sm leading-relaxed text-[#2b2415]">{factCard(c, lang).fact}</p>
                {/* Batafsil matn bo'lsa — shu yerda ochiladi (manba ham ichida) */}
                {factCard(c, lang).detail ? (
                  <div className="mt-3 border-t border-[#7a5f1c]/30 pt-1">
                    <FactDetail detailUz={factCard(c, lang).detail!} source={c.source} />
                  </div>
                ) : (
                  /* Manba — bu yerda QOLADI: tarjimai hol tekshirib bo'ladigan
                     bo'lishi kerak, aks holda u shunchaki matnga aylanadi. */
                  <p className="mt-4 border-t border-[#7a5f1c]/30 pt-3 text-xs text-[#5c4a1e]">
                    {c.source}
                  </p>
                )}
              </article>
            ))}
          </div>
        ) : (
          <Panel tone="hollow" className="p-6 text-center">
            <p className="text-sm text-dust">{t.noFacts}</p>
          </Panel>
        )}

        <p className="text-[11px] leading-relaxed text-dust/80">{t.bioNote}</p>
      </section>
    </div>
  );
}

/** Ovoz tugmasi — ajdod javobini o'qib beradi (ovoz yoqilgan ajdodlarda). */
function SpeakButton({ speaking, onSpeak, dark }: { speaking: boolean; onSpeak: () => void; dark?: boolean }) {
  const t = useT(TXT);
  return (
    <button
      type="button"
      onClick={onSpeak}
      aria-label={speaking ? t.stopVoice : t.readAloud}
      aria-pressed={speaking}
      className={`mt-2.5 inline-flex items-center gap-1.5 rounded-sm border px-2 py-1 text-[10px] font-semibold uppercase tracking-[0.14em] transition-colors ${
        speaking
          ? "border-zar bg-zar/20 text-zar-bright"
          : dark
            ? "border-zar/40 text-zar hover:border-zar hover:text-zar-bright"
            : "border-[#7a5f1c]/45 text-[#5c4a1e] hover:border-[#7a5f1c] hover:text-[#3a2f14]"
      }`}
    >
      <svg viewBox="0 0 24 24" className="h-3.5 w-3.5" fill="none" stroke="currentColor" strokeWidth="1.7">
        <path d="M4 9.5 h3.5 L12 5.5 v13 L7.5 14.5 H4 Z" strokeLinejoin="round" />
        {speaking ? (
          <path d="M16 9 v6 M19 7.5 v9" strokeLinecap="round" />
        ) : (
          <path d="M15.5 9.5 a3.6 3.6 0 0 1 0 5 M17.8 7.5 a7 7 0 0 1 0 9" strokeLinecap="round" />
        )}
      </svg>
      {speaking ? t.stop : t.listen}
    </button>
  );
}

/** Bitta xabar: ajdod javobi — pergamentda, rad javobi — toshga o'yilgan yozuvdek. */
function Message({
  message,
  accent,
  speaking = false,
  onSpeak,
}: {
  message: Message;
  accent: MedallionAccent;
  speaking?: boolean;
  onSpeak?: () => void;
}) {
  if (message.role === "user") {
    return (
      <div className="tt-reveal flex justify-end">
        <div className="max-w-[85%] rounded-md rounded-br-sm border border-zar/30 bg-[linear-gradient(160deg,#262f42,#161c28)] px-4 py-3 text-sm leading-relaxed text-parchment">
          {message.text}
        </div>
      </div>
    );
  }

  // Rad javobi — tarix sukut saqlaganda yoki savol mavzudan tashqarida
  if (message.refusal && message.refusal !== "NONE") {
    return (
      <div className="tt-reveal flex justify-start">
        <div className="relative max-w-[88%] rounded-md border border-dashed border-zar/40 bg-obsidian/50 px-5 py-4 text-center">
          <CornerFrame />
          <p className="font-quote text-lg italic leading-relaxed text-zar/85">{message.text}</p>
          {onSpeak && <SpeakButton speaking={speaking} onSpeak={onSpeak} dark />}
        </div>
      </div>
    );
  }

  return (
    <div className="tt-reveal flex justify-start">
      <div className="tt-parchment-surface max-w-[88%] rounded-bl-sm px-5 py-4">
        <p className="text-sm leading-relaxed">{message.text}</p>
        {onSpeak && <SpeakButton speaking={speaking} onSpeak={onSpeak} />}
        {message.source && (
          <p className="mt-3 flex items-start gap-2 border-t border-[#7a5f1c]/30 pt-2.5 text-xs text-[#5c4a1e]">
            {/* Surg'uch muhr — manba belgisi */}
            <span aria-hidden className={ACCENT_TEXT[accent]}>
              <svg viewBox="0 0 24 24" className="mt-px h-3.5 w-3.5" fill="none" stroke="currentColor" strokeWidth="1.4">
                <circle cx="12" cy="12" r="9" />
                <path d="M12 5.5 L13.8 10 L18 12 L13.8 14 L12 18.5 L10.2 14 L6 12 L10.2 10 Z" strokeOpacity="0.7" />
              </svg>
            </span>
            <span>{message.source}</span>
          </p>
        )}
      </div>
    </div>
  );
}
