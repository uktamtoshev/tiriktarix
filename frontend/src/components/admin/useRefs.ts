"use client";

import { useEffect, useState } from "react";
import { AdminEra, AdminFactCard, AdminHero, adminApi } from "@/lib/admin";
import { FieldOption } from "./CrudPage";

/**
 * Ko'p sahifaga kerak bo'ladigan lug'atlar: davrlar va ajdodlar ro'yxati
 * (select maydonlari uchun) hamda id → nom xaritalari (jadval kataklarida
 * raqam o'rniga nom ko'rsatish uchun).
 */
export function useEraHeroRefs() {
  const [eras, setEras] = useState<AdminEra[]>([]);
  const [heroes, setHeroes] = useState<AdminHero[]>([]);
  const [ready, setReady] = useState(false);

  useEffect(() => {
    Promise.all([
      adminApi<AdminEra[]>("/api/admin/eras"),
      adminApi<AdminHero[]>("/api/admin/heroes"),
    ])
      .then(([e, h]) => {
        setEras(e);
        setHeroes(h);
      })
      .catch(() => {
        // lug'atsiz ham sahifa ishlaydi — select bo'sh bo'ladi
      })
      .finally(() => setReady(true));
  }, []);

  const eraOptions: FieldOption[] = eras.map((e) => ({ value: e.id, label: e.nameUz }));
  const heroOptions: FieldOption[] = heroes.map((h) => ({ value: h.id, label: h.nameUz }));
  const eraName = (id: unknown) => eras.find((e) => e.id === id)?.nameUz ?? "—";
  const heroName = (id: unknown) => heroes.find((h) => h.id === id)?.nameUz ?? "—";

  return { eras, heroes, eraOptions, heroOptions, eraName, heroName, ready };
}

/** Fakt kartochkalari lug'ati — test savollarini kartochkaga bog'lash uchun. */
export function useFactCardRefs() {
  const [cards, setCards] = useState<AdminFactCard[]>([]);

  useEffect(() => {
    adminApi<AdminFactCard[]>("/api/admin/fact-cards")
      .then(setCards)
      .catch(() => {});
  }, []);

  const cardOptions: FieldOption[] = cards.map((c) => ({
    value: c.id,
    label: `#${c.id} — ${c.topicUz}`,
  }));

  return { cards, cardOptions };
}
