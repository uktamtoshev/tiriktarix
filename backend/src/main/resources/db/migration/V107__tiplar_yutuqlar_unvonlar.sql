-- Qahramon tiplari, yutuqlar va unvonlar — kodddan bazaga.
--
-- MUAMMO. Bu uch ro'yxat kodda yotardi va HAR BIRI ikki-uch joyda takrorlangan
-- edi:
--   • tiplar   — `Archetypes.java` + `lib/archetypes.ts` + `Avatar3D.tsx` (KNOWN)
--   • yutuqlar — `Achievements.java` + `profil/page.tsx` (DEMO_STATS)
--   • unvonlar — `Levels.java` + `profil/page.tsx` (RANKS)
-- Metodist yutuq nomini o'zgartira olmasdi, va nusxalar vaqt o'tishi bilan
-- bir-biridan uzoqlashardi.
--
-- MA'LUMOT BAZAGA, QOIDA KODDA. Bazada — matn, emoji, chegara (target) va
-- tartib. Kodda — HISOBLASH: qaysi ko'rsatkich qaysi yutuqni oziqlantiradi va
-- daraja XP dan qanday chiqadi. Shuning uchun `achievements.metric` ustuni
-- CHECK bilan qattiq ro'yxatga bog'langan: metodist yangi yutuq qo'sha oladi,
-- lekin faqat kod BILADIGAN ko'rsatkich ustiga.
--
-- RUSCHA MATN. Tiplarniki bor edi (`lib/archetypes.ts` da) va shu yerda
-- ko'chirilyapti. Yutuq va unvonlarniki hech qayerda yo'q — ustunlar NULL
-- qoladi va interfeys o'zbekcha aslini ko'rsatadi. O'ylab topilgan tarjima
-- yozilmadi: matnni metodist paneldan kiritadi.

-- ═══════════ Qahramon tiplari ═══════════
CREATE TABLE archetypes (
    id         bigserial PRIMARY KEY,
    code       text    NOT NULL UNIQUE,
    gender     text    NOT NULL CHECK (gender IN ('MALE', 'FEMALE')),
    name_uz    text    NOT NULL,
    name_ru    text,
    tagline_uz text    NOT NULL,
    tagline_ru text,
    ordinal    integer NOT NULL DEFAULT 0
);

INSERT INTO archetypes (code, gender, name_uz, name_ru, tagline_uz, tagline_ru, ordinal) VALUES
('jangchi', 'MALE', 'Jangchi', 'Воин',
 'Keng yelkali, qalqon va qilich bilan safda turadigan jangchi.',
 'Широкоплечий воин со щитом и мечом — тот, кто держит строй.', 0),
('kochmanchi', 'MALE', 'Ko''chmanchi', 'Кочевник',
 'Dasht farzandi: ot ustida tug''ilib, kamon bilan o''sgan.',
 'Сын степи: родился в седле, вырос с луком в руках.', 1),
('amirzoda', 'MALE', 'Amirzoda', 'Амирзаде',
 'Saroy farzandi — ipak to''n va zar kamar egasi.',
 'Дитя дворца — шёлковый халат и золотой пояс.', 2),
('sarkarda', 'MALE', 'Sarkarda', 'Полководец',
 'Qo''shin boshlig''i: uning tug''i turgan joyda saf buzilmaydi.',
 'Глава войска: там, где стоит его знамя, строй не дрогнет.', 3),
('oddiy-yigit', 'MALE', 'Oddiy yigit', 'Простой юноша',
 'Oddiy chopon va do''ppi — hammasi shundan boshlanadi.',
 'Обычный чапан и тюбетейка — всё начинается отсюда.', 4),
('jangchi-qiz', 'FEMALE', 'Jangchi qiz', 'Дева-воин',
 'Qilich tutgan qo''l kuchli, nigoh esa tiyrak.',
 'Рука, держащая меч, сильна, а взгляд — зорок.', 5),
('kochmanchi-qiz', 'FEMALE', 'Ko''chmanchi qiz', 'Дочь степи',
 'Dasht shamoli va uzun o''rim — u ot choptirishni yaxshi biladi.',
 'Степной ветер и длинная коса — она отлично держится в седле.', 6),
('malika', 'FEMALE', 'Malika', 'Малика',
 'Toj va zar libos: saroyning eng ziyrak farzandi.',
 'Корона и золотые одежды: самое смышлёное дитя дворца.', 7),
('olima', 'FEMALE', 'Olima', 'Учёная',
 'Ulug''bek rasadxonasida yulduz sanaydigan olima.',
 'Та, что считает звёзды в обсерватории Улугбека.', 8),
('oddiy-qiz', 'FEMALE', 'Oddiy qiz', 'Простая девушка',
 'Oddiy libos va do''ppi — hammasi shundan boshlanadi.',
 'Обычное платье и тюбетейка — всё начинается отсюда.', 9);

-- ═══════════ Yutuqlar ═══════════
CREATE TABLE achievements (
    id             bigserial PRIMARY KEY,
    code           text    NOT NULL UNIQUE,
    -- Qaysi ko'rsatkich bo'yicha o'lchanadi. Ro'yxatni KOD biladi — shuning
    -- uchun u CHECK bilan qulflangan: noma'lum qiymat kiritib bo'lmaydi.
    metric         text    NOT NULL CHECK (metric IN (
                       'XP', 'STREAK_DAYS', 'TOTAL_QUIZZES', 'PERFECT_QUIZZES',
                       'TOTAL_QUESTIONS', 'CONVERSATIONS', 'HEROES_TALKED',
                       'RIDDLE_SOLVED')),
    target         integer NOT NULL CHECK (target > 0),
    title_uz       text    NOT NULL,
    title_ru       text,
    description_uz text    NOT NULL,
    description_ru text,
    emoji          text    NOT NULL,
    ordinal        integer NOT NULL DEFAULT 0
);

INSERT INTO achievements (code, metric, target, title_uz, description_uz, emoji, ordinal) VALUES
('birinchi-qadam',    'TOTAL_QUIZZES',   1,    'Birinchi qadam',      'Birinchi testni yakunla',                 '👣', 0),
('suhbatdosh',        'CONVERSATIONS',   1,    'Suhbatdosh',          'Qahramon bilan birinchi suhbatni boshla', '💬', 1),
('qahramonlar-dosti', 'HEROES_TALKED',   3,    'Qahramonlar do''sti', '3 xil qahramon bilan gaplash',            '🤝', 2),
('alochi',            'PERFECT_QUIZZES', 1,    'A''lochi',            'Bitta testni xatosiz yakunla',            '🌟', 3),
('yulduzlar-sardori', 'PERFECT_QUIZZES', 5,    'Yulduzlar sardori',   '5 ta testni xatosiz yakunla',             '✨', 4),
('topishmoqchi',      'RIDDLE_SOLVED',   1,    'Topishmoqchi',        'Kunlik topishmoqni to''g''ri yech',       '🧩', 5),
('olovli-seriya',     'STREAK_DAYS',     3,    'Olovli seriya',       '3 kun ketma-ket shug''ullan',             '🔥', 6),
('hafta-olovda',      'STREAK_DAYS',     7,    'Bir hafta olovda',    '7 kunlik seriyaga erish',                 '🗓️', 7),
('birinchi-yuzlik',   'XP',              100,  'Birinchi yuzlik',     '100 XP to''pla',                          '💯', 8),
('xp-xazinasi',       'XP',              1000, 'XP xazinasi',         '1000 XP to''pla',                         '💎', 9),
('bilim-tolovchi',    'TOTAL_QUESTIONS', 50,   'Bilim to''plovchi',   'Jami 50 ta savolga javob ber',            '📚', 10);

-- ═══════════ Unvonlar ═══════════
-- Daraja XP dan hisoblanadi (formula `Levels.java` da qoladi), unvon esa —
-- darajaning oralig'i. Shuning uchun jadvalda faqat QUYI chegara: keyingi
-- yozuvgacha bo'lgan hamma daraja shu unvonga tegishli.
CREATE TABLE ranks (
    id        bigserial PRIMARY KEY,
    min_level integer NOT NULL UNIQUE CHECK (min_level >= 1),
    name_uz   text    NOT NULL,
    name_ru   text,
    emoji     text    NOT NULL
);

-- Ruscha nomlar `profil/page.tsx` dagi `ranks` jadvalidan ko'chirildi. U yerda
-- ular O'ZBEKCHA NOM bo'yicha kalitlangan edi — unvon nomi tuzatilsa, ruscha
-- ko'rinishi jimgina yo'qolardi. Endi ular bir qatorda yonma-yon turadi.
INSERT INTO ranks (min_level, name_uz, name_ru, emoji) VALUES
(1,  'Boshlovchi',  'Начинающий',  '🌱'),
(4,  'Ilg''or',     'Продвинутый', '🚀'),
(7,  'Bilimdon',    'Знаток',      '📚'),
(10, 'Tarixchi',    'Историк',     '🏺'),
(13, 'Alloma',      'Учёный муж',  '🔭'),
(16, 'Donishmand',  'Мудрец',      '🦉'),
(20, 'Sohibqiron',  'Сохибкиран',  '👑');

-- DIQQAT: eng quyi yozuv 1-darajadan boshlanishi kerak, aks holda yangi
-- o'quvchi unvonsiz qoladi. Buni CHECK bilan ifodalab bo'lmaydi (u bitta
-- qatorni ko'radi, jadvalni emas), shuning uchun himoya kodda: zinapoya
-- bo'sh yoki 1-darajasiz bo'lsa, `Levels` ishga tushishdan bosh tortadi.
