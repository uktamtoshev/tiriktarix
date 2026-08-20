-- Galereyaga yangi ajdodlar (3-partiya): jadid noshirlari, shoiralar, XX asr adiblari.
--
-- MANBALAR: Ziyouz.com ensiklopedik bo'limlari; Ubaydulla Xo'jayev uchun
-- Jadid.uz (ruxsat etilgan ro'yxatdagi muzey-ilmiy sayt). Hech narsa yoddan
-- yozilmadi. Qatag'on mavzusi bir jumlada, quruq berilgan.
--
-- SANA TUZATISHLARI (nomzodlar jadvalidagiga nisbatan):
--   Anbar Otin: 1870–1906 (jadvalda xato 1915 turgan edi) — ziyouz bo'yicha.
--   Ubaydulla Xo'jayev: vafoti 1939 (surgunda) — jadid.uz bo'yicha;
--     ba'zi manbalarda 1937 uchraydi, metodist solishtirsin.
--
-- verified = TRUE — foydalanuvchi qarori (2026-08-01), metodist ro'yxatdan tekshiradi.


-- ===================== Is'hoqxon Ibrat =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'ishoqxon-ibrat', $$Is'hoqxon Ibrat$$, $$Sayyoh va noshir$$, 1862, 1937, e.id,
       $$To'raqo'rg'onlik ma'rifatparvar, tilshunos va ilk o'zbek noshirlaridan. Olti tilli lug'at tuzgan, qishlog'ida bosmaxona ochgan.$$, $$Assalomu alaykum! Men Is'hoqxon Ibratman. Sayohatlarim, olti tilli lug'atim va bosmaxonam haqida so'ra.$$, $$🖨️$$, $$["ibrat", "is'hoqxon", "to'raqo'rg'on", "lug'at", "matbaa", "bosmaxona", "sayohat", "namangan", "jome ul-xutut", "olti til"]$$::jsonb
  FROM eras e WHERE e.code = 'jadidlar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1862-yilda Namangan yaqinidagi To'raqo'rg'on qishlog'ida tug'ilganman.$$, $$["tug'ilish", "to'raqo'rg'on", "namangan", "1862"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$Dastlab eski maktabda o'qidim, so'ng Qo'qon madrasasida tahsil olib, 1886-yilda uni tugatdim.$$, $$["o'qish", "qo'qon", "madrasa", "1886"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Katta sayohatim$$, $$1887-yilda haj safariga chiqib, Istanbul, Sofiya, Afina va Rimda bo'ldim; keyin Jidda, Bombey va Kalkuttada yashadim.$$, $$["sayohat", "haj", "istanbul", "rim", "bombey", "kalkutta", "1887"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tillarim$$, $$Sayohatlarimda arab, fors, hind-urdu va ingliz tillarini mukammal o'rgandim.$$, $$["til", "arab", "fors", "hind", "ingliz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Vatanga qaytishim$$, $$1896-yilda vatanimga qaytib keldim.$$, $$["qaytish", "1896", "vatan"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Olti tilli lug'atim$$, $$1901-yilda «Lug'ati sitta alsina» — arab, fors, hind, turk, o'zbek va rus so'zlaridan iborat olti tilli lug'atimni chop etdim.$$, $$["lug'at", "olti til", "lug'ati sitta", "1901"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Maktabim$$, $$1907-yilda To'raqo'rg'onda yangi usul maktabini ochdim.$$, $$["maktab", "yangi usul", "1907"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bosmaxonam$$, $$1908-yilda qishlog'imda «Matbaai Ishoqiya» litografiya bosmaxonasini tashkil etdim.$$, $$["matbaa", "bosmaxona", "ishoqiya", "1908"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Asarlarim$$, $$1909-yilda «Ilmi Ibrat» she'riy to'plamim chiqdi, 1912-yilda yozuvlar tarixiga oid «Jome' ul-xutut» asarimni yaratdim.$$, $$["ilmi ibrat", "jome ul-xutut", "asar", "1912"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1937-yilda 75 yoshimda Andijon turmasida vafot etganman.$$, $$["vafot", "1937", "andijon"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$, TRUE
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';

-- ===================== Ubaydulla Xo'jayev =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'ubaydulla-xojayev', $$Ubaydulla Xo'jayev$$, $$Birinchi advokat$$, 1878, 1939, e.id,
       $$Toshkentlik huquqshunos va noshir. Ilk o'zbek advokatlaridan biri, «Sadoi Turkiston» gazetasining tashkilotchisi.$$, $$Assalomu alaykum! Men Ubaydulla Xo'jayevman. Advokatlik ishim va «Sadoi Turkiston» gazetam haqida so'ra.$$, $$⚖️$$, $$["ubaydulla", "xo'jayev", "advokat", "sadoi turkiston", "saratov", "huquq", "gazeta", "sho'royi islom"]$$::jsonb
  FROM eras e WHERE e.code = 'jadidlar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1878-yilda Toshkentda, bog'bon oilasida tug'ilganman.$$, $$["tug'ilish", "toshkent", "1878", "bog'bon"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$Rus-tuzem maktabini tugatib, huquq ilmini Saratovda o'rgandim.$$, $$["o'qish", "rus-tuzem", "saratov", "huquq"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Advokatlik imtihoni$$, $$1912-yilda Saratov okrug sudida advokatlik imtihonini topshirdim.$$, $$["advokat", "imtihon", "1912", "sud"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalqqa xizmat$$, $$1913-yilda Toshkentga qaytib, advokat sifatida xalqqa xizmat qildim — ilk o'zbek advokatlaridan bo'ldim.$$, $$["advokat", "1913", "xizmat", "birinchi"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Sadoi Turkiston»$$, $$1914-yil aprelda safdoshlarim bilan «Sadoi Turkiston» gazetasini chiqara boshladik.$$, $$["sadoi turkiston", "gazeta", "1914"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Gazeta xarajati$$, $$Gazetaning har bir soni zarar bilan chiqardi — xarajatni o'z zimmamga olib turdim. 1915-yilda gazeta yopildi.$$, $$["zarar", "xarajat", "1915", "yopilish"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Gazetadagi qalamkashlar$$, $$Gazetam sahifalarida Abdulla Avloniy va boshqa ma'rifatparvarlar qatnashgan, yosh Cho'lponning ilk mashqlari bosilgan.$$, $$["avloniy", "cho'lpon", "qalamkash", "matbuot"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$1917-yil$$, $$1917-yilda Toshkent «Sho'royi islom» jamiyatiga rais etib saylandim.$$, $$["sho'royi islom", "rais", "1917"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Muxtoriyat$$, $$Turkiston muxtoriyati ishlarida qatnashganman.$$, $$["muxtoriyat", "turkiston", "siyosat"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1938-yilda qamoqqa olindim va 1939-yilda surgunda vafot etdim.$$, $$["vafot", "1939", "qamoq", "surgun"]$$::jsonb, $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$, TRUE
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';

-- ===================== Anbar Otin =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'anbar-otin', $$Anbar Otin$$, $$Otin shoira$$, 1870, 1906, e.id,
       $$Qo'qonlik shoira va o'qituvchi. Mahalladagi qizlarga saboq bergani uchun «otin» deb atalgan. She'rlarida adolat va ilm-ma'rifatni kuylagan.$$, $$Assalomu alaykum! Men Anbar Otinman. She'rlarim, devonim va qizlarga bergan saboqlarim haqida so'ra.$$, $$🌸$$, $$["anbar otin", "otin", "shoira", "qo'qon", "devon", "g'azal", "qarolar falsafasi", "dilshod otin", "qizlar maktabi"]$$::jsonb
  FROM eras e WHERE e.code = 'jadidlar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1870-yilda Qo'qonda tug'ilganman. To'liq ismim — Anbar Otin Farmonqul qizi.$$, $$["tug'ilish", "qo'qon", "1870", "ism"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Oilam$$, $$Otam shoira Uvaysiy izdoshlaridan edi, onam Ashurbibi hunarmand qizi edi.$$, $$["oila", "uvaysiy", "ota", "ona"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$Dilshod otin maktabida tahsil olganman.$$, $$["o'qish", "dilshod otin", "maktab"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Otin» nomim$$, $$She'r yozish bilan birga mahallamdagi qizlarga saboq berganim uchun «otin» deb atalganman.$$, $$["otin", "saboq", "qizlar", "o'qituvchi"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tillarim$$, $$O'zbek va tojik tillarida ijod qilganman.$$, $$["til", "o'zbek", "tojik", "ijod"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Devonim$$, $$1905-yilda o'zbekcha she'rlarimdan devon tuzdim: unda 41 g'azal, 4 muxammas, qit'a, masnaviy va mustazod bor.$$, $$["devon", "g'azal", "muxammas", "1905"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$She'rlarim mavzusi$$, $$She'rlarimning aksariyati ijtimoiy mavzuda: adolatsizlik, mehnatkashlar ahvoli haqida yozganman.$$, $$["mavzu", "adolat", "ijtimoiy", "mehnatkash"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilm-ma'rifat$$, $$She'rlarimda ilm va ma'rifatni ulug'laganman.$$, $$["ilm", "ma'rifat", "bilim"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Qarolar falsafasi»$$, $$«Qarolar falsafasi» asarimda ayollarning og'ir ahvoli haqida so'z yuritganman.$$, $$["qarolar falsafasi", "ayollar", "asar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1906-yilda Qo'qonda vafot etganman.$$, $$["vafot", "1906", "qo'qon"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$, TRUE
  FROM heroes h WHERE h.slug = 'anbar-otin';

-- ===================== Zulfiya =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'zulfiya', $$Zulfiya$$, $$Xalq shoirasi$$, 1915, 1996, e.id,
       $$Toshkentlik shoira. «Bahor keldi seni so'roqlab» kabi she'rlari bilan tanilgan, Javaharlal Neru xalqaro mukofoti sovrindori. Uning nomidagi mukofot qizlarga beriladi.$$, $$Assalomu alaykum! Men Zulfiyaman. She'rlarim, safarlarim va mukofotlarim haqida so'ra.$$, $$🕊️$$, $$["zulfiya", "shoira", "isroilova", "hamid olimjon", "she'r", "neru mukofoti", "mushoira", "xalq shoirasi"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1915-yil 1-martda Toshkentda, hunarmand oilasida tug'ilganman. To'liq ismim — Zulfiya Isroilova.$$, $$["tug'ilish", "toshkent", "1915", "hunarmand"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$1931–1934-yillarda xotin-qizlar bilim yurtida o'qidim, she'r mashqlarimni adabiyot to'garagida boshladim.$$, $$["o'qish", "bilim yurti", "to'garak", "1931"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilmiy yo'lim$$, $$1935–1938-yillarda Fanlar akademiyasining Til va adabiyot institutida tahsil oldim.$$, $$["institut", "til va adabiyot", "1935"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilk kitobim$$, $$1932-yilda «Hayot varaqlari» nomli birinchi she'riy to'plamim chiqdi.$$, $$["hayot varaqlari", "ilk kitob", "1932"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kitoblarim$$, $$«Qizlar qo'shig'i» (1938), «Hijron kunlarida» (1944), «Tong qo'shig'i» (1953) va «Kuylarim sizga» (1965) to'plamlarim nashr etilgan.$$, $$["kitob", "qizlar qo'shig'i", "tong qo'shig'i", "to'plam"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Opera librettolari$$, $$Hamid Olimjon dostonlari asosida opera librettolarini yaratganman.$$, $$["opera", "libretto", "hamid olimjon", "doston"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Dehli anjumani$$, $$1956-yilda Dehlidagi Osiyo-Afrika yozuvchilari anjumanida qatnashdim; shu safar ta'sirida «Mushoira» (1958) asarim tug'ildi.$$, $$["dehli", "anjuman", "mushoira", "1956"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalqaro mukofotlarim$$, $$Hindiston mavzusidagi she'rlarim uchun Javaharlal Neru xalqaro mukofotini, tinchlik uchun «Nilufar» mukofotini olganman.$$, $$["neru", "nilufar", "mukofot", "xalqaro"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tarjimalar$$, $$She'rlarim rus, ingliz, nemis, hind, bolgar, xitoy, arab va fors tillariga tarjima qilingan.$$, $$["tarjima", "tillar", "she'r"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1996-yil 1-avgustda 81 yoshimda vafot etganman.$$, $$["vafot", "1996", "81"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$, TRUE
  FROM heroes h WHERE h.slug = 'zulfiya';

-- ===================== G'afur G'ulom =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'gafur-gulom', $$G'afur G'ulom$$, $$«Shum bola» muallifi$$, 1903, 1966, e.id,
       $$Toshkentlik shoir va yozuvchi. «Shum bola» qissasi va «Sen yetim emassan» she'ri bilan mashhur. Fanlar akademiyasi akademigi.$$, $$Assalomu alaykum! Men G'afur G'ulomman. «Shum bola», she'rlarim va tarjimalarim haqida so'ra.$$, $$😄$$, $$["g'afur g'ulom", "gafur", "shum bola", "yodgor", "she'r", "akademik", "toshkent", "tarjima", "shekspir"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1903-yil 10-mayda Toshkentda tug'ilganman.$$, $$["tug'ilish", "toshkent", "1903"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Shum bola»$$, $$«Shum bola» qissamni 1936-yilda yozdim — unda bolaligim va o'sha davr Toshkent hayoti aks etgan.$$, $$["shum bola", "qissa", "1936", "bolalik"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$She'riy to'plamlarim$$, $$«Dinamo» (1931) va «Tirik qo'shiqlar» (1932) to'plamlarim chiqqan.$$, $$["dinamo", "tirik qo'shiqlar", "to'plam"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Mashhur she'rlarim$$, $$«Qish va shoirlar» (1929), «Non» (1931) va «Toshkent» (1933) she'rlarim keng tanilgan.$$, $$["she'r", "non", "toshkent", "qish"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Qissalarim$$, $$«Netay» (1930) va «Yodgor» (1936) qissalarini yozganman.$$, $$["netay", "yodgor", "qissa"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Mening o'g'rigina bolam»$$, $$1965-yilda «Mening o'g'rigina bolam» hikoyamni yozdim.$$, $$["o'g'rigina bolam", "hikoya", "1965"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Akademiklik$$, $$1943-yilda O'zbekiston Fanlar akademiyasining haqiqiy a'zosi bo'ldim.$$, $$["akademik", "1943", "fanlar akademiyasi"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilmiy ishlarim$$, $$«Folklordan o'rganaylik» (1939) va «Navoiy va zamonamiz» (1948) maqolalarimni yozganman.$$, $$["folklor", "navoiy", "maqola", "ilmiy"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tarjimalarim$$, $$Shekspirning «Otello» va «Qirol Lir» asarlarini o'zbekchaga o'girganman.$$, $$["shekspir", "otello", "qirol lir", "tarjima"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1966-yil 10-iyunda vafot etganman; 2000-yilda «Buyuk xizmatlari uchun» ordeni bilan taqdirlanganman.$$, $$["vafot", "1966", "orden", "2000"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$, TRUE
  FROM heroes h WHERE h.slug = 'gafur-gulom';

-- ===================== TEST SAVOLLARI (3-partiya) =====================

-- ishoqxon-ibrat: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$Is'hoqxon Ibrat qachon va qayerda tug'ilgan?$$,
 $$["1862-yilda To'raqo'rg'onda", "1878-yilda Toshkentda", "1875-yilda Samarqandda", "1870-yilda Qo'qonda"]$$, 0,
 $$Ibrat 1862-yilda Namangan yaqinidagi To'raqo'rg'onda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$Ibrat madrasani qachon va qayerda tugatgan?$$,
 $$["1886-yilda Qo'qonda", "1880-yilda Buxoroda", "1890-yilda Toshkentda", "1896-yilda Namanganda"]$$, 0,
 $$U Qo'qon madrasasini 1886-yilda tugatgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$Ibrat 1887-yildagi safarida qaysi shaharlarda bo'lgan?$$,
 $$["Istanbul, Sofiya, Afina, Rimda", "Moskva va Peterburgda", "Pekin va Tokioda", "Qohira va Tunisda"]$$, 0,
 $$U Istanbul, Sofiya, Afina va Rim orqali o'tib, keyin Hindistonda yashagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$Ibrat qaysi tillarni mukammal o'rgangan?$$,
 $$["Arab, fors, hind-urdu va ingliz", "Faqat rus", "Xitoy va koreys", "Nemis va fransuz"]$$, 0,
 $$Sayohatlarida arab, fors, hind-urdu va ingliz tillarini o'rgangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$«Lug'ati sitta alsina» nima?$$,
 $$["Olti tilli lug'at", "She'riy to'plam", "Drama", "Tarix kitobi"]$$, 0,
 $$1901-yilda chiqqan olti tilli lug'at.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$Ibrat lug'atini qachon chop etgan?$$,
 $$["1896", "1901", "1908", "1912"]$$, 1,
 $$«Lug'ati sitta alsina» 1901-yilda bosilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$Ibrat yangi usul maktabini qachon ochgan?$$,
 $$["1901", "1907", "1912", "1917"]$$, 1,
 $$1907-yilda To'raqo'rg'onda yangi usul maktabini ochgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$«Matbaai Ishoqiya» nima edi?$$,
 $$["Bosmaxona", "Maktab", "Gazeta", "Kutubxona"]$$, 0,
 $$1908-yilda o'z qishlog'ida ochgan litografiya bosmaxonasi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$«Jome' ul-xutut» asari nima haqida?$$,
 $$["Yozuvlar tarixi", "O'simliklar", "Yulduzlar", "Musiqa"]$$, 0,
 $$1912-yilgi bu asar yozuvlar tarixiga bag'ishlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat'), NULL,
 $$Ibrat umri qanday yakunlangan?$$,
 $$["1937-yilda Andijon turmasida vafot etgan", "Uzoq umr ko'rib qishlog'ida vafot etgan", "Xorijga ketgan", "Noma'lum"]$$, 0,
 $$U 1937-yilda 75 yoshida Andijon turmasida vafot etgan.$$);

-- ubaydulla-xojayev: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$Ubaydulla Xo'jayev qachon va qayerda tug'ilgan?$$,
 $$["1878-yilda Toshkentda", "1862-yilda Namanganda", "1886-yilda Buxoroda", "1894-yilda Qo'qonda"]$$, 0,
 $$U 1878-yilda Toshkentda, bog'bon oilasida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$Xo'jayev huquq ilmini qayerda o'rgangan?$$,
 $$["Saratovda", "Moskvada", "Istanbulda", "Qozonda"]$$, 0,
 $$U huquqni Saratovda o'rgangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$Xo'jayev advokatlik imtihonini qachon topshirgan?$$,
 $$["1908", "1912", "1917", "1920"]$$, 1,
 $$1912-yilda Saratov okrug sudida imtihon topshirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$Xo'jayev nimasi bilan tarixda qolgan?$$,
 $$["Ilk o'zbek advokatlaridan biri", "Birinchi shifokor", "Birinchi uchuvchi", "Birinchi muhandis"]$$, 0,
 $$U ilk o'zbek advokatlaridan biri edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$Xo'jayev qaysi gazetani tashkil etgan?$$,
 $$["«Sadoi Turkiston»", "«Oyina»", "«Xurshid»", "«Shuhrat»"]$$, 0,
 $$1914-yilda «Sadoi Turkiston» gazetasini chiqara boshlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$«Sadoi Turkiston» qachon chiqa boshlagan?$$,
 $$["1910", "1914", "1917", "1920"]$$, 1,
 $$Gazeta 1914-yil aprelidan chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$Gazeta moliyaviy jihatdan qanday edi?$$,
 $$["Katta foyda keltirardi", "Har soni zarar bilan chiqardi", "Davlat pulida edi", "Bepul tarqatilardi"]$$, 1,
 $$Har bir soni zarar bilan chiqqan, xarajatni Xo'jayev ko'targan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$Gazetada kimlarning asarlari bosilgan?$$,
 $$["Avloniy va yosh Cho'lponning", "Faqat rus adiblarining", "Faqat tarjimalar", "Hech kimning"]$$, 0,
 $$Sahifalarida Avloniy qatnashgan, yosh Cho'lponning ilk mashqlari bosilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$1917-yilda Xo'jayev qaysi jamiyatga rais bo'lgan?$$,
 $$["«Sho'royi islom»", "«Turon»", "«Jamiyati xayriya»", "Akademmarkaz"]$$, 0,
 $$U Toshkent «Sho'royi islom» jamiyatiga rais etib saylangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev'), NULL,
 $$Xo'jayev umri qanday yakunlangan?$$,
 $$["1939-yilda surgunda vafot etgan", "Uzoq umr ko'rgan", "Advokatlikdan nafaqaga chiqqan", "Noma'lum"]$$, 0,
 $$1938-yilda qamoqqa olinib, 1939-yilda surgunda vafot etgan.$$);

-- anbar-otin: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$Anbar Otin qachon va qayerda tug'ilgan?$$,
 $$["1870-yilda Qo'qonda", "1881-yilda Marg'ilonda", "1875-yilda Samarqandda", "1890-yilda Toshkentda"]$$, 0,
 $$U 1870-yilda Qo'qonda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$Anbar Otinning otasi kimning izdoshi edi?$$,
 $$["Shoira Uvaysiyning", "Navoiyning", "Behbudiyning", "Mashrabning"]$$, 0,
 $$Otasi shoira Uvaysiy izdoshlaridan edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$Anbar Otin kimning maktabida o'qigan?$$,
 $$["Dilshod otin maktabida", "Rus maktabida", "Madrasa", "Yangi usul maktabida"]$$, 0,
 $$U Dilshod otin maktabida tahsil olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$Nega u «otin» deb atalgan?$$,
 $$["Qizlarga saboq bergani uchun", "Otini yaxshi mingani uchun", "Otasi so'ragani uchun", "Taxallus tanlagani uchun"]$$, 0,
 $$Mahalladagi qizlarga saboq bergani uchun «otin» deyilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$Anbar Otin qaysi tillarda ijod qilgan?$$,
 $$["O'zbek va tojik", "Faqat arab", "Rus va tatar", "Fors va hind"]$$, 0,
 $$U o'zbek va tojik tillarida she'r yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$Anbar Otin devonini qachon tuzgan?$$,
 $$["1895", "1905", "1910", "1915"]$$, 1,
 $$Devoni 1905-yilda tuzilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$Devonida nechta g'azal bor?$$,
 $$["21", "41", "61", "100"]$$, 1,
 $$Devonga 41 g'azal kirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$She'rlarining asosiy mavzusi nima?$$,
 $$["Ijtimoiy adolat va ilm-ma'rifat", "Faqat tabiat", "Faqat muhabbat", "Sayohatlar"]$$, 0,
 $$Aksariyat she'rlari adolatsizlik, mehnatkashlar ahvoli va ilm haqida.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$«Qarolar falsafasi» nima haqida?$$,
 $$["Ayollarning og'ir ahvoli haqida", "Yulduzlar haqida", "Savdo haqida", "Urush haqida"]$$, 0,
 $$Bu asar ayollarning og'ir ahvoliga bag'ishlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'anbar-otin'), NULL,
 $$Anbar Otin qachon vafot etgan?$$,
 $$["1906", "1915", "1920", "1931"]$$, 0,
 $$U 1906-yilda Qo'qonda vafot etgan.$$);

-- zulfiya: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$Zulfiya qachon va qayerda tug'ilgan?$$,
 $$["1915-yil 1-martda Toshkentda", "1903-yilda Toshkentda", "1920-yilda Samarqandda", "1910-yilda Buxoroda"]$$, 0,
 $$U 1915-yil 1-martda Toshkentda, hunarmand oilasida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$Zulfiyaning to'liq ismi nima?$$,
 $$["Zulfiya Isroilova", "Zulfiya Olimjonova", "Zulfiya Toshmuhammadova", "Zulfiya Qodirova"]$$, 0,
 $$To'liq ismi — Zulfiya Isroilova.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$Zulfiya 1931–1934-yillarda qayerda o'qigan?$$,
 $$["Xotin-qizlar bilim yurtida", "Universitetda", "Madrasada", "Moskvada"]$$, 0,
 $$U xotin-qizlar bilim yurtida o'qib, to'garakda she'r mashq qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$Zulfiyaning ilk to'plami qaysi?$$,
 $$["«Hayot varaqlari»", "«Tong qo'shig'i»", "«Mushoira»", "«Kuylarim sizga»"]$$, 0,
 $$«Hayot varaqlari» 1932-yilda chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$Zulfiya kimning dostonlari asosida opera librettolari yozgan?$$,
 $$["Hamid Olimjonning", "Oybekning", "G'afur G'ulomning", "Navoiyning"]$$, 0,
 $$Hamid Olimjon dostonlari asosida librettolar yaratgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$1956-yilda Zulfiya qaysi anjumanda qatnashgan?$$,
 $$["Dehlidagi Osiyo-Afrika yozuvchilari anjumanida", "Parij kongressida", "Moskva plenumida", "Toshkent simpoziumida"]$$, 0,
 $$U Dehlidagi yozuvchilar anjumanida qatnashgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$«Mushoira» asari qachon yozilgan?$$,
 $$["1948", "1958", "1968", "1978"]$$, 1,
 $$Dehli safari ta'sirida 1958-yilda yozilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$Zulfiya qaysi xalqaro mukofotni olgan?$$,
 $$["Javaharlal Neru mukofotini", "Nobel mukofotini", "Gonkur mukofotini", "Buker mukofotini"]$$, 0,
 $$Hindiston mavzusidagi she'rlari uchun Neru mukofotini olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$«Nilufar» mukofoti Zulfiyaga nima uchun berilgan?$$,
 $$["Tinchlik uchun kurashi uchun", "Romani uchun", "Tarjimalari uchun", "Rasmi uchun"]$$, 0,
 $$Xalqaro «Nilufar» mukofoti tinchlik targ'iboti uchun berilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zulfiya'), NULL,
 $$Zulfiya qachon vafot etgan?$$,
 $$["1986", "1996", "2000", "2006"]$$, 1,
 $$U 1996-yil 1-avgustda 81 yoshida vafot etgan.$$);

-- gafur-gulom: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$G'afur G'ulom qachon va qayerda tug'ilgan?$$,
 $$["1903-yil 10-mayda Toshkentda", "1905-yilda Toshkentda", "1897-yilda Andijonda", "1915-yilda Samarqandda"]$$, 0,
 $$U 1903-yil 10-mayda Toshkentda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$«Shum bola» qanday asar?$$,
 $$["Bolalik haqidagi qissa", "Tarixiy roman", "Drama", "She'riy doston"]$$, 0,
 $$«Shum bola» (1936) — yozuvchi bolaligi aks etgan qissa.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$«Shum bola» qachon yozilgan?$$,
 $$["1929", "1936", "1943", "1950"]$$, 1,
 $$Qissa 1936-yilda yozilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$Quyidagilardan qaysi biri G'afur G'ulom to'plami?$$,
 $$["«Dinamo»", "«Buloqlar»", "«Sayha»", "«Hayot varaqlari»"]$$, 0,
 $$«Dinamo» (1931) — uning she'riy to'plami.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$Quyidagilardan qaysi biri G'afur G'ulom she'ri?$$,
 $$["«Non»", "«Go'zal Turkiston»", "«Mushoira»", "«O'zbekiston» qasidasi"]$$, 0,
 $$«Non» (1931) — mashhur she'rlaridan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$«Yodgor» qanday asar?$$,
 $$["Qissa", "Roman", "Drama", "Doston"]$$, 0,
 $$«Yodgor» (1936) — qissa.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$G'afur G'ulom qachon akademik bo'lgan?$$,
 $$["1939", "1943", "1948", "1956"]$$, 1,
 $$1943-yilda Fanlar akademiyasining haqiqiy a'zosi bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$G'afur G'ulom Shekspirning qaysi asarlarini tarjima qilgan?$$,
 $$["«Otello» va «Qirol Lir»", "«Hamlet» va «Makbet»", "«Romeo va Juletta»", "«Bo'ron»"]$$, 0,
 $$U «Otello» va «Qirol Lir»ni o'zbekchaga o'girgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$«Mening o'g'rigina bolam» qachon yozilgan?$$,
 $$["1936", "1950", "1965", "1970"]$$, 2,
 $$Hikoya 1965-yilda yozilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gafur-gulom'), NULL,
 $$G'afur G'ulom qachon vafot etgan?$$,
 $$["1966-yil 10-iyunda", "1968-yilda", "1970-yilda", "1960-yilda"]$$, 0,
 $$U 1966-yil 10-iyunda vafot etgan; 2000-yilda orden bilan taqdirlangan.$$);
