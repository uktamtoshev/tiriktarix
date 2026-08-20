-- Bellashuv reytingi.
--
-- NIMA UCHUN. Bellashuvda raqib tasodifan emas, KUCHIGA QARAB tanlanadi:
-- «O'ynash» bosilganda navbatga tushiladi va server reytingi yaqin bo'lgan
-- ikki o'yinchini juftlashtiradi. Buning uchun har bir o'quvchida doimiy
-- reyting bo'lishi kerak — o'yin tugagach u yangilanadi.
--
-- QAYERDA SAQLANADI. `learner_profiles` da: profil allaqachon clientId
-- bo'yicha taniladi va XP hamda seriya shu yerda yotadi. Reyting ham
-- o'quvchining doimiy ko'rsatkichi — alohida jadval kerak emas.
--
-- BOSHLANG'ICH QIYMAT. 1000 — Elo tizimidagi odatiy o'rta nuqta. Yangi
-- o'yinchi darhol o'rtacha kuchli raqiblarga tushadi, keyin esa natijaga
-- qarab yuqoriga yoki pastga siljiydi.

ALTER TABLE learner_profiles
    ADD COLUMN duel_rating  INTEGER NOT NULL DEFAULT 1000,
    ADD COLUMN duel_wins    INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN duel_losses  INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN duel_draws   INTEGER NOT NULL DEFAULT 0;

-- Reyting bo'yicha raqib qidirish — navbatdagi eng yaqin o'yinchini topish uchun
CREATE INDEX idx_learner_profiles_duel_rating ON learner_profiles (duel_rating);
