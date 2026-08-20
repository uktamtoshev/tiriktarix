/**
 * Kinozal videolari bilan ishlash.
 *
 * QOIDA. Video sahifa yuklanganda YUKLANMAYDI. YouTube plyeri ~1 MB skript va
 * o'nlab so'rov olib keladi — bu README dagi kuchsiz telefonlar talabiga
 * to'g'ri kelmaydi. Shuning uchun «fasad» naqshi: avval yengil surat (kadr),
 * bola «Ko'rish» ni bosgandan keyingina iframe paydo bo'ladi.
 *
 * HALOLLIK. `OWN` — bizning animatsiyamiz (to'g'ridan-to'g'ri video fayl),
 * `YOUTUBE` va `EXTERNAL` — tashqi manba. Interfeys bu ikkisini aralashtirmasligi
 * kerak: tashqi videoni «animatsiyamiz tayyor» deb ko'rsatish yolg'on bo'ladi.
 */

export type VideoSource =
  | {
      kind: "YOUTUBE";
      /** Video identifikatori — kadr va embed havolasi shundan yasaladi. */
      id: string;
      /** Yengil kadr: bitta jpg, lazy yuklanadi. */
      thumbnailUrl: string;
      /** youtube-nocookie: bosilmaguncha kuki qo'yilmaydi. */
      embedUrl: string;
      /** «YouTube'da ochish» tugmasi uchun. */
      watchUrl: string;
      platformUz: string;
    }
  | {
      kind: "EXTERNAL";
      url: string;
      /** Kartochkadagi nishon: «Mover.uz», «Vimeo»… */
      platformUz: string;
    }
  | {
      kind: "OWN";
      url: string;
      platformUz: string;
    };

/** Tanish platformalarni chiroyli nom bilan ko'rsatamiz. */
const PLATFORM_BY_HOST: { match: RegExp; label: string }[] = [
  { match: /(^|\.)mover\.uz$/, label: "Mover.uz" },
  { match: /(^|\.)vimeo\.com$/, label: "Vimeo" },
  { match: /(^|\.)dailymotion\.com$/, label: "Dailymotion" },
  { match: /(^|\.)rutube\.ru$/, label: "Rutube" },
];

/** To'g'ridan-to'g'ri video fayl — bu bizning animatsiyamiz. */
const OWN_FILE = /\.(mp4|webm|ogg|ogv|m4v)$/i;

/**
 * YouTube video identifikatori. Shorts ataylab qabul qilinmaydi: ular
 * vertikal klip, bizning kinozal formatimiz emas.
 */
function youtubeId(u: URL): string | null {
  const host = u.hostname.replace(/^www\./, "");
  if (host === "youtu.be") {
    const id = u.pathname.slice(1);
    return /^[\w-]{11}$/.test(id) ? id : null;
  }
  if (host === "youtube.com" || host === "m.youtube.com" || host === "youtube-nocookie.com") {
    if (u.pathname === "/watch") {
      const id = u.searchParams.get("v") ?? "";
      return /^[\w-]{11}$/.test(id) ? id : null;
    }
    const embed = u.pathname.match(/^\/embed\/([\w-]{11})$/);
    if (embed) return embed[1];
  }
  return null;
}

export function parseVideo(url: string | null | undefined): VideoSource | null {
  if (!url) return null;
  let u: URL;
  try {
    u = new URL(url);
  } catch {
    // Nisbiy havola — bizning faylimiz
    return OWN_FILE.test(url) ? { kind: "OWN", url, platformUz: "Tirik tarix" } : null;
  }

  const id = youtubeId(u);
  if (id) {
    return {
      kind: "YOUTUBE",
      id,
      thumbnailUrl: `https://i.ytimg.com/vi/${id}/hqdefault.jpg`,
      embedUrl: `https://www.youtube-nocookie.com/embed/${id}?rel=0`,
      watchUrl: `https://www.youtube.com/watch?v=${id}`,
      platformUz: "YouTube",
    };
  }

  if (OWN_FILE.test(u.pathname)) {
    return { kind: "OWN", url, platformUz: "Tirik tarix" };
  }

  const host = u.hostname.replace(/^www\./, "");
  const known = PLATFORM_BY_HOST.find((p) => p.match.test(host));
  return { kind: "EXTERNAL", url, platformUz: known?.label ?? host };
}

/** Tashqi manbami — 4-bosqich matnini halol yozish uchun kerak. */
export function isExternal(video: VideoSource | null): boolean {
  return video !== null && video.kind !== "OWN";
}

/**
 * Atributsiya uchun muallif nomi. `films.source` da «YouTube: Tarixchi.uz»
 * ko'rinishida saqlanadi, platforma esa alohida nishonda ko'rsatiladi —
 * shuning uchun takrorlanmasligi uchun prefiks olib tashlanadi.
 */
export function authorOf(source: string, video: VideoSource | null): string {
  if (!video) return source;
  const prefix = `${video.platformUz}:`;
  return source.toLowerCase().startsWith(prefix.toLowerCase())
    ? source.slice(prefix.length).trim()
    : source;
}
