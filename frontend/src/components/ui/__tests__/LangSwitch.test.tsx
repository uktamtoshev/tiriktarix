import { beforeEach, describe, expect, it, vi } from "vitest";
import { render, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event";

/**
 * Til tanlagich.
 *
 * NEGA `vi.resetModules()`. Tanlangan til `lib/lang.tsx` ichidagi MODUL
 * darajasidagi do'konda yotadi (`useSyncExternalStore`). Modul bir marta
 * yuklanadi, ya'ni bir testda o'zgartirilgan til keyingisiga o'tib ketardi —
 * shuning uchun har test modullarni qaytadan yuklaydi.
 */
async function load() {
  const { default: LangSwitch } = await import("../LangSwitch");
  const lang = await import("@/lib/lang");
  return { LangSwitch, ...lang };
}

const TXT = { ru: "Испытания", uz: "Sinovlar", uk: "Випробування" };

beforeEach(() => {
  window.localStorage.clear();
  vi.resetModules();
});

describe("LangSwitch", () => {
  it("sukut bo'yicha ruscha yoqilgan bo'ladi va UA tugmasi yo'q (O'zbekiston tarixi)", async () => {
    const { LangSwitch } = await load();
    render(<LangSwitch />);

    expect(screen.getByRole("button", { name: "RU" })).toHaveAttribute("aria-pressed", "true");
    expect(screen.getByRole("button", { name: "UZ" })).toHaveAttribute("aria-pressed", "false");
    expect(screen.queryByRole("button", { name: "UA" })).not.toBeInTheDocument();
  });

  it("Rossiya tarixida uchta til ham tanlanadi", async () => {
    window.localStorage.setItem("tirik-mamlakat", "RU");
    const user = userEvent.setup();
    const { LangSwitch, useT } = await load();

    function Probe() {
      return <p>{useT(TXT)}</p>;
    }

    render(
      <>
        <LangSwitch />
        <Probe />
      </>,
    );

    await user.click(screen.getByRole("button", { name: "UA" }));
    expect(screen.getByText("Випробування")).toBeInTheDocument();
    expect(window.localStorage.getItem("tirik-til")).toBe("uk");

    await user.click(screen.getByRole("button", { name: "UZ" }));
    expect(screen.getByText("Sinovlar")).toBeInTheDocument();
  });

  it("O'zbekiston tarixida UA tugmasi yo'q, ukraincha yoqilgan bo'lsa ruschaga qaytadi", async () => {
    window.localStorage.setItem("tirik-mamlakat", "UZ");
    window.localStorage.setItem("tirik-til", "uk");
    const { LangSwitch, useT } = await load();

    function Probe() {
      return <p>{useT(TXT)}</p>;
    }

    render(
      <>
        <LangSwitch />
        <Probe />
      </>,
    );

    expect(screen.queryByRole("button", { name: "UA" })).not.toBeInTheDocument();
    expect(await screen.findByText("Испытания")).toBeInTheDocument();
    expect(window.localStorage.getItem("tirik-til")).toBe("ru");
  });

  it("bosilganda til almashadi va tanlov saqlanadi", async () => {
    const user = userEvent.setup();
    const { LangSwitch } = await load();
    render(<LangSwitch />);

    await user.click(screen.getByRole("button", { name: "UZ" }));

    expect(screen.getByRole("button", { name: "UZ" })).toHaveAttribute("aria-pressed", "true");
    expect(screen.getByRole("button", { name: "RU" })).toHaveAttribute("aria-pressed", "false");
    expect(window.localStorage.getItem("tirik-til")).toBe("uz");
  });

  it("saqlangan tanlov qayta yuklanganda tiklanadi", async () => {
    window.localStorage.setItem("tirik-til", "uz");
    const { LangSwitch } = await load();
    render(<LangSwitch />);

    expect(await screen.findByRole("button", { name: "UZ" })).toHaveAttribute(
      "aria-pressed",
      "true",
    );
  });

  it("interfeys yozuvlari tanlangan tilga o'tadi", async () => {
    const user = userEvent.setup();
    const { LangSwitch, useT } = await load();

    function Probe() {
      return <p>{useT(TXT)}</p>;
    }

    render(
      <>
        <LangSwitch />
        <Probe />
      </>,
    );

    expect(screen.getByText("Испытания")).toBeInTheDocument();

    await user.click(screen.getByRole("button", { name: "UZ" }));

    expect(screen.getByText("Sinovlar")).toBeInTheDocument();
    expect(screen.queryByText("Испытания")).not.toBeInTheDocument();
  });
});
