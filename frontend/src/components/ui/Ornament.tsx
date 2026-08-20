/**
 * Zar bezaklar — o'yma hoshiya burchaklari, ajratgichlar va tug' (bayroq).
 * Hammasi currentColor bilan chiziladi, shuning uchun ota-element rangiga bo'ysunadi.
 */

/** Karta burchagidagi girih bezagi. */
export function CornerOrnament({
  position,
  className = "",
}: {
  position: "tl" | "tr" | "bl" | "br";
  className?: string;
}) {
  const rotate = { tl: 0, tr: 90, br: 180, bl: 270 }[position];
  const place = {
    tl: "left-1.5 top-1.5",
    tr: "right-1.5 top-1.5",
    bl: "bottom-1.5 left-1.5",
    br: "bottom-1.5 right-1.5",
  }[position];

  return (
    <svg
      aria-hidden
      viewBox="0 0 24 24"
      className={`pointer-events-none absolute h-5 w-5 ${place} ${className}`}
      style={{ transform: `rotate(${rotate}deg)` }}
      fill="none"
      stroke="currentColor"
      strokeWidth="1.2"
    >
      <path d="M1 9 V1 H9" />
      <path d="M4 12 V4 H12" strokeOpacity="0.55" />
      <path d="M1 1 L6 6" strokeOpacity="0.4" />
    </svg>
  );
}

/** To'rtala burchakka bezak — bitta chaqiruvda. */
export function CornerFrame({ className = "" }: { className?: string }) {
  return (
    <span aria-hidden className={`text-zar/60 ${className}`}>
      <CornerOrnament position="tl" />
      <CornerOrnament position="tr" />
      <CornerOrnament position="bl" />
      <CornerOrnament position="br" />
    </span>
  );
}

/** Bo'limlar orasidagi zar ajratgich — markazida sakkiz burchakli yulduz. */
export function Divider({ className = "" }: { className?: string }) {
  return (
    <div aria-hidden className={`flex items-center justify-center gap-4 ${className}`}>
      <span className="h-px w-full max-w-[22rem] bg-gradient-to-r from-transparent to-zar/45" />
      <svg viewBox="0 0 32 32" className="h-5 w-5 shrink-0 text-zar" fill="none" stroke="currentColor" strokeWidth="1.4">
        <path d="M16 2 L20 12 L30 16 L20 20 L16 30 L12 20 L2 16 L12 12 Z" />
        <circle cx="16" cy="16" r="3" strokeOpacity="0.6" />
      </svg>
      <span className="h-px w-full max-w-[22rem] bg-gradient-to-l from-transparent to-zar/45" />
    </div>
  );
}

/** Sakkiz burchakli yulduz — kichik urg'u belgisi. */
export function Star({ className = "" }: { className?: string }) {
  return (
    <svg aria-hidden viewBox="0 0 32 32" className={className} fill="none" stroke="currentColor" strokeWidth="1.5">
      <path d="M16 2 L20 12 L30 16 L20 20 L16 30 L12 20 L2 16 L12 12 Z" />
    </svg>
  );
}

/**
 * Girih mandala — hero fonidagi buyuk naqsh.
 * Chizmalar soni ataylab kam: element sekin aylanadi, shuning uchun har bir
 * kadrda qayta rasterizatsiya qilinadi — sust qurilmalarda ham yengil qolishi shart.
 */
export function GirihMandala({ className = "" }: { className?: string }) {
  const rays = Array.from({ length: 12 }, (_, i) => (i * 360) / 12);
  return (
    <svg
      aria-hidden
      viewBox="0 0 400 400"
      className={className}
      fill="none"
      stroke="currentColor"
      strokeWidth="0.8"
      shapeRendering="optimizeSpeed"
    >
      <circle cx="200" cy="200" r="196" strokeOpacity="0.35" />
      <circle cx="200" cy="200" r="120" strokeOpacity="0.32" />
      <circle cx="200" cy="200" r="34" strokeOpacity="0.5" />
      {rays.map((deg) => (
        <g key={deg} transform={`rotate(${deg} 200 200)`}>
          <path d="M200 4 L216 40 L200 72 L184 40 Z" strokeOpacity="0.3" />
          <path d="M200 80 L200 320" strokeOpacity="0.12" />
        </g>
      ))}
      {[22.5, 67.5].map((deg) => (
        <rect
          key={deg}
          x="128"
          y="128"
          width="144"
          height="144"
          strokeOpacity="0.22"
          transform={`rotate(${deg} 200 200)`}
        />
      ))}
    </svg>
  );
}
