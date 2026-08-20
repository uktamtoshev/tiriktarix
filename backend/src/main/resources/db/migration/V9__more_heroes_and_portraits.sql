-- Yangi ajdodlar va haqiqiy portretlar.
--
-- PORTRET HAQIDA MUHIM QOIDA.
-- Amir Temur, Ulug'bek, Navoiy kabi ajdodlarning FOTOSURATI yo'q va bo'lishi ham
-- mumkin emas: fotografiya ular vafotidan 300–600 yil keyin ixtiro qilingan.
-- Shu sababli portret turi alohida saqlanadi va interfeysda ochiq yoziladi:
--   PHOTO     — haqiqiy fotosurat (faqat XX asr shaxslari uchun)
--   MINIATURE — davr miniaturasi yoki qo'lyozma tasviri (tarixiy manba)
--   ARTWORK   — rassomning keyingi tasavvuri (hozircha ishlatilmaydi)
-- Rasm yo'q bo'lsa (masalan, al-Xorazmiy) — hech narsa o'ylab topilmaydi,
-- interfeys medalyon belgisini ko'rsatadi.
--
-- Barcha rasmlar Wikimedia Commons'dan, faqat public domain litsenziyasi bilan.

ALTER TABLE heroes ADD COLUMN portrait_url         TEXT;
ALTER TABLE heroes ADD COLUMN portrait_kind        TEXT CHECK (portrait_kind IN ('PHOTO', 'MINIATURE', 'ARTWORK'));
ALTER TABLE heroes ADD COLUMN portrait_caption_uz  TEXT;
ALTER TABLE heroes ADD COLUMN portrait_source      TEXT;

-- Portret bor bo'lsa, uning turi va manbasi ham bo'lishi shart
ALTER TABLE heroes ADD CONSTRAINT heroes_portrait_needs_meta
    CHECK (portrait_url IS NULL OR (portrait_kind IS NOT NULL AND portrait_source IS NOT NULL));

-- ===================== MAVJUD AJDODLAR UCHUN PORTRETLAR =====================

UPDATE heroes SET
    portrait_url = '/portretlar/amir-temur.jpg',
    portrait_kind = 'MINIATURE',
    portrait_caption_uz = 'Ma''lum bo''lgan eng qadimgi tasvir, 1405–1409-yillar, Samarqand',
    portrait_source = 'Wikimedia Commons, public domain (Timurid genealogy, TSMK Bagdad 411)'
WHERE slug = 'amir-temur';

UPDATE heroes SET
    portrait_url = '/portretlar/mirzo-ulugbek.jpg',
    portrait_kind = 'MINIATURE',
    portrait_caption_uz = 'Davr miniaturasi, taxminan 1425–1450-yillar',
    portrait_source = 'Wikimedia Commons, public domain'
WHERE slug = 'mirzo-ulugbek';

UPDATE heroes SET
    portrait_url = '/portretlar/alisher-navoiy.jpg',
    portrait_kind = 'MINIATURE',
    portrait_caption_uz = 'XV asr miniaturasi',
    portrait_source = 'Wikimedia Commons, public domain'
WHERE slug = 'alisher-navoiy';

-- ============================== YANGI AJDODLAR ==============================

INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords, portrait_url, portrait_kind,
                    portrait_caption_uz, portrait_source) VALUES

('al-xorazmiy', $$Muhammad al-Xorazmiy$$, $$Algebra otasi$$, 783, 850,
 (SELECT id FROM eras WHERE code = 'arab'),
 $$Xorazmda tug'ilgan matematik va astronom. «Al-jabr» asari algebra faniga, ismi esa «algoritm» so'ziga asos bo'lgan.$$,
 $$Assalomu alaykum! Men Muhammad al-Xorazmiyman. Mendan raqamlar, algebra va algoritm haqida so'ra.$$,
 $$🔢$$, $$["xorazmiy", "algebra", "algoritm", "matematik", "raqam"]$$,
 NULL, NULL, NULL, NULL),

('abu-rayhon-beruniy', $$Abu Rayhon Beruniy$$, $$Qomusiy olim$$, 973, 1048,
 (SELECT id FROM eras WHERE code = 'arab'),
 $$Xorazmning Kot shahrida tug'ilgan olim. Astronomiya, geografiya, tarix va mineralogiyaga oid 150 dan ortiq asar yozgan.$$,
 $$Assalomu alaykum! Men Abu Rayhon Beruniyman. Yulduzlar, Yer o'lchovi va Hindiston haqida so'ra.$$,
 $$🌍$$, $$["beruniy", "abu rayhon", "geograf", "astronom", "hindiston"]$$,
 NULL, NULL, NULL, NULL),

('ibn-sino', $$Abu Ali ibn Sino$$, $$Tabiblar sultoni$$, 980, 1037,
 (SELECT id FROM eras WHERE code = 'arab'),
 $$Buxoro yaqinidagi Afshona qishlog'ida tug'ilgan tabib va faylasuf. «Tib qonunlari» asari Yevropada asrlar davomida darslik bo'lgan.$$,
 $$Assalomu alaykum! Men Abu Ali ibn Sinoman. Tabobat, «Tib qonunlari» va falsafa haqida so'ra.$$,
 $$⚕️$$, $$["ibn sino", "avitsenna", "tabib", "tib qonunlari", "shifo"]$$,
 NULL, NULL, NULL, NULL),

('imom-al-buxoriy', $$Imom al-Buxoriy$$, $$Muhaddislar imomi$$, 810, 870,
 (SELECT id FROM eras WHERE code = 'arab'),
 $$Buxoroda tug'ilgan muhaddis. «Al-Jome' as-Sahih» to'plami hadis ilmining eng nufuzli manbalaridan biri hisoblanadi.$$,
 $$Assalomu alaykum! Men Muhammad al-Buxoriyman. Hadis ilmi va safarlarim haqida so'ra.$$,
 $$📗$$, $$["buxoriy", "hadis", "muhaddis", "sahih", "imom"]$$,
 NULL, NULL, NULL, NULL),

('jaloliddin-manguberdi', $$Jaloliddin Manguberdi$$, $$So'nggi xorazmshoh$$, 1198, 1231,
 NULL,
 $$Xorazmshohlar davlatining so'nggi hukmdori. Mo'g'ul bosqiniga qarshi o'n yildan ortiq kurash olib borgan.$$,
 $$Assalomu alaykum! Men Jaloliddin Manguberdiman. Mo'g'ullarga qarshi kurashim haqida so'ra.$$,
 $$🛡️$$, $$["jaloliddin", "manguberdi", "xorazmshoh", "mogul", "sind"]$$,
 NULL, NULL, NULL, NULL),

('bobur', $$Zahiriddin Muhammad Bobur$$, $$Shoir va sarkarda$$, 1483, 1530,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Andijonda tug'ilgan temuriyzoda. «Boburnoma» asari muallifi va Hindistondagi boburiylar davlatiga asos solgan hukmdor.$$,
 $$Assalomu alaykum! Men Zahiriddin Muhammad Boburman. Andijon, «Boburnoma» va Hindiston haqida so'ra.$$,
 $$📖$$, $$["bobur", "boburnoma", "andijon", "hindiston", "temuriy"]$$,
 '/portretlar/bobur.jpg', 'MINIATURE',
 $$Miniatura, 1598-yil — o'xshashligi bilan e'tirof etilgan tasvir$$,
 $$Wikimedia Commons, public domain$$),

('abdulla-qodiriy', $$Abdulla Qodiriy$$, $$O'zbek romanchiligi asoschisi$$, 1894, 1938,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Toshkentda tug'ilgan yozuvchi. «O'tkan kunlar» — o'zbek adabiyotidagi ilk roman. 1938-yilda qatag'on qurboni bo'lgan.$$,
 $$Assalomu alaykum! Men Abdulla Qodiriyman. «O'tkan kunlar», jurnalistikam va davrim haqida so'ra.$$,
 $$✒️$$, $$["qodiriy", "otkan kunlar", "roman", "yozuvchi", "julqunboy"]$$,
 '/portretlar/abdulla-qodiriy.jpg', 'PHOTO',
 $$Fotosurat, 1938-yilgacha$$,
 $$Wikimedia Commons, public domain$$);

-- ============================== FAKT KARTOCHKALARI ==============================
-- Kartochkalar birinchi shaxsda yoziladi — ajdod shu matn bilan javob beradi.

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source) VALUES

-- ---- al-Xorazmiy
((SELECT id FROM heroes WHERE slug = 'al-xorazmiy'), $$Vatanim$$,
 $$Men Xorazm o'lkasida tug'ilganman — shuning uchun meni al-Xorazmiy deb ataydilar. Umrimning katta qismi Bag'doddagi «Bayt ul-hikma» — Donishmandlik uyida o'tdi.$$,
 $$["qayerlik", "xorazm", "tugil", "bagdod", "bayt ul hikma"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'al-xorazmiy'), $$Algebra$$,
 $$«Al-kitob al-muxtasar fi hisob al-jabr va-l-muqobala» asarimda tenglamalarni yechish qoidalarini bayon qildim. Asar nomidagi «al-jabr» so'zidan «algebra» atamasi kelib chiqqan.$$,
 $$["algebra", "al jabr", "tenglama", "kitob", "asar"]$$, $$UNESCO, «History of Civilizations of Central Asia»$$),
((SELECT id FROM heroes WHERE slug = 'al-xorazmiy'), $$Algoritm so'zi$$,
 $$Mening ismim lotin tiliga «Algoritmi» shaklida o'girilgan. Shu sababli hisoblash qoidalari ketma-ketligi bugun «algoritm» deb ataladi.$$,
 $$["algoritm", "nomi", "ism", "lotin"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'al-xorazmiy'), $$Hind raqamlari$$,
 $$Men hind raqamlari va o'nlik sanoq tizimini, jumladan nolni tushuntirib berdim. Shu asar orqali bu raqamlar Yevropaga tarqaldi va bugun ular «arab raqamlari» deb yuritiladi.$$,
 $$["raqam", "nol", "onlik", "sanoq", "hind"]$$, $$UNESCO, «History of Civilizations of Central Asia»$$),
((SELECT id FROM heroes WHERE slug = 'al-xorazmiy'), $$Geografiya$$,
 $$«Kitob surat al-arz» asarimda o'sha davrda ma'lum bo'lgan shaharlar va daryolarning koordinatalarini keltirdim.$$,
 $$["geografiya", "xarita", "yer", "surat al arz"]$$, $$O'zbekiston milliy ensiklopediyasi$$),

-- ---- Beruniy
((SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy'), $$Tug'ilishim$$,
 $$Men 973-yilda Xorazmning Kot shahri yaqinida tug'ilganman.$$,
 $$["tugil", "qayerlik", "kot", "xorazm", "yil"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy'), $$Hindiston haqidagi asar$$,
 $$«Hindiston» asarimda bu mamlakat xalqining dini, urf-odatlari va fanlarini o'zim ko'rgan holda tasvirlaganman. Buning uchun sanskrit tilini o'rgandim.$$,
 $$["hindiston", "asar", "sanskrit", "kitob"]$$, $$UNESCO, «History of Civilizations of Central Asia»$$),
((SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy'), $$Yer o'lchovi$$,
 $$Men tog' balandligidan ufq burchagini o'lchab, Yer sharining radiusini hisoblab chiqdim. Natijam hozirgi qiymatga juda yaqin bo'lgan.$$,
 $$["yer", "radius", "olchov", "shar", "hisob"]$$, $$UNESCO, «History of Civilizations of Central Asia»$$),
((SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy'), $$Asarlarim soni$$,
 $$Umrim davomida astronomiya, geografiya, tarix, mineralogiya va tibbiyotga oid 150 dan ortiq asar yozganman.$$,
 $$["asar", "kitob", "necha", "soni", "yozgan"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy'), $$«Osor ul-boqiya»$$,
 $$Bu asarimda turli xalqlarning taqvimlari, bayramlari va yil hisoblarini solishtirib chiqdim.$$,
 $$["osor ul boqiya", "taqvim", "bayram", "yil hisobi"]$$, $$O'zbekiston milliy ensiklopediyasi$$),

-- ---- Ibn Sino
((SELECT id FROM heroes WHERE slug = 'ibn-sino'), $$Tug'ilishim$$,
 $$Men 980-yilda Buxoro yaqinidagi Afshona qishlog'ida tug'ilganman.$$,
 $$["tugil", "qayerlik", "afshona", "buxoro", "yil"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'ibn-sino'), $$«Tib qonunlari»$$,
 $$Besh kitobdan iborat «Al-Qonun fit-tib» asarim kasalliklar, dorilar va davolash usullarini tartibga soldi. U Yevropa universitetlarida asrlar davomida darslik bo'lib xizmat qilgan.$$,
 $$["tib qonunlari", "qonun", "tibbiyot", "kitob", "darslik"]$$, $$UNESCO, «History of Civilizations of Central Asia»$$),
((SELECT id FROM heroes WHERE slug = 'ibn-sino'), $$Yoshligimdagi ilm$$,
 $$O'n olti yoshimda tabiblik bilan shug'ullana boshladim va Buxoro amirining kutubxonasidan foydalanish huquqini qo'lga kiritdim.$$,
 $$["yosh", "talim", "kutubxona", "organ", "bolalik"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'ibn-sino'), $$«Kitob ash-Shifo»$$,
 $$Bu asarim tibbiyot emas, balki falsafa, mantiq va tabiat fanlari qomusidir.$$,
 $$["shifo", "falsafa", "mantiq", "qomus"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'ibn-sino'), $$Yuqumli kasalliklar$$,
 $$Men ba'zi kasalliklar suv va havo orqali yuqishini yozganman va bemorlarni ajratib qo'yishni tavsiya qilganman.$$,
 $$["kasallik", "yuqumli", "suv", "havo", "karantin"]$$, $$UNESCO, «History of Civilizations of Central Asia»$$),

-- ---- Imom al-Buxoriy
((SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy'), $$Tug'ilishim$$,
 $$Men 810-yilda Buxoroda tug'ilganman. Otamdan yosh qolganman, ilmga onam yo'l ochgan.$$,
 $$["tugil", "qayerlik", "buxoro", "ota", "ona"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy'), $$«Al-Jome' as-Sahih»$$,
 $$Ko'p yillik mehnatim natijasi — ishonchli hadislar to'plami. Har bir hadisni rivoyat qilganlar zanjiri bo'yicha tekshirib chiqqanman.$$,
 $$["sahih", "hadis", "toplam", "kitob", "asar"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy'), $$Safarlarim$$,
 $$Hadis to'plash uchun Makka, Madina, Bag'dod, Damashq va Misrga safar qildim.$$,
 $$["safar", "makka", "madina", "bagdod", "sayohat"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy'), $$Xotira kuchi$$,
 $$Manbalarda yozilishicha, men o'n olti yoshimda bir necha ming hadisni yoddan bilganman.$$,
 $$["xotira", "yod", "yosh", "necha"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy'), $$Qabrim$$,
 $$Umrimning oxirini Samarqand yaqinidagi Xartang qishlog'ida o'tkazdim, qabrim ham shu yerda.$$,
 $$["qabr", "vafot", "xartang", "samarqand", "olim"]$$, $$O'zbekiston milliy ensiklopediyasi$$),

-- ---- Jaloliddin Manguberdi
((SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi'), $$Kimman$$,
 $$Men Xorazmshoh Alouddin Muhammadning o'g'liman. Otam vafotidan so'ng mo'g'ul bosqiniga qarshi kurashni davom ettirdim.$$,
 $$["kim", "ota", "xorazmshoh", "muhammad"]$$, $$O'zbekiston tarixi, 6-sinf darsligi$$),
((SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi'), $$Parvon jangi$$,
 $$1221-yilda Parvon yonida mo'g'ul qo'shinini yengdim — bu Chingizxon lashkariga qarshi erishilgan sanoqli g'alabalardan biri.$$,
 $$["parvon", "jang", "galaba", "mogul", "1221"]$$, $$O'zbekiston tarixi, 6-sinf darsligi$$),
((SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi'), $$Sind daryosi$$,
 $$Sind (Hind) daryosi bo'yidagi jangda qurshovda qoldim va otim bilan daryoga sakrab, qarshi qirg'oqqa o'tdim.$$,
 $$["sind", "hind daryo", "sakra", "qutul", "jang"]$$, $$O'zbekiston tarixi, 6-sinf darsligi$$),
((SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi'), $$Kurashim qancha davom etdi$$,
 $$Mo'g'ullarga qarshi kurashim o'n yildan ortiq davom etdi — 1220-yillardan 1231-yilgacha.$$,
 $$["kurash", "necha yil", "davom", "qarshilik"]$$, $$O'zbekiston milliy ensiklopediyasi$$),

-- ---- Bobur
((SELECT id FROM heroes WHERE slug = 'bobur'), $$Tug'ilishim$$,
 $$Men 1483-yil 14-fevralda Andijonda tug'ilganman. Otam — Farg'ona hokimi Umarshayx Mirzo, men Amir Temurning avlodidanman.$$,
 $$["tugil", "andijon", "fargona", "ota", "qayerlik"]$$, $$«Boburnoma»; O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'bobur'), $$«Boburnoma»$$,
 $$Hayotim, ko'rgan shaharlarim, o'simliklar va odamlar haqida o'z tilimda yozgan kitobim. U jahon adabiyotidagi ilk memuarlardan biri hisoblanadi.$$,
 $$["boburnoma", "kitob", "asar", "xotira", "yozgan"]$$, $$«Boburnoma»$$),
((SELECT id FROM heroes WHERE slug = 'bobur'), $$Hindistonga yurish$$,
 $$1526-yilda Panipat jangida g'alaba qozondim va Hindistonda yangi davlatga asos soldim. Uni keyinchalik boburiylar saltanati deb atashgan.$$,
 $$["hindiston", "panipat", "1526", "saltanat", "yurish"]$$, $$O'zbekiston tarixi, 7-sinf darsligi$$),
((SELECT id FROM heroes WHERE slug = 'bobur'), $$Vatan sog'inchi$$,
 $$Umrimning katta qismi vatandan uzoqda o'tdi. Andijon va Farg'ona sog'inchi she'rlarimda ko'p uchraydi.$$,
 $$["vatan", "sogin", "sher", "andijon", "gurbat"]$$, $$«Boburnoma»$$),
((SELECT id FROM heroes WHERE slug = 'bobur'), $$Farg'ona taxti$$,
 $$Otam vafot etganda men 12 yoshda edim va Farg'ona taxtiga o'tirdim.$$,
 $$["taxt", "yosh", "fargona", "hokim", "12"]$$, $$«Boburnoma»$$),

-- ---- Abdulla Qodiriy
((SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy'), $$Tug'ilishim$$,
 $$Men 1894-yilda Toshkentda, bog'bon oilasida tug'ilganman.$$,
 $$["tugil", "toshkent", "oila", "qayerlik", "yil"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy'), $$«O'tkan kunlar»$$,
 $$«O'tkan kunlar» — o'zbek adabiyotidagi ilk roman. Unda xonliklar davridagi hayot va Otabek bilan Kumushning qismati tasvirlangan.$$,
 $$["otkan kunlar", "roman", "otabek", "kumush", "asar"]$$, $$O'zbekiston tarixi, 9-sinf darsligi$$),
((SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy'), $$«Mehrobdan chayon»$$,
 $$Ikkinchi romanim Xudoyorxon saroyidagi voqealar asosida yozilgan.$$,
 $$["mehrobdan chayon", "roman", "xudoyorxon", "ikkinchi"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy'), $$Julqunboy$$,
 $$Hajviy asarlarimni «Julqunboy» taxallusi bilan e'lon qilganman.$$,
 $$["julqunboy", "taxallus", "hajv", "kulgi"]$$, $$O'zbekiston milliy ensiklopediyasi$$),
((SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy'), $$Qatag'on$$,
 $$1938-yilda qatag'on qurboni bo'lganman. Keyinchalik nomim oqlangan va asarlarim xalqqa qaytarilgan.$$,
 $$["qatagon", "1938", "vafot", "oqla", "qamoq"]$$, $$O'zbekiston tarixi, 9-sinf darsligi$$);

-- ============================== SINOV SAVOLLARI ==============================

INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES

((SELECT id FROM heroes WHERE slug = 'al-xorazmiy'), NULL,
 $$«Algoritm» so'zi qayerdan kelib chiqqan?$$,
 $$["Yunoncha «arifmos» so'zidan", "Al-Xorazmiy ismining lotincha shaklidan", "Arabcha «al-jabr» so'zidan", "Lotincha «algo» so'zidan"]$$, 1,
 $$Al-Xorazmiy ismi lotin tilida «Algoritmi» deb yozilgan, shundan «algoritm» atamasi kelib chiqqan.$$),
((SELECT id FROM heroes WHERE slug = 'al-xorazmiy'), NULL,
 $$Al-Xorazmiy Bag'dodda qaysi ilmiy markazda ishlagan?$$,
 $$["Nizomiya madrasasi", "Bayt ul-hikma (Donishmandlik uyi)", "Samarqand rasadxonasi", "Iskandariya kutubxonasi"]$$, 1,
 $$Al-Xorazmiy Bag'doddagi «Bayt ul-hikma» — Donishmandlik uyida faoliyat yuritgan.$$),
((SELECT id FROM heroes WHERE slug = 'al-xorazmiy'), NULL,
 $$«Algebra» atamasi qaysi so'zdan olingan?$$,
 $$["Al-jabr", "Al-hisob", "Al-muqobala", "Al-kitob"]$$, 0,
 $$Asar nomidagi «al-jabr» so'zi Yevropa tillarida «algebra» shaklini olgan.$$),

((SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy'), NULL,
 $$Beruniy qaysi mamlakat haqida alohida yirik asar yozgan?$$,
 $$["Xitoy", "Hindiston", "Misr", "Rum"]$$, 1,
 $$Beruniyning «Hindiston» asari bu mamlakat dini, urf-odatlari va fanlariga bag'ishlangan.$$),
((SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy'), NULL,
 $$Beruniy nimani o'lchashda mashhur usul qo'llagan?$$,
 $$["Oyning massasini", "Yer sharining radiusini", "Quyoshgacha bo'lgan masofani", "Havo bosimini"]$$, 1,
 $$Beruniy tog' balandligidan ufq burchagini o'lchab, Yer radiusini hisoblab chiqqan.$$),
((SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy'), NULL,
 $$Beruniy qayerda tug'ilgan?$$,
 $$["Buxoroda", "Xorazmning Kot shahri yaqinida", "Samarqandda", "Andijonda"]$$, 1,
 $$Beruniy 973-yilda Xorazmning Kot shahri yaqinida tug'ilgan.$$),

((SELECT id FROM heroes WHERE slug = 'ibn-sino'), NULL,
 $$Ibn Sinoning tibbiyotga oid asosiy asari qanday nomlanadi?$$,
 $$["Kitob ash-Shifo", "Al-Qonun fit-tib (Tib qonunlari)", "Osor ul-boqiya", "Al-Jome' as-Sahih"]$$, 1,
 $$«Al-Qonun fit-tib» — besh kitobdan iborat tibbiyot qomusi.$$),
((SELECT id FROM heroes WHERE slug = 'ibn-sino'), NULL,
 $$Ibn Sino qayerda tug'ilgan?$$,
 $$["Buxoro yaqinidagi Afshonada", "Xorazmda", "Balxda", "Termizda"]$$, 0,
 $$Ibn Sino 980-yilda Buxoro yaqinidagi Afshona qishlog'ida tug'ilgan.$$),
((SELECT id FROM heroes WHERE slug = 'ibn-sino'), NULL,
 $$«Kitob ash-Shifo» qaysi sohaga bag'ishlangan?$$,
 $$["Faqat tibbiyotga", "Falsafa, mantiq va tabiat fanlariga", "Astronomiyaga", "Tarixga"]$$, 1,
 $$Nomiga qaramay, «Shifo» — falsafa va tabiat fanlari qomusi.$$),

((SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy'), NULL,
 $$Imom al-Buxoriyning mashhur to'plami qanday nomlanadi?$$,
 $$["Al-Jome' as-Sahih", "Tib qonunlari", "Boburnoma", "Hindiston"]$$, 0,
 $$«Al-Jome' as-Sahih» — ishonchli hadislar to'plami.$$),
((SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy'), NULL,
 $$Imom al-Buxoriyning qabri qayerda?$$,
 $$["Buxoroda", "Samarqand yaqinidagi Xartangda", "Madinada", "Bag'dodda"]$$, 1,
 $$Imom al-Buxoriy Samarqand yaqinidagi Xartang qishlog'ida dafn etilgan.$$),

((SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi'), NULL,
 $$Jaloliddin Manguberdi kimga qarshi kurashgan?$$,
 $$["Iskandar Zulqarnaynga", "Mo'g'ul bosqinchilariga", "Arab xalifaligiga", "Rus imperiyasiga"]$$, 1,
 $$Jaloliddin Manguberdi mo'g'ul bosqiniga qarshi o'n yildan ortiq kurash olib borgan.$$),
((SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi'), NULL,
 $$Qaysi daryo bo'yidagi jang Jaloliddin nomi bilan bog'liq?$$,
 $$["Amudaryo", "Sirdaryo", "Sind (Hind) daryosi", "Zarafshon"]$$, 2,
 $$Sind daryosi bo'yidagi jangdan so'ng u oti bilan daryoga sakrab qutulgan.$$),

((SELECT id FROM heroes WHERE slug = 'bobur'), NULL,
 $$Bobur qayerda tug'ilgan?$$,
 $$["Samarqandda", "Andijonda", "Toshkentda", "Kobulda"]$$, 1,
 $$Bobur 1483-yilda Andijonda tug'ilgan.$$),
((SELECT id FROM heroes WHERE slug = 'bobur'), NULL,
 $$«Boburnoma» qanday asar?$$,
 $$["She'riy doston", "Muallifning o'z hayoti haqidagi xotiralari", "Tarixiy roman", "Tibbiyot qo'llanmasi"]$$, 1,
 $$«Boburnoma» — jahon adabiyotidagi ilk memuarlardan biri.$$),
((SELECT id FROM heroes WHERE slug = 'bobur'), NULL,
 $$1526-yilgi Panipat jangi nima bilan yakunlandi?$$,
 $$["Bobur mag'lub bo'ldi", "Bobur g'alaba qozonib, Hindistonda davlatga asos soldi", "Jang natijasiz tugadi", "Sulh tuzildi"]$$, 1,
 $$Panipat jangidagi g'alabadan so'ng Bobur Hindistonda yangi saltanatga asos solgan.$$),

((SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy'), NULL,
 $$O'zbek adabiyotidagi ilk roman qaysi?$$,
 $$["Mehrobdan chayon", "O'tkan kunlar", "Boburnoma", "Xamsa"]$$, 1,
 $$«O'tkan kunlar» — o'zbek adabiyotidagi birinchi roman.$$),
((SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy'), NULL,
 $$Abdulla Qodiriy qanday taxallus bilan hajviy asarlar yozgan?$$,
 $$["Julqunboy", "Cho'lpon", "Fitrat", "Oybek"]$$, 0,
 $$Hajviy asarlarini «Julqunboy» taxallusi bilan e'lon qilgan.$$),
((SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy'), NULL,
 $$«O'tkan kunlar» romanining bosh qahramonlari kimlar?$$,
 $$["Otabek va Kumush", "Bobur va Xonzoda", "Tohir va Zuhra", "Farhod va Shirin"]$$, 0,
 $$Roman Otabek bilan Kumushning qismati atrofida quriladi.$$);
