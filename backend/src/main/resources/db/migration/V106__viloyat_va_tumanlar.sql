-- O'zbekiston ma'muriy bo'linishi — ro'yxatdan o'tish shakli uchun.
--
-- NEGA BAZAGA KO'CHDI. Ro'yxat `frontend/src/lib/regions.ts` faylida yotardi:
-- 14 viloyat va 90 dan ortiq tuman. Faylning O'Z izohida yozilganidek, bu
-- ro'yxatni SOATO (MHOBT) rasmiy klassifikatori bilan solishtirib turish kerak,
-- chunki tumanlar tashkil etiladi va nomlari almashadi. Har bir shunday
-- o'zgarish uchun frontendni qayta yig'ish — noto'g'ri: bu ma'lumot, kod emas.
--
-- «BOSHQA TUMAN» JADVALDA YO'Q. U ro'yxatning bir qismi emas, balki
-- interfeysning zaxira varianti: ro'yxat to'liq bo'lmasa, bola tumanini o'zi
-- yozadi. Shuning uchun u frontendda qoladi.
--
-- PROFILGA NOMI YOZILADI (kod emas, id emas): ma'muriy bo'linish o'zgarganda
-- eski yozuvlar ma'nosini yo'qotmasin. Shu bois bu jadval — faqat TANLOV
-- ro'yxati, `learner_profiles.region_uz` ga tashqi kalit emas.

CREATE TABLE regions (
    id      bigserial PRIMARY KEY,
    name_uz text    NOT NULL UNIQUE,
    ordinal integer NOT NULL DEFAULT 0
);

CREATE TABLE districts (
    id        bigserial PRIMARY KEY,
    region_id bigint  NOT NULL REFERENCES regions (id) ON DELETE CASCADE,
    name_uz   text    NOT NULL,
    ordinal   integer NOT NULL DEFAULT 0,
    UNIQUE (region_id, name_uz)
);

CREATE INDEX idx_districts_region ON districts (region_id, ordinal);


-- ═══════════ Toshkent shahri ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Toshkent shahri', 0);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bektemir tumani', 0 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Chilonzor tumani', 1 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Mirobod tumani', 2 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Mirzo Ulug''bek tumani', 3 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Olmazor tumani', 4 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Sergeli tumani', 5 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Shayxontohur tumani', 6 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Uchtepa tumani', 7 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yakkasaroy tumani', 8 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yangihayot tumani', 9 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yashnobod tumani', 10 FROM regions WHERE name_uz = 'Toshkent shahri';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yunusobod tumani', 11 FROM regions WHERE name_uz = 'Toshkent shahri';

-- ═══════════ Toshkent viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Toshkent viloyati', 1);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bekobod shahri', 0 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bekobod tumani', 1 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bo''ka tumani', 2 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bo''stonliq tumani', 3 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Chinoz tumani', 4 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Chirchiq shahri', 5 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Ohangaron shahri', 6 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Ohangaron tumani', 7 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Oqqo''rg''on tumani', 8 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Parkent tumani', 9 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Piskent tumani', 10 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Quyi Chirchiq tumani', 11 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Nurafshon shahri', 12 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'O''rta Chirchiq tumani', 13 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yangiyo''l shahri', 14 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yangiyo''l tumani', 15 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yuqori Chirchiq tumani', 16 FROM regions WHERE name_uz = 'Toshkent viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Zangiota tumani', 17 FROM regions WHERE name_uz = 'Toshkent viloyati';

-- ═══════════ Andijon viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Andijon viloyati', 2);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Andijon shahri', 0 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Andijon tumani', 1 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Asaka tumani', 2 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Baliqchi tumani', 3 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bo''ston tumani', 4 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Buloqboshi tumani', 5 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Izboskan tumani', 6 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Jalaquduq tumani', 7 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Marhamat tumani', 8 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Oltinko''l tumani', 9 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Paxtaobod tumani', 10 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qo''rg''ontepa tumani', 11 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Shahrixon tumani', 12 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Ulug''nor tumani', 13 FROM regions WHERE name_uz = 'Andijon viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Xo''jaobod tumani', 14 FROM regions WHERE name_uz = 'Andijon viloyati';

-- ═══════════ Buxoro viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Buxoro viloyati', 3);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Buxoro shahri', 0 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Buxoro tumani', 1 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'G''ijduvon tumani', 2 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Jondor tumani', 3 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Kogon shahri', 4 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Kogon tumani', 5 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Olot tumani', 6 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Peshku tumani', 7 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qorako''l tumani', 8 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qorovulbozor tumani', 9 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Romitan tumani', 10 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Shofirkon tumani', 11 FROM regions WHERE name_uz = 'Buxoro viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Vobkent tumani', 12 FROM regions WHERE name_uz = 'Buxoro viloyati';

-- ═══════════ Farg'ona viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Farg''ona viloyati', 4);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bag''dod tumani', 0 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Beshariq tumani', 1 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Buvayda tumani', 2 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Dang''ara tumani', 3 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Farg''ona shahri', 4 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Farg''ona tumani', 5 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Furqat tumani', 6 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yozyovon tumani', 7 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qo''qon shahri', 8 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qo''shtepa tumani', 9 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Quva tumani', 10 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Quvasoy shahri', 11 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Rishton tumani', 12 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'So''x tumani', 13 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Toshloq tumani', 14 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Uchko''prik tumani', 15 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'O''zbekiston tumani', 16 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Oltiariq tumani', 17 FROM regions WHERE name_uz = 'Farg''ona viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Marg''ilon shahri', 18 FROM regions WHERE name_uz = 'Farg''ona viloyati';

-- ═══════════ Jizzax viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Jizzax viloyati', 5);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Arnasoy tumani', 0 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Baxmal tumani', 1 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Do''stlik tumani', 2 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Forish tumani', 3 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'G''allaorol tumani', 4 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Jizzax shahri', 5 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Mirzacho''l tumani', 6 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Paxtakor tumani', 7 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Sharof Rashidov tumani', 8 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yangiobod tumani', 9 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Zafarobod tumani', 10 FROM regions WHERE name_uz = 'Jizzax viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Zomin tumani', 11 FROM regions WHERE name_uz = 'Jizzax viloyati';

-- ═══════════ Xorazm viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Xorazm viloyati', 6);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bog''ot tumani', 0 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Gurlan tumani', 1 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Hazorasp tumani', 2 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Xiva shahri', 3 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Xonqa tumani', 4 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qo''shko''pir tumani', 5 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Shovot tumani', 6 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Urganch shahri', 7 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Urganch tumani', 8 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yangiariq tumani', 9 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yangibozor tumani', 10 FROM regions WHERE name_uz = 'Xorazm viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Tuproqqal''a tumani', 11 FROM regions WHERE name_uz = 'Xorazm viloyati';

-- ═══════════ Namangan viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Namangan viloyati', 7);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Chortoq tumani', 0 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Chust tumani', 1 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Kosonsoy tumani', 2 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Mingbuloq tumani', 3 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Namangan shahri', 4 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Namangan tumani', 5 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Norin tumani', 6 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Pop tumani', 7 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'To''raqo''rg''on tumani', 8 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Uchqo''rg''on tumani', 9 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Uychi tumani', 10 FROM regions WHERE name_uz = 'Namangan viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yangiqo''rg''on tumani', 11 FROM regions WHERE name_uz = 'Namangan viloyati';

-- ═══════════ Navoiy viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Navoiy viloyati', 8);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Karmana tumani', 0 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Konimex tumani', 1 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Navbahor tumani', 2 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Navoiy shahri', 3 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Nurota tumani', 4 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qiziltepa tumani', 5 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Tomdi tumani', 6 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Uchquduq tumani', 7 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Xatirchi tumani', 8 FROM regions WHERE name_uz = 'Navoiy viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Zarafshon shahri', 9 FROM regions WHERE name_uz = 'Navoiy viloyati';

-- ═══════════ Qashqadaryo viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Qashqadaryo viloyati', 9);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Chiroqchi tumani', 0 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Dehqonobod tumani', 1 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'G''uzor tumani', 2 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Kasbi tumani', 3 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Kitob tumani', 4 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Koson tumani', 5 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Mirishkor tumani', 6 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Muborak tumani', 7 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Nishon tumani', 8 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qamashi tumani', 9 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qarshi shahri', 10 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qarshi tumani', 11 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Shahrisabz shahri', 12 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Shahrisabz tumani', 13 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yakkabog'' tumani', 14 FROM regions WHERE name_uz = 'Qashqadaryo viloyati';

-- ═══════════ Samarqand viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Samarqand viloyati', 10);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bulung''ur tumani', 0 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Ishtixon tumani', 1 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Jomboy tumani', 2 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Kattaqo''rg''on shahri', 3 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Kattaqo''rg''on tumani', 4 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Narpay tumani', 5 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Nurobod tumani', 6 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Oqdaryo tumani', 7 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Passdarg''om tumani', 8 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Paxtachi tumani', 9 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qo''shrabot tumani', 10 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Samarqand shahri', 11 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Samarqand tumani', 12 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Toyloq tumani', 13 FROM regions WHERE name_uz = 'Samarqand viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Urgut tumani', 14 FROM regions WHERE name_uz = 'Samarqand viloyati';

-- ═══════════ Sirdaryo viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Sirdaryo viloyati', 11);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Boyovut tumani', 0 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Guliston shahri', 1 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Guliston tumani', 2 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Mirzaobod tumani', 3 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Oqoltin tumani', 4 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Sardoba tumani', 5 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Sayxunobod tumani', 6 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Shirin shahri', 7 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Sirdaryo tumani', 8 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Xovos tumani', 9 FROM regions WHERE name_uz = 'Sirdaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Yangiyer shahri', 10 FROM regions WHERE name_uz = 'Sirdaryo viloyati';

-- ═══════════ Surxondaryo viloyati ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Surxondaryo viloyati', 12);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Angor tumani', 0 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Bandixon tumani', 1 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Boysun tumani', 2 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Denov tumani', 3 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Jarqo''rg''on tumani', 4 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Muzrabot tumani', 5 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Oltinsoy tumani', 6 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qiziriq tumani', 7 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qumqo''rg''on tumani', 8 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Sariosiyo tumani', 9 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Sherobod tumani', 10 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Sho''rchi tumani', 11 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Termiz shahri', 12 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Termiz tumani', 13 FROM regions WHERE name_uz = 'Surxondaryo viloyati';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Uzun tumani', 14 FROM regions WHERE name_uz = 'Surxondaryo viloyati';

-- ═══════════ Qoraqalpog'iston Respublikasi ═══════════
INSERT INTO regions (name_uz, ordinal) VALUES ('Qoraqalpog''iston Respublikasi', 13);
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Amudaryo tumani', 0 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Beruniy tumani', 1 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Chimboy tumani', 2 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Ellikqal''a tumani', 3 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Kegeyli tumani', 4 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Mo''ynoq tumani', 5 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Nukus shahri', 6 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Nukus tumani', 7 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qanliko''l tumani', 8 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qo''ng''irot tumani', 9 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Qorao''zak tumani', 10 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Shumanay tumani', 11 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Taxtako''pir tumani', 12 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'To''rtko''l tumani', 13 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
INSERT INTO districts (region_id, name_uz, ordinal) SELECT id, 'Xo''jayli tumani', 14 FROM regions WHERE name_uz = 'Qoraqalpog''iston Respublikasi';
