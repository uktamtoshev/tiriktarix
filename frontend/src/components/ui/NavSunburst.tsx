import Image from "next/image";

/**
 * Bo'limlar orasidagi o'tish pardasi — «quyosh».
 *
 * Ketma-ketlik: belgi ekran o'rtasida kuchli aylanib kattalashadi, so'ng
 * BUTUNLAY yo'q bo'ladi va o'rnida kichkina oq dog' qoladi; dog'dan quyosh
 * yonib butun ekranni oqartiradi va so'nadi. Yangi bo'lim shu yorug'lik
 * ichidan chiqib keladi. Bosqichlar ustma-ust tushmaydi — vaqtlari
 * globals.css dagi tt-nav-* kadrlarida.
 *
 * Parda BOSISHNI TO'SMAYDI (`pointer-events-none`) va ekran o'quvchisiga
 * ko'rinmaydi: bu bezak, mazmun emas. U ekranda bir soniyagina turadi —
 * Header uni o'zi qo'shib, o'zi olib tashlaydi.
 *
 * Harakatni kamaytirish rejimida Header bu komponentni umuman chizmaydi:
 * bunday chaqnashni to'xtatib bo'lmaydi, uni ko'rmaslik kerak bo'lganlar bor.
 */
export default function NavSunburst() {
  return (
    <div
      aria-hidden
      className="pointer-events-none fixed inset-0 z-[70] grid place-items-center overflow-hidden"
    >
      {/* 0-qatlam: qorong'i parda. Yangi bo'lim uning ORQASIDA yuklanadi va
          faqat yorug'lik so'ngandan keyin ko'rinadi — o'tish «yarim tayyor»
          sahifani ko'rsatmaydi. */}
      <span className="tt-nav-veil absolute inset-0 block bg-obsidian" />

      {/* 1-bosqich: belgi aylanib kattalashadi */}
      <span className="tt-nav-emblem relative block h-24 w-24 overflow-hidden rounded-full bg-[#faf8f3] ring-1 ring-zar/60">
        <Image
          src="/logo/tirik-tarix-emblem.png"
          alt=""
          width={532}
          height={411}
          priority
          className="absolute left-0 top-0 w-full"
          sizes="96px"
        />
      </span>

      {/* 2-bosqich: oq quyosh — markazdan chekkalarga */}
      <span
        className="tt-nav-flash absolute inset-[-25%] block"
        style={{
          background:
            "radial-gradient(circle at center, #ffffff 0%, #fffaf0 32%, rgba(255,226,160,0.75) 52%, rgba(200,162,71,0) 72%)",
        }}
      />
    </div>
  );
}
