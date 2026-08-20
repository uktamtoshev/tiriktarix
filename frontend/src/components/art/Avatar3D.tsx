"use client";

import { useState } from "react";
import { EquipSlot, Gender } from "@/lib/api";
import { ArchetypeCode, defaultArchetype, hasArtwork } from "@/lib/archetypes";
import WarriorFigure from "./WarriorFigure";
import { useT } from "@/lib/lang";

/**
 * 3D-qahramon: Blender-da qatlamlab render qilingan PNG/WEBP-lar
 * (frontend/public/avatar3d/, tools/blender/render_all.py yasaydi).
 *
 * Har tip uchun bazaviy figura va 32 jihozning har biri ALOHIDA rasm bo'lib,
 * bitta kamera bilan renderlangan — shuning uchun ular xuddi SVG qatlamlari
 * kabi ustma-ust qo'yiladi: tug' → figura → sovut → dubulg'a → qurol →
 * qalqon → bezak. Kombinatsiyalar renderlanmaydi.
 *
 * Rasm yuklanmasa (papka hali generatsiya qilinmagan, tarmoq yo'q) —
 * komponent butunlay SVG-siluetga (WarriorFigure) qaytadi, hech narsa
 * sinmaydi. Chibi-kartochkalar bunga aloqasiz — ular doim SVG.
 */

type Equipped = Partial<Record<EquipSlot, string>>;

/** SVG bilan bir xil qatlam tartibi (style.md / items.py LAYER_ORDER). */
const SLOT_LAYERS: EquipSlot[] = ["BODY", "HEAD", "WEAPON", "SHIELD", "ACCESSORY"];

const TXT = {
  ru: { yourHero: "Твой герой" },
  uz: { yourHero: "Sening qahramoning" },
  uk: { yourHero: "Твій герой" },
};

export default function Avatar3D({
  gender = "MALE",
  archetype,
  equipped = {},
  size = 200,
  className = "",
}: {
  gender?: Gender | null;
  archetype?: string | null;
  equipped?: Equipped;
  size?: number;
  className?: string;
}) {
  const t = useT(TXT);
  // Chizmasi yo'q kod kelsa — standart tip: bo'sh figura ko'rsatmaymiz.
  const code: ArchetypeCode = hasArtwork(archetype) ? archetype : defaultArchetype(gender);
  const [broken, setBroken] = useState(false);
  const [prevCode, setPrevCode] = useState(code);
  // Tip almashsa — rasm to'plami yangi, 3D ni qaytadan sinaymiz
  if (prevCode !== code) {
    setPrevCode(code);
    setBroken(false);
  }

  if (broken) {
    return (
      <WarriorFigure
        gender={gender}
        archetype={code}
        equipped={equipped}
        size={size}
        className={className}
      />
    );
  }

  const dir = `/avatar3d/${code}`;
  const layers: string[] = [];
  if (equipped.ACCESSORY === "tug") layers.push(`${dir}/items/tug`);
  layers.push(`${dir}/base`);
  for (const slot of SLOT_LAYERS) {
    const item = equipped[slot];
    if (item && !(slot === "ACCESSORY" && item === "tug")) {
      layers.push(`${dir}/items/${item}`);
    }
  }

  return (
    <div
      className={`relative ${className}`}
      style={{ width: size, height: (size * 3) / 2 }}
      role="img"
      aria-label={t.yourHero}
    >
      {layers.map((src) => (
        <picture key={src}>
          <source srcSet={`${src}.webp`} type="image/webp" />
          <img
            src={`${src}.png`}
            alt=""
            draggable={false}
            className="absolute inset-0 h-full w-full select-none"
            onError={() => setBroken(true)}
          />
        </picture>
      ))}
    </div>
  );
}
