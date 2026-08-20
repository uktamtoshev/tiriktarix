import { defineConfig } from "vitest/config";
import react from "@vitejs/plugin-react";
import path from "node:path";

/**
 * Frontend testlari — Vitest + Testing Library.
 *
 * Loyihada avval test yo'q edi; bu konfiguratsiya faqat komponentlarni
 * brauzersiz (jsdom) tekshirish uchun qo'shildi. Next.js ning o'z qurilishiga
 * ta'sir qilmaydi: `next build` bu faylni o'qimaydi.
 */
export default defineConfig({
  plugins: [react()],
  test: {
    environment: "jsdom",
    globals: true,
    setupFiles: ["./src/test/setup.ts"],
    include: ["src/**/*.test.{ts,tsx}"],
    /*
      Standart 5 soniya reyting jadvali testiga tor kelib qoldi: u 50 qatorni
      jsdom da chizadi va sekin mashinada chegaraga tegib, testni bekorga
      yiqitardi. 15 soniya — haqiqiy osilib qolishni baribir ushlaydi.
    */
    testTimeout: 15_000,
  },
  resolve: {
    // `@/...` — tsconfig dagi alias bilan bir xil
    alias: { "@": path.resolve(__dirname, "src") },
  },
});
