import { beforeEach, describe, expect, it, vi } from "vitest";
import { render, screen, waitFor } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import type { LeaderboardPage, LeaderboardRow } from "@/lib/api";
import LeaderboardPageView from "../page";

/**
 * Sahifa API ga bog'liq — shu bois `fetchLeaderboard` mock qilinadi.
 * Mock faqat testda: ishlab chiqarish kodida hech qanday soxta ma'lumot yo'q.
 */
const fetchLeaderboard = vi.fn();

vi.mock("@/lib/api", () => ({
  fetchLeaderboard: (...args: unknown[]) => fetchLeaderboard(...args),
}));

function row(over: Partial<LeaderboardRow> = {}): LeaderboardRow {
  return {
    rank: 1,
    clientId: "c-1",
    displayName: "Ali",
    rankEmoji: "🌱",
    rankUz: "Boshlovchi",
    level: 2,
    xp: 255,
    streakDays: 7,
    me: false,
    ...over,
  };
}

function page(over: Partial<LeaderboardPage> = {}): LeaderboardPage {
  return {
    period: "ALL",
    rows: [row()],
    page: 0,
    size: 50,
    total: 1,
    hasMore: false,
    me: null,
    ...over,
  };
}

describe("Reyting jadvali sahifasi (sukut bo'yicha ruscha)", () => {
  beforeEach(() => {
    fetchLeaderboard.mockReset();
  });

  it("yuklanayotganda skelet ko'rsatadi, so'ng qatorlarni chizadi", async () => {
    fetchLeaderboard.mockResolvedValue(page());

    render(<LeaderboardPageView />);
    expect(screen.getByText("Таблица лидеров загружается")).toBeInTheDocument();

    expect(await screen.findAllByText("Ali")).not.toHaveLength(0);
    expect(screen.getAllByText("255").length).toBeGreaterThan(0);
  });

  it("joriy o'yinchini «Sen» deb belgilaydi", async () => {
    fetchLeaderboard.mockResolvedValue(
      page({ rows: [row(), row({ rank: 2, clientId: "c-2", displayName: "Vali", me: true })] }),
    );

    render(<LeaderboardPageView />);

    expect(await screen.findAllByText("Ты")).not.toHaveLength(0);
  });

  it("sahifadan tashqaridagi o'yinchi alohida qator bilan ko'rsatiladi", async () => {
    fetchLeaderboard.mockResolvedValue(
      page({ me: row({ rank: 128, clientId: "c-9", displayName: "Bekzod", me: true }) }),
    );

    render(<LeaderboardPageView />);

    expect(await screen.findAllByText("Bekzod")).not.toHaveLength(0);
    expect(screen.getAllByText("128").length).toBeGreaterThan(0);
  });

  it("bo'sh jadval uchun tushunarli holat chiqaradi", async () => {
    fetchLeaderboard.mockResolvedValue(page({ rows: [], total: 0 }));

    render(<LeaderboardPageView />);

    expect(await screen.findByText("Таблица пока пуста")).toBeInTheDocument();
  });

  it("xatoda «qaytadan urinish» tugmasi ishlaydi", async () => {
    const user = userEvent.setup();
    fetchLeaderboard.mockRejectedValueOnce(new Error("tarmoq")).mockResolvedValue(page());

    render(<LeaderboardPageView />);
    expect(await screen.findByText("Не удалось загрузить таблицу")).toBeInTheDocument();

    await user.click(screen.getByRole("button", { name: "Попробовать снова" }));

    expect(await screen.findAllByText("Ali")).not.toHaveLength(0);
  });

  it("davr filtri serverga tanlangan davr bilan murojaat qiladi", async () => {
    const user = userEvent.setup();
    fetchLeaderboard.mockResolvedValue(page());

    render(<LeaderboardPageView />);
    await screen.findAllByText("Ali");

    await user.click(screen.getByRole("button", { name: "Неделя" }));

    await waitFor(() => expect(fetchLeaderboard).toHaveBeenLastCalledWith("WEEK", 0, 50));
  });

  it("50 dan ortiq yozuvda «yana ko'rsatish» keyingi sahifani so'raydi", async () => {
    const user = userEvent.setup();
    const first = page({
      rows: Array.from({ length: 50 }, (_, i) => row({ rank: i + 1, clientId: `c-${i}` })),
      total: 120,
      hasMore: true,
    });
    fetchLeaderboard.mockResolvedValueOnce(first).mockResolvedValueOnce(
      page({ rows: [row({ rank: 51, clientId: "c-51", displayName: "Sardor" })], page: 1, total: 120 }),
    );

    render(<LeaderboardPageView />);
    const more = await screen.findByRole("button", { name: "Показать ещё" });

    await user.click(more);

    await waitFor(() => expect(fetchLeaderboard).toHaveBeenLastCalledWith("ALL", 1, 50));
    expect(await screen.findAllByText("Sardor")).not.toHaveLength(0);
  });
});
