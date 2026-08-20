-- O'quvchining shaxsiy ma'lumotlari: ism, familiya, tug'ilgan sana, hudud, maktab.
--
-- NIMA UCHUN. Ro'yxatdan o'tish shu paytgacha butunlay anonim edi (taxallus va
-- parol). Endi loyihaga maktablar bilan ishlash kerak: o'qituvchi o'z sinfini
-- ko'rishi, natijalar viloyat va maktab kesimida yig'ilishi lozim. Buning uchun
-- bola kim ekani va qayerda o'qishi ma'lum bo'lishi shart.
--
-- BU MA'LUMOTLAR OCHIQ EMAS. Reyting, suhbat va bellashuvda avvalgidek
-- TAXALLUS ko'rinadi: `display_name` tegilmaydi. Haqiqiy ism faqat shu
-- ustunlarda yotadi va uni boshqaruv panelidagi xodim ko'radi. Bola nomi
-- boshqa bolalarga ko'rinadigan joyga hech qachon chiqmaydi.
--
-- USTUNLAR NULL BO'LISHI MUMKIN. Bazada allaqachon ikki xil profil bor:
-- mehmonlar (umuman ro'yxatdan o'tmagan) va eski akkauntlar (bu maydonlar
-- so'ralmagan paytda ochilgan). Ularni buzmaslik uchun ustunlar bo'sh
-- qoldiriladi; majburiylik faqat YANGI ro'yxatdan o'tishda, serverda
-- tekshiriladi (AuthService).
--
-- TUMAN VA MAKTAB — MATN. Tuman ro'yxati interfeysda tanlanadi, lekin bazada
-- nomi bilan saqlanadi: ma'muriy bo'linish o'zgarganda eski yozuvlar
-- ma'nosini yo'qotmasin. Maktab esa umuman erkin matn — respublikadagi barcha
-- maktablarning tasdiqlangan ro'yxati loyihada yo'q.

ALTER TABLE learner_profiles
    ADD COLUMN first_name  VARCHAR(60),
    ADD COLUMN last_name   VARCHAR(60),
    ADD COLUMN birth_date  DATE,
    ADD COLUMN region_uz   VARCHAR(60),
    ADD COLUMN district_uz VARCHAR(80),
    ADD COLUMN school_uz   VARCHAR(120);

-- Maktab va hudud kesimidagi hisobotlar uchun
CREATE INDEX idx_learner_profiles_region ON learner_profiles (region_uz);
CREATE INDEX idx_learner_profiles_school ON learner_profiles (school_uz);
