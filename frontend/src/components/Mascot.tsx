"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { api, getClientId, MascotMood, Profile } from "@/lib/api";
import { useT } from "@/lib/lang";

/**
 * Ilvirs — loyiha maskoti (Duolingo uslubida).
 * Odatda ekran pastida yashirinib turadi (faqat quloqlari ko'rinadi),
 * aytadigan gapi bo'lganda prujina bilan sakrab chiqadi: o'quvchi
 * shug'ullansa xursand, shug'ullanmasa sog'inadi, xatosiz test va
 * seriyani nishonlaydi, natija past bo'lsa dalda beradi.
 *
 * QIYOFA: «Parad libosi» — kumush rangli yuz, quloqlarga ko'tarilgan yoqali
 * to'q ko'k chapon va peshonada zar tiara. Sirg'a yo'q. Xulq-atvor,
 * taymerlar va kayfiyatlar o'zgarmagan — faqat tasvir yangilangan.
 */

const TXT = {
  ru: {
    idle: {
      happy: "Сегодня ты занимался — молодец! 🐾",
      sad: "Я соскучился... Позанимаемся сегодня вместе?",
      celebrate: "Отлично! Я тобой горжусь!",
    } as Record<MascotMood, string>,
    streak: (days: number) => `Твоя серия — ${days} дн. Продолжим и сегодня? 🔥`,
    closeMessage: "Закрыть сообщение",
    mascotAria: "Илвирс — маскот проекта",
  },
  uz: {
    idle: {
      happy: "Bugun shug'ullanding — barakalla! 🐾",
      sad: "Seni sog'indim... Bugun birga o'qiymizmi?",
      celebrate: "Ajoyib! Sen bilan faxrlanaman!",
    } as Record<MascotMood, string>,
    streak: (days: number) => `Seriyang ${days} kun bo'ldi — bugun ham davom ettiramizmi? 🔥`,
    closeMessage: "Xabarni yopish",
    mascotAria: "Ilvirs — loyiha maskoti",
  },
  uk: {
    idle: {
      happy: "Сьогодні ти займався — молодець! 🐾",
      sad: "Я скучив... Позаймаємося сьогодні разом?",
      celebrate: "Чудово! Я тобою пишаюся!",
    } as Record<MascotMood, string>,
    streak: (days: number) => `Твоя серія — ${days} дн. Продовжимо й сьогодні? 🔥`,
    closeMessage: "Закрити повідомлення",
    mascotAria: "Ілвірс — маскот проєкту",
  },
};

export default function Mascot() {
  const t = useT(TXT);
  const [mood, setMood] = useState<MascotMood>("happy");
  const [message, setMessage] = useState<string | null>(null);
  const [out, setOut] = useState(false);
  const [popKey, setPopKey] = useState(0);
  const [ready, setReady] = useState(false);
  const duckTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const baseMood = useRef<MascotMood>("happy");
  /*
    Salomlashuv effekti bir marta, sahifa ochilganda ishlaydi. Agar `t` uni
    bog'lasa, til almashtirilgan zahoti maskot yana sakrab chiqib salomlashardi —
    shuning uchun matnlar havolasi ref orqali beriladi.
  */
  const tRef = useRef(t);
  useEffect(() => {
    tRef.current = t;
  }, [t]);

  /** Duo uslubida sakrab chiqadi, gapiradi va yana yashirinadi. */
  const popOut = useCallback((newMood: MascotMood, text: string, forSeconds = 7) => {
    setMood(newMood);
    setMessage(text);
    setOut(true);
    setPopKey((k) => k + 1);
    if (duckTimer.current) clearTimeout(duckTimer.current);
    duckTimer.current = setTimeout(() => {
      setOut(false);
      setMessage(null);
      setMood(baseMood.current);
    }, forSeconds * 1000);
  }, []);

  useEffect(() => {
    let greetTimer: ReturnType<typeof setTimeout> | null = null;
    api<Profile>(`/api/profile/${getClientId()}`)
      .then((p) => {
        baseMood.current = p.activeToday ? "happy" : "sad";
        setMood(baseMood.current);
        setReady(true);
        // Sahifa ochilgach biroz kutib, salomlashib chiqadi
        greetTimer = setTimeout(() => {
          const txt = tRef.current;
          if (p.activeToday) {
            popOut("happy", txt.idle.happy, 5);
          } else {
            popOut(
              "sad",
              p.streakDays > 0 ? txt.streak(p.streakDays) : txt.idle.sad,
              7
            );
          }
        }, 1200);
      })
      .catch(() => setReady(false));

    const handler = (e: Event) => {
      const detail = (e as CustomEvent<{ mood: MascotMood; message: string }>).detail;
      if (!detail) return;
      if (detail.mood === "celebrate" || detail.mood === "happy") {
        baseMood.current = "happy"; // faollik bo'ldi — endi xursand
      }
      popOut(detail.mood, detail.message, 8);
    };
    window.addEventListener("tirik-mascot", handler);
    return () => {
      window.removeEventListener("tirik-mascot", handler);
      if (greetTimer) clearTimeout(greetTimer);
      if (duckTimer.current) clearTimeout(duckTimer.current);
    };
  }, [popOut]);

  if (!ready) return null;

  return (
    <div className="pointer-events-none fixed bottom-0 right-3 z-30 flex flex-col items-end sm:right-6">
      {out && message && (
        // Pufakcha kontent ustida turadi — shuning uchun unga bosib yopish mumkin
        <button
          onClick={() => {
            setOut(false);
            setMessage(null);
          }}
          aria-label={t.closeMessage}
          className="pop-in tt-steel-surface pointer-events-auto mb-1 max-w-[13rem] rounded-md rounded-br-sm border border-zar/40 px-3.5 py-2.5 text-left text-xs font-medium text-parchment shadow-[0_16px_40px_-16px_rgba(0,0,0,0.9),inset_0_1px_0_rgba(243,217,139,0.14)] backdrop-blur sm:max-w-[15rem] sm:px-4 sm:text-sm"
        >
          {message}
        </button>
      )}
      {/* Tashqi qatlam — Duo uslubidagi sakrash/yashirinish; ichki — kayfiyat harakati */}
      <div
        key={popKey + (out ? "-out" : "-hid")}
        className={out ? "mascot-pop" : "mascot-duck"}
      >
        <button
          aria-label={t.mascotAria}
          onClick={() => (out ? setOut(false) : popOut(baseMood.current, t.idle[baseMood.current]))}
          className={`pointer-events-auto select-none drop-shadow-lg transition-transform hover:scale-105 active:scale-95 ${
            out ? (mood === "celebrate" ? "mascot-bounce" : mood === "sad" ? "mascot-droop" : "") : ""
          }`}
        >
          <MascotArt mood={mood} className="h-16 w-16 sm:h-24 sm:w-24" />
        </button>
      </div>
    </div>
  );
}

// «TEMIR VA ZAR» tokenlari — globals.css dagi qiymatlar bilan bir xil
const OBSIDIAN = "#0a0d13";
/**
 * Chapon uchun steel olinadi, obsidian emas: sahifa foni ham obsidian, shu
 * sababli obsidian chapon fonda butunlay ko'rinmay ketadi va maskot «boshsiz
 * tana» emas, «tanasiz bosh» bo'lib qoladi. Steel — o'sha to'q ko'k, lekin
 * fondan ajralib turadi.
 */
const CHAPAN = "#1a2130";
const ZAR = "#c8a247";
const ZAR_BRIGHT = "#f3d98b";
const PARCHMENT = "#ede2c8";
/**
 * Teri va quloq — KUMUSH: sovuq, ko'kish tovlanadigan och kulrang.
 * Ranglar Character.tsx dagi kumush chizig'i bilan bir xil, ya'ni loyiha
 * palitrasidan chiqmaydi. Kumush maskot + zar bezaklar = «TEMIR VA ZAR».
 */
const SKIN = "#c5cedb";
const EAR = "#e2e8f1";
const FRECKLE = "#8b96a6";
const NOSE = "#7c8797";
const BLUSH = "#e9a3b0";
const INK = "#3c4657";

/** Ромб — ko'krakdagi zar naqsh. */
function Rhombus({ x, y, r }: { x: number; y: number; r: number }) {
  return <path d={`M${x} ${y - r} L${x + r} ${y} L${x} ${y + r} L${x - r} ${y} Z`} fill={ZAR} />;
}

/**
 * Maskot qiyofasi — «Parad libosi v4 · Ayol (v7)», yoqasi quloqlarga
 * ko'tarilgan variant. Sof SVG: rastr ham, filtr ham yo'q.
 *
 * Quloqlar ataylab eng tepada (y ≈ 22…44): maskot ekran pastida
 * yashiringanda (`mascot-duck` — translateY 74%) aynan ular ko'rinib turadi.
 *
 * Kayfiyat bazaviy yuz ustidagi eng kichik o'zgarish bilan beriladi:
 * sad — og'iz pastga egiladi, qosh tushadi va yosh tomadi; celebrate —
 * atrofda uchqunlar. Yuz qaytadan chizilmaydi.
 */
function MascotArt({ mood, className }: { mood: MascotMood; className?: string }) {
  return (
    <svg viewBox="0 0 120 120" className={className} aria-hidden>
      <defs>
        {/* Chapon doira siluetidan chiqib ketmasligi uchun */}
        <clipPath id="tt-mascot-body">
          <circle cx="60" cy="76" r="43" />
        </clipPath>
      </defs>

      {/* Quloqlar — boshdan oldin, shunda bosh ularni qisman yopadi */}
      <circle cx="35" cy="31" r="10" fill={EAR} />
      <circle cx="85" cy="31" r="10" fill={EAR} />

      {/* Parad chaponi — tanadagi doira */}
      <circle cx="60" cy="76" r="43" fill={CHAPAN} />

      {/* Yuz: bosh doirasi + yoqagacha tushgan V shaklidagi teri */}
      <circle cx="60" cy="56" r="32" fill={SKIN} />
      <path d="M19 64 L60 101 L101 64 Z" fill={SKIN} />

      {/* Yoqa: V ni ikki tomondan to'q ko'k bilan yopadi */}
      <g clipPath="url(#tt-mascot-body)">
        <path d="M19 64 L60 101 L60 126 L2 126 L2 64 Z" fill={CHAPAN} />
        <path d="M101 64 L60 101 L60 126 L118 126 L118 64 Z" fill={CHAPAN} />

        {/* Yoqa qirrasi: zar chiziq va uning ichida yupqa parchment yorug'i */}
        <path d="M19 64 L60 101 L101 64" fill="none" stroke={ZAR} strokeWidth="2.6" strokeLinejoin="round" />
        <path
          d="M24 65.5 L60 96 L96 65.5"
          fill="none"
          stroke={PARCHMENT}
          strokeOpacity="0.7"
          strokeWidth="0.9"
          strokeLinejoin="round"
        />
        {/* Markazdagi zar planka */}
        <path d="M60 101 V126" stroke={ZAR} strokeWidth="2.2" />

        {/* Ko'krakdagi zar rombchalar — har tomonda uchta, kichrayib boradi */}
        <Rhombus x={34} y={86} r={4.3} />
        <Rhombus x={45} y={99} r={2.8} />
        <Rhombus x={86} y={86} r={4.3} />
        <Rhombus x={75} y={99} r={2.8} />
      </g>

      {/* Peshonadagi zar tiara: yoy va uning ustida uchta nuqta */}
      <path d="M46 42 Q60 33 74 42" fill="none" stroke={ZAR} strokeWidth="3.6" strokeLinecap="round" />
      <circle cx="53" cy="30" r="2.1" fill={ZAR} />
      <circle cx="60" cy="27" r="2.8" fill={ZAR} />
      <circle cx="67" cy="30" r="2.1" fill={ZAR} />

      {/* Sepkillar */}
      <circle cx="41" cy="60" r="1.9" fill={FRECKLE} />
      <circle cx="75.5" cy="58" r="1.6" fill={FRECKLE} />

      {/* Yonoqlar */}
      <circle cx="42" cy="69" r="4.4" fill={BLUSH} />
      <circle cx="78" cy="69" r="4.4" fill={BLUSH} />

      {/* Ko'zlar — blikli */}
      <circle cx="49" cy="58" r="4.6" fill={OBSIDIAN} />
      <circle cx="50.8" cy="56.2" r="1.7" fill="#fff" />
      <circle cx="47.4" cy="60" r="0.9" fill="#fff" fillOpacity="0.7" />
      <circle cx="71" cy="58" r="4.6" fill={OBSIDIAN} />
      <circle cx="72.8" cy="56.2" r="1.7" fill="#fff" />
      <circle cx="69.4" cy="60" r="0.9" fill="#fff" fillOpacity="0.7" />

      {/* Burun */}
      <circle cx="60" cy="66" r="2.6" fill={NOSE} />

      {/* Og'iz: xursandda tabassum, xafada dugasi pastga */}
      {mood === "sad" ? (
        <path d="M54 76 Q60 71 66 76" fill="none" stroke={INK} strokeWidth="2.2" strokeLinecap="round" />
      ) : (
        <path d="M53 73 Q60 78.6 67 73" fill="none" stroke={INK} strokeWidth="2.2" strokeLinecap="round" />
      )}

      {/* Xafalik: tushgan qoshlar va oqayotgan yosh */}
      {mood === "sad" && (
        <>
          <path d="M44.5 51 Q49 48.6 53.5 51" fill="none" stroke={FRECKLE} strokeWidth="1.8" strokeLinecap="round" />
          <path d="M66.5 51 Q71 48.6 75.5 51" fill="none" stroke={FRECKLE} strokeWidth="1.8" strokeLinecap="round" />
          <path
            className="mascot-tear"
            d="M45 63 C45 63 42 67.5 42 69.6 a3 3 0 0 0 6 0 C48 67.5 45 63 45 63"
            fill="#7FB6E8"
          />
        </>
      )}

      {/* Bayram uchqunlari */}
      {mood === "celebrate" && (
        <>
          <text x="6" y="22" fontSize="14" className="mascot-spark" fill={ZAR_BRIGHT}>
            ✨
          </text>
          <text x="98" y="18" fontSize="12" className="mascot-spark" fill={ZAR_BRIGHT} style={{ animationDelay: "0.3s" }}>
            ⭐
          </text>
          <text x="4" y="106" fontSize="12" className="mascot-spark" fill={ZAR_BRIGHT} style={{ animationDelay: "0.6s" }}>
            ✨
          </text>
        </>
      )}
    </svg>
  );
}
