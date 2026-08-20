"use client";

import { EquipSlot, Gender } from "@/lib/api";
import { ArchetypeCode, defaultArchetype } from "@/lib/archetypes";
import { useT } from "@/lib/lang";

/**
 * O'quvchining qahramoni — sof SVG, tashqi rasm ishlatilmaydi.
 *
 * Proporsiyalar «chibi»: bosh butun bo'yning ~1/3 qismi, ko'zlar katta,
 * oyoqlar kalta — bolalar uchun do'stona qiyofa. Uslub esa «TEMIR VA ZAR»:
 * qorong'i po'lat va zar konturlar, Warriors.tsx dagidek tashqi rim-light.
 *
 * TIP (arxetip) VA TAYANCH NUQTALARI — 2.0 ning asosiy qoidasi.
 * Tip gavda kengligini o'zgartiradi (`build`): jangchi va sarkarda keng yelkali,
 * malika va olima nozikroq. Lekin jihozning TAYANCH NUQTALARI barcha tiplarda
 * bir xil qoladi:
 *   • bosh markazi   (120, 74)
 *   • o'ng kaft      (58, 210)   — WEAPON
 *   • chap bilak     (184, 196)  — SHIELD
 * Shu sababli «Qurolxona»dagi har bir jihoz har qanday tipga hech qanday
 * moslashtirishsiz kiyiladi. Faqat gavdaga «yopishadigan» narsalar — asosiy
 * kiyim, sovutlar va kamarlar — kenglikdan hisoblanadi, shuning uchun ular
 * ITEMS da funksiya ko'rinishida saqlanadi: (build) => JSX.
 *
 * Qo'llar ham kenglikka bog'liq: ular yelkadan chiqib, qimirlamaydigan kaft va
 * bilakka boradi — gavda kengaysa, qo'l cho'ziladi, tayanch nuqtasi joyida
 * qoladi.
 */

const SKIN = "#e8b98d";
const SKIN_SHADE = "#c9946a";
const HAIR = "#2a1d13";
const STEEL_1 = "#2f3a4d";
const STEEL_2 = "#171d2a";
const ZAR = "#c8a247";
const ZAR_BRIGHT = "#f3d98b";

/** Tashqi kontur uchun zar yorug'i — Warriors.tsx dagi uslub. */
const RIM = { fill: "none", stroke: ZAR, strokeOpacity: 0.4, strokeWidth: 1.6 } as const;

/** Gavdaning markaziy o'qi — kenglik shu chiziq atrofida hisoblanadi. */
const CX = 120;

/** Nuqtani gavda kengligiga ko'chirish: b = 1 asl bichim, b = 1.2 keng yelka. */
const X = (x: number, b: number) => +(CX + (x - CX) * b).toFixed(1);

type Equipped = Partial<Record<EquipSlot, string>>;

// ============================== MATERIAL CHIZIQLARI ==============================
// Mis → kumush → oltin. Uchtasi bir xil shaklda, faqat metall boshqa: bola
// «Qurolxona»da chiziqni bir qarashda tanib oladi.

type Metal = {
  base: string;
  light: string;
  dark: string;
  /** Oltinda qo'shimcha yorug' halqa chiziladi — og'ir SVG filtrlarsiz. */
  glow?: boolean;
};

const MIS: Metal = { base: "#b87333", light: "#e0a06a", dark: "#7d4a1e" };
const KUMUSH: Metal = { base: "#aeb9c9", light: "#eef3f9", dark: "#6f7b8c" };
const OLTIN: Metal = { base: "#a8801f", light: ZAR_BRIGHT, dark: "#6b5010", glow: true };

/** Dubulg'a — bosh shakliga qat'iy bog'langan, kenglikka bog'liq emas. */
function helmet(m: Metal) {
  return (
    <g>
      <path d="M72 64 A 52 50 0 0 1 168 64 Z" fill={m.base} />
      <path d="M120 14 V2" stroke={m.light} strokeWidth="5" strokeLinecap="round" />
      <path d="M70 62 H170 v11 H70 Z" fill={m.dark} />
      <path d="M120 70 V100" stroke={m.light} strokeWidth="5" />
      <path d="M72 64 A 52 50 0 0 1 168 64" fill="none" stroke={m.light} strokeWidth="2.2" />
      {m.glow && (
        <path
          d="M72 64 A 52 50 0 0 1 168 64"
          fill="none"
          stroke={ZAR_BRIGHT}
          strokeOpacity="0.35"
          strokeWidth="6"
        />
      )}
    </g>
  );
}

/** Sovut — gavda kengligidan hisoblanadi, shuning uchun hech qachon tor kelmaydi. */
function armour(m: Metal, b: number) {
  const sl = X(84, b);
  const sr = X(156, b);
  const hl = X(80, b);
  const hr = X(160, b);
  return (
    <g>
      <path d={`M${sl} 140 Q ${CX} 152 ${sr} 140 L${hr} 220 L${hl} 220 Z`} fill={m.base} />
      {/* ko'krak plastinkalari */}
      {[164, 186, 206].map((y) => (
        <path key={y} d={`M${X(82, b)} ${y} H${X(158, b)}`} stroke={m.dark} strokeWidth="3.5" />
      ))}
      <path d={`M${CX} 152 V220`} stroke={m.light} strokeOpacity="0.6" strokeWidth="2" />
      {/* yelka qoplamalari */}
      <path d={`M${sl} 140 q-8 6 -6 18 l16 -4 Z`} fill={m.light} fillOpacity="0.85" />
      <path d={`M${sr} 140 q8 6 6 18 l-16 -4 Z`} fill={m.light} fillOpacity="0.85" />
      <path d={`M${sl} 140 Q ${CX} 152 ${sr} 140`} fill="none" stroke={m.light} strokeWidth="2.2" />
      {m.glow && (
        <path
          d={`M${CX} 168 l7 16 l16 7 l-16 7 l-7 16 l-7 -16 l-16 -7 l16 -7 Z`}
          fill={ZAR_BRIGHT}
          fillOpacity="0.9"
        />
      )}
    </g>
  );
}

/** Qalqon — chap bilakka (184, 196) bog'langan. */
function shield(m: Metal) {
  return (
    <g>
      <circle cx="188" cy="192" r="35" fill={m.base} />
      <circle cx="188" cy="192" r="35" fill="none" stroke={m.dark} strokeWidth="5" />
      <circle cx="188" cy="192" r="35" fill="none" stroke={m.light} strokeWidth="2" />
      {m.glow ? (
        <>
          <path
            d="M188 166 l6 16 l16 6 l-16 6 l-6 16 l-6 -16 l-16 -6 l16 -6 Z"
            fill={ZAR_BRIGHT}
          />
          <circle cx="188" cy="192" r="30" fill="none" stroke={ZAR_BRIGHT} strokeOpacity="0.35" strokeWidth="5" />
        </>
      ) : (
        <>
          <circle cx="188" cy="192" r="9" fill={m.light} />
          <path d="M188 157 V227 M153 192 H223" stroke={m.dark} strokeWidth="2.5" strokeOpacity="0.7" />
        </>
      )}
    </g>
  );
}

/**
 * Jihoz chizmalari: kod → (gavda kengligi) => SVG guruh.
 * Ko'p jihoz kenglikni e'tiborsiz qoldiradi — ular qat'iy tayanch nuqtasida.
 * WarriorFigure ham shu lug'atdan foydalanadi (eksport shu sababli).
 */
export const ITEMS: Record<string, (b: number) => React.JSX.Element> = {
  // ---------------------------- BODY ----------------------------
  // Tana: yelka y=138, bel y=222; chap-o'ng chekka X(84|156, b) va X(78|162, b)
  "oddiy-chopon": (b) => (
    <g>
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140 L${X(162, b)} 224 L${X(78, b)} 224 Z`} fill="#3d5245" />
      <path d={`M${CX} 150 V224`} stroke={ZAR} strokeOpacity="0.45" strokeWidth="2" />
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140`} fill="none" stroke={ZAR} strokeOpacity="0.55" strokeWidth="2" />
    </g>
  ),
  "charm-sovut": (b) => (
    <g>
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140 L${X(160, b)} 218 L${X(80, b)} 218 Z`} fill="#6b4c2e" />
      <path d={`M${X(82, b)} 168 H${X(158, b)} M${X(81, b)} 192 H${X(159, b)}`} stroke="#48311c" strokeWidth="4" />
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140`} fill="none" stroke={ZAR} strokeOpacity="0.5" strokeWidth="2" />
    </g>
  ),
  "temir-sovut": (b) => (
    <g>
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140 L${X(162, b)} 222 L${X(78, b)} 222 Z`} fill="#54617a" />
      {[160, 176, 192, 208].map((y) => (
        <path key={y} d={`M${X(80, b)} ${y} H${X(160, b)}`} stroke="#3b4557" strokeWidth="3" strokeDasharray="5 3" />
      ))}
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140`} fill="none" stroke={ZAR_BRIGHT} strokeOpacity="0.5" strokeWidth="2" />
    </g>
  ),
  "ipak-chopon": (b) => (
    <g>
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140 L${X(164, b)} 226 L${X(76, b)} 226 Z`} fill="#23686d" />
      <path d={`M${CX} 150 V226`} stroke={ZAR_BRIGHT} strokeOpacity="0.7" strokeWidth="2" />
      {[168, 196].map((y) => (
        <g key={y} fill={ZAR} fillOpacity="0.6">
          <path d={`M${X(98, b)} ${y} l5 -5 l5 5 l-5 5 Z`} />
          <path d={`M${X(132, b)} ${y} l5 -5 l5 5 l-5 5 Z`} />
        </g>
      ))}
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140`} fill="none" stroke={ZAR_BRIGHT} strokeWidth="2" />
    </g>
  ),
  "zar-sovut": (b) => (
    <g>
      <path d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140 L${X(162, b)} 220 L${X(78, b)} 220 Z`} fill="#7a5f1c" />
      <path
        d={`M${X(84, b)} 140 Q ${CX} 152 ${X(156, b)} 140 L${X(162, b)} 220 L${X(78, b)} 220 Z`}
        fill="none"
        stroke={ZAR_BRIGHT}
        strokeWidth="2.5"
      />
      <path d={`M${CX} 164 l7 16 l16 7 l-16 7 l-7 16 l-7 -16 l-16 -7 l16 -7 Z`} fill={ZAR_BRIGHT} fillOpacity="0.85" />
    </g>
  ),
  // Material chizig'i: mis → kumush → oltin
  "mis-sovut": (b) => armour(MIS, b),
  "kumush-sovut": (b) => armour(KUMUSH, b),
  "oltin-sovut": (b) => armour(OLTIN, b),

  // ---------------------------- HEAD ----------------------------
  // Bosh: markaz (120,74), rx 50, ry 52 — tepasi y=22
  doppi: () => (
    <g>
      <path d="M72 62 A 50 44 0 0 1 168 62 Z" fill="#16202e" />
      <path d="M70 60 H170 v11 H70 Z" fill="#0e1521" />
      {[92, 108, 124, 140].map((x) => (
        <path key={x} d={`M${x} 40 l5 6 l-5 6 l-5 -6 Z`} fill={ZAR} fillOpacity="0.9" />
      ))}
      <path d="M72 62 A 50 44 0 0 1 168 62" fill="none" stroke={ZAR} strokeOpacity="0.5" strokeWidth="1.5" />
    </g>
  ),
  dubulga: () => (
    <g>
      <path d="M72 64 A 52 50 0 0 1 168 64 Z" fill="#5d6a7c" />
      <path d="M120 14 V2" stroke="#78859a" strokeWidth="5" strokeLinecap="round" />
      <path d="M70 62 H170 v11 H70 Z" fill="#4b5566" />
      <path d="M120 70 V100" stroke="#78859a" strokeWidth="5" />
      <path d="M72 64 A 52 50 0 0 1 168 64" fill="none" stroke={ZAR_BRIGHT} strokeOpacity="0.4" strokeWidth="1.5" />
    </g>
  ),
  "zar-dubulga": () => (
    <g>
      <path d="M72 64 A 52 50 0 0 1 168 64 Z" fill="#8a6d1a" />
      <path d="M72 64 A 52 50 0 0 1 168 64" fill="none" stroke={ZAR_BRIGHT} strokeWidth="2.5" />
      <path d="M120 14 C138 0 152 4 158 14 C142 14 130 22 124 32 Z" fill="#efe7d4" />
      <path d="M70 62 H170 v11 H70 Z" fill={ZAR} />
      <path d="M120 70 V100" stroke={ZAR_BRIGHT} strokeWidth="5" />
    </g>
  ),
  "zar-toj": () => (
    <g>
      <path d="M72 66 L80 20 L100 44 L120 10 L140 44 L160 20 L168 66 Z" fill={ZAR} />
      <path d="M72 66 L80 20 L100 44 L120 10 L140 44 L160 20 L168 66 Z" fill="none" stroke={ZAR_BRIGHT} strokeWidth="2" />
      <path d="M70 64 H170 v12 H70 Z" fill="#8a6d1a" />
      <circle cx="120" cy="70" r="5" fill="#9b2e22" />
    </g>
  ),
  // Material chizig'i: mis → kumush → oltin
  "mis-dubulga": () => helmet(MIS),
  "kumush-dubulga": () => helmet(KUMUSH),
  "oltin-dubulga": () => helmet(OLTIN),

  // --------------------------- WEAPON ---------------------------
  // O'ng kaft — (58, 210), barcha tiplarda bir xil
  "yogoch-qilich": () => (
    <g>
      <rect x="53" y="126" width="10" height="76" rx="3" fill="#9a7850" />
      <rect x="42" y="200" width="32" height="7" rx="3" fill="#77593a" />
      <rect x="53" y="207" width="10" height="22" rx="3" fill="#77593a" />
    </g>
  ),
  "polat-qilich": () => (
    <g>
      <path d="M52 110 L64 110 L64 198 L58 206 L52 198 Z" fill="#a7b3c4" />
      <path d="M58 110 V198" stroke="#e6ecf4" strokeWidth="2" />
      <rect x="40" y="198" width="36" height="8" rx="3" fill={ZAR} />
      <rect x="52" y="206" width="12" height="24" rx="4" fill="#3a3128" />
      <circle cx="58" cy="234" r="5" fill={ZAR} />
    </g>
  ),
  "kamon-sadoq": () => (
    <g>
      <path d="M56 122 C32 154 32 196 56 228" fill="none" stroke="#8a6740" strokeWidth="7" strokeLinecap="round" />
      <path d="M56 122 L56 228" stroke="#e2dbcb" strokeWidth="2" />
      <path d="M168 150 l16 5 l-9 50 l-16 -5 Z" fill="#6b4c2e" />
      {[0, 6, 12].map((d) => (
        <path key={d} d={`M${172 + d} 150 V134`} stroke="#cfc4ad" strokeWidth="2.5" />
      ))}
    </g>
  ),
  nayza: () => (
    <g>
      <rect x="54" y="84" width="8" height="152" rx="3" fill="#8a6740" />
      <path d="M58 84 L70 56 L46 56 Z" fill="#a7b3c4" />
      <path d="M58 84 L70 56 L46 56 Z" fill="none" stroke="#e6ecf4" strokeWidth="1.5" />
    </g>
  ),
  "sohibqiron-qilichi": () => (
    <g>
      <path d="M56 104 C32 142 32 178 54 202 L64 195 C48 172 48 142 68 108 Z" fill={ZAR_BRIGHT} />
      <path d="M56 104 C32 142 32 178 54 202" fill="none" stroke="#fff8e8" strokeWidth="2" />
      <rect x="40" y="200" width="38" height="9" rx="4" fill={ZAR} />
      <rect x="52" y="209" width="13" height="26" rx="4" fill="#5c4a1e" />
      <circle cx="58" cy="240" r="6" fill={ZAR_BRIGHT} />
    </g>
  ),
  /** Sarkarda nayzasi — dastasida buyruq bayrog'i. */
  "sarkarda-nayzasi": () => (
    <g>
      <rect x="54" y="76" width="8" height="162" rx="3" fill="#6f5232" />
      <path d="M58 76 L70 44 L46 44 Z" fill={ZAR_BRIGHT} />
      <path d="M58 76 L70 44 L46 44 Z" fill="none" stroke="#fff8e8" strokeWidth="1.5" />
      <rect x="50" y="76" width="16" height="7" rx="3" fill={ZAR} />
      <path d="M62 92 L96 100 C90 112 90 122 96 134 L62 126 Z" fill="#9b2e22" />
      <path d="M62 92 L96 100 C90 112 90 122 96 134 L62 126 Z" fill="none" stroke={ZAR} strokeWidth="1.8" />
    </g>
  ),
  /** Ulug'bek kamoni — yoyida rasadxona yulduzlari. */
  "ulugbek-kamoni": () => (
    <g>
      <path d="M56 116 C26 152 26 198 56 234" fill="none" stroke="#4a3f6b" strokeWidth="8" strokeLinecap="round" />
      <path d="M56 116 C30 152 30 198 56 234" fill="none" stroke={ZAR} strokeWidth="2.5" strokeLinecap="round" />
      <path d="M56 116 L56 234" stroke="#e2dbcb" strokeWidth="2" />
      {[146, 175, 204].map((y) => (
        <path key={y} d={`M36 ${y} l3 7 l7 3 l-7 3 l-3 7 l-3 -7 l-7 -3 l7 -3 Z`} fill={ZAR_BRIGHT} />
      ))}
    </g>
  ),
  /** Oybolta — tig'i yarim oy shaklida. */
  oybolta: () => (
    <g>
      <rect x="54" y="104" width="9" height="132" rx="3" fill="#7d5c38" />
      <path d="M58 112 C34 116 26 138 32 158 C44 142 50 136 58 134 Z" fill="#b7c2d1" />
      <path d="M58 112 C34 116 26 138 32 158 C44 142 50 136 58 134 Z" fill="none" stroke="#eef3f9" strokeWidth="1.8" />
      <path d="M58 116 C74 120 82 134 80 146" fill="none" stroke={ZAR} strokeWidth="3" />
      <rect x="50" y="106" width="17" height="7" rx="3" fill={ZAR} />
    </g>
  ),

  // --------------------------- SHIELD ---------------------------
  // Chap bilak — (184, 192)
  "charm-qalqon": () => (
    <g>
      <circle cx="188" cy="192" r="34" fill="#6b4c2e" />
      <circle cx="188" cy="192" r="34" fill="none" stroke="#48311c" strokeWidth="5" />
      <circle cx="188" cy="192" r="9" fill="#8a6740" />
      <circle cx="188" cy="192" r="34" fill="none" stroke={ZAR} strokeOpacity="0.35" strokeWidth="1.5" />
    </g>
  ),
  "zar-qalqon": () => (
    <g>
      <circle cx="188" cy="192" r="36" fill="#7a5f1c" />
      <circle cx="188" cy="192" r="36" fill="none" stroke={ZAR_BRIGHT} strokeWidth="3" />
      <path d="M188 164 l7 18 l18 10 l-18 10 l-7 18 l-7 -18 l-18 -10 l18 -10 Z" fill={ZAR_BRIGHT} />
    </g>
  ),
  // Material chizig'i: mis → kumush → oltin
  "mis-qalqon": () => shield(MIS),
  "kumush-qalqon": () => shield(KUMUSH),
  "oltin-qalqon": () => shield(OLTIN),

  // -------------------------- ACCESSORY --------------------------
  "olov-tumor": () => (
    <g>
      <path d="M104 136 Q120 152 136 136" fill="none" stroke={ZAR} strokeWidth="2.5" />
      <path d="M120 150 l9 14 l-9 14 l-9 -14 Z" fill="#9b2e22" />
      <path d="M120 150 l9 14 l-9 14 l-9 -14 Z" fill="none" stroke={ZAR_BRIGHT} strokeWidth="1.8" />
    </g>
  ),
  // Kamar gavdaga yopishadi — kenglikdan hisoblanadi
  "ipak-kamar": (b) => (
    <g>
      <path d={`M${X(80, b)} 198 H${X(160, b)} v14 H${X(80, b)} Z`} fill="#23686d" />
      <path d={`M${X(80, b)} 198 H${X(160, b)} v14 H${X(80, b)} Z`} fill="none" stroke={ZAR_BRIGHT} strokeWidth="1.8" />
      <rect x={CX - 9} y="196" width="18" height="18" rx="4" fill={ZAR} />
    </g>
  ),
  /** Navoiy devoni — kamarga osilgan kitob. */
  "navoiy-devoni": (b) => (
    <g>
      <path d={`M${X(80, b)} 200 H${X(160, b)} v10 H${X(80, b)} Z`} fill="#2b3446" />
      <path d={`M${X(80, b)} 200 H${X(160, b)} v10 H${X(80, b)} Z`} fill="none" stroke={ZAR} strokeOpacity="0.6" strokeWidth="1.5" />
      <g transform={`translate(${X(136, b)} 206)`}>
        <rect x="0" y="0" width="26" height="32" rx="3" fill="#7d3b2e" />
        <rect x="0" y="0" width="26" height="32" rx="3" fill="none" stroke={ZAR_BRIGHT} strokeWidth="1.8" />
        <path d="M5 0 V32" stroke={ZAR} strokeWidth="2" />
        <path d="M13 8 l4 8 l8 4 l-8 4 l-4 8 l-4 -8 l-8 -4 l8 -4 Z" fill={ZAR_BRIGHT} fillOpacity="0.85" transform="scale(0.62) translate(8 8)" />
      </g>
    </g>
  ),
  tug: () => (
    <g>
      <rect x="206" y="40" width="6" height="230" rx="3" fill="#8a6740" />
      <path d="M209 40 l5 12 l-5 7 l-5 -7 Z" fill={ZAR_BRIGHT} />
      <path d="M212 58 L248 68 C242 82 242 94 248 108 L212 98 Z" fill="#9b2e22" />
      <path d="M212 58 L248 68 C242 82 242 94 248 108 L212 98 Z" fill="none" stroke={ZAR} strokeWidth="1.8" />
    </g>
  ),
};

// ================================ TIPLAR ================================

type Hair = "kalta" | "orim-yigit" | "uzun" | "orim" | "tugun";
type Cap = "peshonaband" | "telpak" | "salla" | "sarkarda-qalpoq" | "tillakosh" | "olima-qalpoq" | null;

type Look = {
  /** Gavda kengligi: 1 — asl bichim. */
  build: number;
  /** Asosiy kiyim gradiyenti (yuqoridan pastga). */
  cloth: [string, string];
  /** Kiyimdagi rang urg'usi — tipni bir qarashda ajratadi. */
  accent: string;
  hair: Hair;
  /** HEAD uyasi bo'sh bo'lsa chiziladigan bosh kiyim. */
  cap: Cap;
};

const LOOKS: Record<ArchetypeCode, Look> = {
  jangchi: { build: 1.2, cloth: ["#3b4655", "#1a2029"], accent: "#9b2e22", hair: "kalta", cap: "peshonaband" },
  sarkarda: { build: 1.2, cloth: ["#2b3040", "#12151d"], accent: ZAR_BRIGHT, hair: "kalta", cap: "sarkarda-qalpoq" },
  kochmanchi: { build: 1.08, cloth: ["#6b4c2e", "#3b2916"], accent: "#d2a15c", hair: "orim-yigit", cap: "telpak" },
  amirzoda: { build: 1.0, cloth: ["#23686d", "#123437"], accent: ZAR, hair: "kalta", cap: "salla" },
  "oddiy-yigit": { build: 1.0, cloth: [STEEL_1, STEEL_2], accent: ZAR, hair: "kalta", cap: null },
  "jangchi-qiz": { build: 1.04, cloth: ["#3b4655", "#1a2029"], accent: "#9b2e22", hair: "orim", cap: "peshonaband" },
  "kochmanchi-qiz": { build: 0.96, cloth: ["#6b4c2e", "#3b2916"], accent: "#d2a15c", hair: "orim", cap: "telpak" },
  malika: { build: 0.94, cloth: ["#5a2a4a", "#2a1122"], accent: ZAR_BRIGHT, hair: "tugun", cap: "tillakosh" },
  olima: { build: 0.94, cloth: ["#2b3566", "#141a33"], accent: "#cdd8ef", hair: "tugun", cap: "olima-qalpoq" },
  "oddiy-qiz": { build: 0.96, cloth: [STEEL_1, STEEL_2], accent: ZAR, hair: "uzun", cap: null },
};

/** Soch — bosh qat'iy joyda turgani uchun kenglikka bog'liq emas. */
function HairBack({ style }: { style: Hair }) {
  switch (style) {
    case "uzun":
      return (
        <path
          d="M64 78 Q64 20 120 20 Q176 20 176 78 L180 206 Q168 210 162 200 L166 92 Q120 108 74 92 L78 200 Q72 210 60 206 Z"
          fill={HAIR}
        />
      );
    case "orim":
      return (
        <g fill={HAIR}>
          <path d="M64 78 Q64 20 120 20 Q176 20 176 78 L174 100 Q120 108 66 100 Z" />
          {/* yelkaga tushgan o'rim */}
          <path d="M162 92 q18 30 12 68 q-4 26 -18 34 q-14 -8 -10 -34 q6 -36 -4 -66 Z" />
          {[118, 142, 166].map((y) => (
            <path key={y} d={`M154 ${y} q10 5 18 0`} fill="none" stroke="#1a120b" strokeWidth="2.5" />
          ))}
        </g>
      );
    case "tugun":
      return (
        <g fill={HAIR}>
          <path d="M66 76 Q66 20 120 20 Q174 20 174 76 L172 96 Q120 104 68 96 Z" />
          <ellipse cx="120" cy="12" rx="24" ry="17" />
          <ellipse cx="120" cy="12" rx="24" ry="17" fill="none" stroke="#1a120b" strokeWidth="2" />
        </g>
      );
    case "orim-yigit":
      return (
        <g fill={HAIR}>
          <path d="M68 72 Q70 22 120 22 Q170 22 172 72 L170 84 Q120 66 70 84 Z" />
          <path d="M166 78 q12 26 8 52 q-3 16 -12 20 q-9 -6 -6 -20 q5 -28 -2 -50 Z" />
        </g>
      );
    default:
      return <path d="M68 72 Q70 22 120 22 Q170 22 172 72 L170 84 Q120 66 70 84 Z" fill={HAIR} />;
  }
}

function HairFront({ style }: { style: Hair }) {
  const female = style === "uzun" || style === "orim" || style === "tugun";
  return female ? (
    <path d="M70 62 Q92 34 120 46 Q148 34 170 62 Q146 44 120 56 Q94 44 70 62 Z" fill={HAIR} />
  ) : (
    <path d="M72 60 Q96 38 120 50 Q144 38 168 60 Q142 48 120 58 Q98 48 72 60 Z" fill={HAIR} />
  );
}

/** Tipning standart bosh kiyimi — HEAD uyasi bo'sh bo'lgandagina chiziladi. */
function DefaultCap({ style, accent }: { style: Cap; accent: string }) {
  switch (style) {
    case "peshonaband":
      return (
        <g>
          <path d="M71 56 Q120 40 169 56 L169 68 Q120 52 71 68 Z" fill="#2b3446" />
          <path d="M71 56 Q120 40 169 56" fill="none" stroke={accent} strokeWidth="2.5" />
          <path d="M120 48 l7 10 l-7 10 l-7 -10 Z" fill={accent} />
        </g>
      );
    case "telpak":
      return (
        <g>
          <path d="M74 58 A 46 44 0 0 1 166 58 Z" fill="#4a3524" />
          <path d="M70 54 Q120 40 170 54 L170 70 Q120 56 70 70 Z" fill="#7d5c38" />
          <path d="M70 54 Q120 40 170 54" fill="none" stroke={accent} strokeOpacity="0.8" strokeWidth="2" />
        </g>
      );
    case "salla":
      return (
        <g>
          <path d="M72 60 A 48 46 0 0 1 168 60 Z" fill="#e8e2d2" />
          {/* salla o'ramlari */}
          <path d="M86 34 q34 -12 68 0" fill="none" stroke="#cfc7b2" strokeWidth="5" />
          <path d="M76 48 q44 -14 88 0" fill="none" stroke="#cfc7b2" strokeWidth="5" />
          <path d="M120 22 l6 10 l-6 10 l-6 -10 Z" fill={accent} />
          <path d="M72 60 A 48 46 0 0 1 168 60" fill="none" stroke={accent} strokeOpacity="0.6" strokeWidth="2" />
        </g>
      );
    case "sarkarda-qalpoq":
      // Baland qora qalpoq: zar halqa va patli belgi — sarkardani uzoqdan tanitadi
      return (
        <g>
          <path d="M78 60 Q80 12 120 12 Q160 12 162 60 Z" fill="#1b2230" />
          <path d="M78 60 Q80 12 120 12 Q160 12 162 60" fill="none" stroke={accent} strokeWidth="2" />
          <path d="M70 56 H170 v13 H70 Z" fill={ZAR} />
          <path d="M70 56 H170 v13 H70 Z" fill="none" stroke={accent} strokeWidth="1.5" />
          <path d="M120 12 C136 -6 152 -2 158 10 C142 8 130 16 124 28 Z" fill="#9b2e22" />
          <path d="M120 12 C136 -6 152 -2 158 10 C142 8 130 16 124 28 Z" fill="none" stroke={accent} strokeWidth="1.5" />
        </g>
      );
    case "tillakosh":
      return (
        <g>
          <path d="M76 58 Q120 34 164 58 L164 66 Q120 44 76 66 Z" fill={ZAR} />
          <path d="M76 58 Q120 34 164 58" fill="none" stroke={ZAR_BRIGHT} strokeWidth="2.5" />
          {[96, 120, 144].map((x) => (
            <circle key={x} cx={x} cy={x === 120 ? 44 : 50} r={x === 120 ? 6 : 4} fill="#9b2e22" stroke={ZAR_BRIGHT} strokeWidth="1.5" />
          ))}
        </g>
      );
    case "olima-qalpoq":
      return (
        <g>
          <path d="M74 60 A 46 42 0 0 1 166 60 Z" fill="#1e2647" />
          <path d="M72 58 H168 v10 H72 Z" fill="#2b3566" />
          <path d="M120 30 l4 9 l9 4 l-9 4 l-4 9 l-4 -9 l-9 -4 l9 -4 Z" fill={accent} />
          <path d="M74 60 A 46 42 0 0 1 166 60" fill="none" stroke={accent} strokeOpacity="0.7" strokeWidth="1.8" />
        </g>
      );
    default:
      return null;
  }
}

/**
 * Bosh — chibi: katta ko'zlar, blikli qorachiqlar, qoshlar.
 * Soch ikki qatlamda: orqa qatlam bosh shaklidan oldin, peshona sochi keyin —
 * shunda bosh kiyim ostidan soch ko'rinib turadi.
 */
function Head({ hair }: { hair: Hair }) {
  return (
    <g>
      {/* bo'yin */}
      <path d="M108 112 H132 V142 H108 Z" fill={SKIN_SHADE} />

      <HairBack style={hair} />

      {/* yuz */}
      <ellipse cx="120" cy="74" rx="50" ry="52" fill={SKIN} />
      <ellipse cx="120" cy="74" rx="50" ry="52" {...RIM} />

      {/* qoshlar */}
      <path d="M88 56 q13 -9 25 -2" fill="none" stroke={HAIR} strokeWidth="4.5" strokeLinecap="round" />
      <path d="M127 54 q12 -7 25 2" fill="none" stroke={HAIR} strokeWidth="4.5" strokeLinecap="round" />

      {/* katta ko'zlar */}
      {[100, 140].map((cx) => (
        <g key={cx}>
          <ellipse cx={cx} cy="84" rx="11" ry="12.5" fill="#fdfaf4" />
          <circle cx={cx} cy="85" r="7.5" fill="#2a2118" />
          <circle cx={cx + 2.5} cy="81" r="3.2" fill="#fff" />
          <circle cx={cx - 3} cy="89" r="1.6" fill="#fff" fillOpacity="0.7" />
        </g>
      ))}

      {/* yonoqlar, burun, tabassum */}
      <ellipse cx="80" cy="98" rx="8" ry="5" fill="#e08a72" fillOpacity="0.35" />
      <ellipse cx="160" cy="98" rx="8" ry="5" fill="#e08a72" fillOpacity="0.35" />
      <path d="M120 92 v7" stroke={SKIN_SHADE} strokeWidth="3" strokeLinecap="round" />
      <path d="M108 106 q12 10 24 0" fill="none" stroke="#8a5a44" strokeWidth="3.2" strokeLinecap="round" />

      <HairFront style={hair} />
    </g>
  );
}

const TXT = {
  ru: { yourHero: "Твой герой" },
  uz: { yourHero: "Sening qahramoning" },
  uk: { yourHero: "Твій герой" },
};

export default function Character({
  gender = "MALE",
  archetype,
  equipped = {},
  size = 240,
  crop = "full",
  className = "",
}: {
  gender?: Gender | null;
  /** Tip. Berilmasa — jins bo'yicha oddiy tip (eski profillar uchun). */
  archetype?: string | null;
  equipped?: Equipped;
  size?: number;
  /** `head` — shapkadagi mini-avatar uchun faqat yuz (16–40px da ham o'qiladi). */
  crop?: "full" | "head";
  className?: string;
}) {
  const t = useT(TXT);
  const g: Gender = gender ?? "MALE";
  const code = (archetype && archetype in LOOKS ? archetype : defaultArchetype(g)) as ArchetypeCode;
  const look = LOOKS[code];
  const b = look.build;

  const item = (slot: EquipSlot) => {
    const itemCode = equipped[slot];
    const draw = itemCode ? ITEMS[itemCode] : undefined;
    return draw ? draw(b) : null;
  };

  // Yelka nuqtasi kenglik bilan siljiydi, kaft va bilak esa joyida qoladi —
  // shu sababli qo'l cho'ziladi, jihoz tayanchi buzilmaydi. Qo'l kiyimning
  // ichidan boshlanadi (y=156), aks holda yelkada yalang'och bo'shliq ko'rinadi.
  const frontArm = `M${X(98, b)} 154 Q ${X(78, b)} 180 58 206`;
  const backArm = `M${X(142, b)} 154 Q ${X(166, b)} 174 184 192`;
  const clothId = `tt-char-cloth-${code}`;

  return (
    <svg
      viewBox={crop === "head" ? "62 14 116 116" : "0 0 240 320"}
      width={size}
      height={crop === "head" ? size : (size * 320) / 240}
      className={className}
      role="img"
      aria-label={t.yourHero}
    >
      <defs>
        <linearGradient id={clothId} x1="0" y1="0" x2="0" y2="1">
          <stop offset="0%" stopColor={look.cloth[0]} />
          <stop offset="100%" stopColor={look.cloth[1]} />
        </linearGradient>
        <radialGradient id="tt-char-shadow">
          <stop offset="0%" stopColor="#000" stopOpacity="0.55" />
          <stop offset="100%" stopColor="#000" stopOpacity="0" />
        </radialGradient>
      </defs>

      {/* Yerdagi yumshoq soya — figurani fondan ajratadi */}
      {crop === "full" && <ellipse cx="120" cy="292" rx="72" ry="16" fill="url(#tt-char-shadow)" />}

      {/* Tug' — figuraning orqasida */}
      {equipped.ACCESSORY === "tug" && item("ACCESSORY")}

      {/* Orqa qo'l (chap) — bukilgan, qalqon uchun */}
      <path d={backArm} fill="none" stroke={SKIN_SHADE} strokeWidth="14" strokeLinecap="round" />
      <circle cx="184" cy="196" r="11" fill={SKIN_SHADE} />

      {/* Oyoqlar — kalta */}
      <path d="M96 216 h22 v56 h-22 Z" fill="#1f2734" />
      <path d="M122 216 h22 v56 h-22 Z" fill="#1f2734" />
      <path d="M88 268 h32 q4 0 4 6 v8 H88 Z" fill="#0d1119" />
      <path d="M120 268 h32 q4 0 4 6 v8 h-36 Z" fill="#0d1119" />

      {/* Tana — tipning bazaviy kiyimi */}
      <path
        d={`M${X(84, b)} 138 Q ${CX} 150 ${X(156, b)} 138 L${X(162, b)} 222 L${X(78, b)} 222 Z`}
        fill={`url(#${clothId})`}
      />
      <path d={`M${CX} 150 V222`} stroke={look.accent} strokeOpacity="0.5" strokeWidth="2" />
      <path
        d={`M${X(84, b)} 138 Q ${CX} 150 ${X(156, b)} 138 L${X(162, b)} 222 L${X(78, b)} 222 Z`}
        {...RIM}
      />

      {/* BODY */}
      {item("BODY")}

      {/* Oldingi qo'l (o'ng) — kaftida qurol */}
      <path d={frontArm} fill="none" stroke={SKIN} strokeWidth="15" strokeLinecap="round" />
      <circle cx="58" cy="210" r="12" fill={SKIN} />
      <circle cx="58" cy="210" r="12" {...RIM} />

      {/* Bosh */}
      <Head hair={look.hair} />

      {/* HEAD — jihoz bo'lmasa tipning o'z bosh kiyimi */}
      {equipped.HEAD ? item("HEAD") : <DefaultCap style={look.cap} accent={look.accent} />}

      {/* WEAPON — o'ng kaftda, chopondan keyin chiziladi */}
      {item("WEAPON")}

      {/* SHIELD — chap bilakda */}
      {item("SHIELD")}

      {/* Qolgan bezaklar */}
      {equipped.ACCESSORY !== "tug" && item("ACCESSORY")}
    </svg>
  );
}

/** Har bir uya uchun mini-ko'rinish kadri. */
const PREVIEW_BOX: Record<EquipSlot, string> = {
  HEAD: "64 8 112 76",
  BODY: "64 126 112 104",
  WEAPON: "20 48 108 192",
  SHIELD: "146 146 96 96",
  ACCESSORY: "84 108 128 128",
};

/**
 * Jihoz kartochkasidagi mini-ko'rinish — faqat bitta jihoz, o'z kadrida.
 *
 * Kadr nisbati saqlanadi: qurollar baland va tor, ularni kvadratga tiqish
 * kartochkada tanib bo'lmas darajada kichraytirib yuborardi.
 */
export function ItemPreview({
  code,
  slot,
  size = 72,
}: {
  code: string;
  slot: EquipSlot;
  size?: number;
}) {
  const draw = ITEMS[code];
  if (!draw) return null;
  const box = PREVIEW_BOX[slot];
  const [, , w, h] = box.split(" ").map(Number);
  return (
    <svg
      viewBox={box}
      width={w >= h ? size : (size * w) / h}
      height={h >= w ? size : (size * h) / w}
      aria-hidden
      className="overflow-visible"
    >
      {draw(1)}
    </svg>
  );
}
