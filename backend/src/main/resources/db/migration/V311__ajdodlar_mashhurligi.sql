-- Ajdodlar zalining «buyuklik» tartibi (fame_tier / fame_score).
--
-- MUAMMO. Zal 120 dan ortiq ajdodga o'sib ketdi, ro'yxat esa tartibsiz
-- chiqardi: bola birinchi ekranda Amir Temur o'rniga kam tanish nomlarni
-- ko'rardi. Endi eng buyuk va tanish ajdodlar doim birinchi chiqadi.
--
-- IKKI USTUN. `fame_tier` — daraja (S/A/B/C): S — har bir o'quvchi biladigan
-- milliy timsollar, A — maktab dasturining yirik siymolari, B — tor doiraga
-- tanish ijodkor va olimlar, C — qolganlar. `fame_score` (0–100) — daraja
-- ichidagi aniq tartib. Tenglikda ism bo'yicha alifbo hal qiladi.
--
-- STANDART QIYMAT C/0: yangi qo'shilgan ajdod ro'yxat oxiriga tushadi,
-- daraja esa keyin boshqaruv panelidan belgilanadi. Rossiya ajdodlari
-- hozircha darajalantirilmagan — hammasi C, alifbo tartibida.

ALTER TABLE heroes ADD COLUMN fame_tier TEXT NOT NULL DEFAULT 'C';
ALTER TABLE heroes ADD COLUMN fame_score INT NOT NULL DEFAULT 0;

ALTER TABLE heroes ADD CONSTRAINT heroes_fame_tier_check
    CHECK (fame_tier IN ('S', 'A', 'B', 'C'));
ALTER TABLE heroes ADD CONSTRAINT heroes_fame_score_check
    CHECK (fame_score BETWEEN 0 AND 100);

-- ============ S — milliy timsollar (8 nafar) ============

UPDATE heroes SET fame_tier = 'S', fame_score = 100 WHERE slug = 'amir-temur';
UPDATE heroes SET fame_tier = 'S', fame_score = 98 WHERE slug = 'alisher-navoiy';
UPDATE heroes SET fame_tier = 'S', fame_score = 97 WHERE slug = 'mirzo-ulugbek';
UPDATE heroes SET fame_tier = 'S', fame_score = 96 WHERE slug = 'al-xorazmiy';
UPDATE heroes SET fame_tier = 'S', fame_score = 95 WHERE slug = 'ibn-sino';
UPDATE heroes SET fame_tier = 'S', fame_score = 94 WHERE slug = 'abu-rayhon-beruniy';
UPDATE heroes SET fame_tier = 'S', fame_score = 93 WHERE slug = 'bobur';
UPDATE heroes SET fame_tier = 'S', fame_score = 92 WHERE slug = 'imom-al-buxoriy';

-- ============ A — maktab dasturining yirik siymolari ============

UPDATE heroes SET fame_tier = 'A', fame_score = 88 WHERE slug = 'tomaris';
UPDATE heroes SET fame_tier = 'A', fame_score = 86 WHERE slug = 'jaloliddin-manguberdi';
UPDATE heroes SET fame_tier = 'A', fame_score = 84 WHERE slug = 'spitamen';
UPDATE heroes SET fame_tier = 'A', fame_score = 82 WHERE slug = 'shiroq';
UPDATE heroes SET fame_tier = 'A', fame_score = 80 WHERE slug = 'ahmad-al-fargoniy';
UPDATE heroes SET fame_tier = 'A', fame_score = 78 WHERE slug = 'imom-at-termiziy';
UPDATE heroes SET fame_tier = 'A', fame_score = 76 WHERE slug = 'bahouddin-naqshband';
UPDATE heroes SET fame_tier = 'A', fame_score = 74 WHERE slug = 'ahmad-yassaviy';
UPDATE heroes SET fame_tier = 'A', fame_score = 72 WHERE slug = 'abu-nasr-forobiy';
UPDATE heroes SET fame_tier = 'A', fame_score = 70 WHERE slug = 'ismoil-somoniy';
UPDATE heroes SET fame_tier = 'A', fame_score = 68 WHERE slug = 'abdulla-qodiriy';
UPDATE heroes SET fame_tier = 'A', fame_score = 66 WHERE slug = 'mahmudxoja-behbudiy';
UPDATE heroes SET fame_tier = 'A', fame_score = 64 WHERE slug = 'cholpon';
UPDATE heroes SET fame_tier = 'A', fame_score = 62 WHERE slug = 'abdurauf-fitrat';
UPDATE heroes SET fame_tier = 'A', fame_score = 60 WHERE slug = 'abdulla-avloniy';

-- ============ B — tanish ijodkorlar, olimlar, davlat arboblari ============

UPDATE heroes SET fame_tier = 'B', fame_score = 58 WHERE slug = 'zulfiya';
UPDATE heroes SET fame_tier = 'B', fame_score = 56 WHERE slug = 'gafur-gulom';
UPDATE heroes SET fame_tier = 'B', fame_score = 56 WHERE slug = 'erkin-vohidov';
UPDATE heroes SET fame_tier = 'B', fame_score = 54 WHERE slug = 'oybek';
UPDATE heroes SET fame_tier = 'B', fame_score = 54 WHERE slug = 'abdulla-oripov';
UPDATE heroes SET fame_tier = 'B', fame_score = 54 WHERE slug = 'temur-malik';
UPDATE heroes SET fame_tier = 'B', fame_score = 52 WHERE slug = 'nodira';
UPDATE heroes SET fame_tier = 'B', fame_score = 52 WHERE slug = 'hamid-olimjon';
UPDATE heroes SET fame_tier = 'B', fame_score = 52 WHERE slug = 'pahlavon-mahmud';
UPDATE heroes SET fame_tier = 'B', fame_score = 50 WHERE slug = 'muqanna';
UPDATE heroes SET fame_tier = 'B', fame_score = 50 WHERE slug = 'boborahim-mashrab';
UPDATE heroes SET fame_tier = 'B', fame_score = 50 WHERE slug = 'abdulla-qahhor';
UPDATE heroes SET fame_tier = 'B', fame_score = 49 WHERE slug = 'kamoliddin-behzod';
UPDATE heroes SET fame_tier = 'B', fame_score = 48 WHERE slug = 'muqimiy';
UPDATE heroes SET fame_tier = 'B', fame_score = 48 WHERE slug = 'botir-zokirov';
UPDATE heroes SET fame_tier = 'B', fame_score = 47 WHERE slug = 'ali-qushchi';
UPDATE heroes SET fame_tier = 'B', fame_score = 46 WHERE slug = 'furqat';
UPDATE heroes SET fame_tier = 'B', fame_score = 46 WHERE slug = 'muhammad-yusuf';
UPDATE heroes SET fame_tier = 'B', fame_score = 46 WHERE slug = 'shayboniyxon';
UPDATE heroes SET fame_tier = 'B', fame_score = 45 WHERE slug = 'shohrux-mirzo';
UPDATE heroes SET fame_tier = 'B', fame_score = 44 WHERE slug = 'saroymulkxonim';
UPDATE heroes SET fame_tier = 'B', fame_score = 44 WHERE slug = 'usmon-nosir';
UPDATE heroes SET fame_tier = 'B', fame_score = 44 WHERE slug = 'otkir-hoshimov';
UPDATE heroes SET fame_tier = 'B', fame_score = 44 WHERE slug = 'abdullaxon-ii';
UPDATE heroes SET fame_tier = 'B', fame_score = 43 WHERE slug = 'xoja-ahror-valiy';
UPDATE heroes SET fame_tier = 'B', fame_score = 42 WHERE slug = 'ogahiy';
UPDATE heroes SET fame_tier = 'B', fame_score = 42 WHERE slug = 'said-ahmad';
UPDATE heroes SET fame_tier = 'B', fame_score = 42 WHERE slug = 'qozizoda-rumiy';
UPDATE heroes SET fame_tier = 'B', fame_score = 41 WHERE slug = 'husayn-boyqaro';
UPDATE heroes SET fame_tier = 'B', fame_score = 40 WHERE slug = 'berdaq';
UPDATE heroes SET fame_tier = 'B', fame_score = 40 WHERE slug = 'lutfiy';
UPDATE heroes SET fame_tier = 'B', fame_score = 40 WHERE slug = 'odil-yoqubov';
UPDATE heroes SET fame_tier = 'B', fame_score = 39 WHERE slug = 'zardusht';
UPDATE heroes SET fame_tier = 'B', fame_score = 38 WHERE slug = 'uvaysiy';
UPDATE heroes SET fame_tier = 'B', fame_score = 38 WHERE slug = 'sadriddin-ayniy';
UPDATE heroes SET fame_tier = 'B', fame_score = 38 WHERE slug = 'pirimqul-qodirov';
UPDATE heroes SET fame_tier = 'B', fame_score = 38 WHERE slug = 'gavharshod-begim';
UPDATE heroes SET fame_tier = 'B', fame_score = 36 WHERE slug = 'fayzulla-xojayev';
UPDATE heroes SET fame_tier = 'B', fame_score = 36 WHERE slug = 'abulgozi-bahodirxon';
UPDATE heroes SET fame_tier = 'B', fame_score = 35 WHERE slug = 'munavvarqori';
UPDATE heroes SET fame_tier = 'B', fame_score = 35 WHERE slug = 'abu-mansur-moturidiy';
UPDATE heroes SET fame_tier = 'B', fame_score = 34 WHERE slug = 'halima-xudoyberdiyeva';
UPDATE heroes SET fame_tier = 'B', fame_score = 34 WHERE slug = 'mahmud-zamaxshariy';
UPDATE heroes SET fame_tier = 'B', fame_score = 32 WHERE slug = 'togay-murod';
UPDATE heroes SET fame_tier = 'B', fame_score = 32 WHERE slug = 'najmiddin-kubro';

-- ============ C — qolgan O'zbekiston ajdodlari ============
-- Ball 20: C ichida hammasi teng, alifbo hal qiladi. Rossiya ajdodlari
-- 0 da qoladi — ular hali darajalanmagan.

UPDATE heroes SET fame_score = 20 WHERE fame_tier = 'C' AND country = 'UZ';

-- Ro'yxat so'rovi endi (country, tier, score) bo'yicha — indeks ham shunga mos
CREATE INDEX idx_heroes_fame ON heroes (country, fame_tier, fame_score DESC);
