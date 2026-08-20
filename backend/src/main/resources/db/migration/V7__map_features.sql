-- Zamon xaritalari (M3 — xarita qatlami).
--
-- KOORDINATA TIZIMI. Barcha geometriyalar bitta SVG mo'ljalida saqlanadi:
--   viewBox = "0 0 1000 700"
--   x = (uzunlik° - 55) * 50          (55°Sh — 75°Sh)
--   y = (47 - kenglik°) * 58.333      (47°Shim — 35°Shim)
-- Shu sabab frontend hech qanday proyeksiya hisoblamaydi — path'ni to'g'ridan chizadi.
--
-- ISHONCHLILIK. Chegaralar SXEMATIK: o'rta asr davlatlarining aniq chegarasi
-- manbalarda bir xil emas, shuning uchun hudud qatlamlari verified = FALSE bilan
-- kiritiladi va interfeysda «metodist tasdig'ini kutmoqda» deb belgilanadi.
-- Shaharlar haqiqiy koordinatalarga qo'yilgan, ular verified = TRUE.

CREATE TABLE map_features (
    id             BIGSERIAL PRIMARY KEY,
    -- NULL — barcha davrlarda ko'rinadi (masalan, shaharlar), aks holda — faqat shu davrda
    era_id         BIGINT  REFERENCES eras (id),
    kind           TEXT    NOT NULL CHECK (kind IN ('TERRITORY', 'CITY', 'ROUTE')),
    name_uz        TEXT    NOT NULL,
    -- TERRITORY/ROUTE uchun SVG path 'd'; CITY uchun "x,y"
    geometry       TEXT    NOT NULL,
    description_uz TEXT,
    source         TEXT    NOT NULL,
    verified       BOOLEAN NOT NULL DEFAULT FALSE,
    -- era_id NULL bo'lganda ko'rinish oralig'i (davr yillari bilan kesishsa chiziladi)
    min_year       INT,
    max_year       INT,
    ordinal        INT     NOT NULL DEFAULT 0
);

CREATE INDEX idx_map_features_era ON map_features (era_id, kind);

-- ===================== SHAHARLAR (barcha davrlarda) =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, min_year, max_year, ordinal) VALUES
(NULL, 'CITY', $$Samarqand$$,       $$598,429$$, $$So'g'diyona poytaxti, keyinchalik Amir Temur saltanatining poytaxti.$$, $$«O'zbekiston tarixi» 6–7-sinf darsligi$$, TRUE, NULL, NULL, 1),
(NULL, 'CITY', $$Buxoro$$,          $$471,422$$, $$Somoniylar davlati poytaxti, keyin Buxoro amirligi markazi.$$,        $$«O'zbekiston tarixi» 6–7-sinf darsligi$$, TRUE, NULL, NULL, 2),
(NULL, 'CITY', $$Xiva$$,            $$268,328$$, $$Xorazm vohasining tarixiy shahri, Xiva xonligi poytaxti.$$,            $$«O'zbekiston milliy ensiklopediyasi»$$,   TRUE, NULL, NULL, 3),
(NULL, 'CITY', $$Toshkent$$,        $$712,332$$, $$Choch vohasining markazi, hozirgi O'zbekiston poytaxti.$$,             $$«O'zbekiston milliy ensiklopediyasi»$$,   TRUE, NULL, NULL, 4),
(NULL, 'CITY', $$Termiz$$,          $$614,571$$, $$Amudaryo bo'yidagi qadimiy shahar, Baqtriya va Kushon markazlaridan.$$, $$«O'zbekiston tarixi» 6–7-sinf darsligi$$, TRUE, NULL, NULL, 5),
(NULL, 'CITY', $$Shahrisabz$$,      $$591,463$$, $$Kesh — Amir Temurning vatani, Oqsaroy shu yerda qurilgan.$$,           $$«O'zbekiston tarixi» 7-sinf darsligi$$,   TRUE, NULL, NULL, 6),
(NULL, 'CITY', $$Xo'jand$$,         $$731,392$$, $$Sirdaryo bo'yidagi shahar, Farg'ona vodiysining g'arbiy darvozasi.$$,  $$«O'zbekiston milliy ensiklopediyasi»$$,   TRUE, NULL, NULL, 7),
(NULL, 'CITY', $$Andijon$$,         $$867,362$$, $$Farg'ona vodiysining yirik shahri, Bobur tug'ilgan joy.$$,             $$«O'zbekiston milliy ensiklopediyasi»$$,   TRUE, NULL, NULL, 8),
(NULL, 'CITY', $$Qarshi$$,          $$539,475$$, $$Nasaf — Qashqadaryo vohasining qadimiy markazi.$$,                     $$«O'zbekiston milliy ensiklopediyasi»$$,   TRUE, NULL, NULL, 9),
(NULL, 'CITY', $$Balx$$,            $$595,598$$, $$Baqtriya poytaxti, «shaharlar onasi» deb atalgan.$$,                   $$UNESCO, «History of Civilizations of Central Asia»$$, TRUE, NULL, 1500, 10),
(NULL, 'CITY', $$Marv$$,            $$359,545$$, $$Ipak yo'lidagi eng yirik shaharlardan biri; 1221-yilda vayron etilgan.$$, $$UNESCO, «History of Civilizations of Central Asia»$$, TRUE, NULL, 1300, 11),
(NULL, 'CITY', $$Ko'hna Urganch$$,  $$208,272$$, $$Xorazmshohlar davlatining poytaxti.$$,                                 $$UNESCO, «History of Civilizations of Central Asia»$$, TRUE, NULL, 1600, 12),
(NULL, 'CITY', $$Qo'qon$$,          $$797,377$$, $$Qo'qon xonligi poytaxti (1709-yildan).$$,                              $$«O'zbekiston tarixi» 8-sinf darsligi$$,   TRUE, 1709, NULL, 13),
(NULL, 'CITY', $$Nukus$$,           $$230,265$$, $$Qoraqalpog'iston Respublikasi poytaxti.$$,                             $$«O'zbekiston milliy ensiklopediyasi»$$,   TRUE, 1932, NULL, 14);

-- ===================== I. QADIMGI DAVR =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Katta Xorazm$$,
       $$M205 250 L300 262 L330 305 L312 372 L232 386 L182 330 Z$$,
       $$Amudaryo quyi oqimidagi qadimiy davlat; «Avesto» bilan bog'lanadigan hudud.$$,
       $$«O'zbekiston tarixi» 6-sinf darsligi$$, FALSE, 1 FROM eras WHERE code = 'qadimgi';

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$So'g'diyona$$,
       $$M436 398 L556 386 L648 404 L668 470 L556 492 L448 470 Z$$,
       $$Zarafshon vodiysidagi shahar-davlatlar ittifoqi: Samarqand va Buxoro atrofi.$$,
       $$«O'zbekiston tarixi» 6-sinf darsligi$$, FALSE, 2 FROM eras WHERE code = 'qadimgi';

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Baqtriya$$,
       $$M528 526 L688 512 L748 566 L722 634 L578 640 L520 588 Z$$,
       $$Amudaryoning yuqori oqimidagi qadimiy viloyat, markazi — Balx.$$,
       $$UNESCO, «History of Civilizations of Central Asia»$$, FALSE, 3 FROM eras WHERE code = 'qadimgi';

-- ===================== II. ANTIK DAVR =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Kushon saltanati$$,
       $$M420 452 L640 420 L800 470 L836 604 L700 668 L500 662 L410 566 Z$$,
       $$Milodiy I–III asrlarda Markaziy Osiyo va Shimoliy Hindistonni birlashtirgan saltanat.$$,
       $$UNESCO, «History of Civilizations of Central Asia»$$, FALSE, 1 FROM eras WHERE code = 'antik';

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'ROUTE', $$Iskandar Zulqarnayn yurishi$$,
       $$M300 620 L420 604 L520 598 L595 598 L600 500 L598 429 L660 410 L731 392$$,
       $$Miloddan avvalgi 329-yilda Baqtriya orqali Marokanda (Samarqand) va Sirdaryogacha.$$,
       $$«O'zbekiston tarixi» 6-sinf darsligi$$, FALSE, 2 FROM eras WHERE code = 'antik';

-- ===================== III. ARABLAR DAVRI =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Somoniylar davlati$$,
       $$M320 322 L470 300 L640 330 L768 372 L792 520 L676 604 L500 622 L392 560 L302 452 Z$$,
       $$819–999-yillar: poytaxti Buxoro bo'lgan davlat, Movarounnahr ilm-fanining oltin asri.$$,
       $$«O'zbekiston tarixi» 6-sinf darsligi$$, FALSE, 1 FROM eras WHERE code = 'arab';

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'ROUTE', $$Buyuk ipak yo'li$$,
       $$M180 300 L280 340 L471 422 L598 429 L731 392 L889 377$$,
       $$Xorazmdan Buxoro va Samarqand orqali Farg'ona vodiysi va Xitoy tomon ketgan savdo yo'li.$$,
       $$UNESCO, «History of Civilizations of Central Asia»$$, FALSE, 2 FROM eras WHERE code = 'arab';

-- ===================== IV. TEMURIYLAR DAVRI =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Amir Temur saltanati$$,
       $$M150 200 L420 150 L700 190 L880 262 L906 470 L840 620 L620 676 L400 660 L232 570 L118 420 L136 300 Z$$,
       $$XIV asr oxiridagi saltanat; poytaxti — Samarqand.$$,
       $$«O'zbekiston tarixi» 7-sinf darsligi$$, FALSE, 1 FROM eras WHERE code = 'temuriylar';

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'ROUTE', $$Janubiy yurish (Hindiston tomon)$$,
       $$M598 429 L591 463 L614 571 L700 606 L790 640$$,
       $$Samarqanddan Shahrisabz va Termiz orqali janubga — 1398–1399-yillardagi yurish yo'nalishi.$$,
       $$«O'zbekiston tarixi» 7-sinf darsligi$$, FALSE, 2 FROM eras WHERE code = 'temuriylar';

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'ROUTE', $$G'arbiy yurish$$,
       $$M598 429 L471 422 L359 545 L220 520 L90 470$$,
       $$Samarqanddan Buxoro va Marv orqali g'arbga — 1402-yilgi Anqara jangi yo'nalishi.$$,
       $$«O'zbekiston tarixi» 7-sinf darsligi$$, FALSE, 3 FROM eras WHERE code = 'temuriylar';

-- ===================== V. XONLIKLAR DAVRI =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Buxoro amirligi$$,
       $$M420 400 L580 384 L700 424 L722 560 L600 606 L470 588 L412 500 Z$$,
       $$Zarafshon va Qashqadaryo vohalarini qamragan davlat, poytaxti — Buxoro.$$,
       $$«O'zbekiston tarixi» 8-sinf darsligi$$, FALSE, 1 FROM eras WHERE code = 'xonliklar';

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Xiva xonligi$$,
       $$M168 246 L300 236 L364 288 L344 420 L246 440 L166 366 Z$$,
       $$Xorazm vohasidagi davlat, poytaxti — Xiva.$$,
       $$«O'zbekiston tarixi» 8-sinf darsligi$$, FALSE, 2 FROM eras WHERE code = 'xonliklar';

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Qo'qon xonligi$$,
       $$M690 340 L800 322 L900 348 L916 424 L820 452 L706 428 Z$$,
       $$Farg'ona vodiysidagi davlat, poytaxti — Qo'qon.$$,
       $$«O'zbekiston tarixi» 8-sinf darsligi$$, FALSE, 3 FROM eras WHERE code = 'xonliklar';

-- ===================== VI. JADIDLAR DAVRI =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$Turkiston general-gubernatorligi$$,
       $$M196 160 L440 140 L700 190 L900 258 L920 470 L840 604 L620 660 L380 640 L216 520 L172 340 Z$$,
       $$1867-yilda tashkil etilgan mustamlaka boshqaruvi hududi; Buxoro va Xiva vassal maqomida qolgan.$$,
       $$«O'zbekiston tarixi» 8-sinf darsligi$$, FALSE, 1 FROM eras WHERE code = 'jadidlar';

-- ===================== VII. XX ASR =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$O'zbekiston SSR$$,
       $$M175 88 L350 204 L500 233 L675 309 L760 327 L905 362 L860 397 L815 437 L725 420 L660 397 L630 455 L620 572 L575 525 L475 496 L350 432 L250 333 L200 257 Z$$,
       $$1924-yilgi milliy-hududiy chegaralanishdan keyin shakllangan respublika.$$,
       $$«O'zbekiston tarixi» 9-sinf darsligi$$, FALSE, 1 FROM eras WHERE code = 'xx-asr';

-- ===================== VIII. MUSTAQILLIK DAVRI =====================

INSERT INTO map_features (era_id, kind, name_uz, geometry, description_uz, source, verified, ordinal)
SELECT id, 'TERRITORY', $$O'zbekiston Respublikasi$$,
       $$M175 88 L350 204 L500 233 L675 309 L760 327 L905 362 L860 397 L815 437 L725 420 L660 397 L630 455 L620 572 L575 525 L475 496 L350 432 L250 333 L200 257 Z$$,
       $$1991-yil 31-avgustda mustaqillik e'lon qilingan; 12 viloyat, Qoraqalpog'iston Respublikasi va Toshkent shahri.$$,
       $$O'zbekiston Respublikasi Konstitutsiyasi$$, FALSE, 1 FROM eras WHERE code = 'mustaqillik';
