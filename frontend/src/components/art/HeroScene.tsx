"use client";

import { useEffect, useRef, useState } from "react";
import { motion, useReducedMotion, useScroll, useTransform } from "framer-motion";
import Warriors from "./Warriors";
import { GirihMandala } from "@/components/ui/Ornament";

/** Havodagi chang zarralari — mash'al yorug'idagi to'zon. */
const MOTES = [
  { left: "8%", bottom: "12%", size: 3, delay: 0, dur: 16 },
  { left: "18%", bottom: "6%", size: 2, delay: 3, dur: 19 },
  { left: "27%", bottom: "20%", size: 4, delay: 7, dur: 14 },
  { left: "38%", bottom: "9%", size: 2, delay: 1.5, dur: 21 },
  { left: "49%", bottom: "16%", size: 3, delay: 9, dur: 17 },
  { left: "61%", bottom: "7%", size: 2, delay: 4.5, dur: 20 },
  { left: "70%", bottom: "22%", size: 4, delay: 11, dur: 15 },
  { left: "80%", bottom: "10%", size: 3, delay: 6, dur: 18 },
  { left: "90%", bottom: "18%", size: 2, delay: 2, dur: 22 },
];

/**
 * «Sarhad» — lending sahnasi.
 *
 * Qatlamlar (orqadan oldinga): osmon nuri → girih mandalasi → uzoq tog'lar va
 * qo'shin → yaqin tizma, jangchilar va yer → chang → vinyetka.
 *
 * UNUMDORLIK. Parallaks atigi ikkita guruhga (uzoq/yaqin) qo'llanadi: har bir
 * qatlamni alohida surish kompozitorda o'nlab katta qatlam hosil qilardi va
 * skrollda sahifa qotib qolardi. Kichik ekranda va `prefers-reduced-motion`
 * bo'lganda parallaks butunlay o'chadi — arzon telefon uchun bu muhim.
 */
export default function HeroScene() {
  const ref = useRef<HTMLDivElement>(null);
  const reduce = useReducedMotion();
  const [wide, setWide] = useState(false);
  const { scrollYProgress } = useScroll({ target: ref, offset: ["start start", "end start"] });

  useEffect(() => {
    const mq = window.matchMedia("(min-width: 1024px)");
    const apply = () => setWide(mq.matches);
    apply();
    mq.addEventListener("change", apply);
    return () => mq.removeEventListener("change", apply);
  }, []);

  const animate = wide && !reduce;

  const yMandala = useTransform(scrollYProgress, [0, 1], ["0%", animate ? "18%" : "0%"]);
  const yFar = useTransform(scrollYProgress, [0, 1], ["0%", animate ? "10%" : "0%"]);
  const yNear = useTransform(scrollYProgress, [0, 1], ["0%", animate ? "-12%" : "0%"]);
  const opacity = useTransform(scrollYProgress, [0, 0.85], [1, animate ? 0.15 : 1]);

  return (
    <div ref={ref} aria-hidden className="pointer-events-none absolute inset-0 overflow-hidden">
      {/* Osmon — tong oldidan mash'al nuri; yorug'lik ufq chizig'ida to'planadi,
          shunda jangchilar silueti qora bo'lib ajralib turadi. */}
      <div
        className="absolute inset-0"
        style={{
          background:
            "radial-gradient(ellipse 58% 26% at 50% 66%, rgba(255,236,186,0.42) 0%, rgba(200,162,71,0.20) 42%, transparent 76%)," +
            "linear-gradient(180deg, #04060a 0%, #080b12 34%, #141a27 58%, #232a3b 68%, #10151f 78%, #0a0d13 100%)",
        }}
      />

      {/* Girih mandalasi. Aylanish faqat katta ekranda — u yerda quvvat yetadi. */}
      <motion.div
        style={{ y: yMandala, opacity }}
        className="absolute left-1/2 top-[4%] h-[min(140vw,760px)] w-[min(140vw,760px)] -translate-x-1/2"
      >
        <div className={`h-full w-full text-zar/40 ${animate ? "tt-spin-slow" : ""}`}>
          <GirihMandala className="h-full w-full" />
        </div>
      </motion.div>

      {/* ===== Uzoq reja: tog'lar va ufqdagi qo'shin — bitta qatlamda ===== */}
      <motion.div style={{ y: yFar }} className="absolute inset-0">
        <svg
          viewBox="0 0 1600 300"
          preserveAspectRatio="xMidYMax slice"
          className="absolute bottom-[30%] left-0 h-[30%] w-full text-[#151b28]"
          fill="currentColor"
        >
          <path d="M0 300 L0 214 L142 158 L268 206 L396 96 L512 178 L624 140 L742 212 L868 118 L986 190 L1104 152 L1238 224 L1352 130 L1478 196 L1600 164 L1600 300 Z" />
        </svg>
        <div className="absolute bottom-[30%] left-0 h-[14%] w-full text-[#0b0f18]">
          <Warriors layer="far" className="h-full w-full" />
        </div>
      </motion.div>

      {/* ===== Yaqin reja: tizma, jangchilar va yer — bitta qatlamda ===== */}
      <motion.div style={{ y: yNear }} className="absolute inset-0">
        <svg
          viewBox="0 0 1600 260"
          preserveAspectRatio="xMidYMax slice"
          className="absolute bottom-[16%] left-0 h-[22%] w-full text-[#07090f]"
          fill="currentColor"
        >
          <path d="M0 260 L0 186 L182 118 L318 176 L488 92 L642 168 L790 124 L946 182 L1102 106 L1268 170 L1420 128 L1600 178 L1600 260 Z" />
        </svg>
        <div className="absolute bottom-[16%] left-0 h-[25%] w-full text-[#020407]">
          <Warriors layer="near" className="h-full w-full" />
        </div>
        <div className="absolute bottom-0 left-0 h-[16%] w-full bg-[linear-gradient(180deg,#020407,#05070c_45%,#0a0d13)]" />
      </motion.div>

      {/* Chang zarralari — faqat katta ekranda */}
      {animate &&
        MOTES.map((m, i) => (
          <span
            key={i}
            className="tt-mote absolute rounded-full bg-zar-bright/70"
            style={{
              left: m.left,
              bottom: m.bottom,
              width: m.size,
              height: m.size,
              animationDelay: `${m.delay}s`,
              animationDuration: `${m.dur}s`,
            }}
          />
        ))}

      {/* Yer tomon qorayish — matn o'qilishi uchun */}
      <div className="absolute inset-0 bg-[radial-gradient(ellipse_82%_58%_at_50%_34%,transparent_18%,rgba(4,6,10,0.66)_100%)]" />
      <div className="absolute inset-x-0 bottom-0 h-20 bg-gradient-to-b from-transparent to-obsidian" />
    </div>
  );
}
