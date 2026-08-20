-- M2. Hujjatli filmlar va tarixiy shortlar — kinozal katalogi.
--
-- MUHIM. Bu yerda TAYYOR video yo'q: kontseptsiya bo'yicha animatsiya 2-fazada
-- ishlab chiqiladi. Jadval ishlab chiqarish konveyerini saqlaydi, ya'ni har bir
-- yozuv — rejalashtirilgan seriya va uning holati:
--   PLANNED   — mavzu tanlangan, fakt kartochkalari yig'ilmoqda
--   SCRIPT    — stsenariy yozilgan
--   IN_REVIEW — metodist-tarixchi tekshiruvida
--   PUBLISHED — nashr etilgan, video_url to'ldirilgan
-- Shu sababli hozircha barcha yozuvlar PUBLISHED emas va video_url = NULL.
-- Interfeys holatni ochiq ko'rsatadi — bolaga «tez orada» deb yolg'on aytilmaydi.

CREATE TABLE films (
    id               BIGSERIAL PRIMARY KEY,
    era_id           BIGINT  REFERENCES eras (id),
    hero_id          BIGINT  REFERENCES heroes (id),
    title_uz         TEXT    NOT NULL,
    kind             TEXT    NOT NULL CHECK (kind IN ('SHORT', 'DOC', 'FEATURE')),
    duration_minutes INT,
    synopsis_uz      TEXT    NOT NULL,
    poster_emoji     TEXT,
    status           TEXT    NOT NULL CHECK (status IN ('PLANNED', 'SCRIPT', 'IN_REVIEW', 'PUBLISHED')),
    video_url        TEXT,
    -- Stsenariy qaysi manbaga tayanadi (M1 prinsipi filmlar uchun ham amal qiladi)
    source           TEXT    NOT NULL,
    verified         BOOLEAN NOT NULL DEFAULT FALSE,
    ordinal          INT     NOT NULL DEFAULT 0,

    -- Nashr etilgan seriyada video havolasi bo'lishi shart
    CONSTRAINT films_published_needs_video
        CHECK (status <> 'PUBLISHED' OR video_url IS NOT NULL)
);

CREATE INDEX idx_films_era ON films (era_id, ordinal);
CREATE INDEX idx_films_hero ON films (hero_id, ordinal);

-- ===================== DAVRLAR BO'YICHA SERIYALAR =====================

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$«Avesto» sahifalari$$, 3,
       $$Qadimgi Xorazm va «Avesto» kitobi: u qachon yozilgan, nima haqida va nega uni dunyoning eng qadimiy yozma yodgorliklaridan biri deyishadi.$$,
       $$📜$$, 'SCRIPT', $$«O'zbekiston tarixi» 6-sinf darsligi$$, 1 FROM eras WHERE code = 'qadimgi';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$Selungur g'oridagi izlar$$, 3,
       $$Farg'ona vodiysidagi Selungur g'ori: eng qadimgi odamlar qanday yashagan va arxeologlar u yerdan nima topgan.$$,
       $$🏺$$, 'PLANNED', $$«O'zbekiston tarixi» 6-sinf darsligi$$, 2 FROM eras WHERE code = 'qadimgi';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$Ipak yo'li: bir karvonning yo'li$$, 4,
       $$Bir karvon ko'zi bilan Buyuk ipak yo'li: qanday mollar tashilgan, yo'lda qanday shaharlar bo'lgan va savdo nima uchun shunchaki savdo emas edi.$$,
       $$🐫$$, 'IN_REVIEW', $$UNESCO, «History of Civilizations of Central Asia»$$, 1 FROM eras WHERE code = 'antik';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$Iskandar Sirdaryo bo'yida$$, 3,
       $$Miloddan avvalgi 329-yil: Iskandar Zulqarnayn yurishi Movarounnahrga yetib keladi va nega bu yerda uzoq qololmaydi.$$,
       $$⚔️$$, 'PLANNED', $$«O'zbekiston tarixi» 6-sinf darsligi$$, 2 FROM eras WHERE code = 'antik';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'DOC', $$Buxoro: olimlar shahri$$, 6,
       $$Somoniylar davrida Buxoro qanday qilib ilm markaziga aylandi: kutubxonalar, olimlar va ular yozgan kitoblar.$$,
       $$📚$$, 'IN_REVIEW', $$«O'zbekiston tarixi» 6-sinf darsligi$$, 1 FROM eras WHERE code = 'arab';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$Al-Xorazmiy va algoritm$$, 3,
       $$Nega butun dunyo «algoritm» so'zini ishlatadi va bu so'z qayerdan kelgan.$$,
       $$🔢$$, 'SCRIPT', $$«O'zbekiston milliy ensiklopediyasi»$$, 2 FROM eras WHERE code = 'arab';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'DOC', $$Registon qanday qurilgan$$, 6,
       $$Samarqand markazidagi ansambl: uch madrasa, ularni kim va qachon qurdirgan, naqshlar nimani anglatadi.$$,
       $$🕌$$, 'SCRIPT', $$«O'zbekiston tarixi» 7-sinf darsligi$$, 1 FROM eras WHERE code = 'temuriylar';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$Bir kun Samarqandda, 1400-yil$$, 4,
       $$Temuriylar poytaxtida oddiy kun: bozor, ustaxonalar, madrasa va shahar devorlari.$$,
       $$🏙️$$, 'PLANNED', $$«O'zbekiston tarixi» 7-sinf darsligi$$, 2 FROM eras WHERE code = 'temuriylar';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$Uch xonlik: bir yurt, uch davlat$$, 4,
       $$Buxoro, Xiva va Qo'qon: nega yagona yurt uchga bo'lindi va bu nimaga olib keldi.$$,
       $$🏛️$$, 'PLANNED', $$«O'zbekiston tarixi» 8-sinf darsligi$$, 1 FROM eras WHERE code = 'xonliklar';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$Yangi usul maktablari$$, 3,
       $$Jadidlar nima uchun yangi maktab ochdi, u eski maktabdan nimasi bilan farq qilgan.$$,
       $$✒️$$, 'SCRIPT', $$«O'zbekiston tarixi» 8-sinf darsligi$$, 1 FROM eras WHERE code = 'jadidlar';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'DOC', $$Birinchi o'zbek matbuoti$$, 5,
       $$Gazeta va teatr qanday qilib ma'rifat quroliga aylandi.$$,
       $$📰$$, 'PLANNED', $$«O'zbekiston milliy ensiklopediyasi»$$, 2 FROM eras WHERE code = 'jadidlar';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'DOC', $$Turkiston muxtoriyati$$, 6,
       $$1917–1918-yillar: muxtoriyat qanday e'lon qilindi va nega uzoq yashamadi.$$,
       $$🕊️$$, 'PLANNED', $$«O'zbekiston tarixi» 9-sinf darsligi$$, 1 FROM eras WHERE code = 'xx-asr';

INSERT INTO films (era_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT id, 'SHORT', $$Mustaqillik ramzlari$$, 3,
       $$Bayroq, gerb va madhiya: har bir ramzdagi rang va belgi nimani bildiradi.$$,
       $$🇺🇿$$, 'SCRIPT', $$O'zbekiston Respublikasi Konstitutsiyasi$$, 1 FROM eras WHERE code = 'mustaqillik';

-- ===================== QAHRAMONLAR BO'YICHA SERIYALAR =====================

INSERT INTO films (era_id, hero_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT h.era_id, h.id, 'DOC', $$Sohibqiron: Shahrisabzdan Samarqandgacha$$, 7,
       $$Amir Temurning yo'li: Keshda tug'ilishidan Samarqandni poytaxt qilishigacha.$$,
       $$⚔️$$, 'SCRIPT', $$«O'zbekiston tarixi» 7-sinf darsligi$$, 10
FROM heroes h WHERE h.slug = 'amir-temur';

INSERT INTO films (era_id, hero_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT h.era_id, h.id, 'DOC', $$Ulug'bek rasadxonasi: 1018 yulduz$$, 7,
       $$Rasadxona qanday ishlagan, sekstant nima va yulduzlar jadvali qanday tuzilgan.$$,
       $$🔭$$, 'IN_REVIEW', $$«O'zbekiston tarixi» 7-sinf darsligi$$, 11
FROM heroes h WHERE h.slug = 'mirzo-ulugbek';

INSERT INTO films (era_id, hero_id, kind, title_uz, duration_minutes, synopsis_uz, poster_emoji, status, source, ordinal)
SELECT h.era_id, h.id, 'DOC', $$Navoiy: turkiy so'z kuchi$$, 7,
       $$«Xamsa» qanday yozilgan va nega Navoiy o'zbek adabiyotining asoschisi deyiladi.$$,
       $$📜$$, 'SCRIPT', $$«O'zbekiston tarixi» 7-sinf darsligi$$, 12
FROM heroes h WHERE h.slug = 'alisher-navoiy';
