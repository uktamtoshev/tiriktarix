"use client";

import { ReactNode } from "react";
import { usePathname } from "next/navigation";

/**
 * Sayt qobig'ining ko'rinishini boshqaradi: boshqaruv paneli (/admin) o'z
 * qobig'iga ega, shuning uchun u yerda sayt sarlavhasi, maskot va futer
 * ko'rsatilmaydi. Bolalar interfeysi va ish quroli aralashmasligi kerak.
 */
export default function SiteChrome({ children }: { children: ReactNode }) {
  const pathname = usePathname();
  if (pathname.startsWith("/admin")) {
    return null;
  }
  return <>{children}</>;
}
