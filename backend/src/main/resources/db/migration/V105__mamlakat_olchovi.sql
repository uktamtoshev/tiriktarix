-- Ikkinchi tarix: mamlakat o'lchovi.
--
-- MUAMMO. Butun katalog — davrlar, ajdodlar, voqealar, filmlar, xaritalar,
-- kartochkalar va test savollari — bitta yashirin taxminga qurilgan edi:
-- «bu O'zbekiston tarixi». Ikkinchi tarixni (masalan, Rossiya tarixini)
-- qo'shish uchun shu taxminni OSHKOR qilish kerak: har bir yozuv qaysi
-- tarixga tegishli ekanini o'zi aytib tursin.
--
-- NEGA HAR BIR JADVALDA, faqat `eras` da emas. Voqea, film va xarita qatlami
-- davr orqali bog'langan, ammo ro'yxat sahifalari davr tanlanmagan holatda
-- HAMMASINI so'raydi (`/api/events` filtrsiz). Agar mamlakat faqat `eras` da
-- tursa, har bir so'rovda JOIN kerak bo'lardi. Ustun yozuvning yonida
-- turgani — so'rovni ham, boshqaruv panelini ham soddalashtiradi.
--
-- ZAXIRA. Standart qiymat 'UZ': mavjud 121 ajdod, 8 davr, 64 voqea va qolgan
-- hamma narsa o'zbek tarixida qoladi. Bitta yozuv ham joyini o'zgartirmaydi.
--
-- MUHIM. Bu migratsiya faqat TUZILISH qo'shadi. Rossiya tarixining mazmuni
-- (davrlar, ajdodlar, voqealar, faktlar) bu yerda YARATILMAYDI — uni
-- metodist-tarixchi boshqaruv panelidan kiritadi va tasdiqlaydi.
-- «Prinsip №1»: shaklni dastur beradi, haqiqat uchun odam javob beradi.

ALTER TABLE eras              ADD COLUMN country varchar(2) NOT NULL DEFAULT 'UZ';
ALTER TABLE heroes            ADD COLUMN country varchar(2) NOT NULL DEFAULT 'UZ';
ALTER TABLE historical_events ADD COLUMN country varchar(2) NOT NULL DEFAULT 'UZ';
ALTER TABLE films             ADD COLUMN country varchar(2) NOT NULL DEFAULT 'UZ';
ALTER TABLE map_features      ADD COLUMN country varchar(2) NOT NULL DEFAULT 'UZ';
ALTER TABLE fact_cards        ADD COLUMN country varchar(2) NOT NULL DEFAULT 'UZ';
ALTER TABLE quiz_questions    ADD COLUMN country varchar(2) NOT NULL DEFAULT 'UZ';

-- Ro'yxat sahifalari deyarli har doim mamlakat bo'yicha so'raydi, shuning
-- uchun mavjud tartiblash indekslariga mamlakat old tomondan qo'shiladi.
CREATE INDEX idx_eras_country              ON eras (country, ordinal);
CREATE INDEX idx_heroes_country            ON heroes (country);
CREATE INDEX idx_events_country            ON historical_events (country, year_from);
CREATE INDEX idx_films_country             ON films (country, ordinal, id);
CREATE INDEX idx_map_features_country      ON map_features (country, era_id);
CREATE INDEX idx_fact_cards_country        ON fact_cards (country);
CREATE INDEX idx_quiz_questions_country    ON quiz_questions (country);

-- DAVR KODI GLOBAL YAGONA BO'LIB QOLADI.
--
-- Uni «mamlakat ichida yagona» qilish jozibali ko'rinadi, lekin `findByCode`
-- yetti joyda ishlatiladi (film, xarita, kutubxona, test, voqealar, panel) va
-- ularning hammasi bitta davr qaytishiga tayanadi. Kod takrorlansa, o'sha
-- joylar jimgina noto'g'ri davrni olib qolardi.
--
-- Shuning uchun ikkinchi tarixning davrlari O'Z kodini oladi, masalan
-- 'ru-kiev-rusi'. Manzil ham shundan tushunarli bo'ladi: /davrlar/ru-kiev-rusi.
