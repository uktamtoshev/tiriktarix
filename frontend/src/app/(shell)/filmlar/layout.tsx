import type { Metadata } from "next";
import { ReactNode } from "react";

export const metadata: Metadata = {
  title: "Кинозал — Tirik tarix",
  description:
    "Исторические ролики и документальные фильмы по эпохам. Каждый сценарий рождается из проверенной карточки факта.",
};

export default function FilmlarLayout({ children }: { children: ReactNode }) {
  return children;
}
