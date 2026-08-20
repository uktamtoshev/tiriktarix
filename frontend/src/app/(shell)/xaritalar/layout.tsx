import type { Metadata } from "next";
import { ReactNode } from "react";

export const metadata: Metadata = {
  title: "Карты эпох — Tirik tarix",
  description:
    "Выбери эпоху — границы сдвигаются, города загораются, прочерчиваются пути походов.",
};

export default function XaritalarLayout({ children }: { children: ReactNode }) {
  return children;
}
