import type { NextConfig } from "next";

const API_URL = process.env.NEXT_PUBLIC_API_URL ?? "http://localhost:8080";

const nextConfig: NextConfig = {
  /**
   * Metodist yuklagan portretlar BACKEND papkasida yotadi va u yerdan
   * beriladi. Ularni to'g'ridan-to'g'ri 8080-portdan olish noqulay bo'lardi:
   * `next/image` uchun har bir tashqi host `remotePatterns` ga yozilishi kerak,
   * host esa muhitga qarab o'zgaradi (lokal, staging, ishlab chiqarish).
   *
   * Shuning uchun `/uploads/**` frontend orqali o'tkaziladi. Natijada
   * komponentlar oddiy `/uploads/x.png` manzilini ishlatadi — xuddi o'z
   * papkasidagi `/portretlar/…` kabi — va hech qayerda hostni bilish shart emas.
   */
  async rewrites() {
    return [
      {
        source: "/uploads/:path*",
        destination: `${API_URL}/uploads/:path*`,
      },
    ];
  },
};

export default nextConfig;
