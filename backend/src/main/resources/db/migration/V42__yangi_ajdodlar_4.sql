-- Galereyaga yangi ajdodlar (4-partiya): Temuriylar davri — olimlar, hukmdor,
-- musavvir va IKKI MALIKA.
--
-- MANBALAR: Ziyouz.com («Temuriy malikalar», «O'zbek mumtoz adabiyoti»,
-- L. Keren maqolasi) va UzA. Hech narsa yoddan yozilmadi.
--
-- METODISTGA ALOHIDA:
--   * Ali Qushchi vafoti 1474 — keng tarqalgan sana, lekin ruxsat etilgan
--     manbalarimizda tasdig'i topilmadi (death_year NOT NULL bo'lgani uchun
--     yozildi). Istanbul davri haqidagi mashhur ma'lumotlar ham manbada
--     yo'qligi uchun kartochkalarga KIRITILMADI.
--   * Behzod vafoti 1535 — xuddi shu holat (565 yillik sanasi manbada bor,
--     vafot sanasi yo'q).
--   * Koshiy tug'ilgan yili manbalarda yo'q — NULL qoldirildi.
--   * Saroymulkxonim vafoti Ibn Arabshoh RIVOYATI bo'yicha — kartochkada
--     «rivoyatiga ko'ra» deb ochiq aytilgan.
--
-- verified = TRUE — foydalanuvchi qarori (2026-08-01).


-- ===================== Ali Qushchi =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'ali-qushchi', $$Ali Qushchi$$, $$Zamonasining Ptolemeyi$$, 1403, 1474, e.id,
       $$Samarqandlik astronom, Ulug'bekning shogirdi va safdoshi. «Ziji jadidi Ko'ragoniy»ni yakunlashda katta hissa qo'shgan.$$, $$Assalomu alaykum! Men Ali Qushchiman. Rasadxona, yulduzlar jadvali va Xitoy safarim haqida so'ra.$$, $$🦅$$, $$["ali qushchi", "qushchi", "astronom", "zij", "rasadxona", "ulug'bek shogirdi", "ptolemey", "xitoy safari", "samarqand"]$$::jsonb
  FROM eras e WHERE e.code = 'temuriylar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1403-yilda tug'ilganman, Samarqandda voyaga yetib, kamol topganman.$$, $$["tug'ilish", "1403", "samarqand"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Laqabim$$, $$«Qushchi» laqabim qushlar bilan bog'liq — lochin oviga oid xizmat tufayli shunday atalganman.$$, $$["qushchi", "laqab", "lochin", "ov"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ustozlarim$$, $$Ulug'bek meni o'z shogirdi va yosh safdoshi deb bilgan; uning olimlar davrasida Qozizoda Rumiy va G'iyosiddin Jamshid Koshiy bilan birga ishlaganman.$$, $$["ustoz", "ulug'bek", "qozizoda rumiy", "koshiy"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilk ma'ruzam$$, $$1420-yilda Ulug'bek madrasasida talabalarga ilk bor ma'ruza o'qiganman.$$, $$["ma'ruza", "1420", "madrasa", "dars"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xitoy safarim$$, $$Ulug'bek meni astronomiyaga oid xitoy qo'llanmalari va taqvimlarini topib kelish uchun Xitoyga yuborgan.$$, $$["xitoy", "safar", "taqvim", "qo'llanma"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Zij»dagi hissam$$, $$«Ziji jadidi Ko'ragoniy»ni yakunlashda xizmatim katta bo'lgan — Ulug'bek asar so'zboshisida buni alohida ta'kidlagan.$$, $$["zij", "yakunlash", "hissa", "so'zboshi"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Unvonim$$, $$Meni «o'z zamonasining Ptolemeyi» deb atashgan.$$, $$["ptolemey", "unvon", "zamona"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Asarlarim$$, $$Arab va fors tillarida ilmiy asarlar yaratganman.$$, $$["asar", "arab", "fors", "til"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Merosim$$, $$Ulug'bek ilmiy maktabining davomchisi va elchisi sifatida tarixda qolganman.$$, $$["meros", "maktab", "elchi", "davomchi"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi»$$, TRUE
  FROM heroes h WHERE h.slug = 'ali-qushchi';

-- ===================== G'iyosiddin Jamshid Koshiy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'giyosiddin-koshiy', $$G'iyosiddin Jamshid Koshiy$$, $$Hisob ustasi$$, NULL, 1430, e.id,
       $$Ulug'bek rasadxonasining yetakchi matematiklaridan. «Miftoh ul-hisob» asarini yozgan, rasadxona loyihasining tashabbuskorlaridan bo'lgan.$$, $$Assalomu alaykum! Men G'iyosiddin Jamshid Koshiyman. Hisob ilmi va rasadxona qurilishi haqida so'ra.$$, $$🔢$$, $$["koshiy", "jamshid", "g'iyosiddin", "miftoh ul-hisob", "matematik", "rasadxona", "hisob", "samarqand"]$$::jsonb
  FROM eras e WHERE e.code = 'temuriylar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Samarqandga kelishim$$, $$1417-yilda Ulug'bek meni Samarqandga chaqirgan.$$, $$["samarqand", "1417", "chaqiruv"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$, TRUE
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Rasadxona loyihasi$$, $$Samarqand rasadxonasi loyihasining tashabbuskorlaridan bo'lganman.$$, $$["rasadxona", "loyiha", "tashabbus"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$, TRUE
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Olimlar davrasi$$, $$Ulug'bek davrasida Qozizoda Rumiy va yosh Ali Qushchi bilan birga ishlaganman.$$, $$["olimlar", "qozizoda", "ali qushchi", "davra"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$, TRUE
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Miftoh ul-hisob»$$, $$«Miftoh ul-hisob» («Hisob kaliti») asarimni 1427-yilda yakunlaganman.$$, $$["miftoh ul-hisob", "1427", "asar", "hisob"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$, TRUE
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ustozim kim edi$$, $$Ulug'bekning mashhur ustozlaridan biri bo'lganman — u meni chuqur hurmat qilgan.$$, $$["ustoz", "ulug'bek", "hurmat"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$, TRUE
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Vafotim$$, $$1430-yilda vafot etganman — bu yulduzlar jadvalini tuzayotgan maktab uchun katta yo'qotish bo'lgan.$$, $$["vafot", "1430", "yo'qotish"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$, TRUE
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Merosim$$, $$Hisob ilmiga oid ishlarim Sharq matematikasi rivojiga xizmat qilgan.$$, $$["meros", "matematika", "hisob", "sharq"]$$::jsonb, $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$, TRUE
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- ===================== Husayn Boyqaro =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'husayn-boyqaro', $$Husayn Boyqaro$$, $$Shoir hukmdor$$, 1438, 1506, e.id,
       $$Hirotlik temuriy hukmdor va shoir. Xurosonni 37 yil boshqargan, «Husayniy» taxallusi bilan she'rlar yozgan, Navoiyning maktabdosh do'sti.$$, $$Assalomu alaykum! Men Husayn Boyqaroman. Saltanatim, she'rlarim va do'stim Navoiy haqida so'ra.$$, $$👑$$, $$["husayn boyqaro", "husayniy", "hirot", "xuroson", "hukmdor", "shoir", "navoiy do'sti", "devon", "boyqaro"]$$::jsonb
  FROM eras e WHERE e.code = 'temuriylar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1438-yilda Hirotda tug'ilganman. To'liq ismim — Husayn ibn Mirzo Mansur ibn Mirzo Boyqaro.$$, $$["tug'ilish", "hirot", "1438", "ism"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taxtga kelishim$$, $$1469-yildan Xuroson taxtini boshqardim va Hirotni mustahkamladim.$$, $$["taxt", "1469", "xuroson", "hirot"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Hukmronligim$$, $$Xurosonni 1469-yildan 1506-yilgacha — qariyb qirq yil boshqarganman.$$, $$["hukmronlik", "1469", "1506", "qirq yil"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taxallusim$$, $$She'rlarimni «Husayniy» taxallusi bilan yozganman.$$, $$["husayniy", "taxallus", "she'r"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Devonim$$, $$Devonimga 200 ga yaqin g'azal, muxammas va ruboiylar kirgan; forsiy she'rlarim ham bor.$$, $$["devon", "g'azal", "muxammas", "ruboiy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Do'stim Navoiy$$, $$Do'stim Alisher Navoiyni maxsus yorliq bilan Samarqanddan chaqirtirib, muhrdor lavozimiga tayinlaganman.$$, $$["navoiy", "do'st", "muhrdor", "yorliq"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Hirot — madaniyat markazi$$, $$Davrimda Hirot Sharqning yirik madaniy markaziga aylandi: olimlar, shoirlar va hunarmandlarni qo'llab-quvvatladim.$$, $$["hirot", "madaniyat", "markaz", "homiylik"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Qurilishlarim$$, $$Madrasalar, karvonsaroylar, ko'priklar va masjidlar qurdirganman.$$, $$["qurilish", "madrasa", "karvonsaroy", "ko'prik"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Behzodga buyurtma$$, $$Musavvir Kamoliddin Behzodga yangi miniatyuralar yaratishni topshirganman.$$, $$["behzod", "miniatyura", "buyurtma", "san'at"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1506-yilda vafot etganman; o'zim qurdirgan madrasa maqbarasiga dafn qilinganman.$$, $$["vafot", "1506", "maqbara"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$, TRUE
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';

-- ===================== Kamoliddin Behzod =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'kamoliddin-behzod', $$Kamoliddin Behzod$$, $$Sharq Rafaeli$$, 1455, 1535, e.id,
       $$Hirotlik buyuk musavvir. Yigirma uch yoshida Hirot miniatyura maktabiga yetakchi bo'lgan; Navoiy va Husayn Boyqaro portretlarini chizgan.$$, $$Assalomu alaykum! Men Kamoliddin Behzodman. Miniatyuralarim va chizgan portretlarim haqida so'ra.$$, $$🖌️$$, $$["behzod", "kamoliddin", "miniatyura", "musavvir", "sharq rafaeli", "portret", "hirot", "rassom"]$$::jsonb
  FROM eras e WHERE e.code = 'temuriylar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men taxminan 1455-yilda tug'ilganman — 2020-yilda tavalludimning 565 yilligi nishonlangan.$$, $$["tug'ilish", "1455", "565 yillik"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yetakchilik$$, $$Yigirma uch yoshimda Hirot miniatyura maktabining yetakchisiga aylanganman.$$, $$["yetakchi", "hirot", "maktab", "23 yosh"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Unvonim$$, $$Meni «Sharq Rafaeli» deb atashadi.$$, $$["sharq rafaeli", "unvon", "nom"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Portretlarim$$, $$Abdurahmon Jomiy, Alisher Navoiy, Husayn Boyqaro va Shayboniyxon portretlarini chizganman.$$, $$["portret", "jomiy", "navoiy", "boyqaro", "shayboniyxon"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Portret janri$$, $$Sharq miniatyurasida portret janrining ustasi va yo'lboshchisi sanalaman.$$, $$["portret janri", "usta", "yo'lboshchi"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Hukmdor buyurtmasi$$, $$Hirot hukmdori Husayn Boyqaro menga yangi miniatyura asarlari yaratishni topshirgan.$$, $$["buyurtma", "husayn boyqaro", "miniatyura"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Rassom portreti»$$, $$1487-yilda «Rassom portreti» asarimni yaratganman.$$, $$["rassom portreti", "1487", "asar"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Mashhur asarim$$, $$«Bag'dodlik darvesh» portretim G'arb olimlari tomonidan ham o'rganilgan.$$, $$["bag'dodlik darvesh", "asar", "mashhur"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Merosim$$, $$Ishlarim Sharq va G'arb san'ati xazinalarini boyitgan deb e'tirof etiladi.$$, $$["meros", "san'at", "xazina"]$$::jsonb, $$UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';

-- ===================== Saroymulkxonim =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'saroymulkxonim', $$Saroymulkxonim$$, $$Bibixonim$$, 1341, 1408, e.id,
       $$Amir Temurning katta xonimi. Temur unga uylanib «Ko'ragon» unvonini olgan. Ulug'bek va boshqa shahzodalarni tarbiyalagan, Samarqandda madrasa qurdirgan.$$, $$Assalomu alaykum! Men Saroymulkxonimman — el meni Bibixonim deb ataydi. Saroy hayoti, madrasam va nabiralarim haqida so'ra.$$, $$🕌$$, $$["saroymulkxonim", "bibixonim", "temur xotini", "malika", "madrasa", "ulug'bek tarbiyasi", "ko'ragon", "qozonxon"]$$::jsonb
  FROM eras e WHERE e.code = 'temuriylar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1341-yilda tug'ilganman — Chig'atoy xoni Qozonxonning qiziman. Besh yoshimda otam halok bo'lgan.$$, $$["tug'ilish", "1341", "qozonxon", "xon qizi"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Temurga turmushga chiqishim$$, $$1370-yilda Amir Temur menga uylandi.$$, $$["temur", "1370", "nikoh"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Ko'ragon» unvoni$$, $$Men xon qizi bo'lganim uchun Temur menga uylanib «Ko'ragon» — «xon kuyovi» unvonini oldi.$$, $$["ko'ragon", "unvon", "kuyov"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Bibixonim» nomim$$, $$Aql-idrokim tufayli xonimlar orasida «katta xonim» sanalib, el ichida Bibixonim nomi bilan tanilganman.$$, $$["bibixonim", "katta xonim", "nom"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Davlat ishlari$$, $$Davlat ishlarida qatnashganman va harbiy yurishlarda ham ishtirok etganman.$$, $$["davlat", "yurish", "ishtirok"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Madrasam$$, $$Otamdan qolgan javohirlar evaziga Samarqandda madrasa qurdirganman va talabalar ta'limini qo'llab-quvvatlaganman.$$, $$["madrasa", "samarqand", "javohir", "talaba"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Nabiralar tarbiyasi$$, $$Temur nabiralarini — Ulug'bek, Muhammad Sulton va Xalil Sulton mirzolarni tarbiyalashni menga ishongan.$$, $$["tarbiya", "ulug'bek", "nabira", "shahzoda"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bibixonim masjidi$$, $$Temur mening sharafimga 1399–1404-yillarda Samarqandda ulkan jome masjidi qurdirgan — u O'rta Osiyodagi eng yirik obidalardan.$$, $$["bibixonim masjidi", "jome", "1399", "1404", "samarqand"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$Ibn Arabshoh rivoyatiga ko'ra, 1408-yilda vafot etganman; madrasam yonidagi maqbaraga dafn qilinganman.$$, $$["vafot", "1408", "maqbara", "ibn arabshoh"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$, TRUE
  FROM heroes h WHERE h.slug = 'saroymulkxonim';

-- ===================== Gavharshod begim =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'gavharshod-begim', $$Gavharshod begim$$, $$Amaldor malika$$, 1379, 1457, e.id,
       $$Shohrux Mirzoning rafiqasi, Ulug'bekning onasi. Saltanat ishlarini amalda o'zi boshqargan, Hirotda ikkita yirik madrasa qurdirgan.$$, $$Assalomu alaykum! Men Gavharshod begimman. Saltanat ishlari, qurdirgan binolarim va o'g'lim Ulug'bek haqida so'ra.$$, $$🏛️$$, $$["gavharshod", "begim", "shohrux", "ulug'bek onasi", "malika", "hirot", "madrasa", "boysung'ur"]$$::jsonb
  FROM eras e WHERE e.code = 'temuriylar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1379-yilda tug'ilganman. Otam — chig'atoy zodagoni G'iyosiddin Tarxon.$$, $$["tug'ilish", "1379", "tarxon", "zodagon"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Turmushim$$, $$1393-yilda Temurning o'g'li Shohrux Mirzoga turmushga chiqqanman.$$, $$["shohrux", "1393", "nikoh"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Farzandlarim$$, $$O'g'illarim orasida astronom hukmdor Ulug'bek Mirzo va san'at homiysi Boysung'ur Mirzo bor.$$, $$["ulug'bek", "boysung'ur", "farzand", "ona"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Saltanat ishlari$$, $$Shohrux ibodat va ilmga berilgan paytlarda saltanat va devon ishlarini amalda men boshqarganman.$$, $$["saltanat", "devon", "boshqaruv"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Amaldorlar tayinlash$$, $$Hokimlar va lashkarboshilarni tayinlash, mukofot va jazolarni belgilash ishlarida qatnashganman.$$, $$["hokim", "lashkarboshi", "tayinlash"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Madrasalarim$$, $$Hirotda ikkita yirik madrasa qurdirganman.$$, $$["madrasa", "hirot", "qurilish"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Boshqa binolarim$$, $$Masjidlar, xonaqohlar, shifoxonalar va karvonsaroylar qurdirganman.$$, $$["masjid", "xonaqoh", "shifoxona", "karvonsaroy"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1457-yilda, taxminan 80 yoshimda Abusaid Mirzo buyrug'i bilan qatl etilganman.$$, $$["vafot", "1457", "qatl"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Dafn joyim$$, $$O'zim qurdirgan madrasa yonidagi Boysung'ur maqbarasiga dafn qilinganman.$$, $$["maqbara", "boysung'ur", "dafn"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$, TRUE
  FROM heroes h WHERE h.slug = 'gavharshod-begim';

-- ===================== TEST SAVOLLARI (4-partiya) =====================

-- ali-qushchi: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ali Qushchi qachon tug'ilgan?$$,
 $$["1394", "1403", "1417", "1441"]$$, 1,
 $$U 1403-yilda tug'ilgan, Samarqandda voyaga yetgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$«Qushchi» laqabi nima bilan bog'liq?$$,
 $$["Qushlar va lochin ovi bilan", "Tez yugurishi bilan", "Qishlog'i nomi bilan", "Kitobi nomi bilan"]$$, 0,
 $$Laqabi lochin oviga oid xizmat bilan bog'liq.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ali Qushchi kimning shogirdi bo'lgan?$$,
 $$["Ulug'bekning", "Navoiyning", "Ibn Sinoning", "Beruniyning"]$$, 0,
 $$U Ulug'bekning shogirdi va yosh safdoshi edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ali Qushchi 1420-yilda nima qilgan?$$,
 $$["Ulug'bek madrasasida ilk ma'ruzasini o'qigan", "Xitoyga ketgan", "Devon tuzgan", "Rasadxona qurgan"]$$, 0,
 $$1420-yilda madrasada talabalarga ilk bor ma'ruza o'qigan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ulug'bek Ali Qushchini qayerga yuborgan?$$,
 $$["Xitoyga", "Hindistonga", "Misrga", "Rimga"]$$, 0,
 $$Astronomik qo'llanma va taqvimlar topib kelish uchun Xitoyga yuborgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ali Qushchi qaysi asarni yakunlashda katta hissa qo'shgan?$$,
 $$["«Ziji jadidi Ko'ragoniy»", "«Xamsa»", "«Boburnoma»", "«Tib qonunlari»"]$$, 0,
 $$Ulug'bek so'zboshida uning «Zij»dagi xizmatini ta'kidlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ali Qushchini qanday unvon bilan atashgan?$$,
 $$["«O'z zamonasining Ptolemeyi»", "«Ikkinchi muallim»", "«Shayxur-rais»", "«Sharq Rafaeli»"]$$, 0,
 $$Uni «o'z zamonasining Ptolemeyi» deb atashgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ali Qushchi qaysi tillarda asar yozgan?$$,
 $$["Arab va fors", "Faqat turkiy", "Lotin", "Xitoy"]$$, 0,
 $$U arab va fors tillarida ilmiy asarlar yaratgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ali Qushchi rasadxonada kimlar bilan ishlagan?$$,
 $$["Qozizoda Rumiy va Koshiy bilan", "Navoiy bilan", "Bobur bilan", "Behzod bilan"]$$, 0,
 $$U Ulug'bek davrasida Rumiy va Koshiy bilan ishlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ali-qushchi'), NULL,
 $$Ali Qushchi tarixda qanday nom qoldirgan?$$,
 $$["Ulug'bek maktabining davomchisi va elchisi", "Buyuk sarkarda", "Mashhur tabib", "Shoir"]$$, 0,
 $$U Ulug'bek ilmiy maktabining davomchisi va elchisi sanaladi.$$);

-- giyosiddin-koshiy: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$Koshiy Samarqandga qachon chaqirilgan?$$,
 $$["1409", "1417", "1424", "1430"]$$, 1,
 $$Ulug'bek uni 1417-yilda Samarqandga chaqirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$Koshiy qaysi inshoot loyihasining tashabbuskori bo'lgan?$$,
 $$["Samarqand rasadxonasi", "Registon madrasasi", "Bibixonim masjidi", "Oqsaroy"]$$, 0,
 $$U rasadxona loyihasining tashabbuskorlaridan edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$«Miftoh ul-hisob» qanday asar?$$,
 $$["Hisob ilmiga oid", "She'riy devon", "Tarix kitobi", "Lug'at"]$$, 0,
 $$«Miftoh ul-hisob» — «Hisob kaliti» — matematikaga oid asar.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$«Miftoh ul-hisob» qachon yakunlangan?$$,
 $$["1417", "1427", "1437", "1447"]$$, 1,
 $$Asar 1427-yilda yakunlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$Koshiy kimning ustozi sanalgan?$$,
 $$["Ulug'bekning", "Navoiyning", "Boburning", "Behzodning"]$$, 0,
 $$U Ulug'bekning mashhur ustozlaridan biri edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$Koshiy rasadxonada kimlar bilan ishlagan?$$,
 $$["Qozizoda Rumiy va Ali Qushchi bilan", "Ibn Sino bilan", "Beruniy bilan", "Farg'oniy bilan"]$$, 0,
 $$U Rumiy va yosh Ali Qushchi bilan birga ishlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$Koshiy qachon vafot etgan?$$,
 $$["1420", "1430", "1449", "1474"]$$, 1,
 $$U 1430-yilda vafot etgan — maktab uchun katta yo'qotish bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$Koshiy vafoti nimaga ta'sir qilgan?$$,
 $$["Yulduzlar jadvali ishiga", "Saroy qurilishiga", "Savdo yo'llariga", "Harbiy yurishga"]$$, 0,
 $$Uning vafoti yulduzlar jadvalini tuzish ishiga katta yo'qotish bo'ldi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$Koshiy merosining ahamiyati nimada?$$,
 $$["Sharq matematikasi rivojida", "Dengizchilikda", "Me'morlikda", "Tibbiyotda"]$$, 0,
 $$Hisob ilmiga oid ishlari Sharq matematikasi rivojiga xizmat qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy'), NULL,
 $$Koshiy qaysi shaharda ijod qilgan?$$,
 $$["Samarqandda", "Bag'dodda", "Hirotda", "Buxoroda"]$$, 0,
 $$U Ulug'bek chaqiruvi bilan Samarqandda ishlagan.$$);

-- husayn-boyqaro: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Husayn Boyqaro qachon va qayerda tug'ilgan?$$,
 $$["1438-yilda Hirotda", "1441-yilda Hirotda", "1394-yilda Samarqandda", "1336-yilda Keshda"]$$, 0,
 $$U 1438-yilda Hirotda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Husayn Boyqaro qaysi hududni boshqargan?$$,
 $$["Xurosonni", "Movarounnahrni", "Farg'onani", "Xorazmni"]$$, 0,
 $$U 1469-yildan Xuroson taxtini boshqargan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Husayn Boyqaro necha yil hukmronlik qilgan?$$,
 $$["10 yil", "20 yil", "Qariyb 40 yil", "60 yil"]$$, 2,
 $$1469–1506-yillarda — qariyb qirq yil.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Husayn Boyqaroning she'riy taxallusi nima?$$,
 $$["Husayniy", "Foniy", "Navoiy", "Bobur"]$$, 0,
 $$She'rlarini «Husayniy» taxallusi bilan yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Uning devonida asosan nima bor?$$,
 $$["200 ga yaqin g'azal", "Faqat dostonlar", "Faqat ruboiylar", "Tarixiy solnomalar"]$$, 0,
 $$Devoniga 200 ga yaqin g'azal, muxammas va ruboiylar kirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Husayn Boyqaro Navoiyni qaysi lavozimga tayinlagan?$$,
 $$["Muhrdor", "Bosh vazir", "Qozi", "Lashkarboshi"]$$, 0,
 $$Do'stini maxsus yorliq bilan chaqirtirib, muhrdor etib tayinlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Uning davrida Hirot qanday shahar edi?$$,
 $$["Sharqning yirik madaniy markazi", "Kichik qishloq", "Harbiy qal'a", "Faqat savdo bekati"]$$, 0,
 $$Hirot Sharqning yirik madaniy markaziga aylangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Husayn Boyqaro nimalar qurdirgan?$$,
 $$["Madrasa, karvonsaroy, ko'prik va masjidlar", "Faqat saroylar", "Rasadxona", "Portlar"]$$, 0,
 $$U madrasalar, karvonsaroylar, ko'priklar va masjidlar qurdirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Husayn Boyqaro qaysi musavvirga buyurtma bergan?$$,
 $$["Kamoliddin Behzodga", "Mirak Naqqoshga", "Leonardoga", "Rembrandtga"]$$, 0,
 $$Behzodga yangi miniatyuralar yaratishni topshirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'husayn-boyqaro'), NULL,
 $$Husayn Boyqaro qachon vafot etgan?$$,
 $$["1496", "1501", "1506", "1512"]$$, 2,
 $$U 1506-yilda vafot etgan.$$);

-- kamoliddin-behzod: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzod taxminan qachon tug'ilgan?$$,
 $$["1455", "1403", "1494", "1336"]$$, 0,
 $$2020-yilda tavalludining 565 yilligi nishonlangan — demak, taxminan 1455-yil.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzod necha yoshida Hirot miniatyura maktabiga yetakchi bo'lgan?$$,
 $$["18", "23", "30", "40"]$$, 1,
 $$U yigirma uch yoshida maktab yetakchisiga aylangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzodni qanday unvon bilan atashadi?$$,
 $$["«Sharq Rafaeli»", "«Ikkinchi muallim»", "«Zamonasining Ptolemeyi»", "«Sohibqiron»"]$$, 0,
 $$Uni «Sharq Rafaeli» deb atashadi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzod kimlarning portretlarini chizgan?$$,
 $$["Jomiy, Navoiy, Husayn Boyqaro, Shayboniyxon", "Faqat Temurning", "Bobur va Akbarning", "Ulug'bekning"]$$, 0,
 $$U Jomiy, Navoiy, Boyqaro va Shayboniyxon portretlarini yaratgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzod qaysi janrning ustasi sanaladi?$$,
 $$["Portret janrining", "Manzara", "Natyurmort", "Karikatura"]$$, 0,
 $$U Sharq miniatyurasida portret janrining ustasi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzodga miniatyuralar yaratishni kim topshirgan?$$,
 $$["Husayn Boyqaro", "Amir Temur", "Bobur", "Ulug'bek"]$$, 0,
 $$Hirot hukmdori Husayn Boyqaro buyurtma bergan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$«Rassom portreti» qachon yaratilgan?$$,
 $$["1467", "1487", "1503", "1535"]$$, 1,
 $$Asar 1487-yilda yaratilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzodning qaysi asari G'arbda ham o'rganilgan?$$,
 $$["«Bag'dodlik darvesh»", "«Mona Liza»", "«Shum bola»", "«Padarkush»"]$$, 0,
 $$«Bag'dodlik darvesh» portreti G'arb olimlari tomonidan o'rganilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzod ijodi nimani boyitgan deb e'tirof etiladi?$$,
 $$["Sharq va G'arb san'ati xazinalarini", "Faqat harbiy ilmni", "Dengizchilikni", "Tibbiyotni"]$$, 0,
 $$Ishlari ikki tamaddun xazinasini boyitgan deb baholanadi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod'), NULL,
 $$Behzod qaysi shahar maktabida yetishgan?$$,
 $$["Hirotda", "Samarqandda", "Buxoroda", "Toshkentda"]$$, 0,
 $$U Hirot miniatyura maktabining yetakchisi bo'lgan.$$);

-- saroymulkxonim: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Saroymulkxonim kimning qizi edi?$$,
 $$["Chig'atoy xoni Qozonxonning", "Amir Temurning", "Shohruxning", "Ulug'bekning"]$$, 0,
 $$U Qozonxonning qizi bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Saroymulkxonim qachon tug'ilgan?$$,
 $$["1341", "1379", "1394", "1336"]$$, 0,
 $$U 1341-yilda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Temur unga qachon uylangan?$$,
 $$["1360", "1370", "1380", "1399"]$$, 1,
 $$Amir Temur unga 1370-yilda uylangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Temur bu nikoh orqali qanday unvon olgan?$$,
 $$["«Ko'ragon» — xon kuyovi", "«Sohibqiron»", "«Sulton»", "«Amirul-umaro»"]$$, 0,
 $$Xon qiziga uylanib «Ko'ragon» unvonini olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Nega u «Bibixonim» deb atalgan?$$,
 $$["Katta xonim sanalgani uchun", "Shahri nomidan", "Otasi ismidan", "Kitobi nomidan"]$$, 0,
 $$Aql-idroki tufayli katta xonim sanalib, el ichida Bibixonim deyilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Saroymulkxonim madrasani nima evaziga qurdirgan?$$,
 $$["Otasidan qolgan javohirlar evaziga", "Soliqlar hisobiga", "Sovg'alar evaziga", "Meros yerlar evaziga"]$$, 0,
 $$Otasi Qozonxondan qolgan javohirlar evaziga madrasa qurdirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Temur unga kimlarning tarbiyasini ishongan?$$,
 $$["Nabiralari, jumladan Ulug'bekning", "Vazirlarning", "Elchilarning", "Lashkarning"]$$, 0,
 $$Ulug'bek, Muhammad Sulton va Xalil Sulton tarbiyasi unga topshirilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Bibixonim jome masjidi qachon qurilgan?$$,
 $$["1370–1375", "1399–1404", "1417–1420", "1425–1429"]$$, 1,
 $$Masjid 1399–1404-yillarda uning sharafiga qurilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Bibixonim masjidi qanday obida sanaladi?$$,
 $$["O'rta Osiyodagi eng yiriklaridan", "Eng kichik masjid", "Harbiy qal'a", "Rasadxona"]$$, 0,
 $$U O'rta Osiyodagi eng yirik obidalardan biri.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'saroymulkxonim'), NULL,
 $$Saroymulkxonim qachon vafot etgan?$$,
 $$["1405", "1408", "1417", "1449"]$$, 1,
 $$Ibn Arabshoh rivoyatiga ko'ra 1408-yilda vafot etgan.$$);

-- gavharshod-begim: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Gavharshod begim qachon tug'ilgan?$$,
 $$["1341", "1379", "1394", "1405"]$$, 1,
 $$U 1379-yilda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Gavharshod kimga turmushga chiqqan?$$,
 $$["Shohrux Mirzoga", "Amir Temurga", "Ulug'bekka", "Husayn Boyqaroga"]$$, 0,
 $$1393-yilda Temurning o'g'li Shohrux Mirzoga turmushga chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Gavharshodning mashhur o'g'li kim?$$,
 $$["Ulug'bek Mirzo", "Bobur", "Xalil Sulton", "Muhammad Sulton"]$$, 0,
 $$Uning o'g'illaridan biri — astronom hukmdor Ulug'bek.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Yana qaysi o'g'li san'at homiysi bo'lgan?$$,
 $$["Boysung'ur Mirzo", "Jahongir", "Umarshayx", "Mironshoh"]$$, 0,
 $$Boysung'ur Mirzo san'at homiysi sifatida tanilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Saltanat ishlarini amalda kim boshqargan?$$,
 $$["Gavharshod begim", "Faqat Shohrux", "Vazirlar", "Qozilar"]$$, 0,
 $$Shohrux ibodatga berilganda davlat ishlarini Gavharshod boshqargan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Gavharshod qanday ishlarda qatnashgan?$$,
 $$["Hokim va lashkarboshilarni tayinlashda", "Faqat saroy bezashda", "Savdoda", "Dehqonchilikda"]$$, 0,
 $$U amaldorlarni tayinlash, mukofot va jazo belgilashda qatnashgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Gavharshod Hirotda nima qurdirgan?$$,
 $$["Ikkita yirik madrasa", "Rasadxona", "Qal'a", "Port"]$$, 0,
 $$U Hirotda ikkita yirik madrasa qurdirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Yana qanday binolar qurdirgan?$$,
 $$["Masjid, xonaqoh, shifoxona, karvonsaroy", "Faqat saroylar", "Zavodlar", "Ko'priklar faqat"]$$, 0,
 $$Masjidlar, xonaqohlar, shifoxonalar va karvonsaroylar qurdirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Gavharshod qachon vafot etgan?$$,
 $$["1449", "1457", "1447", "1469"]$$, 1,
 $$U 1457-yilda, taxminan 80 yoshida qatl etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'gavharshod-begim'), NULL,
 $$Gavharshod qayerga dafn qilingan?$$,
 $$["Boysung'ur maqbarasiga", "Go'ri Amirga", "Shohizindaga", "Registonga"]$$, 0,
 $$O'zi qurdirgan madrasa yonidagi Boysung'ur maqbarasiga dafn etilgan.$$);
