/**
 * Test yordamchilari: variantlarni aralashtirish.
 *
 * Savollar tartibi va tanlovi serverda aralashtiriladi; variantlar tartibi esa
 * shu yerda, har ko'rsatishda. Muhimi — serverga DOIM ASL indeks yuboriladi:
 * aralashtirish faqat ekranda, `order` massivi ekran o'rni → asl indeks
 * moslamasini saqlaydi. Shunda tekshiruv ham, `explanation_uz` ham to'g'ri
 * faktga tegishli bo'lib qoladi.
 */

/** Fisher–Yates: asl massivga tegmaydi. */
export function shuffled<T>(items: T[]): T[] {
  const copy = [...items];
  for (let i = copy.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [copy[i], copy[j]] = [copy[j], copy[i]];
  }
  return copy;
}

/** Har savol uchun ekran tartibi: order[i][displayIdx] = asl indeks. */
export function optionOrders(counts: number[]): number[][] {
  return counts.map((n) => shuffled(Array.from({ length: n }, (_, i) => i)));
}
