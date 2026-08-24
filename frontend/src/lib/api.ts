// Tirik tarix backend API mijozi.

export const API_URL = process.env.NEXT_PUBLIC_API_URL ?? "http://localhost:8080";

export type Era = {
  id: number;
  code: string;
  nameUz: string;
  ordinal: number;
  yearFrom: number | null;
  yearTo: number | null;
  descriptionUz: string;
  biographyUz: string | null;
  biographySources: string | null;
  biographyVerified: boolean;
  /** Ruscha matn (V102). null — interfeys o'zbekcha aslini ko'rsatadi. */
  nameRu: string | null;
  descriptionRu: string | null;
};

export type Hero = {
  id: number;
  slug: string;
  nameUz: string;
  titleUz: string;
  birthYear: number | null;
  deathYear: number | null;
  /** Ajdod mansub davr (eras.id). Oraliq davr shaxslarida null bo'lishi mumkin. */
  eraId: number | null;
  bioUz: string;
  greetingUz: string;
  portraitEmoji: string;
  /** Haqiqiy tasvir (bo'lsa). O'rta asr ajdodlarida fotosurat bo'lmaydi. */
  portraitUrl: string | null;
  portraitKind: "PHOTO" | "MINIATURE" | "ARTWORK" | null;
  portraitCaptionUz: string | null;
  portraitSource: string | null;
  /**
   * Portret ostidagi qisqacha ma'lumot (V90). JSON qatori:
   * {"rows": [{"label", "value"}], "source"}. null — karta chizilmaydi.
   */
  summaryUz: string | null;
  /** Tarjimai hol matni (V36). `## sarlavha` bloklariga bo'lingan. */
  biographyUz: string | null;
  /** Manbalar JSON qatori: [{n, title, url, note}]. */
  biographySources: string | null;
  /** Metodist tekshiruvidan o'tganmi. */
  biographyVerified: boolean;
  /**
   * Suhbat panelidagi to'liq bo'yli kadr (V102). `portraitUrl` — medalyondagi
   * yaqin kadr, bu esa boshqa fayl. null — medalyon tasviri ishlatiladi.
   */
  portraitFullUrl: string | null;
  /** Medalyon rangi (V102). null — «zar». */
  accent: "zar" | "feruza" | "nil" | "qon" | null;
  /** Ruscha matn (V102). null — interfeys o'zbekcha aslini ko'rsatadi. */
  nameRu: string | null;
  titleRu: string | null;
  bioRu: string | null;
  portraitCaptionRu: string | null;
};

export type HistoricalEvent = {
  id: number;
  eraId: number;
  titleUz: string;
  yearFrom: number;
  yearTo: number | null;
  locationUz: string | null;
  descriptionUz: string;
  /** Ruscha matn (V102). null — interfeys o'zbekcha aslini ko'rsatadi. */
  titleRu: string | null;
  descriptionRu: string | null;
  locationRu: string | null;
};

export type FactCard = {
  id: number;
  heroId: number | null;
  eraId: number | null;
  topicUz: string;
  /** Tayyor savol (flesh-karta uchun). Eski yozuvlarda bo'lmasligi mumkin. */
  questionUz: string | null;
  factUz: string;
  /** «Batafsil» matni: faktning kengaytmasi. null — matn hali yozilmagan. */
  detailUz: string | null;
  source: string;
  // ===== Ruscha matn (V108). null — interfeys o'zbekcha aslini beradi. =====
  topicRu: string | null;
  questionRu: string | null;
  factRu: string | null;
  detailRu: string | null;
};

export type QuizQuestion = {
  id: number;
  questionUz: string;
  options: string[];
  // ===== Ruscha matn (V108). Variantlar tartibi asl massiv bilan bir xil. =====
  questionRu: string | null;
  optionsRu: string[] | null;
};

/** Test qiyinligi: OSON — taymersiz, O'RTA — 2 daqiqa, QIYIN — 1 daqiqa. */
export type QuizDifficulty = "EASY" | "MEDIUM" | "HARD";

// ============================== Bellashuv (duel) ==============================

/**
 * Bellashuvdagi bir tomon. Raqib haqida BOR-YO'G'I shu ma'lumot keladi —
 * uning savoli hech qachon bu yerga tushmaydi.
 */
export type DuelSide = {
  nickname: string;
  scope: string;
  score: number;
  /** O'yin boshlanishidagi reyting. */
  rating: number;
  /** XP dan hisoblangan daraja — bellashuvda ustunlik beradi (teng hisobda g'alaba). */
  rankLevel: number;
  /** Kiyilgan NODIR (RARE) jihozlar soni — ustunlikka qo'shiladi. */
  rareEquipped: number;
};

/** `question` — DOIM so'rovchining o'z savoli (raqibniki emas). */
export type DuelState = {
  code: string;
  phase: "WAITING" | "RUNNING" | "FINISHED";
  secondsLeft: number;
  me: DuelSide;
  opponent: DuelSide | null;
  question: QuizQuestion | null;
  /** Xona egasimi — startni faqat u beradi (kod bilan o'yinda). */
  host: boolean;
  /** Navbat orqali topilgan o'yinmi: start avtomatik, reyting hisoblanadi. */
  ranked: boolean;
  outcome: "WIN" | "LOSS" | "DRAW" | null;
  /** O'yin tugagach — reyting o'zgarishi (manfiy bo'lishi mumkin). */
  ratingDelta: number | null;
};

/** Navbat holati: raqib qidirilmoqda yoki topildi. */
export type QueueState = {
  phase: "SEARCHING" | "MATCHED";
  rating: number;
  waitedSeconds: number;
  /** Hozirgi qidiruv oynasi: shu qadar reyting farqi qabul qilinadi. */
  toleranceNow: number;
  /** Topilganda — bellashuv kodi. */
  code: string | null;
};

export type AnswerReview = {
  questionId: number;
  chosenIndex: number;
  correctIndex: number;
  correct: boolean;
  explanationUz: string | null;
  explanationRu: string | null;
};

export type SubmitResult = {
  score: number;
  total: number;
  xpEarned: number;
  totalXp: number;
  streakDays: number;
  /** false — qayta urinish (mashq): natija bor, XP yo'q. */
  firstAttempt: boolean;
  reviews: AnswerReview[];
  /** Aynan shu XP qo'shilishi tufayli ochilgan jihozlar. */
  newlyUnlocked: UnlockedItem[];
};

// ===== Kinozal: ko'rish hisobi (+30 XP) va film testi =====

export type FilmWatchState = {
  filmId: number;
  /** To'liq (halol) ko'rilgan vaqt. null — hali tugatilmagan. */
  completedAt: string | null;
  watchXpAwarded: boolean;
  quizXpAwarded: boolean;
};

export type WatchResult = {
  completed: boolean;
  firstTime: boolean;
  xpEarned: number;
  totalXp: number;
  streakDays: number;
  newlyUnlocked: UnlockedItem[];
};

export type Profile = {
  clientId: string;
  xp: number;
  level: number;
  streakDays: number;
  rankUz: string;
  rankEmoji: string;
  xpIntoLevel: number;
  xpForNext: number;
  activeToday: boolean;
  /** Ruscha unvon (V107). Bo'sh bo'lsa server o'zbekcha aslini qaytaradi. */
  rankRu: string;
};

/** Unvonlar zinapoyasining pog'onasi (V107) — `/api/ranks`. */
export type Rank = {
  minLevel: number;
  nameUz: string;
  nameRu: string | null;
  emoji: string;
};

/** Maskot Ilvirsga xabar yuborish: kayfiyat + gap. */
export type MascotMood = "happy" | "sad" | "celebrate";

export function tellMascot(mood: MascotMood, message: string) {
  if (typeof window === "undefined") return;
  window.dispatchEvent(
    new CustomEvent("tirik-mascot", { detail: { mood, message } })
  );
}

export type Achievement = {
  code: string;
  titleUz: string;
  descriptionUz: string;
  emoji: string;
  earned: boolean;
  progress: number;
  target: number;
  /** Ruscha matn (V107). null — interfeys o'zbekcha aslini ko'rsatadi. */
  titleRu: string | null;
  descriptionRu: string | null;
};

export type ProfileStats = {
  profile: Profile;
  totalQuizzes: number;
  perfectQuizzes: number;
  totalCorrect: number;
  totalQuestions: number;
  conversations: number;
  heroesTalked: number;
  achievements: Achievement[];
};

// ============================== Reyting jadvali ==============================

/** ALL — jami XP, MONTH/WEEK — shu oraliqda yig'ilgani. */
export type LeaderboardPeriod = "ALL" | "MONTH" | "WEEK";

export type LeaderboardRow = {
  rank: number;
  clientId: string;
  /** Ro'yxatdan o'tmaganlarda — «Mehmon-XXXX». */
  displayName: string;
  rankEmoji: string;
  rankUz: string;
  level: number;
  /** Tanlangan davr uchun XP. */
  xp: number;
  streakDays: number;
  /** So'rovchining o'z qatorimi. */
  me: boolean;
};

export type LeaderboardPage = {
  period: LeaderboardPeriod;
  rows: LeaderboardRow[];
  page: number;
  size: number;
  total: number;
  hasMore: boolean;
  /** Joriy o'yinchi sahifaga tushmasa — shu yerda keladi (pastda mahkamlash uchun). */
  me: LeaderboardRow | null;
};

export function fetchLeaderboard(
  period: LeaderboardPeriod,
  page: number,
  size = 50,
): Promise<LeaderboardPage> {
  const params = new URLSearchParams({
    period,
    page: String(page),
    size: String(size),
    clientId: getClientId(),
  });
  return api<LeaderboardPage>(`/api/leaderboard?${params}`);
}

export type ChatAnswer = {
  answerUz: string;
  refusalType: "NONE" | "NO_FACT" | "OFF_TOPIC";
  source: string | null;
};

// MVPda ro'yxatdan o'tish yo'q — brauzer anonim UUID orqali taniladi.
export function getClientId(): string {
  if (typeof window === "undefined") return "server";
  let id = localStorage.getItem("tirik-tarix-client-id");
  if (!id) {
    id = crypto.randomUUID();
    localStorage.setItem("tirik-tarix-client-id", id);
  }
  return id;
}

export async function api<T>(path: string, init?: RequestInit): Promise<T> {
  const res = await fetch(`${API_URL}${path}`, {
    ...init,
    headers: { "Content-Type": "application/json", ...init?.headers },
  });
  if (!res.ok) {
    throw new Error(`API xatosi: ${res.status}`);
  }
  return res.json();
}

/**
 * Bellashuv chaqiruvlari.
 *
 * NEGA ALOHIDA. Bu yerda serverning O'Z xabari kerak: «Bunday kodli bellashuv
 * topilmadi», «Bu bellashuvda joy band» — bolaga aynan shu matn ko'rsatiladi,
 * quruq «API xatosi: 404» emas. Umumiy `api()` esa faqat kodni qaytaradi.
 */
async function duelCall<T>(path: string, init?: RequestInit): Promise<T> {
  const res = await fetch(`${API_URL}/api/duel${path}`, {
    ...init,
    headers: { "Content-Type": "application/json", ...init?.headers },
  });
  if (!res.ok) {
    let message = `API xatosi: ${res.status}`;
    try {
      const body = await res.json();
      if (body?.message) message = body.message;
    } catch {
      // javob JSON emas — standart xabar qoladi
    }
    throw new Error(message);
  }
  if (res.status === 200 && res.headers.get("content-length") === "0") {
    return undefined as T;
  }
  return res.json();
}

export const duelApi = {
  /** «O'ynash» — navbatga tushish. Raqibni server reyting bo'yicha topadi. */
  enqueue: (nickname: string, scope: string) =>
    duelCall<QueueState>("/queue", {
      method: "POST",
      body: JSON.stringify({ clientId: getClientId(), nickname, scope }),
    }),

  queueState: () =>
    duelCall<QueueState>(`/queue?clientId=${encodeURIComponent(getClientId())}`),

  dequeue: () =>
    duelCall<void>(`/queue?clientId=${encodeURIComponent(getClientId())}`, { method: "DELETE" }),

  /** Xona ochish — javobdagi `code` raqibga aytiladi. */
  create: (nickname: string, scope: string) =>
    duelCall<DuelState>("", {
      method: "POST",
      body: JSON.stringify({ clientId: getClientId(), nickname, scope }),
    }),

  /** Kod bo'yicha qo'shilish. Mavzu — o'z tanlovi. */
  join: (code: string, nickname: string, scope: string) =>
    duelCall<DuelState>(`/${code}/join`, {
      method: "POST",
      body: JSON.stringify({ clientId: getClientId(), nickname, scope }),
    }),

  start: (code: string) =>
    duelCall<DuelState>(`/${code}/start`, {
      method: "POST",
      body: JSON.stringify({ clientId: getClientId() }),
    }),

  state: (code: string) =>
    duelCall<DuelState>(`/${code}?clientId=${encodeURIComponent(getClientId())}`),

  answer: (code: string, questionId: number, chosenIndex: number) =>
    duelCall<DuelState>(`/${code}/answer`, {
      method: "POST",
      body: JSON.stringify({ clientId: getClientId(), questionId, chosenIndex }),
    }),

  leave: (code: string) =>
    duelCall<void>(`/${code}?clientId=${encodeURIComponent(getClientId())}`, { method: "DELETE" }),
};

/**
 * Zamon xaritasining qatlami (M3 — xarita).
 * Geometriya viewBox "0 0 1000 700" mo'ljalida: TERRITORY/ROUTE — SVG path `d`,
 * CITY — "x,y". Chegaralar sxematik, shuning uchun `verified` bayrog'i muhim.
 */
export type MapFeature = {
  id: number;
  kind: "TERRITORY" | "CITY" | "ROUTE";
  nameUz: string;
  geometry: string;
  descriptionUz: string | null;
  source: string;
  verified: boolean;
  /** Ruscha matn (V102). null — interfeys o'zbekcha aslini ko'rsatadi. */
  nameRu: string | null;
  descriptionRu: string | null;
};

/**
 * M2. Kinozal birligi.
 * `status` ishlab chiqarish bosqichini bildiradi: PLANNED → SCRIPT → IN_REVIEW →
 * PUBLISHED. `videoUrl` faqat PUBLISHED holatida to'ldiriladi.
 */
export type Film = {
  id: number;
  eraId: number | null;
  heroId: number | null;
  titleUz: string;
  kind: "SHORT" | "DOC" | "FEATURE";
  durationMinutes: number | null;
  synopsisUz: string;
  posterEmoji: string | null;
  status: "PLANNED" | "SCRIPT" | "IN_REVIEW" | "PUBLISHED";
  videoUrl: string | null;
  source: string;
  verified: boolean;
  /** Ruscha matn (V102). null — interfeys o'zbekcha aslini ko'rsatadi. */
  titleRu: string | null;
  synopsisRu: string | null;
};

// ===================== Akkaunt va qahramon jihozlari =====================

const TOKEN_KEY = "tirik-tarix-token";

export type Gender = "MALE" | "FEMALE";

export type AuthProfile = {
  clientId: string;
  displayName: string | null;
  xp: number;
  streakDays: number;
  level: number;
  rankUz: string;
  rankEmoji: string;
  xpIntoLevel: number;
  xpForNext: number;
  avatarGender: Gender | null;
  avatarArchetype: string | null;
  /** Ruscha unvon (V107). */
  rankRu: string;
};

export type AuthResponse = {
  token: string | null;
  clientId: string;
  username: string | null;
  profile: AuthProfile;
};

export type EquipSlot = "HEAD" | "BODY" | "WEAPON" | "SHIELD" | "ACCESSORY";

/**
 * Jihoz ochilish sharti. Uchtasi profil ko'rsatkichlaridan, beshtasi bajarilgan
 * topshiriqlardan — lekin ikkalasi ham serverda qayta hisoblanadi, saqlanmaydi.
 */
export type UnlockType =
  | "LEVEL"
  | "TOTAL_XP"
  | "STREAK"
  | "QUIZ_PERFECT"
  | "ERA_TEST_SCORE"
  | "HERO_QUIZ_SCORE"
  | "RIDDLE_COUNT"
  | "TALK_HEROES";

export type AvatarItem = {
  code: string;
  nameUz: string;
  slot: EquipSlot;
  descriptionUz: string;
  unlockType: UnlockType;
  unlockValue: number;
  /** Shartning manzili: davr kodi yoki qahramon slug'i. */
  unlockRef: string | null;
  /** Topshiriq so'z bilan: «Temuriylar davri testini 9+ ball bilan yech». */
  requirementUz: string;
  unlocked: boolean;
  progress: number;
  target: number;
  /** Ruscha matn (V102). null — interfeys o'zbekcha aslini ko'rsatadi. */
  nameRu: string | null;
  descriptionRu: string | null;
};

export type AvatarState = {
  gender: Gender | null;
  archetype: string | null;
  equipped: Partial<Record<EquipSlot, string>>;
  items: AvatarItem[];
};

/** Sinov natijasida ochilgan jihoz. */
export type UnlockedItem = { code: string; nameUz: string; slot: EquipSlot };

export function getToken(): string | null {
  if (typeof window === "undefined") return null;
  return localStorage.getItem(TOKEN_KEY);
}

/**
 * Kirish/ro'yxatdan o'tgandan keyin sessiyani saqlaydi.
 * clientId ham yozib qo'yiladi — shu sabab boshqa qurilmadan kirganda
 * eski progress (XP, seriya) o'z-o'zidan tiklanadi.
 */
export function saveSession(token: string, clientId: string) {
  localStorage.setItem(TOKEN_KEY, token);
  localStorage.setItem("tirik-tarix-client-id", clientId);
}

/** Chiqish: token o'chadi, foydalanuvchi o'z clientId si bilan mehmon bo'lib qoladi. */
export function logout() {
  localStorage.removeItem(TOKEN_KEY);
}

/** Himoyalangan endpointlar uchun — Authorization sarlavhasi bilan. */
export async function authApi<T>(path: string, init?: RequestInit): Promise<T> {
  const token = getToken();
  const res = await fetch(`${API_URL}${path}`, {
    ...init,
    headers: {
      "Content-Type": "application/json",
      ...(token ? { Authorization: `Bearer ${token}` } : {}),
      ...init?.headers,
    },
  });
  if (!res.ok) {
    let message = `API xatosi: ${res.status}`;
    try {
      const body = await res.json();
      if (body?.message) message = body.message;
    } catch {
      // javob JSON emas — standart xabar qoladi
    }
    throw new Error(message);
  }
  return res.json();
}
