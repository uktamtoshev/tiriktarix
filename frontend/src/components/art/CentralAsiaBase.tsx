"use client";

/**
 * Markaziy Osiyo asos xaritasi — o'zgarmas qatlam.
 *
 * Mo'ljal (backend bilan bir xil): viewBox "0 0 1000 700",
 *   x = (uzunlik° − 55) × 50,  y = (47° − kenglik°) × 58.333.
 * Shu sabab davr qatlamlari (hudud, shahar, yo'l) hech qanday hisobsiz
 * shu koordinatalarga tushadi.
 *
 * Suv, cho'l va tog'lar sxematik chizilgan: bu tarixiy atlas emas, mo'ljal fon.
 */

import { useT } from "@/lib/lang";

const GRATICULE_X = [0, 250, 500, 750]; // 55°, 60°, 65°, 70° Sh
const GRATICULE_Y = [116.7, 408.3]; // 45°, 40° Shim

const TXT = {
  ru: {
    qizilqum: "КЫЗЫЛКУМ",
    qoraqum: "КАРАКУМЫ",
    orol: "АРАЛЬСКОЕ МОРЕ",
    amudaryo: "АМУДАРЬЯ",
    sirdaryo: "СЫРДАРЬЯ",
    tyanshan: "ТЯНЬ-ШАНЬ",
    pomir: "ПАМИР",
  },
  uz: {
    qizilqum: "QIZILQUM",
    qoraqum: "QORAQUM",
    orol: "OROL",
    amudaryo: "AMUDARYO",
    sirdaryo: "SIRDARYO",
    tyanshan: "TYANSHAN",
    pomir: "POMIR",
  },
  uk: {
    qizilqum: "КИЗИЛКУМИ",
    qoraqum: "КАРАКУМИ",
    orol: "АРАЛЬСЬКЕ МОРЕ",
    amudaryo: "АМУДАР'Я",
    sirdaryo: "СИРДАР'Я",
    tyanshan: "ТЯНЬ-ШАНЬ",
    pomir: "ПАМІР",
  },
};

export default function CentralAsiaBase() {
  const t = useT(TXT);
  return (
    <g aria-hidden>
      {/* Yer sirti */}
      <rect x="0" y="0" width="1000" height="700" fill="#0d121b" />

      {/* Meridian va parallellar to'ri */}
      <g stroke="#c8a247" strokeOpacity="0.10" strokeWidth="1">
        {GRATICULE_X.map((x) => (
          <line key={`x${x}`} x1={x} y1="0" x2={x} y2="700" />
        ))}
        {GRATICULE_Y.map((y) => (
          <line key={`y${y}`} x1="0" y1={y} x2="1000" y2={y} />
        ))}
      </g>

      {/* Cho'llar — Qizilqum va Qoraqum */}
      <g fill="#161c28" fillOpacity="0.9">
        <path d="M300 300 L470 292 L580 330 L624 404 L500 442 L372 412 L306 356 Z" />
        <path d="M236 424 L360 436 L438 486 L418 566 L286 552 L214 486 Z" />
      </g>
      <g fill="#c8a247" fillOpacity="0.28" fontSize="13" letterSpacing="4" fontFamily="var(--font-inter), sans-serif">
        <text x="404" y="376" textAnchor="middle">{t.qizilqum}</text>
        <text x="316" y="500" textAnchor="middle">{t.qoraqum}</text>
      </g>

      {/* Orol dengizi (1960-yilgacha bo'lgan chegara) */}
      <ellipse
        cx="272"
        cy="120"
        rx="58"
        ry="92"
        transform="rotate(-22 272 120)"
        fill="#24405e"
        fillOpacity="0.55"
        stroke="#4a7ba8"
        strokeOpacity="0.5"
        strokeWidth="1.2"
      />
      <text
        x="272"
        y="124"
        textAnchor="middle"
        fill="#9fc0e0"
        fillOpacity="0.75"
        fontSize="12"
        letterSpacing="3"
        fontFamily="var(--font-inter), sans-serif"
      >
        {t.orol}
      </text>

      {/* Daryolar */}
      <g fill="none" stroke="#4a7ba8" strokeOpacity="0.7" strokeLinecap="round">
        {/* Amudaryo */}
        <path
          d="M880 596 L800 578 L700 580 L614 571 L510 536 L430 459 L330 380 L250 300 L228 258 L206 196"
          strokeWidth="3.4"
        />
        {/* Sirdaryo */}
        <path
          d="M930 396 L825 379 L731 392 L690 340 L670 270 L600 200 L450 120 L336 78"
          strokeWidth="3"
        />
        {/* Zarafshon — Samarqand va Buxoro daryosi */}
        <path d="M712 448 L640 434 L598 429 L520 424 L471 422 L412 432" strokeWidth="2" strokeOpacity="0.5" />
      </g>
      <g fill="#9fc0e0" fillOpacity="0.6" fontSize="11" letterSpacing="2" fontFamily="var(--font-inter), sans-serif">
        <text x="470" y="486" transform="rotate(-32 470 486)">{t.amudaryo}</text>
        <text x="560" y="150" transform="rotate(-24 560 150)">{t.sirdaryo}</text>
      </g>

      {/* Tog' tizmalari — Tyanshan (shim.-sharq) va Pomir (jan.-sharq) */}
      <g fill="none" stroke="#5b6478" strokeOpacity="0.65" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
        <path d="M760 250 l16 -16 l16 16 M800 262 l16 -16 l16 16 M840 240 l16 -16 l16 16 M880 258 l16 -16 l16 16" />
        <path d="M790 300 l16 -16 l16 16 M830 288 l16 -16 l16 16 M870 306 l16 -16 l16 16" />
        <path d="M812 470 l16 -16 l16 16 M852 458 l16 -16 l16 16 M892 476 l16 -16 l16 16" />
        <path d="M840 522 l16 -16 l16 16 M880 510 l16 -16 l16 16" />
      </g>
      <g fill="#8f98ab" fillOpacity="0.65" fontSize="11" letterSpacing="3" fontFamily="var(--font-inter), sans-serif">
        <text x="880" y="222" textAnchor="middle">{t.tyanshan}</text>
        <text x="884" y="560" textAnchor="middle">{t.pomir}</text>
      </g>
    </g>
  );
}
