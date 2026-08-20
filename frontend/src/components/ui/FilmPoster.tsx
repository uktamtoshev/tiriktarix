import { Film } from "@/lib/api";
import { parseVideo } from "@/lib/video";

/** Kadr teshiklari — plyonka hissi uchun. */
const PERFS = [10, 24, 38, 52, 66, 80, 94];

const KIND_TINT: Record<Film["kind"], string> = {
  SHORT: "rgba(200,162,71,0.16)",
  DOC: "rgba(46,138,135,0.16)",
  FEATURE: "rgba(53,80,122,0.22)",
};

/**
 * Afisha — zar ramkadagi kino plakati.
 * Video biriktirilmagan seriyada rasm o'rniga: qorong'i plita, plyonka
 * teshiklari va markazda katta belgi.
 *
 * Video bo'lsa — ustiga haqiqiy kadr qo'yiladi. Kadr `loading="lazy"`: ro'yxatda
 * o'nlab afisha bor, hammasini birdan yuklash kuchsiz telefonni cho'ktiradi.
 * Plyer esa bu yerda umuman yuklanmaydi (fasad naqshi) — faqat surat.
 */
export default function FilmPoster({
  film,
  active = false,
}: {
  film: Film;
  active?: boolean;
}) {
  const video = parseVideo(film.videoUrl);
  const frame = video?.kind === "YOUTUBE" ? video.thumbnailUrl : null;

  return (
    <div
      className={`relative aspect-[2/3] w-full overflow-hidden rounded-sm border transition-all duration-500 ease-tt ${
        active ? "border-zar/80" : "border-zar/25 group-hover:border-zar/60"
      }`}
      style={{
        background: `radial-gradient(ellipse 70% 50% at 50% 38%, ${KIND_TINT[film.kind]}, transparent 70%), linear-gradient(168deg, #1a2130, #0a0d13)`,
      }}
    >
      {/* Haqiqiy kadr — video biriktirilgan seriyada */}
      {frame && (
        <>
          {/* eslint-disable-next-line @next/next/no-img-element -- tashqi CDN, next/image sozlanmagan */}
          <img
            src={frame}
            alt=""
            loading="lazy"
            decoding="async"
            aria-hidden
            className="absolute inset-0 h-full w-full object-cover opacity-70"
          />
          <span
            aria-hidden
            className="absolute inset-0 bg-gradient-to-t from-obsidian via-obsidian/45 to-obsidian/25"
          />
        </>
      )}

      {/* Plyonka chetlari */}
      <svg
        aria-hidden
        viewBox="0 0 100 150"
        preserveAspectRatio="none"
        className="absolute inset-0 h-full w-full"
      >
        <rect x="0" y="0" width="7" height="150" fill="#05070b" fillOpacity="0.85" />
        <rect x="93" y="0" width="7" height="150" fill="#05070b" fillOpacity="0.85" />
        {PERFS.map((p) => (
          <g key={p} fill="#c8a247" fillOpacity="0.35">
            <rect x="2" y={p * 1.5 + 2} width="3" height="6" rx="0.8" />
            <rect x="95" y={p * 1.5 + 2} width="3" height="6" rx="0.8" />
          </g>
        ))}
      </svg>

      {/* Markaziy belgi: kadr bo'lsa — «o'ynatish» uchburchagi, aks holda emoji */}
      <span
        aria-hidden
        className={`absolute left-1/2 top-[38%] -translate-x-1/2 -translate-y-1/2 drop-shadow-[0_6px_20px_rgba(0,0,0,0.9)] transition-transform duration-500 ease-tt ${
          frame ? "" : "text-5xl sm:text-6xl"
        } ${active ? "scale-110" : "group-hover:scale-110"}`}
      >
        {frame ? (
          <span className="grid h-12 w-12 place-items-center rounded-full border border-zar/70 bg-obsidian/75 sm:h-14 sm:w-14">
            <svg viewBox="0 0 24 24" className="h-5 w-5 sm:h-6 sm:w-6" fill="#f3d98b">
              <path d="M8 5.5 L19 12 L8 18.5 Z" />
            </svg>
          </span>
        ) : (
          (film.posterEmoji ?? "🎬")
        )}
      </span>

      {/* Pastki nur — proyektor yorug'i */}
      <span
        aria-hidden
        className="absolute inset-x-0 bottom-0 h-2/5 bg-gradient-to-t from-obsidian via-obsidian/70 to-transparent"
      />
    </div>
  );
}
