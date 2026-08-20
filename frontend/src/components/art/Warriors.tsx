/**
 * Ufqdagi jangchilar — hero sahnasining pastki qatlami.
 * Hammasi siluet: bitta rang bilan to'ldiriladi (currentColor),
 * shuning uchun qatlamni uzoq/yaqin qilib qo'yish oson.
 * Mo'ljal: 0..200 balandlik, oyoqlar y=200 chizig'ida.
 */

/** Piyoda jangchi: dubulg'a, kamzul, nayza. */
function FootSoldier({ x, s = 1, spear = true }: { x: number; s?: number; spear?: boolean }) {
  return (
    <g transform={`translate(${x} 0) scale(${s}) translate(0 ${(1 - 1 / s) * 0})`}>
      <g transform={`translate(0 ${200 - 200 * s})`}>
        {/* nayza */}
        {spear && (
          <>
            <rect x="41" y="62" width="2.6" height="138" />
            <path d="M42.3 44 L47 64 L37.6 64 Z" />
          </>
        )}
        {/* dubulg'a uchi */}
        <path d="M20 92 L21.4 92 L20.7 82 Z" />
        {/* dubulg'a */}
        <path d="M9 114 C9 100 31 100 31 114 L31 110 C31 97 9 97 9 110 Z" />
        {/* yuz soyasi */}
        <path d="M12 114 C12 124 28 124 28 114 Z" />
        {/* yelka va yopinchiq */}
        <path d="M4 200 L9 148 C9 132 31 132 31 148 L36 200 Z" />
        {/* yelkabandlar */}
        <ellipse cx="8" cy="146" rx="7" ry="5" />
        <ellipse cx="32" cy="146" rx="7" ry="5" />
        {/* qilich yoni */}
        <path d="M33 160 L44 190 L41 191 L31 164 Z" />
      </g>
    </g>
  );
}

/** Tug'bardor: uzun tayoq, bayroq va yol (ot yoli) — qo'shin belgisi. */
function Standard({ x, s = 1 }: { x: number; s?: number }) {
  return (
    <g transform={`translate(${x} 0)`}>
      <g transform={`translate(0 ${200 - 200 * s}) scale(${s})`}>
        <rect x="20" y="20" width="3" height="180" />
        {/* uchidagi yarim oy va yulduz */}
        <path d="M21.5 20 L21.5 6" strokeWidth="0" />
        <path d="M21.5 4 L24.5 12 L21.5 10 L18.5 12 Z" />
        {/* bayroq */}
        <path d="M23 26 L64 34 C58 44 58 52 64 62 L23 54 Z" />
        {/* yol — ot qili */}
        <path d="M18 26 C14 40 12 54 14 68 M21.5 26 C21 42 20 56 22 70 M25 26 C29 40 31 54 29 68" strokeWidth="1.6" stroke="currentColor" fill="none" opacity="0.85" />
      </g>
    </g>
  );
}

/** Otliq kamonchi — dashtning asosiy qiyofasi. */
function Horseman({ x, s = 1 }: { x: number; s?: number }) {
  return (
    <g transform={`translate(${x} 0)`}>
      <g transform={`translate(0 ${200 - 200 * s}) scale(${s})`}>
        {/* ot tanasi */}
        <path d="M22 150 C30 138 74 138 84 150 C90 158 88 168 82 170 L26 170 C18 168 16 158 22 150 Z" />
        {/* bo'yin va bosh */}
        <path d="M80 146 C86 128 94 118 104 112 L112 104 L118 108 L112 118 C106 126 98 136 96 150 Z" />
        <path d="M104 108 L101 98 L106 104 Z" />
        <path d="M110 106 L109 96 L114 103 Z" />
        {/* dum */}
        <path d="M22 150 C10 152 4 166 6 182 C12 172 16 164 24 162 Z" />
        {/* oyoqlar */}
        <path d="M30 168 L26 200 L33 200 L37 168 Z" />
        <path d="M44 168 L44 200 L51 200 L51 168 Z" />
        <path d="M66 168 L64 200 L71 200 L73 168 Z" />
        <path d="M78 168 L80 200 L87 200 L85 168 Z" />
        {/* chavandoz */}
        <path d="M44 140 L46 116 C46 106 62 106 62 116 L64 140 Z" />
        <ellipse cx="54" cy="98" rx="9" ry="10" />
        <path d="M45 100 C45 88 63 88 63 100 L63 96 C63 85 45 85 45 96 Z" />
        <path d="M53.4 85 L54.8 85 L54.1 75 Z" />
        {/* kamon */}
        <path d="M34 104 C26 112 26 130 34 138" fill="none" stroke="currentColor" strokeWidth="3" />
        <path d="M34 104 L34 138" fill="none" stroke="currentColor" strokeWidth="1.2" opacity="0.8" />
      </g>
    </g>
  );
}

/**
 * Ufq qo'shini — parallaks uchun ikki qatlam:
 * `far` — uzoq, mayda va xira; `near` — yaqin, yirik va to'q.
 */
export default function Warriors({
  layer,
  className = "",
}: {
  layer: "far" | "near";
  className?: string;
}) {
  if (layer === "far") {
    return (
      <svg
        aria-hidden
        viewBox="0 0 1600 200"
        preserveAspectRatio="xMidYMax slice"
        className={className}
        fill="currentColor"
      >
        <FootSoldier x={90} s={0.5} />
        <Horseman x={180} s={0.46} />
        <FootSoldier x={330} s={0.48} />
        <Standard x={420} s={0.62} />
        <FootSoldier x={500} s={0.5} />
        <FootSoldier x={560} s={0.46} spear={false} />
        <Horseman x={700} s={0.5} />
        <FootSoldier x={880} s={0.47} />
        <Standard x={960} s={0.58} />
        <FootSoldier x={1040} s={0.5} />
        <Horseman x={1140} s={0.45} />
        <FootSoldier x={1310} s={0.49} />
        <FootSoldier x={1380} s={0.45} spear={false} />
        <Standard x={1450} s={0.6} />
      </svg>
    );
  }

  return (
    <svg
      aria-hidden
      viewBox="0 0 1600 200"
      preserveAspectRatio="xMidYMax slice"
      className={className}
      fill="currentColor"
    >
      <FootSoldier x={40} s={0.95} />
      <Standard x={140} s={1.15} />
      <FootSoldier x={230} s={0.88} spear={false} />
      <Horseman x={330} s={0.92} />
      <FootSoldier x={520} s={0.9} />
      <FootSoldier x={1010} s={0.86} />
      <Horseman x={1120} s={0.95} />
      <Standard x={1330} s={1.1} />
      <FootSoldier x={1430} s={0.92} />
      <FootSoldier x={1520} s={0.85} spear={false} />
    </svg>
  );
}
