-- «Sohibqiron: Shahrisabzdan Samarqandgacha» seriyasiga tashqi video
-- biriktiriladi. Bu QAHRAMON kartochkasi (amir-temur), davr kartochkasi emas.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V28 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «Turon taraqqiyoti: Amir Temur davlati qanday boyidi?»
--        («Ko'hna tarix» turkumidan)
--   kanal      : KunUZ (@kunuz_official) — O'zbekistonning yirik axborot
--                nashri, turkum uning O'Z mahsuloti; perezaliv emas
--   davomiyligi: 1106 sekund = 18 daq. 26 son. → 18 daqiqa
--   til        : o'zbek
--   tekshirildi: sarlavha, kanal, davomiylik, ochiqligi, embed ruxsati va
--                isFamilySafe belgisi 2026-07-31 da YouTube oEmbed hamda
--                sahifadagi playerResponse orqali tasdiqlangan
--
-- NEGA AYNAN SHU. Kartochka o'zagi — «yo'l va davlat»: Keshda tug'ilishdan
-- Samarqandni poytaxt qilishgacha, ya'ni shakllanish, davlat, bunyodkorlik,
-- ilm va hunarmandchilik. Temur haqidagi videolarning aksariyati janglar
-- to'plami; bu esa aynan BUNYODKORLIK haqida: saltanat iqtisodi, savdo
-- yo'llari, hunarmandlar va Samarqandning dunyo tan olgan poytaxtga
-- aylanishi. Kartochkada nomlangan to'rt jihatdan uchtasini yopadi va
-- kartochka yakunlanadigan nuqtaga — poytaxt Samarqandga — olib keladi.
-- Ohang xolis: «Ko'hna tarix» davr rasmlari ustidan diktor matni, na
-- «vayronkor Temur» klishesi, na faktsiz dabdaba.
--
-- ALTERNATIVA (bir qatorni almashtirish kifoya). Xuddi shu turkumdan
-- «Beklikdan hukmdorlikkacha: Amir Temurning hokimiyat tepasiga kelishi» —
-- https://youtu.be/DgB79WB2PCc, 1095 sekund = 18 daq. 15 son., KunUZ.
-- U kartochkaning BIRINCHI yarmini — Barlos urug'i, Kesh, hokimiyatga
-- kelish — yopadi. Tanlanmadi, chunki qadri janglarga suyanadi (afishasi
-- «Ozodlik uchun kurash», otliqlar jangi surati), kartochka esa
-- bunyodkorlik haqida. Agar metodist biografik yoyni afzal ko'rsa —
-- o'sha havolaga o'tiladi.
--
-- OGOHLANTIRISH METODIST UCHUN:
--   1) DAVOMIYLIK: kartochkada ~7 daqiqa, videoda 18. Bola bir o'tirishda
--      ko'rmaydi — darsda bo'lakka bo'lib berish kerak.
--   2) QAMROV: video Temurning TUG'ILISHI va yoshligini bermaydi —
--      kartochkaning «Keshda tug'ilishidan» qismi ochiq qoladi. Buni
--      matn bilan to'ldirish yoki alternativaga o'tish kerak.
--   3) OHANG: turkum «27 davlatni birlashtirgan» kabi ko'tarinki
--      iboralarni ishlatadi. Faktik xatolik emas, lekin bolalar
--      auditoriyasi uchun urg'u to'g'riligini ko'rib baholash kerak.
--   4) YOSH: o'smirlarga mos; qonli sahnalar yo'q, ammo matn kattalar
--      auditoriyasiga qaralgan.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=LAgGNWaNPQU',
       status           = 'PUBLISHED',
       duration_minutes = 18,
       source           = $$YouTube: KunUZ$$
 WHERE title_uz = $$Sohibqiron: Shahrisabzdan Samarqandgacha$$;
