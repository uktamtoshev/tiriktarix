"use client";

import { EquipSlot, Gender } from "@/lib/api";
import { ArchetypeCode, defaultArchetype } from "@/lib/archetypes";
import { ITEMS } from "./Character";
import { useT } from "@/lib/lang";

/**
 * Real proporsiyali qahramon silueti — foto-referens asosida: bo'y 7.5 bosh,
 * beligacha bog'ichli tunika, tik yoqa, yumshoq charm kovushlar. «Qurolxona»da
 * kiyintiriladigan qahramon sifatida chibi Character o'rniga ko'rsatiladi.
 *
 * Har TIP (arxetip) o'z ko'rinishiga ega: libos rangi, standart bosh kiyim,
 * soch turmagi, soqol — hammasi REAL_LOOKS lug'atida. Gavda esa ikkita:
 * erkak (soqol, kalta tunika) va ayol (uzun ko'ylak-tunika, lozim). Skelet —
 * yelka, kaft, bel, bosh markazi — HAMMA variantlarda bir xil nuqtalarda,
 * shuning uchun jihoz akslantirishlari tipga bog'liq emas.
 *
 * Muhim: jihozlar QAYTA CHIZILMAYDI. Ular Character.tsx dagi ITEMS dan
 * olinadi va har uya o'zining affin akslantirishi bilan yangi tayanch
 * nuqtalarga o'tkaziladi:
 *   chibi bosh (120, 74, r≈52)   → (120, 27, r≈17)
 *   chibi o'ng kaft (58, 210)    → (89.6, 169)
 *   chibi chap bilak (188, 192)  → (152, 140)
 *   chibi gavda (84..156 × 138..222) → ko'krak (91..149 × 68..134)
 * Shunda «Qurolxona» katalogidagi har bir jihoz istalgan tipga hech qanday
 * moslashtirishsiz kiyiladi. Standart bosh kiyim (chibi DefaultCap kabi)
 * faqat HEAD uyasi bo'sh bo'lganda chiziladi.
 *
 * Vertikal masshtab: 1 bosh (U) = 38px, oyoq tagi y=296, ya'ni y = 296 − z·38.
 */

const LEATHER = "#4a3527";
const SKIN = "#dcb18c";
const SKIN_SHADE = "#c39a76";
const HAIR = "#2e2721";
const HAIR_LINE = "#1c1611";
const BEARD = "#3c332b";
const ZAR = "#c8a247";
const ZAR_BRIGHT = "#f3d98b";

/** Tashqi kontur uchun zar yorug'i — Character.tsx dagi uslub. */
const RIM = { fill: "none", stroke: ZAR, strokeOpacity: 0.35, strokeWidth: 1.4 } as const;

/** #rrggbb rangni f marta qoraytirish/yoritish (soya va qirralar uchun). */
function shade(hex: string, f: number): string {
  const n = parseInt(hex.slice(1), 16);
  const ch = (v: number) => Math.max(0, Math.min(255, Math.round(v * f)));
  const r = ch(n >> 16), g = ch((n >> 8) & 255), b = ch(n & 255);
  return `#${((r << 16) | (g << 8) | b).toString(16).padStart(6, "0")}`;
}

type Hairdo = "back" | "orim-yigit" | "orim" | "tugun" | "uzun";
type Cap = "peshonaband" | "telpak" | "salla" | "sarkarda-qalpoq" | "tillakosh" | "olima-qalpoq" | null;

type RealLook = {
  female: boolean;
  /** Tunika/ko'ylak rangi — chibi LOOKS bilan bir xil, tip darhol taniladi. */
  cloth: string;
  /** Kichik detallar rangi: peshonaband toshi, pat, yulduz. */
  accent: string;
  hair: Hairdo;
  beard?: "full" | "short";
  cap: Cap;
  /** Etakdagi zar hoshiya — saroy liboslari belgisi. */
  goldHem?: boolean;
};

const REAL_LOOKS: Record<ArchetypeCode, RealLook> = {
  jangchi: { female: false, cloth: "#3b4655", accent: "#9b2e22", hair: "back", beard: "full", cap: "peshonaband" },
  sarkarda: { female: false, cloth: "#2b3040", accent: ZAR_BRIGHT, hair: "back", beard: "full", cap: "sarkarda-qalpoq" },
  kochmanchi: { female: false, cloth: "#6b4c2e", accent: "#d2a15c", hair: "orim-yigit", beard: "full", cap: "telpak" },
  amirzoda: { female: false, cloth: "#23686d", accent: ZAR, hair: "back", beard: "short", cap: "salla", goldHem: true },
  "oddiy-yigit": { female: false, cloth: "#8d8271", accent: ZAR, hair: "back", beard: "full", cap: null },
  "jangchi-qiz": { female: true, cloth: "#3b4655", accent: "#9b2e22", hair: "orim", cap: "peshonaband" },
  "kochmanchi-qiz": { female: true, cloth: "#6b4c2e", accent: "#d2a15c", hair: "orim", cap: "telpak" },
  malika: { female: true, cloth: "#5a2a4a", accent: ZAR_BRIGHT, hair: "tugun", cap: "tillakosh", goldHem: true },
  olima: { female: true, cloth: "#2b3566", accent: "#cdd8ef", hair: "tugun", cap: "olima-qalpoq" },
  "oddiy-qiz": { female: true, cloth: "#8d8271", accent: ZAR, hair: "uzun", cap: null },
};

type Equipped = Partial<Record<EquipSlot, string>>;

/**
 * Uya → chibi koordinatalardan siluet koordinatalariga akslantirish.
 * Har biri translate(ax − cx·s, ay − cy·s) scale(s): (cx, cy) — chibi
 * tayanch, (ax, ay) — bu figuradagi tayanch.
 */
const SLOT_TRANSFORM: Record<EquipSlot, string> = {
  // (120, 74) → (120, 27), s = 0.33 — dubulg'a gumbazi bosh tepasidan oshadi
  HEAD: "translate(80.4 2.58) scale(0.33)",
  // (120, 138) → (120, 68), sx 0.82 / sy 0.80 — sovut ko'krakdan songacha
  BODY: "translate(21.6 -42.4) scale(0.82 0.8)",
  // (58, 210) → (89.6, 169), s = 0.95 — qurol kaftda qoladi
  WEAPON: "translate(34.5 -30.5) scale(0.95)",
  // (188, 192) → (152, 140), s = 0.6 — qalqon chap bilakda
  SHIELD: "translate(39.2 24.8) scale(0.6)",
  // (120, 205) → (120, 116), sx 0.75 / sy 0.7 — kamar belda, tumor ko'krakda
  ACCESSORY: "translate(30 -27.5) scale(0.75 0.7)",
};

/** Tug' istisno: bayroq boshdan baland, tayoq yerga tegishi kerak. */
const TUG_TRANSFORM = "translate(-37.9 -38.1) scale(1.1 1.23)";

/** Erkak tunikasi: son o'rtasigacha, yenglari bilan bitta siluet. */
const TUNIC_MALE = `M109 62
  Q97 64 87.5 72
  Q81 95 80.5 118
  Q81.5 140 84 158
  L95 159.5
  Q92.5 130 91 96
  Q94 108 94.5 117
  Q91.5 152 89.6 186
  Q120 191 150.4 186
  Q148.5 152 145.5 117
  Q146 108 149 96
  Q147.5 130 145 159.5
  L156 158
  Q158.5 140 159.5 118
  Q159 95 152.5 72
  Q143 64 131 62
  Q120 59.5 109 62 Z`;

/** Ayol ko'ylak-tunikasi: tor yelka, ingichka bel, tizzadan pastga A-etak. */
const TUNIC_FEMALE = `M109 62
  Q99 64 90 72
  Q83 95 82 118
  Q83 140 84.5 158
  L95 159.5
  Q93.5 130 92.5 96
  Q95.5 108 96 117
  Q89 180 86 232
  Q120 238 154 232
  Q151 180 144 117
  Q144.5 108 147.5 96
  Q146.5 130 145 159.5
  L155.5 158
  Q157 140 158 118
  Q157 95 150 72
  Q141 64 131 62
  Q120 59.5 109 62 Z`;

/** Tipning standart bosh kiyimi — real bosh (120, 27, rx 13.5) o'lchamida. */
function RealCap({ cap, accent, dark }: { cap: Cap; accent: string; dark: string }) {
  switch (cap) {
    case "peshonaband":
      return (
        <g>
          <path d="M106.3 14.5 Q120 10.8 133.7 14.5 L133.7 20.3 Q120 16.5 106.3 20.3 Z" fill={dark} />
          <path d="M106.3 14.5 Q120 10.8 133.7 14.5" fill="none" stroke={accent} strokeWidth="1.6" />
          <path d="M120 12.6 l2.6 3.4 l-2.6 3.4 l-2.6 -3.4 Z" fill={accent} />
        </g>
      );
    case "telpak":
      return (
        <g>
          <path d="M104.6 21.5 Q103.8 1.5 120 1 Q136.2 1.5 135.4 21.5 Q128 16.5 120 16.5 Q112 16.5 104.6 21.5 Z" fill="#4a3524" />
          <path d="M103.8 20.5 Q120 14 136.2 20.5 L136.2 26.8 Q120 20.2 103.8 26.8 Z" fill="#7d5c38" />
          {[108, 114, 120, 126, 132].map((x) => (
            <path key={x} d={`M${x} ${x === 120 ? 17.4 : 18.6} q0.6 3.4 0 6`} fill="none" stroke="#5e4527" strokeWidth="1.1" />
          ))}
          <path d="M103.8 20.5 Q120 14 136.2 20.5" fill="none" stroke={accent} strokeOpacity="0.8" strokeWidth="1.3" />
        </g>
      );
    case "salla":
      return (
        <g>
          <path d="M104.4 19.5 Q103 2.5 120 2 Q137 2.5 135.6 19.5 Q120 25.5 104.4 19.5 Z" fill="#e8e2d2" />
          <path d="M107 9.5 q13 -5.5 26 0" fill="none" stroke="#cfc7b2" strokeWidth="2.4" />
          <path d="M105.5 14.5 q14.5 -6 29 0" fill="none" stroke="#cfc7b2" strokeWidth="2.4" />
          <path d="M120 4.2 l2.2 3 l-2.2 3 l-2.2 -3 Z" fill={accent} />
          <path d="M104.4 19.5 Q120 25.5 135.6 19.5" fill="none" stroke={accent} strokeOpacity="0.5" strokeWidth="1.2" />
        </g>
      );
    case "sarkarda-qalpoq":
      // Baland qora qalpoq: zar halqa va patli belgi — chibi'dagi kabi
      return (
        <g>
          <path d="M107.5 17 Q108 0.5 120 0.5 Q132 0.5 132.5 17 Z" fill="#1b2230" />
          <path d="M107.5 17 Q108 0.5 120 0.5 Q132 0.5 132.5 17" fill="none" stroke={accent} strokeWidth="1.2" />
          <path d="M105.2 15.8 H134.8 v5.6 H105.2 Z" fill={ZAR} />
          <path d="M105.2 15.8 H134.8 v5.6 H105.2 Z" fill="none" stroke={accent} strokeWidth="1" />
          <path d="M126.5 1.5 C131 -3.5 138 -2.5 140.5 2 C135 1 130 4 128.3 8 Z" fill="#9b2e22" />
          <path d="M126.5 1.5 C131 -3.5 138 -2.5 140.5 2" fill="none" stroke={accent} strokeWidth="1" />
        </g>
      );
    case "tillakosh":
      return (
        <g>
          <path d="M106.8 15.6 Q120 8.8 133.2 15.6 L133.2 19.8 Q120 12.8 106.8 19.8 Z" fill={ZAR} />
          <path d="M106.8 15.6 Q120 8.8 133.2 15.6" fill="none" stroke={ZAR_BRIGHT} strokeWidth="1.6" />
          {[[112.5, 14.9, 1.6], [120, 12.1, 2.1], [127.5, 14.9, 1.6]].map(([cx, cy, r]) => (
            <circle key={cx} cx={cx} cy={cy} r={r} fill="#9b2e22" stroke={ZAR_BRIGHT} strokeWidth="0.8" />
          ))}
        </g>
      );
    case "olima-qalpoq":
      return (
        <g>
          <path d="M106.2 17.5 Q106 3 120 2.6 Q134 3 133.8 17.5 Z" fill="#1e2647" />
          <path d="M106.2 17.5 Q106 3 120 2.6 Q134 3 133.8 17.5" fill="none" stroke={accent} strokeOpacity="0.7" strokeWidth="1.2" />
          <path d="M104.8 16.8 H135.2 v4.6 H104.8 Z" fill="#2b3566" />
          <path d="M120 5 l1.7 3.4 l3.4 1.7 l-3.4 1.7 l-1.7 3.4 l-1.7 -3.4 l-3.4 -1.7 l3.4 -1.7 Z" fill={accent} />
        </g>
      );
    default:
      return null;
  }
}

const TXT = {
  ru: { yourHero: "Твой герой" },
  uz: { yourHero: "Sening qahramoning" },
  uk: { yourHero: "Твій герой" },
};

export default function WarriorFigure({
  gender = "MALE",
  archetype,
  equipped = {},
  size = 200,
  className = "",
}: {
  gender?: Gender | null;
  /** Tip. Berilmasa — jins bo'yicha oddiy tip (eski profillar uchun). */
  archetype?: string | null;
  equipped?: Equipped;
  size?: number;
  className?: string;
}) {
  const t = useT(TXT);
  const code = (archetype && archetype in REAL_LOOKS
    ? archetype
    : defaultArchetype(gender)) as ArchetypeCode;
  const look = REAL_LOOKS[code];
  const female = look.female;

  const cloth = look.cloth;
  const dark = shade(cloth, 0.7);
  const edge = shade(cloth, 0.52);
  const trousers = shade(cloth, 1.14);
  const tunic = female ? TUNIC_FEMALE : TUNIC_MALE;

  const item = (slot: EquipSlot) => {
    const itemCode = equipped[slot];
    const draw = itemCode ? ITEMS[itemCode] : undefined;
    if (!draw) return null;
    const t = itemCode === "tug" ? TUG_TRANSFORM : SLOT_TRANSFORM[slot];
    return <g transform={t}>{draw(1)}</g>;
  };

  return (
    <svg
      viewBox="0 0 240 320"
      width={size}
      height={(size * 320) / 240}
      className={className}
      role="img"
      aria-label={t.yourHero}
    >
      <defs>
        <radialGradient id="tt-war-shadow">
          <stop offset="0%" stopColor="#000" stopOpacity="0.55" />
          <stop offset="100%" stopColor="#000" stopOpacity="0" />
        </radialGradient>
      </defs>

      {/* Yerdagi yumshoq soya */}
      <ellipse cx="120" cy="293" rx="58" ry="12" fill="url(#tt-war-shadow)" />

      {/* Tug' — figuraning orqasida */}
      {equipped.ACCESSORY === "tug" && item("ACCESSORY")}

      {/* Ishton / lozim: etak ostidan ko'rinadigan qismi */}
      {female ? (
        <>
          <path d="M100 230 L115 230 L113.5 287 L101.5 287 Z" fill={trousers} />
          <path d="M125 230 L140 230 L138.5 287 L126.5 287 Z" fill={trousers} />
        </>
      ) : (
        <>
          <path d="M95.8 185 L116.6 185 L114.2 287 L99.4 287 Z" fill={trousers} />
          <path d="M123.4 185 L144.2 185 L140.6 287 L125.8 287 Z" fill={trousers} />
          <path d="M107 200 Q106 244 106.6 282" fill="none" stroke={dark} strokeOpacity="0.3" strokeWidth="1.5" />
          <path d="M133 200 Q134 244 133.4 282" fill="none" stroke={dark} strokeOpacity="0.3" strokeWidth="1.5" />
        </>
      )}

      {/* Yumshoq charm kovushlar */}
      <path d="M93.6 296 Q92.8 286.5 99 284.6 L113.6 284.6 Q116.8 287.5 116.2 296 Z" fill={LEATHER} />
      <path d="M123.8 296 Q123.2 287.5 126.4 284.6 L141 284.6 Q147.2 286.5 146.4 296 Z" fill={LEATHER} />
      <path d="M95.4 291 Q104 288.6 114.8 290.4" fill="none" stroke="#5d4634" strokeOpacity="0.6" strokeWidth="1.2" />
      <path d="M125.2 290.4 Q136 288.6 144.6 291" fill="none" stroke="#5d4634" strokeOpacity="0.6" strokeWidth="1.2" />

      {/* Tunika / ko'ylak-tunika */}
      <path d={tunic} fill={cloth} />
      <path d={tunic} {...RIM} />
      {/* Yeng bilan gavda orasidagi soya chiziqlari */}
      <path d="M92 96 Q93.5 130 95 159" fill="none" stroke={dark} strokeOpacity="0.45" strokeWidth="1.5" />
      <path d="M148 96 Q146.5 130 145 159" fill="none" stroke={dark} strokeOpacity="0.45" strokeWidth="1.5" />
      <path d="M98 118 Q120 124 142 118" fill="none" stroke={dark} strokeOpacity="0.3" strokeWidth="1.5" />
      <path
        d={`M${female ? "88 229" : "91 184"} Q120 ${female ? 235 : 190} ${female ? "152 229" : "149 184"}`}
        fill="none"
        stroke={dark}
        strokeOpacity="0.35"
        strokeWidth="1.5"
      />
      {female && (
        /* Etak burmalari */
        <>
          <path d="M103 140 Q100 190 97 228" fill="none" stroke={dark} strokeOpacity="0.25" strokeWidth="1.4" />
          <path d="M137 140 Q140 190 143 228" fill="none" stroke={dark} strokeOpacity="0.25" strokeWidth="1.4" />
        </>
      )}
      {look.goldHem && (
        /* Saroy libosining zar hoshiyasi */
        <path
          d={female ? "M88.6 226.5 Q120 232.5 151.4 226.5" : "M91.5 181.5 Q120 187 148.5 181.5"}
          fill="none"
          stroke={ZAR}
          strokeOpacity="0.6"
          strokeWidth="1.8"
        />
      )}

      {/* Tik yoqa, planka va uch tugma */}
      <path d="M108.5 53.5 Q120 50.5 131.5 53.5 L131 63 Q120 60 109 63 Z" fill={cloth} />
      <path d="M108.5 53.5 Q120 50.5 131.5 53.5" fill="none" stroke={dark} strokeOpacity="0.6" strokeWidth="1.3" />
      <rect x="117.6" y="64" width="4.8" height="36" fill={dark} fillOpacity="0.85" />
      {[70.5, 79, 87.5].map((y) => (
        <circle key={y} cx="120" cy={y} r="1.4" fill={edge} />
      ))}

      {/* Belbog': bog'ich, tuguni va osilgan uchi */}
      <rect x="96.5" y="112.8" width="47" height="4.4" fill={dark} />
      <rect x="119" y="111.5" width="7" height="7" rx="1.5" fill={dark} stroke={edge} strokeWidth="0.8" />
      <path
        d={`M121.8 118.5 Q122.4 ${female ? 155 : 148} 120.8 ${female ? 200 : 183}`}
        fill="none"
        stroke={dark}
        strokeWidth="2.4"
        strokeLinecap="round"
      />

      {/* BODY jihozi — tunika ustidan */}
      {item("BODY")}

      {/* Kaftlar — yeng uchidan chiqadi */}
      <ellipse cx="89.8" cy="168.5" rx="4.6" ry="9.6" fill={SKIN} />
      <ellipse cx="93.4" cy="165" rx="1.8" ry="4" fill={SKIN} transform="rotate(-12 93.4 165)" />
      <ellipse cx="150.2" cy="168.5" rx="4.6" ry="9.6" fill={SKIN} />
      <ellipse cx="146.6" cy="165" rx="1.8" ry="4" fill={SKIN} transform="rotate(12 146.6 165)" />

      {/* Bo'yin, bosh, quloqlar */}
      <rect x="113" y="45" width="14" height="12" fill={SKIN_SHADE} />
      <ellipse cx="120" cy="29" rx="13.5" ry="20.5" fill={SKIN} />
      <ellipse cx="120" cy="29" rx="13.5" ry="20.5" {...RIM} />
      <ellipse cx="105.5" cy="31" rx="2.2" ry="4" fill={SKIN} />
      <ellipse cx="134.5" cy="31" rx="2.2" ry="4" fill={SKIN} />
      {female && (
        /* Zirak — kichik zar nuqta */
        <>
          <circle cx="105.2" cy="35.8" r="1.3" fill={ZAR} />
          <circle cx="134.8" cy="35.8" r="1.3" fill={ZAR} />
        </>
      )}

      {female || !look.beard ? (
        /* Og'iz — yumshoq tabassum */
        <path d="M116.5 44 Q120 46.2 123.5 44" fill="none" stroke="#a5674f" strokeWidth="1.7" strokeLinecap="round" />
      ) : look.beard === "short" ? (
        /* Kalta soqol — amirzoda uslubi */
        <>
          <path
            d="M109.5 36 Q107.5 44 109 50 Q112 57.5 120 58.5 Q128 57.5 131 50
               Q132.5 44 130.5 36 Q126 41.5 120 41.5 Q114 41.5 109.5 36 Z"
            fill={BEARD}
          />
          <path d="M111.5 41.5 Q120 45.8 128.5 41.5 Q124.5 39.3 120 39.6 Q115.5 39.3 111.5 41.5 Z" fill={BEARD} />
        </>
      ) : (
        /* To'liq soqol — yonoqdan yoqagacha, mo'ylov bilan */
        <>
          <path
            d="M107.6 33 Q104.8 44 107 54 Q110 64.5 120 66.5 Q130 64.5 133 54
               Q135.2 44 132.4 33 Q127 40.5 120 40.5 Q113 40.5 107.6 33 Z"
            fill={BEARD}
          />
          <path d="M113 52 Q114 59 117 62.5 M127 52 Q126 59 123 62.5" fill="none" stroke="#4a4036" strokeOpacity="0.5" strokeWidth="1.2" />
          <path d="M111.5 41.5 Q120 45.8 128.5 41.5 Q124.5 39.3 120 39.6 Q115.5 39.3 111.5 41.5 Z" fill={BEARD} />
        </>
      )}

      {/* Yuz: qosh, ko'z, burun */}
      <path d="M110.8 27.8 L117.6 27.2" stroke={HAIR} strokeWidth={female ? 1.7 : 2.2} strokeLinecap="round" />
      <path d="M122.4 27.2 L129.2 27.8" stroke={HAIR} strokeWidth={female ? 1.7 : 2.2} strokeLinecap="round" />
      <ellipse cx="114.2" cy="31.6" rx="2.4" ry="1.55" fill="#241c15" />
      <ellipse cx="125.8" cy="31.6" rx="2.4" ry="1.55" fill="#241c15" />
      <path d="M119.5 32 L119 40 Q119.8 41.5 121 40.8" fill="none" stroke={SKIN_SHADE} strokeWidth="1.6" strokeLinecap="round" />

      {/* Soch qopqog'i: ochiq peshona, orqaga taralgan */}
      <path
        d="M105.6 34 Q104 7 120 6.5 Q136 7 134.4 34 L133.2 37
           Q132.5 25 127 21 Q123 19 120 19 Q117 19 113 21 Q107.5 25 106.8 37 Z"
        fill={HAIR}
      />
      {female && <path d="M120 7 L120 19.5" stroke={HAIR_LINE} strokeWidth="1.1" />}

      {look.hair === "orim" && (
        /* Yelkaga tushgan ikki o'rim */
        <>
          <path d="M105.8 33 Q101.5 60 103.5 86 Q105 105 109.5 114 Q113.5 105 111.5 84 Q110 58 110.8 38 Z" fill={HAIR} />
          <path d="M134.2 33 Q138.5 60 136.5 86 Q135 105 130.5 114 Q126.5 105 128.5 84 Q130 58 129.2 38 Z" fill={HAIR} />
          {[52, 68, 84, 100].map((y) => (
            <g key={y} stroke={HAIR_LINE} strokeWidth="1.3" fill="none">
              <path d={`M104 ${y} q3.5 2.5 7 0`} />
              <path d={`M129 ${y} q3.5 2.5 7 0`} />
            </g>
          ))}
          <path d="M107.5 113 l2 5 l2 -5 Z" fill={HAIR} />
          <path d="M128.5 113 l2 5 l2 -5 Z" fill={HAIR} />
          <path d="M106.8 112 h5.4 M127.8 112 h5.4" stroke={ZAR} strokeOpacity="0.8" strokeWidth="1.4" />
        </>
      )}
      {look.hair === "orim-yigit" && (
        /* Ko'chmanchi yigitning yelkadagi bitta ingichka o'rimi */
        <>
          <path d="M132.5 32 Q136.5 55 134.5 78 Q133.5 89 130.5 94 Q128 88 129.5 77 Q131 55 129 35 Z" fill={HAIR} />
          {[50, 64, 78].map((y) => (
            <path key={y} d={`M129.5 ${y} q2.5 2 5.5 0`} stroke={HAIR_LINE} strokeWidth="1.2" fill="none" />
          ))}
          <path d="M129 92 h5" stroke={ZAR} strokeOpacity="0.8" strokeWidth="1.3" />
        </>
      )}
      {look.hair === "uzun" && (
        /* Yoyiq uzun soch — ikki tolqinli tutam */
        <>
          <path d="M104.8 26 Q99 55 100.8 90 Q103.5 99 109.5 102 Q112.5 94 110.8 76 Q108.8 52 109.8 33 Z" fill={HAIR} />
          <path d="M135.2 26 Q141 55 139.2 90 Q136.5 99 130.5 102 Q127.5 94 129.2 76 Q131.2 52 130.2 33 Z" fill={HAIR} />
          <path d="M103.5 45 Q102 70 104 92" fill="none" stroke={HAIR_LINE} strokeOpacity="0.7" strokeWidth="1.2" />
          <path d="M136.5 45 Q138 70 136 92" fill="none" stroke={HAIR_LINE} strokeOpacity="0.7" strokeWidth="1.2" />
        </>
      )}
      {look.hair === "tugun" && (
        /* Tepaga yig'ilgan tugun */
        <>
          <ellipse cx="120" cy="3.8" rx="7.4" ry="5.4" fill={HAIR} />
          <path d="M113.5 5 Q120 0.5 126.5 5" fill="none" stroke={HAIR_LINE} strokeOpacity="0.8" strokeWidth="1.2" />
        </>
      )}

      {/* HEAD — jihoz bo'lmasa tipning o'z bosh kiyimi */}
      {equipped.HEAD ? item("HEAD") : <RealCap cap={look.cap} accent={look.accent} dark={dark} />}

      {/* WEAPON — o'ng kaftda */}
      {item("WEAPON")}

      {/* SHIELD — chap bilakda */}
      {item("SHIELD")}

      {/* Qolgan bezaklar */}
      {equipped.ACCESSORY !== "tug" && item("ACCESSORY")}
    </svg>
  );
}
