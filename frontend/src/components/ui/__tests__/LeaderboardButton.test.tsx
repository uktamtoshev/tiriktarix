import { describe, expect, it, vi } from "vitest";
import { render, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import LeaderboardButton from "../LeaderboardButton";

/**
 * `next/link` jsdom da haqiqiy navigatsiya qilmaydi. Shu bois u oddiy `<a>` ga
 * almashtiriladi va bosish `navigate` josusi orqali tekshiriladi — shunda
 * «bosilganda /leaderboard ga o'tadi» shartini tekshirib bo'ladi.
 */
const navigate = vi.fn();

vi.mock("next/link", () => ({
  default: ({
    href,
    children,
    ...rest
  }: {
    href: string;
    children: React.ReactNode;
  } & React.AnchorHTMLAttributes<HTMLAnchorElement>) => (
    <a
      href={href}
      onClick={(e) => {
        e.preventDefault();
        navigate(href);
      }}
      {...rest}
    >
      {children}
    </a>
  ),
}));

describe("LeaderboardButton", () => {
  it("chiziladi va o'qiladigan nom hamda kubok belgisiga ega (sukut boyicha ruscha)", () => {
    render(<LeaderboardButton />);

    const link = screen.getByRole("link", { name: "Открыть таблицу лидеров" });
    expect(link).toBeInTheDocument();
    expect(link).toHaveTextContent("Таблица лидеров");
    expect(link).toHaveTextContent("🏆");
  });

  it("/leaderboard ga ishora qiladi", () => {
    render(<LeaderboardButton />);

    expect(screen.getByRole("link", { name: "Открыть таблицу лидеров" })).toHaveAttribute(
      "href",
      "/leaderboard",
    );
  });

  it("bosilganda /leaderboard ga o'tadi", async () => {
    const user = userEvent.setup();
    render(<LeaderboardButton />);

    await user.click(screen.getByRole("link", { name: "Открыть таблицу лидеров" }));

    expect(navigate).toHaveBeenCalledWith("/leaderboard");
  });

  it("teginish maydoni 44x44 dan kichik emas va fokus ko'rinadi", () => {
    render(<LeaderboardButton />);

    const link = screen.getByRole("link", { name: "Открыть таблицу лидеров" });
    // Tailwind jsdom da hisoblanmaydi — sinf darajasida tekshiramiz
    expect(link.className).toContain("min-h-[44px]");
    expect(link.className).toContain("min-w-[44px]");
    expect(link.className).toContain("focus-visible:outline");
  });

  it("qo'shni lavhalar bilan bir xil tokenlarni ishlatadi", () => {
    render(<LeaderboardButton />);

    // JAMI XP lavhasi bilan bir xil: rounded-sm + border-zar/40 + bg-zar/10
    const link = screen.getByRole("link", { name: "Открыть таблицу лидеров" });
    expect(link.className).toContain("rounded-sm");
    expect(link.className).toContain("border-zar/40");
    expect(link.className).toContain("bg-zar/10");
  });
});
