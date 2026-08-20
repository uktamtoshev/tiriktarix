/**
 * Darvoza emblemalari — har bir modul uchun geraldik belgi.
 * Emoji o'rniga: o'yma chizgi uslubidagi SVG, currentColor bilan.
 */

export type EmblemName = "suhbat" | "voqealar" | "xarita" | "film" | "sinov" | "xazina";

const S = {
  fill: "none" as const,
  stroke: "currentColor",
  strokeWidth: 1.4,
  strokeLinecap: "round" as const,
  strokeLinejoin: "round" as const,
};

function Suhbat() {
  return (
    <g {...S}>
      {/* Toj — ajdod salobati */}
      <path d="M24 18 L27 11 L32 16 L37 11 L40 18 Z" />
      <path d="M24 18 H40" strokeOpacity="0.7" />
      {/* Bosh va yelka silueti */}
      <path d="M32 20 c-6 0-9 4-9 9 0 5 4 9 9 9 s9-4 9-9 c0-5-3-9-9-9Z" />
      <path d="M18 54 c0-8 6-13 14-13 s14 5 14 13" />
      {/* Ovoz to'lqinlari — suhbat */}
      <path d="M48 22 c4 4 4 12 0 16" strokeOpacity="0.75" />
      <path d="M53 17 c7 7 7 19 0 26" strokeOpacity="0.45" />
      <path d="M16 22 c-4 4-4 12 0 16" strokeOpacity="0.75" />
      <path d="M11 17 c-7 7-7 19 0 26" strokeOpacity="0.45" />
    </g>
  );
}

function Voqealar() {
  return (
    <g {...S}>
      {/* Qum soati — vaqt */}
      <path d="M20 10 H44" />
      <path d="M20 54 H44" />
      <path d="M23 10 c0 10 9 14 9 22 0-8 9-12 9-22" />
      <path d="M23 54 c0-10 9-14 9-22 0 8 9 12 9 22" />
      <path d="M27 48 h10" strokeOpacity="0.6" />
      {/* Sakkiz burchakli yulduz — voqea nuqtasi */}
      <path d="M32 27 l2.5 4.5 4.5 2.5-4.5 2.5L32 41l-2.5-4.5L25 34l4.5-2.5Z" strokeOpacity="0.85" />
      {/* Yon o'q — vaqt lentasi */}
      <path d="M8 32 H14" strokeOpacity="0.5" />
      <path d="M50 32 H56" strokeOpacity="0.5" />
    </g>
  );
}

function Xarita() {
  return (
    <g {...S}>
      {/* Buklangan xarita */}
      <path d="M8 16 L24 11 L40 16 L56 11 V48 L40 53 L24 48 L8 53 Z" />
      <path d="M24 11 V48" strokeOpacity="0.45" />
      <path d="M40 16 V53" strokeOpacity="0.45" />
      {/* Qutb yulduzi — kompas */}
      <path d="M32 20 L35 29 L44 32 L35 35 L32 44 L29 35 L20 32 L29 29 Z" strokeOpacity="0.9" />
      <circle cx="32" cy="32" r="2.4" strokeOpacity="0.7" />
      {/* Yurish yo'li */}
      <path d="M13 42 q7-6 14-2" strokeOpacity="0.5" strokeDasharray="2 3" />
    </g>
  );
}

function Film() {
  return (
    <g {...S}>
      {/* Kadr ramkasi */}
      <rect x="10" y="16" width="44" height="32" rx="2" />
      <path d="M18 16 V48" strokeOpacity="0.4" />
      <path d="M46 16 V48" strokeOpacity="0.4" />
      {[21, 28, 35, 42].map((y) => (
        <g key={y}>
          <rect x="12.5" y={y - 2} width="3" height="4" rx="0.6" strokeOpacity="0.55" />
          <rect x="48.5" y={y - 2} width="3" height="4" rx="0.6" strokeOpacity="0.55" />
        </g>
      ))}
      {/* Ijro belgisi */}
      <path d="M28 25 L39 32 L28 39 Z" strokeOpacity="0.95" />
      {/* Proyektor nuri */}
      <path d="M22 52 L32 58 L42 52" strokeOpacity="0.35" />
    </g>
  );
}

function Sinov() {
  return (
    <g {...S}>
      {/* Kesishgan qilichlar */}
      <path d="M14 12 L40 38" />
      <path d="M40 38 l4 2 -2 -4" />
      <path d="M50 12 L24 38" />
      <path d="M24 38 l-4 2 2 -4" />
      <path d="M11 15 l4 -4" strokeOpacity="0.6" />
      <path d="M53 15 l-4 -4" strokeOpacity="0.6" />
      {/* Qalqon */}
      <path d="M32 26 L46 31 v10 c0 8-7 13-14 16 -7-3-14-8-14-16 V31 Z" />
      {/* Qalqondagi yulduz */}
      <path d="M32 34 l2 5 5 2-5 2-2 5-2-5-5-2 5-2Z" strokeOpacity="0.8" />
    </g>
  );
}

function Xazina() {
  return (
    <g {...S}>
      {/* Ochiq kitob / o'rama */}
      <path d="M32 22 c-5-4-12-5-19-4 v27 c7-1 14 0 19 4 5-4 12-5 19-4 V18 c-7-1-14 0-19 4Z" />
      <path d="M32 22 V49" strokeOpacity="0.55" />
      <path d="M18 26 h8" strokeOpacity="0.4" />
      <path d="M18 32 h8" strokeOpacity="0.4" />
      <path d="M38 26 h8" strokeOpacity="0.4" />
      <path d="M38 32 h8" strokeOpacity="0.4" />
      {/* Bilim yulduzi */}
      <path d="M32 6 l2 5 5 2-5 2-2 5-2-5-5-2 5-2Z" strokeOpacity="0.9" />
      <path d="M24 12 l-2 -3" strokeOpacity="0.4" />
      <path d="M40 12 l2 -3" strokeOpacity="0.4" />
    </g>
  );
}

const EMBLEMS: Record<EmblemName, () => React.JSX.Element> = {
  suhbat: Suhbat,
  voqealar: Voqealar,
  xarita: Xarita,
  film: Film,
  sinov: Sinov,
  xazina: Xazina,
};

export default function GateEmblem({
  name,
  className = "h-14 w-14",
}: {
  name: EmblemName;
  className?: string;
}) {
  const Shape = EMBLEMS[name];
  return (
    <svg aria-hidden viewBox="0 0 64 64" className={className}>
      <Shape />
    </svg>
  );
}
