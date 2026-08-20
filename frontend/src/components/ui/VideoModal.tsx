"use client";

import { useCallback, useEffect, useRef } from "react";
import { VideoSource } from "@/lib/video";
import { useT } from "@/lib/lang";

const YT_NOCOOKIE_ORIGIN = "https://www.youtube-nocookie.com";

const TXT = {
  ru: { close: "Закрыть", author: "Автор", openOnYoutube: "Открыть на YouTube" },
  uz: { close: "Yopish", author: "Muallif", openOnYoutube: "YouTube'da ochish" },
  uk: { close: "Закрити", author: "Автор", openOnYoutube: "Відкрити на YouTube" },
};

/**
 * Video oynasi. Iframe faqat shu oyna ochilganda paydo bo'ladi — sahifa
 * yuklanganda YouTube skriptlari umuman so'ralmaydi (fasad naqshi).
 *
 * youtube-nocookie ishlatiladi: bola videoni ko'rmaguncha kuzatuv kukisi
 * qo'yilmaydi. Bu bolalar mahsuloti, shuning uchun standart domen emas.
 *
 * Pleer holati YouTube IFrame API ning postMessage protokoli orqali kuzatiladi
 * (enablejsapi=1) — tashqi skript ham, npm paketi ham kerak emas. `onEnded`
 * video oxiriga yetganda (ENDED) BIR MARTA chaqiriladi; XP ning halolligini
 * baribir server tekshiradi (start/complete orasidagi vaqt).
 */
export default function VideoModal({
  video,
  titleUz,
  attributionUz,
  onClose,
  onEnded,
}: {
  video: VideoSource;
  titleUz: string;
  /** Kanal/muallif — atributsiya majburiy. */
  attributionUz: string;
  onClose: () => void;
  /** Video to'liq tugaganda (ENDED) bir marta chaqiriladi. */
  onEnded?: () => void;
}) {
  const t = useT(TXT);
  const closeRef = useRef<HTMLButtonElement>(null);
  const previouslyFocused = useRef<Element | null>(null);
  const iframeRef = useRef<HTMLIFrameElement>(null);
  const endedRef = useRef(false);
  const onEndedRef = useRef(onEnded);

  useEffect(() => {
    onEndedRef.current = onEnded;
  }, [onEnded]);

  // YouTube pleeri bilan «qo'l berishish»: iframe'ga listening yuboriladi,
  // javoban pleer holat xabarlarini (infoDelivery / onStateChange) yubora boshlaydi.
  useEffect(() => {
    if (video.kind !== "YOUTUBE") return;

    const post = (message: object) => {
      iframeRef.current?.contentWindow?.postMessage(JSON.stringify(message), YT_NOCOOKIE_ORIGIN);
    };
    const fireEnded = () => {
      if (endedRef.current) return;
      endedRef.current = true;
      onEndedRef.current?.();
    };
    let connected = false;
    const handshake = setInterval(() => {
      post({ event: "listening", id: "tt-film", channel: "widget" });
    }, 500);

    const onMessage = (e: MessageEvent) => {
      if (e.origin !== YT_NOCOOKIE_ORIGIN) return;
      let data: { event?: string; info?: number | { playerState?: number } };
      try {
        data = typeof e.data === "string" ? JSON.parse(e.data) : e.data;
      } catch {
        return;
      }
      if (!connected) {
        connected = true;
        clearInterval(handshake);
        post({ event: "command", func: "addEventListener", args: ["onStateChange"], id: "tt-film", channel: "widget" });
      }
      // 0 = ENDED (YouTube IFrame API holat kodi)
      if (data.event === "onStateChange" && data.info === 0) fireEnded();
      if (
        data.event === "infoDelivery" &&
        typeof data.info === "object" &&
        data.info?.playerState === 0
      ) {
        fireEnded();
      }
    };
    window.addEventListener("message", onMessage);
    return () => {
      clearInterval(handshake);
      window.removeEventListener("message", onMessage);
    };
  }, [video]);

  const handleKey = useCallback(
    (e: KeyboardEvent) => {
      if (e.key === "Escape") onClose();
    },
    [onClose]
  );

  useEffect(() => {
    previouslyFocused.current = document.activeElement;
    closeRef.current?.focus();
    document.addEventListener("keydown", handleKey);
    // Orqa fon aylanmasin
    const overflow = document.body.style.overflow;
    document.body.style.overflow = "hidden";
    return () => {
      document.removeEventListener("keydown", handleKey);
      document.body.style.overflow = overflow;
      (previouslyFocused.current as HTMLElement | null)?.focus?.();
    };
  }, [handleKey]);

  return (
    <div
      role="dialog"
      aria-modal="true"
      aria-label={titleUz}
      className="fixed inset-0 z-50 flex items-center justify-center bg-obsidian/90 p-4"
      onClick={onClose}
    >
      <div
        className="tt-rise w-full max-w-4xl overflow-hidden rounded-md border border-zar/40 bg-obsidian"
        onClick={(e) => e.stopPropagation()}
      >
        <div className="flex items-start justify-between gap-4 border-b border-steel-2 px-5 py-3">
          <div className="min-w-0">
            <h2 className="truncate font-display text-sm font-bold uppercase tracking-[0.06em] text-marble">
              {titleUz}
            </h2>
            <p className="mt-0.5 truncate text-[11px] text-dust">
              {video.platformUz} · {attributionUz}
            </p>
          </div>
          <button
            ref={closeRef}
            onClick={onClose}
            aria-label={t.close}
            className="shrink-0 rounded-sm border border-zar/40 px-2.5 py-1 font-display text-[11px] font-semibold uppercase tracking-[0.16em] text-zar transition-colors hover:border-zar hover:text-zar-bright"
          >
            {t.close} ✕
          </button>
        </div>

        {video.kind === "OWN" ? (
          <video
            src={video.url}
            controls
            autoPlay
            onEnded={() => {
              if (!endedRef.current) {
                endedRef.current = true;
                onEndedRef.current?.();
              }
            }}
            className="h-auto w-full bg-black"
          />
        ) : video.kind === "YOUTUBE" ? (
          <div className="relative aspect-video w-full bg-black">
            <iframe
              ref={iframeRef}
              src={`${video.embedUrl}&autoplay=1&enablejsapi=1${
                typeof window === "undefined" ? "" : `&origin=${encodeURIComponent(window.location.origin)}`
              }`}
              title={titleUz}
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowFullScreen
              referrerPolicy="strict-origin-when-cross-origin"
              className="absolute inset-0 h-full w-full"
            />
          </div>
        ) : null}

        {video.kind === "YOUTUBE" && (
          <div className="flex flex-wrap items-center justify-between gap-3 px-5 py-3 text-xs text-dust">
            <span>
              {t.author}: {attributionUz}
            </span>
            <a
              href={video.watchUrl}
              target="_blank"
              rel="noopener noreferrer"
              className="font-display text-[11px] font-semibold uppercase tracking-[0.16em] text-zar transition-colors hover:text-zar-bright"
            >
              {t.openOnYoutube} →
            </a>
          </div>
        )}
      </div>
    </div>
  );
}
