-- Suhbat uchun KO'PROQ FAKT KARTOCHKASI: har bir ajdodga 7–10 tadan yangi karta.
--
-- NEGA. Ajdod bolaga faqat kartochkalar bilan javob beradi (M1 qoidasi): pul
-- kichik bo'lsa, u tez-tez «Bu haqda tarix sukut saqlaydi» deb rad javobini
-- beradi va suhbat qisqa bo'lib qoladi. Kartochka qancha ko'p bo'lsa, bola
-- shuncha ko'p savol bera oladi.
--
-- QOIDALAR (V38–V46 dagi kabi):
--   • faqat ensiklopedik, keng ma'lum faktlar — taxmin va to'qima yo'q;
--   • rivoyat bo'lsa, matnning o'zida «rivoyatlarga ko'ra» deb aytiladi;
--   • matn birinchi shaxsda — ajdod bolaga o'zi gapiradi;
--   • har kartada manba ko'rsatiladi; qon va shafqatsizlik yo'q (bolalar
--     mahsuloti), o'lim haqida faqat xolis ohangda.
--
-- verified = TRUE: kartalar tekshirilgan manbalarga tayanadi va suhbatda
-- darhol ishlaydi. Metodist-tarixchi ularni panel orqali qayta ko'rib chiqishi
-- mumkin — ishonchlilik konturi shu bilan yopiladi.

-- ===================== h_aa.sql =====================

-- abdulla-avloniy | Taxalluslarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Taxalluslarim$$, $$Men maqola va she'rlarimni «Hijron», «Nabil», «Indamas», «Shuhrat» kabi taxalluslar bilan ham e'lon qilganman.$$,
       $$["taxallus", "hijron", "indamas", "shuhrat", "imzo"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$,
       TRUE,
       $$Abdulla Avloniy qanday taxalluslar bilan ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';

-- abdulla-avloniy | «Birinchi muallim»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Birinchi muallim»$$, $$1912-yilda yangi usul maktablari uchun «Birinchi muallim» alifbo kitobini yozganman. Uning davomi sifatida «Ikkinchi muallim» o'qish kitobim ham chiqqan.$$,
       $$["birinchi muallim", "ikkinchi muallim", "alifbo", "darslik", "maktab"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$,
       TRUE,
       $$Abdulla Avloniy yangi usul maktablari uchun qanday alifbo kitobini yozgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';

-- abdulla-avloniy | She'riy to'plamim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$She'riy to'plamim$$, $$She'rlarimni «Adabiyot yoxud milliy she'rlar» nomli to'plamda chop etganman. U 1909-yildan boshlab bir necha juz bo'lib nashr qilingan.$$,
       $$["adabiyot", "milliy she'rlar", "to'plam", "she'r", "juz"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$,
       TRUE,
       $$Abdulla Avloniyning she'riy to'plami qanday nomlangan?$$
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';

-- abdulla-avloniy | Komediyam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Komediyam$$, $$1914-yilda «Advokatlik osonmi?» nomli komediya yozganman. Unda kulgi orqali zamonamdagi illatlarni ko'rsatganman.$$,
       $$["advokatlik osonmi", "komediya", "pyesa", "sahna"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$,
       TRUE,
       $$Abdulla Avloniy qaysi komediyani yozgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';

-- abdulla-avloniy | Ilk spektakl
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilk spektakl$$, $$1914-yilda «Turon» truppamiz Toshkentda Mahmudxo'ja Behbudiyning «Padarkush» dramasini sahnaga qo'ygan. Bu shahrimiz madaniy hayotida katta voqea bo'lgan.$$,
       $$["padarkush", "turon", "spektakl", "behbudiy", "toshkent", "1914"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Avloniy» maqolasi$$,
       TRUE,
       $$Abdulla Avloniyning «Turon» truppasi 1914-yilda Toshkentda qaysi dramani sahnaga qo'ygan?$$
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';

-- abdulla-avloniy | Professorlik
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Professorlik$$, $$Keyinchalik oliy o'quv yurtlarida bo'lajak o'qituvchilarga dars berganman va professor unvoniga sazovor bo'lganman.$$,
       $$["professor", "universitet", "dars", "pedagog"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$,
       TRUE,
       $$Abdulla Avloniy qanday ilmiy unvonga sazovor bo'lgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';

-- abdulla-avloniy | Xotiram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram$$, $$Bugun yurtimizda ko'chalar va maktablarga mening nomim berilgan. Toshkentdagi pedagoglar malakasini oshirish institutiga ham nomim qo'yilgan.$$,
       $$["xotira", "ko'cha", "institut", "nom", "toshkent"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Avloniy» maqolasi$$,
       TRUE,
       $$Abdulla Avloniy nomi bugun qayerlarga berilgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';

-- abdulla-oripov | Ilk kitobim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilk kitobim$$, $$Mening birinchi she'riy kitobim «Mitti yulduz» deb ataladi. U 1965-yilda nashr etilgan.$$,
       $$["mitti yulduz", "birinchi kitob", "1965", "she'r"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$,
       TRUE,
       $$Abdulla Oripovning birinchi she'riy kitobi qanday nomlangan?$$
  FROM heroes h WHERE h.slug = 'abdulla-oripov';

-- abdulla-oripov | «O'zbekiston» she'rim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«O'zbekiston» she'rim$$, $$Eng mashhur she'rlarimdan biri — «O'zbekiston». Undagi «O'zbekiston — Vatanim manim» degan satrni butun xalq yod biladi.$$,
       $$["o'zbekiston", "vatanim manim", "she'r", "vatan"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$,
       TRUE,
       $$Abdulla Oripovning Vatanga bag'ishlangan eng mashhur she'ri qaysi?$$
  FROM heroes h WHERE h.slug = 'abdulla-oripov';

-- abdulla-oripov | Muharrirlik
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Muharrirlik$$, $$Universitetni tugatgach, mehnat yo'limni nashriyotda muharrir bo'lib boshlaganman. Keyin jurnal va gazetalarda ham ishlaganman.$$,
       $$["muharrir", "nashriyot", "ish", "jurnal"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$,
       TRUE,
       $$Abdulla Oripov universitetdan keyin qayerda ishlay boshlagan?$$
  FROM heroes h WHERE h.slug = 'abdulla-oripov';

-- abdulla-oripov | Yozuvchilar uyushmasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yozuvchilar uyushmasi$$, $$Men O'zbekiston Yozuvchilar uyushmasiga rais bo'lib, ko'p yillar adiblar jamoasiga yetakchilik qilganman.$$,
       $$["yozuvchilar uyushmasi", "rais", "adiblar"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$,
       TRUE,
       $$Abdulla Oripov qaysi ijodiy uyushmaga rais bo'lgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-oripov';

-- abdulla-oripov | Madhiya musiqasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Madhiya musiqasi$$, $$Davlat madhiyamizning so'zlarini men yozganman, musiqasini esa bastakor Mutal Burhonov yaratgan.$$,
       $$["madhiya", "musiqa", "mutal burhonov", "bastakor"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «O'zbekiston Respublikasi Davlat madhiyasi» maqolasi$$,
       TRUE,
       $$Abdulla Oripov so'zlarini yozgan Davlat madhiyasi musiqasini kim bastalagan?$$
  FROM heroes h WHERE h.slug = 'abdulla-oripov';

-- abdulla-oripov | Jahon tillarida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Jahon tillarida$$, $$She'rlarim dunyoning ko'plab tillariga tarjima qilingan. Shu bois ijodimni turli mamlakatlarda o'qishadi.$$,
       $$["tarjima", "jahon", "tillar", "she'rlar"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$,
       TRUE,
       $$Abdulla Oripovning she'rlari boshqa tillarga tarjima qilinganmi?$$
  FROM heroes h WHERE h.slug = 'abdulla-oripov';

-- abdulla-oripov | Ijod maktabi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ijod maktabi$$, $$Ona yurtim Qashqadaryoda mening nomim bilan atalgan ijod maktabi ochilgan. Unda yosh iste'dodlar adabiyot sirlarini o'rganadi.$$,
       $$["ijod maktabi", "qashqadaryo", "nom", "iste'dod"]$$::jsonb,
       $$O'zbekiston Respublikasi Prezidentining ijod maktablarini tashkil etish to'g'risidagi qarori (2017)$$,
       TRUE,
       $$Abdulla Oripov nomidagi ijod maktabi qaysi viloyatda ochilgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-oripov';

-- abdulla-qodiriy | O'qishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'qishim$$, $$Bolaligimda avval eski maktabda, so'ngra rus-tuzem maktabida o'qiganman. Madrasada arab va fors tillarini o'rganganman.$$,
       $$["o'qish", "maktab", "rus-tuzem", "madrasa", "til"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abdulla Qodiriy» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriy qayerlarda o'qigan?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | Ilk asarlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilk asarlarim$$, $$Dastlabki asarlarim 1915–1916-yillarda e'lon qilingan. Ular orasida «Baxtsiz kuyov» dramasi va «Uloqda» hikoyasi bor.$$,
       $$["ilk asar", "baxtsiz kuyov", "drama", "1915"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abdulla Qodiriy» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriyning dastlabki asarlari qaysilar?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | «Uloqda» hikoyam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Uloqda» hikoyam$$, $$«Uloqda» hikoyamda ko'pkari-uloq tomoshasiga borgan bolaning taassurotlarini tasvirlaganman. U ilk realistik hikoyalarimdan biridir.$$,
       $$["uloqda", "hikoya", "ko'pkari", "bola"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abdulla Qodiriy» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriyning «Uloqda» hikoyasi nima haqida?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | Moskvada tahsilim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Moskvada tahsilim$$, $$1924-yilda Moskvaga borib, jurnalistlar tayyorlaydigan institutda o'qiganman. U yerda adabiy mahoratimni oshirganman.$$,
       $$["moskva", "institut", "jurnalistika", "1924"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abdulla Qodiriy» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriy Moskvada qayerda o'qigan?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | «Mushtum» jurnali
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Mushtum» jurnali$$, $$1923-yilda ish boshlagan «Mushtum» hajviy jurnalining faol ijodkorlaridan bo'lganman. Unda kulgili maqola va felyetonlarim chiqib turgan.$$,
       $$["mushtum", "jurnal", "hajv", "felyeton"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abdulla Qodiriy» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriy qaysi hajviy jurnalda faol qatnashgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | Hajviy qahramonlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Hajviy qahramonlarim$$, $$Hajviy asarlarimda Kalvak Mahzum va Toshpo'lat tajang degan qahramonlarni yaratganman. Ular orqali eskilik illatlari ustidan kulganman.$$,
       $$["kalvak mahzum", "toshpo'lat tajang", "hajv", "qahramon"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abdulla Qodiriy» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriy qanday hajviy qahramonlarni yaratgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | «Obid ketmon»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Obid ketmon»$$, $$1935-yilda «Obid ketmon» qissasini yozganman. Unda mehnatkash dehqon Obidning hayoti tasvirlangan.$$,
       $$["obid ketmon", "qissa", "dehqon", "1935"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abdulla Qodiriy» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriy 1935-yilda qaysi qissani yozgan?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | Oqlanishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oqlanishim$$, $$1956-yilda nomim oqlangan. Shundan so'ng asarlarim yana nashr etilib, xalqqa qaytgan.$$,
       $$["oqlanish", "1956", "nashr", "xotira"]$$::jsonb,
       $$O'zbekiston tarixi, 9-sinf darsligi$$,
       TRUE,
       $$Abdulla Qodiriyning nomi qachon oqlangan?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | Romanim kinoda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Romanim kinoda$$, $$«O'tkan kunlar» romanim asosida badiiy film suratga olingan. Otabek va Kumush qissasi shu tariqa kino ekraniga ham chiqqan.$$,
       $$["film", "kino", "o'tkan kunlar", "otabek", "kumush"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «O'tkan kunlar» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriyning qaysi romani asosida badiiy film olingan?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdulla-qodiriy | Xotiram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram$$, $$Toshkentdagi katta istirohat bog'i mening nomim bilan atalgan. Mustaqillik yillarida menga Alisher Navoiy nomidagi Davlat mukofoti va «Mustaqillik» ordeni berilgan.$$,
       $$["xotira", "bog'", "mukofot", "orden", "toshkent"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abdulla Qodiriy» maqolasi$$,
       TRUE,
       $$Abdulla Qodiriy xotirasi qanday ulug'langan?$$
  FROM heroes h WHERE h.slug = 'abdulla-qodiriy';

-- abdurauf-fitrat | «Hind sayyohi»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Hind sayyohi»$$, $$«Hind sayyohi bayonoti» asarimda Buxoro hayotini chetdan kelgan sayyoh nigohi bilan tasvirlaganman. Bu asarim fors tilida yozilgan.$$,
       $$["hind sayyohi", "buxoro", "sayyoh", "asar"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$,
       TRUE,
       $$Abdurauf Fitratning «Hind sayyohi bayonoti» asari nima haqida?$$
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';

-- abdurauf-fitrat | Chig'atoy gurungi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Chig'atoy gurungi$$, $$Toshkentda «Chig'atoy gurungi» nomli ilmiy-adabiy jamiyat tuzishda bosh bo'lganman. Unda til va adabiyot masalalarini o'rganganmiz.$$,
       $$["chig'atoy gurungi", "jamiyat", "til", "adabiyot", "toshkent"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Fitrat» maqolasi$$,
       TRUE,
       $$Abdurauf Fitrat qaysi ilmiy-adabiy jamiyatga asos solgan?$$
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';

-- abdurauf-fitrat | Maorif nozirligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Maorif nozirligim$$, $$Buxoro Xalq Sovet Respublikasida maorif noziri bo'lib ishlaganman. Yoshlarning chet ellarda o'qishiga ko'maklashganman.$$,
       $$["maorif noziri", "buxoro", "respublika", "talabalar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Fitrat» maqolasi$$,
       TRUE,
       $$Abdurauf Fitrat Buxoro respublikasida qanday lavozimda ishlagan?$$
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';

-- abdurauf-fitrat | «Adabiyot qoidalari»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Adabiyot qoidalari»$$, $$1926-yilda «Adabiyot qoidalari» darsligini yozganman. Unda she'r va nasr ilmini sodda qilib tushuntirganman.$$,
       $$["adabiyot qoidalari", "darslik", "nazariya", "1926"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$,
       TRUE,
       $$Abdurauf Fitrat adabiyot nazariyasiga oid qaysi darslikni yozgan?$$
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';

-- abdurauf-fitrat | Adabiyot tarixim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Adabiyot tarixim$$, $$Qadimgi yozma yodgorliklarni to'plab, «O'zbek adabiyoti namunalari» majmuasini tuzganman. Shu tariqa adabiyotimiz tarixini o'rganishga yo'l ochganman.$$,
       $$["o'zbek adabiyoti namunalari", "majmua", "tarix", "yodgorlik"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$,
       TRUE,
       $$Abdurauf Fitrat adabiyot tarixiga oid qaysi majmuani tuzgan?$$
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';

-- abdurauf-fitrat | Ikki tilda ijodim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ikki tilda ijodim$$, $$Asarlarimni fors va o'zbek tillarida yozganman. Arab va turk tillarini ham yaxshi bilganman.$$,
       $$["fors", "o'zbek", "tillar", "ijod"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$,
       TRUE,
       $$Abdurauf Fitrat qaysi tillarda ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';

-- abdurauf-fitrat | Oqlanishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oqlanishim$$, $$Vafotimdan yillar o'tib nomim oqlangan. Bugun asarlarim qayta nashr etilib, maktab va universitetlarda o'rganilmoqda.$$,
       $$["oqlanish", "xotira", "nashr", "asarlar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Fitrat» maqolasi$$,
       TRUE,
       $$Abdurauf Fitratning nomi va asarlari keyinchalik qanday qadrlangan?$$
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';

-- abu-nasr-forobiy | Fozil shahar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Fozil shahar$$, $$Eng mashhur asarlarimdan biri — «Fozil odamlar shahri». Unda odamlari bir-biriga yordam beradigan, adolatli va ma'rifatli shahar haqida yozganman.$$,
       $$["fozil odamlar shahri", "adolat", "shahar", "asar"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$,
       TRUE,
       $$Abu Nasr Forobiyning «Fozil odamlar shahri» asari nima haqida?$$
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';

-- abu-nasr-forobiy | Arastuga sharhlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Arastuga sharhlarim$$, $$Yunon faylasufi Arastuning asarlariga sharhlar yozganman. Shu sharhlarim orqali ko'plab olimlar uning ilmini tushunib olgan.$$,
       $$["arastu", "sharh", "falsafa", "yunon"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$,
       TRUE,
       $$Abu Nasr Forobiy qaysi yunon faylasufining asarlariga sharhlar yozgan?$$
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';

-- abu-nasr-forobiy | Fanlar tasnifi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Fanlar tasnifi$$, $$«Ihso al-ulum» — «Fanlar tasnifi» asarimda o'z davrimdagi ilmlarni tartib bilan guruhlarga ajratganman.$$,
       $$["fanlar tasnifi", "ihso al-ulum", "ilm", "tartib"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Forobiy» maqolasi$$,
       TRUE,
       $$Abu Nasr Forobiy fanlarni tasniflagan asarini qanday nomlagan?$$
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';

-- abu-nasr-forobiy | Mantiq ilmi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mantiq ilmi$$, $$Mantiq ilmiga oid ko'plab risolalar yozganman. To'g'ri fikrlash qoidalarini o'rgatganim uchun meni mantiq ustozi deb bilishgan.$$,
       $$["mantiq", "risola", "fikrlash", "ustoz"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$,
       TRUE,
       $$Abu Nasr Forobiy qaysi ilmning ustozi deb bilingan?$$
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';

-- abu-nasr-forobiy | Baxt haqida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Baxt haqida$$, $$«Baxt-saodatga erishuv haqida» risolamda insonni ilm va yaxshi xulq baxtga yetkazishini tushuntirganman.$$,
       $$["baxt", "saodat", "risola", "xulq", "ilm"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$,
       TRUE,
       $$Abu Nasr Forobiy baxtga erishuv haqida qaysi asarni yozgan?$$
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';

-- abu-nasr-forobiy | Hukmdor ehtiromi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Hukmdor ehtiromi$$, $$Halab hukmdori Sayf ad-Davla meni saroyiga taklif qilib, ilmimni juda qadrlagan.$$,
       $$["halab", "sayf ad-davla", "saroy", "hukmdor"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$,
       TRUE,
       $$Abu Nasr Forobiy ilmini qadrlagan Halab hukmdori kim?$$
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';

-- abu-nasr-forobiy | Xotiram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram$$, $$Qozog'istonning Almati shahridagi milliy universitetga al-Forobiy nomi berilgan. Nomim shu tariqa bugun ham e'zozlanadi.$$,
       $$["universitet", "almati", "qozog'iston", "xotira"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Forobiy» maqolasi$$,
       TRUE,
       $$Abu Nasr Forobiy nomi bilan qaysi mashhur universitet atalgan?$$
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';

-- TOTAL: 38

-- ===================== h_ab.sql =====================

-- abu-rayhon-beruniy | Ma'mun akademiyasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ma'mun akademiyasi$$, $$Yoshligimda Xorazm poytaxti Gurganjda, Xorazmshoh Ma'mun saroyidagi olimlar davrasi — Ma'mun akademiyasida ishlaganman. U yerga zamonaning ko'plab mashhur olimlari to'plangan edi.$$,
       $$["ma'mun", "akademiya", "gurganj", "xorazm", "olimlar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniy yoshligida qaysi akademiyada ishlagan?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | Ibn Sino bilan yozishmalarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ibn Sino bilan yozishmalarim$$, $$Yosh Ibn Sino bilan xat orqali ilmiy bahs yuritganmiz: men unga tabiat haqida savollar yuborganman, u esa javob yozgan. Bu yozishmalar fan tarixida mashhur.$$,
       $$["ibn sino", "yozishma", "xat", "bahs", "savol"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniy qaysi buyuk olim bilan ilmiy yozishmalar olib borgan?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | G'aznadagi yillarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$G'aznadagi yillarim$$, $$1017-yilda Mahmud G'aznaviy Xorazmni egallagach, meni G'azna shahriga olib ketgan. Umrimning katta qismi o'sha yerda ilmiy ishlar bilan o'tdi.$$,
       $$["g'azna", "mahmud g'aznaviy", "1017", "safar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniy 1017-yildan boshlab qaysi shaharda yashagan?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | «Qonuni Ma'sudiy»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Qonuni Ma'sudiy»$$, $$Astronomiyaga oid eng katta asarim «Qonuni Ma'sudiy» deb ataladi. Uni Sulton Mas'udga bag'ishlaganman — unda yulduzlar ilmini batafsil bayon qilganman.$$,
       $$["qonuni ma'sudiy", "astronomiya", "asar", "mas'ud"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniyning astronomiyaga oid eng yirik asari qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | Minerallar kitobim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Minerallar kitobim$$, $$«Mineralogiya» deb ataluvchi kitobimda qimmatbaho toshlar va ma'danlarni tasvirlaganman, ularning og'irligi va xossalarini aniq o'lchaganman.$$,
       $$["mineralogiya", "tosh", "ma'dan", "javohir", "kitob"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniy qimmatbaho toshlar haqida qanday kitob yozgan?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | «Saydana» asarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Saydana» asarim$$, $$Umrimning oxirida «Saydana» asarimni yozdim. Unda dorivor o'simliklar va dorilarning nomlarini turli tillarda keltirib, foydalarini tushuntirganman.$$,
       $$["saydana", "dori", "o'simlik", "tabobat"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniy umrining oxirida yozgan dorishunoslikka oid asari qaysi?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | Tillarni bilishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tillarni bilishim$$, $$Ona tilim xorazmiy tilidan tashqari arab, fors, sanskrit va yunon tillarini o'rganganman. Shu tufayli turli xalqlarning kitoblarini asliyatda o'qiy olganman.$$,
       $$["til", "arab", "fors", "sanskrit", "yunon"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniy qaysi tillarni bilgan?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | Globus yasaganim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Globus yasaganim$$, $$Yoshligimda Yer yuzasi tasvirlangan globus yasaganman. Unda shaharlar va dengizlarning joylashuvini ko'rsatganman.$$,
       $$["globus", "yer", "xarita", "yasaganman"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Abu Rayhon Beruniy (973–1048)$$,
       TRUE,
       $$Abu Rayhon Beruniy yoshligida qanday ilmiy qurilma yasagan?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | Ismimning ma'nosi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ismimning ma'nosi$$, $$«Beruniy» nomi fors tilidagi «berun» — «tashqari» so'zidan olingan bo'lib, «shahar tashqarisidan bo'lgan odam» degan ma'noni bildiradi.$$,
       $$["beruniy", "ism", "ma'no", "berun"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniy ismidagi «Beruniy» so'zi qanday ma'noni anglatadi?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abu-rayhon-beruniy | Nomim bilan atalgan joylar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomim bilan atalgan joylar$$, $$Qoraqalpog'istondagi bir shahar Beruniy deb ataladi. Toshkentda nomim bilan atalgan metro bekati bor, Oydagi kraterlardan biriga ham mening nomim berilgan.$$,
       $$["beruniy shahri", "metro", "krater", "xotira"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Beruniy» maqolasi$$,
       TRUE,
       $$Abu Rayhon Beruniy nomi bilan qanday joylar atalgan?$$
  FROM heroes h WHERE h.slug = 'abu-rayhon-beruniy';

-- abulgozi-bahodirxon | «Shajarai tarokima»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Shajarai tarokima»$$, $$«Shajarai turk»dan tashqari «Shajarai tarokima» nomli asar ham yozganman. Unda turkman xalqining kelib chiqishi va shajarasi haqida hikoya qilganman.$$,
       $$["shajarai tarokima", "turkman", "asar", "shajara"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abulg'ozi Bahodirxon» maqolasi$$,
       TRUE,
       $$Abulg'ozi Bahodirxon turkmanlar tarixiga oid qaysi asarni yozgan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Isfahondagi yillarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Isfahondagi yillarim$$, $$Yoshligimda taxt talashlari sababli Eronga borib qolganman va Isfahon shahrida o'n yilcha yashaganman. O'sha yerda fors tilidagi tarix kitoblarini ko'p o'qib, bilimimni oshirganman.$$,
       $$["isfahon", "eron", "safar", "tarix kitoblari"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abulg'ozi Bahodirxon» maqolasi$$,
       TRUE,
       $$Abulg'ozi Bahodirxon qaysi shaharda o'n yilcha yashab, tarix kitoblarini o'rgangan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Tillarni bilishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tillarni bilishim$$, $$Turkiy tildan tashqari fors va arab tillarini ham yaxshi bilganman. Bu tillardagi tarixiy asarlarni asliyatda o'qiganman.$$,
       $$["til", "fors", "arab", "turkiy"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abulg'ozi Bahodirxon» maqolasi$$,
       TRUE,
       $$Abulg'ozi Bahodirxon qaysi tillarni bilgan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Sodda tilda yozganim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Sodda tilda yozganim$$, $$Asarlarimni hamma tushunadigan sodda turkiy tilda yozganman. Atayin qiyin arabcha va forscha so'zlarni ishlatmasdan, xalq tushunadigan tilda hikoya qilganman.$$,
       $$["sodda til", "turkiy", "xalq", "uslub"]$$::jsonb,
       $$Ziyouz.com — «Shajarai turk» nashri taqdimoti$$,
       TRUE,
       $$Abulg'ozi Bahodirxon asarlarini qanday tilda yozgan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Nasl-nasabim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nasl-nasabim$$, $$Men shayboniylar sulolasidanman — nasl-nasabimiz Chingizxon avlodiga borib taqaladi. Shu bois shajaralar tarixini yaxshi bilganman.$$,
       $$["nasab", "shayboniylar", "chingizxon", "sulola"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abulg'ozi Bahodirxon» maqolasi$$,
       TRUE,
       $$Abulg'ozi Bahodirxon qaysi sulolaga mansub bo'lgan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Foydalangan manbalarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Foydalangan manbalarim$$, $$«Shajarai turk»ni yozishda Rashididdinning «Jome ut-tavorix» asari kabi qadimgi tarixiy manbalardan foydalanganman.$$,
       $$["manba", "rashididdin", "jome ut-tavorix", "tarix"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abulg'ozi Bahodirxon» maqolasi$$,
       TRUE,
       $$Abulg'ozi Bahodirxon «Shajarai turk»ni yozishda qaysi mashhur manbadan foydalangan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Asarimning yakunlanishi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Asarimning yakunlanishi$$, $$«Shajarai turk»ni oxiriga yetkazishga ulgurmadim. Uni o'g'lim Anushaxon davrida olimlar yakunlab qo'yishgan.$$,
       $$["yakun", "anushaxon", "shajarai turk", "tugallanish"]$$::jsonb,
       $$Ziyouz.com — «Shajarai turk» nashri taqdimoti$$,
       TRUE,
       $$Abulg'ozi Bahodirxonning «Shajarai turk» asari kimning davrida yakunlangan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Yevropada tarjimalarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yevropada tarjimalarim$$, $$«Shajarai turk» asarim keyinchalik Yevropa tillariga — nemis, fransuz va rus tillariga tarjima qilingan. U olimlar uchun Sharq tarixini o'rganishda muhim manba bo'ldi.$$,
       $$["tarjima", "yevropa", "nemis", "fransuz", "rus"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abulg'ozi Bahodirxon» maqolasi$$,
       TRUE,
       $$Abulg'ozi Bahodirxonning «Shajarai turk» asari qaysi tillarga tarjima qilingan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Tabobatga oid asarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tabobatga oid asarim$$, $$Tarixdan tashqari tabobatga ham qiziqqanman. Menga «Manofe ul-inson» nomli tibbiy asar ham nisbat beriladi — unda dorilar va ularning foydalari haqida so'z boradi.$$,
       $$["tabobat", "manofe ul-inson", "dori", "tibbiyot"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Abulg'ozi Bahodirxon» maqolasi$$,
       TRUE,
       $$Abulg'ozi Bahodirxonga qaysi tibbiy asar nisbat beriladi?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- abulgozi-bahodirxon | Tarix yozishga kirishganim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tarix yozishga kirishganim$$, $$O'z davrimda Xorazmda o'tmish voqealarini yaxshi biladigan tarixchi topilmagani uchun xalqim tarixini o'zim yozishga qaror qilganman.$$,
       $$["tarixchi", "sabab", "qaror", "xorazm"]$$::jsonb,
       $$Ziyouz.com — «Shajarai turk» nashri taqdimoti$$,
       TRUE,
       $$Abulg'ozi Bahodirxon nima sababdan tarix yozishga qaror qilgan?$$
  FROM heroes h WHERE h.slug = 'abulgozi-bahodirxon';

-- ahmad-al-fargoniy | Lotincha tarjimalar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Lotincha tarjimalar$$, $$Astronomiyaga oid asosiy kitobim XII asrda lotin tiliga tarjima qilingan. U Yevropa universitetlarida bir necha asr davomida astronomiya darsligi sifatida o'qitilgan.$$,
       $$["lotin", "tarjima", "darslik", "universitet", "yevropa"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$,
       TRUE,
       $$Ahmad al-Farg'oniyning kitobi Yevropa universitetlarida qanday maqsadda ishlatilgan?$$
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';

-- ahmad-al-fargoniy | Dante asarlarida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Dante asarlarida$$, $$Mashhur italyan shoiri Dante o'z asarlarida osmon ilmi haqida yozganda mening kitobimdagi ma'lumotlardan foydalangan.$$,
       $$["dante", "shoir", "italiya", "ta'sir"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$,
       TRUE,
       $$Qaysi mashhur italyan shoiri Ahmad al-Farg'oniy ma'lumotlaridan foydalangan?$$
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';

-- ahmad-al-fargoniy | Kolumbning hisoblari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kolumbning hisoblari$$, $$Sayohatchi Xristofor Kolumb ham Yer o'lchamini hisoblashda mening asarimdagi ma'lumotlarga tayangan.$$,
       $$["kolumb", "sayohatchi", "yer o'lchami", "hisob"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$,
       TRUE,
       $$Qaysi mashhur sayohatchi Ahmad al-Farg'oniy hisob-kitoblaridan foydalangan?$$
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';

-- ahmad-al-fargoniy | Astrolab haqidagi asarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Astrolab haqidagi asarim$$, $$Yulduzlarning balandligini o'lchaydigan astrolab asbobi haqida maxsus asar yozganman. Unda bu asbobning tuzilishi va yasalishini tushuntirganman.$$,
       $$["astrolab", "asbob", "yulduz", "o'lchash"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$,
       TRUE,
       $$Ahmad al-Farg'oniy qaysi astronomik asbob haqida asar yozgan?$$
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';

-- ahmad-al-fargoniy | Sayyoralar hisobi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Sayyoralar hisobi$$, $$Kitobimda sayyoralargacha bo'lgan masofalar va ularning kattaliklari haqidagi hisob-kitoblarni keltirganman. Bu raqamlardan Yevropa olimlari uzoq vaqt foydalangan.$$,
       $$["sayyora", "masofa", "kattalik", "hisob"]$$::jsonb,
       $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$,
       TRUE,
       $$Ahmad al-Farg'oniy kitobida sayyoralar haqida qanday ma'lumotlar keltirgan?$$
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';

-- ahmad-al-fargoniy | Oydagi krater
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oydagi krater$$, $$Oydagi kraterlardan biriga «Alfraganus» — mening Yevropadagi nomim berilgan. Osmonga qarasang, meni eslashing mumkin!$$,
       $$["oy", "krater", "alfraganus", "nom"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Farg'oniy» maqolasi$$,
       TRUE,
       $$Oydagi qaysi krater Ahmad al-Farg'oniy nomi bilan atalgan?$$
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';

-- ahmad-al-fargoniy | 1200 yillik to'yim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$1200 yillik to'yim$$, $$1998-yilda tavalludimning 1200 yilligi keng nishonlangan. Shu munosabat bilan Farg'ona va Quva shaharlarida menga haykallar o'rnatilgan.$$,
       $$["yubiley", "1998", "haykal", "quva", "farg'ona"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Farg'oniy» maqolasi$$,
       TRUE,
       $$Ahmad al-Farg'oniy tavalludining 1200 yilligi qachon nishonlangan?$$
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';

-- al-xorazmiy | «Bayt ul-hikma»ga rahbarligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Bayt ul-hikma»ga rahbarligim$$, $$Xalifa Ma'mun davrida Bag'doddagi «Bayt ul-hikma» — Donishmandlik uyidagi olimlarga rahbarlik qilganman va uning kutubxonasini boshqarganman.$$,
       $$["bayt ul-hikma", "rahbar", "kutubxona", "ma'mun"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xorazmiy» maqolasi$$,
       TRUE,
       $$Muhammad al-Xorazmiy Bag'dodda qanday vazifani bajargan?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | «Zij» jadvallarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Zij» jadvallarim$$, $$Astronomiyaga oid «Zij» asarimni tuzganman. Unda Quyosh, Oy va sayyoralar harakati jadvallari hamda sinuslar jadvali berilgan.$$,
       $$["zij", "jadval", "astronomiya", "sayyora", "sinus"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xorazmiy» maqolasi$$,
       TRUE,
       $$Muhammad al-Xorazmiyning astronomik jadvallar kitobi qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | Nol va «sifr» so'zi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nol va «sifr» so'zi$$, $$Hisobda bo'sh xonani belgilash uchun arabcha «sifr» — «bo'sh» so'zini ishlatganmiz. Nol raqamining shu nomi keyinchalik boshqa tillarga ham o'tgan.$$,
       $$["sifr", "nol", "raqam", "so'z"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xorazmiy» maqolasi$$,
       TRUE,
       $$Muhammad al-Xorazmiy ishlatgan «sifr» so'zi qanday ma'noni bildiradi?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | Kundalik hayot masalalari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kundalik hayot masalalari$$, $$Algebra kitobimni odamlarga kundalik hayotda kerak bo'ladigan masalalar uchun yozganman: meros taqsimlash, yer o'lchash va savdo hisob-kitoblari shular jumlasidan.$$,
       $$["meros", "savdo", "yer o'lchash", "masala", "amaliy"]$$::jsonb,
       $$UNESCO, «History of Civilizations of Central Asia»$$,
       TRUE,
       $$Muhammad al-Xorazmiy algebra kitobini qanday amaliy masalalar uchun yozgan?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | Asturlob haqidagi asarlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Asturlob haqidagi asarlarim$$, $$Yulduzlar balandligini o'lchaydigan asturlob asbobiga oid asarlar yozganman — ularda asbobni yasash va undan foydalanish usullarini bayon qilganman.$$,
       $$["asturlob", "asbob", "yulduz", "asar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xorazmiy» maqolasi$$,
       TRUE,
       $$Muhammad al-Xorazmiy qaysi astronomik asbob haqida asarlar yozgan?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | Yer aylanasini o'lchash
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yer aylanasini o'lchash$$, $$Xalifa Ma'mun topshirig'i bilan olimlar Yer aylanasining uzunligini o'lchaganlar. Men ham shu ilmiy ishlarda qatnashganman.$$,
       $$["yer aylanasi", "o'lchash", "ma'mun", "daraja"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xorazmiy» maqolasi$$,
       TRUE,
       $$Muhammad al-Xorazmiy xalifa Ma'mun davrida qanday yirik o'lchov ishida qatnashgan?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | Oydagi krater
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oydagi krater$$, $$Oyning orqa tomonidagi kraterlardan biriga mening nomim berilgan. Bu — olimlar mehnatiga qo'yilgan hurmat belgisidir.$$,
       $$["oy", "krater", "nom", "xotira"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xorazmiy» maqolasi$$,
       TRUE,
       $$Oydagi qaysi obyekt Muhammad al-Xorazmiy nomi bilan atalgan?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | Universitet nomimda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Universitet nomimda$$, $$Toshkentdagi axborot texnologiyalari universiteti mening nomim bilan ataladi. Bu bejiz emas: kompyuter dasturlari algoritmlar asosida ishlaydi.$$,
       $$["universitet", "toshkent", "axborot", "nom"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xorazmiy» maqolasi$$,
       TRUE,
       $$Toshkentdagi qaysi universitet Muhammad al-Xorazmiy nomi bilan atalgan?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | 1200 yillik yubileyim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$1200 yillik yubileyim$$, $$1983-yilda tavalludimning 1200 yilligi keng nishonlangan. Shu munosabat bilan ona yurtim Xorazmda xotiram uchun haykal o'rnatilgan.$$,
       $$["yubiley", "1983", "haykal", "xorazm"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xorazmiy» maqolasi$$,
       TRUE,
       $$Muhammad al-Xorazmiy tavalludining 1200 yilligi qaysi yili nishonlangan?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- al-xorazmiy | Yevropa darsliklarida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yevropa darsliklarida$$, $$Algebra kitobim lotin tiliga tarjima qilinib, Yevropa universitetlarida asrlar davomida matematika darsligi sifatida o'qitilgan.$$,
       $$["lotin", "tarjima", "darslik", "yevropa", "matematika"]$$::jsonb,
       $$UNESCO, «History of Civilizations of Central Asia»$$,
       TRUE,
       $$Muhammad al-Xorazmiyning algebra kitobi Yevropada qanday xizmat qilgan?$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- ali-qushchi | Rasadxonadagi kuzatuvlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Rasadxonadagi kuzatuvlarim$$, $$Samarqanddagi Ulug'bek rasadxonasida yulduzlarni kuzatganman. Kuzatuv ishlarida ustozim Ulug'bekning eng yaqin yordamchilaridan biri bo'lganman.$$,
       $$["rasadxona", "kuzatuv", "yulduz", "samarqand"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ali Qushchi» maqolasi$$,
       TRUE,
       $$Ali Qushchi qaysi rasadxonada yulduzlarni kuzatgan?$$
  FROM heroes h WHERE h.slug = 'ali-qushchi';

-- ali-qushchi | «Farzandi arjumand»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Farzandi arjumand»$$, $$Ustozim Mirzo Ulug'bek meni juda qadrlagan va «farzandi arjumand», ya'ni aziz farzandim deb atagan.$$,
       $$["farzandi arjumand", "ulug'bek", "ustoz", "qadr"]$$::jsonb,
       $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$,
       TRUE,
       $$Mirzo Ulug'bek Ali Qushchini qanday nom bilan atagan?$$
  FROM heroes h WHERE h.slug = 'ali-qushchi';

-- ali-qushchi | Samarqanddan ketishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Samarqanddan ketishim$$, $$Ustozim Ulug'bek vafotidan keyin haj ziyorati niyatida Samarqanddan yo'lga chiqqanman va bir muddat Eron shaharlarida yashaganman.$$,
       $$["samarqand", "ketish", "haj", "safar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ali Qushchi» maqolasi$$,
       TRUE,
       $$Ali Qushchi nima sababdan Samarqanddan yo'lga chiqqan?$$
  FROM heroes h WHERE h.slug = 'ali-qushchi';

-- ali-qushchi | Tabrizda elchi bo'lganim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tabrizda elchi bo'lganim$$, $$Tabriz hukmdori Uzun Hasan meni hurmat bilan qabul qilgan va elchi sifatida Istanbulga — Sulton Mehmed Fotih huzuriga yuborgan.$$,
       $$["tabriz", "uzun hasan", "elchi", "istanbul"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ali Qushchi» maqolasi$$,
       TRUE,
       $$Ali Qushchini kim elchi sifatida Istanbulga yuborgan?$$
  FROM heroes h WHERE h.slug = 'ali-qushchi';

-- ali-qushchi | Ayasofya madrasasida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ayasofya madrasasida$$, $$Istanbulda Ayasofya madrasasida dars berganman. Darslarimni tinglash uchun juda ko'p talaba yig'ilar edi.$$,
       $$["ayasofya", "madrasa", "istanbul", "dars"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ali Qushchi» maqolasi$$,
       TRUE,
       $$Ali Qushchi Istanbulda qaysi madrasada dars bergan?$$
  FROM heroes h WHERE h.slug = 'ali-qushchi';

-- ali-qushchi | Istanbulda yozgan asarlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Istanbulda yozgan asarlarim$$, $$Istanbulda matematikaga oid «Muhammadiya» va astronomiyaga oid «Fathiya» risolalarimni yozib, ularni Sulton Mehmed Fotihga bag'ishlaganman.$$,
       $$["muhammadiya", "fathiya", "risola", "istanbul"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ali Qushchi» maqolasi$$,
       TRUE,
       $$Ali Qushchi Istanbulda qaysi asarlarini yozgan?$$
  FROM heroes h WHERE h.slug = 'ali-qushchi';

-- ali-qushchi | So'nggi manzilim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$So'nggi manzilim$$, $$Umrimning so'nggi yillari Istanbulda o'tgan. 1474-yilda o'sha yerda vafot etganman va Ayyub qabristoniga dafn etilganman.$$,
       $$["istanbul", "1474", "vafot", "ayyub"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ali Qushchi» maqolasi$$,
       TRUE,
       $$Ali Qushchi umrining oxirida qaysi shaharda yashagan?$$
  FROM heroes h WHERE h.slug = 'ali-qushchi';

-- TOTAL: 44

-- ===================== h_ac.sql =====================

-- alisher-navoiy | Husayn Boyqaro bilan do'stligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Husayn Boyqaro bilan do'stligim$$, $$Bolalikdan Husayn Boyqaro bilan do'st bo'lganman — biz maktabda birga o'qiganmiz. U 1469-yilda Xuroson taxtiga o'tirgach, meni Hirotga o'z yoniga chaqirgan.$$,
       $$["husayn boyqaro", "do'st", "hirot", "sulton", "maktabdosh"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Alisher Navoiy» maqolasi$$,
       TRUE,
       $$Alisher Navoiy qaysi hukmdor bilan bolalikdan do'st bo'lgan?$$
  FROM heroes h WHERE h.slug = 'alisher-navoiy';

-- alisher-navoiy | Tahsil yillarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tahsil yillarim$$, $$Yoshligimda Hirot va Mashhad shaharlarida o'qiganman, keyin Samarqandda ham tahsil olganman. Ilm izlagan bu yillar meni shoir va olim bo'lib yetishishimga yordam bergan.$$,
       $$["tahsil", "o'qish", "samarqand", "mashhad", "hirot", "ilm"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Alisher Navoiy» maqolasi$$,
       TRUE,
       $$Alisher Navoiy qaysi shaharlarda tahsil olgan?$$
  FROM heroes h WHERE h.slug = 'alisher-navoiy';

-- alisher-navoiy | Ustozim Jomiy
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ustozim Jomiy$$, $$Buyuk fors shoiri Abdurahmon Jomiy mening ustozim va yaqin do'stim edi. Uning xotirasiga «Xamsat ul-mutahayyirin» asarimni bag'ishlaganman.$$,
       $$["jomiy", "ustoz", "xamsat ul-mutahayyirin", "do'stlik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Alisher Navoiy» maqolasi$$,
       TRUE,
       $$Alisher Navoiyning ustozi va yaqin do'sti bo'lgan buyuk shoir kim?$$
  FROM heroes h WHERE h.slug = 'alisher-navoiy';

-- alisher-navoiy | «Majolis un-nafois» tazkiram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Majolis un-nafois» tazkiram$$, $$1491-yilda «Majolis un-nafois» nomli tazkira yozganman. Bu turkiy tildagi ilk tazkira bo'lib, unda 450 dan ortiq shoir haqida ma'lumot berganman.$$,
       $$["majolis un-nafois", "tazkira", "shoirlar", "1491"]$$::jsonb,
       $$«Majolis un-nafois»; O'zbekiston milliy ensiklopediyasi$$,
       TRUE,
       $$Alisher Navoiy yozgan turkiy tildagi ilk tazkira qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'alisher-navoiy';

-- alisher-navoiy | «Mahbub ul-qulub»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Mahbub ul-qulub»$$, $$Umrimning oxirida, 1500-yilda «Mahbub ul-qulub» asarimni yozganman. Unda jamiyatdagi turli kasb egalari va yaxshi xulq haqida kuzatishlarimni bayon qilganman.$$,
       $$["mahbub ul-qulub", "asar", "axloq", "nasr"]$$::jsonb,
       $$«Mahbub ul-qulub»; O'zbekiston milliy ensiklopediyasi$$,
       TRUE,
       $$Alisher Navoiyning umri oxirida yozgan nasriy asari qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'alisher-navoiy';

-- alisher-navoiy | Bolalikdagi sevimli kitobim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bolalikdagi sevimli kitobim$$, $$Bolaligimda Farididdin Attorning «Mantiq ut-tayr» dostonini juda sevib o'qiganman, hatto uni yod olganman. Bu kitob keyinchalik ijodimga katta ta'sir ko'rsatgan.$$,
       $$["mantiq ut-tayr", "attor", "bolalik", "kitob", "yod"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Alisher Navoiy» maqolasi$$,
       TRUE,
       $$Alisher Navoiy bolaligida qaysi dostonni yod olgan?$$
  FROM heroes h WHERE h.slug = 'alisher-navoiy';

-- alisher-navoiy | Nomim yashaydi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomim yashaydi$$, $$Bugun O'zbekistonda bir viloyat va shahar mening nomim bilan Navoiy deb ataladi. Toshkentdagi davlat opera va balet teatri ham mening nomim bilan atalgan.$$,
       $$["navoiy shahri", "viloyat", "teatr", "xotira", "nom"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Navoiy» maqolasi$$,
       TRUE,
       $$O'zbekistonda Alisher Navoiy nomi bilan qaysi shahar va viloyat atalgan?$$
  FROM heroes h WHERE h.slug = 'alisher-navoiy';

-- amir-temur | Nabiram Ulug'bek
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nabiram Ulug'bek$$, $$Nabiram Ulug'bek — o'g'lim Shohruhning farzandi — keyinchalik buyuk olim va munajjim bo'lib yetishdi. U Samarqandda mashhur rasadxona qurdirgan.$$,
       $$["ulug'bek", "nabira", "olim", "rasadxona", "shohruh"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ulug'bek» maqolasi$$,
       TRUE,
       $$Amir Temurning buyuk olim bo'lib yetishgan nabirasi kim?$$
  FROM heroes h WHERE h.slug = 'amir-temur';

-- amir-temur | Oqsaroy
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oqsaroy$$, $$Ona shahrim Shahrisabzda ulkan Oqsaroy saroyini qurdirganman. Uning baland peshtoqi hozirgacha saqlanib qolgan va shaharning faxri hisoblanadi.$$,
       $$["oqsaroy", "shahrisabz", "saroy", "peshtoq"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Oqsaroy» maqolasi$$,
       TRUE,
       $$Amir Temur Shahrisabzda qaysi mashhur saroyni qurdirgan?$$
  FROM heroes h WHERE h.slug = 'amir-temur';

-- amir-temur | Bibixonim masjidi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bibixonim masjidi$$, $$Hindiston yurishidan so'ng Samarqandda Bibixonim jome masjidini qurdirganman. U o'z davrida Sharqdagi eng ulkan masjidlardan biri edi.$$,
       $$["bibixonim", "masjid", "samarqand", "qurilish"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Bibixonim jome masjidi» maqolasi$$,
       TRUE,
       $$Amir Temur Samarqandda qurdirgan ulkan jome masjidi qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'amir-temur';

-- amir-temur | Samarqand atrofidagi bog'larim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Samarqand atrofidagi bog'larim$$, $$Samarqand atrofida go'zal bog'lar barpo ettirganman: Bog'i Dilkusho, Bog'i Behisht, Bog'i Shamol va boshqalar. Ularda mehmonlarni kutib olganman va bayramlar o'tkazganman.$$,
       $$["bog'", "dilkusho", "behisht", "samarqand", "bog'lar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Amir Temur» maqolasi$$,
       TRUE,
       $$Amir Temur Samarqand atrofida qanday bog'lar barpo ettirgan?$$
  FROM heroes h WHERE h.slug = 'amir-temur';

-- amir-temur | Go'ri Amir maqbarasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Go'ri Amir maqbarasi$$, $$Samarqanddagi Go'ri Amir maqbarasida dafn etilganman. Bu maqbara aslida sevimli nabiram Muhammad Sulton uchun qurilgan edi.$$,
       $$["go'ri amir", "maqbara", "samarqand", "dafn", "muhammad sulton"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Go'ri Amir» maqolasi$$,
       TRUE,
       $$Amir Temur qaysi maqbarada dafn etilgan?$$
  FROM heroes h WHERE h.slug = 'amir-temur';

-- amir-temur | Shiorim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shiorim$$, $$«Kuch — adolatda» degan hikmat mening shiorim sifatida mashhur. Rivoyatlarga ko'ra, bu so'zlar muhrimga ham yozilgan edi. Davlatni adolat bilan boshqarishga intilganman.$$,
       $$["kuch adolatda", "shior", "adolat", "hikmat", "muhr"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi$$,
       TRUE,
       $$Amir Temurning mashhur shiori qanday?$$
  FROM heroes h WHERE h.slug = 'amir-temur';

-- amir-temur | Xotiram O'zbekistonda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram O'zbekistonda$$, $$1996-yilda O'zbekistonda tavalludimning 660 yilligi keng nishonlangan va Toshkentda Temuriylar tarixi davlat muzeyi ochilgan. Toshkent, Samarqand va Shahrisabzda haykallarim o'rnatilgan.$$,
       $$["muzey", "haykal", "660 yillik", "xotira", "yubiley"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Temuriylar tarixi davlat muzeyi» maqolasi$$,
       TRUE,
       $$Amir Temur tavalludining 660 yilligi qaysi yili nishonlangan?$$
  FROM heroes h WHERE h.slug = 'amir-temur';

-- anbar-otin | Ustozim Dilshod otin
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ustozim Dilshod otin$$, $$Qo'qonlik mashhur shoira Dilshod otinning maktabida o'qiganman. Ustozim menga she'riyat sirlarini o'rgatgan va iqtidorimni qo'llab-quvvatlagan.$$,
       $$["dilshod otin", "ustoz", "maktab", "she'riyat"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$,
       TRUE,
       $$Anbar Otin qaysi shoiraning maktabida o'qigan?$$
  FROM heroes h WHERE h.slug = 'anbar-otin';

-- anbar-otin | Sevimli shoirlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Sevimli shoirlarim$$, $$Alisher Navoiy, Fuzuliy, Bedil, Uvaysiy va Nodira asarlarini sevib o'qiganman. Ayniqsa Navoiy ijodini yuksak qadrlaganman.$$,
       $$["navoiy", "fuzuliy", "bedil", "nodira", "mutolaa"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$,
       TRUE,
       $$Anbar Otin qaysi shoirlarning asarlarini sevib o'qigan?$$
  FROM heroes h WHERE h.slug = 'anbar-otin';

-- anbar-otin | Shoiralar an'anasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shoiralar an'anasi$$, $$Men Uvaysiy va Nodira boshlagan o'zbek shoiralari an'anasini davom ettirganman. Ular kabi she'rlarimda ayollarning dardi va orzularini kuylaganman.$$,
       $$["uvaysiy", "nodira", "shoira", "an'ana", "ayollar"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$,
       TRUE,
       $$Anbar Otin qaysi o'zbek shoiralarining an'anasini davom ettirgan?$$
  FROM heroes h WHERE h.slug = 'anbar-otin';

-- anbar-otin | Qo'qon adabiy muhiti
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qo'qon adabiy muhiti$$, $$Men yashagan Qo'qon o'sha davrda yirik adabiy markaz edi. Bu yerda Muqimiy va Furqat kabi shoirlar ijod qilgan, men ham shu muhitda voyaga yetganman.$$,
       $$["qo'qon", "adabiy muhit", "muqimiy", "furqat"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$,
       TRUE,
       $$Anbar Otin yashagan Qo'qon shahri o'sha davrda nimasi bilan mashhur edi?$$
  FROM heroes h WHERE h.slug = 'anbar-otin';

-- anbar-otin | Otamning ona yurti
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Otamning ona yurti$$, $$Otam Farmonqul asli marg'ilonlik bo'lgan, keyinchalik Qo'qonga ko'chib kelgan. Men esa Qo'qonda tug'ilib o'sganman.$$,
       $$["marg'ilon", "ota", "farmonqul", "qo'qon"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$,
       TRUE,
       $$Anbar Otinning otasi Farmonqul asli qayerlik bo'lgan?$$
  FROM heroes h WHERE h.slug = 'anbar-otin';

-- anbar-otin | Taxallusim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Taxallusim$$, $$She'rlarimni o'z ismim — «Anbar» taxallusi bilan yozganman.$$,
       $$["taxallus", "anbar", "ism", "she'r"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$,
       TRUE,
       $$Anbar Otin she'rlarini qanday taxallus bilan yozgan?$$
  FROM heroes h WHERE h.slug = 'anbar-otin';

-- anbar-otin | She'rlarimning bugungi taqdiri
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$She'rlarimning bugungi taqdiri$$, $$Qo'lyozmalarim bizgacha yetib kelgan va she'rlarim O'zbekistonda kitob holida nashr etilgan. Bugun ijodim adabiyot darslarida o'rganiladi.$$,
       $$["nashr", "kitob", "meros", "qo'lyozma"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906)$$,
       TRUE,
       $$Anbar Otin ijodi bugungi kunda qanday o'rganiladi?$$
  FROM heroes h WHERE h.slug = 'anbar-otin';

-- boborahim-mashrab | Taxallusim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Taxallusim$$, $$Asl ismim Boborahim, «Mashrab» esa taxallusimdir. Xalq orasida meni «Devona Mashrab» deb ham atashgan.$$,
       $$["taxallus", "boborahim", "mashrab", "devona"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$,
       TRUE,
       $$Xalq orasida Boborahim Mashrabni qanday nom bilan atashgan?$$
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';

-- boborahim-mashrab | «Devonai Mashrab» qissasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Devonai Mashrab» qissasi$$, $$Hayotim va she'rlarim asosida xalq orasida «Devonai Mashrab» nomli qissa yaratilgan. Bu kitob qo'lyozma holida butun O'rta Osiyoga keng tarqalgan.$$,
       $$["devonai mashrab", "qissa", "kitob", "qo'lyozma"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Mashrab» maqolasi$$,
       TRUE,
       $$Boborahim Mashrab hayoti haqidagi mashhur xalq qissasi qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';

-- boborahim-mashrab | Qalandarlik hayotim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qalandarlik hayotim$$, $$Umrimni qalandar darvesh sifatida oddiy va kamtarona o'tkazganman. Boylik va mansabga qiziqmaganman, haqiqat izlab yurt kezganman.$$,
       $$["qalandar", "darvesh", "kamtarlik", "haqiqat"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$,
       TRUE,
       $$Boborahim Mashrab qanday hayot tarzini tanlagan?$$
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';

-- boborahim-mashrab | She'r yozgan tillarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$She'r yozgan tillarim$$, $$She'rlarimni asosan turkiy (o'zbek) tilida yozganman, fors tilida ham she'rlarim bor.$$,
       $$["til", "turkiy", "o'zbek", "fors"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$,
       TRUE,
       $$Boborahim Mashrab she'rlarini qaysi tillarda yozgan?$$
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';

-- boborahim-mashrab | Mustazodlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mustazodlarim$$, $$G'azal va mustazod janrlarida ko'p ijod qilganman. Mustazodlarim ayniqsa mashhur bo'lib, ular kuyga solinib aytilgan.$$,
       $$["mustazod", "g'azal", "janr", "qo'shiq"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Mashrab» maqolasi$$,
       TRUE,
       $$Boborahim Mashrab qaysi she'riy janrlarda ko'p ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';

-- boborahim-mashrab | Tanqidiy ruhdagi she'rlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tanqidiy ruhdagi she'rlarim$$, $$She'rlarimda riyokorlik va adolatsizlikni dadil tanqid qilganman. Oddiy xalqning dardini kuylaganim uchun meni sevib o'qishgan.$$,
       $$["tanqid", "riyokorlik", "adolat", "xalq dardi"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711)$$,
       TRUE,
       $$Boborahim Mashrab she'rlarida nimalarni tanqid qilgan?$$
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';

-- boborahim-mashrab | Nomim bugun
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomim bugun$$, $$Bugun O'zbekistonda ko'chalar mening nomim bilan atalgan, she'rlarim kitob holida qayta-qayta nashr etilgan. G'azallarimni hofizlar hozir ham kuylashadi.$$,
       $$["xotira", "ko'cha", "nashr", "hofiz", "qo'shiq"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Mashrab» maqolasi$$,
       TRUE,
       $$Boborahim Mashrab nomi bugun qanday yodga olinadi?$$
  FROM heroes h WHERE h.slug = 'boborahim-mashrab';

-- bobur | Samarqand uchun kurashim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Samarqand uchun kurashim$$, $$Yoshligimda buyuk bobom Amir Temur poytaxti Samarqandni egallashga bir necha bor harakat qilganman va uni ikki marta qo'lga kiritganman. Ammo taxtni uzoq saqlab qololmaganman.$$,
       $$["samarqand", "kurash", "taxt", "temuriylar"]$$::jsonb,
       $$«Boburnoma»; O'zbekiston milliy ensiklopediyasi$$,
       TRUE,
       $$Zahiriddin Muhammad Bobur yoshligida qaysi shaharni egallash uchun kurashgan?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | Qobul hukmdorligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qobul hukmdorligim$$, $$1504-yilda Qobulni egallab, u yerda o'z davlatimni mustahkamlaganman. Qobul ko'p yillar mening poytaxtim bo'lgan.$$,
       $$["qobul", "1504", "poytaxt", "hukmdor"]$$::jsonb,
       $$«Boburnoma»; O'zbekiston milliy ensiklopediyasi$$,
       TRUE,
       $$Bobur 1504-yilda qaysi shaharni egallab, o'z poytaxtiga aylantirgan?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | Panipat jangi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Panipat jangi$$, $$1526-yilda Panipat jangida Dehli sultoni Ibrohim Lo'diy qo'shinini yengganman. Bu g'alaba Hindistonda yangi davlatga asos solishimga yo'l ochgan.$$,
       $$["panipat", "1526", "ibrohim lo'diy", "jang", "g'alaba"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi; «Boburnoma»$$,
       TRUE,
       $$Bobur 1526-yilda qaysi mashhur jangda g'alaba qozongan?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | Boburiylar sulolasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Boburiylar sulolasi$$, $$Men asos solgan boburiylar sulolasi Hindistonda uch asrdan ortiq hukmronlik qilgan. Avlodlarim orasida Akbarshoh va Tojmahalni qurdirgan Shoh Jahon ham bor.$$,
       $$["boburiylar", "sulola", "hindiston", "akbar", "tojmahal"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Boburiylar» maqolasi$$,
       TRUE,
       $$Bobur asos solgan sulola Hindistonda qancha vaqt hukmronlik qilgan?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | «Mubayyin» asarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Mubayyin» asarim$$, $$Farzandlarimga atab «Mubayyin» nomli asar yozganman. Unda diniy qoidalarni she'riy yo'l bilan tushunarli qilib bayon etganman.$$,
       $$["mubayyin", "asar", "she'riy", "farzandlar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Bobur» maqolasi$$,
       TRUE,
       $$Bobur farzandlariga atab yozgan she'riy asari qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | Xatti Boburiy
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xatti Boburiy$$, $$O'zim yangi alifbo ixtiro qilganman — u «Xatti Boburiy» deb ataladi. Bu yozuvda ayrim kitoblar ham ko'chirilgan.$$,
       $$["xatti boburiy", "alifbo", "yozuv", "ixtiro"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Bobur» maqolasi$$,
       TRUE,
       $$Bobur ixtiro qilgan yozuv qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | Aruz haqidagi risolam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Aruz haqidagi risolam$$, $$She'r ilmiga bag'ishlangan «Muxtasar» nomli risola yozganman. Unda aruz vazni qoidalarini batafsil tushuntirganman.$$,
       $$["muxtasar", "aruz", "risola", "she'r ilmi"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Bobur» maqolasi$$,
       TRUE,
       $$Boburning aruz vazniga bag'ishlangan risolasi qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | G'azal va ruboiylarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$G'azal va ruboiylarim$$, $$«Boburnoma»dan tashqari ko'plab g'azal va ruboiylar yozganman. She'rlarim devon holida to'plangan va bugun ham sevib o'qiladi.$$,
       $$["g'azal", "ruboiy", "devon", "she'r"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Bobur» maqolasi$$,
       TRUE,
       $$Bobur qanday she'riy janrlarda ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | Onam Qutlug' Nigorxonim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Onam Qutlug' Nigorxonim$$, $$Onam Qutlug' Nigorxonim Yunusxonning qizi edi. U og'ir kunlarimda doim yonimda bo'lgan va menga madad bergan.$$,
       $$["ona", "qutlug' nigorxonim", "yunusxon", "oila"]$$::jsonb,
       $$«Boburnoma»; O'zbekiston milliy ensiklopediyasi$$,
       TRUE,
       $$Boburning onasi Qutlug' Nigorxonim kimning qizi bo'lgan?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- bobur | Qabrim — Bog'i Bobur
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qabrim — Bog'i Bobur$$, $$Vasiyatimga ko'ra, xokim keyinchalik Qobuldagi o'zim sevgan bog'ga qo'yilgan. Bu joy hozir Bog'i Bobur deb ataladi va ko'pchilik uni ziyorat qiladi.$$,
       $$["qabr", "qobul", "bog'i bobur", "vasiyat"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Bobur» maqolasi$$,
       TRUE,
       $$Bobur qayerga dafn etilgan?$$
  FROM heroes h WHERE h.slug = 'bobur';

-- TOTAL: 38

-- ===================== h_ad.sql =====================

-- bumin-xoqon | Xitoy manbalaridagi nomim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xitoy manbalaridagi nomim$$, $$Qadimgi Xitoy yilnomalarida mening nomim «Tumen» shaklida yozib qoldirilgan. Olimlar men haqimda ko'p ma'lumotni ana shu manbalardan bilib olishgan.$$,
       $$["tumen", "xitoy", "yilnoma", "manba", "nom"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turk xoqonligi» maqolasi$$,
       TRUE,
       $$Bumin xoqonning nomi qadimgi Xitoy manbalarida qanday shaklda yozilgan?$$
  FROM heroes h WHERE h.slug = 'bumin-xoqon';

-- bumin-xoqon | Ashina urug'i
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ashina urug'i$$, $$Men turkiy qabilalarga boshchilik qilgan ashina urug'idan chiqqanman. Turk xoqonligida hukmdorlar ana shu urug'dan bo'lgan.$$,
       $$["ashina", "urug'", "qabila", "hukmdor"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turk xoqonligi» maqolasi$$,
       TRUE,
       $$Bumin xoqon qaysi urug'dan chiqqan?$$
  FROM heroes h WHERE h.slug = 'bumin-xoqon';

-- bumin-xoqon | Temirchilik hunari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Temirchilik hunari$$, $$Xoqonlik tuzilishidan avval bizning qabilalarimiz Oltoy tog'larida temir qazib olib, temirchilik bilan shuhrat qozongan edi. Temirdan qurol va asboblar yasashda mohir ustalar edik.$$,
       $$["temir", "temirchilik", "oltoy", "hunar"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Bumin xoqon boshchiligidagi turkiy qabilalar qaysi hunari bilan mashhur bo'lgan?$$
  FROM heroes h WHERE h.slug = 'bumin-xoqon';

-- bumin-xoqon | Tele qabilalari ustidan g'alabam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tele qabilalari ustidan g'alabam$$, $$546-yilda tele qabilalarini o'zimga bo'ysundirib, ularni qo'l ostimga birlashtirganman. Bu g'alaba kuchimni ancha oshirgan.$$,
       $$["tele", "546", "qabilalar", "g'alaba"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turk xoqonligi» maqolasi$$,
       TRUE,
       $$Bumin xoqon 546-yilda qaysi qabilalarni o'ziga bo'ysundirgan?$$
  FROM heroes h WHERE h.slug = 'bumin-xoqon';

-- bumin-xoqon | Vey davlati bilan ittifoq
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Vey davlati bilan ittifoq$$, $$Kuchayish yo'lida Xitoydagi G'arbiy Vey davlati bilan do'stona aloqa o'rnatganman va ularning malikasiga uylanganman. Bu ittifoq davlatimni mustahkamlashga yordam bergan.$$,
       $$["vey", "xitoy", "ittifoq", "malika"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turk xoqonligi» maqolasi$$,
       TRUE,
       $$Bumin xoqon Xitoydagi qaysi davlat bilan ittifoq tuzgan?$$
  FROM heroes h WHERE h.slug = 'bumin-xoqon';

-- bumin-xoqon | O'rxun bitiklarida nomim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'rxun bitiklarida nomim$$, $$Keyinchalik toshlarga o'yib yozilgan mashhur O'rxun bitiklarida men xoqonlik asoschisi sifatida hurmat bilan tilga olinganman.$$,
       $$["o'rxun", "bitik", "tosh", "yozuv"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Bumin xoqon qaysi qadimgi toshbitiklarda davlat asoschisi sifatida tilga olingan?$$
  FROM heroes h WHERE h.slug = 'bumin-xoqon';

-- bumin-xoqon | Vorislarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Vorislarim$$, $$Mendan so'ng taxtga o'g'illarim o'tirgan. Ayniqsa o'g'lim Muqan xoqon davrida davlatimiz juda kuchaygan.$$,
       $$["voris", "muqan", "o'g'il", "taxt"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Bumin xoqondan keyin qaysi o'g'li davrida Turk xoqonligi ayniqsa kuchaygan?$$
  FROM heroes h WHERE h.slug = 'bumin-xoqon';

-- cholpon | Ilk matbuot chiqishlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilk matbuot chiqishlarim$$, $$Ilk she'r va maqolalarim 1914-yilda «Sadoi Turkiston» gazetasida bosilgan. O'shanda men juda yosh edim.$$,
       $$["sadoi turkiston", "gazeta", "1914", "ilk she'r"]$$::jsonb,
       $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$,
       TRUE,
       $$Cho'lponning ilk asarlari qaysi gazetada bosilgan?$$
  FROM heroes h WHERE h.slug = 'cholpon';

-- cholpon | Tarjimalarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tarjimalarim$$, $$Shekspirning «Hamlet» fojiasini o'zbek tiliga tarjima qilganman. Bundan tashqari, Pushkin va Gorkiy asarlarini ham o'zbekchaga o'girganman.$$,
       $$["tarjima", "hamlet", "shekspir", "pushkin", "gorkiy"]$$::jsonb,
       $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$,
       TRUE,
       $$Cho'lpon Shekspirning qaysi asarini o'zbek tiliga tarjima qilgan?$$
  FROM heroes h WHERE h.slug = 'cholpon';

-- cholpon | Moskvadagi yillarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Moskvadagi yillarim$$, $$1920-yillarning o'rtalarida Moskvada yashab, u yerdagi o'zbek drama studiyasida ishlaganman. Yosh o'zbek aktyorlariga adabiyotdan saboq berganman.$$,
       $$["moskva", "drama studiyasi", "teatr", "aktyor"]$$::jsonb,
       $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$,
       TRUE,
       $$Cho'lpon 1920-yillarning o'rtalarida qaysi shaharda o'zbek drama studiyasida ishlagan?$$
  FROM heroes h WHERE h.slug = 'cholpon';

-- cholpon | Otam haqida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Otam haqida$$, $$Otam Sulaymonqul savdogar bo'lgan, adabiyotni sevgan va o'zi ham she'rlar yozib turgan. Ilk savodimni oilamda olganman.$$,
       $$["ota", "sulaymonqul", "oila", "savdogar"]$$::jsonb,
       $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$,
       TRUE,
       $$Cho'lponning otasi Sulaymonqul qanday kasb egasi bo'lgan?$$
  FROM heroes h WHERE h.slug = 'cholpon';

-- cholpon | Oqlanishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oqlanishim$$, $$1956-yilda nomim rasman oqlangan. Asarlarim esa 1980-yillarning oxiridan boshlab yana kitob bo'lib chiqa boshlagan va o'quvchilarga qaytgan.$$,
       $$["oqlanish", "1956", "asarlar", "qaytish"]$$::jsonb,
       $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$,
       TRUE,
       $$Cho'lpon qaysi yili rasman oqlangan?$$
  FROM heroes h WHERE h.slug = 'cholpon';

-- cholpon | Davlat mukofoti
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Davlat mukofoti$$, $$1991-yilda ijodim Alisher Navoiy nomidagi O'zbekiston Respublikasi Davlat mukofoti bilan taqdirlangan.$$,
       $$["mukofot", "navoiy mukofoti", "1991", "e'tirof"]$$::jsonb,
       $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$,
       TRUE,
       $$Cho'lpon 1991-yilda qaysi davlat mukofoti bilan taqdirlangan?$$
  FROM heroes h WHERE h.slug = 'cholpon';

-- cholpon | Nomimdagi nashriyot
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomimdagi nashriyot$$, $$Toshkentdagi bolalar adabiyoti nashriyotiga mening nomim berilgan — «Cho'lpon» nashriyoti. U bolalar uchun ko'plab kitoblar chiqargan.$$,
       $$["nashriyot", "cho'lpon nashriyoti", "bolalar kitoblari", "xotira"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Cho'lpon» maqolasi$$,
       TRUE,
       $$Toshkentdagi qaysi bolalar nashriyoti Cho'lpon nomi bilan ataladi?$$
  FROM heroes h WHERE h.slug = 'cholpon';

-- dilbar-abdurahmonova | Bolaligim Toshkentda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bolaligim Toshkentda$$, $$Moskvada tug'ilgan bo'lsam-da, bolaligim Toshkentda o'tgan. Shu yerda musiqa maktabida o'qib, san'atga mehr qo'yganman.$$,
       $$["bolalik", "toshkent", "musiqa maktabi"]$$::jsonb,
       $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$,
       TRUE,
       $$Dilbar Abdurahmonovaning bolaligi qaysi shaharda o'tgan?$$
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';

-- dilbar-abdurahmonova | Konservatoriyada o'qishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Konservatoriyada o'qishim$$, $$Musiqa maktabidan so'ng Toshkent davlat konservatoriyasida tahsil olganman — avval skripka, keyin dirijyorlik bo'yicha o'qiganman.$$,
       $$["konservatoriya", "toshkent", "o'qish", "dirijyorlik"]$$::jsonb,
       $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$,
       TRUE,
       $$Dilbar Abdurahmonova qaysi oliy o'quv yurtida tahsil olgan?$$
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';

-- dilbar-abdurahmonova | Mening teatrim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mening teatrim$$, $$Butun ijodiy hayotim Alisher Navoiy nomidagi opera va balet teatri bilan bog'liq. Bu teatr — O'zbekistonning bosh opera va balet sahnasi.$$,
       $$["teatr", "navoiy teatri", "opera", "balet"]$$::jsonb,
       $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$,
       TRUE,
       $$Dilbar Abdurahmonova qaysi teatrda faoliyat yuritgan?$$
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';

-- dilbar-abdurahmonova | Yarim asrlik xizmatim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yarim asrlik xizmatim$$, $$Navoiy teatrida qariyb yarim asr ishlaganman — avval orkestrda, keyin dirijyorlik pultida. Teatr men uchun ikkinchi uyim edi.$$,
       $$["yarim asr", "xizmat", "teatr", "mehnat"]$$::jsonb,
       $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$,
       TRUE,
       $$Dilbar Abdurahmonova Navoiy teatrida qancha vaqt ishlagan?$$
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';

-- dilbar-abdurahmonova | Boshqargan spektakllarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Boshqargan spektakllarim$$, $$Dirijyor sifatida 60 dan ortiq opera va balet spektakllarini boshqarganman.$$,
       $$["spektakl", "60", "opera", "balet", "dirijyor"]$$::jsonb,
       $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$,
       TRUE,
       $$Dilbar Abdurahmonova dirijyor sifatida nechta opera va balet spektaklini boshqargan?$$
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';

-- dilbar-abdurahmonova | Repertuarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Repertuarim$$, $$Repertuarimda jahon klassikasi ham, o'zbek bastakorlarining opera va baletlari ham bor edi. Har bir spektaklga alohida mehr bilan tayyorlanardim.$$,
       $$["repertuar", "klassika", "o'zbek bastakorlari", "musiqa"]$$::jsonb,
       $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$,
       TRUE,
       $$Dilbar Abdurahmonovaning repertuarida qanday asarlar bo'lgan?$$
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';

-- dilbar-abdurahmonova | Dirijyor kasbi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Dirijyor kasbi$$, $$Dirijyor — orkestrga yo'l ko'rsatadigan musiqachi: u qo'lidagi tayoqcha bilan barcha sozandalarni bitta ohangda birlashtiradi. Men shu kasbni butun qalbim bilan sevganman.$$,
       $$["dirijyor", "orkestr", "tayoqcha", "kasb"]$$::jsonb,
       $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$,
       TRUE,
       $$Dilbar Abdurahmonovaning kasbi bo'lgan dirijyor qanday vazifani bajaradi?$$
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';

-- erkin-vohidov | Bolaligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bolaligim$$, $$Bolaligimda ota-onamdan erta judo bo'lganman va Toshkentda tog'amning qo'lida ulg'ayganman.$$,
       $$["bolalik", "toshkent", "tog'a", "oila"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$,
       TRUE,
       $$Erkin Vohidov bolaligida kimning qo'lida, qaysi shaharda ulg'aygan?$$
  FROM heroes h WHERE h.slug = 'erkin-vohidov';

-- erkin-vohidov | Tarjimalarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tarjimalarim$$, $$Nemis shoiri Gyotening mashhur «Faust» asarini o'zbek tiliga tarjima qilganman. Rus shoiri Sergey Yesenin she'rlarini ham o'zbekchaga o'girganman.$$,
       $$["tarjima", "faust", "gyote", "yesenin"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$,
       TRUE,
       $$Erkin Vohidov Gyotening qaysi asarini o'zbek tiliga tarjima qilgan?$$
  FROM heroes h WHERE h.slug = 'erkin-vohidov';

-- erkin-vohidov | «Ruhlar isyoni» dostonim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Ruhlar isyoni» dostonim$$, $$«Ruhlar isyoni» dostonimni bengal shoiri Nazrul Islom taqdiriga bag'ishlaganman. Bu doston eng mashhur asarlarimdan biridir.$$,
       $$["ruhlar isyoni", "doston", "nazrul islom"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$,
       TRUE,
       $$Erkin Vohidovning «Ruhlar isyoni» dostoni kimga bag'ishlangan?$$
  FROM heroes h WHERE h.slug = 'erkin-vohidov';

-- erkin-vohidov | «O'zbegim» qasidam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«O'zbegim» qasidam$$, $$Xalqim tarixi va g'ururini kuylagan «O'zbegim» qasidasini yozganman. Bu she'r qo'shiq bo'lib, hofiz Sherali Jo'rayev ijrosida elga tarqalgan.$$,
       $$["o'zbegim", "qasida", "qo'shiq", "sherali jo'rayev"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$,
       TRUE,
       $$Erkin Vohidovning xalq orasida qo'shiq bo'lib ketgan mashhur qasidasi qaysi?$$
  FROM heroes h WHERE h.slug = 'erkin-vohidov';

-- erkin-vohidov | Hajviy she'rlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Hajviy she'rlarim$$, $$Hazil-mutoyibani yaxshi ko'rganman: «Donishqishloq latifalari» turkumimda Matmusa degan qiziqarli qahramon obrazini yaratganman.$$,
       $$["hajv", "matmusa", "donishqishloq", "kulgi"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$,
       TRUE,
       $$Erkin Vohidov hajviy she'rlarida qaysi qahramon obrazini yaratgan?$$
  FROM heroes h WHERE h.slug = 'erkin-vohidov';

-- erkin-vohidov | Parlamentdagi faoliyatim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Parlamentdagi faoliyatim$$, $$She'riyat bilan birga davlat ishlarida ham qatnashganman — O'zbekiston Oliy Majlisida deputat bo'lib, qo'mita raisi sifatida ishlaganman.$$,
       $$["oliy majlis", "deputat", "qo'mita", "davlat ishi"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$,
       TRUE,
       $$Erkin Vohidov qaysi davlat organida deputat bo'lib ishlagan?$$
  FROM heroes h WHERE h.slug = 'erkin-vohidov';

-- erkin-vohidov | Nomimdagi ijod maktabi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomimdagi ijod maktabi$$, $$Vafotimdan so'ng Farg'ona viloyatining Marg'ilon shahrida iqtidorli bolalar uchun Erkin Vohidov nomidagi ijod maktabi ochilgan.$$,
       $$["ijod maktabi", "marg'ilon", "xotira", "maktab"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$,
       TRUE,
       $$Erkin Vohidov nomidagi ijod maktabi qaysi shaharda ochilgan?$$
  FROM heroes h WHERE h.slug = 'erkin-vohidov';

-- feruz | To'liq ismim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$To'liq ismim$$, $$Mening to'liq ismim — Muhammad Rahim Bahodirxon. Tarixda Muhammad Rahimxon Soniy, ya'ni Ikkinchi Muhammad Rahimxon nomi bilan ham tanilganman.$$,
       $$["ism", "muhammad rahimxon", "soniy", "bahodirxon"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$,
       TRUE,
       $$Muhammad Rahimxon Feruz tarixda yana qanday nom bilan tanilgan?$$
  FROM heroes h WHERE h.slug = 'feruz';

-- feruz | Sulolam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Sulolam$$, $$Men Xiva xonligini boshqargan qo'ng'irot sulolasidan chiqqanman. Bobolarim ham Xiva taxtida o'tirgan.$$,
       $$["sulola", "qo'ng'irot", "xiva xonligi"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Muhammad Rahimxon II» maqolasi$$,
       TRUE,
       $$Muhammad Rahimxon Feruz qaysi sulolaga mansub bo'lgan?$$
  FROM heroes h WHERE h.slug = 'feruz';

-- feruz | Gandimiyon shartnomasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Gandimiyon shartnomasi$$, $$1873-yilda Rossiya imperiyasi bilan Gandimiyon shartnomasini imzolashga majbur bo'lganman. Shundan so'ng xonlik o'z mustaqilligini yo'qotib, Rossiyaga qaram bo'lib qolgan.$$,
       $$["gandimiyon", "1873", "shartnoma", "rossiya"]$$::jsonb,
       $$«O'zbekiston tarixi» darsligi; O'zbekiston milliy ensiklopediyasi, «Gandimiyon shartnomasi» maqolasi$$,
       TRUE,
       $$Muhammad Rahimxon Feruz 1873-yilda qaysi shartnomani imzolagan?$$
  FROM heroes h WHERE h.slug = 'feruz';

-- feruz | Saroyimdagi shoirlar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Saroyimdagi shoirlar$$, $$Saroyimga zamonamning ko'plab shoirlarini to'plaganman. Komil Xorazmiy, Bayoniy, Tabibiy va Avaz O'tar kabi ijodkorlar mening davrimda ijod qilgan.$$,
       $$["saroy", "shoirlar", "komil xorazmiy", "bayoniy", "avaz o'tar"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$,
       TRUE,
       $$Muhammad Rahimxon Feruz saroyida qaysi shoirlar ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'feruz';

-- feruz | Shoirlar tazkirasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shoirlar tazkirasi$$, $$Shoir Tabibiyga topshiriq berib, Xorazm shoirlarining she'rlarini jamlagan «Majmuat ush-shuaro» tazkirasini tuzdirganman.$$,
       $$["tazkira", "majmuat ush-shuaro", "tabibiy", "xorazm shoirlari"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$,
       TRUE,
       $$Muhammad Rahimxon Feruz topshirig'i bilan qaysi tazkira tuzilgan?$$
  FROM heroes h WHERE h.slug = 'feruz';

-- feruz | Tarjima ishlari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tarjima ishlari$$, $$Mening davrimda Xivada tarjimachilik rivojlangan: buyrug'im bilan fors va arab tillaridagi ko'plab kitoblar o'zbek tiliga tarjima qilingan.$$,
       $$["tarjima", "xiva", "kitoblar", "fors tili"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910)$$,
       TRUE,
       $$Muhammad Rahimxon Feruz davrida Xivada qaysi soha ayniqsa rivojlangan?$$
  FROM heroes h WHERE h.slug = 'feruz';

-- feruz | Vorisim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Vorisim$$, $$Mendan so'ng Xiva taxtiga o'g'lim Isfandiyorxon o'tirgan.$$,
       $$["voris", "isfandiyorxon", "taxt", "o'g'il"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Xiva xonligi» maqolasi$$,
       TRUE,
       $$Muhammad Rahimxon Feruzdan keyin Xiva taxtiga kim o'tirgan?$$
  FROM heroes h WHERE h.slug = 'feruz';

-- TOTAL: 35

-- ===================== h_ae.sql =====================

-- gafur-gulom | Yetim o'sganim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yetim o'sganim$$, $$Men bolaligimda ota-onamdan erta ayrilib, yetim o'sganman. Shuning uchun yetim bolalarning dardini juda yaxshi tushunardim.$$,
       $$["yetim", "bolalik", "ota-ona", "qiyinchilik"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$,
       TRUE,
       $$G'afur G'ulom bolaligida qanday qiyinchilikni boshidan kechirgan?$$
  FROM heroes h WHERE h.slug = 'gafur-gulom';

-- gafur-gulom | Ilk kasblarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilk kasblarim$$, $$Yoshligimda bosmaxonada harf teruvchi bo'lib ishlaganman, keyin o'qituvchilik qilganman va bolalar uyida tarbiyachi bo'lganman.$$,
       $$["bosmaxona", "harf teruvchi", "o'qituvchi", "tarbiyachi", "kasb"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$,
       TRUE,
       $$G'afur G'ulom yoshligida qaysi kasblarda ishlagan?$$
  FROM heroes h WHERE h.slug = 'gafur-gulom';

-- gafur-gulom | Ilk she'rim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilk she'rim$$, $$Mening ilk she'rim «Go'zallik nimada?» deb atalgan va u 1923-yilda bosilib chiqqan.$$,
       $$["ilk she'r", "go'zallik nimada", "1923", "matbuot"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$,
       TRUE,
       $$G'afur G'ulomning birinchi bosilgan she'ri qanday nomlangan?$$
  FROM heroes h WHERE h.slug = 'gafur-gulom';

-- gafur-gulom | «Sen yetim emassan» she'ri
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Sen yetim emassan» she'ri$$, $$Ikkinchi jahon urushi yillarida «Sen yetim emassan» she'rimni yozganman. Unda urushda yetim qolgan bolalarni o'z bag'riga olgan mehribon insonlarni kuylaganman.$$,
       $$["sen yetim emassan", "urush", "yetim bolalar", "mehr"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$,
       TRUE,
       $$G'afur G'ulom «Sen yetim emassan» she'rini qachon va kimlarga bag'ishlab yozgan?$$
  FROM heroes h WHERE h.slug = 'gafur-gulom';

-- gafur-gulom | «Mushtum» jurnalida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Mushtum» jurnalida$$, $$Men «Mushtum» hajviy jurnali tahririyatida ishlaganman — kulgi va hazil orqali hayotdagi kamchiliklarni tanqid qilganman.$$,
       $$["mushtum", "jurnal", "hajv", "kulgi", "tahririyat"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966)$$,
       TRUE,
       $$G'afur G'ulom qaysi hajviy jurnal tahririyatida ishlagan?$$
  FROM heroes h WHERE h.slug = 'gafur-gulom';

-- gafur-gulom | Xalq shoiri unvonim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xalq shoiri unvonim$$, $$1963-yilda menga «O'zbekiston xalq shoiri» degan faxriy unvon berilgan.$$,
       $$["xalq shoiri", "unvon", "1963", "faxriy"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «G'afur G'ulom» maqolasi$$,
       TRUE,
       $$G'afur G'ulomga qachon «O'zbekiston xalq shoiri» unvoni berilgan?$$
  FROM heroes h WHERE h.slug = 'gafur-gulom';

-- gafur-gulom | Nomimdagi joylar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomimdagi joylar$$, $$Toshkentdagi katta adabiyot va san'at nashriyoti, metro bekati va madaniyat bog'i mening nomim bilan ataladi. Yashagan uyimda esa uy-muzey ochilgan.$$,
       $$["nashriyot", "metro", "bog'", "uy-muzey", "xotira"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «G'afur G'ulom» maqolasi$$,
       TRUE,
       $$G'afur G'ulom nomi bilan Toshkentda nimalar atalgan?$$
  FROM heroes h WHERE h.slug = 'gafur-gulom';

-- gavharshod-begim | Ismimning ma'nosi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ismimning ma'nosi$$, $$Ismim ikki so'zdan tuzilgan: «gavhar» — qimmatbaho dur, «shod» — xursand degani. Ya'ni ismim «shodlik gavhari» degan ma'noni beradi.$$,
       $$["ism", "ma'no", "gavhar", "shod"]$$::jsonb,
       $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$,
       TRUE,
       $$Gavharshod begim ismining ma'nosi nima?$$
  FROM heroes h WHERE h.slug = 'gavharshod-begim';

-- gavharshod-begim | Qaynotam Amir Temur
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qaynotam Amir Temur$$, $$Buyuk sohibqiron Amir Temur mening qaynotam bo'lgan — men uning o'g'li Shohrux Mirzoning rafiqasi edim.$$,
       $$["amir temur", "qaynota", "shohrux", "oila"]$$::jsonb,
       $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$,
       TRUE,
       $$Gavharshod begim Amir Temurga qanday qarindosh bo'lgan?$$
  FROM heroes h WHERE h.slug = 'gavharshod-begim';

-- gavharshod-begim | Hirot poytaxtimiz
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Hirot poytaxtimiz$$, $$Turmush o'rtog'im Shohrux Mirzo davlat poytaxtini Samarqanddan Hirotga ko'chirgan. Men umrimning katta qismini Hirotda o'tkazganman.$$,
       $$["hirot", "poytaxt", "shohrux", "ko'chirish"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Gavharshodbegim» maqolasi$$,
       TRUE,
       $$Gavharshod begim davrida Temuriylar davlatining poytaxti qaysi shahar edi?$$
  FROM heroes h WHERE h.slug = 'gavharshod-begim';

-- gavharshod-begim | Mashhaddagi masjidim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mashhaddagi masjidim$$, $$Mashhad shahrida ulkan jome masjidi qurdirganman. U hozir ham «Gavharshod masjidi» deb ataladi va o'zining go'zal koshinlari bilan mashhur.$$,
       $$["mashhad", "masjid", "gavharshod masjidi", "qurilish"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Gavharshodbegim» maqolasi$$,
       TRUE,
       $$Gavharshod begim Mashhad shahrida qanday bino qurdirgan?$$
  FROM heroes h WHERE h.slug = 'gavharshod-begim';

-- gavharshod-begim | Me'morim Qavomiddin
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Me'morim Qavomiddin$$, $$Qurdirgan binolarimni o'sha davrning eng mashhur me'mori Qavomiddin Sheroziy loyihalagan.$$,
       $$["me'mor", "qavomiddin sheroziy", "bino", "loyiha"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Gavharshodbegim» maqolasi$$,
       TRUE,
       $$Gavharshod begim qurdirgan binolarni qaysi me'mor loyihalagan?$$
  FROM heroes h WHERE h.slug = 'gavharshod-begim';

-- gavharshod-begim | Ilm-fan homiyligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilm-fan homiyligim$$, $$Olimlar, shoirlar va musavvirlarga homiylik qilganman. Mening davrimda Hirot Sharqning eng yirik madaniyat markazlaridan biriga aylangan.$$,
       $$["homiylik", "olimlar", "shoirlar", "madaniyat", "hirot"]$$::jsonb,
       $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$,
       TRUE,
       $$Gavharshod begim davrida Hirot qanday shahar sifatida dong taratgan?$$
  FROM heroes h WHERE h.slug = 'gavharshod-begim';

-- gavharshod-begim | O'g'lim Ulug'bek
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'g'lim Ulug'bek$$, $$O'g'lim Mirzo Ulug'bek Samarqandda hukmdor bo'lgan va mashhur olim sifatida rasadxona qurdirgan. Men u bilan faxrlanaman.$$,
       $$["ulug'bek", "o'g'il", "samarqand", "rasadxona", "olim"]$$::jsonb,
       $$Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim$$,
       TRUE,
       $$Gavharshod begimning qaysi o'g'li mashhur olim bo'lgan?$$
  FROM heroes h WHERE h.slug = 'gavharshod-begim';

-- giyosiddin-koshiy | Tug'ilgan shahrim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tug'ilgan shahrim$$, $$Men Koshon shahrida tug'ilganman. «Koshiy» degan nomim ham shu shahar nomidan kelib chiqqan.$$,
       $$["koshon", "tug'ilish", "koshiy", "nom"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Koshiy» maqolasi$$,
       TRUE,
       $$G'iyosiddin Jamshid Koshiy qaysi shaharda tug'ilgan?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | «Ziji Xoqoniy» asarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Ziji Xoqoniy» asarim$$, $$Samarqandga kelishimdan avval «Ziji Xoqoniy» nomli astronomik jadvallar kitobini yozganman.$$,
       $$["ziji xoqoniy", "zij", "astronomiya", "jadval"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Koshiy» maqolasi$$,
       TRUE,
       $$G'iyosiddin Koshiy qaysi astronomik jadvallar kitobini yozgan?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | «Sullam us-samo»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Sullam us-samo»$$, $$«Sullam us-samo», ya'ni «Osmon narvoni» asarimda osmon jismlarining Yerdan uzoqligi va kattaligi haqida yozganman.$$,
       $$["sullam us-samo", "osmon narvoni", "sayyoralar", "masofa"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Koshiy» maqolasi$$,
       TRUE,
       $$G'iyosiddin Koshiyning «Sullam us-samo» asari nima haqida?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | Pi sonini hisoblashim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Pi sonini hisoblashim$$, $$Doira haqidagi risolamda pi sonini o'n olti xona aniqlikda hisoblab chiqqanman. Qariyb ikki asr davomida hech kim bu natijadan o'zib ketolmagan.$$,
       $$["pi soni", "doira", "hisob", "aniqlik", "rekord"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Koshiy» maqolasi$$,
       TRUE,
       $$G'iyosiddin Koshiy pi sonini qanday aniqlikda hisoblagan?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | O'nli kasrlar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'nli kasrlar$$, $$Men o'nli kasrlar nazariyasini mukammal ishlab chiqib, ularni hisob-kitobda keng qo'llaganman. Sen maktabda o'rganadigan o'nli kasrlar tarixi mening asarlarimga borib taqaladi.$$,
       $$["o'nli kasr", "matematika", "hisob", "kashfiyot"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Koshiy» maqolasi$$,
       TRUE,
       $$G'iyosiddin Koshiy matematikada qaysi kashfiyoti bilan mashhur?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | Bir daraja sinusi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bir daraja sinusi$$, $$Bir daraja yoyning sinusini juda yuqori aniqlikda hisoblash usulini topganman. Bu o'sha zamon astronomiyasi uchun juda muhim masala edi.$$,
       $$["sinus", "bir daraja", "trigonometriya", "usul"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Koshiy» maqolasi$$,
       TRUE,
       $$G'iyosiddin Koshiy trigonometriyada qaysi murakkab masalani yechgan?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | Rasadxona boshlig'i
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Rasadxona boshlig'i$$, $$Ulug'bek Samarqand rasadxonasidagi ishlarni menga ishonib topshirgan — men rasadxonaning birinchi boshlig'i bo'lganman.$$,
       $$["rasadxona", "boshliq", "ulug'bek", "samarqand"]$$::jsonb,
       $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$,
       TRUE,
       $$G'iyosiddin Koshiy Samarqand rasadxonasida qanday lavozimda ishlagan?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | Otamga maktublarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Otamga maktublarim$$, $$Samarqanddan Koshondagi otamga maktublar yozib turganman. Ularda Ulug'bek va Samarqand olimlarining ilmiy hayotini batafsil ta'riflaganman. Bu maktublar bizgacha yetib kelgan.$$,
       $$["maktub", "otam", "samarqand", "ilmiy hayot"]$$::jsonb,
       $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$,
       TRUE,
       $$G'iyosiddin Koshiyning otasiga yozgan maktublari nega qimmatli hisoblanadi?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | Ixtiro qilgan asbobim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ixtiro qilgan asbobim$$, $$Sayyoralarning osmondagi holatini hisoblab beradigan maxsus asbob ixtiro qilganman va uni asarimda batafsil ta'riflaganman.$$,
       $$["asbob", "ixtiro", "sayyoralar", "astronomiya"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Koshiy» maqolasi$$,
       TRUE,
       $$G'iyosiddin Koshiy qanday asbob ixtiro qilgan?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- giyosiddin-koshiy | Ulug'bekning ta'rifi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ulug'bekning ta'rifi$$, $$Ulug'bek o'zining mashhur «Zij» asari muqaddimasida meni hurmat bilan tilga olgan va bilimimni yuksak baholagan.$$,
       $$["ulug'bek", "zij", "baho", "hurmat"]$$::jsonb,
       $$Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren)$$,
       TRUE,
       $$Ulug'bek o'z «Zij» asarida G'iyosiddin Koshiy haqida qanday fikr bildirgan?$$
  FROM heroes h WHERE h.slug = 'giyosiddin-koshiy';

-- halima-nosirova | Ilk sahna yillarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilk sahna yillarim$$, $$Bokuda o'qib qaytganimdan so'ng Toshkentdagi o'zbek musiqali drama teatrida aktrisa bo'lib ishlay boshlaganman.$$,
       $$["teatr", "musiqali drama", "toshkent", "aktrisa"]$$::jsonb,
       $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$,
       TRUE,
       $$Halima Nosirova Bokudan qaytgach qayerda ishlay boshlagan?$$
  FROM heroes h WHERE h.slug = 'halima-nosirova';

-- halima-nosirova | Navoiy teatrida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Navoiy teatrida$$, $$Ko'p yillar davomida Alisher Navoiy nomidagi opera va balet teatrida yakkaxon xonanda bo'lib xizmat qilganman.$$,
       $$["navoiy teatri", "opera", "yakkaxon", "xonanda"]$$::jsonb,
       $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$,
       TRUE,
       $$Halima Nosirova qaysi teatrda yakkaxon xonanda bo'lgan?$$
  FROM heroes h WHERE h.slug = 'halima-nosirova';

-- halima-nosirova | Layli partiyam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Layli partiyam$$, $$«Layli va Majnun» operasida bosh qahramon Layli partiyasini kuylaganman.$$,
       $$["layli va majnun", "opera", "layli", "partiya"]$$::jsonb,
       $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$,
       TRUE,
       $$Halima Nosirova «Layli va Majnun» operasida qaysi partiyani kuylagan?$$
  FROM heroes h WHERE h.slug = 'halima-nosirova';

-- halima-nosirova | «Gulsara»da rolim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Gulsara»da rolim$$, $$«Gulsara» musiqali dramasida bosh rol — Gulsara obrazini ijro etganman.$$,
       $$["gulsara", "musiqali drama", "bosh rol", "obraz"]$$::jsonb,
       $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$,
       TRUE,
       $$Halima Nosirova «Gulsara» musiqali dramasida qanday rolni o'ynagan?$$
  FROM heroes h WHERE h.slug = 'halima-nosirova';

-- halima-nosirova | Opera maktabim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Opera maktabim$$, $$O'zbek opera san'atida o'z ijro maktabimni yaratganman. Shuning uchun meni «o'zbek operasining birinchi yulduzi» deb atashadi.$$,
       $$["opera maktabi", "birinchi yulduz", "san'at"]$$::jsonb,
       $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$,
       TRUE,
       $$Halima Nosirovani nima uchun o'zbek operasining birinchi yulduzi deb atashadi?$$
  FROM heroes h WHERE h.slug = 'halima-nosirova';

-- halima-nosirova | Xonanda va aktrisa
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xonanda va aktrisa$$, $$Men ham xonanda, ham aktrisa bo'lganman: opera sahnasida kuylaganman, spektakl va kinolarda rol o'ynaganman.$$,
       $$["xonanda", "aktrisa", "sahna", "iste'dod"]$$::jsonb,
       $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$,
       TRUE,
       $$Halima Nosirova san'atning qaysi turlarida ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'halima-nosirova';

-- halima-nosirova | Uzoq umrim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Uzoq umrim$$, $$Men to'qson yil umr ko'rib, 2003-yilda olamdan o'tganman. Qo'shiqlarim esa hamon yangramoqda.$$,
       $$["umr", "2003", "to'qson yil", "xotira"]$$::jsonb,
       $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$,
       TRUE,
       $$Halima Nosirova necha yil umr ko'rgan?$$
  FROM heroes h WHERE h.slug = 'halima-nosirova';

-- halima-xudoyberdiyeva | She'riy to'plamlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$She'riy to'plamlarim$$, $$«Oq olmalar», «Suyanch tog'larim» kabi she'riy to'plamlarim nashr etilgan.$$,
       $$["to'plam", "oq olmalar", "suyanch tog'larim", "kitob"]$$::jsonb,
       $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$,
       TRUE,
       $$Halima Xudoyberdiyevaning qaysi she'riy to'plamlari mashhur?$$
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';

-- halima-xudoyberdiyeva | «Muqaddas ayol»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Muqaddas ayol»$$, $$«Muqaddas ayol» nomli she'riy kitobim o'zbek ayolining go'zal fazilatlariga bag'ishlangan.$$,
       $$["muqaddas ayol", "kitob", "ayol", "she'r"]$$::jsonb,
       $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$,
       TRUE,
       $$Halima Xudoyberdiyevaning «Muqaddas ayol» kitobi kimga bag'ishlangan?$$
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';

-- halima-xudoyberdiyeva | She'riyatim mavzusi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$She'riyatim mavzusi$$, $$She'rlarimda o'zbek ayolining orzu-armonlarini, Vatanga muhabbat va sadoqatni kuylaganman.$$,
       $$["mavzu", "ayol", "vatan", "she'riyat"]$$::jsonb,
       $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$,
       TRUE,
       $$Halima Xudoyberdiyeva she'rlarida asosan nimalarni kuylagan?$$
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';

-- halima-xudoyberdiyeva | Olovli satrlar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Olovli satrlar$$, $$She'rlarim dadil va ehtirosli bo'lgani uchun meni «olovli satrlar sohibasi» deb atashgan.$$,
       $$["olovli satrlar", "ta'rif", "shoira", "dadil"]$$::jsonb,
       $$UZA.uz: «Olovli satrlar sohibasi» maqolasi$$,
       TRUE,
       $$Halima Xudoyberdiyevani qanday ta'rif bilan atashgan?$$
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';

-- halima-xudoyberdiyeva | Ismimning ma'nosi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ismimning ma'nosi$$, $$«Halima» ismi arabchadan olingan bo'lib, «yumshoq tabiatli, mehribon» degan ma'noni bildiradi.$$,
       $$["ism", "halima", "ma'no", "mehribon"]$$::jsonb,
       $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi$$,
       TRUE,
       $$Halima Xudoyberdiyeva ismining ma'nosi nima?$$
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';

-- halima-xudoyberdiyeva | Yozuvchilar uyushmasida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yozuvchilar uyushmasida$$, $$Men O'zbekiston Yozuvchilar uyushmasining a'zosi bo'lganman va adabiy hayotda faol qatnashganman.$$,
       $$["yozuvchilar uyushmasi", "a'zo", "adabiyot"]$$::jsonb,
       $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi$$,
       TRUE,
       $$Halima Xudoyberdiyeva qaysi ijodiy uyushma a'zosi bo'lgan?$$
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';

-- halima-xudoyberdiyeva | Umrimning oxiri
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 2018-yilda vafot etganman. She'rlarim esa bugun ham el orasida yashab kelmoqda.$$,
       $$["vafot", "2018", "xotira"]$$::jsonb,
       $$UZA.uz: «Olovli satrlar sohibasi» maqolasi$$,
       TRUE,
       $$Halima Xudoyberdiyeva qachon vafot etgan?$$
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';

-- TOTAL: 38

-- ===================== h_af.sql =====================

-- husayn-boyqaro | Temuriylar shajaram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Temuriylar shajaram$$, $$Men temuriylar xonadonidanman: shajaram Umarshayx Mirzo orqali sohibqiron Amir Temurga borib taqaladi.$$,
       $$["temur", "avlod", "shajara", "umarshayx", "temuriylar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Husayn Boyqaro» maqolasi$$,
       TRUE,
       $$Husayn Boyqaro qaysi sulola vakili bo'lgan?$$
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';

-- husayn-boyqaro | Turkiy tilda she'rlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Turkiy tilda she'rlarim$$, $$She'rlarimni ona tilim — turkiy tilda bitganman. Bu tilning go'zalligi va boyligiga chin dildan ishonganman.$$,
       $$["turkiy", "ona tili", "she'r", "g'azal"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$,
       TRUE,
       $$Husayn Boyqaro she'rlarini qaysi tilda yozgan?$$
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';

-- husayn-boyqaro | «Risola» asarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Risola» asarim$$, $$Nasrda «Risola» nomli asar yozganman. Unda ona tilimiz va zamondoshlarim ijodini, ayniqsa do'stim Alisher Navoiyning xizmatlarini yuksak baholaganman.$$,
       $$["risola", "nasr", "asar", "navoiy"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$,
       TRUE,
       $$Husayn Boyqaro nasrda qanday asar yozgan?$$
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';

-- husayn-boyqaro | Jomiyga hurmatim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Jomiyga hurmatim$$, $$Saroyimda buyuk shoir Abdurahmon Jomiy katta hurmatga ega edi. Men uni ustoz deb bilib, maslahatlariga quloq tutganman.$$,
       $$["jomiy", "shoir", "hirot", "ustoz", "hurmat"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Husayn Boyqaro» maqolasi$$,
       TRUE,
       $$Husayn Boyqaro saroyida qaysi buyuk shoir katta hurmatga ega bo'lgan?$$
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';

-- husayn-boyqaro | Saroyimdagi tarixchilar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Saroyimdagi tarixchilar$$, $$Mening davrimda Hirotda mashhur tarixchilar Mirxond va Xondamir ijod qilgan. Ular yozgan kitoblar o'tmish voqealarini bugungacha yetkazgan.$$,
       $$["mirxond", "xondamir", "tarixchi", "hirot", "kitob"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Husayn Boyqaro» maqolasi$$,
       TRUE,
       $$Husayn Boyqaro davrida Hirotda qaysi mashhur tarixchilar ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';

-- husayn-boyqaro | Navoiyga ishonchim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Navoiyga ishonchim$$, $$Taxtga chiqqach, maktabdosh do'stim Alisher Navoiyni Hirotga chaqirib, davlatning yuksak lavozimlariga tayinladim. U menga eng ishonchli maslahatchi bo'ldi.$$,
       $$["navoiy", "lavozim", "maslahatchi", "ishonch", "hirot"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506)$$,
       TRUE,
       $$Husayn Boyqaro taxtga chiqqach, Alisher Navoiyni qayerga chaqirib, qanday vazifalarga tayinlagan?$$
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';

-- husayn-boyqaro | «Majolis un-nafois»da men
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Majolis un-nafois»da men$$, $$Do'stim Alisher Navoiy «Majolis un-nafois» asarida menga alohida o'rin ajratgan va she'rlarimni yuksak baholagan.$$,
       $$["majolis un-nafois", "navoiy", "tazkira", "baho"]$$::jsonb,
       $$Alisher Navoiy, «Majolis un-nafois»$$,
       TRUE,
       $$Alisher Navoiyning qaysi asarida Husayn Boyqaro ijodiga alohida o'rin berilgan?$$
  FROM heroes h WHERE h.slug = 'husayn-boyqaro';

-- ibn-sino | Yevropada nomim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yevropada nomim$$, $$Yevropada meni «Avitsenna» deb atashadi. Asarlarim lotin tiliga tarjima qilinib, u yerdagi shifokorlarga saboq bergan.$$,
       $$["avitsenna", "yevropa", "lotin", "nom", "tarjima"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ibn Sino» maqolasi$$,
       TRUE,
       $$Abu Ali ibn Sino Yevropada qanday nom bilan mashhur?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | Amirni davolaganim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Amirni davolaganim$$, $$Yoshligimda Buxoro amiri Nuh ibn Mansurni davolaganman. Minnatdorchilik sifatida menga saroyning boy kutubxonasidan foydalanishga ruxsat berilgan.$$,
       $$["amir", "nuh ibn mansur", "davolash", "kutubxona", "buxoro"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Abu Ali ibn Sino (980–1037)$$,
       TRUE,
       $$Abu Ali ibn Sino yoshligida qaysi hukmdorni davolagan va buning evaziga nima olgan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | Ustozim Notiliy
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ustozim Notiliy$$, $$Bolaligimda olim Abu Abdulloh Notiliy menga mantiq va boshqa ilmlarni o'rgatgan. Tez orada savollarim bilan ustozimni ham hayratda qoldirganman.$$,
       $$["notiliy", "ustoz", "mantiq", "bolalik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ibn Sino» maqolasi$$,
       TRUE,
       $$Abu Ali ibn Sinoning bolalikdagi ustozi kim bo'lgan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | Forobiy kitobi yordami
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Forobiy kitobi yordami$$, $$Arastuning «Metafizika» asarini qayta-qayta o'qib ham tushunolmagan edim. Abu Nasr Forobiyning sharh kitobi qo'limga tushgach, hammasi oydinlashdi.$$,
       $$["forobiy", "arastu", "metafizika", "sharh", "falsafa"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Abu Ali ibn Sino (980–1037)$$,
       TRUE,
       $$Abu Ali ibn Sino Arastuning «Metafizika» asarini kimning kitobi yordamida tushungan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | «Donishnoma» asarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Donishnoma» asarim$$, $$Fors tilida «Donishnoma» nomli asar yozganman. Unda falsafa, mantiq va tabiat ilmlarini sodda tilda bayon qilganman.$$,
       $$["donishnoma", "fors tili", "falsafa", "kitob"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ibn Sino» maqolasi$$,
       TRUE,
       $$Abu Ali ibn Sino fors tilida qaysi yirik asarini yozgan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | Tibbiy dostonim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tibbiy dostonim$$, $$Tibbiyot ilmini yodlash oson bo'lsin deb, «Urjuza» nomli she'riy asar bitganman. Unda davolash qoidalarini nazm bilan bayon qilganman.$$,
       $$["urjuza", "she'r", "tibbiyot", "nazm"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Abu Ali ibn Sino (980–1037)$$,
       TRUE,
       $$Abu Ali ibn Sino tibbiyotga oid qanday she'riy asar yozgan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | Yurak dorilari kitobim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yurak dorilari kitobim$$, $$Yurak dorilariga bag'ishlangan maxsus risola yozganman. Unda yurakni quvvatlaydigan dorilar va kayfiyatning salomatlikka ta'sirini tushuntirganman.$$,
       $$["yurak", "dori", "risola", "salomatlik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ibn Sino» maqolasi$$,
       TRUE,
       $$Abu Ali ibn Sino yurak dorilari haqida qanday asar yozgan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | Tomir urishidan tashxis
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tomir urishidan tashxis$$, $$Bemorning tomir urishini sinchiklab tinglab, kasallik sababini aniqlaganman. Tomir urishi hatto insonning his-tuyg'ularidan ham xabar berishini yozganman.$$,
       $$["tomir", "puls", "tashxis", "bemor", "usul"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Abu Ali ibn Sino (980–1037)$$,
       TRUE,
       $$Abu Ali ibn Sino bemorlarga tashxis qo'yishda qaysi usuldan foydalangan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | Hamadonda vazirligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Hamadonda vazirligim$$, $$Umrimning bir qismini Hamadon shahrida o'tkazdim: u yerda hukmdorni davolab, vazir lavozimida ham xizmat qilganman.$$,
       $$["hamadon", "vazir", "lavozim", "xizmat"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ibn Sino» maqolasi$$,
       TRUE,
       $$Abu Ali ibn Sino Hamadonda qanday lavozimda ishlagan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ibn-sino | Maqbaram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Maqbaram$$, $$Hamadon shahrida maqbaram bor. Uni ko'rgani dunyoning turli burchaklaridan odamlar keladi.$$,
       $$["maqbara", "hamadon", "xotira", "ziyorat"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ibn Sino» maqolasi$$,
       TRUE,
       $$Abu Ali ibn Sino maqbarasi qaysi shaharda joylashgan?$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- imom-al-buxoriy | To'liq ismim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$To'liq ismim$$, $$To'liq ismim — Muhammad ibn Ismoil al-Buxoriy. «Buxoriy» nisbam ona shahrim Buxoro nomidan olingan.$$,
       $$["ism", "muhammad ibn ismoil", "nisba", "buxoro"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Imom al-Buxoriy» maqolasi$$,
       TRUE,
       $$Imom al-Buxoriyning to'liq ismi qanday bo'lgan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | Onamning duosi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Onamning duosi$$, $$Rivoyatlarga ko'ra, bolaligimda ko'zlarim zaiflashib qolgan, onamning chin dildan qilgan duolari bilan shifo topganman.$$,
       $$["ona", "duo", "ko'z", "shifo", "rivoyat"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Imom al-Buxoriy (810–870)$$,
       TRUE,
       $$Rivoyatlarga ko'ra, Imom al-Buxoriy bolaligida qanday shifo topgan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | Ilmga ilk qadamim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilmga ilk qadamim$$, $$Hadislarni yod olishni taxminan o'n yoshimda boshlaganman. Buxorodagi ustozlarim darslarida astoydil qatnashganman.$$,
       $$["bolalik", "hadis", "yodlash", "ustoz", "buxoro"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Imom al-Buxoriy (810–870)$$,
       TRUE,
       $$Imom al-Buxoriy hadis o'rganishni taxminan necha yoshida boshlagan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | Makkaga borishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Makkaga borishim$$, $$O'n olti yoshimda onam va akam bilan haj safariga borganman. So'ng Makkada qolib, ilm olishni davom ettirganman.$$,
       $$["makka", "haj", "safar", "ona", "aka"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Imom al-Buxoriy» maqolasi$$,
       TRUE,
       $$Imom al-Buxoriy necha yoshida haj safariga borgan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | Bag'dod ulamolari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bag'dod ulamolari$$, $$Bag'dodda zamonamning yirik olimlari bilan uchrashganman. Mashhur olim Ahmad ibn Hanbal bilan suhbatlar qurib, undan ilm o'rganganman.$$,
       $$["bag'dod", "ahmad ibn hanbal", "olim", "suhbat"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Imom al-Buxoriy (810–870)$$,
       TRUE,
       $$Imom al-Buxoriy Bag'dodda qaysi mashhur olim bilan muloqotda bo'lgan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | «Al-Adab al-mufrad»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Al-Adab al-mufrad»$$, $$«Al-Adab al-mufrad» kitobimda odob-axloq, ota-onaga hurmat va yaxshi xulq haqidagi hadislarni to'plaganman.$$,
       $$["al-adab al-mufrad", "odob", "axloq", "kitob"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Imom al-Buxoriy» maqolasi$$,
       TRUE,
       $$Imom al-Buxoriyning odob-axloqqa bag'ishlangan kitobi qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | «At-Tarix al-kabir»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«At-Tarix al-kabir»$$, $$«At-Tarix al-kabir» asarimda hadis rivoyat qilgan minglab kishilarning hayoti haqida ma'lumot berganman. Bu kitob olimlarga roviylarni o'rganishda yordam beradi.$$,
       $$["at-tarix al-kabir", "tarix", "roviy", "asar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Imom al-Buxoriy» maqolasi$$,
       TRUE,
       $$Imom al-Buxoriyning «At-Tarix al-kabir» asari nimaga bag'ishlangan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | Shogirdlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shogirdlarim$$, $$Shogirdlarim orasida keyinchalik mashhur muhaddis bo'lgan Muslim ibn Hajjoj va Abu Iso at-Termiziy ham bor edi.$$,
       $$["shogird", "muslim", "termiziy", "muhaddis"]$$::jsonb,
       $$Ziyouz.com — ensiklopedik bo'lim: Imom al-Buxoriy (810–870)$$,
       TRUE,
       $$Imom al-Buxoriyning mashhur shogirdlari kimlar bo'lgan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | O'n olti yillik mehnatim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'n olti yillik mehnatim$$, $$«Al-Jome' as-Sahih» to'plamimni o'n olti yil davomida tuzganman. Bu yillar davomida sabr va mehnat mening eng yaqin hamrohlarim bo'ldi.$$,
       $$["sahih", "o'n olti yil", "mehnat", "sabr"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Imom al-Buxoriy» maqolasi$$,
       TRUE,
       $$Imom al-Buxoriy «Al-Jome' as-Sahih» to'plamini necha yil davomida tuzgan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- imom-al-buxoriy | Yodgorlik majmuam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yodgorlik majmuam$$, $$Samarqand yaqinidagi qabrim ustida 1998-yilda katta yodgorlik majmuasi barpo etilgan. Bugun u yerga dunyoning turli mamlakatlaridan ziyoratchilar keladi.$$,
       $$["yodgorlik", "majmua", "samarqand", "1998", "ziyorat"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Imom al-Buxoriy» maqolasi$$,
       TRUE,
       $$Imom al-Buxoriy xotirasiga bag'ishlangan yodgorlik majmuasi qachon va qayerda barpo etilgan?$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

-- ishoqxon-ibrat | Taxallusim «Ibrat»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Taxallusim «Ibrat»$$, $$Asl ismim — Is'hoqxon. «Ibrat» — mening taxallusim bo'lib, «saboq, namuna» degan ma'noni bildiradi.$$,
       $$["taxallus", "ibrat", "ism", "ma'no"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$,
       TRUE,
       $$Is'hoqxon to'raning «Ibrat» taxallusi qanday ma'noni bildiradi?$$
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';

-- ishoqxon-ibrat | Qozilik xizmatim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qozilik xizmatim$$, $$O'z yurtim To'raqo'rg'onda qozi bo'lib xizmat qilganman. Odamlarning arz-dodini adolat bilan hal etishga intilganman.$$,
       $$["qozi", "to'raqo'rg'on", "adolat", "xizmat"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$,
       TRUE,
       $$Is'hoqxon Ibrat o'z yurti To'raqo'rg'onda qanday lavozimda xizmat qilgan?$$
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';

-- ishoqxon-ibrat | «Jome' ul-xutut» kitobim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Jome' ul-xutut» kitobim$$, $$«Jome' ul-xutut» kitobimda dunyo xalqlari yozuvlarining tarixini bayon qilganman. Bu kitobni o'z bosmaxonamda chop ettirganman.$$,
       $$["jome' ul-xutut", "yozuv", "tarix", "kitob"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$,
       TRUE,
       $$Is'hoqxon Ibratning «Jome' ul-xutut» asari nima haqida?$$
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';

-- ishoqxon-ibrat | «Tarixi Farg'ona»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Tarixi Farg'ona»$$, $$«Tarixi Farg'ona» asarimda ona yurtim Farg'ona vodiysining o'tmishini yozib qoldirganman.$$,
       $$["tarixi farg'ona", "farg'ona", "tarix", "asar"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$,
       TRUE,
       $$Is'hoqxon Ibrat qaysi asarida Farg'ona vodiysi tarixini yoritgan?$$
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';

-- ishoqxon-ibrat | Gazetalardagi maqolalarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Gazetalardagi maqolalarim$$, $$Maqolalarim «Turkiston viloyatining gazeti» kabi nashrlarda bosilgan. Ularda xalqni ilm-ma'rifatga chaqirganman.$$,
       $$["gazeta", "maqola", "matbuot", "ma'rifat"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$,
       TRUE,
       $$Is'hoqxon Ibrat maqolalari qaysi gazetada chop etilgan?$$
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';

-- ishoqxon-ibrat | She'riy ijodim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$She'riy ijodim$$, $$She'rlar ham yozganman: ularda bolalar va yoshlarni ilm olishga, kasb-hunar o'rganishga chaqirganman.$$,
       $$["she'r", "ijod", "ilm", "yoshlar"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937)$$,
       TRUE,
       $$Is'hoqxon Ibrat she'rlarida yoshlarni nimaga chaqirgan?$$
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';

-- ishoqxon-ibrat | Uy-muzeyim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Uy-muzeyim$$, $$Bugun To'raqo'rg'onda mening xotiramga bag'ishlangan muzey faoliyat yuritadi. Yurtimdagi maktab va ko'chalarga ham nomim berilgan.$$,
       $$["muzey", "to'raqo'rg'on", "xotira", "nom"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ibrat» maqolasi$$,
       TRUE,
       $$Is'hoqxon Ibrat xotirasiga bag'ishlangan muzey qayerda joylashgan?$$
  FROM heroes h WHERE h.slug = 'ishoqxon-ibrat';

-- ismoil-somoniy | Oilam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oilam$$, $$Otam — Ahmad ibn Asad, Somoniylar xonadonining hukmdorlaridan edi. Akam Nasr Samarqandda hukmronlik qilgan, meni esa Buxoroga yuborgan.$$,
       $$["ota", "ahmad ibn asad", "aka", "nasr", "oila"]$$::jsonb,
       $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$,
       TRUE,
       $$Ismoil Somoniyning otasi va akasi kimlar bo'lgan?$$
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';

-- ismoil-somoniy | Poytaxtim Buxoro
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Poytaxtim Buxoro$$, $$Davlatimizning poytaxti Buxoro shahri bo'lgan. Mening davrimda Buxoro obod bo'lib, Sharqning eng go'zal shaharlaridan biriga aylandi.$$,
       $$["poytaxt", "buxoro", "shahar", "davlat"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Somoniylar» maqolasi$$,
       TRUE,
       $$Ismoil Somoniy davlatining poytaxti qaysi shahar bo'lgan?$$
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';

-- ismoil-somoniy | Ilm-fan ravnaqi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilm-fan ravnaqi$$, $$Somoniylar davrida Buxoro ilm-fan va madaniyat markaziga aylandi. Saroy kutubxonasi butun Sharqda dong taratgan.$$,
       $$["ilm", "fan", "madaniyat", "kutubxona", "buxoro"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Somoniylar» maqolasi$$,
       TRUE,
       $$Ismoil Somoniy asos solgan davlat davrida Buxoro qanday markazga aylangan?$$
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';

-- ismoil-somoniy | Kumush dirhamlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kumush dirhamlarim$$, $$Davlatimizda kumush dirhamlar zarb etilgan. Bu tangalar savdo karvonlari bilan juda uzoq o'lkalarga — hatto shimoliy mamlakatlarga ham yetib borgan.$$,
       $$["dirham", "tanga", "kumush", "savdo", "karvon"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Somoniylar» maqolasi$$,
       TRUE,
       $$Ismoil Somoniy davlatida zarb etilgan kumush tangalar qayerlargacha yetib borgan?$$
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';

-- ismoil-somoniy | Somoniylar maqbarasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Somoniylar maqbarasi$$, $$Buxoroda sulolamizga atab qurilgan Somoniylar maqbarasi hozirgacha saqlanib qolgan. U pishiq g'ishtdan naqshinkor qilib qurilgan me'morchilik durdonasidir.$$,
       $$["maqbara", "buxoro", "g'isht", "me'morchilik", "yodgorlik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Somoniylar maqbarasi» maqolasi$$,
       TRUE,
       $$Ismoil Somoniy sulolasiga atab Buxoroda qurilgan qanday yodgorlik saqlanib qolgan?$$
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';

-- ismoil-somoniy | Xalifa yorlig'i
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xalifa yorlig'i$$, $$Xuroson uchun kurashdagi g'alabamdan so'ng Bag'dod xalifasi menga yorliq yuborib, meni Movarounnahr va Xuroson hukmdori sifatida tan oldi.$$,
       $$["xalifa", "yorliq", "bag'dod", "xuroson", "movarounnahr"]$$::jsonb,
       $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$,
       TRUE,
       $$Bag'dod xalifasi Ismoil Somoniyni qanday tan olgan?$$
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';

-- ismoil-somoniy | Nomim bugun
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomim bugun$$, $$Bugun qo'shni Tojikistonda pul birligi «somoniy» deb ataladi va mamlakatning eng baland cho'qqisiga nomim berilgan.$$,
       $$["somoniy", "pul", "cho'qqi", "tojikiston", "xotira"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Somoniylar» maqolasi$$,
       TRUE,
       $$Bugungi kunda Ismoil Somoniy nomi qayerlarda saqlanib qolgan?$$
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';

-- TOTAL: 41

-- ===================== h_ag.sql =====================

-- istami-xoqon | Akam Bumin xoqon
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Akam Bumin xoqon$$, $$Men Turk xoqonligiga asos solgan Bumin xoqonning ukasiman. Akam 552-yilda xoqonlikka asos solgan, men esa uning eng yaqin safdoshi bo'lganman.$$,
       $$["bumin", "aka", "turk xoqonligi", "552", "asoschi"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Istami xoqon Turk xoqonligi asoschisi Bumin xoqonning kimi bo'lgan?$$
  FROM heroes h WHERE h.slug = 'istami-xoqon';

-- istami-xoqon | Vizantiyaga elchilik
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Vizantiyaga elchilik$$, $$Men 568-yilda sug'd savdogari Maniax boshchiligidagi elchilarni Vizantiya poytaxti Konstantinopolga yuborganman. Elchilarim imperator huzurida ipak savdosi haqida muzokara olib borgan.$$,
       $$["maniax", "elchi", "vizantiya", "konstantinopol", "568"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turk xoqonligi» maqolasi$$,
       TRUE,
       $$Istami xoqon Vizantiyaga yuborgan elchilarga kim boshchilik qilgan?$$
  FROM heroes h WHERE h.slug = 'istami-xoqon';

-- istami-xoqon | Vizantiya elchisi mehmonimda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Vizantiya elchisi mehmonimda$$, $$Javob tariqasida Vizantiya imperatori menga Zemarx boshchiligida elchilar yuborgan. Men ularni Oltin tog'dagi qarorgohimda kutib olganman.$$,
       $$["zemarx", "vizantiya elchisi", "oltin tog'", "qarorgoh"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turk xoqonligi» maqolasi$$,
       TRUE,
       $$Istami xoqon huzuriga kelgan Vizantiya elchisining ismi nima edi?$$
  FROM heroes h WHERE h.slug = 'istami-xoqon';

-- istami-xoqon | Amudaryo — chegara
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Amudaryo — chegara$$, $$Eftallar davlati yengilganidan so'ng Amudaryo Turk xoqonligi bilan Eron o'rtasidagi chegara bo'lib qolgan.$$,
       $$["amudaryo", "chegara", "eron", "eftallar"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Istami xoqon davrida Turk xoqonligi bilan Eron o'rtasida qaysi daryo chegara bo'lgan?$$
  FROM heroes h WHERE h.slug = 'istami-xoqon';

-- istami-xoqon | Bitiktoshlarda nomim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bitiktoshlarda nomim$$, $$Nomim qadimgi turkiy bitiktoshlarda saqlanib qolgan: O'rxun daryosi bo'yidagi «Kultegin» bitigida Bumin xoqon bilan mening nomim birga tilga olinadi.$$,
       $$["bitiktosh", "kultegin", "o'rxun", "yozuv"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «O'rxun-Enasoy yozuvlari» maqolasi$$,
       TRUE,
       $$Istami xoqonning nomi qaysi qadimgi turkiy bitiktoshda tilga olingan?$$
  FROM heroes h WHERE h.slug = 'istami-xoqon';

-- istami-xoqon | O'g'lim Tardu
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'g'lim Tardu$$, $$Mendan so'ng xoqonlikning g'arbiy qismini o'g'lim Tardu boshqargan.$$,
       $$["tardu", "o'g'il", "voris", "g'arbiy qism"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turk xoqonligi» maqolasi$$,
       TRUE,
       $$Istami xoqondan keyin xoqonlikning g'arbiy qismini kim boshqargan?$$
  FROM heroes h WHERE h.slug = 'istami-xoqon';

-- istami-xoqon | Yashagan davrim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yashagan davrim$$, $$Men VI asrda yashab o'tganman — bu davrda Turk xoqonligi Osiyoning eng qudratli davlatlaridan biriga aylangan.$$,
       $$["vi asr", "davr", "qudratli davlat"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Istami xoqon qaysi asrda yashab o'tgan?$$
  FROM heroes h WHERE h.slug = 'istami-xoqon';

-- jaloliddin-manguberdi | Otamning vasiyati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Otamning vasiyati$$, $$Otam Alouddin Muhammad umrining so'nggi kunlarida Kaspiy dengizidagi orolda meni taxt vorisi deb e'lon qilgan.$$,
       $$["vasiyat", "voris", "kaspiy", "orol", "taxt"]$$::jsonb,
       $$Shihobiddin Muhammad an-Nasaviy — «Sulton Jaloliddin Manguberdi siyrati»$$,
       TRUE,
       $$Jaloliddin Manguberdini otasi qayerda taxt vorisi deb e'lon qilgan?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | Ismimning ma'nosi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ismimning ma'nosi$$, $$«Manguberdi» degan nomim «Tangri bergan» degan ma'noni anglatadi.$$,
       $$["ism", "ma'no", "manguberdi", "tangri bergan"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Jaloliddin Manguberdi» maqolasi$$,
       TRUE,
       $$Jaloliddin Manguberdi nomidagi «Manguberdi» so'zi qanday ma'noni anglatadi?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | G'azna o'lkasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$G'azna o'lkasi$$, $$Otam menga G'azna o'lkasini boshqarishni topshirgan edi. Keyinchalik o'sha yerda mo'g'ullarga qarshi katta qo'shin to'pladim.$$,
       $$["g'azna", "o'lka", "qo'shin", "boshqaruv"]$$::jsonb,
       $$Shihobiddin Muhammad an-Nasaviy — «Sulton Jaloliddin Manguberdi siyrati»$$,
       TRUE,
       $$Jaloliddin Manguberdiga otasi qaysi o'lkani boshqarishni topshirgan?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | Poytaxtimiz Gurganj
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Poytaxtimiz Gurganj$$, $$Xorazmshohlar davlatining poytaxti Gurganj shahri edi — u o'z davrining eng obod va gavjum shaharlaridan biri bo'lgan.$$,
       $$["gurganj", "poytaxt", "xorazm", "shahar"]$$::jsonb,
       $$O'zbekiston tarixi, 6-sinf darsligi$$,
       TRUE,
       $$Jaloliddin Manguberdi davlati — Xorazmshohlar davlatining poytaxti qaysi shahar edi?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | Kotibim Nasaviy
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kotibim Nasaviy$$, $$Shaxsiy kotibim Shihobiddin Muhammad an-Nasaviy men haqimda kitob yozib qoldirgan. Bu asar hayotim haqidagi eng muhim manbalardan biridir.$$,
       $$["nasaviy", "kotib", "kitob", "manba"]$$::jsonb,
       $$Shihobiddin Muhammad an-Nasaviy — «Sulton Jaloliddin Manguberdi siyrati»$$,
       TRUE,
       $$Jaloliddin Manguberdi hayoti haqida kitob yozgan shaxsiy kotibi kim edi?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | Tabrizda hukmronligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tabrizda hukmronligim$$, $$Kurashimning so'nggi yillarida Ozarbayjon hududida hukmronlik qildim; Tabriz shahri poytaxtim bo'lgan.$$,
       $$["tabriz", "ozarbayjon", "hukmronlik", "so'nggi yillar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Jaloliddin Manguberdi» maqolasi$$,
       TRUE,
       $$Jaloliddin Manguberdi umrining so'nggi yillarida qaysi shaharni o'ziga poytaxt qilgan?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | Umrimning yakuni
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Umrimning yakuni$$, $$1231-yilda Kurdiston tog'larida hayotdan ko'z yumganman. Nomim esa Vatan himoyachisi sifatida xalq xotirasida saqlanib qolgan.$$,
       $$["1231", "kurdiston", "xotira", "vafot"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Jaloliddin Manguberdi» maqolasi$$,
       TRUE,
       $$Jaloliddin Manguberdi qaysi yilda vafot etgan?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | 800 yillik tantanalari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$800 yillik tantanalari$$, $$1999-yilda O'zbekistonda tavalludimning 800 yilligi keng nishonlangan.$$,
       $$["800 yillik", "1999", "tantana", "yubiley"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Jaloliddin Manguberdi» maqolasi$$,
       TRUE,
       $$Jaloliddin Manguberdi tavalludining 800 yilligi O'zbekistonda qaysi yili nishonlangan?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | Urganchdagi yodgorligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Urganchdagi yodgorligim$$, $$Xorazm viloyatining Urganch shahrida menga bag'ishlangan yodgorlik majmuasi barpo etilgan.$$,
       $$["urganch", "yodgorlik", "majmua", "xorazm", "haykal"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Jaloliddin Manguberdi» maqolasi$$,
       TRUE,
       $$Jaloliddin Manguberdiga bag'ishlangan yodgorlik majmuasi qaysi shaharda barpo etilgan?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- jaloliddin-manguberdi | Nomimdagi orden
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomimdagi orden$$, $$2000-yilda O'zbekistonda «Jaloliddin Manguberdi» ordeni ta'sis etilgan. U Vatan himoyasida jasorat ko'rsatgan harbiylarga beriladi.$$,
       $$["orden", "2000", "mukofot", "vatan himoyasi"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Jaloliddin Manguberdi ordeni» maqolasi$$,
       TRUE,
       $$O'zbekistonda Jaloliddin Manguberdi nomidagi orden qachon ta'sis etilgan?$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- kamoliddin-behzod | Bolaligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bolaligim$$, $$Yoshligimda yetim qolganman. Meni Hirotning mashhur rassomi Mirak Naqqosh o'z tarbiyasiga olib, menga rassomlik sirlarini o'rgatgan.$$,
       $$["yetim", "mirak naqqosh", "tarbiya", "bolalik", "hirot"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Behzod Kamoliddin» maqolasi$$,
       TRUE,
       $$Kamoliddin Behzodni bolaligida qaysi rassom o'z tarbiyasiga olgan?$$
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';

-- kamoliddin-behzod | Navoiy homiyligi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Navoiy homiyligi$$, $$Buyuk shoir Alisher Navoiy menga homiylik qilgan va iste'dodimni qo'llab-quvvatlagan.$$,
       $$["navoiy", "homiy", "qo'llab-quvvatlash", "shoir"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Behzod Kamoliddin» maqolasi$$,
       TRUE,
       $$Kamoliddin Behzodga qaysi buyuk shoir homiylik qilgan?$$
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';

-- kamoliddin-behzod | Saroy kitobxonasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Saroy kitobxonasi$$, $$Hukmdor Husayn Boyqaro meni Hirotdagi saroy kitobxonasiga boshliq etib tayinlagan. U yerda qo'lyozma kitoblarga rasm ishlaydigan eng yaxshi ustalar mehnat qilar edi.$$,
       $$["kitobxona", "husayn boyqaro", "boshliq", "saroy", "qo'lyozma"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Behzod Kamoliddin» maqolasi$$,
       TRUE,
       $$Husayn Boyqaro Kamoliddin Behzodni qaysi lavozimga tayinlagan?$$
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';

-- kamoliddin-behzod | Tabrizdagi yillarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tabrizdagi yillarim$$, $$Umrimning so'nggi yillarini Tabriz shahrida o'tkazganman va u yerdagi saroy kitobxonasiga ham rahbarlik qilganman.$$,
       $$["tabriz", "so'nggi yillar", "rahbarlik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Behzod Kamoliddin» maqolasi$$,
       TRUE,
       $$Kamoliddin Behzod umrining so'nggi yillarini qaysi shaharda o'tkazgan?$$
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';

-- kamoliddin-behzod | «Boburnoma»da nomim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Boburnoma»da nomim$$, $$Zahiriddin Muhammad Bobur «Boburnoma» asarida meni zamonaning eng nozik qalamli musavviri sifatida tilga olgan.$$,
       $$["boburnoma", "bobur", "musavvir", "e'tirof"]$$::jsonb,
       $$Zahiriddin Muhammad Bobur — «Boburnoma»$$,
       TRUE,
       $$Zahiriddin Muhammad Bobur qaysi asarida Kamoliddin Behzodni ta'riflab tilga olgan?$$
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';

-- kamoliddin-behzod | Miniatyura san'ati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Miniatyura san'ati$$, $$Miniatyura — qo'lyozma kitob sahifalariga ishlanadigan mayda va nihoyatda nafis rasmdir. Men ana shu san'atning ustasi bo'lganman.$$,
       $$["miniatyura", "qo'lyozma", "rasm", "san'at"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Miniatyura» maqolasi$$,
       TRUE,
       $$Kamoliddin Behzod qaysi san'at turining ustasi bo'lgan?$$
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';

-- kamoliddin-behzod | Nomimdagi institut
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomimdagi institut$$, $$Toshkentdagi Milliy rassomlik va dizayn instituti mening nomim bilan ataladi — u yerda bo'lajak rassomlar tahsil oladi.$$,
       $$["institut", "toshkent", "rassomlik", "dizayn", "nom"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Behzod Kamoliddin» maqolasi$$,
       TRUE,
       $$Toshkentdagi qaysi oliy o'quv yurti Kamoliddin Behzod nomi bilan ataladi?$$
  FROM heroes h WHERE h.slug = 'kamoliddin-behzod';

-- kanishka | Sulolam asoschisi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Sulolam asoschisi$$, $$Sulolamizga Kadfiz I asos solgan — u kushon urug'i boshchiligida qabilalarni birlashtirib, yagona davlat tuzgan.$$,
       $$["kadfiz", "sulola", "asoschi", "birlashtirish"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Kushon podsholigi» maqolasi$$,
       TRUE,
       $$Kanishka mansub bo'lgan Kushon sulolasiga kim asos solgan?$$
  FROM heroes h WHERE h.slug = 'kanishka';

-- kanishka | Xalqimning ildizlari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xalqimning ildizlari$$, $$Kushon davlati yuechji qabilalari asosida vujudga kelgan; bu haqda qadimgi Xitoy yilnomalarida ma'lumotlar saqlangan.$$,
       $$["yuechji", "qabila", "xitoy yilnomalari", "kelib chiqish"]$$::jsonb,
       $$«Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$Kanishka davlati — Kushon podsholigi qaysi qabilalar asosida vujudga kelgan?$$
  FROM heroes h WHERE h.slug = 'kanishka';

-- kanishka | Rabatak bitigi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Rabatak bitigi$$, $$Afg'onistondagi Rabatak degan joydan topilgan tosh bitigda mening nomim va ajdodlarim ro'yxati yozilgan. Bitig baqtriya tilida, yunon harflari bilan bitilgan.$$,
       $$["rabatak", "bitig", "baqtriya tili", "yunon harflari", "ajdodlar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Kushon podsholigi» maqolasi$$,
       TRUE,
       $$Kanishka va uning ajdodlari haqida ma'lumot beruvchi Rabatak bitigi qaysi tilda yozilgan?$$
  FROM heroes h WHERE h.slug = 'kanishka';

-- kanishka | Gandxara san'ati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Gandxara san'ati$$, $$Mening davrimda Gandxara san'ati gullab-yashnagan — unda yunon va hind uslublari uyg'unlashib, go'zal haykallar yaratilgan.$$,
       $$["gandxara", "san'at", "haykal", "yunon", "hind"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Gandxara san'ati» maqolasi$$,
       TRUE,
       $$Kanishka davrida gullab-yashnagan, yunon va hind uslublarini uyg'unlashtirgan san'at qanday nomlanadi?$$
  FROM heroes h WHERE h.slug = 'kanishka';

-- kanishka | Mathuradagi haykalim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mathuradagi haykalim$$, $$Hindistonning Mathura shahridan mening tosh haykalim topilgan. Unda «ulug' shoh, shohlar shohi Kanishka» degan yozuv bor.$$,
       $$["mathura", "haykal", "shohlar shohi", "yozuv", "hindiston"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Kushon podsholigi» maqolasi$$,
       TRUE,
       $$Kanishkaning «shohlar shohi» deb yozilgan mashhur haykali qayerdan topilgan?$$
  FROM heroes h WHERE h.slug = 'kanishka';

-- kanishka | Ulkan stupa
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ulkan stupa$$, $$Poytaxtim Purushapurada ulkan buddaviy stupa qurdirganman. Keyinchalik uni ko'rgan sayyohlar hayratlarini yozib qoldirgan.$$,
       $$["stupa", "purushapura", "qurilish", "sayyohlar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Kushon podsholigi» maqolasi$$,
       TRUE,
       $$Kanishka o'z poytaxti Purushapurada qanday ulkan inshoot qurdirgan?$$
  FROM heroes h WHERE h.slug = 'kanishka';

-- kanishka | Rohiblar anjumani
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Rohiblar anjumani$$, $$Buddaviylik tarixiga ko'ra, mening davrimda rohiblarning katta anjumani chaqirilgan va bu dinning muqaddas matnlari tartibga solingan.$$,
       $$["anjuman", "rohiblar", "buddaviylik", "yig'in"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Buddizm» maqolasi$$,
       TRUE,
       $$Kanishka davrida buddaviylik tarixidagi qanday muhim yig'in o'tkazilgan?$$
  FROM heroes h WHERE h.slug = 'kanishka';

-- mahmudxoja-behbudiy | Jadidlar yo'lboshchisi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Jadidlar yo'lboshchisi$$, $$Men Turkistondagi jadidlar — yangilik va ma'rifat tarafdorlarining yo'lboshchilaridan biri bo'lganman.$$,
       $$["jadid", "yo'lboshchi", "ma'rifat", "turkiston"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$,
       TRUE,
       $$Mahmudxo'ja Behbudiy qaysi harakatning yo'lboshchilaridan biri bo'lgan?$$
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';

-- mahmudxoja-behbudiy | Kutubxonam va nashriyotim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kutubxonam va nashriyotim$$, $$Samarqandda kutubxona ochganman va o'z nashriyotimda kitoblar chop ettirganman — bularning bari xalqni ilmli qilish uchun edi.$$,
       $$["kutubxona", "nashriyot", "samarqand", "kitob"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$,
       TRUE,
       $$Mahmudxo'ja Behbudiy Samarqandda xalq ma'rifati uchun nimalar ochgan?$$
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';

-- mahmudxoja-behbudiy | Mashhur shiorim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mashhur shiorim$$, $$Mening «Haq olinur, berilmas!» degan so'zlarim mashhur bo'lib ketgan. Bu bilan xalqni o'z haq-huquqini bilishga chaqirganman.$$,
       $$["haq olinur", "shior", "haq-huquq", "so'z"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$,
       TRUE,
       $$Mahmudxo'ja Behbudiyning mashhur shiori qanday jaranglaydi?$$
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';

-- mahmudxoja-behbudiy | To'rt til lozim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$To'rt til lozim$$, $$«Ikki emas, to'rt til lozim» degan maqolamda yoshlarni to'rt tilni — turkiy, forsiy, arab va rus tillarini o'rganishga chaqirganman.$$,
       $$["to'rt til", "maqola", "til o'rganish", "ikki emas"]$$::jsonb,
       $$Mahmudxo'ja Behbudiy — «Ikki emas, to'rt til lozim» maqolasi («Oyina» jurnali)$$,
       TRUE,
       $$Mahmudxo'ja Behbudiy «Ikki emas, to'rt til lozim» maqolasida qaysi tillarni o'rganishga chaqirgan?$$
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';

-- mahmudxoja-behbudiy | Turkiston muxtoriyati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Turkiston muxtoriyati$$, $$1917-yilda Qo'qonda e'lon qilingan Turkiston muxtoriyatining tuzilishida faol qatnashganman.$$,
       $$["muxtoriyat", "qo'qon", "1917", "turkiston"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$,
       TRUE,
       $$Mahmudxo'ja Behbudiy 1917-yilda Qo'qonda e'lon qilingan qaysi tuzilma ishida faol qatnashgan?$$
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';

-- mahmudxoja-behbudiy | Shahar nomimda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shahar nomimda$$, $$O'tgan asrda Qarshi shahri bir necha yil davomida mening nomim bilan «Behbudiy» deb atalgan.$$,
       $$["qarshi", "shahar", "behbudiy nomi", "xotira"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Behbudiy» maqolasi$$,
       TRUE,
       $$Qaysi shahar bir vaqtlar Mahmudxo'ja Behbudiy nomi bilan atalgan?$$
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';

-- mahmudxoja-behbudiy | Xotiram bugun
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram bugun$$, $$Bugun yurtimizdagi ko'plab ko'chalar va maktablar mening nomim bilan ataladi.$$,
       $$["xotira", "ko'cha", "maktab", "nom"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$,
       TRUE,
       $$Mahmudxo'ja Behbudiy xotirasi bugungi O'zbekistonda qanday saqlanmoqda?$$
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';

-- TOTAL: 38

-- ===================== h_ah.sql =====================

-- mirzo-ulugbek | Bobom bilan bolaligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bobom bilan bolaligim$$, $$Bolaligim bobom Amir Temur saroyida o'tgan. Meni bobomning suyukli xotini — Saroy Mulk xonim (Bibixonim) tarbiyalagan. Bobom bilan uzoq safarlarda ham birga yurganman.$$,
       $$["bolalik", "amir temur", "bibixonim", "saroy mulk xonim", "tarbiya", "saroy"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ulug'bek» maqolasi$$,
       TRUE,
       $$Mirzo Ulug'bek bolaligida kimning tarbiyasida o'sgan?$$
  FROM heroes h WHERE h.slug = 'mirzo-ulugbek';

-- mirzo-ulugbek | Ustozim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ustozim$$, $$Yoshligimda menga mashhur olim Qozizoda Rumiy ustozlik qilgan. U menga matematika va astronomiya ilmlarini o'rgatgan. Keyinchalik u rasadxonamdagi eng yaqin maslakdoshlarimdan biri bo'ldi.$$,
       $$["ustoz", "qozizoda rumiy", "matematika", "astronomiya", "olim"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ulug'bek» maqolasi$$,
       TRUE,
       $$Mirzo Ulug'bekning ustozi qaysi mashhur olim bo'lgan?$$
  FROM heroes h WHERE h.slug = 'mirzo-ulugbek';

-- mirzo-ulugbek | Shogirdim Ali Qushchi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shogirdim Ali Qushchi$$, $$Eng iqtidorli shogirdim Ali Qushchi edi. U rasadxonamda men bilan yelkama-yelka ishlagan. Vafotimdan so'ng u ilmiy merosimni asrab, «Zij» asarimni boshqa mamlakatlarga yetkazgan.$$,
       $$["shogird", "ali qushchi", "zij", "rasadxona", "meros"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ali Qushchi» maqolasi$$,
       TRUE,
       $$Mirzo Ulug'bekning eng mashhur shogirdi kim edi?$$
  FROM heroes h WHERE h.slug = 'mirzo-ulugbek';

-- mirzo-ulugbek | Peshtoqdagi hikmat
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Peshtoqdagi hikmat$$, $$Buxoroda qurdirgan madrasam peshtog'iga «Bilim olishga intilish har bir muslim va muslima uchun farzdir» degan hikmatli so'zlar bitilgan. Men ilmni hamma uchun zarur deb bilganman.$$,
       $$["buxoro", "madrasa", "peshtoq", "bilim", "hikmat", "yozuv"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ulug'bek madrasasi» maqolasi$$,
       TRUE,
       $$Buxorodagi Mirzo Ulug'bek madrasasi peshtog'iga qanday so'zlar bitilgan?$$
  FROM heroes h WHERE h.slug = 'mirzo-ulugbek';

-- mirzo-ulugbek | Tarix kitobim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tarix kitobim$$, $$Men faqat yulduzlar ilmi bilan shug'ullanmaganman. Tarixga oid «Tarixi arba' ulus», ya'ni «To'rt ulus tarixi» nomli asar ham yozganman.$$,
       $$["tarix", "tarixi arba ulus", "to'rt ulus", "asar", "kitob"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ulug'bek» maqolasi$$,
       TRUE,
       $$Mirzo Ulug'bek tarixga oid qaysi asarni yozgan?$$
  FROM heroes h WHERE h.slug = 'mirzo-ulugbek';

-- mirzo-ulugbek | Rasadxonamning qayta topilishi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Rasadxonamning qayta topilishi$$, $$Asrlar o'tib rasadxonam yer ostida ko'milib qolgan edi. 1908-yilda arxeolog Vasiliy Vyatkin Samarqandda uning qoldiqlarini topdi. Bugun o'sha joyda muzey bor — borib ko'rishing mumkin.$$,
       $$["rasadxona", "vyatkin", "1908", "qoldiq", "muzey", "samarqand"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ulug'bek rasadxonasi» maqolasi$$,
       TRUE,
       $$Mirzo Ulug'bek rasadxonasi qoldiqlarini kim va qachon topgan?$$
  FROM heroes h WHERE h.slug = 'mirzo-ulugbek';

-- mirzo-ulugbek | Nomim bugun
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomim bugun$$, $$Bugun Toshkentdagi tumanlardan biri va O'zbekiston Milliy universiteti mening nomim bilan ataladi. Hatto Oydagi kraterlardan biriga ham olimlar mening nomimni berishgan.$$,
       $$["nom", "universitet", "tuman", "oy", "krater", "xotira"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ulug'bek» maqolasi$$,
       TRUE,
       $$Bugun Mirzo Ulug'bek nomi bilan nimalar atalgan?$$
  FROM heroes h WHERE h.slug = 'mirzo-ulugbek';

-- mukarrama-turgunboyeva | «Tanovar» raqsim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Tanovar» raqsim$$, $$Xalqimizning qadimiy «Tanovar» kuyi asosidagi raqs eng sevimli raqslarimdan edi. Uni sahnada ko'p bor ijro etganman va bu raqs nomim bilan bog'lanib qolgan.$$,
       $$["tanovar", "raqs", "kuy", "ijro", "sahna"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turg'unboyeva Mukarrama» maqolasi$$,
       TRUE,
       $$Mukarrama Turg'unboyeva ijrosida mashhur bo'lgan qadimiy o'zbek raqsi qaysi?$$
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';

-- mukarrama-turgunboyeva | «Paxta» raqsim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Paxta» raqsim$$, $$Men paxtakor qizlarning mehnatini raqsda ko'rsatishni orzu qilganman. Shunday qilib «Paxta» raqsi tug'ilgan — unda paxtakorlarning mehnati nafis raqs harakatlari orqali ifodalangan.$$,
       $$["paxta", "raqs", "mehnat", "paxtakor"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turg'unboyeva Mukarrama» maqolasi$$,
       TRUE,
       $$Mukarrama Turg'unboyeva paxtakorlar mehnatiga bag'ishlab qaysi raqsni yaratgan?$$
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';

-- mukarrama-turgunboyeva | Opera teatrida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Opera teatrida$$, $$Men Toshkentdagi Alisher Navoiy nomidagi opera va balet teatrida ishlaganman. U yerda raqsga tushganman va baletmeyster sifatida spektakllarga raqslar sahnalashtirganman.$$,
       $$["teatr", "navoiy teatri", "opera", "baletmeyster", "spektakl"]$$::jsonb,
       $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz$$,
       TRUE,
       $$Mukarrama Turg'unboyeva qaysi teatrda baletmeyster bo'lib ishlagan?$$
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';

-- mukarrama-turgunboyeva | Jahon sahnalarida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Jahon sahnalarida$$, $$«Bahor» ansambli bilan dunyoning ko'plab mamlakatlarida chiqish qilganmiz. Qizlarimizning nafis raqslari o'zbek san'atini butun jahonga tanitgan.$$,
       $$["bahor", "gastrol", "jahon", "chiqish", "ansambl"]$$::jsonb,
       $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari$$,
       TRUE,
       $$Mukarrama Turg'unboyevaning «Bahor» ansambli qayerlarda chiqish qilgan?$$
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';

-- mukarrama-turgunboyeva | O'zbek raqs maktabi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'zbek raqs maktabi$$, $$Meni o'zbek milliy raqs maktabining asoschilaridan biri deb atashadi. Butun umrimni raqs san'atini yuksak professional darajaga ko'tarishga bag'ishlaganman.$$,
       $$["raqs maktabi", "asoschi", "milliy raqs", "san'at"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Turg'unboyeva Mukarrama» maqolasi$$,
       TRUE,
       $$Mukarrama Turg'unboyeva qaysi san'at maktabining asoschilaridan sanaladi?$$
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';

-- mukarrama-turgunboyeva | Uch raqs uslubi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Uch raqs uslubi$$, $$«Bahor» dasturlariga Farg'ona, Xorazm va Buxoro raqs uslublaridagi o'yinlarni kiritganmiz. Har bir uslubning o'ziga xos nozik harakatlari va jozibasi bor.$$,
       $$["farg'ona uslubi", "xorazm", "buxoro", "uslub", "raqs maktablari"]$$::jsonb,
       $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi)$$,
       TRUE,
       $$Mukarrama Turg'unboyeva «Bahor» dasturlariga qaysi raqs uslublarini kiritgan?$$
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';

-- mukarrama-turgunboyeva | Ansamblga berilgan nomim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ansamblga berilgan nomim$$, $$1978-yilda olamdan o'tganman. Xizmatlarim e'tirof etilib, vafotimdan so'ng sevimli «Bahor» ansambliga mening nomim berilgan.$$,
       $$["bahor", "nom", "xotira", "1978"]$$::jsonb,
       $$UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$,
       TRUE,
       $$Mukarrama Turg'unboyeva vafotidan so'ng qaysi ansamblga uning nomi berilgan?$$
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';

-- munavvarqori | «Namuna» maktabim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Namuna» maktabim$$, $$Men ochgan yangi usul maktabi «Namuna» nomi bilan mashhur bo'lgan. Unga boshqa shaharlardan ham muallimlar kelib, dars berish usullarini o'rganib ketishardi.$$,
       $$["namuna", "maktab", "yangi usul", "muallim"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$,
       TRUE,
       $$Munavvarqori Abdurashidxonovning maktabi qanday nom bilan mashhur bo'lgan?$$
  FROM heroes h WHERE h.slug = 'munavvarqori';

-- munavvarqori | Usuli savtiya
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Usuli savtiya$$, $$Maktabimda bolalarni «usuli savtiya», ya'ni tovush usulida o'qitganman. Bu usulda bolalar eski maktabdagidan ancha tez — bir necha oyda o'qish va yozishni o'rganib olishardi.$$,
       $$["usuli savtiya", "tovush usuli", "o'qitish", "savod"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$,
       TRUE,
       $$Munavvarqori Abdurashidxonov bolalarni qanday usulda o'qitgan?$$
  FROM heroes h WHERE h.slug = 'munavvarqori';

-- munavvarqori | «Turon» jamiyati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Turon» jamiyati$$, $$Jadid do'stlarim bilan Toshkentda «Turon» jamiyati ishida faol qatnashganman. Jamiyat teatr tomoshalari va kutubxona orqali xalqni ma'rifatga chorlagan.$$,
       $$["turon", "jamiyat", "teatr", "kutubxona", "ma'rifat"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$,
       TRUE,
       $$Munavvarqori Abdurashidxonov Toshkentdagi qaysi ma'rifiy jamiyat ishida qatnashgan?$$
  FROM heroes h WHERE h.slug = 'munavvarqori';

-- munavvarqori | «Sho'roi Islomiya»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Sho'roi Islomiya»$$, $$1917-yilda Toshkentda tuzilgan «Sho'roi Islomiya» tashkilotining rahbarlaridan biri bo'lganman. Biz xalqimizning haq-huquqlarini himoya qilishga intilganmiz.$$,
       $$["sho'roi islomiya", "1917", "tashkilot", "toshkent"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$,
       TRUE,
       $$Munavvarqori Abdurashidxonov 1917-yilda qaysi tashkilot rahbarlaridan biri bo'lgan?$$
  FROM heroes h WHERE h.slug = 'munavvarqori';

-- munavvarqori | Talabalar Germaniyada
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Talabalar Germaniyada$$, $$Yoshlar chet elda o'qib kelsin deb, safdoshlarim bilan «Ko'mak» jamiyatini tuzganmiz. 1922-yilda turkistonlik bir guruh yoshlar Germaniyaga o'qishga jo'natilgan.$$,
       $$["ko'mak", "germaniya", "talaba", "1922", "o'qish"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$,
       TRUE,
       $$Munavvarqori Abdurashidxonov ishtirokida tuzilgan «Ko'mak» jamiyati qanday ish qilgan?$$
  FROM heroes h WHERE h.slug = 'munavvarqori';

-- munavvarqori | Xotiralar kitobim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiralar kitobim$$, $$Umrimning so'nggi yillarida jadidchilik harakati tarixi haqida xotiralar yozganman. Bu xotiralarim keyinchalik «Xotiralarimdan» nomi bilan kitob bo'lib chiqqan.$$,
       $$["xotiralar", "kitob", "jadidchilik", "tarix"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$,
       TRUE,
       $$Munavvarqori Abdurashidxonovning xotiralari qanday nom bilan nashr etilgan?$$
  FROM heroes h WHERE h.slug = 'munavvarqori';

-- munavvarqori | Til va imlo qurultoyi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Til va imlo qurultoyi$$, $$1921-yilda Toshkentda o'zbek tili va imlosiga bag'ishlangan qurultoy bo'lib o'tgan. Men unda qatnashib, ona tilimiz ravnaqi haqida fikrlarimni aytganman.$$,
       $$["til", "imlo", "qurultoy", "1921", "ona tili"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$,
       TRUE,
       $$Munavvarqori Abdurashidxonov 1921-yilda qaysi qurultoyda qatnashgan?$$
  FROM heroes h WHERE h.slug = 'munavvarqori';

-- munis-xorazmiy | Taxallusim ma'nosi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Taxallusim ma'nosi$$, $$Asl ismim Shermuhammad. «Munis» — taxallusim bo'lib, «yaqin do'st, hamdam» degan ma'noni anglatadi. She'rlarimni shu nom bilan yozganman.$$,
       $$["taxallus", "munis", "shermuhammad", "ma'no", "do'st"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$,
       TRUE,
       $$Munis Xorazmiyning taxallusi qanday ma'noni anglatadi?$$
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';

-- munis-xorazmiy | Miroblik vazifam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Miroblik vazifam$$, $$Xorazmda dehqonchilik suvsiz bitmaydi, shuning uchun suv taqsimlovchi mirob juda hurmatli lavozim edi. Men miroblik vazifasini ham bajarganman. Vafotimdan keyin bu vazifa jiyanim Ogahiyga o'tgan.$$,
       $$["mirob", "suv", "vazifa", "ogahiy", "xorazm"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$,
       TRUE,
       $$Munis Xorazmiy suv taqsimoti bilan bog'liq qaysi vazifada ishlagan?$$
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';

-- munis-xorazmiy | Xattotligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xattotligim$$, $$Men xattotlik san'atini puxta egallaganman. Qo'lyozma kitoblarni chiroyli xat bilan ko'chirish men uchun ham hunar, ham zavq edi.$$,
       $$["xattot", "xat", "qo'lyozma", "ko'chirish", "hunar"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$,
       TRUE,
       $$Munis Xorazmiy qaysi san'atni puxta egallagan edi?$$
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';

-- munis-xorazmiy | Tahsilim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tahsilim$$, $$Yoshligimda Xiva madrasalarida tahsil olganman. Arab va fors tillarini o'rganib, Sharq shoirlarining asarlarini asl tilida o'qiganman.$$,
       $$["tahsil", "madrasa", "xiva", "arab tili", "fors tili"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$,
       TRUE,
       $$Munis Xorazmiy qayerda tahsil olgan?$$
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';

-- munis-xorazmiy | Ijod tilim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ijod tilim$$, $$Fors tilini yaxshi bilsam-da, she'rlarimni asosan ona tilimda — turkiy, ya'ni eski o'zbek tilida yozganman. Devonlarim ham shu tilda tuzilgan.$$,
       $$["turkiy", "o'zbek tili", "she'r", "til", "devon"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$,
       TRUE,
       $$Munis Xorazmiy she'rlarini asosan qaysi tilda yozgan?$$
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';

-- munis-xorazmiy | Ustozim Navoiy
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ustozim Navoiy$$, $$Alisher Navoiyni o'zimga ustoz deb bilganman. Uning g'azallarini sevib o'qiganman va ularga ergashib she'rlar bitganman.$$,
       $$["navoiy", "ustoz", "g'azal", "ergashish"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829)$$,
       TRUE,
       $$Munis Xorazmiy qaysi buyuk shoirni o'ziga ustoz deb bilgan?$$
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';

-- munis-xorazmiy | Qo'lyozmalarim bugun
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qo'lyozmalarim bugun$$, $$Asarlarimning qo'lyozma nusxalari bugungacha yetib kelgan. Ular Toshkentdagi Abu Rayhon Beruniy nomidagi Sharqshunoslik instituti xazinasida avaylab saqlanadi.$$,
       $$["qo'lyozma", "sharqshunoslik instituti", "toshkent", "saqlanadi"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Munis» maqolasi$$,
       TRUE,
       $$Munis Xorazmiy asarlarining qo'lyozmalari bugun qayerda saqlanadi?$$
  FROM heroes h WHERE h.slug = 'munis-xorazmiy';

-- muqanna | Oq libos ramzi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oq libos ramzi$$, $$Xalifalik qora rangni o'ziga bayroq qilib olgan edi. Tarafdorlarim esa unga qarshilik belgisi sifatida oppoq kiyim kiyishgan. Shu bois harakatimiz «Oq kiyimlilar» deb atalgan.$$,
       $$["oq kiyim", "ramz", "qora bayroq", "belgi"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Muqanna tarafdorlari nima uchun oq kiyim kiyishgan?$$
  FROM heroes h WHERE h.slug = 'muqanna';

-- muqanna | Kurash sabablari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kurash sabablari$$, $$Xalq arab xalifaligining og'ir soliqlari va zulmidan qattiq norozi edi. Shu sababli dehqonlar-u hunarmandlar mening atrofimga birlashdilar.$$,
       $$["soliq", "zulm", "sabab", "dehqon", "hunarmand"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Xalq nima sababdan Muqanna atrofiga birlashgan?$$
  FROM heroes h WHERE h.slug = 'muqanna';

-- muqanna | Kurash yillari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kurash yillari$$, $$Boshchiligimdagi qo'zg'olon 769-yildan 783-yilgacha — qariyb o'n to'rt yil davom etgan. Bu Movarounnahrdagi eng yirik xalq qo'zg'olonlaridan biri edi.$$,
       $$["769", "783", "o'n to'rt yil", "qo'zg'olon", "davomiylik"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Muqanna qo'zg'oloni necha yil davom etgan?$$
  FROM heroes h WHERE h.slug = 'muqanna';

-- muqanna | Turkiy qabilalar madadi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Turkiy qabilalar madadi$$, $$Kurashimizga dasht tomondan turkiy qabilalar ham madadga kelgan. Ular qo'zg'olonchilar safida xalifalik qo'shinlariga qarshi jang qilgan.$$,
       $$["turkiy qabilalar", "madad", "yordam", "ittifoq"]$$::jsonb,
       $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$,
       TRUE,
       $$Muqanna qo'zg'olonchilariga kimlar madadga kelgan?$$
  FROM heroes h WHERE h.slug = 'muqanna';

-- muqanna | Naxshab oyi rivoyati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Naxshab oyi rivoyati$$, $$Rivoyatlarga ko'ra, men Naxshab shahrida quduqdan oy chiqarib ko'rsatar ekanman. Bu «Naxshab oyi» rivoyati asrlar davomida og'izdan og'izga o'tib kelgan.$$,
       $$["naxshab", "oy", "quduq", "rivoyat"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Muqanna» maqolasi$$,
       TRUE,
       $$Muqanna haqidagi «Naxshab oyi» rivoyatida nima deyiladi?$$
  FROM heroes h WHERE h.slug = 'muqanna';

-- muqanna | Qadimiy kitoblarda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qadimiy kitoblarda$$, $$Men haqimdagi ma'lumotlar qadimiy kitoblarda saqlanib qolgan. Ayniqsa Narshaxiyning «Buxoro tarixi» asarida va Abu Rayhon Beruniy asarlarida qo'zg'olonimiz haqida yozilgan.$$,
       $$["narshaxiy", "buxoro tarixi", "beruniy", "manba", "kitob"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Muqanna» maqolasi$$,
       TRUE,
       $$Muqanna haqidagi ma'lumotlar qaysi qadimiy asarlarda saqlangan?$$
  FROM heroes h WHERE h.slug = 'muqanna';

-- muqanna | Drama qahramoniman
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Drama qahramoniman$$, $$Oradan ming yildan ko'proq vaqt o'tib, XX asrda shoir Hamid Olimjon men haqimda «Muqanna» nomli drama yozgan. Shu tariqa nomim teatr sahnasida ham yangragan.$$,
       $$["hamid olimjon", "drama", "sahna", "asar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Hamid Olimjon» maqolasi$$,
       TRUE,
       $$XX asrda Muqanna haqida qaysi shoir drama yozgan?$$
  FROM heroes h WHERE h.slug = 'muqanna';

-- TOTAL: 35

-- ===================== h_ai.sql =====================

-- narshaxiy | Yashagan davrim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yashagan davrim$$, $$Men Somoniylar davlati hukmronligi davrida yashaganman. O'sha paytda Buxoro poytaxt bo'lib, ilm-fan va madaniyatning yirik markaziga aylangan edi.$$,
       $$["somoniylar", "davr", "buxoro", "poytaxt", "madaniyat markazi"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Narshaxiy» maqolasi$$,
       TRUE,
       $$Abu Bakr Narshaxiy qaysi sulola hukmronligi davrida yashab ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'narshaxiy';

-- narshaxiy | Nega arab tilida yozganman
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nega arab tilida yozganman$$, $$Kitobimni arab tilida yozganman, chunki o'sha zamonda arab tili butun Sharqda ilm-fan tili hisoblanar edi.$$,
       $$["arab tili", "ilm tili", "kitob tili", "yozish"]$$::jsonb,
       $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, 1966) — Ziyouz.com kutubxonasi$$,
       TRUE,
       $$Abu Bakr Narshaxiy «Buxoro tarixi» asarini nima uchun arab tilida yozgan?$$
  FROM heroes h WHERE h.slug = 'narshaxiy';

-- narshaxiy | Asl nusxaning taqdiri
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Asl nusxaning taqdiri$$, $$Kitobimning arab tilidagi asl nusxasi bizgacha yetib kelmagan. Asarim keyingi asrlarda qilingan forscha tarjima va qisqartirilgan tahrirlar orqali saqlanib qolgan.$$,
       $$["asl nusxa", "arabcha", "saqlanib qolgan", "forscha tarjima"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Narshaxiy» maqolasi$$,
       TRUE,
       $$Abu Bakr Narshaxiyning «Buxoro tarixi» asari bizgacha qanday holda yetib kelgan?$$
  FROM heroes h WHERE h.slug = 'narshaxiy';

-- narshaxiy | Buxoroning qadimiy nomlari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Buxoroning qadimiy nomlari$$, $$Kitobimda Buxoro shahri qadimda bir necha nom bilan atalganini yozganman. O'sha nomlardan biri — Numijkat edi.$$,
       $$["numijkat", "qadimiy nom", "shahar nomlari", "buxoro"]$$::jsonb,
       $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, 1966) — Ziyouz.com kutubxonasi$$,
       TRUE,
       $$Abu Bakr Narshaxiy kitobida Buxoro shahrining qaysi qadimiy nomini keltirgan?$$
  FROM heroes h WHERE h.slug = 'narshaxiy';

-- narshaxiy | Siyovush haqidagi rivoyat
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Siyovush haqidagi rivoyat$$, $$Kitobimda Buxoro arki bilan bog'liq qadimiy rivoyatlarni ham keltirganman. Rivoyatlarga ko'ra, arkni afsonaviy shahzoda Siyovush qurgan emish.$$,
       $$["siyovush", "ark", "rivoyat", "afsona", "qal'a"]$$::jsonb,
       $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, 1966) — Ziyouz.com kutubxonasi$$,
       TRUE,
       $$Abu Bakr Narshaxiy kitobidagi rivoyatga ko'ra, Buxoro arkini qaysi afsonaviy shahzoda qurgan?$$
  FROM heroes h WHERE h.slug = 'narshaxiy';

-- narshaxiy | Atrofdagi qishloqlar tavsifi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Atrofdagi qishloqlar tavsifi$$, $$Kitobimda faqat Buxoro shahrining o'zini emas, uning atrofidagi ko'plab qishloq va shaharchalarni ham tasvirlaganman. Ular orasida qadimiy Poykand shahri ham bor.$$,
       $$["qishloqlar", "poykand", "atrof", "tavsif", "shaharchalar"]$$::jsonb,
       $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, 1966) — Ziyouz.com kutubxonasi$$,
       TRUE,
       $$Abu Bakr Narshaxiy «Buxoro tarixi»da shahar atrofidagi qaysi qadimiy shaharchani tasvirlagan?$$
  FROM heroes h WHERE h.slug = 'narshaxiy';

-- narshaxiy | O'zbek tilidagi nashri
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'zbek tilidagi nashri$$, $$Kitobim 1966-yilda A. Rasulev tarjimasida o'zbek tilida nashr etilgan. Endi uni sen ham o'z ona tilingda o'qiy olasan.$$,
       $$["o'zbek tili", "tarjima", "1966", "rasulev", "nashr"]$$::jsonb,
       $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, 1966) — Ziyouz.com kutubxonasi$$,
       TRUE,
       $$Abu Bakr Narshaxiyning «Buxoro tarixi» asari o'zbek tilida qachon nashr etilgan?$$
  FROM heroes h WHERE h.slug = 'narshaxiy';

-- nodira | O'g'lim taxtda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'g'lim taxtda$$, $$Turmush o'rtog'im Umarxon vafotidan so'ng Qo'qon taxtiga o'g'lim Muhammad Alixon o'tirgan. U hali yosh bo'lgani uchun davlat ishlarida unga men yordam berganman.$$,
       $$["muhammad alixon", "o'g'il", "taxt", "qo'qon xoni"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$,
       TRUE,
       $$Umarxon vafotidan keyin Nodiraning qaysi o'g'li Qo'qon taxtiga o'tirgan?$$
  FROM heroes h WHERE h.slug = 'nodira';

-- nodira | Shoir turmush o'rtog'im
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shoir turmush o'rtog'im$$, $$Turmush o'rtog'im Umarxon ham shoir edi: u «Amiriy» taxallusi bilan she'rlar yozgan.$$,
       $$["umarxon", "amiriy", "taxallus", "shoir xon"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$,
       TRUE,
       $$Nodiraning turmush o'rtog'i Umarxon qanday taxallus bilan she'rlar yozgan?$$
  FROM heroes h WHERE h.slug = 'nodira';

-- nodira | Ijod tillarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ijod tillarim$$, $$Men she'rlarimni ikki tilda — o'zbek va fors-tojik tillarida yozganman.$$,
       $$["o'zbek tili", "fors tili", "ikki til", "she'r"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$,
       TRUE,
       $$Nodira she'rlarini qaysi tillarda yozgan?$$
  FROM heroes h WHERE h.slug = 'nodira';

-- nodira | She'rlarim mavzulari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$She'rlarim mavzulari$$, $$She'rlarimda sevgi, sadoqat va vafoni kuylaganman. Umarxon vafotidan keyin yozgan g'azallarimda yurak qayg'ularimni ham izhor etganman.$$,
       $$["mavzu", "sevgi", "sadoqat", "g'azal", "vafo"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842)$$,
       TRUE,
       $$Nodira she'rlarida asosan qanday mavzularni kuylagan?$$
  FROM heroes h WHERE h.slug = 'nodira';

-- nodira | Qo'qon adabiy muhiti
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qo'qon adabiy muhiti$$, $$Bizning davrimizda Qo'qon saroyiga ko'plab shoirlar va olimlar to'plangan edi. Shu tariqa Qo'qon o'z zamonasining yirik adabiy markaziga aylangan.$$,
       $$["qo'qon", "adabiy muhit", "saroy", "shoirlar", "markaz"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Nodira» maqolasi$$,
       TRUE,
       $$Nodira yashagan davrda qaysi shahar yirik adabiy markazga aylangan edi?$$
  FROM heroes h WHERE h.slug = 'nodira';

-- nodira | Kitobat san'atiga homiyligim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kitobat san'atiga homiyligim$$, $$Men xattotlarga qo'lyozma kitoblarni ko'chirtirib, chiroyli bezattirganman. Shu tarzda kitobat san'ati rivojiga hissa qo'shganman.$$,
       $$["xattot", "qo'lyozma", "kitobat", "homiylik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Nodira» maqolasi$$,
       TRUE,
       $$Nodira kitobat san'atini rivojlantirish uchun nima qilgan?$$
  FROM heroes h WHERE h.slug = 'nodira';

-- nodira | Xotiram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram$$, $$Bugun O'zbekistonda ko'chalar va maktablarga nomim berilgan. G'azallarim maktab darsliklaridan o'rin olgan va qo'shiq bo'lib kuylanadi.$$,
       $$["xotira", "ko'cha", "maktab", "qo'shiq", "darslik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Nodira» maqolasi$$,
       TRUE,
       $$Nodiraning xotirasi O'zbekistonda qanday e'zozlanadi?$$
  FROM heroes h WHERE h.slug = 'nodira';

-- ogahiy | Devonim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Devonim$$, $$She'rlarimni «Ta'viz ul-oshiqin», ya'ni «Oshiqlar tumori» deb nomlangan devonga to'plaganman.$$,
       $$["ta'viz ul-oshiqin", "devon", "she'rlar to'plami", "oshiqlar tumori"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$,
       TRUE,
       $$Ogahiy o'z she'rlar devonini qanday nomlagan?$$
  FROM heroes h WHERE h.slug = 'ogahiy';

-- ogahiy | Tarjimonlik ishlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tarjimonlik ishlarim$$, $$Men fors tilidan o'zbek tiliga yigirmaga yaqin asarni tarjima qilganman. Ular orasida Sa'diyning «Guliston»i va Kaykovusning «Qobusnoma»si ham bor.$$,
       $$["tarjima", "guliston", "qobusnoma", "fors tili", "sa'diy"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$,
       TRUE,
       $$Ogahiy fors tilidan o'zbekchaga qaysi mashhur asarlarni tarjima qilgan?$$
  FROM heroes h WHERE h.slug = 'ogahiy';

-- ogahiy | Taxallusim ma'nosi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Taxallusim ma'nosi$$, $$«Ogahiy» taxallusim «ogoh» so'zidan olingan bo'lib, «xabardor, zukko inson» degan ma'noni bildiradi.$$,
       $$["taxallus", "ogoh", "ma'no", "ism"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ogahiy» maqolasi$$,
       TRUE,
       $$Ogahiy taxallusi qanday ma'noni anglatadi?$$
  FROM heroes h WHERE h.slug = 'ogahiy';

-- ogahiy | Ikki tilda she'rlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ikki tilda she'rlarim$$, $$Devonimda o'zbekcha she'rlarim bilan birga fors tilida yozgan she'rlarim ham bor. Ikki tilda ham bemalol ijod qilganman.$$,
       $$["ikki til", "forscha she'r", "o'zbekcha she'r", "devon"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$,
       TRUE,
       $$Ogahiy qaysi tillarda she'rlar yozgan?$$
  FROM heroes h WHERE h.slug = 'ogahiy';

-- ogahiy | Shogirdim Feruz
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shogirdim Feruz$$, $$Xiva xoni Muhammad Rahimxon Soniy meni o'ziga ustoz deb bilgan. U «Feruz» taxallusi bilan she'rlar yozgan shoir xon edi.$$,
       $$["feruz", "muhammad rahimxon", "shogird", "xiva xoni", "ustoz"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ogahiy» maqolasi$$,
       TRUE,
       $$Qaysi Xiva xoni Ogahiyni o'ziga ustoz deb bilgan?$$
  FROM heroes h WHERE h.slug = 'ogahiy';

-- ogahiy | G'azallarim qo'shiqlarda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$G'azallarim qo'shiqlarda$$, $$G'azallarimga kuylar bog'langan: ularni hofizlar Xorazm maqom yo'llarida kuylab kelishadi.$$,
       $$["qo'shiq", "g'azal", "maqom", "hofiz", "xorazm"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Ogahiy» maqolasi$$,
       TRUE,
       $$Ogahiy g'azallari bugungi kunda qanday ijro etib kelinadi?$$
  FROM heroes h WHERE h.slug = 'ogahiy';

-- ogahiy | Adolat mavzusi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Adolat mavzusi$$, $$She'rlarimda adolat va insofni ulug'laganman, oddiy mehnatkash xalq dardiga hamdard bo'lganman.$$,
       $$["adolat", "insof", "xalq dardi", "she'r mavzusi"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874)$$,
       TRUE,
       $$Ogahiy she'rlarida qanday g'oyalarni ilgari surgan?$$
  FROM heroes h WHERE h.slug = 'ogahiy';

-- oybek | O'qigan dargohlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'qigan dargohlarim$$, $$Men Toshkentda va Leningrad shahrida iqtisod yo'nalishida tahsil olganman. Keyin universitetda talabalarga dars ham berganman.$$,
       $$["o'qish", "universitet", "leningrad", "iqtisod", "toshkent"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$,
       TRUE,
       $$Oybek Toshkentdan tashqari yana qaysi shaharda tahsil olgan?$$
  FROM heroes h WHERE h.slug = 'oybek';

-- oybek | Turmush o'rtog'im
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Turmush o'rtog'im$$, $$Turmush o'rtog'im Zarifa Saidnosirova kimyogar olima edi. U men haqimda «Oybegim mening» degan xotira kitobini yozgan.$$,
       $$["zarifa saidnosirova", "turmush o'rtoq", "oybegim mening", "xotira kitobi"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Oybek» maqolasi$$,
       TRUE,
       $$Oybekning turmush o'rtog'i Zarifa Saidnosirova u haqda qanday nomli kitob yozgan?$$
  FROM heroes h WHERE h.slug = 'oybek';

-- oybek | Davlat mukofotim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Davlat mukofotim$$, $$«Navoiy» romanim uchun 1946-yilda Davlat mukofotiga sazovor bo'lganman.$$,
       $$["mukofot", "1946", "navoiy romani", "davlat mukofoti"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Oybek» maqolasi$$,
       TRUE,
       $$Oybek 1946-yilda qaysi asari uchun Davlat mukofotini olgan?$$
  FROM heroes h WHERE h.slug = 'oybek';

-- oybek | Navoiy haqidagi dostonim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Navoiy haqidagi dostonim$$, $$«Navoiy» romanimdan avval ulug' shoir haqida «Navoiy» nomli doston ham yozganman. Alisher Navoiy siymosi ijodimning bosh mavzularidan biri edi.$$,
       $$["doston", "navoiy", "she'riy asar", "alisher navoiy"]$$::jsonb,
       $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$,
       TRUE,
       $$Oybek «Navoiy» romanidan tashqari Alisher Navoiy haqida yana qanday asar yozgan?$$
  FROM heroes h WHERE h.slug = 'oybek';

-- oybek | Yozuvchilar uyushmasidagi ishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yozuvchilar uyushmasidagi ishim$$, $$Urushdan keyingi yillarda O'zbekiston Yozuvchilar uyushmasiga raislik qilganman.$$,
       $$["yozuvchilar uyushmasi", "rais", "rahbarlik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Oybek» maqolasi$$,
       TRUE,
       $$Oybek qaysi ijodiy tashkilotga raislik qilgan?$$
  FROM heroes h WHERE h.slug = 'oybek';

-- oybek | Uy-muzeyim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Uy-muzeyim$$, $$Toshkentda men yashagan uyda hozir Oybek uy-muzeyi faoliyat yuritadi. U yerda qo'lyozmalarim va shaxsiy buyumlarim saqlanadi.$$,
       $$["uy-muzey", "toshkent", "qo'lyozma", "shaxsiy buyumlar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Oybek» maqolasi$$,
       TRUE,
       $$Oybek uy-muzeyi qaysi shaharda joylashgan?$$
  FROM heroes h WHERE h.slug = 'oybek';

-- oybek | Nomimdagi joylar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomimdagi joylar$$, $$Toshkent metrosining bekatlaridan biri va bir qancha ko'chalar mening nomim bilan atalgan.$$,
       $$["metro bekati", "ko'cha", "nom", "toshkent"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Oybek» maqolasi$$,
       TRUE,
       $$Toshkent metrosining qaysi bekati Oybek nomi bilan atalgan?$$
  FROM heroes h WHERE h.slug = 'oybek';

-- ozod-sharafiddinov | Munaqqidlik kasbim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Munaqqidlik kasbim$$, $$Mening kasbim — adabiy tanqidchi, ya'ni munaqqid. Men yozuvchi va shoirlarning asarlarini o'rganib, ular haqida maqolalar va kitoblar yozganman.$$,
       $$["munaqqid", "adabiy tanqid", "kasb", "maqola"]$$::jsonb,
       $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$,
       TRUE,
       $$Ozod Sharafiddinovning asosiy kasbi nima edi?$$
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';

-- ozod-sharafiddinov | She'riyat — bosh mavzuim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$She'riyat — bosh mavzuim$$, $$Ilmiy ishlarimda ko'proq zamonaviy o'zbek she'riyatini o'rganganman. Yaxshi she'r qanday bo'lishi haqida ko'plab maqolalar yozganman.$$,
       $$["she'riyat", "tadqiqot", "zamonaviy adabiyot", "maqolalar"]$$::jsonb,
       $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$,
       TRUE,
       $$Ozod Sharafiddinov ilmiy ishlarida ko'proq nimani o'rgangan?$$
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';

-- ozod-sharafiddinov | Yosh shoirlarga ko'magim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yosh shoirlarga ko'magim$$, $$Erkin Vohidov, Abdulla Oripov kabi yosh shoirlar ijodi haqida iliq maqolalar yozib, ularning elga tanilishiga ko'maklashganman.$$,
       $$["erkin vohidov", "abdulla oripov", "yosh shoirlar", "ko'mak"]$$::jsonb,
       $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$,
       TRUE,
       $$Ozod Sharafiddinov qaysi yosh shoirlar ijodini qo'llab-quvvatlagan?$$
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';

-- ozod-sharafiddinov | Maqola to'plamlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Maqola to'plamlarim$$, $$Adabiyot haqidagi maqolalarim «Adabiy etyudlar», «Talant — xalq mulki» kabi kitoblarimda jamlangan.$$,
       $$["adabiy etyudlar", "talant xalq mulki", "to'plam", "kitoblar"]$$::jsonb,
       $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$,
       TRUE,
       $$Ozod Sharafiddinovning qaysi kitoblarida adabiy-tanqidiy maqolalari jamlangan?$$
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';

-- ozod-sharafiddinov | «Ijodni anglash mashaqqati»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Ijodni anglash mashaqqati»$$, $$Umrimning so'nggi yillarida «Ijodni anglash mashaqqati» nomli katta kitobimni e'lon qilganman. Unga eng yaxshi maqolalarim va esselarim kirgan.$$,
       $$["ijodni anglash mashaqqati", "kitob", "esse", "so'nggi yillar"]$$::jsonb,
       $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$,
       TRUE,
       $$Ozod Sharafiddinov umrining so'nggi yillarida qanday nomli kitobini e'lon qilgan?$$
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';

-- ozod-sharafiddinov | «Alkimyogar» tarjimam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Alkimyogar» tarjimam$$, $$Braziliyalik yozuvchi Paulo Koelyoning mashhur «Alkimyogar» asarini o'zbek tiliga men tarjima qilganman.$$,
       $$["alkimyogar", "paulo koelyo", "tarjima", "jahon adabiyoti"]$$::jsonb,
       $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$,
       TRUE,
       $$Ozod Sharafiddinov jahon adabiyotidan qaysi mashhur asarni o'zbekchaga tarjima qilgan?$$
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';

-- ozod-sharafiddinov | Matonatim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Matonatim$$, $$Umrimning oxirida og'ir kasallikka chalindim, lekin ijodni to'xtatmadim. Nogironlik aravachasida o'tirib ham jurnalni boshqardim, tarjima va maqolalar ustida ishladim.$$,
       $$["matonat", "kasallik", "iroda", "mehnat"]$$::jsonb,
       $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$,
       TRUE,
       $$Ozod Sharafiddinov og'ir kasallikka chalinganida ham ishlashni davom ettirganmi?$$
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';

-- TOTAL: 35

-- ===================== h_aj.sql =====================

-- saroymulkxonim | Klavixo guvohligi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Klavixo guvohligi$$, $$1404-yilda Samarqandga Ispaniya elchisi Rui Gonsales de Klavixo kelgan. U saroy ziyofatlarida meni ko'rgan va kundaligida men haqimda hurmat bilan yozib qoldirgan.$$,
       $$["klavixo", "ispaniya", "elchi", "1404", "kundalik"]$$::jsonb,
       $$Rui Gonsales de Klavixo, «Samarqandga sayohat kundaligi» (1403–1406); Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$,
       TRUE,
       $$Bibixonim (Saroy Mulk xonim)ni 1404-yilda Samarqanddagi saroy ziyofatlarida ko'rib, kundaligida yozib qoldirgan ispan elchisi kim?$$
  FROM heroes h WHERE h.slug = 'saroymulkxonim';

-- saroymulkxonim | Saroy ziyofatlari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Saroy ziyofatlari$$, $$Samarqand bog'larida o'tkazilgan katta bayram va ziyofatlarda malikalar orasida eng yuqori o'rin menga tegardi, chunki men saroyning katta xonimi edim.$$,
       $$["ziyofat", "bayram", "bog'", "katta xonim"]$$::jsonb,
       $$Rui Gonsales de Klavixo, «Samarqandga sayohat kundaligi» (1403–1406); Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$,
       TRUE,
       $$Saroy ziyofatlarida Bibixonim (Saroy Mulk xonim) malikalar orasida qanday o'rin egallagan?$$
  FROM heroes h WHERE h.slug = 'saroymulkxonim';

-- saroymulkxonim | Poytaxt Samarqand
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Poytaxt Samarqand$$, $$Amir Temur saltanat poytaxti etib Samarqandni tanlagan. Men umrimning katta qismini ana shu go'zal shaharda o'tkazganman.$$,
       $$["samarqand", "poytaxt", "temur", "shahar"]$$::jsonb,
       $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$,
       TRUE,
       $$Bibixonim (Saroy Mulk xonim) umrining katta qismini qaysi shaharda o'tkazgan?$$
  FROM heroes h WHERE h.slug = 'saroymulkxonim';

-- saroymulkxonim | Maqbaram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Maqbaram$$, $$Samarqandda Bibixonim masjidi ro'parasida men uchun maqbara bunyod etilgan. U bugun ham «Bibixonim maqbarasi» nomi bilan ziyorat qilinadi.$$,
       $$["maqbara", "samarqand", "bibixonim maqbarasi", "yodgorlik"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Bibixonim maqbarasi» maqolasi$$,
       TRUE,
       $$Bibixonim (Saroy Mulk xonim) maqbarasi qayerda joylashgan?$$
  FROM heroes h WHERE h.slug = 'saroymulkxonim';

-- saroymulkxonim | Jahon merosi ro'yxatida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Jahon merosi ro'yxatida$$, $$Men yashagan va obidalar qurdirgan Samarqand shahri 2001-yilda YUNESKOning Jahon merosi ro'yxatiga kiritilgan. Bibixonim obidalari ham shu merosning bir qismidir.$$,
       $$["yunesko", "jahon merosi", "2001", "samarqand"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Samarqand» maqolasi; YUNESKO Jahon merosi ro'yxati (2001)$$,
       TRUE,
       $$Bibixonim obidalari joylashgan Samarqand shahri qachon YUNESKO Jahon merosi ro'yxatiga kiritilgan?$$
  FROM heroes h WHERE h.slug = 'saroymulkxonim';

-- saroymulkxonim | Nabiram Ulug'bek
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nabiram Ulug'bek$$, $$Men tarbiya bergan nabiralardan biri Mirzo Ulug'bek edi. U keyinchalik buyuk olim bo'lib yetishdi va Samarqandda mashhur rasadxona qurdirdi.$$,
       $$["ulug'bek", "nabira", "olim", "rasadxona"]$$::jsonb,
       $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$,
       TRUE,
       $$Bibixonim (Saroy Mulk xonim) tarbiyalagan nabiralardan qaysi biri buyuk olim bo'lib yetishgan?$$
  FROM heroes h WHERE h.slug = 'saroymulkxonim';

-- saroymulkxonim | Men haqimdagi afsonalar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Men haqimdagi afsonalar$$, $$Xalq orasida men va masjidim qurilishi haqida ko'plab afsonalar to'qilgan. Tarixchilar esa meni avvalo saroyning dono va obro'li malikasi sifatida eslashadi.$$,
       $$["afsona", "rivoyat", "masjid", "malika"]$$::jsonb,
       $$Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim)$$,
       TRUE,
       $$Bibixonim nomi va masjidi bilan bog'liq xalq orasida nimalar keng tarqalgan?$$
  FROM heroes h WHERE h.slug = 'saroymulkxonim';

-- shiroq | Ahamoniylar saltanati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ahamoniylar saltanati$$, $$Yurtimga qo'shin tortgan Doro I Ahamoniylar saltanatining shohi edi. Bu saltanat o'sha davrda Misrdan Hind daryosigacha cho'zilgan ulkan davlat bo'lgan.$$,
       $$["ahamoniylar", "doro i", "saltanat", "fors"]$$::jsonb,
       $$«Qadimgi dunyo tarixi» 6-sinf darsligi (2017); O'zbekiston milliy ensiklopediyasi, «Ahamoniylar» maqolasi$$,
       TRUE,
       $$Shiroq qarshi chiqqan Doro I qaysi saltanatning hukmdori edi?$$
  FROM heroes h WHERE h.slug = 'shiroq';

-- shiroq | Sak urug'lari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Sak urug'lari$$, $$Xalqim bir necha urug'ga bo'lingan: o'tkir uchli kuloh kiygan sak-tigraxaudalar, sak-xaumavargalar va daryoning narigi tomonida yashovchi saklar tarixda qayd etilgan.$$,
       $$["sak urug'lari", "tigraxauda", "xaumavarga", "saklar"]$$::jsonb,
       $$«Qadimgi dunyo tarixi» 6-sinf darsligi (2017); «O'zbekiston tarixi» 6-sinf darsligi$$,
       TRUE,
       $$Shiroq mansub bo'lgan sak xalqining qanday urug'lari tarixda ma'lum?$$
  FROM heroes h WHERE h.slug = 'shiroq';

-- shiroq | Yashagan yerlarimiz
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yashagan yerlarimiz$$, $$Saklar Sirdaryo bo'ylari, Orol dengizi atroflari va tog' etaklaridagi keng dashtlarda yashagan.$$,
       $$["sirdaryo", "orol", "dasht", "saklar yurti"]$$::jsonb,
       $$«Qadimgi dunyo tarixi» 6-sinf darsligi (2017); «O'zbekiston tarixi» 6-sinf darsligi$$,
       TRUE,
       $$Shiroqning xalqi — saklar qaysi hududlarda yashagan?$$
  FROM heroes h WHERE h.slug = 'shiroq';

-- shiroq | Chavandozlik
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Chavandozlik$$, $$Xalqim bolalikdan ot minishni o'rgangan. Saklar mohir chavandoz va o'tkir kamonchi sifatida dong taratgan.$$,
       $$["ot", "chavandoz", "kamon", "saklar"]$$::jsonb,
       $$«Qadimgi dunyo tarixi» 6-sinf darsligi (2017); «O'zbekiston tarixi» 6-sinf darsligi$$,
       TRUE,
       $$Shiroqning xalqi — saklar qanday jangchilar sifatida mashhur bo'lgan?$$
  FROM heroes h WHERE h.slug = 'shiroq';

-- shiroq | Gerodot yozganlari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Gerodot yozganlari$$, $$Qadimgi yunon tarixchisi Gerodot ham saklar haqida yozib qoldirgan: u xalqimni mard va jangovar deb ta'riflagan.$$,
       $$["gerodot", "tarixchi", "saklar", "jasorat"]$$::jsonb,
       $$Gerodot, «Tarix»; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$Shiroqning xalqi — saklar haqida qaysi qadimgi yunon tarixchisi ham ma'lumot qoldirgan?$$
  FROM heroes h WHERE h.slug = 'shiroq';

-- shiroq | Darsliklarda o'rnim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Darsliklarda o'rnim$$, $$Bugun mening jasoratim haqidagi rivoyat O'zbekiston maktablarining tarix darsliklarida o'rganiladi.$$,
       $$["darslik", "maktab", "rivoyat", "tarix"]$$::jsonb,
       $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$Shiroq jasorati haqidagi rivoyat bugun qayerda o'rganiladi?$$
  FROM heroes h WHERE h.slug = 'shiroq';

-- shiroq | Xotiram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram$$, $$Oradan ming yillar o'tsa ham nomim unutilmadi. Shiroq nomi yurtimizda vatanga sadoqat va fidoyilik ramziga aylangan.$$,
       $$["xotira", "ramz", "fidoyilik", "vatanparvarlik"]$$::jsonb,
       $$«O'zbekiston tarixi» 6-sinf darsligi; O'zbekiston milliy ensiklopediyasi, «Shiroq» maqolasi$$,
       TRUE,
       $$Shiroq nomi bugun nimaning ramzi sifatida eslanadi?$$
  FROM heroes h WHERE h.slug = 'shiroq';

-- spitamen | Bess voqeasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Bess voqeasi$$, $$Dastlab men safdoshlarim bilan o'z shohi Doro III ga xiyonat qilgan Bessni qo'lga olib, Iskandar yuborgan sarkardaga topshirganman. Bu voqea miloddan avvalgi 329-yilda bo'lgan.$$,
       $$["bess", "doro iii", "329-yil", "asir"]$$::jsonb,
       $$Arrian, «Iskandarning yurishi»; O'zbekiston milliy ensiklopediyasi, «Spitamen» maqolasi$$,
       TRUE,
       $$Spitamen miloddan avvalgi 329-yilda o'z shohiga xiyonat qilgan qaysi amaldorni qo'lga olib, Iskandar tomoniga topshirgan?$$
  FROM heroes h WHERE h.slug = 'spitamen';

-- spitamen | Jang usulim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Jang usulim$$, $$Men ochiq jangdan ko'ra kutilmagan hujumlar uyushtirib, so'ng tez chekinish usulini qo'llaganman. Dasht va sahro yo'llarini yaxshi bilganim menga katta ustunlik bergan.$$,
       $$["jang usuli", "hujum", "dasht", "taktika"]$$::jsonb,
       $$«O'zbekiston tarixi» 6-sinf darsligi; A. Berdimurodov maqolasi (Ziyouz.com)$$,
       TRUE,
       $$Spitamen Iskandar qo'shinlariga qarshi qanday jang usulini qo'llagan?$$
  FROM heroes h WHERE h.slug = 'spitamen';

-- spitamen | Chekka Iskandariya
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Chekka Iskandariya$$, $$Men bilan kurash ketayotgan miloddan avvalgi 329-yilda Iskandar Sirdaryo bo'yida Aleksandriya Esxata — «Chekka Iskandariya» shahriga asos solgan.$$,
       $$["aleksandriya esxata", "sirdaryo", "329-yil", "shahar"]$$::jsonb,
       $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$Spitamen kurashgan yillarda Iskandar Sirdaryo bo'yida qaysi shaharga asos solgan?$$
  FROM heroes h WHERE h.slug = 'spitamen';

-- spitamen | Tarixchilar guvohligi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Tarixchilar guvohligi$$, $$Kurashim haqida yunon tarixchisi Arrian «Iskandarning yurishi» asarida, rimlik tarixchi Kvint Kursiy Ruf esa o'z kitobida yozib qoldirgan.$$,
       $$["arrian", "kvint kursiy ruf", "tarixchi", "manba"]$$::jsonb,
       $$Arrian, «Iskandarning yurishi»; O'zbekiston milliy ensiklopediyasi, «Spitamen» maqolasi$$,
       TRUE,
       $$Spitamen kurashi haqida qaysi qadimgi tarixchilar yozib qoldirgan?$$
  FROM heroes h WHERE h.slug = 'spitamen';

-- spitamen | Apameya shaharlari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Apameya shaharlari$$, $$Qizim Apama sharafiga keyinchalik Sharqda bir necha shahar «Apameya» deb nomlangan. Uning o'g'li Antiox esa katta saltanat hukmdori bo'lgan.$$,
       $$["apama", "apameya", "antiox", "shahar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Spitamen» maqolasi; A. Berdimurodov maqolasi (Ziyouz.com)$$,
       TRUE,
       $$Spitamenning qizi Apama sharafiga nimalar nomlangan?$$
  FROM heroes h WHERE h.slug = 'spitamen';

-- spitamen | Yurtim So'g'diyona
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yurtim So'g'diyona$$, $$Vatanim So'g'diyona Amudaryo va Sirdaryo oralig'ida joylashgan bo'lib, Zarafshon va Qashqadaryo vodiylari uning markazi edi.$$,
       $$["so'g'diyona", "zarafshon", "qashqadaryo", "vatan"]$$::jsonb,
       $$«O'zbekiston tarixi» 6-sinf darsligi; O'zbekiston milliy ensiklopediyasi, «So'g'diyona» maqolasi$$,
       TRUE,
       $$Spitamenning vatani So'g'diyona qayerda joylashgan edi?$$
  FROM heroes h WHERE h.slug = 'spitamen';

-- spitamen | Xotiram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram$$, $$Nomim yurt ozodligi uchun kurash ramzi bo'lib tarixda qoldi. Bugun O'zbekiston maktablarida bolalar mening kurashim tarixini o'rganishadi.$$,
       $$["xotira", "ozodlik", "ramz", "darslik"]$$::jsonb,
       $$«O'zbekiston tarixi» 6-sinf darsligi; A. Berdimurodov maqolasi (Ziyouz.com)$$,
       TRUE,
       $$Spitamen nomi bugun nimaning ramzi sifatida eslanadi?$$
  FROM heroes h WHERE h.slug = 'spitamen';

-- tamara-xonim | Parij ko'rgazmasi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Parij ko'rgazmasi$$, $$1925-yilda Parijda o'tgan Butunjahon ko'rgazmasida o'zbek raqsini ijro etganman. Yevropa tomoshabinlari san'atimizni gulduros olqishlar bilan kutib olgan.$$,
       $$["parij", "1925", "ko'rgazma", "raqs"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Tamara Xonim» maqolasi; «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi)$$,
       TRUE,
       $$Tamara Xonim 1925-yilda qaysi shaharda o'tgan Butunjahon ko'rgazmasida o'zbek raqsini ijro etgan?$$
  FROM heroes h WHERE h.slug = 'tamara-xonim';

-- tamara-xonim | Unvonlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Unvonlarim$$, $$San'atdagi xizmatlarim uchun O'zbekiston xalq artisti unvonini olganman, 1956-yilda esa SSSR xalq artisti unvoniga sazovor bo'lganman.$$,
       $$["xalq artisti", "1956", "unvon", "sssr"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Tamara Xonim» maqolasi$$,
       TRUE,
       $$Tamara Xonim 1956-yilda qanday yuksak unvonga sazovor bo'lgan?$$
  FROM heroes h WHERE h.slug = 'tamara-xonim';

-- tamara-xonim | Jahon sahnalarida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Jahon sahnalarida$$, $$Men gastrol safarlari bilan dunyoning ko'plab mamlakatlarida bo'lib, o'zbek qo'shiq va raqsini turli qit'alar sahnalarida namoyish etganman.$$,
       $$["gastrol", "jahon", "sahna", "safar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Tamara Xonim» maqolasi; «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi)$$,
       TRUE,
       $$Tamara Xonim o'zbek san'atini qayerlarda namoyish etgan?$$
  FROM heroes h WHERE h.slug = 'tamara-xonim';

-- tamara-xonim | Safdoshlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Safdoshlarim$$, $$Usta Olim Komilov va Mukarrama Turg'unboyeva mening yaqin safdoshlarim edi. Mukarrama keyinchalik mashhur «Bahor» ansambliga asos soldi.$$,
       $$["mukarrama turg'unboyeva", "usta olim", "bahor", "safdosh"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Tamara Xonim» maqolasi; «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi)$$,
       TRUE,
       $$Tamara Xonimning safdoshi Mukarrama Turg'unboyeva qaysi ansamblga asos solgan?$$
  FROM heroes h WHERE h.slug = 'tamara-xonim';

-- tamara-xonim | Shogirdlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Shogirdlarim$$, $$Men yosh raqqosa va xonandalarga ustozlik qilganman. Shogirdlarim o'zbek sahna san'ati an'analarini davom ettirishdi.$$,
       $$["shogird", "ustozlik", "raqqosa", "yoshlar"]$$::jsonb,
       $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); meros.uz$$,
       TRUE,
       $$Tamara Xonim yosh san'atkorlar uchun qanday vazifani bajargan?$$
  FROM heroes h WHERE h.slug = 'tamara-xonim';

-- tamara-xonim | Filarmoniyadagi ishim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Filarmoniyadagi ishim$$, $$Ko'p yillar davomida O'zbekiston davlat filarmoniyasida yakkaxon san'atkor bo'lib ishlaganman.$$,
       $$["filarmoniya", "yakkaxon", "san'atkor"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Tamara Xonim» maqolasi$$,
       TRUE,
       $$Tamara Xonim ko'p yillar qaysi dargohda yakkaxon san'atkor bo'lib ishlagan?$$
  FROM heroes h WHERE h.slug = 'tamara-xonim';

-- tamara-xonim | San'atimning o'ziga xosligi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$San'atimning o'ziga xosligi$$, $$Men sahnada qo'shiq va raqsni uyg'unlashtirib ijro etardim: qo'shiq aytib turib raqsga tushish mening ijodiy uslubimga aylangan edi.$$,
       $$["qo'shiq", "raqs", "uslub", "ijod"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Tamara Xonim» maqolasi; «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi)$$,
       TRUE,
       $$Tamara Xonim ijodining o'ziga xos uslubi nimada edi?$$
  FROM heroes h WHERE h.slug = 'tamara-xonim';

-- tomaris | Kir II saltanati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Kir II saltanati$$, $$Yurtimga ko'z tikkan Kir II Ahamoniylar davlatining asoschisi edi. U Midiya, Lidiya va Bobilni bo'ysundirib, ulkan saltanat barpo etgan edi.$$,
       $$["kir ii", "ahamoniylar", "bobil", "saltanat"]$$::jsonb,
       $$«Qadimgi dunyo tarixi» 6-sinf darsligi (2017); O'zbekiston milliy ensiklopediyasi, «Ahamoniylar» maqolasi$$,
       TRUE,
       $$To'marisga qarshi yurish qilgan Kir II qaysi davlatning asoschisi edi?$$
  FROM heroes h WHERE h.slug = 'tomaris';

-- tomaris | Qurol-yarog'imiz
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Qurol-yarog'imiz$$, $$Gerodot yozishicha, xalqim qurol-aslahalarini bronzadan, bezaklarini esa oltindan yasagan. Massaget chavandozlari nayza, kamon va oybolta bilan jang qilgan.$$,
       $$["bronza", "oltin", "nayza", "kamon", "qurol"]$$::jsonb,
       $$Gerodot, «Tarix» I kitob; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$To'marisning xalqi — massagetlar qurollarini qaysi metalldan yasagan?$$
  FROM heroes h WHERE h.slug = 'tomaris';

-- tomaris | Xalqimda ayollar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xalqimda ayollar$$, $$Massagetlarda ayollar ham erkaklar qatori ot minib, jang qilishni bilgan. Shu bois xalqim meni — ayol hukmdorni dadil qo'llab-quvvatlagan.$$,
       $$["ayollar", "jang", "ot", "massagetlar"]$$::jsonb,
       $$Gerodot, «Tarix» I kitob; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$To'maris xalqida ayollarning jamiyatdagi o'rni qanday bo'lgan?$$
  FROM heroes h WHERE h.slug = 'tomaris';

-- tomaris | O'g'lim Sparangiz
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$O'g'lim Sparangiz$$, $$Gerodot yozishicha, o'g'lim Sparangiz qo'shinimning bir qismiga boshchilik qilgan. Forslar uni ochiq jangda emas, hiyla bilan yengishgan.$$,
       $$["sparangiz", "o'g'il", "gerodot", "hiyla"]$$::jsonb,
       $$Gerodot, «Tarix» I kitob; Ziyouz.com «To'maris» maqolasi$$,
       TRUE,
       $$To'marisning qo'shin qismiga boshchilik qilgan o'g'li kim edi?$$
  FROM heroes h WHERE h.slug = 'tomaris';

-- tomaris | Quyoshga e'tiqod
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Quyoshga e'tiqod$$, $$Gerodotning yozishicha, xalqim quyoshni muqaddas deb bilgan va unga eng chopqir otlarini atagan.$$,
       $$["quyosh", "e'tiqod", "muqaddas", "otlar"]$$::jsonb,
       $$Gerodot, «Tarix» I kitob; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$To'marisning xalqi — massagetlar nimani muqaddas deb bilgan?$$
  FROM heroes h WHERE h.slug = 'tomaris';

-- tomaris | Ilk ayol hukmdor
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ilk ayol hukmdor$$, $$Men yurtimiz tarixida nomi saqlanib qolgan ilk ayol hukmdor va sarkardalardan biriman.$$,
       $$["ayol hukmdor", "sarkarda", "tarix", "birinchi"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi$$,
       TRUE,
       $$To'maris tariximizda qanday hukmdor sifatida tan olinadi?$$
  FROM heroes h WHERE h.slug = 'tomaris';

-- tomaris | Ismim bugun
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ismim bugun$$, $$Bugun O'zbekistonda ko'plab qizlarga To'maris deb ism qo'yishadi. Bu ism ota-onalar uchun mardlik va yurtga muhabbat belgisidir.$$,
       $$["ism", "to'maris", "qizlar", "bugun"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi$$,
       TRUE,
       $$Bugungi kunda To'maris ismi qanday ma'noda qo'yiladi?$$
  FROM heroes h WHERE h.slug = 'tomaris';

-- TOTAL: 35

-- ===================== h_ak.sql =====================

-- ubaydulla-xojayev | To'liq ismim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$To'liq ismim$$, $$Mening to'liq ismim — Ubaydullaxo'ja Asadullaxo'jayev. Tarixda ko'pincha Ubaydulla Xo'jayev nomi bilan tilga olinaman.$$,
       $$["ism", "asadullaxo'jayev", "to'liq ism", "nom"]$$::jsonb,
       $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$,
       TRUE,
       $$Ubaydulla Xo'jayevning to'liq ismi qanday bo'lgan?$$
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';

-- ubaydulla-xojayev | Jadidchilik yo'lim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Jadidchilik yo'lim$$, $$Men Turkiston jadidlari safida edim: yangi usul maktablari, matbuot va ilm-ma'rifat orqali xalqimni uyg'otishga intildim.$$,
       $$["jadid", "ma'rifat", "yangi usul", "turkiston"]$$::jsonb,
       $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$,
       TRUE,
       $$Ubaydulla Xo'jayev qaysi ma'rifiy harakatning vakili bo'lgan?$$
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';

-- ubaydulla-xojayev | «Turon» jamiyati
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Turon» jamiyati$$, $$1913-yilda Toshkentda tuzilgan «Turon» jamiyati ta'sischilaridan biriman. Bu jamiyat teatr va ma'rifat ishlari bilan shug'ullangan.$$,
       $$["turon", "jamiyat", "toshkent", "teatr", "1913"]$$::jsonb,
       $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$,
       TRUE,
       $$Ubaydulla Xo'jayev Toshkentda qaysi ma'rifiy jamiyat asoschilaridan bo'lgan?$$
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';

-- ubaydulla-xojayev | Mardikorlik voqealari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mardikorlik voqealari$$, $$1916-yilgi mardikorlikka olish voqealarida yurtdoshlarim huquqini himoya qildim: Peterburgga borib, Davlat dumasidagi musulmon fraksiyasiga Turkiston ahvolini yetkazdim.$$,
       $$["mardikorlik", "1916", "peterburg", "davlat dumasi", "himoya"]$$::jsonb,
       $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$,
       TRUE,
       $$1916-yilgi mardikorlik voqealarida Ubaydulla Xo'jayev yurtdoshlarini qanday himoya qilgan?$$
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';

-- ubaydulla-xojayev | «Sho'roi Islomiya»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Sho'roi Islomiya»$$, $$1917-yil mart oyida Toshkentda tuzilgan «Sho'roi Islomiya» tashkilotiga rais etib saylanganman.$$,
       $$["sho'roi islomiya", "1917", "rais", "toshkent"]$$::jsonb,
       $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$,
       TRUE,
       $$Ubaydulla Xo'jayev 1917-yilda qaysi tashkilotga rais etib saylangan?$$
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';

-- ubaydulla-xojayev | Harbiy vazirlik
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Harbiy vazirlik$$, $$Turkiston Muxtoriyati hukumatida menga harbiy ishlar vaziri vazifasi ishonib topshirilgan edi.$$,
       $$["harbiy vazir", "muxtoriyat", "hukumat", "lavozim"]$$::jsonb,
       $$Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939)$$,
       TRUE,
       $$Turkiston Muxtoriyati hukumatida Ubaydulla Xo'jayev qaysi lavozimni egallagan?$$
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';

-- ubaydulla-xojayev | Xotira
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotira$$, $$Bugun O'zbekistonda nomim jadid ma'rifatparvarlari qatorida hurmat bilan tilga olinadi, hayotim va faoliyatim tarix darsliklarida o'rganiladi.$$,
       $$["xotira", "jadidlar", "darslik", "hurmat"]$$::jsonb,
       $$«O'zbekiston tarixi» maktab darsligi, jadidchilik harakati mavzusi$$,
       TRUE,
       $$Bugun O'zbekistonda Ubaydulla Xo'jayev nomi qanday eslanadi?$$
  FROM heroes h WHERE h.slug = 'ubaydulla-xojayev';

-- uvaysiy | Taxallusim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Taxallusim$$, $$She'rlarimni «Uvaysiy» taxallusi bilan yozganman. Asl ismim Jahon bo'lgani uchun meni Jahonotin deb ham atashadi.$$,
       $$["taxallus", "uvaysiy", "jahonotin", "ism"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$,
       TRUE,
       $$«Uvaysiy» — bu shoiraning asl ismimi yoki adabiy taxallusi?$$
  FROM heroes h WHERE h.slug = 'uvaysiy';

-- uvaysiy | Oilam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Oilam$$, $$Otam Siddiq she'riyat shaydosi edi, onam Chinnibibi otin bo'lib, qizlarga saboq berardi. She'rga muhabbat menga oilamdan yuqqan.$$,
       $$["oila", "ota", "ona", "chinnibibi", "otin"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$,
       TRUE,
       $$Uvaysiy qanday oilada voyaga yetgan?$$
  FROM heroes h WHERE h.slug = 'uvaysiy';

-- uvaysiy | Devonim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Devonim$$, $$She'rlarim devon holida to'plangan. Devonimda g'azal, muxammas, murabba' va chistonlar bor.$$,
       $$["devon", "g'azal", "muxammas", "to'plam"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$,
       TRUE,
       $$Uvaysiy she'rlari qanday to'plam holida saqlanib qolgan?$$
  FROM heroes h WHERE h.slug = 'uvaysiy';

-- uvaysiy | Anor topishmog'im
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Anor topishmog'im$$, $$Eng mashhur chistonim anor haqida. U «Bu na gumbazdur, eshigi, tuynugidin yo'q nishon» deb boshlanadi — javobini topa olasanmi?$$,
       $$["anor", "chiston", "topishmoq", "gumbaz"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$,
       TRUE,
       $$Uvaysiyning «Bu na gumbazdur...» deb boshlanuvchi mashhur chistoni nima haqida?$$
  FROM heroes h WHERE h.slug = 'uvaysiy';

-- uvaysiy | Yashagan davrim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Yashagan davrim$$, $$Men Qo'qon xonligi davrida yashaganman. O'sha davr hukmdori Umarxon o'zi ham «Amiriy» taxallusi bilan she'rlar yozgan.$$,
       $$["qo'qon xonligi", "umarxon", "amiriy", "davr"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$,
       TRUE,
       $$Uvaysiy qaysi xonlik davrida yashab ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'uvaysiy';

-- uvaysiy | Zamondosh shoiralar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Zamondosh shoiralar$$, $$Men Nodira va Mahzuna bilan bir davrda ijod qilganman. Biz Qo'qon adabiy muhitining shoiralari sifatida tanilganmiz.$$,
       $$["nodira", "mahzuna", "shoiralar", "adabiy muhit"]$$::jsonb,
       $$Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845)$$,
       TRUE,
       $$Uvaysiy bilan bir davrda Qo'qon adabiy muhitida qaysi shoiralar ijod qilgan?$$
  FROM heroes h WHERE h.slug = 'uvaysiy';

-- uvaysiy | Xotiram
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotiram$$, $$Bugun she'rlarim maktab darsliklaridan o'rin olgan, O'zbekistonda ko'chalar va maktablar nomim bilan atalgan.$$,
       $$["xotira", "darslik", "ko'cha", "maktab"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Uvaysiy» maqolasi$$,
       TRUE,
       $$Bugun O'zbekistonda Uvaysiy xotirasi qanday ulug'lanadi?$$
  FROM heroes h WHERE h.slug = 'uvaysiy';

-- zardusht | «Gotlar» madhiyalari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Gotlar» madhiyalari$$, $$«Avesto»ning eng qadimgi qismi «Gotlar» deb ataladi. Bu madhiyalar bevosita menga nisbat beriladi.$$,
       $$["gotlar", "avesto", "madhiya", "qadimgi qism"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Avesto» maqolasi$$,
       TRUE,
       $$«Avesto»ning Zardushtga nisbat beriladigan eng qadimgi qismi qanday ataladi?$$
  FROM heroes h WHERE h.slug = 'zardusht';

-- zardusht | Axura Mazda
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Axura Mazda$$, $$Ta'limotimda ezgulik tangrisi — Axura Mazda ulug'lanadi. Bu nom «dono hukmdor» degan ma'noni anglatadi.$$,
       $$["axura mazda", "ezgulik", "tangri", "dono hukmdor"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Zardushtiylik» maqolasi$$,
       TRUE,
       $$Zardusht ta'limotida ulug'langan ezgulik tangrisi kim?$$
  FROM heroes h WHERE h.slug = 'zardusht';

-- zardusht | Ikki kuch kurashi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Ikki kuch kurashi$$, $$Ta'limotimga ko'ra, dunyoda ezgulik bilan yovuzlik o'rtasida kurash boradi. Har bir inson ezgulik tomonida turishi kerak, deb o'rgatganman.$$,
       $$["ezgulik", "yovuzlik", "kurash", "ta'limot"]$$::jsonb,
       $$«Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$Zardusht ta'limotiga ko'ra dunyoda qanday ikki kuch kurashadi?$$
  FROM heroes h WHERE h.slug = 'zardusht';

-- zardusht | Otashkadalar
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Otashkadalar$$, $$Izdoshlarim ibodat qiladigan joy otashkada deb atalgan. Otashkadalarda muqaddas olov hech qachon o'chirilmagan.$$,
       $$["otashkada", "olov", "ibodat", "muqaddas"]$$::jsonb,
       $$«Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$,
       TRUE,
       $$Zardusht dinida ibodat qilinadigan joy qanday atalgan?$$
  FROM heroes h WHERE h.slug = 'zardusht';

-- zardusht | Mehnat qadri
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mehnat qadri$$, $$Ta'limotimda halol mehnat ulug'lanadi: yer haydagan, bog' o'stirgan va chorva boqqan inson savobli ish qilgan sanaladi.$$,
       $$["mehnat", "dehqonchilik", "chorvachilik", "savob"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Zardushtiylik» maqolasi$$,
       TRUE,
       $$Zardusht ta'limotida qanday ishlar savobli sanalgan?$$
  FROM heroes h WHERE h.slug = 'zardusht';

-- zardusht | «Avesto»ning 2700 yilligi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Avesto»ning 2700 yilligi$$, $$2001-yilda O'zbekistonda «Avesto» yaratilganining 2700 yilligi keng nishonlandi. Urganch shahrida «Avesto» yodgorlik majmuasi barpo etildi.$$,
       $$["2700 yillik", "2001", "urganch", "yodgorlik", "avesto"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Avesto» maqolasi$$,
       TRUE,
       $$Zardusht kitobi «Avesto»ning 2700 yilligi O'zbekistonda qachon nishonlangan?$$
  FROM heroes h WHERE h.slug = 'zardusht';

-- zardusht | Beruniy guvohligi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Beruniy guvohligi$$, $$Buyuk olim Abu Rayhon Beruniy o'z asarlarida men va ta'limotim haqida qimmatli ma'lumotlar qoldirgan.$$,
       $$["beruniy", "olim", "ma'lumot", "asar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Zardusht» maqolasi$$,
       TRUE,
       $$Qaysi buyuk olim o'z asarlarida Zardusht haqida ma'lumot qoldirgan?$$
  FROM heroes h WHERE h.slug = 'zardusht';

-- zebo-ganiyeva | Moskva himoyasida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Moskva himoyasida$$, $$Urush yillarida 3-Moskva kommunistik o'qchi diviziyasi safida xizmat qilib, Moskva mudofaasi janglarida qatnashganman.$$,
       $$["moskva", "mudofaa", "diviziya", "front"]$$::jsonb,
       $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$,
       TRUE,
       $$Zebo G'aniyeva urush yillarida qaysi shahar mudofaasida qatnashgan?$$
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';

-- zebo-ganiyeva | Snayperlik kursi
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Snayperlik kursi$$, $$Frontda snayperlik kursini tugatib, mergan bo'lib yetishganman.$$,
       $$["snayper", "kurs", "mergan", "tayyorgarlik"]$$::jsonb,
       $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$,
       TRUE,
       $$Zebo G'aniyeva merganlik sirlarini qayerda o'rgangan?$$
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';

-- zebo-ganiyeva | Razvedka topshiriqlari
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Razvedka topshiriqlari$$, $$Razvedkachi sifatida front chizig'idan dushman orqasiga o'n olti marta o'tib, muhim ma'lumotlar olib qaytganman.$$,
       $$["razvedka", "front chizig'i", "topshiriq", "ma'lumot"]$$::jsonb,
       $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$,
       TRUE,
       $$Zebo G'aniyeva razvedkachi sifatida dushman orqasiga necha marta o'tgan?$$
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';

-- zebo-ganiyeva | Mukofotlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Mukofotlarim$$, $$Jangovar xizmatlarim uchun Qizil Bayroq ordeni bilan taqdirlanganman.$$,
       $$["orden", "qizil bayroq", "mukofot", "taqdirlash"]$$::jsonb,
       $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$,
       TRUE,
       $$Zebo G'aniyeva jangovar xizmatlari uchun qaysi orden bilan taqdirlangan?$$
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';

-- zebo-ganiyeva | Matbuot sahifalarida
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Matbuot sahifalarida$$, $$Urush yillari gazetalar jasoratim haqida yozgan, suratim matbuotda bosilib, nomim ko'pchilikka tanilgan.$$,
       $$["gazeta", "matbuot", "shuhrat", "surat"]$$::jsonb,
       $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$,
       TRUE,
       $$Urush yillarida Zebo G'aniyevaning nomi qanday mashhur bo'lgan?$$
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';

-- zebo-ganiyeva | Umrimning oxiri
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men uzoq umr ko'rdim: urushdan keyin Moskvada yashadim va 2010-yilda o'sha yerda vafot etdim.$$,
       $$["moskva", "2010", "umr", "vafot"]$$::jsonb,
       $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$,
       TRUE,
       $$Zebo G'aniyeva umrining so'nggi yillarini qaysi shaharda o'tkazgan?$$
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';

-- zebo-ganiyeva | Xotira
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Xotira$$, $$Bugun O'zbekistonda men haqimda maqolalar chop etilgan, jasoratim yoshlarga namuna sifatida so'zlab beriladi.$$,
       $$["xotira", "namuna", "jasorat", "yoshlar"]$$::jsonb,
       $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$,
       TRUE,
       $$Bugun O'zbekistonda Zebo G'aniyeva qanday eslanadi?$$
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';

-- zulfiya | Turmush o'rtog'im
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Turmush o'rtog'im$$, $$Turmush o'rtog'im — atoqli shoir Hamid Olimjon edi. Biz 1935-yilda oila qurganmiz, u menga eng yaqin maslakdosh bo'lgan.$$,
       $$["hamid olimjon", "turmush o'rtoq", "shoir", "oila", "1935"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$,
       TRUE,
       $$Zulfiyaning turmush o'rtog'i qaysi shoir bo'lgan?$$
  FROM heroes h WHERE h.slug = 'zulfiya';

-- zulfiya | «Bahor keldi seni so'roqlab»
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Bahor keldi seni so'roqlab»$$, $$Hamid Olimjon 1944-yilda bevaqt vafot etdi. Uning xotirasiga ko'plab she'rlar bag'ishladim, «Bahor keldi seni so'roqlab» she'rim shular jumlasidandir.$$,
       $$["bahor keldi", "she'r", "xotira", "hamid olimjon", "1944"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$,
       TRUE,
       $$Zulfiyaning «Bahor keldi seni so'roqlab» she'ri kimning xotirasiga bag'ishlangan?$$
  FROM heroes h WHERE h.slug = 'zulfiya';

-- zulfiya | «Saodat» jurnali
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$«Saodat» jurnali$$, $$Uzoq yillar xotin-qizlarga mo'ljallangan «Saodat» jurnalida bosh muharrir bo'lib ishladim.$$,
       $$["saodat", "jurnal", "muharrir", "xotin-qizlar"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$,
       TRUE,
       $$Zulfiya qaysi jurnalga uzoq yillar bosh muharrirlik qilgan?$$
  FROM heroes h WHERE h.slug = 'zulfiya';

-- zulfiya | Unvonim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Unvonim$$, $$1965-yilda menga «O'zbekiston xalq shoirasi» faxriy unvoni berilgan.$$,
       $$["xalq shoirasi", "unvon", "1965", "faxriy"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$,
       TRUE,
       $$Zulfiya qanday faxriy unvonga sazovor bo'lgan?$$
  FROM heroes h WHERE h.slug = 'zulfiya';

-- zulfiya | Safarlarim
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Safarlarim$$, $$Yozuvchilar delegatsiyalari tarkibida Osiyo va Afrikaning ko'plab mamlakatlarida bo'lib, o'zbek adabiyotini dunyoga tanitganman.$$,
       $$["safar", "delegatsiya", "osiyo", "afrika", "adabiyot"]$$::jsonb,
       $$Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996)$$,
       TRUE,
       $$Zulfiya qaysi qit'alar mamlakatlariga adabiy safarlarda borgan?$$
  FROM heroes h WHERE h.slug = 'zulfiya';

-- zulfiya | Nomimdagi mukofot
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$Nomimdagi mukofot$$, $$1999-yilda O'zbekistonda Zulfiya nomidagi Davlat mukofoti ta'sis etilgan. U iqtidorli qizlarga beriladi.$$,
       $$["mukofot", "zulfiya mukofoti", "1999", "qizlar"]$$::jsonb,
       $$O'zbekiston milliy ensiklopediyasi, «Zulfiya» maqolasi$$,
       TRUE,
       $$Zulfiya nomidagi Davlat mukofoti kimlarga beriladi?$$
  FROM heroes h WHERE h.slug = 'zulfiya';

-- zulfiya | 100 yillik sanam
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz)
SELECT h.id, $$100 yillik sanam$$, $$2015-yilda tavalludimning 100 yilligi O'zbekistonda keng nishonlandi, ijodimga bag'ishlangan tadbirlar o'tkazildi.$$,
       $$["100 yillik", "2015", "yubiley", "tavallud"]$$::jsonb,
       $$UZA.uz — Zulfiya tavalludining 100 yilligiga bag'ishlangan maqolalar (2015)$$,
       TRUE,
       $$Zulfiya tavalludining 100 yilligi qachon nishonlangan?$$
  FROM heroes h WHERE h.slug = 'zulfiya';

-- TOTAL: 35
