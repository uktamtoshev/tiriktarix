-- Galereyaga yangi ajdodlar (5-partiya): Xonliklar davri — malika-shoiralar,
-- xon-tarixchi, solnomachilar va shoir xon.
--
-- MANBALAR: Ziyouz.com «O'zbek mumtoz adabiyoti» bo'limi. Abulg'ozi uchun
-- qo'shimcha — loyihaning mavjud davr kartochkasi (darslik).
--
-- METODISTGA:
--   * Abulg'ozi tug'ilgan yili: darslik/mavjud kartochka 1603, ziyouz taqdimot
--     sahifasi 1605. Qoida bo'yicha darslik varianti olindi.
--   * Ogahiy vafoti: maqola matni 1874-yil 14-dekabr; ziyouz sahifa sarlavhasida
--     esa (1809–1894) deb xato ketgan ko'rinadi. 1874 olindi.
--   * Feruz xonlik davri kartasiga kiritildi (Xiva xoni), garchi hukmronligi
--     1865-yildan keyinga ham cho'zilsa-da.
--   * Nodira va oilasining o'limi bir jumlada, tafsilotsiz berilgan.
--
-- verified = TRUE — foydalanuvchi qarori (2026-08-01).


-- ===================== Nodira =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'nodira', $$Nodira$$, $$Malika shoira$$, 1792, 1842, e.id,
       $$Andijonda tug'ilgan shoira va davlat arbobi. Asl ismi — Mohlaroyim. Qo'qonda davlatni amalda o'zi boshqargan, madrasalar qurdirgan.$$, $$Assalomu alaykum! Men Nodiraman. She'rlarim, Qo'qon adabiy muhiti va qurdirgan binolarim haqida so'ra.$$, $$👸$$, $$["nodira", "mohlaroyim", "qo'qon", "shoira", "malika", "umarxon", "komila", "maknuna", "devon"]$$::jsonb
  FROM eras e WHERE e.code = 'xonliklar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1792-yilda Andijonda tug'ilganman. Asl ismim — Mohlaroyim, otam Andijon hokimi Rahmonqulbiy edi.$$, $$["tug'ilish", "andijon", "1792", "mohlaroyim"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Turmushim$$, $$1807-yilda Marg'ilon hokimi Umarxonga turmushga chiqqanman.$$, $$["umarxon", "1807", "marg'ilon", "nikoh"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Davlatni boshqarishim$$, $$Umarxon vafotidan so'ng 1822-yilda o'g'lim Muhammad Alixon taxtga chiqdi, lekin davlatni asosan o'zim idora qildim.$$, $$["davlat", "1822", "muhammad alixon", "boshqaruv"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ustozim Uvaysiy$$, $$Shoira Uvaysiy bilan tanishib, uni saroyga ustoz qilib chaqirganman.$$, $$["uvaysiy", "ustoz", "saroy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bunyodkorligim$$, $$Bozor va rastalar, masjid va madrasalar, karvonsaroylar qurilishiga e'tibor berganman; Madrasai Chalpak va Mohlaroyim madrasasini qurdirganman.$$, $$["madrasa", "bozor", "karvonsaroy", "qurilish"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taxalluslarim$$, $$She'rlarimni «Nodira», «Komila» va «Maknuna» taxalluslari bilan yozganman.$$, $$["taxallus", "komila", "maknuna"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Devonim$$, $$Devonimda «Nodira» taxallusi bilan yozilgan 180 she'r jamlangan: 136 tasi o'zbek, 44 tasi tojik tilida.$$, $$["devon", "180", "she'r", "tojik"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Shoiralarga homiylik$$, $$Saroyimda shoiralarni yangi asarlar yozishga tashviq qilganman.$$, $$["homiylik", "shoira", "tashviq"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1842-yilda Buxoro amiri Nasrullo Qo'qonga bostirib kirganida farzandlarim bilan birga halok bo'lganman.$$, $$["vafot", "1842", "nasrullo"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$, TRUE
  FROM heroes h WHERE h.slug = 'nodira';

-- ===================== Uvaysiy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'uvaysiy', $$Uvaysiy$$, $$Chiston ustasi$$, 1779, 1845, e.id,
       $$Marg'ilonlik shoira va murabbiya. Asl ismi — Jahon. Saroyda Nodira va boshqa ayollarga she'riyatdan dars bergan, she'riy topishmoq — chistonlari bilan mashhur.$$, $$Assalomu alaykum! Men Uvaysiyman. Chistonlarim, dostonlarim va shogirdim Nodira haqida so'ra.$$, $$❓$$, $$["uvaysiy", "jahon", "chiston", "marg'ilon", "shoira", "otin", "nodira ustozi", "topishmoq", "doston"]$$::jsonb
  FROM eras e WHERE e.code = 'xonliklar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1779-yilda Marg'ilonda tug'ilganman. Asl ismim — Jahon.$$, $$["tug'ilish", "marg'ilon", "1779", "jahon"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ustozim$$, $$She'riyat ilmini akam Oxunjon hofizdan o'rganganman.$$, $$["oxunjon", "aka", "ta'lim", "hofiz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Maktabdorligim$$, $$Oilada savod chiqarib, avval xalfa, so'ng onam yonida maktabdorlik qilganman.$$, $$["maktab", "xalfa", "ona", "savod"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Saroyda ustozligim$$, $$Qo'qon saroyida Nodira va boshqa xotin-qizlarga she'riyatdan dars berib, ustozlik qilganman.$$, $$["nodira", "saroy", "dars", "ustoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Chistonlarim$$, $$She'riy topishmoq — chistonlar yozganman. Mashhur chistonim: «Ul na gumbazdur: eshigi, tuynugidin yo'q nishon».$$, $$["chiston", "topishmoq", "gumbaz", "anor"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ijodim$$, $$269 g'azal, 29 muxammas, 55 musaddas va uchta doston yozganman.$$, $$["g'azal", "muxammas", "musaddas", "doston", "269"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Dostonlarim$$, $$«Shahzoda Hasan» va «Shahzoda Husan» dostonlarini hamda tarixiy doston yaratganman.$$, $$["shahzoda hasan", "shahzoda husan", "doston"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Safarlarim$$, $$Dilshod otin ma'lumotiga ko'ra, Konibodom, Xo'jand va boshqa shaharlarda bo'lganman.$$, $$["safar", "konibodom", "xo'jand"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1842-yilda Qo'qon egallangach, Marg'ilonga qaytib, umrimning oxirigacha shu yerda yashadim. 1845-yilda vafot etganman.$$, $$["vafot", "1845", "marg'ilon"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$, TRUE
  FROM heroes h WHERE h.slug = 'uvaysiy';

-- ===================== Abulg'ozi Bahodirxon =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'abulgozi-bahodirxon', $$Abulg'ozi Bahodirxon$$, $$Xon-tarixchi$$, 1603, 1664, e.id,
       $$Xiva xoni va tarixchi olim. «Shajarai turk» asarini yozgan — u tarixchilar uchun muhim manba bo'lib xizmat qiladi.$$, $$Assalomu alaykum! Men Abulg'ozi Bahodirxonman. Xonligim va «Shajarai turk» kitobim haqida so'ra.$$, $$📜$$, $$["abulg'ozi", "bahodirxon", "shajarai turk", "xiva xoni", "tarixchi", "xon", "arabmuhammad"]$$::jsonb
  FROM eras e WHERE e.code = 'xonliklar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men Xiva xoni Arabmuhammadxonning yetti o'g'lidan biriman. Darslikda tug'ilgan yilim 1603 deb ko'rsatiladi.$$, $$["tug'ilish", "1603", "arabmuhammad", "xiva"]$$::jsonb, $$Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali)$$, TRUE
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taxtga kelishim$$, $$1645-yildan Xiva xonligini boshqarganman.$$, $$["taxt", "1645", "xonlik"]$$::jsonb, $$Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali)$$, TRUE
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Hukmronligim$$, $$Xivani 1645-yildan 1663-yilgacha boshqardim, so'ng taxtni o'g'limga topshirdim.$$, $$["hukmronlik", "1663", "topshirish"]$$::jsonb, $$Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali)$$, TRUE
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Shajarai turk»$$, $$«Shajarai turk» asarimni yozganman — unda turkiy xalqlar tarixi bayon etilgan.$$, $$["shajarai turk", "asar", "tarix"]$$::jsonb, $$Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali)$$, TRUE
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Asarim — manba$$, $$Olimlar «Shajarai turk»dan tarixiy manba sifatida foydalanadilar.$$, $$["manba", "olimlar", "tarixchi"]$$::jsonb, $$Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali)$$, TRUE
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xon va olim$$, $$Men nafaqat davlat arbobi, balki olim sifatida ham tanilganman.$$, $$["olim", "davlat arbobi", "xon-tarixchi"]$$::jsonb, $$Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali)$$, TRUE
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1664-yilda vafot etganman.$$, $$["vafot", "1664"]$$::jsonb, $$Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali)$$, TRUE
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- ===================== Munis Xorazmiy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'munis-xorazmiy', $$Munis Xorazmiy$$, $$Xorazm solnomachisi$$, 1778, 1829, e.id,
       $$Xiva yaqinidagi Qiyot qishlog'ida tug'ilgan shoir va tarixchi. «Firdavs ul-iqbol» solnomasini boshlagan, saroyda farmon kotibi bo'lgan.$$, $$Assalomu alaykum! Men Shermuhammad Munisman. «Firdavs ul-iqbol» va devonim haqida so'ra.$$, $$🖋️$$, $$["munis", "xorazmiy", "firdavs ul-iqbol", "qiyot", "kotib", "devon", "savodi ta'lim", "ogahiy tog'asi"]$$::jsonb
  FROM eras e WHERE e.code = 'xonliklar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1778-yilda Xiva yaqinidagi Qiyot qishlog'ida tug'ilganman. Otam — Amir Avazbiy.$$, $$["tug'ilish", "qiyot", "1778", "avazbiy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Saroy xizmatim$$, $$1800-yilda otam vafotidan so'ng saroyga farmonnavis kotib etib tayinlanganman.$$, $$["kotib", "farmon", "1800", "saroy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilk devonim$$, $$1804-yilda ilk she'riy devonimni tuzganman.$$, $$["devon", "1804", "she'r"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Savodi ta'lim»$$, $$1804-yilda xattotlik va savod o'rgatishga oid «Savodi ta'lim» she'riy risolamni yozganman.$$, $$["savodi ta'lim", "xattotlik", "risola"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Firdavs ul-iqbol»$$, $$1806-yilda Eltuzarxon topshirig'i bilan Xiva xonligi tarixiga oid «Firdavs ul-iqbol» asarini yoza boshladim.$$, $$["firdavs ul-iqbol", "eltuzarxon", "1806", "tarix"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Katta devonim$$, $$«Munis ul-ushshoq» devonimga yigirma mingdan ortiq misra she'r jamlangan — u 1880-yilda Xivada chop etilgan.$$, $$["munis ul-ushshoq", "devon", "20000", "misra"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tarjimam$$, $$1819-yilda Mirxondning «Ravzat us-safo» asarini turkiyga tarjima qila boshladim, birinchi jildini tugatdim.$$, $$["ravzat us-safo", "tarjima", "1819", "mirxond"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Davomchim$$, $$Tugallanmagan ishlarimni — solnoma va tarjimani — shogirdim va jiyanim Ogahiy yakunlagan.$$, $$["ogahiy", "davomchi", "shogird", "jiyan"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1829-yilda vafot etganman.$$, $$["vafot", "1829"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$, TRUE
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';

-- ===================== Ogahiy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'ogahiy', $$Ogahiy$$, $$Ellik kitob egasi$$, 1809, 1874, e.id,
       $$Xorazmlik shoir, tarixchi va tarjimon. Tog'asi Munis ishini davom ettirgan, beshta tarixiy asar yozgan, suv taqsimoti — miroblik bilan shug'ullangan.$$, $$Assalomu alaykum! Men Muhammadrizo Ogahiyman. Tarix kitoblarim, tarjimalarim va miroblik xizmatim haqida so'ra.$$, $$🌊$$, $$["ogahiy", "muhammadrizo", "mirob", "xorazm", "tarixchi", "tarjimon", "riyoz ud-davla", "zubdat ut-tavorix", "qiyot"]$$::jsonb
  FROM eras e WHERE e.code = 'xonliklar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1809-yil 17-dekabrda Xiva yaqinidagi Qiyot qishlog'ida, miroblar oilasida tug'ilganman. To'liq ismim — Muhammadrizo Erniyozbek o'g'li.$$, $$["tug'ilish", "qiyot", "1809", "mirob oilasi"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$Xiva madrasalarida o'qib, arab, fors va turk tillarini o'rganganman; Navoiy she'riyatini alohida sevib mutolaa qilganman.$$, $$["madrasa", "til", "navoiy", "o'qish"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Miroblik$$, $$1829-yilda tog'am Munis vafotidan so'ng Olloqulixon meni uning o'rniga mirob etib tayinlagan — suv taqsimoti ishlarini boshqarganman.$$, $$["mirob", "1829", "olloqulixon", "suv"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Jarohatim$$, $$1845-yilda otdan yiqilib oyog'im mayib bo'ldi; 1857-yilda miroblikdan iste'foga chiqdim.$$, $$["jarohat", "1845", "iste'fo", "1857"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tarixiy asarlarim$$, $$«Riyoz ud-davla» (1844), «Zubdat ut-tavorix» (1845–1846), «Jome' ul-voqeoti sultoniy» (1857), «Gulshani davlat» (1865) va «Shohidi iqbol» (1872) asarlarini yozganman.$$, $$["riyoz ud-davla", "zubdat", "gulshani davlat", "tarix"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Nimalarni yozganman$$, $$Asarlarimda Xorazmdagi o'zbek, turkman, qoraqalpoq va qozoq xalqlari tarixi hamda madaniy hayotini bayon qilganman.$$, $$["xalqlar", "xorazm", "tarix", "madaniyat"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tog'am ishini davom ettirishim$$, $$Tog'am Munisning «Firdavs ul-iqbol» solnomasi va «Ravzat us-safo» tarjimasini yakunlaganman.$$, $$["munis", "firdavs ul-iqbol", "yakunlash", "tarjima"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xotiram$$, $$Qiyotda uy-muzeyim va bog' tashkil etilgan, muzey oldida haykalim o'rnatilgan; ko'chalar va maktablar nomim bilan atalgan.$$, $$["muzey", "haykal", "xotira", "qiyot"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1874-yil 14-dekabrda vafot etganman.$$, $$["vafot", "1874"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$, TRUE
  FROM heroes h WHERE h.slug = 'ogahiy';

-- ===================== Boborahim Mashrab =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'boborahim-mashrab', $$Boborahim Mashrab$$, $$Darvesh shoir$$, 1640, 1711, e.id,
       $$Namanganlik shoir va mutafakkir. Umri sayohatlarda o'tgan, she'rlari xalq orasida keng tarqalgan.$$, $$Assalomu alaykum! Men Boborahim Mashrabman. She'rlarim, ustozlarim va sayohatlarim haqida so'ra.$$, $$🚶$$, $$["mashrab", "boborahim", "darvesh", "namangan", "g'azal", "so'fiy", "afoq xoja", "balx"]$$::jsonb
  FROM eras e WHERE e.code = 'xonliklar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1640-yilda Namanganda tug'ilganman.$$, $$["tug'ilish", "namangan", "1640"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$, TRUE
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ustozim$$, $$Diniy ilm va tasavvufni Mulla Bozor Oxunddan o'rganganman, fors tilini ham o'zlashtirganman.$$, $$["mulla bozor", "ustoz", "tasavvuf", "fors"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$, TRUE
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Afoq Xoja xizmatida$$, $$Taxminan 1665-yilda ustozim tavsiyasi bilan mashhur din arbobi Afoq Xoja xizmatiga borganman.$$, $$["afoq xoja", "1665", "xizmat"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$, TRUE
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$She'riyatim$$, $$She'rlarimning katta qismi tasavvuf ta'sirida, Afoq Xoja dargohida yaratilgan.$$, $$["she'r", "tasavvuf", "dargoh"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$, TRUE
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Sayohatlarim$$, $$Umrim shaharma-shahar kezishda, darveshona sayohatlarda o'tgan.$$, $$["sayohat", "darvesh", "kezish"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$, TRUE
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalq orasida$$, $$She'rlarim xalq orasida og'izdan-og'izga o'tib, keng tarqalgan.$$, $$["xalq", "mashhur", "og'zaki"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$, TRUE
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tazkiralarda nomim$$, $$XVIII–XIX asrlarda tuzilgan tazkiralar va tasavvufga oid asarlarda nomim tilga olingan.$$, $$["tazkira", "nom", "manba"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$, TRUE
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1711-yilda Balx shahrida vafot etganman.$$, $$["vafot", "1711", "balx"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$, TRUE
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';

-- ===================== Muhammad Rahimxon Feruz =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'feruz', $$Muhammad Rahimxon Feruz$$, $$Shoir xon$$, 1845, 1910, e.id,
       $$Xiva xoni, shoir va musiqa homiysi. «Feruz» taxallusi bilan devon tuzgan, Xivada toshbosma ochgan, ustozi — Ogahiy.$$, $$Assalomu alaykum! Men Muhammad Rahimxon Feruzman. Devonim, toshbosmam va saroyimdagi shoirlar haqida so'ra.$$, $$🎵$$, $$["feruz", "muhammad rahimxon", "xiva xoni", "toshbosma", "devon", "shoir xon", "tabibiy", "shashmaqom"]$$::jsonb
  FROM eras e WHERE e.code = 'xonliklar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1845-yilda Xivada tug'ilganman.$$, $$["tug'ilish", "xiva", "1845"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taxtga chiqishim$$, $$Otam Sayid Muhammadxon vafotidan so'ng, 1864-yilda Xiva taxtiga o'tirganman.$$, $$["taxt", "1864", "xiva"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taxallusim$$, $$She'rlarimni «Feruz» taxallusi bilan yozganman.$$, $$["feruz", "taxallus", "she'r"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Devonim$$, $$1879-yilda «Devoni Feruz» to'plamim tuzilgan.$$, $$["devon", "1879", "to'plam"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ustozim$$, $$Ustozim — shoir va tarixchi Ogahiy edi; saroyimda Komil va Tabibiy kabi shoirlar ijod qilgan.$$, $$["ogahiy", "ustoz", "komil", "tabibiy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Toshbosmam$$, $$Xivada toshbosma ochirganman — unda Navoiy asarlari va Xorazm shoirlarining «Majmuat ush-shuaro» to'plami bosilgan.$$, $$["toshbosma", "majmuat ush-shuaro", "navoiy", "nashr"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Musiqa homiyligim$$, $$Saroyimda musiqa ansambli tuzilgan; Shashmaqom an'anasidagi «Navo», «Dugoh» va «Segoh» kuylariga aloqador ishlarni qo'llab-quvvatlaganman.$$, $$["musiqa", "shashmaqom", "navo", "ansambl"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Madrasam$$, $$1871-yilda o'z nomim bilan ataluvchi ikki qavatli madrasa qurdirganman; homiyligimda o'ttizdan ortiq inshoot bunyod etilgan.$$, $$["madrasa", "1871", "qurilish"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1910-yilda vafot etganman.$$, $$["vafot", "1910"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$, TRUE
  FROM heroes h WHERE h.slug = 'feruz';

-- ===================== TEST SAVOLLARI (5-partiya) =====================

-- nodira: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Nodiraning asl ismi nima?$$,
 $$["Mohlaroyim", "Jahon", "Zulfiya", "Xosiyat"]$$, 0,
 $$Nodira — taxallus; asl ismi Mohlaroyim.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Nodira qachon va qayerda tug'ilgan?$$,
 $$["1792-yilda Andijonda", "1779-yilda Marg'ilonda", "1845-yilda Xivada", "1803-yilda Qo'qonda"]$$, 0,
 $$U 1792-yilda Andijonda, hokim oilasida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Nodira kimga turmushga chiqqan?$$,
 $$["Umarxonga", "Eltuzarxonga", "Nasrulloga", "Feruzga"]$$, 0,
 $$1807-yilda Marg'ilon hokimi Umarxonga turmushga chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$1822-yildan keyin davlatni amalda kim boshqargan?$$,
 $$["Nodiraning o'zi", "Faqat o'g'li", "Vazirlar", "Buxoro amiri"]$$, 0,
 $$Taxtda o'g'li o'tirsa-da, davlatni asosan Nodira idora qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Nodira kimni saroyga ustoz qilib chaqirgan?$$,
 $$["Uvaysiyni", "Anbar Otinni", "Dilshod otinni", "Zebunnisoni"]$$, 0,
 $$U shoira Uvaysiyni ustoz sifatida saroyga taklif qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Nodira qanday binolar qurdirgan?$$,
 $$["Madrasa, bozor, karvonsaroylar", "Faqat saroylar", "Rasadxona", "Qal'alar"]$$, 0,
 $$U madrasalar, bozor-rastalar va karvonsaroylar qurdirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Nodiraning yana qanday taxalluslari bo'lgan?$$,
 $$["Komila va Maknuna", "Foniy va Navoiy", "Husayniy", "Feruz"]$$, 0,
 $$U «Komila» va «Maknuna» taxalluslari bilan ham yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Devonida nechta she'r jamlangan?$$,
 $$["180", "96", "269", "500"]$$, 0,
 $$Devonida 180 she'r bor: 136 tasi o'zbekcha, 44 tasi tojikcha.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Nodira devonidagi she'rlar qaysi tillarda?$$,
 $$["O'zbek va tojik", "Faqat arab", "Rus va turk", "Fors va hind"]$$, 0,
 $$She'rlari o'zbek va tojik tillarida.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'nodira'), NULL,
 $$Nodira qachon halok bo'lgan?$$,
 $$["1842", "1822", "1845", "1810"]$$, 0,
 $$1842-yilda Buxoro amiri Nasrullo bosqinida halok bo'lgan.$$);

-- uvaysiy: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Uvaysiyning asl ismi nima?$$,
 $$["Jahon", "Mohlaroyim", "Anbar", "Gavhar"]$$, 0,
 $$Uvaysiy — taxallus; asl ismi Jahon.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Uvaysiy qachon va qayerda tug'ilgan?$$,
 $$["1779-yilda Marg'ilonda", "1792-yilda Andijonda", "1870-yilda Qo'qonda", "1845-yilda Xivada"]$$, 0,
 $$U 1779-yilda Marg'ilonda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Uvaysiyga she'riyatni kim o'rgatgan?$$,
 $$["Akasi Oxunjon hofiz", "Otasi", "Nodira", "Navoiy"]$$, 0,
 $$She'riyat ilmini akasi Oxunjon hofizdan o'rgangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Uvaysiy saroyda kimga dars bergan?$$,
 $$["Nodira va boshqa ayollarga", "Faqat shahzodalarga", "Xonga", "Elchilarga"]$$, 0,
 $$U saroyda Nodira va xotin-qizlarga she'riyatdan dars bergan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Chiston nima?$$,
 $$["She'riy topishmoq", "Doston turi", "Raqs", "Musiqa asbobi"]$$, 0,
 $$Chiston — she'riy topishmoq; Uvaysiy shu janr ustasi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$«Ul na gumbazdur...» chistoni nima haqida?$$,
 $$["Anor haqida", "Oy haqida", "Qal'a haqida", "Kema haqida"]$$, 0,
 $$Bu mashhur chiston anorga bag'ishlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Uvaysiy nechta g'azal yozgan?$$,
 $$["269", "180", "96", "55"]$$, 0,
 $$U 269 g'azal, 29 muxammas va 55 musaddas yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Uvaysiyning dostonlari qaysi?$$,
 $$["«Shahzoda Hasan» va «Shahzoda Husan»", "«Xamsa»", "«Layli va Majnun»", "«Farhod va Shirin»"]$$, 0,
 $$U «Shahzoda Hasan» va «Shahzoda Husan» dostonlarini yaratgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Uvaysiy qaysi shaharlarda bo'lgan?$$,
 $$["Konibodom va Xo'jandda", "Makka va Madinada", "Istanbul va Rimda", "Dehli va Agrada"]$$, 0,
 $$Dilshod otin ma'lumotiga ko'ra u Konibodom va Xo'jandga borgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'uvaysiy'), NULL,
 $$Uvaysiy umrining oxirini qayerda o'tkazgan?$$,
 $$["Marg'ilonda", "Qo'qonda", "Xivada", "Buxoroda"]$$, 0,
 $$1842-yildan keyin Marg'ilonga qaytib, 1845-yilda shu yerda vafot etgan.$$);

-- abulgozi-bahodirxon: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Abulg'ozi Bahodirxon kimning o'g'li?$$,
 $$["Arabmuhammadxonning", "Eltuzarxonning", "Umarxonning", "Shohruxning"]$$, 0,
 $$U Xiva xoni Arabmuhammadxonning yetti o'g'lidan biri.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Abulg'ozi qachon taxtga chiqqan?$$,
 $$["1645", "1603", "1663", "1680"]$$, 0,
 $$U 1645-yildan Xiva xonligini boshqargan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Abulg'ozi qancha hukmronlik qilgan?$$,
 $$["1645–1663", "1603–1664", "1645–1680", "1650–1655"]$$, 0,
 $$U 1645-yildan 1663-yilgacha xonlik qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Abulg'ozining mashhur asari qaysi?$$,
 $$["«Shajarai turk»", "«Boburnoma»", "«Firdavs ul-iqbol»", "«Zij»"]$$, 0,
 $$U «Shajarai turk» asarini yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$«Shajarai turk» nima haqida?$$,
 $$["Turkiy xalqlar tarixi", "Yulduzlar", "Tibbiyot", "Geografiya"]$$, 0,
 $$Asarda turkiy xalqlar tarixi bayon etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Olimlar «Shajarai turk»dan qanday foydalanadilar?$$,
 $$["Tarixiy manba sifatida", "She'riy namuna sifatida", "Lug'at sifatida", "Xarita sifatida"]$$, 0,
 $$Asar tarixchilar uchun muhim manba bo'lib xizmat qiladi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Abulg'ozi nimasi bilan noyob hukmdor?$$,
 $$["Xon bo'la turib olim ham edi", "Eng yosh xon edi", "Hech urushmagan", "Chet elda tug'ilgan"]$$, 0,
 $$U davlat arbobi va olim sifatida tanilgan — xon-tarixchi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Abulg'ozi qachon vafot etgan?$$,
 $$["1664", "1645", "1690", "1700"]$$, 0,
 $$U 1664-yilda vafot etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Abulg'ozi qaysi xonlikni boshqargan?$$,
 $$["Xiva xonligini", "Qo'qon xonligini", "Buxoro amirligini", "Qashqar xonligini"]$$, 0,
 $$U Xiva xoni edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon'), NULL,
 $$Darslikda Abulg'ozining tug'ilgan yili qanday ko'rsatiladi?$$,
 $$["1603", "1645", "1664", "1580"]$$, 0,
 $$Darslikda 1603-yil deb ko'rsatiladi.$$);

-- munis-xorazmiy: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$Munis qachon va qayerda tug'ilgan?$$,
 $$["1778-yilda Qiyot qishlog'ida", "1809-yilda Xivada", "1792-yilda Andijonda", "1845-yilda Urganchda"]$$, 0,
 $$U 1778-yilda Xiva yaqinidagi Qiyot qishlog'ida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$Munis saroyda qanday lavozimda ishlagan?$$,
 $$["Farmonnavis kotib", "Mirob", "Vazir", "Qozi"]$$, 0,
 $$1800-yildan saroyda farmon kotibi bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$«Savodi ta'lim» nima haqida?$$,
 $$["Xattotlik va savod o'rgatish", "Tarix", "Musiqa", "Tibbiyot"]$$, 0,
 $$1804-yilgi bu she'riy risola xattotlikka bag'ishlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$«Firdavs ul-iqbol»ni yozishni kim topshirgan?$$,
 $$["Eltuzarxon", "Olloqulixon", "Feruz", "Nasrullo"]$$, 0,
 $$1806-yilda Eltuzarxon Xiva tarixini yozishni topshirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$«Firdavs ul-iqbol» nima?$$,
 $$["Xiva xonligi tarixi", "She'riy devon", "Lug'at", "Doston"]$$, 0,
 $$Bu Xiva xonligi tarixiga oid yirik solnoma.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$Munisning katta devoni qanday nomlanadi?$$,
 $$["«Munis ul-ushshoq»", "«Devoni Feruz»", "«Xazoyin ul-maoniy»", "«Sayha»"]$$, 0,
 $$«Munis ul-ushshoq» devoniga 20 mingdan ortiq misra kirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$Munis 1819-yilda nimani boshlagan?$$,
 $$["«Ravzat us-safo» tarjimasini", "Yangi devon", "Madrasa qurilishini", "Xaritani"]$$, 0,
 $$U Mirxondning «Ravzat us-safo» asarini turkiyga o'girishni boshlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$Munisning ishini kim yakunlagan?$$,
 $$["Jiyani Ogahiy", "O'g'li", "Feruz", "Bayoniy"]$$, 0,
 $$Tugallanmagan asarlarini shogirdi va jiyani Ogahiy yakunlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$Munis qachon vafot etgan?$$,
 $$["1829", "1819", "1845", "1874"]$$, 0,
 $$U 1829-yilda vafot etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munis-xorazmiy'), NULL,
 $$Munisning devoni qachon chop etilgan?$$,
 $$["1880-yilda Xivada", "1829-yilda Buxoroda", "1900-yilda Toshkentda", "1810-yilda Qo'qonda"]$$, 0,
 $$«Munis ul-ushshoq» 1880-yilda Xivada bosilgan.$$);

-- ogahiy: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Ogahiyning to'liq ismi nima?$$,
 $$["Muhammadrizo Erniyozbek o'g'li", "Shermuhammad Avazbiy o'g'li", "Abulg'ozi Arabmuhammad o'g'li", "Muso Toshmuhammadov"]$$, 0,
 $$Ogahiy — taxallus; to'liq ismi Muhammadrizo Erniyozbek o'g'li.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Ogahiy qachon va qayerda tug'ilgan?$$,
 $$["1809-yilda Qiyot qishlog'ida", "1778-yilda Xivada", "1845-yilda Urganchda", "1792-yilda Andijonda"]$$, 0,
 $$U 1809-yil 17-dekabrda Qiyotda, miroblar oilasida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Mirob nima ish qiladi?$$,
 $$["Suv taqsimotini boshqaradi", "Soliq yig'adi", "Qo'shin boshqaradi", "Kitob ko'chiradi"]$$, 0,
 $$Mirob — suv taqsimoti ishlarini boshqaruvchi amaldor.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Ogahiy kimning o'rniga mirob bo'lgan?$$,
 $$["Tog'asi Munisning", "Otasining", "Feruzning", "Bayoniyning"]$$, 0,
 $$1829-yilda tog'asi Munis vafotidan keyin uning o'rniga tayinlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$1845-yilda Ogahiy bilan nima yuz bergan?$$,
 $$["Otdan yiqilib oyog'i mayib bo'lgan", "Xon bo'lgan", "Xivadan ketgan", "Devon tuzgan"]$$, 0,
 $$U otdan yiqilib, oyog'i nogiron bo'lib qolgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Quyidagilardan qaysi biri Ogahiy asari?$$,
 $$["«Riyoz ud-davla»", "«Shajarai turk»", "«Munozara»", "«Padarkush»"]$$, 0,
 $$«Riyoz ud-davla» (1844) — uning tarixiy asari.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Ogahiy asarlarida qaysi xalqlar tarixi bayon etilgan?$$,
 $$["O'zbek, turkman, qoraqalpoq, qozoq", "Faqat forslar", "Xitoyliklar", "Ruslar"]$$, 0,
 $$U Xorazmdagi turli xalqlar tarixi va madaniyatini yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Ogahiy tog'asining qaysi ishlarini yakunlagan?$$,
 $$["«Firdavs ul-iqbol» va «Ravzat us-safo» tarjimasini", "Devonini", "Madrasasini", "Xaritasini"]$$, 0,
 $$U Munisning solnomasi va tarjimasini tugatgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Ogahiy xotirasi qanday abadiylashtirilgan?$$,
 $$["Uy-muzey, bog' va haykal bilan", "Hech qanday", "Faqat kitobda", "Marka bilan"]$$, 0,
 $$Qiyotda uy-muzeyi, bog'i va haykali bor.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ogahiy'), NULL,
 $$Ogahiy qachon vafot etgan?$$,
 $$["1874-yil 14-dekabrda", "1894-yilda", "1829-yilda", "1910-yilda"]$$, 0,
 $$U 1874-yil 14-dekabrda vafot etgan.$$);

-- boborahim-mashrab: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrab qachon va qayerda tug'ilgan?$$,
 $$["1640-yilda Namanganda", "1603-yilda Xivada", "1711-yilda Balxda", "1778-yilda Qiyotda"]$$, 0,
 $$U 1640-yilda Namanganda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrabning ustozi kim edi?$$,
 $$["Mulla Bozor Oxund", "Ogahiy", "Munis", "Navoiy"]$$, 0,
 $$Diniy ilm va tasavvufni Mulla Bozor Oxunddan o'rgangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrab qaysi tilni ham o'rgangan?$$,
 $$["Fors tilini", "Xitoy tilini", "Rus tilini", "Ingliz tilini"]$$, 0,
 $$U fors tilini o'zlashtirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Taxminan 1665-yilda Mashrab kimning xizmatiga borgan?$$,
 $$["Afoq Xojaning", "Xonning", "Amirning", "Sultonning"]$$, 0,
 $$Ustozi tavsiyasi bilan Afoq Xoja xizmatiga borgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrab she'rlarining katta qismi qayerda yaratilgan?$$,
 $$["Afoq Xoja dargohida", "Saroyda", "Madrasada", "Safarda emas"]$$, 0,
 $$She'rlarining ko'pi tasavvuf ta'sirida, dargohda yaratilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrab umri qanday o'tgan?$$,
 $$["Darveshona sayohatlarda", "Saroyda", "Bir qishloqda", "Dengizlarda"]$$, 0,
 $$Umri shaharma-shahar kezishda o'tgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrab she'rlari xalqqa qanday yetib borgan?$$,
 $$["Og'izdan-og'izga o'tib", "Faqat kitob orqali", "Gazetada", "Maktabda"]$$, 0,
 $$She'rlari xalq orasida og'zaki tarqalgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrab nomi qayerlarda tilga olingan?$$,
 $$["XVIII–XIX asr tazkiralarida", "Faqat XX asrda", "Yevropa xronikalarida", "Xitoy yilnomalarida"]$$, 0,
 $$Tazkiralar va tasavvufga oid asarlarda nomi bor.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrab qachon va qayerda vafot etgan?$$,
 $$["1711-yilda Balxda", "1640-yilda Namanganda", "1750-yilda Xivada", "1700-yilda Buxoroda"]$$, 0,
 $$U 1711-yilda Balx shahrida vafot etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'boborahim-mashrab'), NULL,
 $$Mashrab qanday shoir sifatida tanilgan?$$,
 $$["Darvesh shoir", "Saroy shoiri", "Harbiy shoir", "Bolalar shoiri"]$$, 0,
 $$U darveshona hayot kechirgan so'fiy shoir edi.$$);

-- feruz: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$Feruz qachon va qayerda tug'ilgan?$$,
 $$["1845-yilda Xivada", "1809-yilda Qiyotda", "1792-yilda Andijonda", "1878-yilda Toshkentda"]$$, 0,
 $$Muhammad Rahimxon Feruz 1845-yilda Xivada tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$Feruz qachon taxtga o'tirgan?$$,
 $$["1864", "1845", "1871", "1910"]$$, 0,
 $$Otasi vafotidan so'ng 1864-yilda Xiva taxtiga chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$«Feruz» nima?$$,
 $$["Xonning she'riy taxallusi", "Shahar nomi", "Kitob nomi", "Musiqa asbobi"]$$, 0,
 $$Feruz — Muhammad Rahimxon II ning she'riy taxallusi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$«Devoni Feruz» qachon tuzilgan?$$,
 $$["1879", "1864", "1900", "1910"]$$, 0,
 $$Devon 1879-yilda tuzilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$Feruzning ustozi kim edi?$$,
 $$["Ogahiy", "Munis", "Navoiy", "Bayoniy"]$$, 0,
 $$Uning ustozi — shoir va tarixchi Ogahiy.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$Feruz saroyida qaysi shoirlar ijod qilgan?$$,
 $$["Komil va Tabibiy", "Nodira va Uvaysiy", "Cho'lpon va Fitrat", "Navoiy va Jomiy"]$$, 0,
 $$Saroyida Komil va Tabibiy kabi shoirlar bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$Feruz Xivada nima ochirgan?$$,
 $$["Toshbosma (litografiya)", "Universitet", "Rasadxona", "Teatr"]$$, 0,
 $$U Xivada toshbosma ochirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$Toshbosmada nimalar bosilgan?$$,
 $$["Navoiy asarlari va shoirlar to'plami", "Faqat farmonlar", "Gazetalar", "Xaritalar"]$$, 0,
 $$Navoiy asarlari va «Majmuat ush-shuaro» bosilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$Feruz qaysi san'atga homiylik qilgan?$$,
 $$["Musiqa — Shashmaqom an'anasiga", "Teatr", "Kino", "Haykaltaroshlik"]$$, 0,
 $$Saroyida musiqa ansambli bo'lib, Shashmaqom qo'llab-quvvatlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'feruz'), NULL,
 $$Feruz 1871-yilda nima qurdirgan?$$,
 $$["O'z nomidagi madrasa", "Rasadxona", "Ko'prik", "Qal'a"]$$, 0,
 $$U ikki qavatli madrasa qurdirgan; homiyligida 30 dan ortiq inshoot bunyod etilgan.$$);
