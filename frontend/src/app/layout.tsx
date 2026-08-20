import type { Metadata } from "next";
import { Inter, Cinzel, Cormorant_Garamond } from "next/font/google";
import "./globals.css";
import Header from "@/components/Header";
import Mascot from "@/components/Mascot";
import Footer from "@/components/Footer";
import SiteChrome from "@/components/SiteChrome";
import { LangProvider } from "@/lib/lang";
import { CountryProvider } from "@/lib/country";

/** Interfeys va matn — Inter (oʻzbek lotini uchun latin-ext). */
const inter = Inter({
  variable: "--font-inter",
  subsets: ["latin", "latin-ext"],
});

/**
 * Displey — Cinzel: rim monumental yozuvlari, «toshga oʻyilgan» taassurot.
 * Faqat ishlatilayotgan qalinliklar yuklanadi (600 va 700) — sust internetda
 * har bir ortiqcha shrift fayli sahifa ochilishini sekinlashtiradi.
 */
const cinzel = Cinzel({
  variable: "--font-cinzel",
  subsets: ["latin", "latin-ext"],
  weight: ["600", "700"],
});

/** Qahramon iqtiboslari — Cormorant Garamond, faqat kursiv 400. */
const cormorant = Cormorant_Garamond({
  variable: "--font-cormorant",
  subsets: ["latin", "latin-ext"],
  weight: ["400"],
  style: ["italic"],
});

/*
  Sarlavha va tavsif SERVERDA yoziladi, til tanlovi esa localStorage'da —
  server uni bilmaydi. Shuning uchun bu yerda sukut bo'yicha til (ruscha)
  turadi: havola ulashilganda va qidiruv tizimida aynan shu ko'rinadi.
  Nom «Tirik tarix» — loyihaning o'z nomi, tarjima qilinmaydi.
*/
const TITLE = "Tirik tarix — Поговори с предками";
const DESCRIPTION =
  "Изучай историю Узбекистана в живом диалоге: беседы с предками, исторические события, карты эпох, документальные фильмы, испытания и библиотека-сокровищница. Проект полностью бесплатный.";

export const metadata: Metadata = {
  title: TITLE,
  description: DESCRIPTION,
  icons: {
    icon: [{ url: "/logo/tirik-tarix-emblem-512.png", type: "image/png", sizes: "512x512" }],
    apple: "/logo/tirik-tarix-emblem-512.png",
  },
  // Havola ulashilganda logotip ko'rinadi — belgi va yozuv o'z krem fonida
  openGraph: {
    title: TITLE,
    description: DESCRIPTION,
    images: [{ url: "/logo/tirik-tarix-og.png", width: 1200, height: 630, alt: "Tirik tarix" }],
    locale: "ru_RU",
    alternateLocale: ["uz_UZ"],
    type: "website",
  },
  twitter: {
    card: "summary_large_image",
    title: TITLE,
    description: DESCRIPTION,
    images: ["/logo/tirik-tarix-og.png"],
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    /*
      lang="ru" — sukut bo'yicha til. Saqlangan tanlov boshqacha bo'lsa,
      LangProvider birinchi chizilishdan keyin uni almashtiradi: localStorage
      ni render paytida o'qib bo'lmaydi, aks holda gidratatsiya buziladi.
    */
    <html
      lang="ru"
      className={`${inter.variable} ${cinzel.variable} ${cormorant.variable} h-full antialiased`}
    >
      <body className="flex min-h-full flex-col bg-obsidian font-sans text-parchment">
        <LangProvider>
          <CountryProvider>
            {/* Boshqaruv panelida (/admin) sayt qobig'i ko'rsatilmaydi */}
            <SiteChrome>
              <Header />
            </SiteChrome>
            <main className="flex-1">{children}</main>
            <SiteChrome>
              <Mascot />
              <Footer />
            </SiteChrome>
          </CountryProvider>
        </LangProvider>
      </body>
    </html>
  );
}
