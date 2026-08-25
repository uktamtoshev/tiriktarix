// Boshqaruv paneli API mijozi.
//
// Panel sessiyasi o'quvchi sessiyasidan ALOHIDA saqlanadi: bir brauzerda ham
// bolaning hisobi, ham administrator hisobi ochiq turishi mumkin va ular
// bir-birini o'chirib yubormasligi kerak.

import { API_URL } from "@/lib/api";

const ADMIN_TOKEN_KEY = "tirik-tarix-admin-token";

export function getAdminToken(): string | null {
  if (typeof window === "undefined") return null;
  return localStorage.getItem(ADMIN_TOKEN_KEY);
}

export function saveAdminToken(token: string) {
  localStorage.setItem(ADMIN_TOKEN_KEY, token);
}

export function adminLogout() {
  localStorage.removeItem(ADMIN_TOKEN_KEY);
}

/** 401 — sessiya tugadi (qayta kirish kerak), qolgani — oddiy xato. */
export class AdminApiError extends Error {
  constructor(
    message: string,
    readonly status: number
  ) {
    super(message);
  }

  get unauthorized() {
    return this.status === 401 || this.status === 403;
  }
}

export async function adminApi<T>(path: string, init?: RequestInit): Promise<T> {
  const token = getAdminToken();
  const res = await fetch(`${API_URL}${path}`, {
    ...init,
    headers: {
      "Content-Type": "application/json",
      ...(token ? { Authorization: `Bearer ${token}` } : {}),
      ...init?.headers,
    },
  });

  if (!res.ok) {
    let message = `Ошибка: ${res.status}`;
    try {
      const body = await res.json();
      if (body?.message) message = body.message;
    } catch {
      // javob JSON emas — standart xabar qoladi
    }
    throw new AdminApiError(message, res.status);
  }
  // DELETE va ba'zi POSTlar tanasiz qaytadi
  if (res.status === 204) return undefined as T;
  const text = await res.text();
  return (text ? JSON.parse(text) : undefined) as T;
}

export type Page<T> = {
  items: T[];
  total: number;
  page: number;
  size: number;
  pages: number;
};

// ===================== Kirish =====================

export type AdminSession = { token: string | null; username: string; role: string };

/**
 * Fayl yuklash uchun alohida chaqiruv.
 *
 * NEGA `adminApi` YARAMAYDI. U har doim `Content-Type: application/json`
 * qo'yadi, FormData da esa sarlavhani BRAUZER o'zi qo'yishi shart — u yerga
 * qismlar chegarasi (boundary) qo'shiladi. Qo'lda qo'yilsa, server so'rovni
 * ocha olmaydi.
 */
export async function adminApiForm<T>(path: string, body: FormData): Promise<T> {
  const token = getAdminToken();
  const res = await fetch(`${API_URL}${path}`, {
    method: "POST",
    body,
    headers: token ? { Authorization: `Bearer ${token}` } : {},
  });

  if (!res.ok) {
    let message = `Ошибка: ${res.status}`;
    try {
      const parsed = await res.json();
      if (parsed?.message) message = parsed.message;
    } catch {
      // javob JSON emas — standart xabar qoladi
    }
    throw new AdminApiError(message, res.status);
  }
  return (await res.json()) as T;
}

export async function adminLogin(username: string, password: string): Promise<AdminSession> {
  const session = await adminApi<AdminSession>("/api/admin/auth/login", {
    method: "POST",
    body: JSON.stringify({ username, password }),
  });
  if (session.token) saveAdminToken(session.token);
  return session;
}

// ===================== Bosh sahifa ko'rsatkichlari =====================

export type AdminStats = {
  content: {
    eras: number;
    heroes: number;
    heroesBioUnverified: number;
    events: number;
    factCards: number;
    factCardsUnverified: number;
    quizQuestions: number;
    quizWithoutSource: number;
    films: number;
    filmsPublished: number;
    mapFeatures: number;
    mapUnverified: number;
  };
  learners: {
    users: number;
    admins: number;
    profiles: number;
    linkedProfiles: number;
    activeToday: number;
    active7d: number;
    totalXp: number;
    quizzes7d: number;
  };
  chat: {
    conversations: number;
    messages: number;
    messages7d: number;
    refusalsNoFact: number;
    refusalsOffTopic: number;
  };
  activity: { day: string; attempts: number; correct: number; asked: number }[];
  topHeroes: { heroId: number; nameUz: string; conversations: number }[];
  topScopes: { scope: string; attempts: number; averageShare: number }[];
  leaderboard: {
    profileId: number;
    clientId: string;
    displayName: string | null;
    xp: number;
    level: number;
    rankUz: string;
    streakDays: number;
  }[];
  todo: { label: string; count: number; href: string }[];
};

// ===================== Kontent =====================

export type AdminEra = {
  id: number;
  code: string;
  nameUz: string;
  ordinal: number;
  yearFrom: number | null;
  yearTo: number | null;
  descriptionUz: string | null;
  biographyUz: string | null;
  biographySources: string | null;
  biographyVerified: boolean;
  heroes: number;
  events: number;
  factCards: number;
  quizQuestions: number;
  films: number;
  mapFeatures: number;
};

export type AdminHero = {
  id: number;
  slug: string;
  nameUz: string;
  titleUz: string | null;
  birthYear: number | null;
  deathYear: number | null;
  eraId: number | null;
  bioUz: string | null;
  greetingUz: string | null;
  portraitEmoji: string | null;
  portraitUrl: string | null;
  portraitKind: string | null;
  portraitCaptionUz: string | null;
  portraitSource: string | null;
  biographyUz: string | null;
  biographySources: string | null;
  biographyVerified: boolean;
  onTopicKeywords: string[];
  /** Buyuklik darajasi (V311): zal ro'yxati shu bo'yicha tartiblanadi. */
  fameTier: "S" | "A" | "B" | "C";
  fameScore: number;
  factCards: number;
  quizQuestions: number;
  films: number;
  conversations: number;
};

export type AdminEvent = {
  id: number;
  eraId: number | null;
  titleUz: string;
  yearFrom: number | null;
  yearTo: number | null;
  locationUz: string | null;
  descriptionUz: string;
};

export type AdminFactCard = {
  id: number;
  heroId: number | null;
  eraId: number | null;
  topicUz: string;
  questionUz: string | null;
  factUz: string;
  keywords: string[];
  source: string;
  verified: boolean;
  usedInQuiz: number;
  usedInChat: number;
};

export type AdminQuizQuestion = {
  id: number;
  heroId: number | null;
  eraId: number | null;
  factCardId: number | null;
  questionUz: string;
  options: string[];
  correctIndex: number;
  explanationUz: string | null;
};

export type AdminFilm = {
  id: number;
  eraId: number | null;
  heroId: number | null;
  titleUz: string;
  kind: string;
  durationMinutes: number | null;
  synopsisUz: string;
  posterEmoji: string | null;
  status: string;
  videoUrl: string | null;
  source: string;
  verified: boolean;
  ordinal: number | null;
};

export type AdminMapFeature = {
  id: number;
  eraId: number | null;
  kind: string;
  nameUz: string;
  geometry: string;
  descriptionUz: string | null;
  source: string;
  verified: boolean;
  minYear: number | null;
  maxYear: number | null;
  ordinal: number | null;
};

// ===================== Foydalanuvchilar =====================

export type AdminUser = {
  id: number;
  username: string;
  role: string;
  createdAt: string | null;
  profileId: number | null;
  clientId: string | null;
  displayName: string | null;
  xp: number | null;
  streakDays: number | null;
  lastActiveDate: string | null;
};

export type AdminProfile = {
  id: number;
  clientId: string;
  displayName: string | null;
  xp: number;
  level: number;
  rankUz: string;
  rankEmoji: string;
  streakDays: number;
  lastActiveDate: string | null;
  userId: number | null;
  username: string | null;
  avatarGender: string | null;
  avatarArchetype: string | null;
  /** Ro'yxatdan o'tishda kiritilgan shaxsiy ma'lumotlar (V91). Mehmonlarda — null. */
  firstName: string | null;
  lastName: string | null;
  birthDate: string | null;
  regionUz: string | null;
  districtUz: string | null;
  schoolUz: string | null;
};

// ===================== Suhbatlar =====================

export type AdminConversation = {
  id: number;
  heroId: number | null;
  heroNameUz: string;
  clientId: string;
  startedAt: string;
  messages: number;
  lastMessageAt: string | null;
};

export type AdminChatMessage = {
  id: number;
  role: string | null;
  textUz: string;
  refusalType: string | null;
  factCardId: number | null;
  createdAt: string;
};

export type AdminUnanswered = {
  conversationId: number;
  heroId: number | null;
  heroNameUz: string;
  questionUz: string | null;
  askedAt: string;
};

// ===================== Jurnal =====================

export type AdminAuditRow = {
  id: number;
  adminLogin: string;
  action: string;
  entityType: string;
  entityId: number | null;
  summary: string;
  createdAt: string;
};

// ===================== Integratsiyalar (TTS / STT / LLM) =====================

export type AdminIntegration = {
  id: number;
  code: string;
  kind: "TTS" | "STT" | "LLM" | "OTHER";
  label: string;
  provider: string | null;
  baseUrl: string | null;
  model: string | null;
  hasSecret: boolean;
  secretHint: string | null;
  /** false — bazadagi shifrni ochib bo'lmayapti (shifr kaliti almashgan). */
  readable: boolean;
  active: boolean;
  notes: string | null;
  updatedAt: string | null;
  updatedBy: string | null;
};

// ===================== Ko'rinish yordamchilari =====================

export function formatDateTime(value: string | null | undefined): string {
  if (!value) return "—";
  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return "—";
  return date.toLocaleString("ru-RU", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });
}

export function formatDate(value: string | null | undefined): string {
  if (!value) return "—";
  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return "—";
  return date.toLocaleDateString("ru-RU", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
  });
}

/** Milodgacha bo'lgan yillar manfiy son bilan saqlanadi: -329 → «329 до н.э.». */
export function formatYear(year: number | null | undefined): string {
  if (year === null || year === undefined) return "—";
  return year < 0 ? `${Math.abs(year)} до н.э.` : String(year);
}
