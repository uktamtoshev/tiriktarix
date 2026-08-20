-- Yangi ajdodlar (4-to'lqin): Qozizoda Rumiydan Ibrayim Yusupovgacha.
--
-- Har paket ikki bosqichdan o'tdi: tadqiqotchi agent ziyouz.com (yoki UzA)
-- maqolasidan faktlarni yig'di, adversarial tekshiruvchi agent o'sha maqolani
-- QAYTA o'qib har bir raqam, sana va nomni solishtirdi; tasdiqlanmagani
-- o'chirildi. So'ngra ikki kritik butun to'plamni ko'zdan kechirdi.
--
-- Yil manbada bo'lmasa NULL yozilgan — o'ylab topilgan sana yo'q (bumin-xoqon
-- prеtsedenti). Kalit so'zlar darhol dvigatel konvensiyasida — o'zak holida.
-- Vikipediya ishlatilmadi. METODIST TEKSHIRUVI SHART.


-- ═══════════ Abdulxoliq G'ijduvoniy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('abdulholiq-gijduvoniy', $$Abdulxoliq G'ijduvoniy$$, $$Xojagon tariqati asoschisi$$, 1103, 1179,
 NULL,
 $$Abdulxoliq G'ijduvoniy (1103-1179) — Buxoro viloyatining G'ijduvon tumanida tug'ilgan buyuk mutasavvif, xojagon tariqatining asoschisi. U tariqatni payg'ambar sunnatiga muvofiqlashtirib bid'atlardan tozalagan, sakkiz rashha-qoidani ishlab chiqqan va uning ta'limoti keyinchalik xojagon-naqshbandiya tariqati sifatida ko'plab o'lkalarga yoyilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men xojagon tariqatiga asos solgan Abdulxoliq G'ijduvoniyman. Mendan G'ijduvon, ustozlarim, tariqatimning sakkiz qoidasi va asarlarim haqida so'ra!$$,
 $$📿$$, $$["xojagon", "xojag", "gijduvon", "gijdu", "tariqat", "rashha", "naqshband"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1103-yilda Buxoro viloyatining G'ijduvon tumanida tug'ilganman. Shu bois meni G'ijduvoniy deb atashadi.$$, $$["tugil", "tavallud", "1103", "gijduvon", "qachon"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Abdulxoliq G'ijduvoniy (1103-1179)$$, TRUE,
       $$Abdulxoliq G'ijduvoniy qachon va qayerda tug'ilgan?$$, $$Abdulxoliq G'ijduvoniy 1103-yilda Buxoro viloyatining G'ijduvon tumanida tavallud topgan. Keyinchalik u butun musulmon Sharqiga mashhur ma'naviyat ustozi bo'lib yetishgan. Manba: Ziyouz.com, «Abdulxoliq G'ijduvoniy (1103-1179)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Bolaligim va ilm yo'lim$$, $$Men 9 yoshimdayoq Qur'oni karimni yod olganman. Boshlang'ich ta'limni G'ijduvonda olib, so'ng Buxoroning mashhur madrasalarida o'qiganman va Imom Sadriddin ismli yetuk allomadan tafsir ilmini o'rganganman.$$, $$["quron", "madrasa", "tahsil", "ilm", "buxoro", "sadriddin"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Abdulxoliq G'ijduvoniy (1103-1179)$$, TRUE,
       $$Abdulxoliq G'ijduvoniy bolaligida qanday ta'lim olgan?$$, $$Manbaga ko'ra, u 9 yoshidayoq Qur'oni karimni yod bilgan. Boshlang'ich ta'limni G'ijduvonda olib, tahsilni Buxoro shahrining mashhur madrasalarida davom ettirgan va Imom Sadriddin ismli zamonasining yetuk allomasidan tafsir ilmini o'rgangan. Manba: Ziyouz.com, «Abdulxoliq G'ijduvoniy (1103-1179)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ustozlarim$$, $$22 yoshimda Buxoroga kelgan davrning dongdor shayxi Xoja Yusuf Hamadoniy bilan uchrashib, u zotga shogird tushganman. Xojai Xizrni saboq pirim, Xoja Yusufni esa suhbat va xirqa pirim deb bilganman.$$, $$["ustoz", "hamadoniy", "hamad", "yusuf", "xizr", "pir"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Abdulxoliq G'ijduvoniy (1103-1179)$$, TRUE,
       $$Abdulxoliq G'ijduvoniyning ustozlari kim bo'lgan?$$, $$U 22 yoshida Buxoroga kelgan o'sha davrning dongdor shayxi Xoja Yusuf Hamadoniy bilan uchrashib, unga shogird tushgan. An'anaga ko'ra, Xojai Xizr uning saboq piri bo'lsa, Xoja Yusuf suhbat va xirqa piriga aylangan. Manba: Ziyouz.com, «Abdulxoliq G'ijduvoniy (1103-1179)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xojagon tariqati$$, $$Men xojalar — xojagon tariqatiga asos solganman. Tariqatni Muhammad payg'ambar sunnatiga muvofiqlashtirib, uni turli bid'atlar va botil qarashlardan tozalashga intilganman.$$, $$["xojagon", "xojag", "tariqat", "asos", "sunnat"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Abdulxoliq G'ijduvoniy (1103-1179)$$, TRUE,
       $$Abdulxoliq G'ijduvoniy qaysi tariqatga asos solgan?$$, $$Abdulxoliq G'ijduvoniy xojagon-naqshbandiya silsilasining asoschisi hisoblanadi. Xojagon tariqati vositasida u tariqatni Muhammad payg'ambar sunnatiga muvofiqlashtirgan, uni turli bid'atlar va botil qarashlardan tozalagan. Manba: Ziyouz.com, «Abdulxoliq G'ijduvoniy (1103-1179)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Sakkiz qoidam$$, $$Tariqatimda sakkiz rashha-qoidani ishlab chiqqanman: «Hush dar dam», «Nazar bar qadam», «Safar dar vatan», «Xilvat dar anjuman», «Yodkard», «Bozgasht», «Nigohdosht» va «Yoddosht». Ularda qalbni pok tutishga chaqirganman.$$, $$["rashha", "qoida", "sakkiz", "hush", "xilvat", "safar"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Abdulxoliq G'ijduvoniy (1103-1179)$$, TRUE,
       $$Xojagon tariqatining sakkiz qoidasi qanday nomlanadi?$$, $$Abdulxoliq G'ijduvoniy tariqatning 8 rashha-qoidasini ishlab chiqqan: «Hush dar dam», «Nazar bar qadam», «Safar dar vatan», «Xilvat dar anjuman», «Yodkard», «Bozgasht», «Nigohdosht» va «Yoddosht». Manba: Ziyouz.com, «Abdulxoliq G'ijduvoniy (1103-1179)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim$$, $$Men «Odobi tariqat», «Risolai sohibiya», «Az guftori Xoja Abdulxoliq G'ijduvoniy» va «Risolai shayx ush-shuyux hazrati Yusuf Hamadoniy» asarlarini yozganman. Shuningdek, so'fiyona ruboiylar ham bitganman.$$, $$["asar", "kitob", "yoz", "risola", "ruboiy", "odob"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Abdulxoliq G'ijduvoniy (1103-1179)$$, TRUE,
       $$Abdulxoliq G'ijduvoniy qanday asarlar yozgan?$$, $$Uning qalamiga «Odobi tariqat», «Risolai sohibiya», «Az guftori Xoja Abdulxoliq G'ijduvoniy», «Risolai shayx ush-shuyux hazrati Yusuf Hamadoniy» risolalari mansub. U go'zal so'fiyona ruboiylar ijodkori sifatida ham ma'lum — maqolada 15 ruboiysi Ergash Ochilov tarjimasida keltirilgan. Manba: Ziyouz.com, «Abdulxoliq G'ijduvoniy (1103-1179)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1179-yilda vafot etganman. Vafotimdan keyin tariqatimni Xoja Orif Revgariy, bir necha avloddan keyin esa Bahouddin Naqshband kabi izdoshlarim davom ettirib, u ko'plab o'lkalarga yoyilgan.$$, $$["vafot", "1179", "oxir", "umr", "naqshband"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Abdulxoliq G'ijduvoniy (1103-1179)$$, TRUE,
       $$Abdulxoliq G'ijduvoniy qachon vafot etgan?$$, $$Abdulxoliq G'ijduvoniy 1179-yilda vafot etgan. Uning vafotidan keyin xojagon tariqatini Xoja Orif Revgariy, keyinroq esa bir necha avlod o'tib Xoja Bahouddin Naqshband kabi dongdor shayxlar davom ettirgan; tariqat Turkiston, Eron, Afg'oniston, Hindiston, Turkiya, Iroq, hatto Shimoliy Afrikada keng tarqalgan. Manba: Ziyouz.com, «Abdulxoliq G'ijduvoniy (1103-1179)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abdulxoliq G'ijduvoniy qaysi tariqatga asos solgan?$$, $$["Xojagon tariqati", "Yassaviya tariqati", "Qodiriya tariqati", "Kubroviya tariqati"]$$::jsonb, 0, $$Abdulxoliq G'ijduvoniy xojalar — xojagon tariqatining asoschisi hisoblanadi. Uning ta'limoti keyinchalik xojagon-naqshbandiya tariqati sifatida ko'plab o'lkalarga yoyilgan.$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abdulxoliq G'ijduvoniy tariqatida nechta rashha-qoidani ishlab chiqqan?$$, $$["To'rtta", "Oltita", "Sakkizta", "O'nta"]$$::jsonb, 2, $$U tariqatning sakkiz rashha-qoidasini ishlab chiqqan: «Hush dar dam», «Nazar bar qadam», «Safar dar vatan», «Xilvat dar anjuman», «Yodkard», «Bozgasht», «Nigohdosht» va «Yoddosht».$$
  FROM heroes h WHERE h.slug = 'abdulholiq-gijduvoniy';


-- ═══════════ Abdullaxon II ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('abdullaxon-ii', $$Abdullaxon II$$, $$Buxoro xonligining qudratli hukmdori$$, 1534, 1598,
 (SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Abdullaxon II — Buxoro xonligining shayboniylar sulolasidan chiqqan eng yirik hukmdori (1583–1598), davlat arbobi, sarkarda hamda ilm-fan, ma'rifat va madaniyat homiysi. Uning davrida Buxoro madaniyat va ilm-fan markaziga aylangan, mamlakatda shaharsozlik taraqqiy etgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Abdullaxon II — Buxoro xonligining qudratli hukmdoriman. Mendan yurishlarim, poytaxtim Buxoro, madrasalar, islohotlarim va she'rlarim haqida so'ra!$$,
 $$👑$$, $$["abdul", "abdulla", "buxoro", "xon", "shayboniy", "hukmdor"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1534-yilda Miyonkolda, Ofarikent qishlog'ida tug'ilganman. Otam Iskandarxon shayboniylar sulolasidan bo'lgan.$$, $$["tugil", "tavallud", "miyonkol", "ofarikent", "iskandar"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Abdullaxon II$$, TRUE,
       $$Abdullaxon II qachon va qayerda tug'ilgan?$$, $$Abdullaxon II 1534-yilda Miyonkoldagi Ofarikent qishlog'ida tug'ilgan. Uning to'liq nasabi — Abdulla ibn Iskandarxon ibn Jonibek sulton ibn Xoja Muhammad ibn Abulxayrxon bo'lib, u shayboniylar sulolasiga mansub. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Poytaxtim Buxoro$$, $$1557-yilning may oyida Buxoroni qo'lga kiritib, uni poytaxtimga aylantirganman. Mening davrimda Buxoro madaniyat va ilm-fan markaziga aylangan.$$, $$["buxoro", "poytaxt", "shahar", "markaz", "egall"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Abdullaxon II$$, TRUE,
       $$Abdullaxon II qaysi shaharni poytaxt qilgan?$$, $$Abdullaxon II 1557-yil may oyida Buxoroni qo'lga kiritib, uni o'z poytaxtiga aylantirgan. Uning davrida Buxoro butun mamlakatning madaniyat va ilm-fan markaziga aylangan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yurishlarim va g'alabalarim$$, $$Markaziy hokimiyatga bo'ysunishdan bosh tortgan sultonlar bilan kurashib, Balxni 1574-yilda, Samarqandni 1578-yilda, Toshkent, Sayram, Turkiston va Farg'onani 1583-yilda egallaganman. Xorazmga ikki marta — 1594 va 1596-yillarda yurish qilib, markaziy hokimiyat hukmronligini qayta tiklaganman.$$, $$["yurish", "balx", "samarqand", "toshkent", "fargona", "sayram", "xorazm", "egall"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Abdullaxon II$$, TRUE,
       $$Abdullaxon II qaysi shaharlarni egallagan?$$, $$Abdullaxon II markaziy hokimiyatga bo'ysunishdan bosh tortgan shayboniy sultonlar bilan kurashib, Balx (1574), Samarqand (1578), Toshkent, Sayram, Turkiston va Farg'onani (1583) egallagan. Xorazmga ikki marta (1594 va 1596) yurish qilib, markaziy hokimiyat hukmronligini qayta tiklagan. Sind (1583) va Kashmirni (1586) egallab, davlatning janubiy chegaralarini mustahkamlagan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Davlatim chegaralari$$, $$Mening davrimda davlatimiz hududi Qashqardan Orol va Kaspiy dengizlari sohillarigacha, Turkiston va Sayramdan Xurosonning sharqiy qismigacha yetgan.$$, $$["chegara", "hudud", "qashqar", "kaspiy", "orol", "xuroson"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Abdullaxon II$$, TRUE,
       $$Abdullaxon II davrida davlat hududi qanday bo'lgan?$$, $$Abdullaxon II davrida mamlakat hududi Qashqardan Orol va Kaspiy dengizlari sohillarigacha, Turkiston va Sayramdan Xurosonning sharqiy qismigacha bo'lgan yerlarni o'z ichiga olgan. U faol tashqi siyosat olib borgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Obodonchilik ishlarim$$, $$Men yurtimda ko'plab turli inshootlar qurdirganman. Mening davrimda Buxoroda mashhur Abdullaxon madrasasi tashkil qilingan, mamlakatda shaharsozlik taraqqiy etgan.$$, $$["obodon", "inshoot", "qur", "madrasa", "bino", "shaharsoz"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Abdullaxon II$$, TRUE,
       $$Abdullaxon II qanday qurilish ishlarini amalga oshirgan?$$, $$Abdullaxon II ko'plab turli inshootlar qurdirgan. Uning davrida Buxoroda mashhur Abdullaxon madrasasi tashkil qilingan, mamlakatda shaharsozlik, adabiyot va ilm-fan taraqqiy etgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Pul islohotim$$, $$Men davlat boshqaruv tizimini mustahkamlaganman va pul islohoti o'tkazganman.$$, $$["pul", "isloh", "boshqar", "davlat", "siyosat"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Abdullaxon II$$, TRUE,
       $$Abdullaxon II qanday islohot o'tkazgan?$$, $$Manbada yozilishicha, Abdullaxon II davlat boshqaruv tizimini mustahkamlash, ayniqsa pul islohoti o'tkazish yo'lida faoliyat olib borgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'rlarim va ilm homiyligi$$, $$Men iste'dodli shoir sifatida «Xon» taxallusi bilan o'zbek va fors tillarida she'rlar yozganman. Mening davrimda Hofiz Tanish Buxoriy «Abdullanoma» nomli mashhur asarini yaratgan.$$, $$["asar", "kitob", "yoz", "sher", "shoir", "taxallus"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Abdullaxon II$$, TRUE,
       $$Abdullaxon II qanday taxallus bilan she'rlar yozgan?$$, $$Abdullaxon II «Xon» taxallusi bilan o'zbek va fors tillarida she'rlar yozgan. Uning davrida Hofiz Tanish Buxoriyning «Abdullanoma» (1584–89), Amin Ahmad Roziyning «Haft iqlim» (1583), Mutribiyning «Taskirati shuaro» (1593–95) kabi asarlar yaratilgan, Hasanxo'ja Nisoriyning «Muzakkiri ahbob» asari esa unga bag'ishlangan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1598-yil 8-fevralda Samarqandda vafot etganman. Meni Buxoro yaqinidagi Bahouddin majmuasiga dafn etishgan.$$, $$["vafot", "samarqand", "bahouddin", "dafn"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Abdullaxon II$$, TRUE,
       $$Abdullaxon II qachon vafot etgan?$$, $$Abdullaxon II 1598-yil 8-fevralda Samarqandda vafot etgan. Manbada yozilishicha, o'g'li Abdulmo'min amir Muhammad Boqibiy bilan kelishib, otasiga qarshi fitna uyushtirgan. U Buxoro yaqinidagi Bahouddin majmuasiga dafn etilgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abdullaxon II qaysi shaharni o'z davlatiga poytaxt qilgan?$$, $$["Samarqand", "Buxoro", "Toshkent", "Balx"]$$::jsonb, 1, $$Abdullaxon II 1557-yil may oyida Buxoroni qo'lga kiritib, uni poytaxtga aylantirgan. Uning davrida Buxoro madaniyat va ilm-fan markaziga aylangan.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abdullaxon II qanday taxallus bilan she'rlar yozgan?$$, $$["Navoiy", "Bobur", "Xon", "Furqat"]$$::jsonb, 2, $$Abdullaxon II iste'dodli shoir bo'lib, «Xon» taxallusi bilan o'zbek va fors tillarida she'rlar yozgan.$$
  FROM heroes h WHERE h.slug = 'abdullaxon-ii';


-- ═══════════ Abror Hidoyatov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('abror-hidoyatov', $$Abror Hidoyatov$$, $$O'zbek sahnasining yulduzi$$, 1900, 1958,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Abror Hidoyatov (1900-1958) — o'zbek teatrining buyuk aktyori, O'zbekiston xalq artisti. U 1918-yildan sahnada ijod qilib, ayniqsa Shekspirning Otello roli ijrosi bilan xalq dilida muhrlanib qolgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Abror Hidoyatovman — o'zbek sahnasining aktyori, Otello va Alisher Navoiy rollarining ijrochisiman. Mendan teatr, sahna va rollarim haqida so'ra!$$,
 $$🎭$$, $$["abror", "hidoy", "hidoyatov", "aktyor", "otello", "teatr"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1900-yilda tug'ilganman. Qaysi shaharda tug'ilganim haqida manbada aniq ma'lumot yo'q, ammo butun umrim o'zbek teatri bilan bog'liq bo'lgan.$$, $$["tugil", "tavallud", "1900", "qachon", "bolalik"]$$::jsonb, $$Ziyouz.com kutubxonasi — «Teatr tarixi» darsligi (Sotimboy Tursunboyev)$$, TRUE,
       $$Abror Hidoyatov qachon tug'ilgan?$$, $$Ziyouz.com portalidagi izohda Abror Hidoyatov 1900-yilda tug'ilib, 1958-yilda vafot etgani va mashhur teatr aktyori bo'lgani qayd etilgan. «Teatr tarixi» darsligida uning tug'ilgan joyi haqida aniq ma'lumot berilmagan. Manba: Ziyouz.com kutubxonasi.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Sahnaga kirishim$$, $$Aktyorlik faoliyatimni 1918-yilda boshlaganman. O'sha yili Mannon Uyg'ur «Turon» truppasini qayta tuzganida men, Fatxulla Umarov, Ma'suma Qoriyeva va Muzaffar Muhamedov kabi yoshlar uning safiga kirganmiz. 1921-yilda truppamizga «O'zbek davlat namuna teatri» nomi berilgan.$$, $$["teatr", "truppa", "turon", "sahna", "1918", "boshla"]$$::jsonb, $$Ziyouz.com kutubxonasi — «Teatr tarixi» darsligi (Sotimboy Tursunboyev)$$, TRUE,
       $$Abror Hidoyatov teatr faoliyatini qachon va qayerda boshlagan?$$, $$U 1918-yilda Mannon Uyg'ur qayta tashkil etgan «Turon» truppasida iste'dodli yoshlar qatorida sahnaga chiqqan. Bu jamoa 1921-yilda «O'zbek davlat namuna teatri» nomini olgan, 1929-yildan esa Hamza nomi bilan atalgan. Manba: Ziyouz.com kutubxonasi, «Teatr tarixi» darsligi.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk bosh rollarim$$, $$Yoshligimda musiqali dramalarda bosh rollarni o'ynaganman: 1920-yilda G'ulom Zafariyning «Halima» asarida Ne'mat rolini, 1923-yilda Xurshidning «Farhod va Shirin» asarida Farhod rolini ijro etganman. 1924-yilda «Layli va Majnun» spektaklida ham bosh rolni Ma'suma Qoriyeva bilan birga o'ynaganman.$$, $$["asar", "kitob", "yoz", "farhod", "layli", "halima"]$$::jsonb, $$Ziyouz.com kutubxonasi — «Teatr tarixi» darsligi (Sotimboy Tursunboyev)$$, TRUE,
       $$Abror Hidoyatov yoshligida qaysi asarlarda bosh rollarni o'ynagan?$$, $$Mannon Uyg'ur sahnalashtirgan spektakllarda u 1920-yili «Halima»da Ne'mat, 1923-yili «Farhod va Shirin»da Farhod rollarini, 1924-yili «Layli va Majnun»da bosh rolni ijro etgan. Sahnadagi sherigi ko'pincha aktrisa Ma'suma Qoriyeva bo'lgan. Manba: Ziyouz.com kutubxonasi, «Teatr tarixi» darsligi.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shekspir rollarim$$, $$Shekspirning «Otello» tragediyasida bosh rolni bir necha yil davomida o'ynaganman — akademik Komil Yashin buni «mislsiz mahorat» deb baholagan. Teatrimiz «Hamlet»ni ham sahnalashtirgan, chet elliklar bizning Shekspir ijromizdan hayratga tushganlar.$$, $$["otello", "hamlet", "shekspir", "tragediya", "rol", "asar"]$$::jsonb, $$Ziyouz.com kutubxonasi — «Teatr tarixi» darsligi (Sotimboy Tursunboyev)$$, TRUE,
       $$Abror Hidoyatov Shekspirning qaysi asarlarida o'ynagan?$$, $$«Teatr tarixi» darsligida chet elliklar «Hamlet», «Otello» kabi asarlarning o'zbek aktyorlari tomonidan yuqori darajada ijro etilishidan hayratga tushgani yozilgan. Akademik Komil Yashin esa «Muqanna» spektakli haqidagi maqolasida «O'zbek teatrining ulug' arbobi Abror Hidoyatov mana bir necha yildirkim, Otello rolini mislsiz mahorat bilan o'ynab keladi» deb qayd etgan. Manba: Ziyouz.com kutubxonasi, «Teatr tarixi» darsligi.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$G'ofir rolim$$, $$Hamzaning «Boy ila xizmatchi» dramasi 1939-yilda akademik drama teatrida sahnalashtirilganda G'ofir rolini birinchi bo'lib men o'ynaganman. Jamila rolida Sora Eshonto'rayeva, Solihboy rolida Obid Jalilov sherigim bo'lgan. Bu spektakl tomoshabinlarning eng sevimli tomoshasiga aylangan.$$, $$["gofir", "xizmatchi", "hamza", "spektakl", "asar", "rol"]$$::jsonb, $$Ziyouz.com kutubxonasi — «Teatr tarixi» darsligi (Sotimboy Tursunboyev)$$, TRUE,
       $$«Boy ila xizmatchi» spektaklida Abror Hidoyatov qaysi rolni o'ynagan?$$, $$Sora Eshonto'rayeva xotiralarida G'ofir rolini birinchi marta Abror Hidoyatov o'ynaganini aytadi. Spektakl 1939-yildan 1982-yilgacha 867 marta o'ynalgan, aktyorning bu roli haqida Aleksandr Deych 1985-yilda nashr etilgan «Abror Hidoyatov» kitobida yozgan. Manba: Ziyouz.com kutubxonasi, «Teatr tarixi» darsligi.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Navoiy va Muqanna$$, $$1944-yilda Hamid Olimjonning «Muqanna» dramasida Muqanna rolini, 1945-yil 1-aprelda premyerasi bo'lgan «Alisher Navoiy» spektaklida esa Navoiy rolini o'ynaganman. Navoiy roli haqida shunday yozganman: «Bu mening hayotimda juda og'ir ijodiy ish bo'ldi... Chunki Navoiy obrazi xalqimizning eng sevimli qahramonidir».$$, $$["navoiy", "muqanna", "alisher", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com kutubxonasi — «Teatr tarixi» darsligi (Sotimboy Tursunboyev)$$, TRUE,
       $$Abror Hidoyatov Alisher Navoiy va Muqanna rollarini qachon o'ynagan?$$, $$«Muqanna»ni 1944-yilda M.Uyg'ur va S.Mixoels sahnalashtirgan, Uyg'un va Izzat Sultonning «Alisher Navoiy» dramasi premyerasi esa 1945-yil 1-aprelda o'tgan. Ikkala spektaklda ham uning sherigi Sora Eshonto'rayeva (Guloyin va Guli rollari) bo'lgan, Hidoyatovning Navoiy talqini «romantik-psixologik yechim» deb baholangan. Manba: Ziyouz.com kutubxonasi, «Teatr tarixi» darsligi.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shogirdlarimga o'gitim$$, $$«Jaloliddin Manguberdi» pyesasida Temur Malik rolini ijro etganman, keyin bu rolning mashinkada ko'chirilgan nusxasini yosh aktyor Zikir Muhammadjonovga o'z qo'limdan topshirib, u bilan teatrda mashq qilganman. Shogirdlarimga «Sahnada bekorga hech narsa qilma... gaping yurakdan chiqmas ekan, tomoshabinni ishontirolmaysan» deb o'git berganman.$$, $$["ustoz", "shogird", "ogit", "nasihat", "temur"]$$::jsonb, $$Ziyouz.com kutubxonasi — «Teatr tarixi» darsligi (Sotimboy Tursunboyev)$$, TRUE,
       $$Abror Hidoyatov shogirdlariga qanday o'git bergan?$$, $$Zikir Muhammadjonov xotiralarida ustozi Temur Malik rolining mashinkada ko'chirilgan nusxasini unga berib, har kuni soat 10 da teatrda birga ishlagani yozilgan. Ustozning «gaping yurakdan chiqmas ekan, tomoshabinni ishontirolmaysan» degan so'zlari unga hayotiy saboq bo'lgan. Manba: Ziyouz.com kutubxonasi, «Teatr tarixi» darsligi.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1958-yilda vafot etganman. 1918-yilda «Turon» truppasida boshlangan sahna yo'lim qirq yil davom etgan va men umrimni o'zbek teatriga bag'ishlaganman.$$, $$["vafot", "olam", "oxir", "1958", "umr"]$$::jsonb, $$Ziyouz.com kutubxonasi — «Teatr tarixi» darsligi (Sotimboy Tursunboyev)$$, TRUE,
       $$Abror Hidoyatov qachon vafot etgan?$$, $$Abror Hidoyatov 1958-yilda vafot etgan. Xotirasi abadiylashtirilib, Toshkentdagi drama teatrlaridan biriga (sobiq «Yosh gvardiya» teatri) Abror Hidoyatov nomi berilgan. Manba: Ziyouz.com kutubxonasi, «Teatr tarixi» darsligi.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abror Hidoyatov qaysi rol ijrosi bilan ayniqsa mashhur bo'lgan?$$, $$["Farhod", "Otello", "Muqanna", "G'ofir"]$$::jsonb, 1, $$«Teatr tarixi» darsligida akademik Komil Yashin Abror Hidoyatov bir necha yildan beri Otello rolini mislsiz mahorat bilan o'ynab kelayotganini yozgan — bu uning eng mashhur ijrosi bo'lgan.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$1945-yil 1-aprelda premyerasi o'tgan «Alisher Navoiy» spektaklida Abror Hidoyatov qaysi rolni ijro etgan?$$, $$["Husayn Boyqaro", "Majdiddin", "Alisher Navoiy", "Mansur"]$$::jsonb, 2, $$Mannon Uyg'ur sahnalashtirgan bu spektaklda Alisher Navoiy rolini Abror Hidoyatov, Guli rolini Sora Eshonto'rayeva o'ynagan.$$
  FROM heroes h WHERE h.slug = 'abror-hidoyatov';


-- ═══════════ Abul Mu'in an-Nasafiy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('abul-muin-nasafiy', $$Abul Mu'in an-Nasafiy$$, $$Kalom ilmi allomasi$$, 1027, 1114,
 NULL,
 $$Abul Mu'in an-Nasafiy (1027–1114) — Nasafda (hozirgi Qarshi) tug'ilgan kalom ilmining buyuk namoyandasi. U Abu Mansur Moturidiy asos solgan moturidiya ta'limotining dunyoda keng miqyosda tarqalishiga katta hissa qo'shgan va «Tabsirat al-adilla» kabi mashhur asarlar yozgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Abul Mu'in an-Nasafiyman — qadimiy Nasaf zaminida tug'ilgan kalom ilmi allomasiman. Mendan hayotim, «Tabsirat al-adilla» kitobim va moturidiya ta'limoti haqida so'ra!$$,
 $$📜$$, $$["nasaf", "kalom", "moturid", "tabsir", "qarshi", "alloma"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1027-yilda qadimiy Nasaf shahrida tug'ilganman. Bu shahar hozirgi Qarshi shahri o'rnida joylashgan edi.$$, $$["tugil", "tavallud", "nasaf", "qarshi", "1027"]$$::jsonb, $$UzA (uza.uz) — maqola: «Prezidentimiz Abul-Mu'iyn an-Nasafiy ziyoratgohidagi bunyodkorlik ishlari bilan tanishdi»$$, TRUE,
       $$Abul Mu'in an-Nasafiy qachon va qayerda tug'ilgan?$$, $$Arab olimi Xayriddin az-Zirikliy «Al-A'lom» asarida va Umar Rizo Kahhola «Mu'jam al-muallifiyn» asarida allomaning 1027-yil Nasaf (hozirgi Qarshi) shahrida tug'ilganini zikr etgan. Manba: UzA (uza.uz).$$
  FROM heroes h WHERE h.slug = 'abul-muin-nasafiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ziyoli oilam$$, $$Men ilmu urfonda yetuk, ziyoli bir oilada ulg'ayganman. Uzoq ajdodim Makhul Nasafiy Imom Moturidiyning shogirdi bo'lgan.$$, $$["oila", "ziyoli", "makhul", "maxul", "bobo", "shogird"]$$::jsonb, $$UzA (uza.uz) — maqola: «Prezidentimiz Abul-Mu'iyn an-Nasafiy ziyoratgohidagi bunyodkorlik ishlari bilan tanishdi»$$, TRUE,
       $$Abul Mu'in an-Nasafiy qanday oilada ulg'aygan va katta bobosi kim bo'lgan?$$, $$UzA maqolasiga ko'ra, alloma ilmu urfonda yetuk, ziyoli oilada ulg'aygan. Uning uzoq ajdodi Makhul Nasafiy moturidiya ta'limotiga asos solgan Imom Moturidiyning shogirdi bo'lgan. Manba: UzA (uza.uz).$$
  FROM heroes h WHERE h.slug = 'abul-muin-nasafiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kalom ilmi xizmatida$$, $$Men kalom ilmi bilan shug'ullanganman — bu ilm islom e'tiqodini dalillar bilan asoslab beradi. Abu Mansur Moturidiy asos solgan moturidiya ta'limotining keng tarqalishiga xizmat qilganman.$$, $$["kalom", "moturid", "talimot", "etiqod", "ilm"]$$::jsonb, $$UzA (uza.uz) — maqola: «Prezidentimiz Abul-Mu'iyn an-Nasafiy ziyoratgohidagi bunyodkorlik ishlari bilan tanishdi»$$, TRUE,
       $$Abul Mu'in an-Nasafiy qaysi ilm rivojiga katta hissa qo'shgan?$$, $$UzA maqolasida alloma kalom ilmining buyuk namoyandalaridan biri deb ta'riflanadi: u Abu Mansur Moturidiy asos solgan moturidiya ta'limotining dunyoda keng miqyosda tarqalishiga katta hissa qo'shgan. Manba: UzA (uza.uz).$$
  FROM heroes h WHERE h.slug = 'abul-muin-nasafiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Tabsirat al-adilla» asarim$$, $$Eng e'tiborli kitoblarimdan birini «Tabsirat al-adilla» deb ataganman. Bu asarimda islom e'tiqodi masalalarini Abu Mansur Moturidiy yo'lida yoritganman.$$, $$["tabsir", "adilla", "asar", "kitob", "yoz", "dalil"]$$::jsonb, $$UzA (uza.uz) — maqola: «Prezidentimiz Abul-Mu'iyn an-Nasafiy ziyoratgohidagi bunyodkorlik ishlari bilan tanishdi»$$, TRUE,
       $$Abul Mu'in an-Nasafiyning eng mashhur asari qanday nomlanadi?$$, $$Asarning to'liq nomi — «Tabsirat al-adilla fi usul ad-diyn a'la tariqati Abi Mansur al-Moturidiy». U jahon kutubxonalarida saqlanadigan juda e'tiborli asarlardan biri sanaladi. Manba: UzA (uza.uz).$$
  FROM heroes h WHERE h.slug = 'abul-muin-nasafiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mashhur kitoblarim$$, $$Men islom e'tiqodiga oid kitoblar yozganman. Jahon kutubxonalarida saqlanadigan asarlarim orasida «Tabsirat al-adilla», «Bahrul-kalom» va «At-tamhid» kitoblarim juda e'tiborli sanaladi.$$, $$["asar", "kitob", "yoz", "bahr", "tamhid", "kutubxon"]$$::jsonb, $$UzA (uza.uz) — maqola: «Prezidentimiz Abul-Mu'iyn an-Nasafiy ziyoratgohidagi bunyodkorlik ishlari bilan tanishdi»$$, TRUE,
       $$Abul Mu'in an-Nasafiyning qaysi asarlari jahon kutubxonalarida saqlanadi?$$, $$UzA maqolasiga ko'ra, jahon kutubxonalarida saqlanadigan asarlari orasida «Tabsirat al-adilla fi usul ad-diyn», «Bahrul-kalom fi ilmil kalom» va «At-tamhid li qova'idit tavhid» kitoblari juda e'tiborli hisoblanadi. «Bahrul-kalom» asari moturidiya maktabining kalom ilmi bo'yicha asosiy manbalaridan biridir. Manba: UzA (uza.uz).$$
  FROM heroes h WHERE h.slug = 'abul-muin-nasafiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1114-yilda vafot etganman. Qabrim ustida bunyod etilgan maqbara Qarshi tumanidagi Qovchin qishlog'ida joylashgan.$$, $$["vafot", "qabr", "qovchin", "1114", "maqbar"]$$::jsonb, $$UzA (uza.uz) — maqola: «Prezidentimiz Abul-Mu'iyn an-Nasafiy ziyoratgohidagi bunyodkorlik ishlari bilan tanishdi»$$, TRUE,
       $$Abul Mu'in an-Nasafiy qachon vafot etgan va maqbarasi qayerda joylashgan?$$, $$Vafoti haqida aksar manbalarda 1114-yil ko'rsatilgan. Qarshi tumanidagi Qovchin qishlog'ida joylashgan Abul Mu'in an-Nasafiy maqbarasi qadimiy ziyoratgohlardan sanaladi va bugungi kunda obodonlashtirilgan. Manba: UzA (uza.uz).$$
  FROM heroes h WHERE h.slug = 'abul-muin-nasafiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abul Mu'in an-Nasafiyning eng mashhur asari qaysi?$$, $$["«Boburnoma»", "«Tabsirat al-adilla»", "«Al-Qonun fit-tib»", "«Devonu lug'otit turk»"]$$::jsonb, 1, $$Allomaning eng mashhur asari «Tabsirat al-adilla» bo'lib, unda islom e'tiqodi masalalari Abu Mansur Moturidiy yo'lida yoritilgan.$$
  FROM heroes h WHERE h.slug = 'abul-muin-nasafiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abul Mu'in an-Nasafiy qaysi shaharda tug'ilgan?$$, $$["Samarqand", "Buxoro", "Nasaf (hozirgi Qarshi)", "Xiva"]$$::jsonb, 2, $$Alloma 1027-yilda Nasaf shahrida tug'ilgan. Bu qadimiy shahar hozirgi Qarshi shahri o'rnida joylashgan.$$
  FROM heroes h WHERE h.slug = 'abul-muin-nasafiy';


-- ═══════════ Asqad Muxtor ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('asqad-muxtor', $$Asqad Muxtor$$, $$Yozuvchi va shoir$$, 1920, 1997,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Asqad Muxtor — O'zbekiston xalq yozuvchisi, shoir va tarjimon. U «Opa-singillar», «Tug'ilish», «Chinor» romanlari hamda «99 miniatyura» kabi she'riy to'plamlari bilan o'zbek adabiyotiga katta hissa qo'shgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Asqad Muxtorman — «Opa-singillar» va «Chinor» romanlarini yozgan adibman. Mendan hayotim, asarlarim va she'rlarim haqida so'ra!$$,
 $$✍️$$, $$["asqad", "muxtor", "yozuv", "shoir", "adib", "chinor"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1920-yil 23-dekabrda Farg'ona shahrida, temiryo'l ishchisi oilasida tug'ilganman.$$, $$["tugil", "tavallud", "qachon", "qayer", "fargona"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Asqad Muxtor$$, TRUE,
       $$Asqad Muxtor qachon va qayerda tug'ilgan?$$, $$Asqad Muxtor 1920-yil 23-dekabrda Farg'ona shahrida dunyoga kelgan. U temiryo'l ishchisi oilasida voyaga yetgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Opa-singillar» romanim$$, $$1955-yilda «Opa-singillar» romanimni e'lon qilganman. Bu asarim eng muhim romanlarimdan biri bo'lgan.$$, $$["opa", "singil", "roman", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Asqad Muxtor$$, TRUE,
       $$Asqad Muxtorning «Opa-singillar» romani haqida nima ma'lum?$$, $$«Opa-singillar» romani 1955-yilda e'lon qilingan bo'lib, Asqad Muxtorning muhim romanlaridan biri sanaladi. Bu roman davrning muhim masalalarini yoritgan asarlari qatorida tilga olinadi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Chinor» romanim$$, $$«Chinor» romanimni 1973-yilda e'lon qilganman. Bundan tashqari «Tug'ilish» (1963) va «Davr mening taqdirimda» (1964) romanlarini ham yozganman.$$, $$["chinor", "chino", "roman", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Asqad Muxtor$$, TRUE,
       $$Asqad Muxtorning «Chinor» romani qachon yaratilgan?$$, $$«Chinor» romani 1973-yilda e'lon qilingan. Adib shuningdek «Tug'ilish» (1963) va «Davr mening taqdirimda» (1964) romanlarini ham yaratgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riy ijodim$$, $$She'riyatda «Po'lat quyuvchi» (1947), «Hamshaharlarim» (1949) kabi kitoblar chiqarganman. «99 miniatyura» va «Karvon qo'ng'irog'i» ham mening she'riy to'plamlarimdir.$$, $$["sher", "miniatyur", "karvon", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Asqad Muxtor$$, TRUE,
       $$Asqad Muxtor qanday she'riy to'plamlar yozgan?$$, $$Asqad Muxtor «Po'lat quyuvchi» (1947), «Hamshaharlarim» (1949), «Chin yurakdan» (1956) she'riy kitoblari muallifidir. «99 miniatyura» va «Karvon qo'ng'irog'i» uning mashhur she'riy to'plamlari hisoblanadi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Muharrirlik faoliyatim$$, $$1960–1965-yillarda «Sharq yulduzi» jurnalida bosh muharrir bo'lib ishlaganman. «Guliston» jurnali hamda «O'zbekiston adabiyoti va san'ati» haftaligida ham muharrirlik qilganman.$$, $$["muharrir", "jurnal", "gazeta", "sharq", "guliston"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Asqad Muxtor$$, TRUE,
       $$Asqad Muxtor qayerlarda ishlagan?$$, $$Asqad Muxtor 1960–1965-yillarda «Sharq yulduzi» jurnalining bosh muharriri bo'lgan. U «Guliston» jurnali va «O'zbekiston adabiyoti va san'ati» haftaligida ham muharrir bo'lib ishlagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tarjimalarim$$, $$Sofokl, Pushkin, Lermontov, Mayakovskiy va Gorkiy asarlarini o'zbek tiliga tarjima qilganman. Tagor, Shevchenko va Blok ijodidan ham tarjimalar qilganman.$$, $$["tarjima", "pushkin", "lermontov", "gorkiy", "sofokl"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Asqad Muxtor$$, TRUE,
       $$Asqad Muxtor kimlarning asarlarini tarjima qilgan?$$, $$Adib Sofokl, Tagor, Pushkin, Lermontov, Mayakovskiy, Gorkiy, Shevchenko va Blok asarlarini o'zbek tiliga o'girgan. Tarjimalari orqali jahon adabiyoti namunalarini o'zbek kitobxonlariga yetkazgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mukofotlarim va unvonlarim$$, $$1972-yilda Hamza nomidagi respublika Davlat mukofotiga sazovor bo'lganman. 1980-yilda «O'zbekiston xalq yozuvchisi» unvonini, 1995-yilda esa «Do'stlik» ordenini olganman.$$, $$["mukofot", "unvon", "orden", "xalq", "hamza"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Asqad Muxtor$$, TRUE,
       $$Asqad Muxtor qanday mukofot va unvonlar olgan?$$, $$Asqad Muxtor 1972-yilda Hamza nomidagi respublika Davlat mukofoti bilan taqdirlangan. 1980-yilda «O'zbekiston xalq yozuvchisi» unvonini, 1995-yilda «Do'stlik» ordenini olgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1997-yil 17-aprelda Toshkent shahrida vafot etganman.$$, $$["vafot", "umr", "oxir", "toshkent", "yosh"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Asqad Muxtor$$, TRUE,
       $$Asqad Muxtor qachon vafot etgan?$$, $$Asqad Muxtor 1997-yil 17-aprelda Toshkent shahrida vafot etgan. U o'zbek adabiyotida yozuvchi, shoir va tarjimon sifatida chuqur iz qoldirgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Asqad Muxtor qaysi shaharda tug'ilgan?$$, $$["Toshkent", "Farg'ona", "Samarqand", "Andijon"]$$::jsonb, 1, $$Asqad Muxtor 1920-yil 23-dekabrda Farg'ona shahrida, temiryo'l ishchisi oilasida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Quyidagi romanlardan qaysi biri Asqad Muxtor qalamiga mansub?$$, $$["«O'tkan kunlar»", "«Chinor»", "«Sarob»", "«Kecha va kunduz»"]$$::jsonb, 1, $$«Chinor» — Asqad Muxtorning 1973-yilda e'lon qilingan romani. U «Opa-singillar» (1955), «Tug'ilish» (1963) va «Davr mening taqdirimda» (1964) romanlarini ham yozgan.$$
  FROM heroes h WHERE h.slug = 'asqad-muxtor';


-- ═══════════ Atoiy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('atoyi', $$Atoiy$$, $$Temuriylar davri g'azalnavis shoiri$$, NULL, NULL,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Atoiy — XV asrda yashab ijod qilgan o'zbek g'azalnavis shoiri. Alisher Navoiyning xabar berishicha, u Mirzo Ulug'bek saroyi shoirlari orasida ham bo'lgan. Uning 260 g'azalini o'z ichiga olgan devoni bizgacha yetib kelgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Atoiy — temuriylar davrida yashagan g'azalnavis shoirman. Mendan g'azallarim, devonim va yashab ijod qilgan shaharlarim haqida so'ra!$$,
 $$🪶$$, $$["atoyi", "atoiy", "gazal", "devon", "shoir", "temuriy"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Mening tug'ilgan yilim tarixda aniq saqlanmagan — bu haqda manbalarda ma'lumot yo'q. Men XV asrda yashab ijod qilganman, hayotim Balx shahri bilan bog'liq.$$, $$["tugil", "tavallud", "balx", "asr", "qayer"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Atoiy (XV asr)$$, TRUE,
       $$Atoiy qachon va qayerda tug'ilgan?$$, $$Atoiyning aniq tug'ilgan yili ma'lum emas, u XV asrda yashagan shoirdir. Manbalarda uning Balx bilan bog'liq ekani qayd etiladi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Nasl-nasabim$$, $$Men ulug' shayx Ahmad Yassaviy xonadoniga mansubman: uning ukasi Ibrohim ota avlodidanman va Ismoil ota farzandlaridan sanalganman.$$, $$["yassa", "yassaviy", "avlod", "nasab", "ismoil", "ibroh"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Atoiy (XV asr)$$, TRUE,
       $$Atoiy kimning avlodidan bo'lgan?$$, $$Alisher Navoiy «Majolis un-nafois» asarida Atoiyni Ismoil ota farzandlaridan deb yozgan. Navoiy «Nasoyim ul-muhabbat» asarida esa Ismoil ota Ahmad Yassaviyning inisi Ibrohim otaning o'g'li ekanini aytadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yashagan shaharlarim$$, $$Men Samarqand, Buxoro va Balx shaharlarida yashaganman. Turkiy, fors va arab adabiyotlarini chuqur o'rganib, turkiy va fors tillarida ijod qilganman.$$, $$["samar", "samarqand", "buxoro", "balx", "yasha", "shahar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Atoiy (XV asr)$$, TRUE,
       $$Atoiy qaysi shaharlarda yashagan va qanday ilm olgan?$$, $$Atoiy Samarqand, Buxoro va Balx shaharlarida yashab, turkiy, fors va arab adabiyotlarini chuqur o'rgangan. U turkiy va fors tillarida ijod qilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ulug'bek saroyi haqida$$, $$Ba'zi manbalarga ko'ra, men Mirzo Ulug'bek saroyi shoirlari orasida ham bo'lganman — bu masala olimlar orasida bahsli.$$, $$["ulugb", "ulugbek", "saroy", "mirzo", "xizmat"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Atoiy (XV asr)$$, TRUE,
       $$Atoiy Ulug'bek saroyida bo'lgani haqida kim xabar bergan?$$, $$Manbada bu ma'lumot ehtiyotkorlik bilan beriladi: «Navoiyning xabar berishicha, Atoiy Ulug'bek saroyi shoirlari orasida ham bo'lgan». Ya'ni bu xabar Alisher Navoiy ma'lumotiga tayanadi; shoirning saroydagi hayoti haqida boshqa tafsilotlar manbada keltirilmagan. Ulug'bek davri Samarqandda ilm-fan va adabiyot ravnaq topgan davr edi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$G'azallarim va uslubim$$, $$Men g'azalnavis shoirman — g'azallarimda ishq-muhabbatni kuylaganman. She'rlarimni asosan aruzning ramal bahrida yozganman, ularda xalq iboralari va maqollardan foydalanganman. Misralarim qisqa, so'zlarim sodda bo'lgani uchun g'azallarim xalq qo'shiqlariga aylanib ketgan.$$, $$["gazal", "asar", "kitob", "yoz", "ishq", "ramal"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Atoiy (XV asr)$$, TRUE,
       $$Atoiy qanday she'rlar yozgan va uning uslubi qanday bo'lgan?$$, $$Atoiy asosan g'azal janrida ijod qilgan, aruzning ramal bahridan foydalangan. She'rlari yengil ohangli, misralari qisqa va tili sodda bo'lgani uchun ular xalq qo'shiqlariga aylangan; ularda xalq iboralari, maqol va matallar ko'p uchraydi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Devonim$$, $$G'azallarimni devon qilib to'plaganman. Devonimda 260 g'azalim jamlangan.$$, $$["devon", "asar", "kitob", "yoz", "qolyozma"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Atoiy (XV asr)$$, TRUE,
       $$Atoiy devonida nechta g'azal bor va u qayerda saqlanadi?$$, $$Atoiy devonining taxminan XVI asrda ko'chirilgan qo'lyozma nusxasi Sankt-Peterburgda saqlanadi. Qo'lyozma muqovasida va oxirida «Devoni Shayxzoda Atoyi» deb qayd etilgan bo'lib, unda 260 g'azal jamlangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shuhratim$$, $$She'rlarim o'z zamonimda turkiylar orasida katta shuhrat qozongan. Zamondoshlarim meni darveshsifat, kamtarin va xushxulq inson sifatida bilishgan.$$, $$["navoi", "navoiy", "shuhrat", "mashhur", "darvesh"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Atoiy (XV asr)$$, TRUE,
       $$Atoiy haqida Alisher Navoiy nima degan?$$, $$Alisher Navoiy «Majolis un-nafois» asarida Atoiyni «darveshvash va xushxulq» deb ta'riflagan hamda uning she'ri o'z zamonida atrok (turkiylar) orasida ko'p shuhrat tutganini qayd etgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Mening vafot yilim ham aniq ma'lum emas — men XV asrda vafot etganman. Kelgusi avlodlarga g'azallarim jamlangan devonim meros bo'lib qolgan.$$, $$["vafot", "olim", "oxir", "meros"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Atoiy (XV asr)$$, TRUE,
       $$Atoiy qachon vafot etgan?$$, $$Atoiyning vafot yili manbalarda qayd etilmagan; u XV asrda yashab o'tgan. Devonining taxminan XVI asrda ko'chirilgan qo'lyozma nusxasi bizgacha yetib kelgan va Sankt-Peterburgda saqlanadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Atoiy qaysi shaharlarda yashab ijod qilgan?$$, $$["Samarqand, Buxoro va Balx", "Xiva, Qo'qon va Marg'ilon", "Bag'dod, Damashq va Qohira", "Dehli, Lohur va Kobul"]$$::jsonb, 0, $$Atoiy Samarqand, Buxoro va Balx shaharlarida yashab, turkiy, fors va arab adabiyotlarini chuqur o'rgangan.$$
  FROM heroes h WHERE h.slug = 'atoyi';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Atoiy devonining qo'lyozmasida nechta g'azal jamlangan?$$, $$["100 g'azal", "260 g'azal", "500 g'azal", "1000 dan ortiq g'azal"]$$::jsonb, 1, $$Atoiy devonining taxminan XVI asrda ko'chirilgan qo'lyozmasida 260 g'azal jamlangan bo'lib, u Sankt-Peterburgda saqlanadi.$$
  FROM heroes h WHERE h.slug = 'atoyi';


-- ═══════════ Botir Zokirov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('botir-zokirov', $$Botir Zokirov$$, $$O'zbek estradasining asoschisi$$, 1936, 1985,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Botir Zokirov (1936–1985) — mashhur o'zbek estrada xonandasi, aktyor va rassom, O'zbekiston xalq artisti (1965). U o'zbek zamonaviy professional estrada qo'shiqchiligining asoschisi bo'lib, 1957-yilgi Moskva festivalida ijro etgan «Arab tangosi» qo'shig'i bilan mashhur bo'lgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Botir Zokirovman — o'zbek estradasining asoschisi, xonandaman. Mendan «Arab tangosi», jahon xalqlari qo'shiqlari va estrada san'atimiz haqida so'ra!$$,
 $$🎤$$, $$["zokir", "botir", "estrada", "tango", "xonanda", "qoshiq"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1936-yil 26-aprelda Moskva shahrida tug'ilganman. Otam Karim Zokirov mashhur opera xonandasi, onam Shohista Saidova aktrisa va xonanda edi. Singlim Luiza, ukalarim Navfal, Farrux, Jamshid va Ravshan ham san'atkor bo'lib yetishgan.$$, $$["tugil", "tavallud", "moskva", "ota", "oila"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Zokirovlar (Botir Zokirov)$$, TRUE,
       $$Botir Zokirov qachon va qayerda tug'ilgan?$$, $$Botir Zokirov 1936-yil 26-aprelda Moskva shahrida tug'ilgan. Otasi Karim Zokirov opera xonandasi va O'zbekiston xalq artisti, onasi Shohista Saidova aktrisa va xonanda bo'lgan. Zokirovlar — XX asr o'zbek musiqa san'atiga ulkan hissa qo'shgan san'atkorlar sulolasi. Manba: O'zbekiston Milliy Ensiklopediyasi, «Zokirovlar» maqolasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Arab tangosi» qo'shig'i$$, $$1957-yili Moskvada bo'lib o'tgan xalqaro yoshlar va talabalar festivalida «Arab tangosi»ni ilk bor ijro etganman. Bu misr qo'shig'ini arab tilida kuylaganman va u nomim bilan birga elga mashhur bo'lib ketgan.$$, $$["tango", "arab", "festival", "moskva", "1957", "misr"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Zokirovlar (Botir Zokirov)$$, TRUE,
       $$Botir Zokirov «Arab tangosi»ni qachon va qayerda ilk bor ijro etgan?$$, $$«Arabcha tango» — Botir Zokirov estrada uslubida qayta ishlagan misr qo'shiqlaridan biri. U bu qo'shiqni 1957-yili Moskvada o'tgan xalqaro yoshlar va talabalar festivalida ilk bor ijro etgan. Manba: UzA — «Botir Zokirov va Sharq musiqasi» maqolasi; O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'qigan dargohlarim$$, $$1952–1957-yillarda Toshkent davlat konservatoriyasining vokal fakultetida tahsil olganman. 1958–1962-yillarda esa Toshkent davlat teatr va rassomlik san'ati institutining rejissyorlik fakultetida o'qiganman.$$, $$["oqi", "talim", "konserv", "institut", "rejiss"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Zokirovlar (Botir Zokirov)$$, TRUE,
       $$Botir Zokirov qayerlarda o'qigan?$$, $$Botir Zokirov Toshkent davlat konservatoriyasining vokal fakultetida (1952–1957) va Toshkent davlat teatr va rassomlik san'ati institutining rejissyorlik fakultetida (1958–1962) ta'lim olgan. Uning ovozi lirik-dramatik tenor edi. Manba: O'zbekiston Milliy Ensiklopediyasi, «Zokirovlar» maqolasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Estrada san'atidagi yo'lim$$, $$Men o'zbek zamonaviy professional estrada qo'shiqchiligining asoschisiman. «Yoshlik» ansamblida (1957) va O'zbek davlat estrada orkestrida (1958–1970) yakkaxon xonanda bo'lganman. 1972–1978-yillarda Toshkent myuzik-xollining tashkilotchisi, yakkaxoni va badiiy rahbari bo'lganman.$$, $$["estrada", "yoshlik", "orkestr", "myuzik", "asoschi"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Zokirovlar (Botir Zokirov)$$, TRUE,
       $$Botir Zokirov o'zbek estradasida qanday o'rin tutgan?$$, $$Botir Zokirov o'zbek zamonaviy professional estrada qo'shiqchiligining asoschisi hisoblanadi. U 1978-yildan «O'zbekkonsert»ning yakkaxon xonandasi bo'lgan, 1965-yili unga O'zbekiston xalq artisti unvoni berilgan. Manba: O'zbekiston Milliy Ensiklopediyasi, «Zokirovlar» maqolasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Jahon xalqlari qo'shiqlari$$, $$Hind, eron, misr, suriya, livan, meksika va italyan qo'shiqlarini har birini o'z tilida kuylaganman — «Maro bebus», «Dil orzusi», «O'tmishimga yig'layman» shular jumlasidan. Fransiya, Avstriya, Germaniya, Kuba, shuningdek Afrika mamlakatlarida gastrollarda bo'lganman.$$, $$["jahon", "xorij", "hind", "eron", "gastrol", "asar"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Zokirovlar (Botir Zokirov)$$, TRUE,
       $$Botir Zokirov qaysi xalqlarning qo'shiqlarini kuylagan?$$, $$U E. Masias, J. Brel, R. Shankar, Farid al-Atrash, aka-uka Rahboniylar kabi mualliflarning asarlarini asl tilida ijro etgan. Buyuk turk adibi Nozim Hikmat uning qo'shiqlarining shaydosi bo'lgan. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com); UzA — «Botir Zokirov va Sharq musiqasi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Rassomlik va yozuvchilik$$, $$Rassom sifatida «Avtoportret», «Saraton», «Gumbazlar», «Bolalik ko'chasi», «Chor minor» kabi asarlar yaratganman. Hikoya, ocherk va she'rlar, shuningdek «So'g'd elining qoploni» operasining librettosini yozganman. Antuan de Sent-Ekzyuperining «Kichik shahzoda» va Yevgeniy Shvartsning «Soya» asarlarini o'zbek tiliga tarjima qilganman.$$, $$["asar", "kitob", "yoz", "rasm", "rassom", "tarjim"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Zokirovlar (Botir Zokirov)$$, TRUE,
       $$Botir Zokirov qo'shiqchilikdan tashqari yana qanday ijod bilan shug'ullangan?$$, $$Botir Zokirov rassom sifatida «Avtoportret», «Saraton», «Gumbazlar» kabi asarlar yaratgan, hikoya, ocherk va she'rlar yozgan. U Ikrom Akbarovning «So'g'd elining qoploni» operasiga libretto yozgan hamda «Kichik shahzoda» va «Soya» asarlarini o'zbekchaga o'girgan. Manba: O'zbekiston Milliy Ensiklopediyasi, «Zokirovlar» maqolasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kinodagi rollarim$$, $$Kinoaktyor sifatida «Gullar ochilganda» filmida yosh muhandis, «Olovli yo'llar»da hind adibi Rabindranat Tagor, «Dahoning yoshligi»da Abdullo obrazlarini yaratganman.$$, $$["kino", "film", "rol", "aktyor", "tagor"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Zokirovlar (Botir Zokirov)$$, TRUE,
       $$Botir Zokirov qaysi filmlarda rol o'ynagan?$$, $$Botir Zokirov «Gullar ochilganda», «Olovli yo'llar» va «Dahoning yoshligi» filmlarida suratga tushgan. «Olovli yo'llar» filmida u buyuk hind adibi Rabindranat Tagor obrazini yaratgan. Manba: O'zbekiston Milliy Ensiklopediyasi, «Zokirovlar» maqolasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Og'ir kasal bo'lib, Moskvadagi kasalxonada ikkinchi operatsiyaga tayyorlanayotgan kunlarimda ham ijodni to'xtatmaganman — o'sha kezlarda «Ey sarbon» qo'shig'i yaratilgan. Men 1985-yil 23-yanvarda Toshkent shahrida vafot etganman.$$, $$["vafot", "kasal", "operatsi", "sarbon", "oxir"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Zokirovlar (Botir Zokirov)$$, TRUE,
       $$Botir Zokirov qachon vafot etgan?$$, $$Botir Zokirov 1985-yil 23-yanvarda Toshkent shahrida vafot etgan. Kompozitor Ikrom Akbarovning xotirlashicha, «Ey sarbon» qo'shig'i xonanda Moskva kasalxonasida ikkinchi operatsiyaga tayyorlanayotgan davrida yaratilgan. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com); UzA — «Botir Zokirov va Sharq musiqasi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Botir Zokirov «Arab tangosi»ni ilk bor qayerda ijro etgan?$$, $$["Toshkentdagi Navoiy teatrida", "1957-yili Moskvadagi xalqaro yoshlar va talabalar festivalida", "Parijdagi konsert zalida", "Samarqanddagi san'at bayramida"]$$::jsonb, 1, $$UzAning «Botir Zokirov va Sharq musiqasi» maqolasiga ko'ra, u «Arab tangosi»ni 1957-yili Moskvada bo'lib o'tgan xalqaro yoshlar va talabalar festivalida ilk bor ijro etgan.$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Botir Zokirov qaysi mashhur asarni o'zbek tiliga tarjima qilgan?$$, $$["«Kichik shahzoda»", "«Alisa mo'jizalar mamlakatida»", "«Qizil qalpoqcha»", "«Robinzon Kruzo»"]$$::jsonb, 0, $$O'zbekiston Milliy Ensiklopediyasiga ko'ra, Botir Zokirov Antuan de Sent-Ekzyuperining «Kichik shahzoda» va Yevgeniy Shvartsning «Soya» asarlarini o'zbek tiliga tarjima qilgan.$$
  FROM heroes h WHERE h.slug = 'botir-zokirov';


-- ═══════════ Boysung'ur Mirzo ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('boysungur-mirzo', $$Boysung'ur Mirzo$$, $$Kitobat san'ati homiysi$$, 1397, 1433,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Boysung'ur Mirzo (1397–1433) — Shohrux Mirzo va Gavhar Shod begimning o'rtancha o'g'li, temuriy shahzoda. U Hirotda kitobat va miniatyura san'ati rivojiga katta hissa qo'shgan hamda Firdavsiy «Shohnoma»sining ilmiy-tanqidiy matnini tuzdirgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Boysung'ur Mirzoman — hukmdor Shohruxning o'g'li, kitob va go'zal yozuv san'atining chin muxlisiman. Mendan «Shohnoma», Hirotdagi kitobat san'ati va oilam haqida so'ra!$$,
 $$🖋️$$, $$["boysu", "boysungur", "shohr", "hirot", "kitob", "temur"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1397-yilda tug'ilganman. Otam — temuriylar hukmdori Shohrux Mirzo, onam — mashhur malika Gavhar Shod begim. Men ularning o'rtancha o'g'liman.$$, $$["tugil", "tavallud", "1397", "gavhar", "shohr"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar» bo'limi: Gavhar Shod begim (Boysung'ur Mirzo haqida)$$, TRUE,
       $$Boysung'ur Mirzo qachon va qaysi oilada tug'ilgan?$$, $$Boysung'ur Mirzo 1397-yilda Shohrux Mirzo va Gavhar Shod begim oilasida tug'ilgan. U oilada o'rtancha o'g'il edi. Manba: Ziyouz.com, «Temuriy malikalar» bo'limi, Gavhar Shod begim maqolasi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Otam va bobom$$, $$Otam Shohrux Mirzo — Amir Temurning to'rtinchi o'g'li, temuriylar saltanatining qudratli hukmdori edi. Demak, buyuk Amir Temur mening bobom bo'ladi!$$, $$["otam", "shohrux", "shohr", "temur", "hukmdor", "bobo"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar» bo'limi: Gavhar Shod begim (Boysung'ur Mirzo haqida)$$, TRUE,
       $$Boysung'ur Mirzoning otasi va bobosi kim bo'lgan?$$, $$Boysung'ur Mirzoning otasi Shohrux (1377–1447) Amir Temurning to'rtinchi o'g'li bo'lib, temuriylar saltanatini boshqargan. Shunday qilib, Amir Temur Boysung'urning bobosi edi. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi, Shohrux maqolasi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mening aka-ukalarim$$, $$Mening akam — mashhur olim Ulug'bek Mirzo, uning asl ismi Muhammad Tarag'ay. Ukam esa Muhammad Jo'ki Mirzo edi. Onam Gavhar Shod begimning uch o'g'li va ikki qizi bo'lgan.$$, $$["ulugbek", "ulugb", "aka", "uka", "joki", "oila"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar» bo'limi: Gavhar Shod begim (Boysung'ur Mirzo haqida)$$, TRUE,
       $$Boysung'ur Mirzoning aka-ukalari kimlar bo'lgan?$$, $$Gavhar Shod begimning to'ng'ich o'g'li — Ulug'bek Mirzo (Muhammad Tarag'ay, 1394–1449), o'rtanchasi — Boysung'ur Mirzo (1397–1433), kichigi — Muhammad Jo'ki Mirzo (1401–1445) edi. Ularning yana ikki opa-singli bo'lgan. Manba: Ziyouz.com, «Temuriy malikalar» bo'limi, Gavhar Shod begim maqolasi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kitobat san'ati homiysi$$, $$Men Hirotda kitobat — qo'lyozma kitob yaratish hamda miniatyura san'ati rivojiga katta hissa qo'shganman. Go'zal bitilgan, bezakli kitoblarni juda qadrlardim.$$, $$["kitob", "asar", "yoz", "miniat", "hirot", "xatto"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar» bo'limi: Gavhar Shod begim (Boysung'ur Mirzo haqida)$$, TRUE,
       $$Boysung'ur Mirzo Hirotda qaysi san'atlar rivojiga hissa qo'shgan?$$, $$Ziyouz.com dagi maqolada yozilishicha, Hirotda Mirzo Boysung'ur kitobat va miniatyura san'ati rivojiga katta hissa qo'shgan. Kitobat — qo'lyozma kitobni chiroyli yozib, bezab tayyorlash san'atidir. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi, Shohrux maqolasi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Shohnoma» ustida ish$$, $$Men Firdavsiy «Shohnoma»sining turli nusxalarini to'plab, hozirgi til bilan aytganda, ilmiy-tanqidiy matnini tuzdirganman. Bu buyuk dostonni juda qadrlardim.$$, $$["shohnoma", "firdavs", "asar", "kitob", "yoz", "matn"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar» bo'limi: Gavhar Shod begim (Boysung'ur Mirzo haqida)$$, TRUE,
       $$Boysung'ur Mirzo «Shohnoma» bilan qanday ish qilgan?$$, $$Boysung'ur Mirzo «Shohnoma»ning turli nusxalarini to'plab, ilmiy-tanqidiy matnini tuzdirgan. Ulug'bek majlislarida ham «Shohnoma» o'qilib, qiyin joylarining mazmun-ma'nosi muhokama etilgan. Manba: Ziyouz.com, «Mirzo Ulug'bek davrida o'zbek adabiyoti» maqolasi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Akam bilan bahsimiz$$, $$Men Amir Xusrav Dehlaviyning «Xamsa»sini Shayx Nizomiy «Xamsa»sidan ustun qo'yardim, akam Ulug'bek esa Nizomiy tarafdori edi. Biz ikki «Xamsa»ni bayt-bayt qiyoslab bahslashardik.$$, $$["xamsa", "asar", "kitob", "yoz", "nizom", "xisrav"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar» bo'limi: Gavhar Shod begim (Boysung'ur Mirzo haqida)$$, TRUE,
       $$Boysung'ur Mirzo va Ulug'bek qaysi asarlar haqida bahslashgan?$$, $$Boysung'ur Mirzo Amir Xusrav Dehlaviy «Xamsa»sini afzal ko'rgan, Ulug'bek esa Shayx Nizomiy ijodiga e'tiqod qo'ygan edi. Ikki shahzoda «Xamsa»larni bayt-bayt qiyoslagan. Manba: Ziyouz.com, «Mirzo Ulug'bek davrida o'zbek adabiyoti» maqolasi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Otamning ishonchi$$, $$1429-yilgi Ozarbayjon yurishida otam Shohrux meni lashkarning juvang'arini boshqarishga belgilagan. Demak, otam menga harbiy ishda ham ishongan.$$, $$["1429", "yurish", "ozarbayjon", "lashkar", "juvang"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar» bo'limi: Gavhar Shod begim (Boysung'ur Mirzo haqida)$$, TRUE,
       $$1429-yilgi yurishda Shohrux Boysung'ur Mirzoga qanday vazifa bergan?$$, $$1429-yilgi Ozarbayjon yurishi paytida Shohrux o'g'li Mirzo Boysung'urni lashkarning juvang'arini boshqarishga belgilagan. Bu otasining unga bo'lgan katta ishonchini ko'rsatadi. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi, Shohrux maqolasi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1433-yilda vafot etganman. Maqbaram «Boysung'ur maqbarasi» deb atalib, onam Gavhar Shod begim qurdirgan madrasa yonida joylashgan.$$, $$["vafot", "1433", "maqbara", "dafn", "oxir"]$$::jsonb, $$Ziyouz.com — «Temuriy malikalar» bo'limi: Gavhar Shod begim (Boysung'ur Mirzo haqida)$$, TRUE,
       $$Boysung'ur Mirzo qachon vafot etgan va maqbarasi qayerda joylashgan?$$, $$Boysung'ur Mirzo 1433-yilda vafot etgan. Uning maqbarasi Gavhar Shod begim madrasasi yonida bo'lib, keyinchalik otasi Shohrux hamda 1457-yilda onasi Gavhar Shod begim ham shu «Boysung'ur maqbarasi»ga dafn etilgan. Manba: Ziyouz.com, «Temuriy malikalar» bo'limi, Gavhar Shod begim maqolasi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Boysung'ur Mirzo qaysi mashhur asarning ilmiy-tanqidiy matnini tuzdirgan?$$, $$["Nizomiy «Xamsa»si", "Firdavsiy «Shohnoma»si", "«Zafarnoma»", "«Boburnoma»"]$$::jsonb, 1, $$Boysung'ur Mirzo «Shohnoma»ning turli nusxalarini to'plab, hozirgi til bilan aytganda, ilmiy-tanqidiy matnini tuzdirgan.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Boysung'ur Mirzoning akasi bo'lgan mashhur olim kim edi?$$, $$["Muhammad Jo'ki Mirzo", "Husayn Boyqaro", "Mirzo Ulug'bek", "Zahiriddin Muhammad Bobur"]$$::jsonb, 2, $$Boysung'ur Mirzoning akasi — mashhur olim Mirzo Ulug'bek (Muhammad Tarag'ay), ukasi esa Muhammad Jo'ki Mirzo edi.$$
  FROM heroes h WHERE h.slug = 'boysungur-mirzo';


-- ═══════════ Chingiz Ahmarov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('chingiz-ahmarov', $$Chingiz Ahmarov$$, $$Monumentalist rassom$$, 1912, 1995,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Chingiz Ahmarov (1912–1995) — monumentalist rassom, O'zbekiston xalq rassomi (1964). U ijodida Sharq miniatyurasi an'analarini davom ettirib, milliy musavvirlik maktabini yaratgan; Navoiy teatri foyesidagi «Xamsa» mavzularidagi devoriy rasmlar uning eng mashhur asarlaridandir.$$,
 $$Assalomu alaykum, aziz farzand! Men Chingiz Ahmarovman — Navoiy teatri devorlariga surat ishlagan monumentalist rassomman. Mendan devoriy rasmlarim, miniatyura san'ati va hayotim haqida so'ra!$$,
 $$🎨$$, $$["ahmar", "chingiz", "rassom", "teatr", "miniatyur", "devoriy"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1912-yil 18-avgustda Troitsk shahrida tug'ilganman — bu shahar hozirgi Chelyabinsk viloyatida joylashgan. To'liq ismim Chingiz Gabdurahmonovich Ahmarov.$$, $$["tugil", "tavallud", "troit", "chelyab"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarov qachon va qayerda tug'ilgan?$$, $$O'zbekiston Milliy Ensiklopediyasiga ko'ra, Ahmarov Chingiz Gabdurahmonovich 1912-yil 18-avgustda Troitsk shahrida (hozirgi Chelyabinsk viloyati) tavallud topgan. Keyinchalik uning butun ijodiy hayoti O'zbekiston san'ati bilan chambarchas bog'langan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'lim olganim$$, $$Men 1927-1930-yillarda Perm badiiy texnikumida, so'ng 1935-1942-yillarda Moskvadagi V. Surikov nomidagi badiiy institutda ta'lim olganman.$$, $$["talim", "oqi", "perm", "moskva", "surikov", "tahsil"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarov qayerlarda ta'lim olgan?$$, $$U avval Perm badiiy texnikumida (1927-1930), keyin V. Surikov nomidagi Moskva badiiy institutida (1935-1942) ta'lim olgan. Shu bilim yurtlarida u rassomlik mahoratini puxta egallagan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Navoiy teatri suratlarim$$, $$1944-1947-yillarda Navoiy teatri foyesiga Navoiy «Xamsa»si mavzulari asosida mahobatli devoriy rasmlar ishlaganman. Teatr foyesida mening «Farxod va Shirin» devoriy rasmim ham bor. Shu davrdan boshlab Sharq mavzusi ijodimdan keng o'rin olgan.$$, $$["asar", "kitob", "yoz", "navoiy", "teatr", "devoriy", "xamsa"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarov Navoiy teatriga qanday suratlar ishlagan?$$, $$U dastlab Navoiy teatri foyesiga Navoiy «Xamsa»si mavzulari asosida mahobatli devoriy rasmlarni (1944-1947) ishlagan. Shu davrdan boshlab Sharq mavzusi uning ijodidan keng o'rin olgan. Darslikdagi rasm izohida «Ch. Axmarov. Farxod va Shirin. Devoriy rasm. A. Navoiy nomidagi opera va balet teatri foyesi. Toshkent sh.» deb yozilgan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar. Manba: Ziyouz.com kutubxonasi, R. Xudayberganov, «Mahobatli rangtasvir texnika va texnologiyasi» darsligi (Toshkent, 2015), 9-10-betlar.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Uslubim va miniatyura$$, $$Ijodimda Sharq miniatyurasi an'analarini davom ettirib, milliy musavvirlik maktabini yaratganman. Suratlarimda odam qiyofalari havoda muallaq aks etadi, chiziqlarim dutor toridek musiqiy, bo'yoqlarim esa shaffof tiniqdir.$$, $$["asar", "kitob", "yoz", "miniatyur", "uslub", "sharq"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarov uslubining o'ziga xos xususiyatlari qanday?$$, $$Ensiklopediyada uning ijodida Sharq miniatyurasi an'analarini davom ettirib, milliy musavvirlik maktabini yaratgani qayd etilgan. Darslikda esa yozilishicha, uning suratlari psixologik ma'nodorlikka, ichki jo'shqinlikka, joziba va ruhiy nafosatga boy. Odam qiyofalarining havoda muallaq aks etishi, chiziqlarning dutor toridek musiqiyligi, bo'yoqlarning shaffof tiniqligi bu rassom mo'yqalamiga xos xususiyatlardir. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar. Manba: Ziyouz.com kutubxonasi, R. Xudayberganov, «Mahobatli rangtasvir texnika va texnologiyasi» darsligi (Toshkent, 2015), 9-10-betlar.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk ijodim va kitob bezaklarim$$, $$Ijodimni 30-yillarda dastgoh rassomligi va grafika bilan boshlaganman: Sh. Sulaymonning «Li Chu» kitobini (1934) bezaganman, «Mushtum» va «Mash'ala» jurnallari uchun rasmlar chizganman. Urush yillarida «O'zbekiston qilichi» triptixini (1942) yaratganman. Keyin Oybekning «Navoiy» romani (1951) va «Ravshan» eposi (1958) uchun kitob bezaklari ishlaganman.$$, $$["asar", "kitob", "yoz", "bezak", "grafika", "oybek"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarov qaysi kitoblarga bezaklar ishlagan?$$, $$U ijodini 30-yillarda dastgoh rassomligi va grafika sohasida boshlagan, ilk asarlari orasida «Qiz portreti», «Bola portreti», «Akam portreti» bor. Ikkinchi jahon urushi yillarida vatanparvarlik ruhidagi «O'zbekiston qilichi» triptixini (1942) yaratgan, Oybekning «Navoiy» romani (1951) va «Ravshan» eposiga (1958) bezaklar ishlagan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Chizgan portretlarim$$, $$50-yillardan boshlab ko'p qirrali ijodkor bo'lib yetishganman: M. Turg'unboeva (1952), rassom R. Temurov (1961), shoira Zulfiya (1965), Halima Nosirova va «Yosh Navoiy» (1968) portretlarini yaratganman.$$, $$["asar", "kitob", "yoz", "portret", "zulfiya", "surat"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarov kimlarning portretlarini chizgan?$$, $$Ensiklopediyaga ko'ra, u 50-yillardan ko'p qirrali ijodkor sifatida ko'zga tashlangan: portretlar (M. Turg'unboeva, 1952; rassom R. Temurov, 1961; shoira Zulfiya, 1965; Halima Nosirova, «Yosh Navoiy», 1968) hamda teatr spektakllari va kinofilmlarga chizgilar (M. Shayxzodaning «Mirzo Ulug'bek» fojiasiga, Hamza teatri, 1964) yaratgan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Muzey va metro asarlarim$$, $$Samarqanddagi Ulug'bek memorial muzeyi (1964), Navoiy nomidagi Adabiyot muzeyi (1968) va Beruniy nomidagi Sharqshunoslik instituti (1968-1969) uchun devoriy rasmlar ishlaganman. 80-90-yillarda Toshkent metropolitenining «Alisher Navoiy» bekati va Amaliy san'at muzeyi binosi devorlariga ham asarlar yaratganman.$$, $$["asar", "kitob", "yoz", "metro", "muzey", "ulugbek"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarovning asarlari yana qayerlarda bor?$$, $$Ensiklopediyada yozilishicha, u Qozon opera va balet teatri (1959), Navoiy nomidagi Adabiyot muzeyi (1968), Beruniy nomidagi Sharqshunoslik instituti (1968-1969), Samarqanddagi Ulug'bek memorial muzeyi (1964), «Yulduz» restorani (1970), Hamza nomidagi San'atshunoslik instituti (1980) va boshqa binolarga devoriy rasmlar chizgan. Toshkent metropolitenining «Alisher Navoiy» bekati va Amaliy san'at muzeyi binosi devorlariga ishlagan asarlari (80-90-yillar) ham jozibalidir. Asarlari O'zbekiston san'at muzeyida, Amaliy san'at muzeyida, Navoiy nomidagi Adabiyot muzeyida, Qo'qon adabiyot muzeyida va boshqa muzeylarda saqlanadi. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvon va mukofotim$$, $$1964-yilda menga O'zbekiston xalq rassomi unvoni berilgan. 1968-yilda esa Hamza nomidagi O'zbekiston Davlat mukofoti laureati bo'lganman.$$, $$["unvon", "mukofot", "hamza", "xalq", "laureat"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarov qanday unvon va mukofotlarga sazovor bo'lgan?$$, $$U 1964-yilda O'zbekiston xalq rassomi unvonini olgan, 1968-yilda Hamza nomidagi O'zbekiston Davlat mukofoti laureati bo'lgan. UzA maqolasida u milliy musavvirlik maktabini yaratgan, o'zbek tasviriy san'ati rivojiga ulkan hissa qo'shgan professor sifatida tilga olinadi. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar. Qo'shimcha manba: UzA, «Betakror merosimiz» maqolasi (uza.uz).$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1995-yilda vafot etganman. Umrim 1995-yil 13-mayda Toshkent shahrida tugagan. Undan oldingi so'nggi yillarimda «Amir Temur va Bibixonim», «Amir Temur va darvish», «Amir Temur va Boyazid» kabi asarlarni yaratgandim (1992-1995).$$, $$["vafot", "oxir", "songgi", "temur"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», A harfi: «Ahmarov Chingiz Gabdurahmonovich» maqolasi (865-866-betlar)$$, TRUE,
       $$Chingiz Ahmarov qachon vafot etgan?$$, $$Chingiz Ahmarov 1995-yil 13-mayda Toshkent shahrida vafot etgan. Umrining so'nggi yillarida (1992-1995) «Amir Temur va Bibixonim», «Amir Temur va darvish», «Amir Temur va Boyazid» kabi asarlarini yaratgan edi. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», A harfi, 865-866-betlar.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Chingiz Ahmarov 1944-1947-yillarda Navoiy teatri foyesiga qaysi asar mavzulari asosida devoriy rasmlar ishlagan?$$, $$["«Boburnoma»", "Navoiy «Xamsa»si", "«Alpomish» dostoni", "«Shohnoma»"]$$::jsonb, 1, $$O'zbekiston Milliy Ensiklopediyasiga ko'ra, u dastlab Navoiy teatri foyesiga Navoiy «Xamsa»si mavzulari asosida mahobatli devoriy rasmlarni (1944-1947) ishlagan.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Toshkent metropolitenining qaysi bekati devorlarini Chingiz Ahmarov asarlari bezab turadi?$$, $$["«Paxtakor»", "«Kosmonavtlar»", "«Alisher Navoiy»", "«Mustaqillik maydoni»"]$$::jsonb, 2, $$Ensiklopediyada yozilishicha, Toshkent metropolitenining «Alisher Navoiy» bekati va Amaliy san'at muzeyi binosi devorlariga ishlagan asarlari (80-90-yillar) jozibalidir.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Chingiz Ahmarovga O'zbekiston xalq rassomi unvoni qaysi yilda berilgan?$$, $$["1942-yilda", "1958-yilda", "1964-yilda", "1982-yilda"]$$::jsonb, 2, $$Ensiklopediyada Ahmarov Chingiz Gabdurahmonovich 1964-yilda O'zbekiston xalq rassomi unvoniga sazovor bo'lgani qayd etilgan.$$
  FROM heroes h WHERE h.slug = 'chingiz-ahmarov';


-- ═══════════ Dilshod otin (Dilshodi Barno) ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('dilshod-otin', $$Dilshod otin (Dilshodi Barno)$$, $$Shoira va maktabdor otin$$, 1800, 1905,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Dilshodi Barno (Dilshod otin) — o'zbek shoirasi, ma'rifatparvar va maktabdor otin bo'lib, xotin-qizlarga xat-savod o'rgatgan; mashhur shoira Anbar Otin uning iqtidorli talabalaridan bo'lgan. Undan 91 ta o'zbekcha va 51 ta tojikcha she'r hamda «Tarixi muhojiron» asari yetib kelgan.$$,
 $$Assalomu alaykum, aziz farzand! Men shoira va maktabdor Dilshod otinman, she'rlarimda Barno taxallusini qo'llaganman. Mendan she'rlarim, maktabim va shogirdim Anbar Otin haqida so'ra!$$,
 $$👩‍🏫$$, $$["dilshod", "barno", "otin", "shoira", "oratepa", "qoqon"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1800-yilda O'ratepa shahrida tug'ilganman. Otam Rahimqul so'fi edi, savodni otamdan o'rganganman.$$, $$["tugil", "tavallud", "oratepa", "1800", "qachon"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Dilshod otin$$, TRUE,
       $$Dilshodi Barno qachon va qayerda tug'ilgan?$$, $$Dilshodi Barno 1800-yilda O'ratepa shahrida tug'ilgan. U savodni otasi Rahimqul so'fidan o'rgangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ismim va taxalluslarim$$, $$Asl ism-sharifim Dilshod Rahimqul so'fi qizi. She'rlarimni Dilshod, Barno va Dilshodi Barno taxalluslari bilan bitganman, el meni Dilshod otin deb ham ataydi.$$, $$["ism", "taxallus", "barno", "nom", "dilshod"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Dilshod otin$$, TRUE,
       $$Dilshod otinning asl ismi va taxalluslari qanday bo'lgan?$$, $$Shoiraning asl ism-sharifi Dilshod Rahimqul so'fi qizi. U Dilshod otin, Barno va Dilshodi Barno nomlari bilan mashhur bo'lgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Maktabdorlik faoliyatim$$, $$Savodni otamdan o'rganganman. Keyin o'zim maktabdorlik qilib, xotin-qizlarga xat-savod o'rgatganman.$$, $$["maktab", "savod", "oqit", "otin", "muallim", "dars"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Dilshod otin$$, TRUE,
       $$Dilshod otin qanday faoliyat bilan shug'ullangan?$$, $$Dilshodi Barno maktabdorlik qilgan — xotin-qizlarga xat-savod o'rgatgan. Shu faoliyati tufayli u Dilshod otin nomi bilan tanilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shogirdim Anbar Otin$$, $$Maktabimda ko'plab qizlar ta'lim olgan. Keyinchalik mashhur shoira bo'lib yetishgan Anbar Otin mening iqtidorli talabalarimdan edi.$$, $$["anbar", "shogird", "talaba", "oquvchi", "ustoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Dilshod otin$$, TRUE,
       $$Dilshod otinning eng mashhur shogirdi kim bo'lgan?$$, $$Shoira Anbar Otin Dilshodi Barnoning iqtidorli talabalaridan bo'lgan. U ustozi kabi o'zbek mumtoz adabiyotining taniqli shoiralaridan biriga aylangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riy ijodim$$, $$Ikki tilda — o'zbek va tojik tillarida ijod qilganman: g'azal, muxammas, musaddas va chistonlar bitganman. «Tazkirai Barno» va «Muntaxab al-ash'ori Barno» ham qalamimga mansub.$$, $$["sher", "gazal", "asar", "kitob", "yoz", "tazkira"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Dilshod otin$$, TRUE,
       $$Dilshodi Barno qaysi tillarda va qanday janrlarda ijod qilgan?$$, $$Dilshodi Barno o'zbek va tojik tillarida g'azal, muxammas, musaddas, chiston va boshqa janrlarda yozgan. Uning 91 ta o'zbekcha va 51 ta tojikcha she'ri uch qo'lyozma nusxada yetib kelgan bo'lib, ular O'zbekiston Fanlar akademiyasi Sharqshunoslik institutida saqlanadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Tarixi muhojiron» asarim$$, $$Men «Tarixi muhojiron» nomli tarixiy-adabiy asar yozganman. Unda Qo'qon xonligida ko'rgan-bilganlarim — tarixiy va ijtimoiy-siyosiy voqealar aks etgan.$$, $$["tarix", "muhojir", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Dilshod otin$$, TRUE,
       $$Dilshodi Barnoning «Tarixi muhojiron» asarida nimalar yoritilgan?$$, $$«Tarixi muhojiron» asarida XIX asr Qo'qon xonligidagi tarixiy, ijtimoiy-siyosiy voqealar aks etgan. Shoira asarlarida O'ratepa va Qo'qonda yashagan 30 dan ortiq shoiralar ijodi haqida ham ma'lumot keltirgan; uning «Sabot ul-bashar maa tarixi muhojiron» asari ham ma'lum. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ayollar ma'rifati uchun$$, $$Asarlarimda ayollarni ma'rifatli, erkin va jamiyatning teng huquqli a'zolari bo'lishga chorlaganman. Buning uchun avvalo qizlarga o'zim savod o'rgatganman.$$, $$["ayol", "xotin", "marifat", "erkin", "huquq"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Dilshod otin$$, TRUE,
       $$Dilshodi Barno ayollarni nimaga chorlagan?$$, $$Dilshodi Barno ijodida ayollarni ma'rifatli, erkin, jamiyatning teng huquqli a'zolari bo'lishga chorlagan. Uning she'riyati xalq taqdirining badiiy yilnomasi darajasiga ko'tarilgan deb baholanadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Uzoq umr ko'rganman. Men 1905-yilda Qo'qon shahrida vafot etganman.$$, $$["vafot", "oxir", "qoqon", "1905", "olam"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Dilshod otin$$, TRUE,
       $$Dilshodi Barno qachon va qayerda vafot etgan?$$, $$Dilshodi Barno 1905/06-yilda Qo'qon shahrida vafot etgan. Uning qo'lyozma asarlari O'zbekiston Fanlar akademiyasi Sharqshunoslik institutida saqlanadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Dilshodi Barno qaysi shaharda tug'ilgan?$$, $$["Qo'qon", "O'ratepa", "Buxoro", "Xiva"]$$::jsonb, 1, $$Dilshodi Barno 1800-yilda O'ratepa shahrida tug'ilgan, umrining oxiri esa Qo'qon shahrida kechgan.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Dilshod otinning iqtidorli shogirdi bo'lgan mashhur shoira kim?$$, $$["Nodira", "Uvaysiy", "Zebuniso", "Anbar Otin"]$$::jsonb, 3, $$Anbar Otin Dilshod otin maktabida ta'lim olgan iqtidorli talabalardan bo'lib, keyinchalik taniqli shoira bo'lib yetishgan.$$
  FROM heroes h WHERE h.slug = 'dilshod-otin';


-- ═══════════ Durbek ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('durbek', $$Durbek$$, $$«Yusuf va Zulayxo» muallifi$$, NULL, NULL,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Durbek — XIV asr oxiri va XV asr boshida yashagan o'zbek shoiri. U 1409-yilda yozilgan mashhur «Yusuf va Zulayxo» dostonining muallifi bo'lib, hayoti va ijodi Balx shahri bilan bog'liq.$$,
 $$Assalomu alaykum, aziz farzand! Men Durbekman — «Yusuf va Zulayxo» dostonini yozgan o'zbek shoiriman. Mendan dostonim, Balx shahri va turkiy tildagi ijodim haqida so'ra!$$,
 $$📜$$, $$["durbek", "durbe", "yusuf", "zulay", "doston", "balx"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Tug'ilgan yilim aniq ma'lum emas — men XIV asr oxirida dunyoga kelganman. Butun hayotim va ijodim qadimiy Balx shahri bilan bog'liq.$$, $$["tugil", "tavallud", "dunyo", "qachon", "balx"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Durbek$$, TRUE,
       $$Durbek qachon tug'ilgan?$$, $$Durbekning aniq tug'ilgan yili manbalarda saqlanmagan. U XIV asr oxiri — XV asr boshida yashagan o'zbek shoiri hisoblanadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'durbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Balx — ona shahrim$$, $$Men qadimiy Balx shahrida yashab ijod qilganman. Dostonimda shahar va qishloqlarning manzaralari, voqealari va urf-odatlarini aks ettirganman.$$, $$["balx", "shahar", "yasha", "qayer", "vatan"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Durbek$$, TRUE,
       $$Durbek qaysi shaharda yashab ijod qilgan?$$, $$Durbekning hayoti va ijodi Balx shahri bilan bog'liq. Uning dostonida O'rta Osiyo shahar va qishloqlariga xos manzaralar, voqealar va urf-odatlar tasvirlangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'durbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Yusuf va Zulayxo» dostonim$$, $$Men 1409-yilda «Yusuf va Zulayxo» dostonimni yozganman. Unda Sharqda mashhur Yusuf va Zulayxo qissasini o'zbek tilida she'r bilan bayon qilganman.$$, $$["asar", "kitob", "yoz", "doston", "yusuf", "zulay"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Durbek$$, TRUE,
       $$Durbek «Yusuf va Zulayxo» dostonini qachon yozgan?$$, $$Durbekning «Yusuf va Zulayxo» dostoni 1409-yilda yozilgan bo'lib, Sharqda keng tarqalgan sayyor syujet asosidagi qissaning o'zbek tilidagi she'riy talqinidir. Dostonning qo'lyozma nusxalari O'zbekiston Fanlar akademiyasi Sharqshunoslik instituti hamda Parij va Istanbul kutubxonalarida saqlanadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'durbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Turkiy tilda ijod$$, $$Dostonimni turkiy — eski o'zbek tilida yozganman. Bu niyatimni asarimda «Turki tili birla qilib azmi jazm» degan misra bilan aytganman.$$, $$["turki", "til", "ozbek", "yoz", "asar", "kitob"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Durbek$$, TRUE,
       $$Durbek dostonini qaysi tilda yozgan?$$, $$Durbek «Yusuf va Zulayxo» dostonini turkiy (eski o'zbek) tilida yaratgan. Dostonda uning «Turki tili birla qilib azmi jazm» degan misrasi bor. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'durbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Balx qamali tasviri$$, $$Dostonimda Balx shahrining qamal qilinishini, xalqning ochlik va suvsizlikdan chekkan azob-uqubatlarini tasvirlaganman.$$, $$["qamal", "balx", "ochlik", "suvsiz", "azob"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Durbek$$, TRUE,
       $$Durbek dostonida qanday tarixiy voqea tasvirlangan?$$, $$Dostonda Balx shahrining qamal qilinishi va xalq boshiga tushgan og'ir kulfatlar yuksak mahorat bilan tasvirlangan. Bu lavhalar asarga o'sha davr hayotining jonli manzaralarini olib kirgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'durbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qahramonim Yusuf$$, $$Dostonimning bosh qahramoni — Yusuf. Men uning taqdirini va turli vaziyatlarda hayotga munosabatini ko'rsatganman.$$, $$["yusuf", "qahramon", "doston", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Durbek$$, TRUE,
       $$Durbek dostonining bosh qahramoni kim?$$, $$Dostonning bosh qahramoni Yusufdir. Asarda uning taqdiri va turli vaziyatlardagi hayotga munosabati ochib berilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'durbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Vafot etgan yilim aniq ma'lum emas. Men XV asrning birinchi yarmida vafot etganman.$$, $$["vafot", "olim", "umr", "oxir", "asr"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Durbek$$, TRUE,
       $$Durbek qachon vafot etgan?$$, $$Durbekning aniq vafot yili manbalarda ko'rsatilmagan; u XV asr boshida vafot etgan deb hisoblanadi. Undan bizgacha faqat «Yusuf va Zulayxo» dostoni yetib kelgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'durbek';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Durbekning bizgacha yetib kelgan yagona dostoni qaysi?$$, $$["«Xamsa»", "«Yusuf va Zulayxo»", "«Qutadg'u bilig»", "«Layli va Majnun»"]$$::jsonb, 1, $$Durbekdan bizgacha faqat «Yusuf va Zulayxo» dostoni yetib kelgan. Bu doston 1409-yilda yozilgan.$$
  FROM heroes h WHERE h.slug = 'durbek';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Durbekning hayoti va ijodi qaysi shahar bilan bog'liq?$$, $$["Samarqand", "Hirot", "Balx", "Buxoro"]$$::jsonb, 2, $$Durbek Balx shahrida yashab ijod qilgan. Uning dostonida Balx qamali va xalqning og'ir ahvoli ham tasvirlangan.$$
  FROM heroes h WHERE h.slug = 'durbek';


-- ═══════════ Elbek ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('elbek', $$Elbek$$, $$Jadid shoiri va tilshunos$$, 1898, NULL,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Elbek (asl ismi Mashriq Yunusov) 1898-yilda tug'ilgan jadid davrining atoqli shoiri, tilshunos va folklorshunosidir. U bolalar uchun she'rlar va darsliklar yozgan, xalq qo'shiqlarini to'plagan hamda Stalin qatag'oni yillarida begunoh qurbon bo'lgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Elbekman — Xumson qishlog'ida tug'ilib, Toshkentda ijod qilgan jadid shoiri va tilshunosman. Mendan she'rlarim, darsliklarim, xalq qo'shiqlari va ona tilimiz haqida so'ra!$$,
 $$🖋️$$, $$["elbek", "shoir", "jadid", "til", "sher", "mashr"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1898-yilda Toshkent viloyatining Iskandar bo'lisidagi Xumson qishlog'ida kambag'al dehqon oilasida tug'ilganman. Asl ismim Mashriq Yunusov, Elbek — mening adabiy taxallusim. Bolaligim va yoshligim juda og'ir kechgan.$$, $$["tugil", "tavallud", "xumson", "qishloq", "1898", "dehqon"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Elbek$$, TRUE,
       $$Elbek qachon va qayerda tug'ilgan?$$, $$Elbek (asl ismi Mashriq Yunusov) 1898-yilda Toshkent viloyatining Iskandar bo'lisidagi Xumson qishlog'ida kambag'al dehqon oilasida tug'ilgan. Uning bolalik va yoshlik yillari juda og'ir kechgan. Manba: Ziyouz.com, «Elbek» maqolasi.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Maktab yillarim$$, $$1905-yilda qishlog'imizdagi eski maktabga kirib, 4 yil o'qib xat-savod chiqarganman. 1911-yilda birinchi marta Toshkentga kelib, Eski shaharning Devonbegi mahallasidagi «Xoniy» maktabida o'qiganman. 1914-yilda esa «Namuna» maktabiga o'tib, keyinchalik o'zim ham muallimlik qilganman.$$, $$["maktab", "oqi", "muallim", "toshkent", "namuna", "xoniy"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Elbek$$, TRUE,
       $$Elbek qayerlarda o'qigan va kim bo'lib ishlagan?$$, $$Elbek 1905-yilda qishloq maktabida o'qishni boshlagan, 1911-yildan Toshkentdagi «Xoniy», 1914-yildan «Namuna» maktablarida tahsil olgan va muallimlik qilgan. 1917-yildan keyin o'qituvchilar tayyorlov kurslarida ham o'qigan. Manba: Ziyouz.com, «Elbek» maqolasi.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riy to'plamlarim$$, $$Birinchi she'rlar to'plamim «Armug'on» 1921-yilda bosilgan. Keyin «Ko'zgu», «Yolqinlar» (1925) va «Bahor» (1929) to'plamlarimni yozganman. «Oyxon» (1920) hamda o'zbek dehqonlarining og'ir ahvoli haqidagi «Qo'shchi Turg'un» (1925) hikoyalarim ham nashr etilgan.$$, $$["asar", "kitob", "yoz", "sher", "armug", "toplam"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Elbek$$, TRUE,
       $$Elbek qanday she'riy to'plamlar va asarlar yozgan?$$, $$Elbekning birinchi she'riy to'plami «Armug'on» 1921-yilda chiqqan. Keyinchalik «Ko'zgu», «Yolqinlar» (1925), «Bahor» (1929) she'riy to'plamlari hamda «Oyxon» (1920), «Qo'shchi Turg'un» (1925) hikoyalari nashr etilgan. «Qo'shchi Turg'un»da o'zbek dehqonlarining og'ir ahvoli qalamga olingan. Manba: Ziyouz.com, «Elbek» maqolasi.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Darsliklarim$$, $$Bolalar uchun «O'rnak» (1924), «Go'zal yozg'ichlar» (1925) va «Bilim» (1927) o'quv kitoblarini yozganman. «Boshlang'ich maktabda ona tili» qo'llanmam hamda «Lug'at va atamalar» (1924) kitobim ham maktablar uchun xizmat qilgan.$$, $$["asar", "kitob", "yoz", "darslik", "ornak", "bilim"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Elbek$$, TRUE,
       $$Elbek maktablar uchun qanday darsliklar yozgan?$$, $$Elbek «O'rnak» (1924), «Go'zal yozg'ichlar» (1925), «Bilim» (1927) o'quv kitoblarini, «Boshlang'ich maktabda ona tili» qo'llanmasi va «Lug'at va atamalar» (1924) asarini yaratgan. Bu kitoblar o'zbek maktablari uchun muhim qo'llanma bo'lgan. Manba: Ziyouz.com, «Elbek» maqolasi.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ona tilim uchun kurashim$$, $$Ona tilimizning boyligi va qonunlarini o'rganib, «Imlo va til qurultoyining chaqirilishi oldidan» (1920), «Turk tillari qonunlari to'g'risida» (1922), «Til darsligi» (1923) kabi maqola va qo'llanmalar yozganman. 1919-yilda Fitrat rahbarligidagi «Chig'atoy gurungi»da qatnashganman, o'zbek ilmiy komissiyasida esa Shokirjon Rahimiy va G'ozi Yunus bilan birga ishlaganman.$$, $$["til", "imlo", "fitrat", "chigat", "yoz", "asar"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Elbek$$, TRUE,
       $$Elbek tilshunoslikka qanday hissa qo'shgan?$$, $$Elbek o'zbek tili imlosi va qonunlari haqida «Imlo va til qurultoyining chaqirilishi oldidan» (1920), «Turk tillari qonunlari to'g'risida» (1922), «Til darsligi» (1923) kabi ishlar yozgan. U 1919-yilda Fitrat rahbarligidagi «Chig'atoy gurungi»da qatnashgan va o'zbek ilmiy komissiyasida ishlagan. Manba: Ziyouz.com, «Elbek» maqolasi.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xalq og'zaki ijodi$$, $$Xalqimiz qo'shiqlarini juda sevardim: Cho'lpon va G'ulom Zafariy bilan birga Farg'onada minglab xalq maqol va matallari, qo'shiq va laparlarini to'plaganman. «Laparlar» (1924), «Ashulalar to'plami» va bolalar uchun «Bolalik qo'shiqlari» (1934, 1935) to'plamlarini tayyorlaganman, «O'zbek folklori lug'ati»ni tuzishga ham kirishganman.$$, $$["qoshiq", "folklor", "xalq", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Elbek$$, TRUE,
       $$Elbek xalq og'zaki ijodini qanday to'plagan?$$, $$Elbek Cho'lpon va G'ulom Zafariy bilan birga Farg'onada minglab xalq maqol-matallari, qo'shiq va laparlarini yiqqan, «Laparlar» (1924), «Ashulalar to'plami» va «Bolalik qo'shiqlari» (1934, 1935) to'plamlarini tayyorlagan. U «O'zbek folklori lug'ati» va «O'zbek xalqining izohli lug'atiga materiallar» ustida ham ishlagan. Manba: Ziyouz.com, «Elbek» maqolasi.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tarjimalarim$$, $$Rus shoiri Pushkinning «Baliqchi va baliq haqida ertak» hamda «Pop va uning xizmatkori Balda haqida ertak» asarlarini 1937-yilda o'zbekchaga tarjima qilganman. Krilov masallarini va Nekrasov she'rlarini ham ona tilimizga o'girganman.$$, $$["tarjima", "pushkin", "ertak", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Elbek$$, TRUE,
       $$Elbek qaysi asarlarni o'zbekchaga tarjima qilgan?$$, $$Elbek 1937-yilda Pushkinning «Baliqchi va baliq haqida ertak» va «Pop va uning xizmatkori Balda haqida ertak» asarlarini o'zbekchalashtirgan. U Krilov masallari va Nekrasov she'rlarini ham tarjima qilgan, «Pushkin ijodida xalq adabiyoti va o'zbekcha tarjima» (1937) maqolasini yozgan. Manba: Ziyouz.com, «Elbek» maqolasi.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Stalin shaxsiga sig'inish yillarida meni nohaq ayblashgan. Fitrat, Cho'lpon, Abdulla Qodiriy kabi zamondoshlarim qatori begunoh qurbon bo'lib, vafot etganman. Vafotimning aniq yili va joyi aniq ma'lum emas.$$, $$["vafot", "qatagon", "qurbon", "stalin", "cholpon"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Elbek$$, TRUE,
       $$Elbekning taqdiri qanday yakun topgan?$$, $$Elbek Stalin qatag'oni yillarida begunoh ayblanib, Fitrat, Cho'lpon, Abdulla Qodiriy va boshqa zamondoshlari qatori qurbon bo'lgan; manbada vafotining aniq sanasi ko'rsatilmagan. Keyinchalik uning ayrim asarlari darslik va xrestomatiyalardan qayta o'rin olgan. Manba: Ziyouz.com, «Elbek» maqolasi.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Elbekning 1921-yilda chop etilgan birinchi she'riy to'plami qaysi?$$, $$["«Bahor»", "«Yolqinlar»", "«Armug'on»", "«Ko'zgu»"]$$::jsonb, 2, $$Elbekning birinchi she'rlar to'plami «Armug'on» 1921-yilda nashr etilgan.$$
  FROM heroes h WHERE h.slug = 'elbek';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Elbekning asl ismi nima?$$, $$["G'ozi Yunus", "Mashriq Yunusov", "Shokirjon Rahimiy", "Fitrat"]$$::jsonb, 1, $$Elbek — adabiy taxallus bo'lib, shoirning asl ismi Mashriq Yunusov edi. U Xumson qishlog'ida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'elbek';


-- ═══════════ Fayzulla Xo'jayev ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('fayzulla-xojayev', $$Fayzulla Xo'jayev$$, $$Davlat arbobi va jadid$$, 1896, 1938,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Fayzulla Xo'jayev — davlat va siyosat arbobi, Buxoro jadidchilik harakatining yetakchilaridan biri. Buxoro amiri taxtdan ag'darilgach, Buxoro Xalq Sovet Respublikasi hukumatiga rahbarlik qilgan, 1925-yildan O'zbekiston Xalq nozirlari kengashi raisi bo'lgan, qatag'on qurboni.$$,
 $$Assalomu alaykum, aziz farzand! Men Fayzulla Xo'jayevman — Buxoro jadidi va davlat arbobiman. Mendan jadidchilik, Buxoro inqilobi va hukumatdagi ishlarim haqida so'ra!$$,
 $$🏛️$$, $$["fayzulla", "fayzu", "xojayev", "xojay", "buxor", "jadid"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1896-yil 1-iyulda Buxoro shahrida yirik savdogar oilasida tug'ilganman. Otamdan menga katta boylik meros qolgan.$$, $$["tugil", "tavallud", "1896", "buxor", "savdo", "oila"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Fayzulla Xo'jayev$$, TRUE,
       $$Fayzulla Xo'jayev qachon va qayerda tug'ilgan?$$, $$Fayzulla Xo'jayev 1896-yil 1-iyulda Buxoro shahrida yirik savdogar oilasida dunyoga kelgan. Otasidan unga katta boylik meros bo'lib qolgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'lim olishim$$, $$Yoshligimda eski maktabni bitirib, Buxoro madrasasida o'qiganman. 1907-1912-yillarda esa Moskvada ta'lim olganman.$$, $$["talim", "maktab", "madrasa", "moskv", "oqi", "oqu"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Fayzulla Xo'jayev$$, TRUE,
       $$Fayzulla Xo'jayev qayerlarda ta'lim olgan?$$, $$U eski maktabni tugatib, Buxoro madrasasida o'qigan. 1907-1912-yillarda Moskvada ta'lim olgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Jadidchilik harakatim$$, $$1913-yildan jadidlar safida faol bo'lganman: xalq orasida ma'rifat tarqatganman va otamdan meros qolgan boylikni yangi usul maktablari ochishga sarflaganman.$$, $$["jadid", "marif", "maktab", "usul", "yangi", "harak"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Fayzulla Xo'jayev$$, TRUE,
       $$Fayzulla Xo'jayev jadidchilik harakatida qanday ishtirok etgan?$$, $$U 1913-yildan jadidlar safida faol ishtirok etib, xalq orasida ma'rifat tarqatgan. Otasidan meros qolgan katta boylikni yangi usul maktablari ochishga sarflagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yosh buxoroliklar$$, $$Men yosh buxoroliklar partiyasida faoliyat yuritganman. 1917-yildan Fitrat bilan birga partiyaning so'l qanotiga boshchilik qilganman.$$, $$["yosh", "buxor", "parti", "fitrat", "qanot"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Fayzulla Xo'jayev$$, TRUE,
       $$Fayzulla Xo'jayev yosh buxoroliklar harakatida qanday rol o'ynagan?$$, $$U yosh buxoroliklar partiyasida faoliyat yuritgan. 1917-yildan Fitrat bilan birga partiyaning so'l qanotiga boshchilik qilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Buxoro hukumati rahbari$$, $$Buxoro amiri taxtdan ag'darilgach, men Buxoro Xalq Sovet Respublikasi hukumatiga rahbar etib saylanganman. 1922-yilda chet el savdo kompaniyalari bilan shartnoma tuzish uchun Germaniyaga borganman.$$, $$["rahbar", "hukum", "respub", "amir", "german", "bxsr"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Fayzulla Xo'jayev$$, TRUE,
       $$Fayzulla Xo'jayev Buxoro Xalq Sovet Respublikasida qanday lavozimda ishlagan?$$, $$Buxoro amiri taxtdan ag'darilgach, u hukumat rahbari etib saylangan. 1922-yilda Germaniyaga chet el savdo kompaniyalari va yirik savdogarlar bilan shartnoma tuzishga borgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'zbekiston hukumati$$, $$1925-yilda men O'zbekiston Xalq nozirlari kengashi (Xalq Komissarlari Soveti) raisi etib saylanganman va 1937-yilgacha hukumatni boshqarganman. Eron, Turkiya, Afg'oniston, Xitoy, Ozarbayjon, Germaniya va Yaponiya bilan aloqalar o'rnatishga harakat qilganman.$$, $$["ozbek", "nozir", "kengash", "rais", "komis", "1925"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Fayzulla Xo'jayev$$, TRUE,
       $$Fayzulla Xo'jayev O'zbekistonda qanday lavozimda ishlagan?$$, $$1925-yilda u O'zbekiston Xalq nozirlari kengashining raisi etib saylangan va 1937-yilda qamoqqa olinganigacha hukumatni boshqargan. Hukumat boshlig'i sifatida Eron, Turkiya, Afg'oniston, Xitoy, Ozarbayjon, Germaniya va Yaponiya bilan aloqalar o'rnatishga harakat qilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim$$, $$Men «Buxoro inqilobining tarixiga materiallar» (1926) kitobini yozganman. «BXSRdagi iqtisodiy ahvol» (1924), «Jadidlar» (1926) va «Bosmachilik» (1930) kabi maqolalar ham qalamimga mansub.$$, $$["asar", "kitob", "yoz", "inqilob", "material", "maqola"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Fayzulla Xo'jayev$$, TRUE,
       $$Fayzulla Xo'jayev qanday asarlar yozgan?$$, $$Uning «Buxoro inqilobining tarixiga materiallar» (1926) kitobi hamda «BXSRdagi iqtisodiy ahvol» (1924), «Jadidlar» (1926), «Bosmachilik» (1930) maqolalari ma'lum. 1932-yilda «Buxorodagi revolyutsiya va O'rta Osiyoning milliy chegaralanishi tarixiga doir» asari chiqqan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$1937-yil 9-iyulda Moskvada qamoqqa olinganman va asossiz ayblar bilan sud qilinganman. Men 1938-yilda vafot etganman.$$, $$["vafot", "qatag", "qamoq", "1938", "moskv", "hibs"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Fayzulla Xo'jayev$$, TRUE,
       $$Fayzulla Xo'jayevning umri qanday yakun topgan?$$, $$U 1937-yil 9-iyulda Moskvada qamoqqa olingan va «o'ng trotskiychi blok» faoliyatiga qo'shilganlikda asossiz ayblangan. Hukm Moskva atrofidagi Butovo qatlgohida ijro etilgan. 1965-yil 6-martda SSSR Oliy sudi uni aybsiz deb topib oqlagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Fayzulla Xo'jayev qaysi shaharda tug'ilgan?$$, $$["Toshkent", "Samarqand", "Buxoro", "Xiva"]$$::jsonb, 2, $$Fayzulla Xo'jayev 1896-yil 1-iyulda Buxoro shahrida yirik savdogar oilasida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Fayzulla Xo'jayev 1925-yildan qanday lavozimda ishlagan?$$, $$["O'zbekiston Xalq Komissarlari Soveti raisi", "Buxoro amiri", "Samarqand shahar hokimi", "Turkiston general-gubernatori"]$$::jsonb, 0, $$1925-yilda Fayzulla Xo'jayev O'zbekiston Xalq nozirlari kengashi (Xalq Komissarlari Soveti) raisi etib saylangan va 1937-yilgacha hukumat boshlig'i bo'lib ishlagan.$$
  FROM heroes h WHERE h.slug = 'fayzulla-xojayev';


-- ═══════════ Hakim at-Termiziy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('hakim-termiziy', $$Hakim at-Termiziy$$, $$Buyuk mutasavvif olim$$, NULL, 869,
 (SELECT id FROM eras WHERE code = 'arab'),
 $$Hakim at-Termiziy — Termizda tug'ilib o'sgan buyuk mutasavvif olim va muhaddis, valiylik nazariyasiga asos solgan «Xatm ul-avliyo» asari muallifi. U to'rt yuzga yaqin asar yaratgan, shogirdlari va izdoshlari tufayli tasavvufda hakimiya oqimi vujudga kelgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Hakim at-Termiziyman — qadimiy Termiz shahrida tug'ilib o'sgan mutasavvif olim va muhaddisman. Mendan bolaligim, ustozlarim, haj safarim, «Xatm ul-avliyo» asarim va shogirdlarim haqida so'ra!$$,
 $$📿$$, $$["termiz", "hakim", "xatm", "avliyo", "tasavvuf", "muhaddis"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men qadimiy Termiz shahrida tavallud topganman. Tug'ilgan yilim aniq ma'lum emas — taxminan 750-760-yillar oralig'ida dunyoga kelganman va uzoq, 116 yoki 120 yil umr ko'rganman. To'liq ismim — Abu Abdulloh Muhammad ibn Ali ibn al-Hasan ibn Bashir al-Hakim at-Termiziy.$$, $$["tugil", "tavallud", "termiz", "ism", "umr"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Hakim at-Termiziy$$, TRUE,
       $$Hakim at-Termiziy qachon va qayerda tug'ilgan?$$, $$Manbalarda uning aniq tug'ilgan yili ko'rsatilmagan: alloma uzoq — 116 yoki 120 yil umr ko'rganini hisobga olib, u taxminan VIII asr o'rtalarida (750-760-yillar oralig'ida) Termiz shahrida tavallud topgan deb hisoblanadi. «Al-Hakim» laqabi ilmning ichki, botiniy ma'nolarini tushunuvchi donishmand degan ma'noni anglatadi. Manba: Ziyouz.com, «Al-Hakim at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Bolaligim va ustozlarim$$, $$Otam Ali ibn al-Hasan at-Termiziy hadis ilmining yetuk olimi edi va ilk saboqni undan olganman. Sakkiz yoshimda otamdan judo bo'lib, keyin Termizning taniqli olimlaridan ta'lim olishda davom etganman.$$, $$["ota", "ustoz", "saboq", "hadis", "talim", "bolal"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Hakim at-Termiziy$$, TRUE,
       $$Hakim at-Termiziy ilmni kimlardan o'rgangan?$$, $$Otasidan hadis ilmini o'rgangan, keyinchalik Qutayba ibn Sa'iyd as-Saqafiy, Solih ibn Abdulloh at-Termiziy, Abu Turob an-Naxshabiy, Ahmad ibn Hizravayh va Yahyo ibn Maoz ar-Roziy kabi olimlardan saboq olgan. Rivoyatga ko'ra, onasining duosi barakati bilan unga bir nuroniy shayx — Xizr alayhissalom har kuni turli ilmlardan saboq bergan. Manba: Ziyouz.com, «Al-Hakim at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Haj safarim$$, $$Yoshim yigirma yettiga yaqinlashganda Iroq orqali muqaddas Makkaga borib, haj qilganman. Vatanga qaytayotganimda ko'nglimda Qur'oni karimni yod olishga kuchli ishtiyoq paydo bo'lganini sezganman. Umrim davomida Nishopur va Balx shaharlarida ham bo'lganman.$$, $$["haj", "makka", "safar", "quron", "yod", "balx"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Hakim at-Termiziy$$, TRUE,
       $$Hakim at-Termiziy qaysi shaharlarga safar qilgan?$$, $$U yoshi yigirma yettiga yaqinlashganda Iroq orqali Makkaga borib, haj ibodatini ado etgan va safardan qaytishda Qur'onni yod olishga bel bog'lagan. Manbalarda uning Kufa, Basra, Nishopur va Balx shaharlarida bo'lgani qayd etilgan. Manba: Ziyouz.com, «Al-Hakim at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim$$, $$Umrim davomida to'rt yuzga yaqin asar yozganman. Kitoblarim orasida «Navodir ul-usul», «Ilm ul-avliyo», «Adab un-nafs» va «Manozil ul-ibod» kabilari bor.$$, $$["asar", "kitob", "yoz", "navodir", "ijod"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Hakim at-Termiziy$$, TRUE,
       $$Hakim at-Termiziy qancha asar yozgan?$$, $$Ba'zi manbalarga ko'ra alloma to'rt yuzga yaqin asar yaratgan bo'lib, ulardan oltmishga yaqini bizgacha yetib kelgan. Bugungi kunda qo'lyozmalari Parij, Qohira, Damashq, Iskandariya, Istanbul va London kutubxonalarida saqlanadi; Parij Milliy kutubxonasida 12 ta asari bor. Manba: Ziyouz.com, «Al-Hakim at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Xatm ul-avliyo» asarim$$, $$Eng mashhur kitobim — «Xatm ul-avliyo». Bu asarim muqaddima va 29 fasldan iborat bo'lib, unda valiylik haqidagi ta'limotga asos solganman.$$, $$["xatm", "avliyo", "valiy", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Hakim at-Termiziy$$, TRUE,
       $$«Xatm ul-avliyo» asari nima haqida?$$, $$«Xatm ul-avliyo» muqaddima va 29 fasldan iborat bo'lib, valiylik nazariyasiga asos solgan. Keyinchalik buyuk mutasavvif Ibn al-Arabiy bu asardan ta'sirlanib, «Javob ul-mustaqim» va «Al-Futuhot al-Makkiyya» kitoblarida undagi bir yuz ellik besh savolga javob yozgan. Manba: Ziyouz.com, «Al-Hakim at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shogirdlarim va hakimiya$$, $$Ko'plab shogird tarbiyalaganman; ular orasida Abu Muhammad Yahyo ibn Mansur al-Qoziy, Abu Ali al-Hasan ibn Ali al-Jurjoniy va Abu Bakr Muhammad ibn Umar al-Varroq bor. Ta'limotim shogirdlarim va izdoshlarim orqali davom etgan.$$, $$["shogird", "tariqat", "hakimiya", "izdosh", "oqim"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Hakim at-Termiziy$$, TRUE,
       $$Hakim at-Termiziy bilan qaysi tasavvuf oqimi bog'liq?$$, $$Uning shogirdlari va izdoshlari tufayli tasavvufda keyinchalik ba'zi olimlar tomonidan «al-hakimiya vat-termiziyya» nomi bilan atalgan oqim vujudga kelgan. Bu oqim allomaning nomi va ta'limoti bilan bog'liq. Manba: Ziyouz.com, «Al-Hakim at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Sinov yillarim$$, $$Ayrim asarlarim e'lon qilingach, bir toifa kishilar menga qarshi chiqqan va men ona yurtim Termizdan badarg'a qilinib, bir necha yil Balxda yashaganman. Balx hokimi mendan Allohga muhabbat haqida gapirmaslik va odamlardan uzlatda bo'lish haqida va'da olgan.$$, $$["badarga", "balx", "hokim", "uzlat", "sinov"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Hakim at-Termiziy$$, TRUE,
       $$Nega Hakim at-Termiziy Termizdan badarg'a qilingan?$$, $$U Termizda yozgan ayrim asarlari e'lon qilingach, bir guruh kishilar unga qarshi chiqqan va alloma bir necha yil Balxda yashashga majbur bo'lgan. Balx hokimi undan Allohga muhabbat haqida gapirmaslik haqida va'da olgan. Manba: Ziyouz.com, «Al-Hakim at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men hijriy 255 — milodiy 869-yilda vafot etganman. Qabr toshimda ham shu sana bitilgan. Maqbaram Termiz shahri yaqinida, Amudaryo bo'yida joylashgan.$$, $$["vafot", "qabr", "maqbara", "amudaryo", "olam"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Hakim at-Termiziy$$, TRUE,
       $$Hakim at-Termiziy qachon vafot etgan va maqbarasi qayerda?$$, $$Hoji Xalifa «Kashf uz-zunun» asaridagi ma'lumotiga va qabrtoshdagi bitikka ko'ra, u hijriy 255 (milodiy 869) yilda vafot etgan. Misrlik olim Abdulfattoh Abdulloh Baraka esa u hijriy 320 (milodiy 932) yilda 112 yoshida vafot etgan deb hisoblaydi. Maqbarasi Termiz shahri yaqinida, Amudaryo bo'yida joylashgan. Manba: Ziyouz.com, «Al-Hakim at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Hakim at-Termiziyning valiylik nazariyasiga asos solgan mashhur asari qaysi?$$, $$["«Xatm ul-avliyo»", "«Boburnoma»", "«Devonu lug'otit turk»", "«Al-Qonun fit-tib»"]$$::jsonb, 0, $$«Xatm ul-avliyo» muqaddima va 29 fasldan iborat bo'lib, unda valiylik nazariyasiga asos solingan. Qolgan asarlar boshqa allomalar qalamiga mansub.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Hakim at-Termiziyning shogirdlari va izdoshlari tufayli vujudga kelgan tasavvuf oqimi qanday nomlangan?$$, $$["Naqshbandiya", "Yassaviya", "Hakimiya", "Kubroviya"]$$::jsonb, 2, $$Allomaning shogirdlari va izdoshlari tufayli «al-hakimiya vat-termiziyya» nomi bilan atalgan tasavvuf oqimi vujudga kelgan. Naqshbandiya, Yassaviya va Kubroviya esa boshqa allomalar nomi bilan bog'liq.$$
  FROM heroes h WHERE h.slug = 'hakim-termiziy';


-- ═══════════ Ibroyim Yusupov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('ibrayim-yusupov', $$Ibroyim Yusupov$$, $$Qoraqalpoq xalq shoiri$$, 1929, 2008,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Ibroyim Yusupov (1929–2008) — O'zbekiston va Qoraqalpog'iston xalq shoiri, O'zbekiston Qahramoni. U ko'plab she'riy to'plamlar va sahna asarlari yaratib, jahon adabiyoti durdonalarini qoraqalpoq tiliga tarjima qilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men qoraqalpoq shoiri Ibroyim Yusupovman. Mendan she'rlarim, tarjimalarim va sahna asarlarim haqida so'ra!$$,
 $$🖋️$$, $$["yusupov", "yusup", "ibroyim", "ibray", "shoir", "qoraqalp"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1929-yilning 5-mayida Chimboy tumanidagi Ozod qishlog'ida tavallud topganman. Ona yurtim — Qoraqalpog'iston.$$, $$["tugil", "tavallud", "chimboy", "qishlo", "1929", "ozod", "may"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupov qachon va qayerda tug'ilgan?$$, $$Ibroyim Yusupov 1929-yilning 5-mayida Qoraqalpog'istonning Chimboy tumanidagi Ozod qishlog'ida tavallud topgan. Keyinchalik u qoraqalpoq she'riyatining atoqli vakillaridan biriga aylangan. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsilim va muallimligim$$, $$Men 1949-yilda Qoraqalpoq davlat pedagogika institutini tamomlaganman. So'ng 1961-yilgacha shu institutda talabalarga dars berganman.$$, $$["oqi", "tahsil", "institut", "pedagog", "dars", "muallim"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupov qayerda tahsil olgan va kimlarga dars bergan?$$, $$U 1949-yilda Qoraqalpoq davlat pedagogika institutini tamomlagan. Shundan so'ng 1961-yilgacha o'sha institutda talabalarga dars bergan. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk she'rim va nasriy ijodim$$, $$Ilk she'rim «Vatanim» 1946-yilda bosilib chiqqan. 1963-yilda esa «Qari tutning kuzi» nomli hikoyalar to'plamimni yozganman.$$, $$["ilk", "birinchi", "vatanim", "1946", "asar", "kitob", "yoz", "hikoya"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupovning ilk she'ri qachon bosilgan?$$, $$Shoirning ilk she'ri «Vatanim» 1946-yilda e'lon qilingan. U nasrda ham qalam tebratib, 1963-yilda «Qari tutning kuzi» hikoyalar to'plamini nashr ettirgan. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riy to'plamlarim$$, $$Men «Baxt lirikasi», «Kunchiqar yo'lovchisiga», «O'ylar», «Yetti navo», «Dala orzulari», «To'maris» kabi she'riy to'plamlar yozganman. «Baxt lirikasi» to'plamim 1955-yilda nashr etilgan.$$, $$["asar", "kitob", "yoz", "toplam", "sher", "lirika"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupov qanday she'riy to'plamlar yozgan?$$, $$Shoirning «Baxt lirikasi» (1955), «Kunchiqar yo'lovchisiga» (1959), «O'ylar» (1960), «Yetti navo» (1962), «Dala orzulari» (1966), «Ko'ngil ko'ngildan suv ichar» (1971), «To'maris» (1974), «Tashvishlarga boy dunyo» (1987), «Tuzli shamollar» (1988), «Har kimning o'z zamoni bor» (2004) kabi she'riy to'plamlari nashr etilgan. Uning lirikasi qoraqalpoq she'riyatining yorqin sahifalaridan hisoblanadi. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Sahna asarlarim$$, $$Men Amet Shomuratov bilan birgalikda «Qirq qiz» pesasini yaratganman. 1966-yilda «O'mirbek laqqi» komediyasini, 1986-yilda «Iskandar podshoning tushi» dramasini yozganman. 1973-yilda esa «Ajiniyoz» operasi uchun libretto bitganman.$$, $$["asar", "kitob", "yoz", "drama", "opera", "qirq", "pesa"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupov qanday sahna asarlari yaratgan?$$, $$U Amet Shomuratov bilan birgalikda «Qirq qiz» pesasini yaratgan. 1966-yilda «O'mirbek laqqi» komediyasini, 1986-yilda «Iskandar podshoning tushi» dramasini yozgan, 1973-yilda «Ajiniyoz» operasining librettosini bitgan. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Jahon adabiyotidan tarjimalarim$$, $$Men Pushkin, Lermontov, Shevchenko, Bayron, Gyote, Geyne, Shiller va Shekspir asarlarini qoraqalpoq tiliga tarjima qilganman. Alisher Navoiy va Umar Xayyom she'rlarini ham ona tilimga o'girganman.$$, $$["tarjima", "asar", "kitob", "yoz", "pushkin", "shekspir", "xayyom"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupov kimlarning asarlarini qoraqalpoq tiliga tarjima qilgan?$$, $$Ibroyim Yusupov Pushkin, Lermontov, Shevchenko, Bayron, Gyote, Geyne, Shiller va Shekspir asarlarini qoraqalpoq tiliga tarjima qilgan. Shuningdek, Alisher Navoiy va Umar Xayyom she'rlaridan o'girmalar qilib, milliy adabiyotni boyitgan. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Rahbarlik ishlarim$$, $$Men 1961–1962-yillarda «Amudaryo» jurnaliga bosh muharrir bo'lganman. 1965–1980-yillarda Qoraqalpog'iston Yozuvchilar uyushmasiga raislik qilganman. 1980–1988-yillarda esa «Erkin Qoraqalpog'iston» gazetasida bosh muharrir bo'lib ishlaganman.$$, $$["muharrir", "jurnal", "gazeta", "uyushma", "rais", "amudaryo"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupov qanday lavozimlarda ishlagan?$$, $$U 1961–1962-yillarda «Amudaryo» jurnalining bosh muharriri bo'lgan, so'ng Til va adabiyot institutida ilmiy xodim bo'lib ishlagan. 1965–1980-yillarda Qoraqalpog'iston Yozuvchilar uyushmasi raisi, 1980–1988-yillarda «Erkin Qoraqalpog'iston» gazetasining bosh muharriri bo'lgan. 1988–1994-yillarda Tinchlik qo'mitasining Qoraqalpog'iston bo'limiga, 1994–2000-yillarda esa Respublika Ma'naviyat va ma'rifat markaziga rahbarlik qilgan. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvonlarim va mukofotlarim$$, $$Menga 1975-yilda O'zbekiston va Qoraqalpog'iston xalq shoiri unvoni berilgan. 1974-yilda Berdaq nomidagi Davlat mukofotini olganman, 2004-yilda esa O'zbekiston Qahramoni unvoniga sazovor bo'lganman.$$, $$["unvon", "mukofot", "qahramon", "berdaq", "orden", "xalq"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupov qanday unvon va mukofotlar olgan?$$, $$Ibroyim Yusupovga 1975-yilda O'zbekiston va Qoraqalpog'iston xalq shoiri unvoni berilgan. 1974-yilda Qoraqalpog'istonning Berdaq nomidagi Davlat mukofotiga, 2004-yilda esa Prezident farmoni bilan «O'zbekiston Qahramoni» unvoniga sazovor bo'lgan. U «El-yurt hurmati» va «Do'stlik» ordenlari bilan ham taqdirlangan. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 2008-yilda vafot etganman. Umrim davomida she'riyatga sadoqat bilan xizmat qilganman.$$, $$["vafot", "olam", "umr", "oxir", "2008"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ibroyim Yusupov (1929–2008)$$, TRUE,
       $$Ibroyim Yusupov qachon vafot etgan?$$, $$Ibroyim Yusupov 2008-yilda vafot etgan. Uning she'rlari qoraqalpoq adabiyotining oltin xazinasidan o'rin olgan. Manba: Ziyouz.com, Ibroyim Yusupov (1929–2008) sahifasi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ibroyim Yusupov qachon va qayerda tavallud topgan?$$, $$["1935-yilda Nukus shahrida", "1929-yilda Chimboy tumanidagi Ozod qishlog'ida", "1929-yilda Toshkent shahrida", "1924-yilda Xiva shahrida"]$$::jsonb, 1, $$Ibroyim Yusupov 1929-yilda Qoraqalpog'istonning Chimboy tumanidagi Ozod qishlog'ida tavallud topgan.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$2004-yilda Ibroyim Yusupovga qanday yuksak unvon berilgan?$$, $$["Mehnat faxriysi", "Xalq ustozi", "O'zbekiston Qahramoni", "Fan arbobi"]$$::jsonb, 2, $$2004-yilda shoirga O'zbekiston Qahramoni unvoni berilgan. Bundan avval, 1975-yilda u O'zbekiston va Qoraqalpog'iston xalq shoiri unvonini olgan edi.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ibroyim Yusupov «Qirq qiz» pesasini kim bilan birgalikda yaratgan?$$, $$["Berdaq", "Amet Shomuratov", "Ajiniyoz", "Alisher Navoiy"]$$::jsonb, 1, $$«Qirq qiz» pesasi Ibroyim Yusupov tomonidan Amet Shomuratov bilan birgalikda yaratilgan.$$
  FROM heroes h WHERE h.slug = 'ibrayim-yusupov';


-- ═══════════ Kunxo'ja ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('kunxoja', $$Kunxo'ja$$, $$Xalq dardi kuychisi$$, 1799, 1880,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Kunxo'ja Ibrohim o'g'li (1799-1880) - qoraqalpoq shoiri. U «O'roqchilar», «Oq qamish», «Cho'ponlar» kabi she'rlarida qoraqalpoq xalqining hayotini, turmush mashaqqatlarini va yaxshi kunlar kelishi haqidagi orzu-umidlarini kuylagan.$$,
 $$Assalomu alaykum, aziz farzand! Men qoraqalpoq shoiri Kunxo'jaman. Mendan she'rlarim, mehnatkash xalqim hayoti va Berdaq bilan suhbatlarim haqida so'ra!$$,
 $$📜$$, $$["kunxo", "kunxoja", "shoir", "qoraq", "berda", "sher"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1799-yilda tug'ilganman. To'liq ismim - Kunxo'ja Ibrohim o'g'li, ya'ni otamning ismi Ibrohim edi. Qaysi qishloqda tavallud topganim manbada yozilmagan, shuning uchun u aniq ma'lum emas.$$, $$["tugil", "tavallud", "1799", "ismin", "ibrohim"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi - «Kunxo'ja» maqolasi (onlayn ensiklopediya nashri)$$, TRUE,
       $$Kunxo'ja qaysi yilda tug'ilgan va uning to'liq ismi qanday bo'lgan?$$, $$Ensiklopediyada shoirning to'liq ismi Kunxo'ja Ibrohim o'g'li deb berilgan, hayot yillari esa 1799-1880 deb ko'rsatilgan. Tug'ilgan joyi haqida bu manbada ma'lumot yo'q, shuning uchun u aniq ma'lum emas. Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Men qoraqalpoq shoiriman$$, $$Men qoraqalpoq shoiriman. She'rlarimni o'z xalqim tilida yozganman va ularda oddiy odamlarning hayotini kuylaganman.$$, $$["shoir", "qoraq", "qoraqalpoq", "kasbi", "sheriy"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi - «Kunxo'ja» maqolasi (onlayn ensiklopediya nashri)$$, TRUE,
       $$Kunxo'ja qaysi xalqning shoiri bo'lgan?$$, $$O'zbekiston milliy ensiklopediyasida Kunxo'ja qisqa va aniq qilib «qoraqalpoq shoiri» deb ta'riflangan. Uning asarlari qoraqalpoq mumtoz she'riyatining bir qismi hisoblanadi. Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mehnatkash xalq haqidagi she'rlarim$$, $$Men «O'roqchilar», «Oq qamish» va «Cho'ponlar» she'rlarimni yozganman. Ularda qoraqalpoqlarning hayotini, turmush mashaqqatlarini va yaxshi kunlar kelishi haqidagi orzu-umidlarini aks ettirganman.$$, $$["oroqch", "qamish", "chopon", "mehnat", "asar", "yoz"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi - «Kunxo'ja» maqolasi (onlayn ensiklopediya nashri)$$, TRUE,
       $$Kunxo'ja «O'roqchilar», «Oq qamish» va «Cho'ponlar» she'rlarida nimani aks ettirgan?$$, $$Ensiklopediyaga ko'ra bu she'rlarda qoraqalpoqlar hayoti, turmush mashaqqatlari va yaxshi kunlar kelishi to'g'risidagi orzu-umidlar aks etgan. Ziyouz.com'dagi bir maqolada «Oq qamish» she'ridan qisqa parcha epigraf sifatida keltirilgan: «Oq qamish, hov, oq qamish, qurima suv ichida». Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi; Ziyouz.com - O'rozboy Abdurahmonov, «Orol: oppoq devor oldida...» maqolasi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Adolatsizlikni fosh etgan she'rlarim$$, $$«Boy bolasi», «El bilan», «Mening bolam» kabi she'rlarimda ijtimoiy ziddiyatlarni va adolatsizlikni ochib berganman, insofsiz hamda muruvvatsiz shaxslarning kirdikorlarini fosh qilganman.$$, $$["adolat", "ziddiy", "insof", "boy", "asar", "yoz"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi - «Kunxo'ja» maqolasi (onlayn ensiklopediya nashri)$$, TRUE,
       $$Kunxo'ja «Boy bolasi», «El bilan», «Mening bolam» she'rlarida nimani fosh qilgan?$$, $$Ensiklopediyada aytilishicha, bu she'rlarda ijtimoiy ziddiyatlar va adolatsizlik ochib berilgan, insofsiz, muruvvatsiz shaxslarning kirdikorlari fosh qilingan. Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Eng yaxshi asarlarim$$, $$Men «Unutmasman», «Tuya ekansan» va «Kun qayerda» nomli asarlarni ham yozganman. Bu she'rlar mening qalamimga mansub.$$, $$["unutmas", "tuya", "mumtoz", "asar", "kitob", "yoz"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi - «Kunxo'ja» maqolasi (onlayn ensiklopediya nashri)$$, TRUE,
       $$Kunxo'janing qaysi asarlari qoraqalpoq mumtoz she'riyatining eng yaxshi namunalaridan hisoblanadi?$$, $$«Unutmasman», «Tuya ekansan», «Kun qayerda» asarlari qoraqalpoq mumtoz she'riyatining eng yaxshi namunalaridan hisoblanadi. Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Berdaq bilan suhbatlarim$$, $$Shoir Berdaq mening huzurimda she'rlarini o'qib bergan, men esa ulardagi kamchiliklarni ko'rsatib, to'g'rilashiga yordam berganman.$$, $$["berda", "berdaq", "ustoz", "shogird", "uchrash"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi - «Kunxo'ja» maqolasi (onlayn ensiklopediya nashri)$$, TRUE,
       $$Berdaq nima uchun o'z she'rlarini Kunxo'jaga o'qib bergan?$$, $$O'zbekiston Milliy axborot agentligi UzA saytidagi maqolada Berdaqning Kunxo'ja huzurida she'rlarini o'qib, ulardagi nuqsonlarni to'g'rilagani tilga olinadi. Maqola muallifining yozishicha, bu Berdaqning so'zga bo'lgan mas'uliyati naqadar yuqori ekanini ko'rsatadi. Manba: UzA (uza.uz) - G'ayrat Majid, «Ajdodlar ruhi rahnamo bo'lgay...», 2022-yil 5-iyul.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1880-yilda vafot etganman. Qayerda vafot etganim va qabrim qayerdaligi manbada yozilmagan, shuning uchun bu aniq ma'lum emas.$$, $$["vafot", "1880", "oxir", "qabr", "umrim"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi - «Kunxo'ja» maqolasi (onlayn ensiklopediya nashri)$$, TRUE,
       $$Kunxo'ja qaysi yilda vafot etgan?$$, $$Ensiklopediyada Kunxo'janing hayot yillari 1799-1880 deb ko'rsatilgan. Vafot etgan joyi va qabri haqida bu manbada ma'lumot berilmagan, shuning uchun u aniq ma'lum emas. Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'rlarim kitob bo'ldi$$, $$Men 1880-yilda vafot etganman. Mendan keyin she'rlarim kitob bo'lib chop etilgan: «She'rlar» to'plamim Zohidjon Obidov tarjimasida o'zbek tilida 1973-yilda nashr etilgan, qoraqalpoq tilida esa «Qosiqlar» (1960) va «El menen» (1975, 1984, 1989) kitoblarim chiqqan.$$, $$["kitob", "nashr", "tarjim", "toplam", "asar", "yoz"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi - «Kunxo'ja» maqolasi (onlayn ensiklopediya nashri)$$, TRUE,
       $$Kunxo'janing she'rlari qaysi kitoblarda chop etilgan?$$, $$Ensiklopediyaga ko'ra shoirning she'riy to'plami - «She'rlar» Zohidjon Obidov tarjimasida o'zbek tilida 1973-yilda nashr etilgan. Ziyouz.com kutubxonasining «Qaraqalpaq poeziyasi» bo'limida esa uning «Qosiqlar» (1960) va «El menen» (1975, 1984, 1989) kitoblari, shuningdek «Adebiyat xrestomatiyasi. Jiyen jirau, Kunxoja, Berdaq» to'plami saqlanadi. Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi; Ziyouz.com kutubxonasi, «Qaraqalpaq poeziyasi» bo'limi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Kunxo'ja qaysi xalqning shoiri bo'lgan?$$, $$["Qoraqalpoq", "Qozoq", "Turkman", "Tojik"]$$::jsonb, 0, $$To'g'ri javob - qoraqalpoq. Kunxo'ja Ibrohim o'g'li (1799-1880) qoraqalpoq shoiri bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Quyidagi asarlardan qaysi biri Kunxo'ja qalamiga mansub?$$, $$["«Oq qamish»", "«Boburnoma»", "«Xamsa»", "«O'tkan kunlar»"]$$::jsonb, 0, $$To'g'ri javob - «Oq qamish». Bu she'rda, xuddi «O'roqchilar» va «Cho'ponlar» she'rlaridagi kabi, qoraqalpoqlarning hayoti va turmush mashaqqatlari aks etgan. Manba: O'zbekiston milliy ensiklopediyasi, «Kunxo'ja» maqolasi.$$
  FROM heroes h WHERE h.slug = 'kunxoja';


-- ═══════════ Lutfixonim Sarimsoqova ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('lutfixonim-sarimsoqova', $$Lutfixonim Sarimsoqova$$, $$Kino va teatr onaxoni$$, 1896, NULL,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Lutfixonim Sarimsoqova — o'zbek teatri va kinosining atoqli aktrisasi, xonanda, 1937-yilda O'zbekiston xalq artisti unvonini olgan san'atkor. Kino va teatrda yaratgan mehribon ona obrazlari uchun teatr jamoasi va butun el uni hurmat bilan «Aya» deb atagan.$$,
 $$Assalomu alaykum, aziz farzand! Men Lutfixonim Sarimsoqovaman — el «Aya» deb atagan aktrisa va xonandaman. Mendan teatrim, kinolarim va qo'shiqlarim haqida so'ra!$$,
 $$🎭$$, $$["lutfixonim", "lutfi", "sarimsoqova", "sarim", "aktrisa", "aya"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1896-yilda Farg'ona viloyatining Rishton tumanida tug'ilganman.$$, $$["tugil", "tavallud", "rishton", "fargona", "1896"]$$::jsonb, $$UzA — «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi»$$, TRUE,
       $$Lutfixonim Sarimsoqova qachon va qayerda tug'ilgan?$$, $$Lutfixonim Sarimsoqova 1896-yilda Farg'ona viloyatining Rishton tumanida tavallud topgan. Manba: UzA, «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Sahnaga chiqishim$$, $$1924-yilda Qo'qondagi xotin-qizlar havaskorlik to'garagiga qo'shilib, sahna yo'limni boshlaganman. Meni teatrga ulug' Hamza Hakimzoda Niyoziy taklif qilgan. So'ng Qo'qon, Andijon va Marg'ilon teatrlarida ishlaganman.$$, $$["sahna", "teatr", "qoqon", "havas", "hamza", "1924"]$$::jsonb, $$UzA — «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi»$$, TRUE,
       $$U sahnaga qanday kirib kelgan?$$, $$Lutfixonim Sarimsoqova 1924-yilda Qo'qonda xotin-qizlar havaskorlik to'garagi orqali teatrga kirib kelgan. Uni teatrga Hamza Hakimzoda Niyoziy taklif qilgan. Keyinchalik Qo'qon, Andijon va Marg'ilon teatrlarida faoliyat yuritgan. Manba: UzA, «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Teatr rollarim$$, $$O'zbek davlat musiqali teatrida — Muqimiy teatrida aktrisa bo'lib ishlaganman. Sahnada «Gulsara»da Oysara, «Nurxon»da Kimyo, «Farhod va Shirin»da Yosuman kampir kabi rollarni o'ynaganman.$$, $$["teatr", "spektakl", "rol", "asar", "kitob", "yoz"]$$::jsonb, $$UzA — «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi»$$, TRUE,
       $$U teatrda qaysi rollarni o'ynagan?$$, $$U O'zbek davlat musiqali teatri (Muqimiy teatri) sahnasida ko'plab obrazlar yaratgan: «Gulsara»da Oysara, «Nurxon»da Kimyo, «Farhod va Shirin»da Yosuman kampir, «Halima»da ona, «Maysaraning ishi»da Maysara rollari shular jumlasidan. Manba: UzA, «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kinodagi onalarim$$, $$Kinoda mehribon ona obrazlarini yaratganman: «Qasam»da ona, «Mahallada duv-duv gap»da Mehriniso, «Sen yetim emassan»da Fotima opa bo'lib suratga tushganman. Butun el meni mehr bilan «Aya» deb atagan.$$, $$["kino", "film", "ona", "mehri", "yetim", "asar"]$$::jsonb, $$UzA — «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi»$$, TRUE,
       $$U qaysi filmlarda ona rolini o'ynagan?$$, $$Uning kinodagi mashhur ishlari — «Qasam» filmidagi ona, «Mahallada duv-duv gap»dagi Mehriniso va «Sen yetim emassan»dagi Fotima opa obrazlari. «Farzandlar» va «Opa-singil Rahmonovalar» filmlarida ham rol ijro etgan. Manba: UzA, «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qo'shiqlarim$$, $$Men xonanda ham bo'lganman: «Yor-yor», «Omon bo'laylik», «Qilpillama», «Kuling» kabi qo'shiq va laparlarni kuylaganman. 1939–1940-yillarda O'zbekiston davlat filarmoniyasi qoshidagi dutorchi xotin-qizlar ansambliga rahbarlik qilganman.$$, $$["qoshiq", "ashula", "dutor", "asar", "kitob", "yoz"]$$::jsonb, $$UzA — «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi»$$, TRUE,
       $$U qanday qo'shiqlar aytgan?$$, $$Lutfixonim Sarimsoqova «Kuling», «O'zgancha», «Yor-yor», «Omon bo'laylik», «Qilpillama» kabi ashula va laparlari bilan tanilgan. 1939–1940-yillarda O'zbekiston davlat filarmoniyasi qoshidagi dutorchi xotin-qizlar ansambliga tashkilotchilik va badiiy rahbarlik qilgan. Manba: UzA, «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xalq artisti unvonim$$, $$1937-yilda menga O'zbekiston xalq artisti unvoni berilgan. Bu unvonni el-yurtim mehri deb bilganman.$$, $$["unvon", "artist", "1937", "mukofot", "xalq"]$$::jsonb, $$UzA — «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi»$$, TRUE,
       $$U qachon xalq artisti unvonini olgan?$$, $$Lutfixonim Sarimsoqovaga 1937-yilda, Moskvadagi dekada paytida O'zbekiston xalq artisti unvoni berilgan. O'sha yili «Pravda» gazetasi uni katta dramatik talant egasi deb tan olgan. Manba: UzA, «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asrab olgan bolalarim$$, $$Urush yillarida ikki nafar rus bolasini asrab olib, o'z farzandimdek mehr bilan tarbiya qilganman.$$, $$["urush", "asrab", "bola", "farzand", "mehribon"]$$::jsonb, $$UzA — «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi»$$, TRUE,
       $$U urush yillarida qanday mehribonlik ko'rsatgan?$$, $$Ikkinchi jahon urushi yillarida Lutfixonim Sarimsoqova ikki nafar rus bolasini asrab olib, ularni chuqur mehr bilan tarbiyalagan. Bu ishi uning el ichida «Aya» degan nomga munosib ekanini ko'rsatgan. Manba: UzA, «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men qariyb bir asrlik sharafli va murakkab umr kechirib, vafot etganman. Vafot etgan yilim manbalarda aniq ko'rsatilmagan.$$, $$["vafot", "olamdan", "umr", "oxir"]$$::jsonb, $$UzA — «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi»$$, TRUE,
       $$Lutfixonim Sarimsoqova qachon vafot etgan?$$, $$Manbada uning vafot yili aniq ko'rsatilmagan, UzA uni «qariyb bir asrlik» sharafli va murakkab umr kechirgan deya ta'riflaydi. Vafotidan so'ng, 2001-yilda san'atkor «Buyuk xizmatlari uchun» ordeni bilan taqdirlangan, u haqida «Aya» va «Lutfixon aya» hujjatli filmlari yaratilgan. Manba: UzA, «Lutfixonim Sarimsoqova tavalludiga 130 yil to'ldi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Lutfixonim Sarimsoqova qayerda tug'ilgan?$$, $$["Toshkent shahrida", "Farg'ona viloyatining Rishton tumanida", "Buxoro shahrida", "Xiva shahrida"]$$::jsonb, 1, $$Lutfixonim Sarimsoqova 1896-yilda Farg'ona viloyatining Rishton tumanida tavallud topgan.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$«Mahallada duv-duv gap» filmida Lutfixonim Sarimsoqova qaysi rolni ijro etgan?$$, $$["Oysara", "Fotima opa", "Mehriniso", "Yosuman"]$$::jsonb, 2, $$Bu filmda u Mehriniso rolini o'ynagan; Fotima opa esa uning «Sen yetim emassan» filmidagi obrazi.$$
  FROM heroes h WHERE h.slug = 'lutfixonim-sarimsoqova';


-- ═══════════ Mavlono Lutfiy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('lutfiy', $$Mavlono Lutfiy$$, $$Maliku-l-kalom — so'z podshosi$$, 1366, 1465,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Mavlono Lutfiy (1366–1465) — o'zbek mumtoz she'riyatining yirik vakili; zamondoshlari uni «malik ul-kalom», ya'ni so'z podshosi deb ulug'lagan. Uning turkiy devoni 2774 baytdan ortiq she'rlarni o'z ichiga oladi, Alisher Navoiy esa uni ustoz sifatida e'zozlagan.$$,
 $$Assalomu alaykum, aziz farzand! Men Mavlono Lutfiyman — zamondoshlarim meni «malik ul-kalom», ya'ni so'z podshosi deb ataganlar. Mendan g'azallarim, turkiy devonim va yosh Alisher Navoiy haqida so'ra!$$,
 $$🖋️$$, $$["lutfi", "malik", "kalom", "gazal", "devon", "navoi"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1366-yilda tavallud topganman. Umrimning katta qismi Hirot shahri bilan bog'liq o'tgan; ayrim manbalar esa asl vatanimni Toshkent deb ko'rsatadi.$$, $$["tugil", "tavallud", "1366", "hirot", "toshkent", "qayer"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Lutfiy$$, TRUE,
       $$Lutfiy qachon va qayerda tug'ilgan?$$, $$Mavlono Lutfiy 1366-yilda tug'ilgan. An'anaviy manbalarda uning tug'ilgan va vafot etgan joyi Hirot deb ko'rsatiladi; Shayx Ahmad Taroziyning «Funun ul-balog'a» asarida u «Lutfiyi Shoshiy» deb atalgani asosida asl vatani Toshkent bo'lgan degan fikr ham ilgari surilgan. Manba: Ziyouz.com, «Mavlono Lutfiy (1366–1465)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Maliku-l-kalom unvonim$$, $$Zamondoshlarim menga «malik ul-kalom», ya'ni so'z podshosi degan ulug' unvonni berganlar. Bu nom bilan meni she'r ahli ham, saroy a'yonlari ham e'zozlagan.$$, $$["malik", "kalom", "soz", "podsho", "unvon", "laqab"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Lutfiy$$, TRUE,
       $$Lutfiy qanday unvon bilan ulug'langan?$$, $$Lutfiy o'z zamonasida «malik ul-kalom» — so'z podshosi deb tan olingan. Alisher Navoiy uni o'z zamonining malik ul-kalomi, forsiy va turkiyda naziri yo'q shoir deb ta'riflagan; bu haqda «Majolis un-nafois» tazkirasida ma'lumot berilgan. Manba: Ziyouz.com, «Mavlono Lutfiy (1366–1465)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Turkiy va forsiy ijodim$$, $$Ona tilim — turkiy tilda yozgan she'rlarim bilan katta shuhrat qozonganman. Forsiy tilda ham shoirlik iqtidorimni ko'pchilikka tan oldirganman.$$, $$["turkiy", "forsiy", "til", "ona", "yoz", "sher", "asar", "kitob"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Lutfiy$$, TRUE,
       $$Lutfiy qaysi tillarda ijod qilgan?$$, $$Lutfiy o'z ona tili — turkiy tilda yaratilgan she'rlari bilan mashhurlikka yetishgan, forsiyda ham mahoratini ko'rsatgan. Navoiy uni forsiy va turkiyda naziri yo'q shoir deb ta'riflagan. Manba: Ziyouz.com, «Mavlono Lutfiy (1366–1465)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Turkiy devonim$$, $$She'rlarimni yig'ib turkiy devon tuzganman: unda g'azallar, ruboiylar, tuyuqlar va qit'alar bor. Devonimdagi she'rlarim jami 2774 baytdan ortiq bo'lib, shundan 2086 bayti g'azallardir.$$, $$["devon", "asar", "kitob", "yoz", "gazal", "tuyuq"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Lutfiy$$, TRUE,
       $$Lutfiy devoniga qanday she'rlar kirgan?$$, $$Lutfiy she'riyati 2774 baytdan ortiq bo'lib, uning 2086 bayti g'azallardir; devonda ruboiy, tuyuq, qit'a va fard kabi janrlar ham bor, qo'lyozmalarga Lutfiy g'azallari ilhomida bitilgan muxammaslar ham kiritilgan. Devonning 16–20-asrlarda ko'chirilgan 33 ta qo'lyozma nusxasi Toshkent, Dushanbe, Istanbul, Tehron, London, Parij va Sankt-Peterburg kutubxonalarida saqlanadi. Manba: Ziyouz.com, «Mavlono Lutfiy (1366–1465)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Sensan sevarim$$, $$Mana mening mashhur misralarim: «Sensan sevarim, xoh inon, xoh inonma, / Qondur jigarim, xoh inon, xoh inonma». Bu satrlarni el orasida ko'pchilik yod olgan.$$, $$["sensan", "sevar", "inon", "sher", "misra", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Lutfiy$$, TRUE,
       $$Lutfiyning qaysi misralari mashhur?$$, $$«Sensan sevarim, xoh inon, xoh inonma, / Qondur jigarim, xoh inon, xoh inonma» misralari Lutfiy she'riyatining eng mashhur namunalaridan sanaladi; manba sahifasida bu satrlar sodda, og'zaki nutqqa yaqin va samimiy uslub namunasi sifatida keltirilgan. Manba: Ziyouz.com, «Mavlono Lutfiy (1366–1465)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Gul va Navro'z» masalasi$$, $$Bu doston uzoq vaqt mening nomimga nisbat berib kelindi, biroq keyingi tadqiqotlar uni Haydar Xorazmiy asari deb ko'rsatdi. Ya'ni «Gul va Navro'z» meniki emas ekan.$$, $$["gul", "navroz", "doston", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Lutfiy$$, TRUE,
       $$«Gul va Navro'z» dostoni kimning asari deb hisoblangan?$$, $$«Gul va Navro'z» dostoni ilgari Lutfiy asari deb hisoblab kelingan. Keyingi tadqiqotlar esa bu dostonni Haydar Xorazmiy qalamiga mansub deb tasdiqladi. Manba: Ziyouz.com, «Mavlono Lutfiy (1366–1465)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Navoiy va maktabim$$, $$To'qson yoshdan o'tganimda ham she'r aytishdan to'xtamaganman. Umrimning so'nggi yillarida ijod maydoniga kirib kelgan yosh Alisher Navoiy mening ijod maktabimdan saboq olgan. Keyingi avlod shoiri Zahiriddin Muhammad Bobur ham mening she'riyatimdan bahramand bo'lgan.$$, $$["navoi", "alisher", "ustoz", "shogird", "bobur", "maktab"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Lutfiy$$, TRUE,
       $$Navoiy Lutfiyga qanday munosabatda bo'lgan?$$, $$Navoiy «Majolis un-nafois» va «Nasoyim ul-muhabbat» asarlarida Lutfiyni hurmat bilan tilga olgan va uni o'z zamonining malik ul-kalomi deb ulug'lagan. Lutfiy turkiy she'riyatda butun bir ijod maktabi yaratgan: yosh Alisher Navoiy shu maktabdan bevosita saboq olgan, keyingi avlod shoiri Zahiriddin Muhammad Bobur esa Lutfiy she'riyatidan bahramand bo'lgan, undan ta'sirlangan. Lutfiy 90 yoshdan o'tganda ham she'r aytgan. Manba: Ziyouz.com, «Mavlono Lutfiy (1366–1465)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1465-yilda, 99 yoshimda vafot etganman; manbalar so'nggi manzilim Hirot shahri bo'lganini yozadi. She'rlarim esa turkiy xalqlar orasida yashab qoldi.$$, $$["vafot", "olim", "1465", "umr", "yosh", "hirot"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Lutfiy$$, TRUE,
       $$Lutfiy qachon vafot etgan?$$, $$Mavlono Lutfiy 1465-yilda 99 yoshida vafot etgan; an'anaviy manbalarda vafot joyi Hirot deb ko'rsatiladi. Uning she'rlari Yaqin va O'rta Sharq mamlakatlariga yetib borgan, usmonli turk shoirlari orasida ham zavq bilan o'qilgan. Manba: Ziyouz.com, «Mavlono Lutfiy (1366–1465)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Alisher Navoiy Lutfiyni qanday deb ta'riflagan?$$, $$["O'z zamonining malik ul-kalomi — so'z podshosi", "Jahon fotihi", "Buyuk tabib", "Mohir me'mor"]$$::jsonb, 0, $$Navoiy Lutfiyni o'z zamonining «malik ul-kalomi» — forsiy va turkiyda naziri yo'q shoir deb ulug'lagan; bu haqda «Majolis un-nafois» tazkirasida ma'lumot berilgan.$$
  FROM heroes h WHERE h.slug = 'lutfiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Lutfiy necha yil umr ko'rgan?$$, $$["45 yil", "63 yil", "99 yil", "120 yil"]$$::jsonb, 2, $$Lutfiy 1366-yilda tug'ilib, 1465-yilda vafot etgan — ya'ni 99 yil umr ko'rgan va 90 yoshdan o'tganda ham she'r aytgan.$$
  FROM heroes h WHERE h.slug = 'lutfiy';


-- ═══════════ Mirtemir ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('mirtemir', $$Mirtemir$$, $$O'zbekiston xalq shoiri$$, 1910, 1978,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Mirtemir (1910–1978) — O'zbekiston xalq shoiri, «Surat» lirik qissasi muallifi va mohir tarjimon. U Turkiston shahri yaqinidagi Iqon qishlog'ida tug'ilgan, qirg'iz xalq eposi «Manas»ni hamda Pushkin, Nekrasov va Rustaveli asarlarini o'zbek tiliga tarjima qilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men O'zbekiston xalq shoiri Mirtemirman. Mendan «Surat» dostonim, she'rlarim va tarjimalarim haqida so'ra!$$,
 $$✍️$$, $$["mirtemir", "mirte", "shoir", "surat", "tarjim", "doston"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1910-yil 30-mayda Turkiston shahri yaqinidagi Iqon qishlog'ida tug'ilganman. To'liq ismim — Mirtemir Tursunov.$$, $$["tugil", "tavallud", "iqon", "turkiston", "1910", "qishloq"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Mirtemir$$, TRUE,
       $$Mirtemir qachon va qayerda tug'ilgan?$$, $$Mirtemir Tursunov 1910-yil 30-mayda Turkiston shahriga qarashli Iqon qishlog'ida dunyoga kelgan. Bolaligida avval eski maktabda, so'ng Toshkentdagi Almaiy nomidagi namuna maktabida o'qigan. Manba: Ziyouz.com, «Mirtemir (1910-1978)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'qigan joylarim$$, $$Avval eski maktabda ta'lim olganman, so'ng Toshkentdagi Almaiy nomidagi namuna maktabida o'qiganman. 1925–1929-yillarda esa O'zbek erlar bilim yurtida tahsil olganman.$$, $$["maktab", "oqi", "bilim", "toshkent", "almaiy", "tahsil"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Mirtemir$$, TRUE,
       $$Mirtemir qayerlarda o'qigan?$$, $$Mirtemir eski maktabda ta'lim olgach (1919–1920), Toshkentga kelib Almaiy nomidagi namuna maktabida (1920–1923), so'ngra 1925–1929-yillarda O'zbek erlar bilim yurtida o'qigan. Manba: Ziyouz.com, «Mirtemir (1910-1978)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Birinchi kitobim$$, $$1928-yilda «Shu'lalar qo'ynida» nomli birinchi kitobimni chop ettirganman. Bu to'plamim sochma janrida yozilgan.$$, $$["kitob", "asar", "yoz", "shulalar", "sher", "birinchi"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Mirtemir$$, TRUE,
       $$Mirtemirning birinchi kitobi qanday nomlangan?$$, $$Mirtemirning «Shu'lalar qo'ynida» nomli birinchi kitobi 1928-yilda sochma janrida nashr qilingan. Keyinchalik uning «Zafar» (1929), «Qaynashlarim» va «Bong» (1932) she'riy to'plamlari ham chiqqan. Manba: Ziyouz.com, «Mirtemir (1910-1978)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Surat» dostonim$$, $$Eng mashhur asarlarimdan biri — «Surat» lirik qissasi, uni 1956–1957-yillarda Qoraqalpog'istonda yozganman. Bu asarim o'zbek she'riyatida lirik doston janrining kamol topishiga katta ta'sir ko'rsatgan.$$, $$["surat", "doston", "qissa", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Mirtemir$$, TRUE,
       $$Mirtemirning «Surat» asari qanday asar?$$, $$«Surat» — Mirtemirning 1956–1957-yillarda Qoraqalpog'istonda yozilgan lirik qissasi bo'lib, u «Qoraqalpoq daftari» (1957) to'plamiga kirgan. Bu asar 60–70-yillarda o'zbek she'riyatida doston janriga e'tiborning kuchayishi va lirik doston janrining kamol topishiga katta ta'sir ko'rsatgan. Manba: Ziyouz.com, «Mirtemir (1910-1978)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Dostonlarim$$, $$Men «Barot», «Xidir», «Dilkusho», «Suv qizi», «Oysanamning to'yida» va «Ko'zi» kabi dostonlar yozganman. «Zafar», «Qaynashlarim» va «Bong» she'riy to'plamlarimni ham chiqarganman.$$, $$["doston", "asar", "kitob", "yoz", "dilkusho", "oysanam"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Mirtemir$$, TRUE,
       $$Mirtemir qanday dostonlar yozgan?$$, $$Mirtemir «Barot» (1930), «Xidir» (1932), «Dilkusho», «Suv qizi» (1937), «Oysanamning to'yida» (1938) va «Ko'zi» (1939) dostonlari muallifi. Uning «Zafar» (1929), «Qaynashlarim» va «Bong» (1932) she'riy to'plamlari ham nashr etilgan. Manba: Ziyouz.com, «Mirtemir (1910-1978)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tarjimalarim$$, $$Men Pushkin she'rlarini, Nekrasovning «Rusiyada kim yaxshi yashaydi» asarini va Rustavelining «Yo'lbars terisini yopingan pahlavon» dostonini o'zbekchaga tarjima qilganman. Qirg'iz xalq eposi «Manas»ni hamda Abay, Maxtumquli va Berdaq asarlarini ham o'girganman.$$, $$["tarjim", "manas", "pushkin", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Mirtemir$$, TRUE,
       $$Mirtemir qaysi asarlarni tarjima qilgan?$$, $$Mirtemir A. S. Pushkin she'rlarini, N. A. Nekrasovning «Rusiyada kim yaxshi yashaydi» dostonini, Rustavelining «Yo'lbars terisini yopingan pahlavon» asarini, Abay, Maxtumquli va Berdaq ijodidan namunalarni hamda qirg'iz xalq eposi «Manas»ni o'zbek tiliga o'girgan. Manba: Ziyouz.com, «Mirtemir (1910-1978)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xalq shoiri unvonim$$, $$1971-yilda «O'zbekiston xalq shoiri» unvonini olganman. 1977-yilda esa Berdaq nomidagi Qoraqalpog'iston Davlat mukofotiga sazovor bo'lganman.$$, $$["unvon", "mukofot", "xalq", "shoir", "berdaq"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Mirtemir$$, TRUE,
       $$Mirtemir qanday unvon va mukofotlar olgan?$$, $$Mirtemir 1971-yilda O'zbekiston xalq shoiri unvoniga, 1977-yilda Berdaq nomidagi Qoraqalpog'iston Davlat mukofotiga sazovor bo'lgan. Vafotidan so'ng, 1979-yilda unga Hamza nomidagi O'zbekiston Davlat mukofoti, 2002-yilda «Buyuk xizmatlari uchun» ordeni berilgan. Manba: Ziyouz.com, «Mirtemir (1910-1978)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1978-yil 25-yanvarda Toshkent shahrida vafot etganman. Butun umrimni she'riyatga va tarjima ishiga bag'ishlaganman.$$, $$["vafot", "olim", "oxir", "1978", "yanvar"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Mirtemir$$, TRUE,
       $$Mirtemir qachon vafot etgan?$$, $$Mirtemir 1978-yil 25-yanvarda Toshkentda vafot etgan. Vafotidan keyin ham xotirasi ulug'langan: 1979-yilda unga Hamza nomidagi O'zbekiston Davlat mukofoti, 2002-yilda «Buyuk xizmatlari uchun» ordeni berilgan. Manba: Ziyouz.com, «Mirtemir (1910-1978)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Mirtemirning 1956–1957-yillarda yozilgan mashhur lirik qissasi qanday nomlanadi?$$, $$["«Zafar»", "«Surat»", "«Bong»", "«Dilkusho»"]$$::jsonb, 1, $$«Surat» — Mirtemirning 1956–1957-yillarda yozilgan lirik qissasi bo'lib, u o'zbek she'riyatida lirik doston janrining rivojiga katta ta'sir ko'rsatgan.$$
  FROM heroes h WHERE h.slug = 'mirtemir';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Mirtemir qaysi qirg'iz xalq eposini o'zbek tiliga tarjima qilgan?$$, $$["«Alpomish»", "«Go'ro'g'li»", "«Manas»", "«Shohnoma»"]$$::jsonb, 2, $$Mirtemir qirg'iz xalq eposi «Manas»ni o'zbek tiliga tarjima qilgan. U shuningdek Pushkin, Nekrasov, Abay, Maxtumquli va Berdaq asarlarini ham o'girgan.$$
  FROM heroes h WHERE h.slug = 'mirtemir';


-- ═══════════ Muhammad Yusuf ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('muhammad-yusuf', $$Muhammad Yusuf$$, $$O'zbekiston xalq shoiri$$, 1954, 2001,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Muhammad Yusuf — O'zbekiston xalq shoiri, 1954-yilda Andijon viloyatining Marhamat tumanida tug'ilgan. Vatan, ona va muhabbatni samimiy kuylagan she'rlari bilan xalq qalbidan chuqur joy olgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Muhammad Yusufman — Andijon zaminida tug'ilgan xalq shoiriman. Mendan she'rlarim, kitoblarim va ona Vatanga muhabbatim haqida so'ra!$$,
 $$🖋️$$, $$["muhammad", "yusuf", "shoir", "sher", "andij", "vatan"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1954-yil 26-aprelda Andijon viloyatining Marhamat tumanida tug'ilganman. Ona yurtim Andijon mening she'rlarimning bosh mavzularidan biri bo'lgan.$$, $$["tugil", "tavallud", "andij", "marha", "1954"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Muhammad Yusuf$$, TRUE,
       $$Muhammad Yusuf qachon va qayerda tug'ilgan?$$, $$Muhammad Yusuf 1954-yil 26-aprelda Andijon viloyati Marhamat tumanida tug'ilgan. Keyinchalik u O'zbekistonning eng sevimli shoirlaridan biriga aylangan. Manba: Ziyouz.com, «Muhammad Yusuf (1954-2001)» sahifasi.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'qigan dargohim$$, $$Men 1978-yilda Rus tili va adabiyoti institutini tamomlaganman. Rus adabiyotini o'rgangan bo'lsam ham, she'rlarimni ona tilimda — o'zbek tilida yozganman.$$, $$["oqi", "institut", "tahsil", "1978", "rus"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Muhammad Yusuf$$, TRUE,
       $$Muhammad Yusuf qayerda tahsil olgan?$$, $$U 1978-yilda Rus tili va adabiyoti institutining fakultetini tamomlagan. So'ngra ijod va matbuot sohasida faoliyat yuritgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Birinchi kitobim$$, $$Mening ilk she'riy to'plamim «Tanish teraklar» deb ataladi, u 1985-yilda nashr etilgan. Shundan so'ng «Bulbulga bir gapim bor» (1987) va «Iltijo» (1988) kitoblarim chiqqan.$$, $$["asar", "kitob", "yoz", "terak", "toplam", "ilk"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Muhammad Yusuf$$, TRUE,
       $$Muhammad Yusufning birinchi she'riy to'plami qaysi?$$, $$Shoirning ilk to'plami «Tanish teraklar» 1985-yilda chop etilgan. Keyin «Bulbulga bir gapim bor» (1987) va «Iltijo» (1988) to'plamlari nashr qilingan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riy to'plamlarim$$, $$Men «Uyqudagi qiz», «Halima enam allalari», «Ishq kemasi», «Ko'nglimda bir yor» va «Erka kiyik» kabi ko'plab kitoblar yozganman. «Osmonimga olib ketaman» to'plamim 1998-yilda chiqqan.$$, $$["asar", "kitob", "yoz", "kiyik", "toplam", "osmon"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Muhammad Yusuf$$, TRUE,
       $$Muhammad Yusuf qanday kitoblar yozgan?$$, $$Uning «Uyqudagi qiz» (1989), «Ishq kemasi» (1990), «Erka kiyik» (1995), «Osmonimga olib ketaman» (1998) kabi to'plamlari nashr etilgan. Vafotidan so'ng, 2004-yilda «Ulug'imsan, vatanim» kitobi ham chop etilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Vatan haqidagi she'rlarim$$, $$Men she'rlarimda ona Vatanni, onalarni va mehnatkash xalqimni kuylaganman. «Vatanim» va «Onajon» she'rlarim ko'pchilikning yodida.$$, $$["vatan", "ona", "sher", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Muhammad Yusuf$$, TRUE,
       $$Muhammad Yusuf she'rlarida nimalarni kuylagan?$$, $$Shoir ijodida Vatan, onalar va mehnatsevar xalq timsoli ustuvor bo'lgan. «Onajon», «Vatanim», «Muhabbat» kabi she'rlari xalq orasida mashhur. Manba: Ziyouz.com va UzA.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Gazetadagi ishim$$, $$Men «Toshkent oqshomi» gazetasida ishlaganman. U yerda shoir do'stim Sirojiddin Sayyid bilan birga xizmat qilganman.$$, $$["gazeta", "ishla", "toshk", "oqsho", "sayyid"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Muhammad Yusuf$$, TRUE,
       $$Muhammad Yusuf qayerda ishlagan?$$, $$Muhammad Yusuf «Toshkent oqshomi» gazetasida faoliyat yuritgan. Bu yerda u shoir Sirojiddin Sayyid bilan birga ishlagan. Manba: UzA — «Muhammad Yusuf – barhayot she'riyat sohibi» maqolasi.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xalq shoiri unvonim$$, $$1998-yilda menga «O'zbekiston xalq shoiri» degan yuksak unvon berilgan. Bu unvon men uchun xalqimning mehridan nishona bo'lgan.$$, $$["xalq", "shoir", "unvon", "1998", "mukofot"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Muhammad Yusuf$$, TRUE,
       $$Muhammad Yusuf qachon xalq shoiri unvonini olgan?$$, $$Muhammad Yusufga 1998-yilda «O'zbekiston xalq shoiri» unvoni berilgan. Bu uning she'riyati butun xalq tomonidan e'tirof etilganining belgisidir. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 2001-yil 31-iyulda Ellikqal'a tumanida vafot etganman. Atigi 47 yil umr ko'rganman, ammo she'rlarimni xalqimga qoldirganman.$$, $$["vafot", "olim", "ellik", "2001", "oxir"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Muhammad Yusuf$$, TRUE,
       $$Muhammad Yusuf qachon vafot etgan?$$, $$Muhammad Yusuf 2001-yil 31-iyulda Ellikqal'a tumanida vafot etgan. Uning xotirasi el yurtida e'zozlanadi, tavalludiga bag'ishlangan xotira kechalari o'tkazib turiladi. Manba: Ziyouz.com va UzA.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Muhammad Yusuf qayerda tug'ilgan?$$, $$["Andijon viloyati Marhamat tumanida", "Toshkent shahrida", "Farg'ona viloyatida", "Xorazm viloyatida"]$$::jsonb, 0, $$Muhammad Yusuf 1954-yil 26-aprelda Andijon viloyatining Marhamat tumanida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Muhammad Yusufning 1985-yilda chiqqan birinchi she'riy to'plami qanday nomlangan?$$, $$["«Ishq kemasi»", "«Tanish teraklar»", "«Erka kiyik»", "«Iltijo»"]$$::jsonb, 1, $$Shoirning ilk she'riy to'plami «Tanish teraklar» 1985-yilda nashr etilgan.$$
  FROM heroes h WHERE h.slug = 'muhammad-yusuf';


-- ═══════════ Odil Yoqubov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('odil-yoqubov', $$Odil Yoqubov$$, $$O'zbekiston xalq yozuvchisi$$, 1926, 2009,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Odil Yoqubov (1926-2009) — O'zbekiston xalq yozuvchisi, «Ulug'bek xazinasi», «Diyonat», «Ko'hna dunyo» kabi romanlar muallifi. U 1956-yilda Toshkent davlat universitetining filologiya fakultetini tamomlagan bo'lib, o'zbek nasrining yirik namoyandalaridan biridir.$$,
 $$Assalomu alaykum, aziz farzand! Men Odil Yoqubovman — «Ulug'bek xazinasi» va «Diyonat» romanlarining muallifiman. Mendan hayotim, asarlarim va ijodim haqida so'ra!$$,
 $$✍️$$, $$["yoqub", "yozuv", "ulugb", "diyon", "roman", "xazin"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1926-yil 20-oktabrda hozirgi Janubiy Qozog'iston viloyatidagi Qarnoq qishlog'ida tug'ilganman.$$, $$["tugil", "tavallud", "qarno", "qozog", "1926"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Odil Yoqubov$$, TRUE,
       $$Odil Yoqubov qachon va qayerda tug'ilgan?$$, $$Odil Yoqubov 1926-yil 20-oktabrda hozirgi Janubiy Qozog'iston viloyatining Qarnoq qishlog'ida tug'ilgan. Keyinchalik u o'zbek adabiyotining yirik yozuvchilaridan biriga aylangan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'qishim$$, $$Men 1956-yilda Toshkent davlat universitetining filologiya fakultetini tamomlaganman.$$, $$["oqi", "universi", "toshk", "filolog", "talim"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Odil Yoqubov$$, TRUE,
       $$Odil Yoqubov qayerda o'qigan?$$, $$Odil Yoqubov 1956-yilda Toshkent davlat universitetining filologiya fakultetini tamomlagan. Shu bilim unga yozuvchilik yo'lida asos bo'lgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk asarim$$, $$Ilk asarim — «Tengdoshlar» qissasi 1951-yilda bosilib chiqqan. Keyin «Dastlabki qadam» (1953) va «Muqaddas» (1960) asarlarimni yozganman.$$, $$["asar", "kitob", "yoz", "tengdosh", "qissa", "ilk"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Odil Yoqubov$$, TRUE,
       $$Odil Yoqubovning ilk asari qaysi?$$, $$Uning ilk asari — «Tengdoshlar» qissasi 1951-yilda nashr etilgan. Keyin «Dastlabki qadam» (1953), «Muqaddas» (1960) kabi asarlari chiqqan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Ulug'bek xazinasi» romanim$$, $$Eng mashhur asarlarimdan biri — «Ulug'bek xazinasi» romani 1973-yilda nashr etilgan. 1982-yilda esa «Ko'hna dunyo» romanimni yozganman.$$, $$["asar", "kitob", "yoz", "ulugb", "xazin", "kohna"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Odil Yoqubov$$, TRUE,
       $$«Ulug'bek xazinasi» romanini kim yozgan?$$, $$«Ulug'bek xazinasi» romani 1973-yilda nashr etilgan bo'lib, Odil Yoqubovning eng mashhur asarlaridan biridir. 1982-yilda yozuvchining «Ko'hna dunyo» romani ham chiqqan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Diyonat» va boshqa romanlarim$$, $$1977-yilda «Diyonat» romanim nashr etilgan. Bundan tashqari «Er boshiga ish tushsa...» (1966), «Oqqushlar, oppoq qushlar» (1988) va «Adolat manzili» (1998) romanlarini yozganman.$$, $$["asar", "kitob", "yoz", "diyon", "roman", "oqqush"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Odil Yoqubov$$, TRUE,
       $$Odil Yoqubov qanday romanlar yozgan?$$, $$«Diyonat» romani 1977-yilda chiqqan. Yozuvchi «Er boshiga ish tushsa...» (1966), «Ulug'bek xazinasi» (1973), «Ko'hna dunyo» (1982), «Oqqushlar, oppoq qushlar» (1988) va «Adolat manzili» (1998) romanlarini ham yozgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mukofotlarim$$, $$1977-yilda Hamza nomidagi Davlat mukofotiga sazovor bo'lganman, 1985-yilda esa menga «O'zbekiston xalq yozuvchisi» unvoni berilgan. 1994-yilda «Do'stlik», 1998-yilda «El-yurt hurmati» ordenlari bilan taqdirlanganman.$$, $$["mukofot", "unvon", "orden", "hamza", "taqdir"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Odil Yoqubov$$, TRUE,
       $$Odil Yoqubov qanday mukofotlar olgan?$$, $$U 1977-yilda Hamza nomidagi Davlat mukofoti laureati bo'lgan, 1985-yilda «O'zbekiston xalq yozuvchisi» unvonini olgan. 1994-yilda «Do'stlik», 1998-yilda «El-yurt hurmati» ordenlari bilan taqdirlangan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 2009-yil 21-dekabrda Toshkent shahrida vafot etganman.$$, $$["vafot", "oxir", "2009", "dekabr"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Odil Yoqubov$$, TRUE,
       $$Odil Yoqubov qachon vafot etgan?$$, $$Odil Yoqubov 2009-yil 21-dekabrda Toshkentda vafot etgan. U o'zbek adabiyotida boy ijodiy meros qoldirgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$«Ulug'bek xazinasi» romanini kim yozgan?$$, $$["Oybek", "Odil Yoqubov", "Abdulla Qodiriy", "Pirimqul Qodirov"]$$::jsonb, 1, $$«Ulug'bek xazinasi» romani Odil Yoqubov qalamiga mansub bo'lib, 1973-yilda nashr etilgan.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Odil Yoqubov qaysi yili «O'zbekiston xalq yozuvchisi» unvonini olgan?$$, $$["1977", "1985", "1994", "1998"]$$::jsonb, 1, $$Odil Yoqubovga 1985-yilda «O'zbekiston xalq yozuvchisi» unvoni berilgan. 1977-yilda esa u Hamza nomidagi Davlat mukofotini olgan.$$
  FROM heroes h WHERE h.slug = 'odil-yoqubov';


-- ═══════════ O'rol Tansiqboyev ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('orol-tansiqboyev', $$O'rol Tansiqboyev$$, $$Manzarachi rassom, rangtasvir ustasi$$, 1904, 1974,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$O'rol Tansiqboyev (1904–1974) — manzarachi rassom, rangtasvir ustasi, O'zbekiston xalq rassomi (1944). 30-yillardan uning ijodida manzara janri yetakchi o'rin egallagan; «Qayroqqum GESi tongi», «O'zbekistonda bahor» kabi asarlari respublika va xorijiy mamlakatlar muzeylarida saqlanadi.$$,
 $$Assalomu alaykum, aziz farzand! Men O'rol Tansiqboyevman — manzarachi rassom, O'zbekiston xalq rassomiman. Mendan tug'ilishim, o'qishim, «Qayroqqum GESi tongi» kabi asarlarim va ona yurt manzaralari haqida so'ra!$$,
 $$🎨$$, $$["tansi", "tansiqboyev", "rassom", "manzar", "qayro"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1904-yil 14-yanvarda Toshkent shahrida tug'ilganman. Keyinchalik butun ijodimni ona yurtim tabiatini tasvirlashga bag'ishlaganman.$$, $$["tugil", "tavallud", "toshkent", "yanvar", "1904"]$$::jsonb, $$Ziyouz.com — «O'zbekiston milliy ensiklopediyasi» bo'limi: O'rol Tansiqboyev$$, TRUE,
       $$O'rol Tansiqboyev qachon va qayerda tug'ilgan?$$, $$O'rol Tansiqboyev 1904-yil 14-yanvarda Toshkentda tug'ilgan. U manzarachi rassom va rangtasvir ustasi sifatida tarixda qolgan. Manba: O'zbekiston milliy ensiklopediyasi, T harfi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'lim olishim$$, $$1924-yilda Penza rassomlik bilim yurtini tugatganman. So'ngra 1924–1928-yillarda O'zbekiston davlat san'at muzeyi qoshidagi tasviriy san'at studiyasida ta'lim olganman.$$, $$["penza", "bilim", "talim", "oqish", "studiya"]$$::jsonb, $$Ziyouz.com — «O'zbekiston milliy ensiklopediyasi» bo'limi: O'rol Tansiqboyev$$, TRUE,
       $$Tansiqboyev rassomlikni qayerda o'rgangan?$$, $$U 1924-yilda Penza rassomlik bilim yurtini tugatgan. So'ng 1924–1928-yillarda O'zbekiston davlat san'at muzeyi qoshidagi tasviriy san'at studiyasida tahsilni davom ettirgan. Manba: O'zbekiston milliy ensiklopediyasi, T harfi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk ijodim$$, $$20–30-yillardagi ijodim uslub, janr va mavzu rang-barangligi bilan ajralib turadi: «O'zbek portreti», «Kurash», «Karvon», «O'tovda» asarlarini yaratganman. G'arbiy Yevropa yangi san'ati, Meksika monumental rassomlari hamda O'rta Osiyo devoriy rassomligi va miniatyura san'atini o'rganganman.$$, $$["asar", "kitob", "yoz", "karvon", "kurash", "portret"]$$::jsonb, $$Ziyouz.com — «O'zbekiston milliy ensiklopediyasi» bo'limi: O'rol Tansiqboyev$$, TRUE,
       $$Tansiqboyevning ilk asarlari qaysilar?$$, $$Izlanishlar davrida u «O'zbek portreti» (1927), «Kurash» va «Karvon» (1929), «O'tovda» (1931) asarlarini yaratgan. Bu davrda tarixiy, maishiy va portret janrlarida ijod qilgan. Manba: O'zbekiston milliy ensiklopediyasi, T harfi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Manzara — yetakchi janrim$$, $$30-yillardan ijodimda manzara janri yetakchi o'rin egallagan. «Moviy manzara» va «Tungi sug'orish» asarlarimda manzaraga hayotiy lavha, inson faoliyatini ifodalovchi unsurlar kiritganman.$$, $$["asar", "kitob", "yoz", "manzar", "janr", "moviy"]$$::jsonb, $$Ziyouz.com — «O'zbekiston milliy ensiklopediyasi» bo'limi: O'rol Tansiqboyev$$, TRUE,
       $$Tansiqboyev ijodida qaysi janr yetakchi bo'lgan?$$, $$30-yillardan Tansiqboyev ijodida manzara janri yetakchi o'rin egallagan. «Moviy manzara» (1935), «Tungi sug'orish» (1942) shu yo'ldagi asarlaridir. Manba: O'zbekiston milliy ensiklopediyasi, T harfi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Qayroqqum GESi tongi»$$, $$1957-yilda «Qayroqqum GESi tongi» nomli industrial manzarani chizganman. Unda ona yurtning inson mehnati tufayli o'zgarib borayotgan qiyofasini tasvirlaganman.$$, $$["qayro", "ges", "tong", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbekiston milliy ensiklopediyasi» bo'limi: O'rol Tansiqboyev$$, TRUE,
       $$«Qayroqqum GESi tongi» qachon yaratilgan?$$, $$«Qayroqqum GESi tongi» (1957) — Tansiqboyev industrial manzaralarining mashhur namunasi. Keyinchalik «Chorvoq qurilishida» (1970) va «Mirzacho'l kanali» (1971) asarlari ham shu yo'nalishda yaratilgan. Manba: O'zbekiston milliy ensiklopediyasi, T harfi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ona yurt manzaralari$$, $$1942-yilda Moskva yaqinidagi jang bo'lib o'tgan yerlarni o'z ko'zim bilan ko'rib, «Urush yo'llarida» turkumini yaratganman. Urushdan keyin «Tog'dagi kolxoz», «O'zbekistonda bahor», «Jonajon o'lka», «Issiqko'lda oqshom» kabi asarlarimda ona yurt go'zalligini kuylaganman.$$, $$["asar", "kitob", "yoz", "urush", "bahor", "jonajon"]$$::jsonb, $$Ziyouz.com — «O'zbekiston milliy ensiklopediyasi» bo'limi: O'rol Tansiqboyev$$, TRUE,
       $$Tansiqboyev urushdan keyin qanday asarlar yaratgan?$$, $$Urushdan keyin «Tog'dagi kolxoz» (1949), «G'o'za sug'orish» (1949), «O'zbekistonda bahor» (1950) asarlari yaratilgan. So'ng «Jonajon o'lka» (1951), «Issiqko'lda oqshom» (1951), «Tog'da kuz» (1954) manzaralari maydonga kelgan. Manba: O'zbekiston milliy ensiklopediyasi, T harfi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvon va mukofotlarim$$, $$1944-yilda O'zbekiston xalq rassomi unvoniga sazovor bo'lganman. 1973-yilda esa Hamza nomidagi O'zbekiston Davlat mukofoti laureati bo'lganman.$$, $$["xalq", "unvon", "mukofot", "hamza", "laureat"]$$::jsonb, $$Ziyouz.com — «O'zbekiston milliy ensiklopediyasi» bo'limi: O'rol Tansiqboyev$$, TRUE,
       $$Tansiqboyev qanday unvonlarga ega bo'lgan?$$, $$U 1944-yilda O'zbekiston xalq rassomi unvonini olgan, 1973-yilda Hamza nomidagi O'zbekiston Davlat mukofoti laureati bo'lgan. Vafotidan so'ng, 2001-yilda «Buyuk xizmatlari uchun» ordeni bilan taqdirlangan. Manba: O'zbekiston milliy ensiklopediyasi, T harfi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$So'nggi yillarimda ham ijod qilganman: 1972-yilda «Kuz tongi», «Oqshom» va «Mening qo'shig'im» asarlarini yaratganman. Men 1974-yil 18-aprelda vafot etganman.$$, $$["vafot", "oxir", "aprel", "1974", "muzey"]$$::jsonb, $$Ziyouz.com — «O'zbekiston milliy ensiklopediyasi» bo'limi: O'rol Tansiqboyev$$, TRUE,
       $$Tansiqboyev qachon vafot etgan?$$, $$O'rol Tansiqboyev 1974-yil 18-aprelda vafot etgan. U 1967–1974-yillarda yashagan uy 1981-yilda uy-muzeyga aylantirilgan bo'lib, unda ijodiy ustaxona va mashhur asarlari saqlanadi. Manba: O'zbekiston milliy ensiklopediyasi, T harfi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Tansiqboyev ijodida 30-yillardan qaysi janr yetakchi o'rin egallagan?$$, $$["Portret janri", "Manzara janri", "Naturmort janri", "Karikatura janri"]$$::jsonb, 1, $$30-yillardan Tansiqboyev ijodida manzara janri yetakchi o'rin egallagan; u manzarachi rassom sifatida tanilgan.$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$«Qayroqqum GESi tongi» asari qaysi yilda yaratilgan?$$, $$["1935-yilda", "1944-yilda", "1957-yilda", "1972-yilda"]$$::jsonb, 2, $$Tansiqboyev bu industrial manzarani 1957-yilda yaratgan.$$
  FROM heroes h WHERE h.slug = 'orol-tansiqboyev';


-- ═══════════ Pirimqul Qodirov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('pirimqul-qodirov', $$Pirimqul Qodirov$$, $$O'zbekiston xalq yozuvchisi$$, 1928, 2010,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Pirimqul Qodirov (1928–2010) — O'zbekiston xalq yozuvchisi, Bobur hayotiga bag'ishlangan «Yulduzli tunlar» va uning davomi «Avlodlar dovoni» tarixiy romanlari muallifi. U adabiyotshunos olim sifatida ham til va adabiyotga oid ilmiy asarlar yaratgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Pirimqul Qodirovman — O'zbekiston xalq yozuvchisi, «Yulduzli tunlar» va «Avlodlar dovoni» romanlarining muallifiman. Mendan hayotim, asarlarim va Bobur haqidagi romanlarim haqida so'ra!$$,
 $$✍️$$, $$["qodir", "pirimqul", "bobur", "yulduz", "avlod", "yozuvchi"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1928-yil 25-oktabrda hozirgi Tojikiston Respublikasining Shahriston tumanidagi Kengko'l qishlog'ida tug'ilganman.$$, $$["tugil", "tavallud", "kengkol", "shahriston", "1928"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Pirimqul Qodirov$$, TRUE,
       $$Pirimqul Qodirov qachon va qayerda tug'ilgan?$$, $$Pirimqul Qodirov 1928-yil 25-oktabrda hozirgi Tojikiston Respublikasining Shahriston tumanidagi Kengko'l qishlog'ida tug'ilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsil yillarim$$, $$Men 1951-yilda O'rta Osiyo universitetining sharqshunoslik fakultetini tugatganman. O'sha 1951-yilda dastlabki hikoyam «Studentlar»ni ham e'lon qilganman.$$, $$["oqi", "tahsil", "universitet", "student", "sharq"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Pirimqul Qodirov$$, TRUE,
       $$Pirimqul Qodirov qayerda o'qigan?$$, $$U 1951-yilda O'rta Osiyo universitetining sharqshunoslik fakultetini tamomlagan. Xuddi shu yili uning dastlabki hikoyasi «Studentlar» e'lon qilingan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Yulduzli tunlar» romanim$$, $$Men 1979-yilda «Yulduzli tunlar» romanimni e'lon qilganman. Bu asarim buyuk shoir va davlat arbobi Zahiriddin Muhammad Bobur hayotiga bag'ishlangan.$$, $$["yulduz", "bobur", "roman", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Pirimqul Qodirov$$, TRUE,
       $$«Yulduzli tunlar» romani kim haqida yozilgan?$$, $$«Yulduzli tunlar» (1979) romani buyuk shoir va davlat arbobi Zahiriddin Muhammad Bobur hayotini tasvirlaydi. Roman sho'ro mafkurasi 70-yillarda tarixiy mavzuga qattiq qarshilik ko'rsatganiga qaramay yozilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Avlodlar dovoni»$$, $$Men 1989-yilda «Avlodlar dovoni» romanimni e'lon qilganman. U «Yulduzli tunlar» romanimning davomidir.$$, $$["avlod", "dovon", "roman", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Pirimqul Qodirov$$, TRUE,
       $$«Avlodlar dovoni» romani qanday asar?$$, $$«Avlodlar dovoni» (1989) — «Yulduzli tunlar» romanining davomi sifatida nashr etilgan tarixiy roman. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Boshqa asarlarim$$, $$Men «Uch ildiz» (1958), «Qora ko'zlar» (1966) va «Olmos kamar» (1976) romanlarini, «Qadrim» (1961) va «Erk» (1968) asarlarini yozganman. 2000-yilda «Ona lochin nidosi» asarim e'lon qilingan.$$, $$["asar", "kitob", "yoz", "ildiz", "olmos", "erk"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Pirimqul Qodirov$$, TRUE,
       $$Pirimqul Qodirov yana qanday asarlar yozgan?$$, $$Uning qalamiga «Uch ildiz» (1958), «Qadrim» (1961), «Qora ko'zlar» (1966), «Erk» (1968), «Meros» (1974), «Olmos kamar» (1976) va «Ona lochin nidosi» (2000) kabi asarlar mansub. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilmiy ishlarim$$, $$Men adabiyotshunos olim sifatida ham ishlaganman: 1963–1983-yillarda O'zbekiston Fanlar akademiyasining Til va adabiyot institutida katta ilmiy xodim bo'lganman. «Til va dil» (1972) kabi ilmiy asarlar yozganman.$$, $$["ilm", "olim", "til", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Pirimqul Qodirov$$, TRUE,
       $$Pirimqul Qodirov qanday ilmiy ishlar qilgan?$$, $$U 1954–1963-yillarda SSSR Yozuvchilar uyushmasida o'zbek adabiyoti bo'yicha maslahatchi, 1963–1983-yillarda O'zbekiston Fanlar akademiyasi Til va adabiyot institutida katta ilmiy xodim bo'lib ishlagan. «Til va dil» (1972), «Xalq tili va realistik proza» (1973) kabi ilmiy asarlari bor. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mukofotlarim$$, $$1988-yilda menga O'zbekiston xalq yozuvchisi unvoni berilgan. Shuningdek, Hamza nomidagi Davlat mukofoti (1981), «Shuhrat» medali (1994) va «El-yurt hurmati» ordeni (1998) bilan taqdirlanganman.$$, $$["mukofot", "unvon", "orden", "medal", "shuhrat", "hurmat"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Pirimqul Qodirov$$, TRUE,
       $$Pirimqul Qodirov qanday mukofotlar olgan?$$, $$1978-yilda O'zbekistonda xizmat ko'rsatgan madaniyat xodimi, 1988-yilda O'zbekiston xalq yozuvchisi unvonlariga sazovor bo'lgan. Hamza nomidagi Davlat mukofoti (1981), «Shuhrat» medali (1994) va «El-yurt hurmati» ordeni (1998) bilan taqdirlangan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 2010-yilda vafot etganman.$$, $$["vafot", "2010", "qazo", "umr", "olam"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Pirimqul Qodirov$$, TRUE,
       $$Pirimqul Qodirov qachon vafot etgan?$$, $$Pirimqul Qodirov 2010-yilda vafot etgan. Vafotining aniq kuni va joyi manba maqolasida ko'rsatilmagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Pirimqul Qodirovning «Yulduzli tunlar» romani kimning hayotiga bag'ishlangan?$$, $$["Amir Temur", "Zahiriddin Muhammad Bobur", "Alisher Navoiy", "Mirzo Ulug'bek"]$$::jsonb, 1, $$«Yulduzli tunlar» (1979) romani buyuk shoir va davlat arbobi Zahiriddin Muhammad Bobur hayotiga bag'ishlangan. Uning davomi — «Avlodlar dovoni» (1989) romanidir.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Pirimqul Qodirov qaysi yili O'zbekiston xalq yozuvchisi unvoniga sazovor bo'lgan?$$, $$["1978", "1981", "1988", "1994"]$$::jsonb, 2, $$Pirimqul Qodirov 1988-yilda O'zbekiston xalq yozuvchisi unvonini olgan. 1981-yilda esa Hamza nomidagi Davlat mukofoti bilan taqdirlangan.$$
  FROM heroes h WHERE h.slug = 'pirimqul-qodirov';


-- ═══════════ Qaffol Shoshiy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('qaffol-shoshiy', $$Qaffol Shoshiy$$, $$Buyuk faqih va muhaddis$$, 903, 976,
 (SELECT id FROM eras WHERE code = 'arab'),
 $$Qaffol Shoshiy (to'liq ismi Abu Bakr Muhammad ibn Ali Ismoil Qaffol ash-Shoshiy al-Kabir, 903–976) — Shosh (Toshkent)da tug'ilgan mashhur faqih, muhaddis, tilshunos va shoir, shofi'iylik mazhabining yetakchi olimlaridan biri. U «Hazrati Imom» (qisqacha Hastimom) nomi bilan mashhur bo'lgan, Toshkentdagi Hazrati Imom majmuasi uning maqbarasi asosida vujudga kelgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Qaffol Shoshiyman — Shosh, ya'ni Toshkentda tug'ilgan faqih va muhaddisman, el meni «Hazrati Imom» deb ham ataydi. Mendan tug'ilishim, «Qaffol» laqabim, ustozlarim, safarlarim va asarlarim haqida so'ra!$$,
 $$🗝️$$, $$["qaffol", "shoshiy", "hastimom", "imom", "faqih", "qulf"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 903-yilda Shosh — hozirgi Toshkent shahrida, hunarmand oilasida tug'ilganman. Shuning uchun meni Shoshiy, ya'ni shoshlik deb atashadi.$$, $$["tugil", "tavallud", "shosh", "toshkent", "hunarmand"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Qaffol Shoshiy$$, TRUE,
       $$Qaffol Shoshiy qachon va qayerda tug'ilgan?$$, $$Qaffol Shoshiy 903-yilda Shosh (hozirgi Toshkent) shahrida hunarmand oilasida tug'ilgan. «Shoshiy» nisbasi uning shu shaharga mansubligini bildiradi. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Qaffol» laqabim$$, $$Og'irligi bor-yo'g'i 0,5 gramm keladigan jajji qulf-kalit yasaganman. Shu mahoratim uchun menga «Qaffol», ya'ni «Qulfchi» degan laqab berilgan.$$, $$["qulf", "kalit", "laqab", "qaffol", "qulfchi", "hunar"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Qaffol Shoshiy$$, TRUE,
       $$Nega Qaffol Shoshiyga «Qaffol» laqabi berilgan?$$, $$Manbalarga ko'ra, u og'irligi 0,5 gramm keladigan jajji qulf-kalit yasagan. Shu sababli unga «Qaffol», ya'ni «Qulfchi» laqabi berilgan. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mening ustozlarim$$, $$Taniqli muhaddis va ilohiyotchi Haysam ibn Kulayb qo'lida ta'lim olganman. Keyin mashhur imom Abul Abbos Ahmad ibn Umar ibn as-Surayjiyning shogirdi bo'lganman.$$, $$["ustoz", "shogird", "haysam", "suray", "talim"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Qaffol Shoshiy$$, TRUE,
       $$Qaffol Shoshiy kimlardan ta'lim olgan?$$, $$U taniqli muhaddis va ilohiyotchi Haysam ibn Kulayb qo'lida ta'lim olgan. Shuningdek, mashhur imom Abul Abbos Ahmad ibn Umar ibn as-Surayjiy (850–918)ning shogirdi bo'lgan. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilm safarlarim$$, $$Ilm izlab Samarqand, Buxoro va Termiz shaharlarida bo'lib, o'zimdan avval o'tgan allomalar merosi bilan tanishganman. So'ng arab Sharqi mamlakatlari bo'ylab uzoq safar qilib, ancha vaqt Bag'dodda yashaganman. Xalifalikda turli lavozim va vazifalarni ham ado etganman.$$, $$["safar", "bagdod", "samar", "buxor", "termiz", "xalifa"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Qaffol Shoshiy$$, TRUE,
       $$Qaffol Shoshiy qaysi shaharlarga safar qilgan?$$, $$U Samarqand, Buxoro va Termiz shaharlarida bo'lib, allomalar merosini o'rgangan, so'ng arab Sharqi mamlakatlari bo'ylab uzoq safarda bo'lgan va ancha vaqt Bag'dodda yashagan. Xalifalikda turli lavozim va vazifalarni ado etgan. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilmim va martabam$$, $$Men muhaddis, faqih, tilshunos va shoirman, shofi'iylik mazhabining yetakchi olimlaridan biri sanalganman. Chuqur bilimim va ulkan ishlarim evaziga meni «Imom al-Kabir», ya'ni «Ulug' imom» deb ta'riflashgan, el ichida esa «Hazrati Imom» — qisqacha «Hastimom» nomi bilan mashhurman. Movarounnahrda, xususan Shoshda shofi'iylik mazhabini targ'ib etib, diniy bilimlarning tarqalishiga hissa qo'shganman.$$, $$["imom", "faqih", "muhaddis", "mazhab", "shofi", "hastimom"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Qaffol Shoshiy$$, TRUE,
       $$Qaffol Shoshiy qaysi ilmlarda mashhur bo'lgan va nega u «Hazrati Imom» deb ataladi?$$, $$Qaffol Shoshiy shofi'iylik mazhabining yetakchi olimlaridan biri — muhaddis, faqih, tilshunos va shoir bo'lgan. Chuqur bilimi va ulkan ishlari evaziga «Imom al-Kabir» («Ulug' imom») deb ta'riflangan, xalq orasida «Hazrati Imom» (Hastimom) nomi bilan mashhur. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim va she'rlarim$$, $$Qonunshunoslik va mantiq kabi sohalarga oid «Qozining fe'l-atvori», «Odob al-bahs» («Bahs odobi») va «Husni jadal» («Dialektika go'zalligi») kabi asarlar yozganman. Bu kitoblarim islom olamida mashhur bo'lgan. She'rlar ham bitganman.$$, $$["asar", "kitob", "yoz", "sher", "odob", "jadal"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Qaffol Shoshiy$$, TRUE,
       $$Qaffol Shoshiy qanday asarlar yozgan?$$, $$U qonunshunoslik va mantiqqa oid «Qozining fe'l-atvori», «Odob al-bahs» («Bahs odobi»), «Husni jadal» («Dialektika go'zalligi») kabi asarlar yozgan va ular islom olamida mashhur bo'lgan. She'rlaridan ayrim parchalar olim Tojiddin as-Subkiyning «Tabaqot ash-Shofi'iya» kitobi orqali saqlanib qolgan. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'g'lim Qosim$$, $$O'g'lim Abu Ali Hasan al-Qosim ham men kabi fiqh ilmini egallab, faqih bo'lib yetishgan.$$, $$["ogli", "ogil", "farzand", "qosim", "avlod"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Qaffol Shoshiy$$, TRUE,
       $$Qaffol Shoshiyning o'g'li kim bo'lgan?$$, $$Qaffol Shoshiyning o'g'li Qosim Shoshiy (10-asr) ham faqih bo'lgan, undan Xuroson va Iroq faqihlari ta'lim olishgan. Uning «at-Taqrib fil-furu'» asari shofi'iy mazhabidagi mo''tabar kitoblardan biri sifatida e'tirof etilgan. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 976-yilda ona shahrim Toshkentda vafot etganman. Keyinchalik qabrim ustiga maqbara qurilgan va uning atrofida Hazrati Imom (Hastimom) majmuasi vujudga kelgan.$$, $$["vafot", "qabr", "maqbara", "dafn", "majmua"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Qaffol Shoshiy$$, TRUE,
       $$Qaffol Shoshiy qachon vafot etgan va qayerga dafn etilgan?$$, $$Qaffol Shoshiy 976-yilda Toshkentda vafot etgan. Uning qabri ustiga 1541–42-yillarda me'mor G'ulom Husayn tomonidan maqbara qurilgan, keyinchalik shu maqbara asosida Toshkentdagi mashhur Hazrati Imom majmuasi vujudga kelgan. Manba: O'zbekiston Milliy Ensiklopediyasi (ziyouz.com).$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Qaffol Shoshiy qaysi hunari tufayli «Qaffol», ya'ni «Qulfchi» laqabini olgan?$$, $$["Zargarlik — oltin taqinchoqlar yasagani", "Jajji qulf-kalit yasagani", "Kulolchilik — sopol idishlar yasagani", "To'quvchilik — gilam to'qigani"]$$::jsonb, 1, $$Manbalarga ko'ra, u og'irligi atigi 0,5 gramm keladigan jajji qulf-kalit yasagan va shu mahorati uchun «Qaffol» — «Qulfchi» laqabini olgan.$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Qaffol Shoshiy vafotidan keyin uning qabri atrofida Toshkentda qaysi mashhur majmua vujudga kelgan?$$, $$["Registon maydoni", "Shohizinda majmuasi", "Hazrati Imom (Hastimom) majmuasi", "Ichan qal'a"]$$::jsonb, 2, $$Qaffol Shoshiy 976-yilda Toshkentda vafot etgan, qabri ustiga maqbara qurilgan va keyinchalik shu maqbara asosida Hazrati Imom (Hastimom) majmuasi vujudga kelgan.$$
  FROM heroes h WHERE h.slug = 'qaffol-shoshiy';


-- ═══════════ Qozizoda Rumiy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('qozizoda-rumiy', $$Qozizoda Rumiy$$, $$Ulug'bekning ustozi, astronom$$, 1337, 1436,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Qozizoda Rumiy — 1337-yilda Bursa shahrida tug'ilib, Samarqandda faoliyat yuritgan mashhur astronom va matematik, Mirzo Ulug'bekning ustozi. Zamondoshlari uni «o'z davrining Aflotuni» deb ataganlar.$$,
 $$Assalomu alaykum, aziz farzand! Men Qozizoda Rumiyman — Samarqand madrasasida dars bergan astronom va matematik, Mirzo Ulug'bekning ustoziman. Mendan yulduzlar ilmi, rasadxona va shogirdim Ulug'bek haqida so'ra!$$,
 $$🔭$$, $$["qoziz", "rumiy", "ulugb", "astronom", "rasadxona", "samarq"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1337-yilda Turkiyaning Bursa shahrida tavallud topganman. Keyinchalik ilm izlab ona yurtimdan uzoq o'lkalarga yo'l olganman.$$, $$["tugil", "tavallud", "bursa", "turkiya", "1337", "qayer"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Qozizoda Rumiy (Mirzo Ulug'bekning astronomiya maktabi)$$, TRUE,
       $$Qozizoda Rumiy qachon va qayerda tug'ilgan?$$, $$Ziyouz.com dagi Lyusen Keren maqolasida Qozizoda Rumiy 1337-yilda Turkiyaning Bursa shahrida tavallud topgani aytiladi. Keyinchalik u ilm izlab Movarounnahr va Xuroson tomon yo'l olgan. Manba: Ziyouz.com, «Mirzo Ulug'bekning astronomiya maktabi» (Lyusen Keren) maqolasi.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk ustozim$$, $$Dastlabki saboqlarni taniqli qomusiy olim va faylasuf Shamsiddin al-Fanoriydan olganman. U menga Turkiyani xufiyona tark etishda yordam bergan, shundan so'ng Movarounnahr va Xurosonning mashhur madrasalarida astronomiya va riyoziyot ilmini chuqur o'rganganman.$$, $$["fanor", "ustoz", "saboq", "movaro", "xuroson"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Qozizoda Rumiy (Mirzo Ulug'bekning astronomiya maktabi)$$, TRUE,
       $$Qozizoda Rumiyning birinchi ustozi kim bo'lgan?$$, $$Qozizoda Rumiy ilk saboqlarni qomusiy olim Shamsiddin al-Fanoriydan olgan. Al-Fanoriy unga Turkiyani xufiyona tark etib, Movarounnahr va Xurosonning mashhur madrasalarida astronomiya va riyoziyotni chuqur o'rganishga yordam bergan. Manba: Ziyouz.com, «Mirzo Ulug'bekning astronomiya maktabi» (Lyusen Keren) maqolasi.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shogirdim Ulug'bek$$, $$Samarqand madrasasida astronomiya va matematika fanlarining nufuzli olimlaridan biri bo'lganman. Mirzo Ulug'bekning astronomiyaga noyob qobiliyatini sezib, uni bu fanni chuqur o'rganishga yo'naltirganman; u mendan ko'p ilm o'rgandi va meni o'ziga ustoz deb bildi.$$, $$["ulugb", "shogird", "tasir", "qobiliyat", "astronom"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Qozizoda Rumiy (Mirzo Ulug'bekning astronomiya maktabi)$$, TRUE,
       $$Qozizoda Rumiy Ulug'bekka qanday ta'sir ko'rsatgan?$$, $$Qozizoda Rumiy Samarqand madrasasida astronomiya va matematikaning nufuzli olimlaridan biri bo'lgan. U Ulug'bekdagi noyob qobiliyatni payqab, uni astronomiyani chuqur o'rganishga yo'naltirgan; Ulug'bek undan ko'p ilm o'rgangan va uni o'ziga ustoz deb bilgan. Manba: Ziyouz.com, «Mirzo Ulug'bekning astronomiya maktabi» (Lyusen Keren) maqolasi.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Davr Aflotuni» nomi$$, $$Zamondoshlarim meni «o'z davrining Aflotuni» deb ataganlar. Bu men uchun katta sharaf edi.$$, $$["aflotun", "laqab", "davr", "zamon", "unvon"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Qozizoda Rumiy (Mirzo Ulug'bekning astronomiya maktabi)$$, TRUE,
       $$Zamondoshlari Qozizoda Rumiyni qanday nom bilan ataganlar?$$, $$Ziyouz.com dagi Mirzo Ulug'bek haqidagi qomusiy maqolada Qozizoda Rumiy «o'z davrining Aflotuni» deb ta'riflanadi va Ulug'bek uni o'ziga ustoz deb bilgani aytiladi. Bu uning ilmdagi yuksak obro'sini ko'rsatadi. Manba: Ziyouz.com, «Mirzo Ulug'bek (1394-1449)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Rasadxona rahbarligi$$, $$Ulug'bek meni G'iyosiddin Jamshid Koshiy bilan birga Samarqand rasadxonasiga yetakchi shaxs etib tayinlagan. U yerda yulduzlarni o'rganish ishlariga rahbarlik qilganman.$$, $$["rasadxona", "yetakchi", "koshiy", "rahbar", "jamshid"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Qozizoda Rumiy (Mirzo Ulug'bekning astronomiya maktabi)$$, TRUE,
       $$Ulug'bek rasadxonasiga kimlar yetakchi etib tayinlangan?$$, $$Professor M.Mamadazimov maqolasida Solih Zakiyning «Osor al-Boqiya» asaridan keltirilishicha, Ulug'bek 1420-yili qurilgan rasadxonaga G'iyosiddin Jamshid (Koshiy) va Qozizoda Rumiyni yetakchi shaxslar etib tayinlagan. Ular Samarqand ilmiy maktabining ustunlari edi. Manba: Ziyouz.com, «Mirzo Ulug'bek va uning akademiyasi» (M.Mamadazimov, «Ma'rifat» gazetasi) maqolasi.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Madrasadagi darslarim$$, $$Samarqand madrasasida talabalar ta'limida muhim rol o'ynaganman. 1420-yilda madrasa qurilishi tugagach, dastlabki saboqni Ulug'bek ishtirokida men boshlab berganman.$$, $$["madrasa", "dars", "talaba", "1420"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Qozizoda Rumiy (Mirzo Ulug'bekning astronomiya maktabi)$$, TRUE,
       $$Qozizoda Rumiy madrasada qanday rol o'ynagan?$$, $$Lyusen Keren maqolasiga ko'ra, 1420-yilda Registon maydonidagi madrasaning qurilish ishlari tugatilib, Qozizoda Rumiy dastlabki saboqni Ulug'bek ishtirokida boshlab bergan. Yangi madrasa o'z davrining eng mashhuriga aylangan. Manba: Ziyouz.com, «Mirzo Ulug'bekning astronomiya maktabi» (Lyusen Keren) maqolasi.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Zij» ustidagi ishim$$, $$Samarqandda yulduzlar jadvali — «Zij»ni tuzish ishlarida faol qatnashganman. G'iyosiddin Jamshid Koshiy vafot etgach, bu buyuk asarni rasmiylashtirish ishini men davom ettirganman.$$, $$["asar", "kitob", "yoz", "zij", "jadval", "yulduz"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Qozizoda Rumiy (Mirzo Ulug'bekning astronomiya maktabi)$$, TRUE,
       $$Qozizoda Rumiy qaysi asar ustida ishlagan?$$, $$«Ziji Ko'ragoniy» so'zboshisida yoritg'ichlarni kuzatish Qozizoda Rumiy va G'iyosiddin Jamshid hamkorligida bajarilgani aytiladi; ish boshida G'iyosiddin, keyinroq Qozizoda Rumiy vafot etgan, so'ng asarni Ali Qushchi yakunlagan. Manba: Ziyouz.com, «Mirzo Ulug'bek va uning akademiyasi» (M.Mamadazimov) va «Mirzo Ulug'bekning astronomiya maktabi» (Lyusen Keren) maqolalari.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1436-yilda, yulduzlar jadvalini tuzish ishlari qizg'in davom etayotgan paytda vafot etganman. Bu shogirdlarim va hamkasblarim uchun katta yo'qotish bo'ldi.$$, $$["vafot", "1436", "umr", "yoqot", "qachon"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Qozizoda Rumiy (Mirzo Ulug'bekning astronomiya maktabi)$$, TRUE,
       $$Qozizoda Rumiy qachon vafot etgan?$$, $$Manbaga ko'ra, 1436-yili Qozizoda Rumiyning o'limi olimlar uchun katta yo'qotish bo'lgan — bu paytda yulduzlar jadvalini tuzish ishlari davom etayotgan edi. Keyinchalik Ulug'bek «Zij»ning kirish qismida ustozlariga chuqur hurmat izhor qilgan. Manba: Ziyouz.com, «Mirzo Ulug'bekning astronomiya maktabi» (Lyusen Keren) maqolasi.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Qozizoda Rumiy kimning ustozi bo'lgan?$$, $$["Alisher Navoiy", "Mirzo Ulug'bek", "Zahiriddin Muhammad Bobur", "Amir Temur"]$$::jsonb, 1, $$Qozizoda Rumiy Samarqandda Mirzo Ulug'bekka astronomiya va matematikadan saboq bergan; Ulug'bek undan ko'p ilm o'rganib, uni o'ziga ustoz deb bilgan.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Zamondoshlari Qozizoda Rumiyni qanday nom bilan ataganlar?$$, $$["«O'z davrining Aflotuni»", "«Sharq yulduzi»", "«Ikkinchi Ptolemey»", "«Shoirlar sultoni»"]$$::jsonb, 0, $$Chuqur ilmi va yuksak obro'si uchun zamondoshlari Qozizoda Rumiyni «o'z davrining Aflotuni» deb ataganlar.$$
  FROM heroes h WHERE h.slug = 'qozizoda-rumiy';


-- ═══════════ Sadriddin Ayniy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('sadriddin-ayniy', $$Sadriddin Ayniy$$, $$Yozuvchi va olim$$, 1878, 1954,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Sadriddin Ayniy — o'zbek va tojik tillarida ijod qilgan yozuvchi va olim, Tojikiston Fanlar akademiyasining birinchi prezidenti. U «Qullar», «Doxunda» romanlari va to'rt qismli «Esdaliklar» asari bilan mashhur.$$,
 $$Assalomu alaykum, aziz farzand! Men Sadriddin Ayniyman — Buxoro viloyatining G'ijduvon tumanida tug'ilib, o'zbek va tojik tillarida ijod qilgan yozuvchi va olimman. Mendan madrasadagi o'qishim, «Qullar» romanim va «Esdaliklar» asarim haqida so'ra!$$,
 $$✍️$$, $$["ayniy", "sadriddin", "buxoro", "yozuvchi", "qulla", "esdali"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1878-yilda Buxoro viloyatining G'ijduvon tumanida tug'ilganman. Asl ismim Sadriddin Saidmurodzoda bo'lib, «Ayniy» — mening adabiy taxallusimdir.$$, $$["tugil", "tavallud", "1878", "gijduv", "qayer", "taxallus"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Sadriddin Ayniy$$, TRUE,
       $$Sadriddin Ayniy qachon va qayerda tug'ilgan?$$, $$Sadriddin Ayniy 1878-yilda Buxoro viloyatining G'ijduvon tumanida tug'ilgan. Uning asl ismi Sadriddin Saidmurodzoda bo'lib, «Ayniy» adabiy taxallusidir. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Madrasada o'qishim$$, $$Avval 1884-1887-yillarda eski maktabda o'qiganman. So'ng Buxoroning madrasalarida — Mir Arab (1890-91), Olimxon (1892-93), Badalbek (1894-96), Hoji Zohid (1896-99) va Ko'kaldosh (1899-1900) madrasalarida tahsil olganman.$$, $$["madrasa", "maktab", "oqi", "talim", "arab", "tahsil"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Sadriddin Ayniy$$, TRUE,
       $$Sadriddin Ayniy qayerlarda o'qigan?$$, $$Ayniy 1884-1887-yillarda eski maktabda o'qigan. So'ng Buxoroning Mir Arab, Olimxon, Badalbek, Hoji Zohid va Ko'kaldosh madrasalarida tahsil olgan. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yangi usul maktablari$$, $$Men Buxoroda yangi usuldagi maktablar ochganman va ular uchun o'quv qo'llanmalar yaratganman. 1909-yilda «Yoshlar tarbiyasi» darsligini tuzganman hamda «Yosh buxoroliklar» harakatida faol qatnashganman. Dunyoqarashimga Ahmad Donish va jadid ma'rifatparvarlarining asarlari sezilarli ta'sir ko'rsatgan.$$, $$["jadid", "usul", "tarbiya", "darslik", "yosh", "marifat"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Sadriddin Ayniy$$, TRUE,
       $$Ayniy ta'lim sohasida qanday ishlar qilgan?$$, $$Ayniy Buxoroda yangi usuldagi maktablar ochib, ular uchun o'quv qo'llanmalar yaratgan va 1909-yilda «Yoshlar tarbiyasi» darsligini tuzgan. U «Yosh buxoroliklar» harakatida faol qatnashgan, dunyoqarashiga Ahmad Donish va jadid ma'rifatparvarlari ta'sir ko'rsatgan. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ikki tilda ijodim$$, $$Men ikki tilda — o'zbek va tojik tillarida ijod qilganman. Tojik tilida «Doxunda» (1927-29) romanini, o'zbek tilida esa «Qullar» (1934) romanini yozganman.$$, $$["til", "tojik", "ozbek", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Sadriddin Ayniy$$, TRUE,
       $$Ayniy qaysi tillarda ijod qilgan?$$, $$Ayniy o'zbek va tojik tillarida ijod qilgan: «Doxunda» romani tojik tilida (1927-29), «Qullar» romani o'zbek tilida (1934) yozilgan. Uning «Doxunda», «Qullar», «Sudxo'rning o'limi» va «Esdaliklar» asarlari xorijiy tillarga tarjima qilingan. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Qullar» romanim$$, $$1934-yilda o'zbek tilida «Qullar» romanimni yozganman. Bundan tashqari «Buxoro jallodlari» (1922) qissasini, «Eski maktab» (1935) qissasini va hajviy «Sudxo'rning o'limi» (1939) qissasini ham yaratganman.$$, $$["qulla", "roman", "asar", "kitob", "yoz", "sudxor"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Sadriddin Ayniy$$, TRUE,
       $$Ayniy «Qullar» romanini qachon yozgan?$$, $$«Qullar» romani 1934-yilda o'zbek tilida yozilgan. Ayniy qalamiga «Buxoro jallodlari» (1922), «Eski maktab» (1935) va hajviy «Sudxo'rning o'limi» (1939) qissalari ham mansub. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Esdaliklar» asarim$$, $$1949-1954-yillarda to'rt qismdan iborat «Esdaliklar» asarimni yozganman. Unda Buxoroning o'tmish hayotini aks ettirganman.$$, $$["esdali", "xotira", "asar", "kitob", "yoz", "buxoro"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Sadriddin Ayniy$$, TRUE,
       $$«Esdaliklar» asari nima haqida?$$, $$«Esdaliklar» (1949-54) to'rt qismdan iborat bo'lib, unda Buxoroning o'tmish hayoti aks etgan. Bu asar xorijiy tillarga ham tarjima qilingan. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilmiy faoliyatim$$, $$Men adabiyot tarixiga oid ilmiy asarlar yozganman: Firdavsiy, Rudakiy, Sa'diy va Alisher Navoiy haqida tadqiqotlar yaratganman. Tojik va o'zbek adabiyotlarining ming yillik tarixidagi 200 dan ortiq shoir, tarixchi va olim haqida ma'lumot berganman. 1948-yilda filologiya fanlari doktori, 1950-yilda professor bo'lganman.$$, $$["olim", "akademi", "fan", "ilm", "navoiy", "firdavs"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Sadriddin Ayniy$$, TRUE,
       $$Ayniy qanday ilmiy ishlar qilgan?$$, $$Ayniy Firdavsiy, Rudakiy, Sa'diy va Alisher Navoiy haqida tadqiqotlar yaratgan, tojik va o'zbek adabiyotlarining ming yillik tarixidagi 200 dan ortiq ijodkor haqida ma'lumot bergan. U filologiya fanlari doktori (1948), professor (1950) va 1943-yildan O'zbekiston Fanlar akademiyasining faxriy a'zosi bo'lgan. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Umrimning so'nggi yillarida, 1951-yildan boshlab, Tojikiston Fanlar akademiyasining birinchi prezidenti bo'lib ishlaganman. Men 1954-yilda vafot etganman.$$, $$["vafot", "1954", "oxir", "umr", "muzey", "prezident"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Sadriddin Ayniy$$, TRUE,
       $$Sadriddin Ayniy qachon vafot etgan?$$, $$Sadriddin Ayniy 1954-yilda vafot etgan. U 1951-1954-yillarda Tojikiston Fanlar akademiyasining birinchi prezidenti bo'lgan, 1967-yilda esa Samarqandda uning yodgorlik uy-muzeyi ochilgan. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Sadriddin Ayniy qayerda tug'ilgan?$$, $$["Buxoro viloyati, G'ijduvon tumanida", "Samarqand shahrida", "Toshkent shahrida", "Farg'ona vodiysida"]$$::jsonb, 0, $$Sadriddin Ayniy 1878-yilda Buxoro viloyatining G'ijduvon tumanida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ayniyning 1934-yilda o'zbek tilida yozilgan romani qaysi?$$, $$["«Doxunda»", "«Qullar»", "«Esdaliklar»", "«Eski maktab»"]$$::jsonb, 1, $$«Qullar» romani 1934-yilda o'zbek tilida yozilgan; «Doxunda» esa Ayniyning tojik tilidagi romanidir (1927-29).$$
  FROM heroes h WHERE h.slug = 'sadriddin-ayniy';


-- ═══════════ Sakkokiy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('sakkokiy', $$Sakkokiy$$, $$Temuriylar davri qasidanavis shoiri$$, NULL, NULL,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Sakkokiy — XV asrda Samarqandda ijod qilgan, o'zbek adabiyotida qasida janriga asos solgan shoirlardan biri. U Mirzo Ulug'bekka bag'ishlangan qasidalari va g'azallari bilan mashhur.$$,
 $$Assalomu alaykum, aziz farzand! Men Sakkokiyman — Samarqandda Mirzo Ulug'bek zamonida ijod qilgan qasidanavis shoirman. Mendan qasidalarim, g'azallarim, devonim va Ulug'bek zamoni haqida so'ra!$$,
 $$📜$$, $$["sakko", "sakkokiy", "qasida", "shoir", "ulugbek", "samarqand"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Tug'ilgan yilim ham, asl ismim ham tarixda saqlanib qolmagan — el meni Sakkokiy nomi bilan biladi. Men XV asrda Samarqand shahrida yashab ijod qilganman.$$, $$["tugil", "tavallud", "ism", "nomalum"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sakkokiy$$, TRUE,
       $$Sakkokiy qachon tug'ilgan va uning asl ismi haqida nima ma'lum?$$, $$Sakkokiyning ismi, tug'ilgan va vafot etgan yillari fanga noma'lum. U XV asrda Samarqandda yashab ijod qilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yashagan davrim$$, $$Men Samarqand shahrida Xalil Sulton (1405–1409) va Mirzo Ulug'bek hukmronligi davrida yashab ijod qilganman. Butun ijodim ana shu temuriylar zamonida kechgan.$$, $$["samarqand", "xalil", "sulton", "temuriy", "davr", "yasha"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sakkokiy$$, TRUE,
       $$Sakkokiy qaysi davrda va qayerda ijod qilgan?$$, $$Sakkokiy Samarqandda Xalil Sulton (1405–09) va Ulug'bek hukmronligi davrida yashab ijod etgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qasida janriga asos$$, $$Men o'zbek adabiyotida qasida janriga asos solgan shoirlardan biriman. Qasidalarimni Xoja Muhammad Porso, Xalil Sulton, Ulug'bek va Arslon Xoja Tarxonlarga bag'ishlaganman.$$, $$["qasida", "asar", "yoz", "kitob", "janr", "porso"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sakkokiy$$, TRUE,
       $$Sakkokiy qaysi janrga asos solgan va qasidalarini kimlarga bag'ishlagan?$$, $$Sakkokiy o'zbek adabiyotida qasida janriga asos solgan shoirlardan biri. U qasidalarini Xoja Muhammad Porso, Xalil Sulton, Ulug'bek va Arslon Xoja Tarxonga bag'ishlab yozgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ulug'bekka qasidam$$, $$Qasidalarimdan birida Mirzo Ulug'bekni xalqning mehribon hukmdori, ma'rifatparvar va buyuk olim sifatida ulug'laganman. Turkiy tilda ijod qilishim bilan faxrlanib shunday yozganman: «Falak yillar kerak sayr etsayu keltirsa ilkiga, Meningdek shoiri turku seningdek shohi dononi».$$, $$["ulugbek", "qasida", "madh", "asar", "yoz", "turkiy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sakkokiy$$, TRUE,
       $$Sakkokiy Ulug'bekni qasidasida qanday ta'riflagan?$$, $$Sakkokiy qasidalaridan birida Ulug'bekni xalqning mehribon hukmdori, ma'rifatparvar va buyuk olim sifatida ulug'laydi. Mashhur baytida turkiy tilda ijod qilishidan faxrlanadi: «Falak yillar kerak sayr etsayu keltirsa ilkiga, / Meningdek shoiri turku seningdek shohi dononi». Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$G'azallarim mavzusi$$, $$G'azallarimda insonning muhabbatini, orzu-tilaklarini, dard-alamlarini va tabiat go'zalliklarini kuylaganman. She'rlarimda jaholat va nodonlikka qarshi adolatparvarlik g'oyalarini ilgari surganman.$$, $$["gazal", "muhabbat", "tabiat", "asar", "yoz", "kitob"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sakkokiy$$, TRUE,
       $$Sakkokiy g'azallarida qanday mavzularni kuylagan?$$, $$Sakkokiy asarlarida inson muhabbati, orzu-tilaklari, dard-alamlari va tabiat go'zalliklarini tasvirlagan; lirikasida jaholat va nodonlikka qarshi adolatparvarlik g'oyalari ilgari surilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Devonim$$, $$Umrim davomida yozgan g'azal va qasidalarim to'planib, devon qilingan.$$, $$["devon", "asar", "kitob", "yoz", "toplam"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sakkokiy$$, TRUE,
       $$Sakkokiy devonining taqdiri qanday bo'lgan?$$, $$Sakkokiyning g'azal va qasidalari devon qilib to'plangan, ammo devonning to'liq nusxasi bizgacha yetib kelmagan. Devon nusxalari Londonda, Britaniya muzeyida va O'zbekiston Fanlar akademiyasi Sharqshunoslik institutida (inv. 7685) saqlanadi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Adabiyotga ta'sirim$$, $$Men o'zbek dunyoviy lirikasini ham mazmun, ham shakl jihatdan boyitganman. Lutfiy, Gadoiy va Atoiy kabi shoirlar bilan bir davrda ijod qilganman.$$, $$["lutfiy", "atoiy", "gadoiy", "tasir", "lirika", "navoiy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sakkokiy$$, TRUE,
       $$Sakkokiy o'zbek adabiyotiga qanday ta'sir ko'rsatgan?$$, $$Sakkokiy o'zbek dunyoviy lirikasini ham mazmun, ham shakl jihatdan boyitgan; uning ijodi, Lutfiy, Gadoiy, Atoiy singari, Alisher Navoiy ijodiga ham katta ta'sir ko'rsatgan. Navoiy uni turkiy tilning yetuk so'z ustalari qatorida tilga olgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Vafot etgan yilim ham, tug'ilgan yilim kabi, tarixda aniq saqlanmagan. Umrim XV asrda, Samarqand shahrida o'tgan.$$, $$["vafot", "umr", "oxir", "olam"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sakkokiy$$, TRUE,
       $$Sakkokiy qachon vafot etgan?$$, $$Sakkokiyning vafot etgan yili fanga ma'lum emas; u XV asrda Samarqandda yashab ijod qilgan. Uning nomi o'zbek mumtoz adabiyoti tarixida qasida janri asoschilaridan biri sifatida saqlanib qolgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Sakkokiy o'zbek adabiyotida qaysi janrga asos solgan shoirlardan biri hisoblanadi?$$, $$["Doston", "Qasida", "Roman", "Masal"]$$::jsonb, 1, $$Sakkokiy o'zbek adabiyotida qasida janriga asos solgan shoirlardan biri bo'lib, qasidalarini Xoja Muhammad Porso, Xalil Sulton, Ulug'bek va Arslon Xoja Tarxonga bag'ishlagan.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Sakkokiy qasidasida qaysi temuriy hukmdorni ma'rifatparvar va buyuk olim sifatida ulug'lagan?$$, $$["Amir Temur", "Bobur Mirzo", "Mirzo Ulug'bek", "Husayn Boyqaro"]$$::jsonb, 2, $$Sakkokiy Samarqandda Ulug'bek davrida ijod qilib, qasidalaridan birida uni xalqning mehribon hukmdori, ma'rifatparvar va buyuk olim sifatida ulug'lagan.$$
  FROM heroes h WHERE h.slug = 'sakkokiy';


-- ═══════════ Sayfi Saroyi ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('sayfi-saroyi', $$Sayfi Saroyi$$, $$Shoir va tarjimon$$, 1321, 1398,
 NULL,
 $$Sayfi Saroyi (1321–1398) — o'zbek mumtoz adabiyotining atoqli shoiri va tarjimoni. U 1391-yilda Sa'diyning «Guliston» asarini turkiy tilga o'girib, «Gulistoni bit-turkiy» nomli falsafiy-axloqiy asar yaratgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Sayfi Saroyiman — Saroy shahrida va Misrda ijod qilgan shoir va tarjimonman. Mendan «Gulistoni bit-turkiy» asarim, dostonlarim va darbadar hayotim haqida so'ra!$$,
 $$📜$$, $$["sayfi", "saroy", "guliston", "shoir", "tarjim", "misr"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1321-yilda Xorazm viloyatining Sariqamish qishlog'ida tug'ilganman. Bolaligim mo'g'ullar istilosi davriga to'g'ri kelgan, shu bois vatanimni tark etishga majbur bo'lganman.$$, $$["tugil", "tavallud", "xorazm", "sariqamish", "sariq", "1321"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sayfi Saroyi$$, TRUE,
       $$Sayfi Saroyi qachon va qayerda tug'ilgan?$$, $$Sayfi Saroyi 1321-yilda Xorazm viloyatining Sariqamish qishlog'ida tug'ilgan. U Markaziy Osiyoda mo'g'ullar istilosi davrida yashab, vatanini tark etishga majbur bo'lgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Darbadar hayotim$$, $$Umrim darbadarlikda kechgan: vatanim Xorazmni tark etib, Oltin O'rdaning Saroy shahrida, so'ngra Misr va Turkiyada yashaganman.$$, $$["saroy", "oltin", "misr", "turkiya", "turki", "safar", "shahar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sayfi Saroyi$$, TRUE,
       $$Sayfi Saroyi qaysi shaharlarda va mamlakatlarda yashagan?$$, $$Sayfi Saroyi vatanini tark etib, Oltin O'rdaning Saroy shahrida, keyin Misr va Turkiyada yashagan. Uning umri darbadarlikda o'tgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Gulistoni bit-turkiy» asarim$$, $$Men 1391-yilda Sa'diyning mashhur «Guliston» asarini turkiy tilga o'girib, «Gulistoni bit-turkiy» nomli yarim original falsafiy-axloqiy asar yaratganman. Bu kitobim sakkiz bobdan iborat bo'lib, unga davr ruhini aks ettiruvchi yangi hikoyatlar ham qo'shganman.$$, $$["guliston", "sadiy", "tarjim", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sayfi Saroyi$$, TRUE,
       $$Sayfi Saroyi «Gulistoni bit-turkiy» asarini qanday yaratgan?$$, $$Sayfi Saroyi 1391-yilda Sa'diyning «Guliston» asarini o'zbek (turkiy) tiliga tarjima qilib, «Gulistoni bit-turkiy» nomli yarim original falsafiy-axloqiy asar yaratgan. Sakkiz bobdan iborat bu asarga davr ruhini aks ettiruvchi yangi hikoyatlar qo'shilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarimdagi g'oyalar$$, $$«Gulistoni bit-turkiy» kitobimdagi ibratli hikoyatlarda adolat, halollik, sadoqat va mehr-shafqat kabi fazilatlarni ulug'laganman. She'rlarimda esa vatanparvarlik, insonparvarlik, do'stlik va muhabbatni kuylaganman.$$, $$["adolat", "halol", "hikoyat", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sayfi Saroyi$$, TRUE,
       $$Sayfi Saroyi asarlarida qanday g'oyalarni ilgari surgan?$$, $$«Gulistoni bit-turkiy»dagi ibratli hikoyatlar adolat, halollik, sadoqat va mehr-shafqat kabi fazilatlarni targ'ib qiladi. Shoir she'riyatida vatanparvarlik, insonparvarlik, inson qadr-qimmati, do'stlik va muhabbat mavzulari ham o'rin olgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Suhayl va Guldursun»$$, $$Men «Suhayl va Guldursun» nomli doston yozganman hamda «Sindbodnoma» asarini turkiy tilga tarjima qilganman.$$, $$["suhayl", "guldursun", "guldu", "sindb", "doston", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sayfi Saroyi$$, TRUE,
       $$Sayfi Saroyi yana qanday asarlar yaratgan?$$, $$Sayfi Saroyi «Suhayl va Guldursun» dostonini yozgan va «Sindbodnoma» asarini o'zbek tiliga tarjima qilgan, ammo bu tarjima saqlanmagan. «Suhayl va Guldursun» dostoni qo'lyozmasi O'zbekiston Fanlar akademiyasi Sharqshunoslik institutida saqlanadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riyatim$$, $$Men lirik shoir, qasidanavis, epik dostonchi va tarjimonman. G'azal, qasida, qit'a va ruboiy janrlarida o'ndan ortiq she'rlar bitganman.$$, $$["gazal", "qasida", "sher", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sayfi Saroyi$$, TRUE,
       $$Sayfi Saroyi qaysi janrlarda ijod qilgan?$$, $$Sayfi Saroyi lirik shoir, qasidanavis, epik dostonchi va tarjimon sifatida tanilgan. Uning 10 dan ortiq g'azal, qasida, qit'a va ruboiylari ma'lum. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Bilimlarim va tillar$$, $$Men fors va arab tillarini, adabiyot va tarixni hamda xalq she'riy an'analarini puxta egallaganman. Ana shu bilimlarim Sa'diy asarini turkiy tilga o'girishimda qo'l kelgan.$$, $$["fors", "arab", "til", "bilim", "tarix"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sayfi Saroyi$$, TRUE,
       $$Sayfi Saroyi qaysi tillarni va ilmlarni bilgan?$$, $$Sayfi Saroyi fors va arab tillarini, adabiyot, tarix hamda xalq she'riy an'analarini puxta egallagan. Bu bilimlari unga Sa'diyning «Guliston» asarini turkiy tilga tarjima qilishda yordam bergan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Umrimning so'nggi yillarini Misrda o'tkazganman va 1398-yilda Iskandariya shahrida vafot etganman.$$, $$["vafot", "iskandariya", "iskan", "misr", "oxir", "1398"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Sayfi Saroyi$$, TRUE,
       $$Sayfi Saroyi qachon va qayerda vafot etgan?$$, $$Sayfi Saroyi 1398-yilda Misrning Iskandariya shahrida vafot etgan. «Gulistoni bit-turkiy»ning yagona qo'lyozmasi Gollandiyadagi Leyden universitetida, fotonusxasi esa O'zbekiston Fanlar akademiyasi Sharqshunoslik institutida saqlanadi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Sayfi Saroyi 1391-yilda qaysi mashhur asarni turkiy tilga o'girib, «Gulistoni bit-turkiy» asarini yaratgan?$$, $$["Firdavsiyning «Shohnoma» asarini", "Sa'diyning «Guliston» asarini", "Nizomiyning «Xamsa» asarini", "«Ming bir kecha» ertaklarini"]$$::jsonb, 1, $$Sayfi Saroyi 1391-yilda Sa'diyning «Guliston» asarini turkiy tilga o'girib, sakkiz bobdan iborat «Gulistoni bit-turkiy» nomli yarim original falsafiy-axloqiy asar yaratgan.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Sayfi Saroyi umrining oxirida qayerda vafot etgan?$$, $$["Xorazmda", "Saroy shahrida", "Iskandariyada", "Turkiyada"]$$::jsonb, 2, $$Sayfi Saroyi umrining so'nggi yillarini Misrda o'tkazib, 1398-yilda Iskandariya shahrida vafot etgan.$$
  FROM heroes h WHERE h.slug = 'sayfi-saroyi';


-- ═══════════ Muhammad Shayboniyxon ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('shayboniyxon', $$Muhammad Shayboniyxon$$, $$Shayboniylar davlati asoschisi$$, 1451, 1510,
 (SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Muhammad Shayboniyxon (1451–1510) — shayboniylar davlatiga asos solgan hukmdor, sarkarda va shoir. U XVI asr boshida Buxoro, Samarqand va Toshkentni egallab, Movarounnahrni yagona davlat tarkibida birlashtirgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Muhammad Shayboniyxonman — shayboniylar davlatining asoschisi, sarkarda va shoirman. Mendan yurishlarim, Samarqandu Buxoroni birlashtirganim, islohotlarim va she'rlarim haqida so'ra!$$,
 $$👑$$, $$["shayboniy", "shayb", "movaro", "samarqand", "buxoro", "davlat"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1451-yilda tug'ilganman. Bobom — ko'chmanchi o'zbeklar xoni Abulxayrxon, otam — Shoh Budog' sulton, onam — Qo'zibegim. Bobom Abulxayrxon menga Shohbaxt deb laqab qo'ygan, uning qaramog'ida voyaga yetganman.$$, $$["tugil", "tavallud", "abulxayr", "shohbaxt", "bolal"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Muhammad Shayboniyxon$$, TRUE,
       $$Shayboniyxon qachon va qanday oilada tug'ilgan?$$, $$Muhammad Shayboniyxon 1451-yilda tug'ilgan. U ko'chmanchi o'zbeklar xoni Abulxayrxonning nabirasi bo'lib, otasi Shoh Budog' sulton, onasi Qo'zibegim edi; bobosi Abulxayrxon unga Shohbaxt deb laqab qo'ygan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Davlatni tiklashim$$, $$1480-yilda bobom asos solgan ko'chmanchi o'zbeklar davlatini qayta tiklaganman. 1487–1488-yillarda Sayram, O'tror va Turkiston shaharlarini qo'lga kiritganman.$$, $$["kochmanchi", "sayram", "otror", "turkiston", "tikla"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Muhammad Shayboniyxon$$, TRUE,
       $$Shayboniyxon davlatni qanday qayta tiklagan?$$, $$Shayboniyxon 1480-yilda ko'chmanchi o'zbeklar davlatini qayta tiklagan. 1487–1488-yillarda Sayram, O'tror va Turkiston shaharlarini egallab, o'z mavqeini mustahkamlagan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Movarounnahrni birlashtirishim$$, $$1499-yilda Buxoroni jangsiz egallaganman, 1500-yilda esa Samarqandni qo'lga kiritganman. 1501-yilda Ko'hak daryosi bo'yida Bobur mirzo qo'shinini yengganman, 1503-yilda Toshkentni, 1504-yilda Farg'onani ham davlatimga qo'shganman.$$, $$["movaro", "samarqand", "buxoro", "toshkent", "bobur", "birlash"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Muhammad Shayboniyxon$$, TRUE,
       $$Shayboniyxon Movarounnahrni qanday birlashtirgan?$$, $$Shayboniyxon 1499-yilda Buxoroni jangsiz, 1500-yilda Samarqandni egallagan. 1501-yilda Ko'hak daryosi bo'yida Boburni yenggan, 1503-yilda Toshkent va Shohruxiyani, 1504-yilda Farg'onani qo'shib, Movarounnahrni o'z davlati tarkibida birlashtirgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xurosonga yurishlarim$$, $$1505-yilda Xorazmning markazi Urganchni egallaganman. 1506-yilda Balxni, 1507-yilda esa Xurosonning poytaxti Hirotni ham davlatimga qo'shganman.$$, $$["xuroson", "hirot", "urganch", "xorazm", "balx", "yurish"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Muhammad Shayboniyxon$$, TRUE,
       $$Shayboniyxon Xurosonda qaysi shaharlarni egallagan?$$, $$Shayboniyxon 1505-yilda Xorazmning markazi Urganchni egallagan, 1506-yilda Balxni, 1507-yilda esa Xurosonning poytaxti Hirotni qo'lga kiritgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Islohotlarim$$, $$1507-yilda pul islohoti o'tkazib, og'irligi 5,2 gramm bo'lgan yangi kumush tangalar zarb ettirganman. Ta'limda ham tartib o'rnatganman: bolalar 6 yoshdan maktabda 2 yil, so'ng madrasada uch bosqichda o'qishgan.$$, $$["isloh", "tanga", "kumush", "madrasa", "talim", "maktab"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Muhammad Shayboniyxon$$, TRUE,
       $$Shayboniyxon qanday islohotlar o'tkazgan?$$, $$Shayboniyxon 1507-yilda og'irligi 5,2 grammlik yangi kumush tangalar zarb ettirib, pul islohoti o'tkazgan. Ta'limda bolalar 6 yoshdan maktabda 2 yil, madrasada esa har biri 8 yildan davom etadigan uch bosqichli o'qish tizimida ta'lim olgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Davlatni boshqarishim$$, $$Davlatimda suyurg'ol tizimini joriy qilganman: viloyatlarni sultonlar va beklarga bo'lib berganman, masalan, Toshkentni Suyunxojaga, Balxni Sultonshohga topshirganman. Soliqlar og'irligidan tashlab ketilgan yer-suvlarni qaytadan ishga tushirganman.$$, $$["suyurgol", "boshqar", "viloyat", "soliq", "taqsim"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Muhammad Shayboniyxon$$, TRUE,
       $$Shayboniyxon davlatni qanday boshqargan?$$, $$Shayboniyxon suyurg'ol tizimini joriy etib, viloyatlarni sultonlar va beklarga taqsimlagan: Balxni Sultonshohga, Andijonni Mahmud sultonga, Toshkentni Suyunxojaga bergan. Soliqlar og'irligidan tashlab ketilgan yer-suvlar qaytadan ishga tushirilgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'rlarim va asarlarim$$, $$Men faqat sarkarda emas, shoir ham bo'lganman: g'azallar hamda ruboiylar yozganman, turkiy, forsiy va arabiy tillarni puxta bilganman. 1508-yilda «Bahr ul-hudo» dostonimni yozib tugatganman, o'g'lim Temur sultonga atab pand-nasihat kitobini ham bitganman.$$, $$["asar", "kitob", "yoz", "sher", "gazal", "doston"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Muhammad Shayboniyxon$$, TRUE,
       $$Shayboniyxon qanday asarlar yozgan?$$, $$Shayboniyxon g'azal va ruboiylar yozgan iste'dodli shoir bo'lib, turkiy, forsiy va arabiy tillarni puxta bilgan. 1508-yilda «Bahr ul-hudo» dostonini yaratgan, o'g'li Temur sultonga atab yozgan pand-nasihat kitobining yagona qo'lyozmasi Turkiyada saqlanadi. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1510-yilda Marv yaqinida, Murg'ob daryosi bo'yidagi Tahrirobodda Eron shohi Ismoil Safaviy qo'shiniga qarshi jangda halok bo'lib, vafot etganman. Meni Samarqanddagi Baland Sufaga dafn etishgan.$$, $$["vafot", "halok", "marv", "safaviy", "qabr", "dafn"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Muhammad Shayboniyxon$$, TRUE,
       $$Shayboniyxon qachon va qanday vafot etgan?$$, $$Shayboniyxon 1510-yilda Marv yaqinida, Murg'ob daryosi qirg'og'idagi Tahrirobodda Eron shohi Ismoil Safaviy qo'shinidan mag'lubiyatga uchrab halok bo'lgan. U Samarqanddagi Baland Sufaga dafn etilgan. Manba: Ziyouz.com, «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Muhammad Shayboniyxon qaysi davlatga asos solgan?$$, $$["Temuriylar davlati", "Shayboniylar davlati", "Saljuqiylar davlati", "Qoraxoniylar davlati"]$$::jsonb, 1, $$Shayboniyxon XVI asr boshida Buxoro, Samarqand va Toshkentni egallab, Movarounnahrda shayboniylar davlatiga asos solgan.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Shayboniyxon 1508-yilda qaysi dostonni yozib tugatgan?$$, $$["«Xamsa»", "«Boburnoma»", "«Bahr ul-hudo»", "«Shohnoma»"]$$::jsonb, 2, $$Shayboniyxon shoir ham bo'lgan: u 1508-yilda «Bahr ul-hudo» dostonini yozib tugatgan, shuningdek g'azallar va ruboiylar bitgan.$$
  FROM heroes h WHERE h.slug = 'shayboniyxon';


-- ═══════════ Shohrux Mirzo ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('shohrux-mirzo', $$Shohrux Mirzo$$, $$Temuriylar saltanati hukmdori$$, 1377, 1447,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Shohrux Mirzo (1377–1447) — Sohibqiron Amir Temurning o'g'li, Temuriylar saltanati hukmdori va Mirzo Ulug'bekning otasi. U Hirot, Balx va Marv shaharlarini obod qilib, ilm-fan hamda madaniyat rivojiga katta homiylik qilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Shohrux Mirzoman — Sohibqiron Amir Temurning o'g'li, Temuriylar saltanati hukmdoriman. Mendan otam Amir Temur, Hirot shahri, ilm-fan homiyligim va o'g'lim Ulug'bek haqida so'ra!$$,
 $$👑$$, $$["shohrux", "shohr", "hirot", "temuriy", "temur", "xuros"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1377-yil 20-avgustda Samarqand shahrida tug'ilganman. Yoshligim Samarqandda o'tgan, shu yerda dunyoviy va diniy ta'lim olganman.$$, $$["tugil", "tavallud", "samarqand", "samar", "1377", "bolalik"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Shohrux Mirzo$$, TRUE,
       $$Shohrux Mirzo qachon va qayerda tug'ilgan?$$, $$Shohrux Mirzo 1377-yil 20-avgustda Samarqandda, Amir Temur oilasida tug'ilgan. Yoshlik yillari Samarqandda o'tib, u yerda dunyoviy va diniy ta'lim olgan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Otam Amir Temur$$, $$Men Sohibqiron Amir Temurning o'g'liman. Otam 1396-yilda menga Xuroson o'lkasini suyurg'ol qilib bergan va men shu yildan bu o'lkani boshqarganman.$$, $$["temur", "sohib", "ota", "suyurg", "xuros"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Shohrux Mirzo$$, TRUE,
       $$Shohrux Mirzoning otasi kim bo'lgan va unga qaysi o'lka berilgan?$$, $$Shohrux Mirzo Sohibqiron Amir Temurning o'g'li bo'lgan. 1396-yilda Amir Temur unga Xuroson o'lkasini suyurg'ol qilib bergan va u shu yildan bu hududni boshqargan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Taxtga o'tirishim$$, $$Otam vafotidan so'ng, 1405-yil mart oyida Temuriylar saltanati hukmdori sifatida Xuroson taxtiga o'tirganman. O'z nomimdan xutba o'qitib, pul zarb qildirganman.$$, $$["taxt", "hukmdor", "1405", "xutba", "saltanat"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Shohrux Mirzo$$, TRUE,
       $$Shohrux Mirzo qachon Temuriylar saltanati hukmdori bo'lgan?$$, $$Amir Temur vafotidan keyin, 1405-yil martda Shohrux rasmiy ravishda Temuriylar saltanati hukmdori sifatida Xuroson taxtiga o'tirgan. U o'z nomidan xutba o'qitib, pul zarb qildirgan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shaharlarni obod qilganim$$, $$Men 1405-yilda Hirot, 1407-yilda Balx shaharlarini tiklashga oliy farmon berganman. Marv shahri qayta barpo etilib, sug'orish tizimi tiklangan va yangi yerlar o'zlashtirilgan.$$, $$["hirot", "balx", "marv", "obod", "sugor", "shahar"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Shohrux Mirzo$$, TRUE,
       $$Shohrux Mirzo qaysi shaharlarni qayta tiklagan?$$, $$Shohrux 1405-yilda Hirot, 1407-yilda Balx shaharlarini tiklashga farmon bergan, Marv shahri ham qayta barpo etilgan. Uning davrida sug'orish tizimi yaxshilanib, yangi yerlar o'zlashtirilgan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilm-fan homiyligi$$, $$Mening davrimda Hirot, Samarqand, Buxoro, Mashhad va Sheroz shaharlarida ilm-fan keng rivojlangan. Ko'plab madrasalar, masjidlar va xonaqohlar qurilgan, hunarmandchilik va savdo taraqqiy etgan.$$, $$["ilm", "fan", "madrasa", "masjid", "homiy", "xonaqoh"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Shohrux Mirzo$$, TRUE,
       $$Shohrux Mirzo davrida ilm-fan va madaniyat qanday rivojlangan?$$, $$Shohrux davrida Hirot, Samarqand, Buxoro, Mashhad, Sheroz kabi shaharlarda ilm-fan rivojlangan, ko'plab madrasa, masjid va xonaqohlar qurilgan. Hirot va Sheroz shaharlarida tarixnavislikka katta e'tibor berilgan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'g'lim Ulug'bek$$, $$O'g'lim Mirzo Ulug'bek Movarounnahrda rasadxona barpo etgan va u yerda aniq fanlar rivojlangan. Farzandlarim ilm-u ma'rifatga xizmat qilganidan faxrlanaman.$$, $$["ulugbek", "ulugb", "rasad", "ogil", "movaro", "farzand"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Shohrux Mirzo$$, TRUE,
       $$Shohrux Mirzoning o'g'li Ulug'bek nima bilan mashhur bo'lgan?$$, $$Shohrux Mirzoning o'g'li Mirzo Ulug'bek Movarounnahrda rasadxona barpo etgan va u yerda aniq fanlar rivojlangan. Manbada uning farzandlari sifatida Mirzo Boysung'ur, Ibrohim Sulton va Muhammad Jo'giy ham tilga olinadi. Manba: Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Elchilar va tinchlik$$, $$Men xalqaro siyosatimda davlatlararo tinch-totuvlik va do'stona munosabatlarni ustuvor yo'nalish deb bilganman. Xitoy, Hindiston, Misr, Shom, Rum va Dashti Qipchoq hukmdorlariga elchilar jo'natganman.$$, $$["elchi", "xitoy", "hindis", "misr", "tinch", "dost"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Shohrux Mirzo$$, TRUE,
       $$Shohrux Mirzo qaysi davlatlar bilan elchilik aloqalari olib borgan?$$, $$Shohrux xalqaro siyosatida davlatlararo tinchlik va do'stona munosabatlarni ustuvor deb bilgan, adolatparvar va raiyat tinchligini ko'zlovchi hukmdor sifatida tavsiflanadi. U Xitoy, Hindiston, Misr, Shom, Rum va Dashti Qipchoq hukmdorlariga elchilar jo'natgan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1447-yilda Ray shahrida vafot etganman.$$, $$["vafot", "umr", "oxir", "1447"]$$::jsonb, $$Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi: Shohrux Mirzo$$, TRUE,
       $$Shohrux Mirzo qachon va qayerda vafot etgan?$$, $$Shohrux Mirzo 1447-yil 19-martda Ray shahrida vafot etgan. U 1405-yildan 1447-yilgacha Temuriylar saltanatini boshqargan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Shohrux Mirzo kimning o'g'li bo'lgan?$$, $$["Mirzo Bobur", "Sohibqiron Amir Temur", "Husayn Boyqaro", "Mahmud G'aznaviy"]$$::jsonb, 1, $$Shohrux Mirzo Sohibqiron Amir Temurning o'g'li bo'lib, otasi 1396-yilda unga Xuroson o'lkasini suyurg'ol qilib bergan.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Shohrux Mirzo 1405-yilda qaysi shaharni qayta tiklashga farmon bergan?$$, $$["Toshkent", "Xiva", "Hirot", "Qo'qon"]$$::jsonb, 2, $$Shohrux Mirzo 1405-yilda Hirotni, 1407-yilda esa Balx shahrini tiklashga oliy farmon bergan.$$
  FROM heroes h WHERE h.slug = 'shohrux-mirzo';


-- ═══════════ Shukur Xolmirzayev ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('shukur-xolmirzayev', $$Shukur Xolmirzayev$$, $$O'zbekiston xalq yozuvchisi$$, 1940, 2005,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Shukur Xolmirzayev (1940–2005) — O'zbekiston xalq yozuvchisi, o'zbek hikoyachiligining ustasi. U Surxondaryoning Boysun tumanida tug'ilib, tabiat va inson haqidagi hikoyalari, «Qil ko'prik», «Dinozavr» kabi romanlari bilan tanilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Shukur Xolmirzayevman — Boysun tog'lari bag'rida tug'ilgan hikoyanavis, O'zbekiston xalq yozuvchisiman. Mendan hikoyalarim, romanlarim va Boysun tabiati haqida so'ra!$$,
 $$✍️$$, $$["shukur", "xolmi", "boysu", "hikoy", "yozuv", "tabiat"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1940-yilning 24-martida Surxondaryo viloyatining Boysun tumanida tug'ilganman. Boysun — mening ona yurtim.$$, $$["tugil", "tavallud", "boysu", "surxo", "1940"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Shukur Xolmirzayev$$, TRUE,
       $$Shukur Xolmirzayev qachon va qayerda tug'ilgan?$$, $$Shukur Xolmirzayev 1940-yil 24-martda Surxondaryo viloyatining Boysun tumanida tavallud topgan. Keyinchalik u o'zbek nasrining taniqli vakillaridan biriga aylangan. Manba: Ziyouz.com, «O'zbek nasri» bo'limi.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsil yillarim$$, $$Dastlabki hikoya va ocherklarim 1958-yildan boshlab bosila boshlagan. 1963-yilda Toshkent universitetining jurnalistika fakultetini tamomlaganman.$$, $$["univer", "jurnalist", "tahsil", "fakultet", "oqi"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Shukur Xolmirzayev$$, TRUE,
       $$Shukur Xolmirzayev qayerda o'qigan?$$, $$Yozuvchining dastlabki hikoya va ocherklari 1958-yildan boshlab bosila boshlagan. U 1963-yilda Toshkent universitetining jurnalistika fakultetini bitirgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk asarlarim$$, $$Ilk qissam «Oq otli» 1962-yilda nashr etilgan. So'ng «To'lqinlar» (1963) hamda «O'n sakkizga kirmagan kim bor?» (1965) qissalarimni yozganman.$$, $$["asar", "kitob", "yoz", "qissa", "otli", "ilk"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Shukur Xolmirzayev$$, TRUE,
       $$Shukur Xolmirzayevning ilk asarlari qaysilar?$$, $$Yozuvchining birinchi qissasi «Oq otli» 1962-yilda chiqqan. Undan keyin «To'lqinlar» (1963) va «O'n sakkizga kirmagan kim bor?» (1965) qissalari nashr etilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hikoya to'plamlarim$$, $$Meni ko'proq hikoyanavis sifatida bilishadi. «Olis yulduzlar ostida» (1971), «Hayot abadiy» (1974), «Og'ir tosh ko'chsa...» (1980), «Yo'llar, yo'ldoshlar» (1984) kabi hikoya to'plamlarim chop etilgan.$$, $$["hikoy", "asar", "kitob", "yoz", "toplam", "usta"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Shukur Xolmirzayev$$, TRUE,
       $$Shukur Xolmirzayevning qanday hikoya to'plamlari bor?$$, $$Shukur Xolmirzayev avvalo hikoya ustasi sifatida tanilgan. Uning «Olis yulduzlar ostida» (1971), «Hayot abadiy» (1974), «Og'ir tosh ko'chsa...» (1980), «Yo'llar, yo'ldoshlar» (1984), «Bodom qishda gulladi» (1986), «Tog'larga qor tushdi» (1987) to'plamlari nashr etilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Roman va dramalarim$$, $$«So'nggi bekat» (1976), «Qil ko'prik» (1984), «Yo'lovchi» (1987), «Olabo'ji» (1992) romanlarini yozganman, «Dinozavr» romanimning birinchi kitobi esa 1996-yilda chiqqan. Sahna uchun «Qora kamar» (1987) va «Ziyofat» (1990) dramalarini ham yaratganman.$$, $$["roman", "asar", "kitob", "yoz", "dinoz", "drama"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Shukur Xolmirzayev$$, TRUE,
       $$Shukur Xolmirzayev qanday romanlar va dramalar yozgan?$$, $$Yozuvchi «So'nggi bekat» (1976), «Qil ko'prik» (1984), «Yo'lovchi» (1987), «Olabo'ji» (1992) romanlarini hamda «Dinozavr» romanining birinchi kitobini (1996) yozgan. U «Qora kamar» (1987) va «Ziyofat» (1990) dramalari muallifi hamdir. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Boysun va tabiat$$, $$Asarlarim nomlariga qarang: «Tog'larga qor tushdi», «Bodom qishda gulladi», «Olis yulduzlar ostida» — tog'u toshlar, tabiat mening hikoyalarimda doim yashaydi. Bularning ildizi ona yurtim Boysun tog'laridadir.$$, $$["tabiat", "tog", "boysu", "yurt", "bodom"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Shukur Xolmirzayev$$, TRUE,
       $$Shukur Xolmirzayev ijodida tabiat qanday o'rin tutadi?$$, $$Yozuvchi Surxondaryoning Boysun tumanida tug'ilgan. Uning to'plamlari nomlarida ham tabiat obrazlari aks etgan: «Tog'larga qor tushdi» (1987), «Bodom qishda gulladi» (1986), «Olis yulduzlar ostida» (1971). Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvon va mukofotlarim$$, $$1989-yilda Hamza nomidagi respublika Davlat mukofotini olganman. 1991-yilda menga O'zbekiston xalq yozuvchisi unvoni berildi, 1999-yilda esa «Mehnat shuhrati» ordeni bilan mukofotlanganman.$$, $$["mukofot", "unvon", "orden", "hamza", "shuhrat", "xalq"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Shukur Xolmirzayev$$, TRUE,
       $$Shukur Xolmirzayev qanday mukofotlar olgan?$$, $$Yozuvchi 1989-yilda Hamza nomidagi respublika Davlat mukofotiga sazovor bo'lgan. 1991-yilda unga O'zbekiston xalq yozuvchisi unvoni berilgan, 1999-yilda «Mehnat shuhrati» ordeni bilan taqdirlangan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 2005-yilning 29-sentabrida Toshkent shahrida vafot etganman. Ortimda hikoya, qissa, roman va dramalardan iborat katta adabiy meros qoldi.$$, $$["vafot", "2005", "oxir", "umr"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Shukur Xolmirzayev$$, TRUE,
       $$Shukur Xolmirzayev qachon vafot etgan?$$, $$Shukur Xolmirzayev 2005-yil 29-sentabrda Toshkentda vafot etgan. Undan hikoyalar, qissalar, «Dinozavr» kabi romanlar va dramalardan iborat boy adabiy meros qolgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Shukur Xolmirzayev qayerda tug'ilgan?$$, $$["Toshkent shahrida", "Surxondaryo viloyatining Boysun tumanida", "Farg'ona vodiysida", "Samarqand viloyatida"]$$::jsonb, 1, $$Shukur Xolmirzayev 1940-yil 24-martda Surxondaryo viloyatining Boysun tumanida tug'ilgan. Boysun tog'lari uning ijodida katta o'rin tutgan.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Shukur Xolmirzayevning 1996-yilda birinchi kitobi nashr etilgan romani qaysi?$$, $$["«Qil ko'prik»", "«So'nggi bekat»", "«Dinozavr»", "«Olabo'ji»"]$$::jsonb, 2, $$«Dinozavr» romanining birinchi kitobi 1996-yilda chiqqan. «So'nggi bekat» 1976-yilda, «Qil ko'prik» 1984-yilda, «Olabo'ji» 1992-yilda nashr etilgan.$$
  FROM heroes h WHERE h.slug = 'shukur-xolmirzayev';


-- ═══════════ Sora Eshonto'rayeva ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('sora-eshonturayeva', $$Sora Eshonto'rayeva$$, $$O'zbekiston xalq artisti$$, 1911, 1998,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Sora Eshonto'rayeva — o'zbek teatrining mashhur aktrisasi, O'zbekiston xalq artisti (1937). Hamza nomidagi akademik drama teatrida Ofeliya, Dezdemona, Jamila kabi bosh rollarni ijro etgan, shu teatrga direktor ham bo'lgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Sora Eshonto'rayevaman. Mendan teatr sahnasi, Ofeliya va Dezdemona rollarim haqida so'ra!$$,
 $$🎭$$, $$["sora", "eshont", "aktris", "teatr", "sahna", "artist"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1911-yilda Namangan viloyatining Beshbuloq qishlog'ida tug'ilganman.$$, $$["tugil", "tavallud", "namangan", "naman", "beshbuloq", "beshb"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Sora Eshonto'rayeva$$, TRUE,
       $$Sora Eshonto'rayeva qachon va qayerda tug'ilgan?$$, $$Sora Abdurahmonovna Eshonto'rayeva 1911-yil 8-noyabrda Namangan viloyati Beshbuloq qishlog'ida tug'ilgan. Manba: O'zbekiston Milliy Ensiklopediyasi (Ziyouz.com kutubxonasi).$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Moskvada o'qishim$$, $$Men Moskvadagi o'zbek drama studiyasida o'qib, uni 1927-yilda tugatganman. O'sha yildan boshlab Hamza nomidagi O'zbek davlat akademik drama teatrida aktrisa bo'lib ishlay boshlaganman.$$, $$["moskva", "studiy", "oqi", "talim", "drama"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Sora Eshonto'rayeva$$, TRUE,
       $$Sora Eshonto'rayeva qayerda o'qigan?$$, $$U 1927-yilda Moskvadagi o'zbek drama studiyasini tugatgan. Studiyada «Revizor», «Malikai Turandot», «Ikki boyga bir malay» kabi spektakllarda rol o'ynab tajriba orttirgan. Manba: O'zbekiston Milliy Ensiklopediyasi (Ziyouz.com kutubxonasi).$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hamza teatridagi faoliyatim$$, $$1927-yildan Hamza nomidagi O'zbek davlat akademik drama teatrining aktrisasi bo'lganman. 1943–1945 va 1953–1960-yillarda esa shu teatrga direktor bo'lganman.$$, $$["hamza", "teatr", "direktor", "sahna", "aktris"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Sora Eshonto'rayeva$$, TRUE,
       $$Sora Eshonto'rayeva qaysi teatrda ishlagan?$$, $$Ilk rollari — «Hujum» spektaklida Tursunoy va «Ikki boyga bir malay»da Beatriche. 30-yillardan boshlab u teatrda sahnalashtirilgan deyarli barcha asarlarda yetakchi bosh qahramon rollarini ijro etgan. Manba: O'zbekiston Milliy Ensiklopediyasi (Ziyouz.com kutubxonasi).$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ofeliya rolim$$, $$1935-yilda Shekspirning «Hamlet» fojiasida Ofeliya rolini ijro etganman. Aynan shu rol menga katta shuhrat keltirgan.$$, $$["ofeliya", "ofeli", "hamlet", "shekspir", "sheks", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Sora Eshonto'rayeva$$, TRUE,
       $$Sora Eshonto'rayeva Ofeliya rolini qachon ijro etgan?$$, $$U 1935-yilda «Hamlet» spektaklida Ofeliya obrazini yaratib shuhratga burkangan. Ensiklopediyada u bu rolda muhabbat fojiasini o'ta ta'sirchan ifodalagani yozilgan. Manba: O'zbekiston Milliy Ensiklopediyasi (Ziyouz.com kutubxonasi).$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Dezdemona va «Otello»$$, $$Shekspirning «Otello» spektaklida Dezdemona rolini o'ynaganman. Bu spektakl 1941-yilda Hamza teatrida premyera qilingan, Otello rolini buyuk aktyor Abror Hidoyatov ijro etgan.$$, $$["dezdemona", "dezde", "otello", "abror", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Sora Eshonto'rayeva$$, TRUE,
       $$Sora Eshonto'rayeva «Otello» spektaklida qaysi rolni o'ynagan?$$, $$«Otello» 1941-yilda Hamza teatrida sahnalashtirilgan, Dezdemona rolini Sora Eshonto'rayeva ijro etgan. 1945-yilda spektaklni ko'rgan Buyuk Britaniya parlamenti a'zolari bunday «Otello»ni Londonda ham ko'rmaganliklarini faxriy mehmonlar daftariga yozib qoldirgan. Manba: UzA — «O'zbek teatridagi Otelloga Buyuk Britaniya parlamenti a'zolari ham tan bergan» maqolasi.$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mashhur rollarim$$, $$Hamzaning «Boy ila xizmatchi» asarida Jamila, «Alisher Navoiy»da Guli, «Muqanna»da Guloyim rollarini ijro etganman. Jamila va Guli obrazlari ijodimda alohida o'rin tutadi.$$, $$["rol", "spektakl", "asar", "kitob", "yoz", "jamila"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Sora Eshonto'rayeva$$, TRUE,
       $$Sora Eshonto'rayeva yana qanday mashhur rollarni ijro etgan?$$, $$Uning repertuarida Onaxon («Nomus va muhabbat»), Hurriyat («Hurriyat»), Katerina («Momaqaldiroq»), Iokasta («Shoh Edip») kabi o'nlab bosh rollar bo'lgan. Keyinchalik onalar obrazlarini ham mahorat bilan yaratgan, kino va telespektakllarda ham rollar ijro etgan. Manba: O'zbekiston Milliy Ensiklopediyasi (Ziyouz.com kutubxonasi).$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvon va mukofotlarim$$, $$1937-yilda menga O'zbekiston xalq artisti unvoni berilgan. Davlat mukofoti bilan 1949, 1967 va 1977-yillarda taqdirlanganman, 1993-yilda esa «Sog'lom avlod uchun» ordenini olganman.$$, $$["xalq", "artist", "mukofot", "unvon", "orden"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Sora Eshonto'rayeva$$, TRUE,
       $$Sora Eshonto'rayeva qanday unvon va mukofotlar olgan?$$, $$U 1937-yildayoq O'zbekiston xalq artisti bo'lgan, Hamza nomidagi O'zbekiston Davlat mukofoti (1967) laureati. Shuningdek, 1946–1955 va 1981–1985-yillarda O'zbekiston teatr jamiyati boshqaruvining raisi bo'lib ishlagan. Manba: O'zbekiston Milliy Ensiklopediyasi (Ziyouz.com kutubxonasi).$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1998-yilda Toshkent shahrida vafot etganman. Butun umrimni o'zbek teatri sahnasiga bag'ishlaganman.$$, $$["vafot", "olim", "umr", "oxir", "toshkent"]$$::jsonb, $$Ziyouz.com — «O'zbekiston Milliy Ensiklopediyasi» bo'limi: Sora Eshonto'rayeva$$, TRUE,
       $$Sora Eshonto'rayeva qachon vafot etgan?$$, $$Sora Eshonto'rayeva 1998-yil 8-sentabrda Toshkentda vafot etgan. Vafotidan so'ng, 2004-yilda «Buyuk xizmatlari uchun» ordeni bilan taqdirlangan. Manba: O'zbekiston Milliy Ensiklopediyasi (Ziyouz.com kutubxonasi).$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Sora Eshonto'rayeva 1935-yilda qaysi rol bilan katta shuhrat qozongan?$$, $$["Dezdemona", "Ofeliya", "Jamila", "Katerina"]$$::jsonb, 1, $$U 1935-yilda Shekspirning «Hamlet» fojiasida Ofeliya rolini ijro etib shuhratga burkangan. Dezdemona rolini esa keyinroq, 1941-yilgi «Otello» spektaklida o'ynagan.$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Sora Eshonto'rayevaga nechanchi yilda O'zbekiston xalq artisti unvoni berilgan?$$, $$["1927", "1937", "1941", "1949"]$$::jsonb, 1, $$Unga 1937-yilda O'zbekiston xalq artisti unvoni berilgan. 1927-yilda esa u Moskvadagi o'zbek drama studiyasini tugatib, Hamza teatrida ishlay boshlagan.$$
  FROM heroes h WHERE h.slug = 'sora-eshonturayeva';


-- ═══════════ Tavallo ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('tavallo', $$Tavallo$$, $$Jadid shoiri va ma'rifatparvar$$, 1883, 1937,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Tavallo (asl ismi To'lagan Xo'jamyorov, 1883–1937) — toshkentlik jadid shoiri, 1916-yilda chop etilgan «Ravnaq ul-islom» she'riy to'plamining muallifi. U «Nashriyot» shirkati asoschilaridan biri bo'lgan, 1937-yilda qatag'on qurboni bo'lgan va 1968-yilda oqlangan.$$,
 $$Assalomu alaykum, aziz farzand! Men Tavalloman — asl ismim To'lagan Xo'jamyorov, toshkentlik jadid shoiriman. Mendan she'rlarim, «Ravnaq ul-islom» kitobim, teatr va do'stlarim bilan qilgan ishlarimiz haqida so'ra!$$,
 $$✒️$$, $$["taval", "jadid", "shoir", "ravnaq", "toshk", "xojam"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1883-yilda Toshkentning Ko'kcha dahasidagi Obi Nazir mahallasida tug'ilganman. Asl ismim To'lagan Xo'jamyorov, «Tavallo» esa mening shoirlik taxallusimdir.$$, $$["tugil", "tavallud", "kokcha", "toshk", "mahal"]$$::jsonb, $$Ziyouz.com — Begali Qosimov: «Vatan va millatning o'tlig' kuychisi»$$, TRUE,
       $$Tavallo qachon va qayerda tug'ilgan?$$, $$Tavallo (To'lagan Xo'jamyorov) 1883-yilda Toshkentning Ko'kcha dahasi Obi Nazir mahallasida, o'ziga to'q Xo'jamyor Jiyanboyev oilasida dunyoga kelgan. «Tavallo» — uning adabiy taxallusidir. Manba: Ziyouz.com, Begali Qosimov maqolasi.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsil olishim$$, $$Bolaligimda eski maktabda savod chiqarganman. Keyin Toshkentdagi Beklarbegi madrasasida va rus-tuzem maktabida o'qiganman.$$, $$["maktab", "madrasa", "oqi", "savod", "beklar", "tahsil"]$$::jsonb, $$Ziyouz.com — Begali Qosimov: «Vatan va millatning o'tlig' kuychisi»$$, TRUE,
       $$Tavallo qayerlarda o'qigan?$$, $$Tavallo eski maktabda savod chiqargan, so'ngra Beklarbegi madrasasida hamda rus-tuzem maktabida tahsil olgan. She'riyatda unga Yusuf Saryomiy ustozlik qilgan. Manba: Ziyouz.com, Begali Qosimov maqolasi.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Ravnaq ul-islom» kitobim$$, $$1916-yilda «Ravnaq ul-islom» nomli she'riy to'plamimni chop ettirganman. Unga aruz vaznida yozilgan 70 ga yaqin she'rim kirgan bo'lib, ular xalq hayoti va millat taraqqiyoti haqidadir. U hayotligimda bosilgan bittayu bitta kitobimdir.$$, $$["ravnaq", "asar", "kitob", "yoz", "toplam", "islom"]$$::jsonb, $$Ziyouz.com — Begali Qosimov: «Vatan va millatning o'tlig' kuychisi»$$, TRUE,
       $$Tavalloning qanday kitobi nashr etilgan?$$, $$«Ravnaq ul-islom» to'plami 1916-yilda chop etilgan bo'lib, unda shoirning aruz vaznidagi 70 tacha she'ri jamlangan. Bu shoir hayotida bosilgan yagona kitob bo'lib, u 1993-yilda qayta nashr etilgan. Manba: Ziyouz.com, Begali Qosimov maqolasi.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'rlarim va matbuot$$, $$She'r va maqolalarim 1910-yillardan boshlab vaqtli matbuotda «Tavallo» taxallusi bilan bosila boshlagan. «Oyna» jurnali va «Sadoyi Turkiston» gazetasining chiqishi ham diqqatimdan chetda qolmagan. «Suyukli Vatan haqida», «Qalamga xitob» kabi she'rlarni yozganman.$$, $$["asar", "kitob", "yoz", "sher", "matbuot", "vatan"]$$::jsonb, $$Ziyouz.com — Begali Qosimov: «Vatan va millatning o'tlig' kuychisi»$$, TRUE,
       $$Tavalloning she'rlari matbuotda qanday chiqqan?$$, $$Tavalloning she'r va maqolalari 1910-yillardan boshlab vaqtli matbuotda «Tavallo» taxallusi bilan chiqa boshlagan. Behbudiy muharrirligidagi «Oyna» jurnali (1913) va «Sadoyi Turkiston» gazetasi (1914) ning chiqishi shoir diqqatidan chetda qolmagan. «Suyukli Vatan haqida», «O'z vijdon-vujudima xitob», «Qalamga xitob» she'rlari shular jumlasidandir. Manba: Ziyouz.com, Begali Qosimov maqolasi.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Nashriyot» shirkati$$, $$1914-yil 30-avgustda Munavvarqori va Avloniy kabi do'stlarim bilan birga «Nashriyot» shirkatini tuzganman. Maqsadimiz xalqimiz uchun kitoblar chiqarish edi.$$, $$["nashr", "shirkat", "munavvar", "avlon", "dost"]$$::jsonb, $$Ziyouz.com — Begali Qosimov: «Vatan va millatning o'tlig' kuychisi»$$, TRUE,
       $$Tavallo qanday shirkat tuzishda qatnashgan?$$, $$1914-yil 30-avgustda Tavallo Munavvarqori, Avloniy va boshqa ziyolilar bilan birga Toshkentda kitob chiqarish maqsadida «Nashriyot» shirkatini tashkil etgan. Manba: Ziyouz.com, Begali Qosimov maqolasi.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Teatr va «Turon»$$, $$1914-yil 27-fevralda Toshkentdagi «Kolizey» teatrida Avloniy truppasi Behbudiyning «Padarkush» dramasini sahnaga qo'yganida, men bu voqeaga she'r bag'ishlaganman. 1915-yildan esa Avloniylar tashabbusi bilan tuzilgan «Turon» jamiyatida faoliyat yuritganman.$$, $$["teatr", "turon", "padar", "drama", "sahna", "koliz"]$$::jsonb, $$Ziyouz.com — Begali Qosimov: «Vatan va millatning o'tlig' kuychisi»$$, TRUE,
       $$Tavalloning teatr bilan qanday aloqasi bo'lgan?$$, $$1914-yil 27-fevralda Toshkentdagi «Kolizey» teatrida Avloniy truppasi Behbudiyning «Padarkush» dramasini namoyish etgan va Tavallo bu voqeaga she'r bag'ishlagan. U 1915-yilda Avloniylar tashabbusi bilan tuzilgan «Turon» jamiyatida faoliyat ko'rsata boshlagan. Manba: Ziyouz.com, Begali Qosimov maqolasi.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hajviy she'rlarim$$, $$Kulgili, ya'ni hajviy she'rlar ham yozganman. «Mushtum» jurnalida o'nlab hajviy she'rlarim «Mag'zava» imzosi bilan bosilgan.$$, $$["asar", "kitob", "yoz", "hajv", "mushtum", "magzava"]$$::jsonb, $$Ziyouz.com — Begali Qosimov: «Vatan va millatning o'tlig' kuychisi»$$, TRUE,
       $$Tavallo hajviy she'rlar ham yozganmi?$$, $$Tavalloning o'nlab hajviy she'rlari «Mushtum» jurnalida «Mag'zava» imzosi bilan chop etilgan. Manbada bu she'rlar hali to'liq yig'ilib o'rganilmagani aytiladi. Manba: Ziyouz.com, Begali Qosimov maqolasi.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1937-yilda vafot etganman. O'sha yili 14-avgust kuni meni nohaq hibsga olishgan va she'rlarimda millatchilik g'oyalarini ilgari surganlikda ayblashgan. 1937-yil 10-noyabrda qatag'on qurboni bo'lganman.$$, $$["vafot", "qatagon", "hibs", "ayb", "oxir", "nohaq"]$$::jsonb, $$Ziyouz.com — Begali Qosimov: «Vatan va millatning o'tlig' kuychisi»$$, TRUE,
       $$Tavalloning umri qanday yakun topgan?$$, $$Tavallo 1937-yil 14-avgustda hibsga olinib, aksilinqilobiy tashkilot a'zosi bo'lishda va she'rlarida millatchilik g'oyalarini ilgari surishda ayblangan. NKVD qoshidagi uchlik 1937-yil 19-oktyabrda uni otuvga hukm qilgan va hukm 10-noyabrda ijro etilgan. Shoir 1968-yil 18-oktyabrda oqlangan. Manba: Ziyouz.com, Begali Qosimov maqolasi.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Tavalloning 1916-yilda chop etilgan she'riy to'plami qanday nomlangan?$$, $$["«Padarkush»", "«Ravnaq ul-islom»", "«Sadoyi Turkiston»", "«Mushtum»"]$$::jsonb, 1, $$Tavalloning hayotida bosilgan yagona she'riy to'plami 1916-yilda chiqqan «Ravnaq ul-islom»dir, unga 70 ga yaqin she'r kirgan. «Padarkush» — o'sha davrda sahnaga qo'yilgan drama, «Sadoyi Turkiston» — gazeta, «Mushtum» — hajviy jurnal.$$
  FROM heroes h WHERE h.slug = 'tavallo';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Tavalloning asl ism-familiyasi qanday bo'lgan?$$, $$["Abdulla Avloniy", "Munavvarqori Abdurashidxonov", "To'lagan Xo'jamyorov", "Ubaydulloxon Asatullaxo'jayev"]$$::jsonb, 2, $$«Tavallo» — shoirning adabiy taxallusi bo'lib, asl ismi To'lagan Xo'jamyorovdir. U 1883-yilda Toshkentning Ko'kcha dahasida tug'ilgan. Avloniy va Munavvarqori esa uning safdosh do'stlari bo'lgan.$$
  FROM heroes h WHERE h.slug = 'tavallo';


-- ═══════════ Temur Malik ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('temur-malik', $$Temur Malik$$, $$Xo'jand mudofaasi qahramoni$$, NULL, NULL,
 NULL,
 $$Temur Malik — XIII asrda yashagan sarkarda, Xo'jand viloyatining hokimi. U Chingizxon qo'shinlariga qarshi Sirdaryo o'rtasidagi orol qal'asini mardona himoya qilgan va keyinchalik Jaloliddin Manguberdiga safdosh bo'lgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Temur Malikman — Xo'jand hokimi, mo'g'ul bosqinchilariga qarshi mardona kurashgan sarkardaman. Mendan Xo'jand mudofaasi, oroldagi qal'a, namat qoplangan kemalarim va Jaloliddin Manguberdi bilan safdoshligim haqida so'ra!$$,
 $$🛡️$$, $$["temur", "malik", "xojand", "mogul", "qala", "sarkarda"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Tug'ilgan yilim va joyim manbalarda aniq yozilmagan. Men XIII asrda yashab o'tganman, taqdirim Xo'jand shahri bilan chambarchas bog'liq bo'lgan.$$, $$["tugil", "tavallud", "qachon", "yosh", "xojand"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Temur Malik (Mirkarim Osim, «Temurmalik» hikoyasi)$$, TRUE,
       $$Temur Malik qachon tug'ilgan?$$, $$Temur Malikning tug'ilgan yili va joyi manbalarda aniq ko'rsatilmagan. U XIII asrda yashagan va Xo'jand viloyatining hokimi sifatida tanilgan. Manba: Ziyouz.com, Mirkarim Osim, «Temurmalik» hikoyasi.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xo'jand hokimligi$$, $$Men Xo'jand viloyatining hokimi bo'lganman. Chingizxon qo'shinlari yurtimizga bostirib kelganida, shahrimni dushmanga jangsiz topshirmaslikka qaror qilganman.$$, $$["hokim", "xojand", "lavozim", "viloyat", "shahar"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Temur Malik (Mirkarim Osim, «Temurmalik» hikoyasi)$$, TRUE,
       $$Temur Malik qaysi shaharning hokimi bo'lgan?$$, $$Temur Malik Xo'jand viloyatining hokimi edi. Mo'g'ullar bosqini paytida u daryo o'rtasidagi qal'ani mustahkamlab, mo'g'ullar bilan jang qilishga jazm etgan. Manba: Ziyouz.com, Mirkarim Osim, «Temurmalik» hikoyasi.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Oroldagi qal'a$$, $$Xo'jandni ikkiga bo'lib oqqan Sirdaryoning o'rtasidagi orolda qal'ani mustahkamlaganman. Yonimda mingdan oshiq bahodir va mergan, yuzga yaqin kemasoz usta bor edi.$$, $$["qala", "orol", "mudofaa", "sirdaryo", "daryo", "himoya"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Temur Malik (Mirkarim Osim, «Temurmalik» hikoyasi)$$, TRUE,
       $$Temur Malikning qal'asi qayerda joylashgan edi?$$, $$Qal'a Xo'jand yonida, shaharni ikkiga bo'lib oqqan Sirdaryoning o'rtasidagi orolda joylashgan edi. Hikoyada yozilishicha, istehkomga mingdan oshiq bahodir va merganlar, yuzga yaqin kemasoz ustalar joylashtirilgan. Manba: Ziyouz.com, Mirkarim Osim, «Temurmalik» hikoyasi.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mo'g'ullarga qarshi jang$$, $$Xo'jandga yigirma minglik mo'g'ul qo'shini yetib keldi, ularga So'ktu va Uloq no'yonlar boshchilik qilardi. Biz kemalarda dushman lashkargohiga to'satdan hujumlar qilardik — janglarning birida otilgan o'q Uloq no'yonning ko'ziga sanchildi.$$, $$["mogul", "jang", "chingiz", "hujum", "dushman", "noyon"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Temur Malik (Mirkarim Osim, «Temurmalik» hikoyasi)$$, TRUE,
       $$Temur Malik mo'g'ullarga qarshi qanday jang qilgan?$$, $$Xo'jandga yigirma minglik mo'g'ul qo'shini kelgan, ularga So'ktu va Uloq no'yonlar qo'mondonlik qilgan. Temur Malik jangchilari kemalarda dushman qarorgohiga kutilmagan hujumlar uyushtirib turgan; janglarning birida o'q Uloq no'yonning o'ng ko'ziga sanchilgan. Manba: Ziyouz.com, Mirkarim Osim, «Temurmalik» hikoyasi.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Namat qoplangan kemalar$$, $$Ustalarim maxsus kemalar yasab, ustiga ustunlar o'rnatib, ustini va atrofini namat bilan qopladilar — dushman o'qlari bunday kemalarga kor qilmasdi. Kemalarda suzib, askarlarim bilan dushmanga hujumlar qilganman.$$, $$["kema", "qayiq", "namat", "usta", "suv"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Temur Malik (Mirkarim Osim, «Temurmalik» hikoyasi)$$, TRUE,
       $$Temur Malikning kemalari qanday bo'lgan?$$, $$Hikoyada aytilishicha, tayyor bo'lgan kemalarga ustunlar o'rnatib, ustini namat bilan yopganlar va atrofini ham namat bilan o'raganlar. Bu kemalar orol qal'asi mudofaasida va daryo bo'ylab harakatlanishda asosiy vosita bo'lib xizmat qilgan. Manba: Ziyouz.com, Mirkarim Osim, «Temurmalik» hikoyasi.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Jaloliddin safdoshi$$, $$Mashaqqatli yo'llarni bosib o'tib, Eron tuprog'ida mo'g'ullar bilan jang qilayotgan Jaloliddin Manguberdiga qo'shilganman va mo'g'ul bosqinchilariga qarshi kurashni sulton safida davom ettirganman.$$, $$["jalol", "mangu", "safdosh", "eron", "qoshil"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Temur Malik (Mirkarim Osim, «Temurmalik» hikoyasi)$$, TRUE,
       $$Temur Malik Jaloliddin Manguberdi bilan qanday hamkorlik qilgan?$$, $$Hikoyada yozilishicha, Temur Malik mashaqqatli yo'l bosib, Eron tuprog'ida mo'g'ullar bilan jang qilayotgan Jaloliddinga qo'shilgan va mo'g'ullarga qarshi kurashni davom ettirgan. Manba: Ziyouz.com, Mirkarim Osim, «Temurmalik» hikoyasi.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yangikent ozodligi$$, $$Keyinchalik chekinib Xorazmga yetib kelganman va jangni davom ettirish uchun u yerda askar to'plab, yana Sirdaryo tomon yurganman. Yangikent shahrini dushmandan ozod qilib, mo'g'ullar tomoniga o'tgan xoin hokimni jazoladim va o'rniga sadoqatli kishini tayinladim.$$, $$["yangikent", "ozod", "xorazm", "xoin", "chekin"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Temur Malik (Mirkarim Osim, «Temurmalik» hikoyasi)$$, TRUE,
       $$Temur Malik qaysi shaharni mo'g'ullardan ozod qilgan?$$, $$Hikoyaga ko'ra, Temur Malik chekinib Xorazmga yetib kelgach, jangni davom ettirish uchun u yerda askar to'plab, yana Sirdaryo tomon yurish qilgan. U Yangikent shahrini ozod qilgan va mo'g'ullar tomoniga o'tgan shahar hokimini jazolab, o'rniga boshqa bir sadoqatli kishini belgilagan. Manba: Ziyouz.com, Mirkarim Osim, «Temurmalik» hikoyasi.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Qaysi yilda vafot etganim manbalarda aniq yozilmagan — men ham barcha bandalar kabi vafot etganman. Hikoyada aytilishicha, Xo'jand voqealaridan 15 yil o'tib, darvish qiyofasida Damashqdan ona shahrimga qaytib kelganman.$$, $$["vafot", "oxir", "qazo", "darvish", "damashq"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Temur Malik (Mirkarim Osim, «Temurmalik» hikoyasi)$$, TRUE,
       $$Temur Malik qachon vafot etgan?$$, $$Temur Malikning vafot yili manbalarda aniq ko'rsatilmagan. Mirkarim Osim hikoyasida u Xo'jand voqealaridan o'n besh yil o'tib, darvish qiyofasida Damashqdan ona shahriga qaytgani tasvirlanadi. Manba: Ziyouz.com, Mirkarim Osim, «Temurmalik» hikoyasi.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Temur Malik mo'g'ullarga qarshi mudofaa qal'asini qayerga qurgan?$$, $$["Buxoro devorlari ichiga", "Sirdaryo o'rtasidagi orolga", "Amudaryo bo'yiga", "Samarqand tepaligiga"]$$::jsonb, 1, $$Mirkarim Osim hikoyasiga ko'ra, Temur Malik Xo'jandni ikkiga bo'lib oqqan Sirdaryoning o'rtasidagi oroldagi qal'ada mudofaa olib borgan.$$
  FROM heroes h WHERE h.slug = 'temur-malik';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Temur Malik keyinchalik qaysi hukmdorga safdosh bo'lib, mo'g'ullarga qarshi kurashni davom ettirgan?$$, $$["Amir Temurga", "Mahmud G'aznaviyga", "Jaloliddin Manguberdiga", "Zahiriddin Boburga"]$$::jsonb, 2, $$Hikoyada aytilishicha, Temur Malik mashaqqatli yo'l bosib, Eron tuprog'ida mo'g'ullar bilan jang qilayotgan Jaloliddin Manguberdiga qo'shilgan.$$
  FROM heroes h WHERE h.slug = 'temur-malik';


-- ═══════════ Tog'ay Murod ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('togay-murod', $$Tog'ay Murod$$, $$O'zbekiston xalq yozuvchisi$$, 1948, 2003,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Tog'ay Murod (asl ismi Mengnorov Tog'aymurod) — O'zbekiston xalq yozuvchisi, «Ot kishnagan oqshom» qissasi va «Otamdan qolgan dalalar» romani muallifi. U 1948-yilda Surxondaryo viloyati Denov tumanida tug'ilgan, 2003-yilda Toshkentda vafot etgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Tog'ay Murodman — «Ot kishnagan oqshom» va «Otamdan qolgan dalalar» asarlarini yozgan yozuvchiman. Mendan hayotim va asarlarim haqida so'ra!$$,
 $$✍️$$, $$["togay", "murod", "yozuvchi", "kishna", "dala", "oqshom"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1948-yil 3-fevralda Surxondaryo viloyati Denov tumanidagi Xo'jasoat qishlog'ida tug'ilganman. Asl ism-familiyam — Mengnorov Tog'aymurod, «Tog'ay Murod» esa adabiy taxallusim.$$, $$["tugil", "tavallud", "surxon", "denov", "xojas", "mengno"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Tog'ay Murod$$, TRUE,
       $$Tog'ay Murod qachon va qayerda tug'ilgan?$$, $$Tog'ay Murod 1948-yil 3-fevralda Surxondaryo viloyati Denov tumanining Xo'jasoat qishlog'ida tug'ilgan. Uning asl ism-familiyasi Mengnorov Tog'aymurod bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsil va mehnat yo'lim$$, $$Men 1972-yilda Toshkent davlat universitetining jurnalistika fakultetini bitirganman. So'ng respublika radiosida muharrir (1972–1975), «O'zbekiston fizkulturachisi» gazetasida (1976–1978) va «Fan va turmush» jurnalida (1982–1984) ishlaganman. 1984–1986-yillarda Moskvada Oliy adabiyot kursida o'qiganman.$$, $$["oqigan", "univer", "jurnal", "radio", "gazeta", "ishla"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Tog'ay Murod$$, TRUE,
       $$Tog'ay Murod qayerda o'qigan va ishlagan?$$, $$Tog'ay Murod 1972-yilda Toshkent davlat universitetining jurnalistika fakultetini tugatgan, keyinchalik 1984–1986-yillarda Moskvada Oliy adabiyot kursida o'qigan. U respublika radiosida muharrir (1972–1975), «O'zbekiston fizkulturachisi» gazetasida (1976–1978) va «Fan va turmush» jurnalida (1982–1984) adabiy xodim bo'lib ishlagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Ot kishnagan oqshom»$$, $$Men 1979-yilda «Ot kishnagan oqshom» qissamni yozganman.$$, $$["asar", "kitob", "yoz", "kishna", "oqshom", "qissa"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Tog'ay Murod$$, TRUE,
       $$«Ot kishnagan oqshom» qissasini kim va qachon yozgan?$$, $$«Ot kishnagan oqshom» qissasini Tog'ay Murod 1979-yilda yozgan. Bu qissa yozuvchining eng mashhur asarlaridan biri hisoblanadi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qissalarim$$, $$Birinchi qissam — «Yulduzlar mangu yonadi»ni 1976-yilda e'lon qilganman. Keyin «Oydinda yurgan odamlar» (1980) va «Momo Yer qo'shig'i» (1985) qissalarimni yozganman.$$, $$["asar", "kitob", "yoz", "yulduz", "oydin", "momo"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Tog'ay Murod$$, TRUE,
       $$Tog'ay Murod yana qanday qissalar yozgan?$$, $$Tog'ay Murodning birinchi qissasi «Yulduzlar mangu yonadi» 1976-yilda e'lon qilingan. Shuningdek, u «Oydinda yurgan odamlar» (1980) va «Momo Yer qo'shig'i» (1985) qissalarini yozgan. «Oydinda yurgan odamlar» qissasi uchun adib Oybek mukofotiga sazovor bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Otamdan qolgan dalalar»$$, $$1993-yilda «Otamdan qolgan dalalar» romanimni yozganman. 2001-yilda bu romanim asosida badiiy film suratga olingan.$$, $$["asar", "kitob", "yoz", "dala", "roman", "film"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Tog'ay Murod$$, TRUE,
       $$«Otamdan qolgan dalalar» romani haqida nima ma'lum?$$, $$«Otamdan qolgan dalalar» romanini Tog'ay Murod 1993-yilda yozgan. Bu asari uchun u 1994-yilda Abdulla Qodiriy nomidagi Davlat mukofotini olgan, 2001-yilda esa roman asosida badiiy film yaratilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tarjimalarim va romanim$$, $$Men Jek Londonning «Boyning qizi» dramasi va hikoyalarini, E. Seton-Tompsonning «Yovvoyi yo'rg'a» qissasini o'zbek tiliga tarjima qilganman. Yana «Bu dunyoda o'lib bo'lmaydi» romanini ham yozganman.$$, $$["asar", "kitob", "yoz", "tarjima", "london", "dunyo"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Tog'ay Murod$$, TRUE,
       $$Tog'ay Murod qaysi yozuvchilarning asarlarini tarjima qilgan?$$, $$Tog'ay Murod Jek Londonning «Boyning qizi» dramasi va hikoyalarini hamda E. Seton-Tompsonning «Yovvoyi yo'rg'a» qissasini o'zbek tiliga tarjima qilgan. U «Bu dunyoda o'lib bo'lmaydi» romanini ham yozgan (nashr yili manbada aniq ko'rsatilmagan). Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mukofot va unvonlarim$$, $$«Oydinda yurgan odamlar» qissam uchun Oybek mukofotiga sazovor bo'lganman. 1994-yilda «Otamdan qolgan dalalar» romanim uchun Abdulla Qodiriy nomidagi Davlat mukofotini olganman. 1999-yilda esa menga «O'zbekiston xalq yozuvchisi» unvoni berilgan.$$, $$["mukofot", "unvon", "xalq", "qodiri", "oybek", "taqdir"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Tog'ay Murod$$, TRUE,
       $$Tog'ay Murod qanday mukofot va unvonlarga sazovor bo'lgan?$$, $$Tog'ay Murod «Oydinda yurgan odamlar» qissasi uchun Oybek mukofotiga, 1994-yilda «Otamdan qolgan dalalar» romani uchun Abdulla Qodiriy nomidagi Davlat mukofotiga sazovor bo'lgan. 1999-yilda unga «O'zbekiston xalq yozuvchisi» unvoni berilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 2003-yil 27-mayda Toshkent shahrida vafot etganman.$$, $$["vafot", "olim", "oxir", "toshke"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Tog'ay Murod$$, TRUE,
       $$Tog'ay Murod qachon vafot etgan?$$, $$Tog'ay Murod 2003-yil 27-mayda Toshkent shahrida vafot etgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Tog'ay Murod «Otamdan qolgan dalalar» romani uchun qanday mukofot olgan?$$, $$["Alisher Navoiy nomidagi Davlat mukofoti", "Abdulla Qodiriy nomidagi Davlat mukofoti", "Zulfiya nomidagi mukofot", "Nizomiy nomidagi mukofot"]$$::jsonb, 1, $$Tog'ay Murod 1993-yilda yozilgan «Otamdan qolgan dalalar» romani uchun 1994-yilda Abdulla Qodiriy nomidagi Davlat mukofotiga sazovor bo'lgan.$$
  FROM heroes h WHERE h.slug = 'togay-murod';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$«Ot kishnagan oqshom» qissasi qaysi yilda yozilgan?$$, $$["1976-yilda", "1979-yilda", "1985-yilda", "1993-yilda"]$$::jsonb, 1, $$Tog'ay Murod «Ot kishnagan oqshom» qissasini 1979-yilda yozgan. 1976-yilda esa uning birinchi qissasi «Yulduzlar mangu yonadi» e'lon qilingan.$$
  FROM heroes h WHERE h.slug = 'togay-murod';


-- ═══════════ Toshmuhammad Sarimsoqov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('toshmuhammad-sarimsoqov', $$Toshmuhammad Sarimsoqov$$, $$Matematik olim, akademik$$, 1915, 1995,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Toshmuhammad Sarimsoqov (1915–1995) — o'zbek matematigi, O'zbekiston Fanlar akademiyasi akademigi va prezidenti (1946–52), universitet rektori. U ehtimollar nazariyasi bo'yicha tadqiqotlari hamda topologiya va funksional analiz bo'yicha Toshkent ilmiy maktabiga asos solgani bilan mashhur.$$,
 $$Assalomu alaykum, aziz farzand! Men matematik olim, akademik Toshmuhammad Sarimsoqovman. Mendan ehtimollar nazariyasi, universitetdagi rektorlik yillarim va Fanlar akademiyasidagi ishlarim haqida so'ra!$$,
 $$🧮$$, $$["sarimsoqov", "sarim", "matematik", "ehtimol", "akademi", "rektor"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1915-yil 9-oktyabrda Andijon viloyatining Shahrixon qishlog'ida tug'ilganman.$$, $$["tugil", "tavallud", "shahrixon", "andijon", "1915"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Sarimsoqov$$, TRUE,
       $$Toshmuhammad Sarimsoqov qachon va qayerda tug'ilgan?$$, $$Toshmuhammad Sarimsoqov 1915-yil 9-oktyabrda Andijon viloyatining Shahrixon qishlog'ida dunyoga kelgan. Keyinchalik u O'zbekistonning eng mashhur matematik olimlaridan biriga aylangan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'qishim va rektorlik$$, $$Men 1936-yilda O'rta Osiyo universitetini tugatganman. Shu universitetda assistent, dotsent, professor va kafedra mudiri bo'lib ishlaganman, keyinchalik universitet rektori bo'lganman. 1942-yilda fizika-matematika fanlari doktori va professor bo'lganman.$$, $$["universitet", "rektor", "oqi", "doktor", "1936"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Sarimsoqov$$, TRUE,
       $$Sarimsoqov qayerda o'qigan va qanday lavozimlarda ishlagan?$$, $$Sarimsoqov 1936-yilda O'rta Osiyo universitetini tugatgan va shu dargohda assistentlikdan rektorlikkacha bo'lgan yo'lni bosib o'tgan. U 1942-yilda fizika-matematika fanlari doktori ilmiy darajasini va professor unvonini olgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilmiy ishlarim$$, $$Ilmiy ishlarim ehtimollar nazariyasi, geofizika va meteorologiya masalalariga bag'ishlangan. Topologiya va funksional analiz bo'yicha Toshkent ilmiy maktabiga asos solganman hamda yarim maydonlar nazariyasi va uning ehtimollar nazariyasiga tatbiqini ishlab chiqqanman.$$, $$["ehtimol", "topologiya", "funksional", "maktab", "nazariya", "maydon"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Sarimsoqov$$, TRUE,
       $$Sarimsoqov qaysi ilmiy sohalarda ish olib borgan?$$, $$Sarimsoqovning tadqiqotlari ehtimollar nazariyasi, geofizika va meteorologiyaga bag'ishlangan. U topologiya va funksional analiz bo'yicha Toshkent ilmiy maktabining asoschisi bo'lib, yarim maydonlar nazariyasi va uning ehtimollar nazariyasiga tatbiqini ishlab chiqqan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Fanlar akademiyasida$$, $$1943-yilda O'zbekiston Fanlar akademiyasi akademigi bo'lganman. Akademiyada avval vitse-prezident, keyin prezident bo'lib ishlaganman — bu vazifalarda 1943-yildan 1952-yilgacha xizmat qilganman.$$, $$["akademi", "prezident", "vitse", "1943", "1946"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Sarimsoqov$$, TRUE,
       $$Sarimsoqov Fanlar akademiyasida qanday lavozimlarda ishlagan?$$, $$Sarimsoqov 1943-yilda O'zbekiston Fanlar akademiyasi akademigi bo'lgan va akademiyada vitse-prezident, so'ngra prezident lavozimlarida ishlagan. Manbalar prezidentlik boshlangan yilni turlicha ko'rsatadi: Sarimsoqov haqidagi maqolada 1946-yil, akademiyaning birinchi prezidenti Toshmuhammad Qori-Niyoziy haqidagi maqolada esa u 1947-yilgacha shu vazifada bo'lgani aytiladi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'lim vaziri$$, $$1959–1971-yillarda O'zbekiston oliy va o'rta maxsus ta'lim vaziri bo'lib ishlaganman.$$, $$["vazir", "talim", "oliy", "maxsus", "1959"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Sarimsoqov$$, TRUE,
       $$Sarimsoqov qanday davlat lavozimida ishlagan?$$, $$Sarimsoqov 1959–1971-yillarda O'zbekiston oliy va o'rta maxsus ta'lim vaziri bo'lgan. Bundan oldin u universitet rektori lavozimida ham ishlagan edi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mukofotlarim$$, $$Beruniy nomidagi O'zbekiston Davlat mukofotiga ikki marta — 1967 va 1992-yillarda sazovor bo'lganman. 1990-yilda Mehnat Qahramoni unvonini olganman.$$, $$["mukofot", "beruniy", "qahramon", "unvon", "laureat"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Sarimsoqov$$, TRUE,
       $$Sarimsoqov qanday mukofotlar olgan?$$, $$Sarimsoqov Beruniy nomidagi O'zbekiston Davlat mukofotiga ikki marta — 1967 va 1992-yillarda sazovor bo'lgan. 1990-yilda u Mehnat Qahramoni unvoni bilan taqdirlangan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Umrimning so'nggi yillarida, 1988-yildan boshlab, Fanlar akademiyasi Prezidiumida maslahatchi bo'lib ishlaganman. Men 1995-yil 17-dekabrda Toshkent shahrida vafot etganman.$$, $$["vafot", "1995", "dekabr", "oxir"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Sarimsoqov$$, TRUE,
       $$Sarimsoqov qachon vafot etgan?$$, $$Toshmuhammad Sarimsoqov 1995-yil 17-dekabrda Toshkent shahrida vafot etgan. Umrining oxirida, 1988-yildan boshlab, u O'zbekiston Fanlar akademiyasi Prezidiumida maslahatchi bo'lib ishlagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Toshmuhammad Sarimsoqov qaysi fan sohasining olimi bo'lgan?$$, $$["Kimyo", "Matematika", "Tarix", "Biologiya"]$$::jsonb, 1, $$Sarimsoqov yirik matematik olim bo'lgan: uning ishlari ehtimollar nazariyasiga bag'ishlangan, u topologiya va funksional analiz bo'yicha Toshkent ilmiy maktabiga asos solgan.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Sarimsoqov 1946–1952-yillarda qanday lavozimda ishlagan?$$, $$["O'zbekiston Fanlar akademiyasi prezidenti", "Universitet rektori", "Oliy va o'rta maxsus ta'lim vaziri", "Kafedra mudiri"]$$::jsonb, 0, $$1946–1952-yillarda Sarimsoqov O'zbekiston Fanlar akademiyasi prezidenti bo'lgan. Rektorlik va vazirlik (1959–71) lavozimlarida u boshqa yillarda ishlagan.$$
  FROM heroes h WHERE h.slug = 'toshmuhammad-sarimsoqov';


-- ═══════════ Ubay Orifov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('ubay-orifov', $$Ubay Orifov$$, $$Fizik olim, akademik$$, 1905, 1976,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Ubay Orifov — fizik olim, davlat va jamoat arbobi, O'zbekiston Fanlar akademiyasining akademigi (1956) va prezidenti (1962–1966). U Yadro fizikasi hamda Elektronika institutlariga direktorlik qilgan, atom zarralarining qattiq jismlar sirti bilan o'zaro ta'sirini o'rgangan.$$,
 $$Assalomu alaykum, aziz farzand! Men Ubay Orifovman — fizik olim, O'zbekiston Fanlar akademiyasining akademigiman. Mendan atom zarralari siri, Yadro fizikasi instituti va quyosh energiyasi haqida so'ra!$$,
 $$⚛️$$, $$["orifo", "ubay", "fizik", "yadro", "akadem", "quyosh"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1905-yil 15-iyunda Qo'qon shahrida tug'ilganman. Keyinchalik fizik olim, davlat va jamoat arbobi bo'lib yetishganman.$$, $$["tugil", "tavallud", "qoqon", "quqon", "1905"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifov qachon va qayerda tug'ilgan?$$, $$«O'zbekiston Milliy Ensiklopediyasi»ga ko'ra, Ubay Orifovich Orifov 1905-yil 15-iyunda Qo'qonda tug'ilgan. U fizik olim, davlat va jamoat arbobi sifatida tanilgan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'qishim va ilmiy darajalarim$$, $$Men 1931-yilda O'zbekiston pedagogika akademiyasini tugatganman, so'ng Qo'qon paxtachilik institutida (1932–34) va O'zDUda (1935–41) ishlaganman. 1954-yilda fizika-matematika fanlari doktori, 1956-yilda professor bo'lganman.$$, $$["oqi", "oqig", "pedagog", "tahsil", "doktor", "professor"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifov qayerda o'qigan va qanday ilmiy darajalarga erishgan?$$, $$U 1931-yilda O'zbekiston pedagogika akademiyasini tugatib, Qo'qon paxtachilik institutida (1932–34) va O'zDUda (1935–41) ishlagan. 1954-yilda fizika-matematika fanlari doktori, 1956-yilda professor bo'lgan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yadro fizikasi instituti$$, $$Men O'zbekiston Fanlar akademiyasining Yadro fizikasi institutiga direktor bo'lganman (1956–62 va 1967–69-yillarda). Bundan tashqari, Fizika-texnika institutida ishlaganman (1945–56, 1963–67) va Elektronika institutiga ham direktorlik qilganman (1966–76).$$, $$["yadro", "institut", "direktor", "elektron", "rahbar"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifov qaysi institutlarga rahbarlik qilgan?$$, $$U O'zbekiston FA Yadro fizikasi instituti direktori (1956–62, 1967–69) va Elektronika instituti direktori (1966–76) bo'lgan, Fizika-texnika institutida ham ishlagan (1945–56, 1963–67). Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Fanlar akademiyasi prezidenti$$, $$Men 1956-yilda O'zbekiston Fanlar akademiyasining akademigi bo'lganman, 1962–1966-yillarda esa O'zbekiston Fanlar akademiyasining prezidenti bo'lib ishlaganman.$$, $$["akadem", "prezident", "fanlar", "saylan", "1962"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifov Fanlar akademiyasida qanday lavozimlarda bo'lgan?$$, $$Ubay Orifov 1956-yildan O'zbekiston FA akademigi, 1962–1966-yillarda esa O'zbekiston FA prezidenti bo'lgan. U davlat va jamoat arbobi sifatida ham faoliyat yuritgan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilmiy yo'nalishlarim$$, $$Mening asosiy ilmiy ishlarim fizik elektronika, yadroviy va radiatsion fizika, gelioenergetika hamda paxta xom ashyosiga dastlabki ishlov berish masalalariga bag'ishlangan.$$, $$["ilmiy", "yonalish", "soha", "radiatsion", "gelioenerg", "tadqiqot"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifovning asosiy ilmiy yo'nalishlari qanday bo'lgan?$$, $$Uning asosiy ilmiy ishlari fizik elektronika, yadroviy va radiatsion fizika, gelioenergetika hamda paxta xom ashyosiga dastlabki ishlov berish masalalariga bag'ishlangan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Atom zarralari kashfiyotlarim$$, $$Men qattiq jismga atom zarralari ta'sir etganda ro'y beradigan ko'plab murakkab jarayonlarni o'rganganman: ikkilamchi ionlar va elektronlarning har xil guruhlarini topib ajratganman, qattiq jismlar sirtining xossalarini o'zgartirish usullarini aniqlaganman. Shu asosda elektron texnika, mikroelektronika va mashinasozlik materiallariga ishlov berish usullari yaratilgan.$$, $$["atom", "zarra", "ion", "elektron", "sirt", "mikro", "kashfiyot"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifov fizikada qanday kashfiyotlar qilgan?$$, $$U fanda hali noma'lum bo'lgan hodisalarni — qattiq jismga atom zarralari ta'sirida yuz beruvchi murakkab jarayonlarni, ikkilamchi ionlar va elektronlarning har xil guruhlarini topish va ajratishni, qattiq jismlar sirtining xossalarini o'zgartirish usullarini aniqlagan. Shu asosda elektron texnika, mikroelektronika va mashinasozlik materiallariga ishlov berish usullari yaratilgan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Quyosh energiyasi va paxta$$, $$Men paxtachilik va paxta sanoati taraqqiyotiga hamda xalq xo'jaligida quyosh energiyasidan foydalanish muammolariga katta e'tibor berganman. Rahbarligimdagi tadqiqotlar natijasida urug'lik va texnik chigitni to'la tuksizlantirish, ularni saralash va tozalash muammolari hal etilgan, quyosh energiyasini elektr energiyasiga aylantirish va geliotexnik qurilmalar yaratish bo'yicha ishlar amalga oshirilgan. Mening tashabbusim bilan 1965-yildan Toshkentda «Geliotexnika» xalqaro jurnali nashr etila boshlagan.$$, $$["quyosh", "gelio", "energ", "paxta", "chigit", "jurnal"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifov quyosh energiyasi va paxtachilik uchun nima qilgan?$$, $$Uning rahbarligidagi tadqiqotlar natijasida urug'lik va texnik chigitni to'la tuksizlantirish, saralash va tozalash muammolari hal etilgan, quyosh energiyasini elektr energiyasiga aylantirish va geliotexnik qurilmalar yaratish bo'yicha ishlar amalga oshirilgan. Uning tashabbusi bilan 1965-yildan boshlab Toshkentda «Geliotexnika» xalqaro jurnali nashr etila boshlangan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim va mukofotlarim$$, $$Men atom zarralarining metall va qattiq jism sirti bilan o'zaro ta'siriga oid kitoblar yozganman: «Vzaimodeystvie atomnyx chastits s poverxnostyu metalla» (Toshkent, 1961) va «Vzaimodeystvie atomnyx chastits s poverxnostyu tverdogo tela» (Moskva, 1968). 1959-yilda menga O'zbekistonda xizmat ko'rsatgan fan va texnika arbobi unvoni berilgan, 1968-yilda esa Beruniy nomidagi O'zbekiston Davlat mukofoti laureati bo'lganman.$$, $$["asar", "kitob", "yoz", "mukofot", "beruniy", "unvon"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifov qanday asarlar yozgan va qanday mukofotlar olgan?$$, $$Uning atom zarralarining metall va qattiq jism sirti bilan o'zaro ta'siriga bag'ishlangan kitoblari 1961-yilda Toshkentda va 1968-yilda Moskvada nashr etilgan. U 1959-yilda O'zbekistonda xizmat ko'rsatgan fan va texnika arbobi unvonini olgan, 1968-yilda Beruniy nomidagi O'zbekiston Davlat mukofoti laureati bo'lgan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1976-yil 24-dekabrda Toshkent shahrida vafot etganman. Vafotimdan so'ng O'zbekiston Fanlar akademiyasining Elektronika institutiga va Toshkentning Yunusobod tumanidagi ko'chalardan biriga mening nomim berilgan.$$, $$["vafot", "umr", "oxir", "xotira", "kocha"]$$::jsonb, $$Ziyouz.com kutubxonasi — «O'zbekiston Milliy Ensiklopediyasi», O harfi: «Orifov Ubay Orifovich» maqolasi$$, TRUE,
       $$Ubay Orifov qachon vafot etgan va uning xotirasi qanday abadiylashtirilgan?$$, $$Ubay Orifov 1976-yil 24-dekabrda Toshkentda vafot etgan. O'zbekiston FA Elektronika institutiga va Toshkent shahrining Yunusobod tumanidagi ko'chalardan biriga uning nomi berilgan. Manba: Ziyouz.com kutubxonasi, «O'zbekiston Milliy Ensiklopediyasi», O harfi, «Orifov Ubay Orifovich» maqolasi.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ubay Orifov qaysi shaharda tug'ilgan?$$, $$["Toshkent", "Qo'qon", "Samarqand", "Buxoro"]$$::jsonb, 1, $$«O'zbekiston Milliy Ensiklopediyasi»ga ko'ra, Ubay Orifov 1905-yil 15-iyunda Qo'qon shahrida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ubay Orifov tashabbusi bilan 1965-yildan Toshkentda qaysi xalqaro jurnal nashr etila boshlangan?$$, $$["«Geliotexnika»", "«Yadro fizikasi»", "«Fan va turmush»", "«Elektronika olami»"]$$::jsonb, 0, $$U quyosh energiyasidan foydalanish masalalariga katta e'tibor bergan va uning tashabbusi bilan 1965-yildan Toshkentda «Geliotexnika» xalqaro jurnali nashr etila boshlangan.$$
  FROM heroes h WHERE h.slug = 'ubay-orifov';


-- ═══════════ Yahyo G'ulomov ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('yahyo-gulomov', $$Yahyo G'ulomov$$, $$Tarixchi-arxeolog akademik$$, 1908, 1977,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Yahyo G'ulomov (1908–1977) — tarixchi-arxeolog olim, O'zbekiston Fanlar akademiyasi akademigi. U Xorazmning sug'orilish tarixini o'rgangan va O'zbekistonda tarix hamda arxeologiya bo'yicha o'ziga xos ilmiy maktab yaratgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Yahyo G'ulomovman — tarixchi-arxeolog olim, O'zbekiston Fanlar akademiyasi akademigiman. Mendan arxeologik qazishmalar, qadimiy shaharlar va Xorazmning sug'orilish tarixi haqida so'ra!$$,
 $$🏺$$, $$["arxeolog", "gulom", "yahyo", "xorazm", "akademik", "qazish"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1908-yil 5-yanvarda Toshkent shahrida tug'ilganman.$$, $$["tugil", "tavallud", "toshk", "yanvar"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yahyo G'ulomov$$, TRUE,
       $$Yahyo G'ulomov qachon va qayerda tug'ilgan?$$, $$Yahyo G'ulomov 1908-yil 5-yanvarda Toshkentda tug'ilgan. U keyinchalik O'zbekistonning atoqli tarixchi-arxeolog olimiga aylangan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'lim yo'lim$$, $$Men 1926-yilda Toshkentdagi O'zbekiston yerlar bilim yurtini, 1930-yilda esa Samarqanddagi O'zbekiston Pedagogika akademiyasini tugatganman. 1931–1932-yillarda Toshkent pedagogika texnikumida o'qituvchi bo'lib ishlaganman.$$, $$["talim", "oqi", "samar", "pedagog", "bilim", "texnikum"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yahyo G'ulomov$$, TRUE,
       $$Yahyo G'ulomov qayerlarda o'qigan?$$, $$U 1926-yilda Toshkentdagi O'zbekiston yerlar bilim yurtini, 1930-yilda Samarqanddagi O'zbekiston Pedagogika akademiyasini tamomlagan. 1931–1932-yillarda Toshkent pedagogika texnikumida o'qituvchilik qilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xorazm ekspeditsiyasi$$, $$1938–1950-yillarda Xorazm arxeologiya-etnografiya ekspeditsiyasida boshliq o'rinbosari sifatida qatnashganman. U yerda Xorazmning sug'orilish, dehqonchilik va shahar madaniyatining shakllanishi tarixini o'rganganman.$$, $$["xorazm", "xoraz", "sugor", "ekspeditsi", "dehqon"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yahyo G'ulomov$$, TRUE,
       $$Yahyo G'ulomov Xorazm ekspeditsiyasida nima ish qilgan?$$, $$1938–1950-yillarda u Xorazm arxeologiya-etnografiya ekspeditsiyasi boshlig'ining o'rinbosari bo'lgan. Ekspeditsiyada Xorazmning sug'orilish, dehqonchilik va shahar madaniyatining shakllanishi hamda rivojlanish tarixi bo'yicha ilmiy tekshiruvlar olib borgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Arxeologik qazishmalarim$$, $$1936-yildan boshlab Toshkent, Buxoro, Samarqand, Farg'ona va boshqa joylardagi bir necha arxeologik ekspeditsiyalarga rahbarlik qilganman. Zarafshon va Farg'ona vodiylarida, Toshkent vohasida ham ilmiy izlanishlar olib borganman.$$, $$["qazish", "qazilma", "arxeolog", "buxor", "fargo", "zaraf"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yahyo G'ulomov$$, TRUE,
       $$Yahyo G'ulomov qayerlarda arxeologik qazishmalar o'tkazgan?$$, $$U 1936-yildan Toshkent, Buxoro, Samarqand, Farg'ona va boshqa hududlardagi bir necha arxeologik ekspeditsiyalarga rahbarlik qilgan. Zarafshon va Farg'ona vodiylari hamda Toshkent vohasi uning ilmiy izlanish maydonlari bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kitoblarim va asarlarim$$, $$1941-yilda «Xiva shahrining yodgorliklari» asarimni yozganman. «Quyi Zarafshon vodiysida ibtidoiy madaniyat va sug'orma dehqonchilikning paydo bo'lishi» nomli kitobim ham bor. Ko'p jildli «O'zbekiston tarixi», «Samarqand tarixi» va «Buxoro tarixi» kitoblarining asosiy mualliflaridan biriman.$$, $$["asar", "kitob", "yoz", "xiva", "yodgorlik"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yahyo G'ulomov$$, TRUE,
       $$Yahyo G'ulomov qanday asarlar yozgan?$$, $$Uning «Xiva shahrining yodgorliklari» (1941) va «Quyi Zarafshon vodiysida ibtidoiy madaniyat va sug'orma dehqonchilikning paydo bo'lishi» asarlari bor. U to'rt jildli «O'zbekiston tarixi», ikki jildli «Samarqand tarixi» va «Buxoro tarixi» kitoblarining asosiy mualliflaridan biri. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilmiy unvonlarim$$, $$1950-yilda tarix fanlari doktori, 1955-yilda professor bo'lganman. 1958-yilda O'zbekistonda xizmat ko'rsatgan fan arbobi unvonini olganman, 1966-yilda esa O'zbekiston Fanlar akademiyasiga akademik etib saylanganman.$$, $$["akademik", "unvon", "doktor", "professor", "fan"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yahyo G'ulomov$$, TRUE,
       $$Yahyo G'ulomov qanday ilmiy unvonlarga ega bo'lgan?$$, $$U 1950-yilda tarix fanlari doktori, 1955-yilda professor unvonini olgan. 1958-yilda O'zbekistonda xizmat ko'rsatgan fan arbobi, 1966-yilda O'zbekiston Fanlar akademiyasi akademigi bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilmiy maktabim$$, $$1943-yildan O'zbekiston Fanlar akademiyasi Tarix va arxeologiya institutida qadimiy va o'rta asrlar tarixi bo'limiga mudirlik qilganman, 1956–1959-yillarda esa shu institut direktori vazifasini bajarganman. O'zbekistonda tarix va arxeologiya bo'yicha o'ziga xos baynalmilal ilmiy maktab yaratganman.$$, $$["maktab", "institut", "direktor", "mudir", "shogird"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yahyo G'ulomov$$, TRUE,
       $$Yahyo G'ulomov qayerda ishlagan va qanday ilmiy maktab yaratgan?$$, $$U 1943-yildan O'zbekiston Fanlar akademiyasi Tarix va arxeologiya instituti qadimiy va o'rta asrlar tarixi bo'limi mudiri bo'lgan, 1956–1959-yillarda esa institut direktori vazifasini bajargan. O'zbekistonda tarix va arxeologiya sohalari bo'yicha o'ziga xos baynalmilal ilmiy maktab yaratgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1977-yil 1-oktabrda vafot etganman. Butun umrimni O'zbekiston tarixini va qadimiy yodgorliklarini o'rganishga bag'ishlaganman.$$, $$["vafot", "umr", "oxir", "xotira"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yahyo G'ulomov$$, TRUE,
       $$Yahyo G'ulomov qachon vafot etgan?$$, $$Yahyo G'ulomov 1977-yil 1-oktabrda vafot etgan. Vafotidan keyin, 2002-yilda «Buyuk xizmatlari uchun» ordeni bilan mukofotlangan, Toshkentdagi ko'chalardan biriga va O'zbekiston Fanlar akademiyasi Arxeologiya institutiga uning nomi berilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Yahyo G'ulomov 1938–1950-yillarda qaysi ekspeditsiyada qatnashgan?$$, $$["Pomir geologiya ekspeditsiyasi", "Xorazm arxeologiya-etnografiya ekspeditsiyasi", "Orol dengizi ekspeditsiyasi", "Sibir etnografiya ekspeditsiyasi"]$$::jsonb, 1, $$U 1938–1950-yillarda Xorazm arxeologiya-etnografiya ekspeditsiyasi boshlig'ining o'rinbosari sifatida qatnashib, Xorazmning sug'orilish, dehqonchilik va shahar madaniyati tarixini o'rgangan.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Yahyo G'ulomov qaysi yili O'zbekiston Fanlar akademiyasi akademigi bo'lgan?$$, $$["1950-yilda", "1958-yilda", "1966-yilda", "1977-yilda"]$$::jsonb, 2, $$U 1966-yilda O'zbekiston Fanlar akademiyasi akademigi etib saylangan. 1950-yilda tarix fanlari doktori, 1958-yilda esa O'zbekistonda xizmat ko'rsatgan fan arbobi bo'lgan edi.$$
  FROM heroes h WHERE h.slug = 'yahyo-gulomov';


-- ═══════════ Yunus Rajabiy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('yunus-rajabiy', $$Yunus Rajabiy$$, $$Musiqashunos, xalq artisti$$, 1897, 1976,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Yunus Rajabiy — o'zbek musiqa san'atining ulkan namoyandasi: xonanda, sozanda va bastakor. U «Shashmaqom»ni nota yozuviga tushirib olti jildda nashr ettirgan, O'zbekiston xalq artisti va Fanlar akademiyasi akademigi bo'lgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Yunus Rajabiyman — xonanda, sozanda va «Shashmaqom»ni yozib olgan musiqa ustoziman. Mendan «Shashmaqom», maqom ansambli va xalq qo'shiqlari haqida so'ra!$$,
 $$🪕$$, $$["rajab", "yunus", "maqom", "musiq", "dutor", "qoshiq"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1897-yil 17-yanvarda Toshkent shahrida tug'ilganman. Yoshligimdan shirali ovozim bilan xonanda sifatida tanilganman, nay va dutor chalishni o'rganganman.$$, $$["tugil", "tavallud", "toshkent", "qachon", "1897"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yunus Rajabiy$$, TRUE,
       $$Yunus Rajabiy qachon va qayerda tug'ilgan?$$, $$Yunus Rajabiy 1897-yil 5 (17)-yanvarda Toshkentda tug'ilgan. U yoshligidanoq shirali va ta'sirchan ovozi bilan iste'dodli xonanda hamda nay va dutor chaluvchi mohir sozanda sifatida tanilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'lim olishim$$, $$Avval madrasada o'qiganman, 1919-1923-yillarda esa Turkiston xalq konservatoriyasida tahsil olganman. Dutor chalishni Mirza Qosimdan, xalq kuylarini Hoji Abdulaziz kabi ustozlardan o'rganganman.$$, $$["talim", "oqi", "madrasa", "ustoz", "mirza"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yunus Rajabiy$$, TRUE,
       $$Yunus Rajabiy qayerda ta'lim olgan?$$, $$U madrasada, so'ng 1919-1923-yillarda Turkiston xalq konservatoriyasida o'qigan, 1940-1941-yillarda Moskvada bastakorlik kursida malaka oshirgan. Musiqa merosini Sh. Shoumarov, Hoji Abdulaziz, To'ychi hofiz, Domla Halim kabi ustozlardan o'rgangan. 1923-1925-yillarda Samarqand pedagogika bilim yurtida musiqa o'qituvchisi bo'lib ishlagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Radio ansamblim$$, $$1927-yilda O'zbekiston radiokomiteti qoshida xalq cholg'u asboblari ansamblini tashkil etganman va unga ko'p yillar badiiy rahbarlik qilganman. Radio orqali xalq kuylarini butun elga yetkazganman.$$, $$["radio", "ansambl", "cholgu", "rahbar", "kuy"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yunus Rajabiy$$, TRUE,
       $$Yunus Rajabiy radioda qanday jamoa tuzgan?$$, $$U 1927-1942 va 1945-1959-yillarda O'zbekiston radiokomiteti qoshidagi xalq cholg'u asboblari ansambli (keyinchalik xalq cholg'ulari orkestri)ning tashkilotchisi va rahbari bo'lgan. 1942-1945-yillarda Yangiyo'l teatrida musiqa rahbari bo'lib ishlagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Shashmaqom»ni yozib olganim$$, $$Umrim davomida «Shashmaqom» kuy va ashulalarini to'plab, nota yozuviga tushirganman — bu merosim olti jild bo'lib nashr etilgan. Besh jildlik «O'zbek xalq musiqasi» to'plamini ham tayyorlaganman, unga mingga yaqin kuy kirgan.$$, $$["shashmaqom", "maqom", "nota", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yunus Rajabiy$$, TRUE,
       $$Yunus Rajabiy «Shashmaqom»ni qanday saqlab qolgan?$$, $$Yunus Rajabiy 1935-yildan xalq musiqasini notaga yoza boshlagan. «Shashmaqom»ning u tayyorlagan nashri 1966-1974-yillarda F. Karomatov muharrirligida 6 jildda chop etilgan. 1955-1959-yillarda esa I. A. Akbarov muharrirligida 5 jildlik «O'zbek xalq musiqasi» to'plami nashr etilgan bo'lib, unda 1000 ga yaqin kuy va qo'shiq jamlangan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Maqom» ansambli$$, $$1959-yilda «Maqom» ansambliga asos solganman va umrimning oxirigacha unga badiiy rahbarlik qilganman. Shogirdlarim orasida B. Dovidova, K. Ismoilova, K. Jabborov kabi san'atkorlar bor.$$, $$["maqom", "ansambl", "shogird", "rahbar", "1959"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yunus Rajabiy$$, TRUE,
       $$Yunus Rajabiy qaysi mashhur ansamblga asos solgan?$$, $$U 1959-1976-yillarda O'zbekiston teleradiosining «Maqom» ansambli tashkilotchisi va badiiy rahbari bo'lgan. Shogirdlari orasida T. Sodiqov, D. Zokirov, K. Jabborov, B. Dovidova, K. Ismoilova kabi san'atkorlar bor. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ijodim va asarlarim$$, $$Men bir qancha qadimiy o'zbek xalq kuy va ashulalarini qayta ishlab tiklaganman: «Girya», «Ushshoq», «Ko'cha bog'i», «Chorgoh» shular jumlasidan. «Farhod va Shirin», «Layli va Majnun» kabi musiqali dramalar musiqasini yaratishda ham qatnashganman.$$, $$["asar", "kitob", "yoz", "qoshiq", "ashula", "drama"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yunus Rajabiy$$, TRUE,
       $$Yunus Rajabiy qanday asarlar yaratgan?$$, $$U «Girya», «Ushshoq», «Ko'cha bog'i», «Chorgoh», «Bizning davron», «O'zbekiston» kabi ko'plab kuy va ashulalarni ijro etgan, yaratgan hamda qayta ishlagan. Hamkorlikda «Farhod va Shirin», «Layli va Majnun», «Muqanna», «Nodira» musiqali dramalari va «Zaynab va Omon» operasi musiqasiga hissa qo'shgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvonlarim$$, $$1953-yilda menga O'zbekiston xalq artisti unvoni berilgan. 1966-yilda Fanlar akademiyasiga akademik etib saylanganman, 1971-yilda esa Hamza nomidagi davlat mukofotiga sazovor bo'lganman.$$, $$["artist", "akademik", "unvon", "mukofot", "hamza"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yunus Rajabiy$$, TRUE,
       $$Yunus Rajabiy qanday unvon va mukofotlar olgan?$$, $$Yunus Rajabiy 1953-yilda O'zbekiston xalq artisti unvonini olgan, 1966-yilda O'zbekiston Fanlar akademiyasi akademigi etib saylangan. 1971-yilda Hamza nomidagi O'zbekiston Davlat mukofoti laureati bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1976-yil 23-aprelda vafot etganman. Butun umrimni o'zbek xalq musiqasini to'plash, saqlash va kelajak avlodga yetkazishga bag'ishlaganman.$$, $$["vafot", "olim", "oxir", "1976"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Yunus Rajabiy$$, TRUE,
       $$Yunus Rajabiy qachon vafot etgan?$$, $$Yunus Rajabiy 1976-yil 23-aprelda vafot etgan. 1997-yilda Toshkentda uning uy-muzeyi ochilgan, 2001-yilda Yunus Rajabiy madaniyat markazi tashkil etilgan; Toshkent metrosining bir bekati va ko'chaga uning nomi berilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Yunus Rajabiy qaysi buyuk musiqiy merosni nota yozuviga tushirib, olti jildda nashr ettirgan?$$, $$["«Alpomish» dostonini", "«Shashmaqom»ni", "«Boburnoma»ni", "«Xamsa»ni"]$$::jsonb, 1, $$Yunus Rajabiy «Shashmaqom»ni to'plab nota yozuviga tushirgan va u 1966-1974-yillarda olti jildda nashr etilgan.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Yunus Rajabiy 1959-yilda qaysi jamoaga asos solgan?$$, $$["Yosh tomoshabinlar teatriga", "Rassomlar uyushmasiga", "«Maqom» ansambliga", "Qo'g'irchoq teatriga"]$$::jsonb, 2, $$U 1959-yilda «Maqom» ansambliga asos solgan va 1976-yilgacha unga badiiy rahbarlik qilgan.$$
  FROM heroes h WHERE h.slug = 'yunus-rajabiy';


-- ═══════════ Yusuf Hamadoniy ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('yusuf-hamadoniy', $$Yusuf Hamadoniy$$, $$Xojagon silsilasining buyuk piri$$, 1048, 1140,
 NULL,
 $$Xoja Yusuf Hamadoniy (1048–1140) — tasavvuf ilmining buyuk namoyandasi, xojagon tariqatining ilk urug'larini tashlagan pir. U Buxoroda muridlarga ta'lim berib, Ahmad Yassaviy va Abdulxoliq G'ijduvoniy kabi buyuk so'fiylarni tarbiyalagan.$$,
 $$Assalomu alaykum, aziz farzand! Men Yusuf Hamadoniyman — Buxoroda muridlarga tasavvufdan saboq bergan pirman. Mendan shogirdlarim — Ahmad Yassaviy va Abdulxoliq G'ijduvoniy, xojagon silsilasi haqida so'ra!$$,
 $$📿$$, $$["yusuf", "hamad", "hamadoniy", "xojagon", "tasavvuf", "buxor"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1048-yilda tavallud topganman. Manbalarda meni hurmat bilan Xoja Yusuf Hamadoniy deb atashadi. Butun umrimni ilm o'rganish va shogird tarbiyalashga bag'ishlaganman.$$, $$["tugil", "tavallud", "1048", "dunyoga kel"]$$::jsonb, $$Ziyouz.com — Abdulxoliq G'ijduvoniy (1103–1179) sahifasi$$, TRUE,
       $$Yusuf Hamadoniy qachon tug'ilgan?$$, $$Ziyouz.com'dagi Abdulxoliq G'ijduvoniy sahifasida Xoja Yusuf Hamadoniyning yashagan yillari 1048–1140 deb ko'rsatilgan. Tug'ilgan joyi haqida bu sahifalarda batafsil ma'lumot berilmagan. Manba: Ziyouz.com, Abdulxoliq G'ijduvoniy sahifasi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Buxoroda ta'lim berishim$$, $$Men Buxoroga kelganimda muridlarga tasavvuf odoblaridan ta'lim berganman. O'sha davrda Buxoro Movarounnahrdagi ilm-ma'rifat markazlaridan biri edi, u yerga Turkistonning turli tomonlaridan tolibi ilmlar yig'ilardi. Zamondoshlarim meni davrning peshqadam olimi va so'fiysi deb bilishgan.$$, $$["buxor", "murid", "talim", "tasavvuf", "movaroun"]$$::jsonb, $$Ziyouz.com — Abdulxoliq G'ijduvoniy (1103–1179) sahifasi$$, TRUE,
       $$Yusuf Hamadoniy Buxoroda nima qilgan?$$, $$Ziyouz.com'dagi Ahmad Yassaviy sahifasida Buxoro o'sha zamonlarda ilm-ma'rifatning Movarounnahrdagi markazlaridan bo'lgani, u yerga Turkistonning turli tomonlaridan tolibi ilmlar yig'ilgani va Yusuf Hamadoniy davrning eng peshqadam olimi va so'fiysi bo'lgani yozilgan. A. Jo'zjoniy maqolasida ham u Buxoroga kelgani aytiladi. Manba: Ziyouz.com, Ahmad Yassaviy sahifasi va A. Jo'zjoniy maqolasi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mashhur shogirdlarim$$, $$Muridlarim qatoridan Xoja Abdulxoliq G'ijduvoniy, Abdulloh Barqiy, Xoja Hasan Andoqiy va Xoja Ahmad Yassaviy kabi so'fiylar o'rin olgan. Abdulxoliq G'ijduvoniy mening to'rtinchi xalifam bo'lgan. Ularni o'z farzandlarimdek tarbiyalaganman.$$, $$["shogird", "tort", "barqi", "andoq", "xalifa"]$$::jsonb, $$Ziyouz.com — Abdulxoliq G'ijduvoniy (1103–1179) sahifasi$$, TRUE,
       $$Yusuf Hamadoniyning qanday shogirdlari bo'lgan?$$, $$Ziyouz.com'dagi Ahmad Yassaviy sahifasida Yassaviy Xoja Abdulxoliq G'ijduvoniy, Abdulloh Barqiy, Xoja Hasan Andoqiylar bilan hamsuhbat va hammaslak bo'lib, Yusuf Hamadoniy muridlari qatoridan o'rin olgani yozilgan. A. Jo'zjoniy maqolasida Abdulxoliq G'ijduvoniy uning to'rtinchi xalifasi sifatida xojalar tabaqasining sarhalqasi ekani aytiladi. Manba: Ziyouz.com, Ahmad Yassaviy sahifasi va A. Jo'zjoniy maqolasi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ahmad Yassaviyga ustozligim$$, $$Xoja Ahmad Yassaviy ustozi Arslon bob ko'rsatmasi bilan Buxoroga kelib, men bilan uchrashgan va menga murid tushgan. U suhbatlarimda Abdulxoliq G'ijduvoniy, Abdulloh Barqiy va Hasan Andoqiylar bilan birga tahsil olgan.$$, $$["yassav", "ahmad", "ustoz", "suhbat", "turkiston"]$$::jsonb, $$Ziyouz.com — Abdulxoliq G'ijduvoniy (1103–1179) sahifasi$$, TRUE,
       $$Ahmad Yassaviy Yusuf Hamadoniydan qanday ta'lim olgan?$$, $$Ziyouz.com'dagi Ahmad Yassaviy sahifasida u Arslon bob ko'rsatmasi bilan Buxoroga borib, davrning eng peshqadam olimi va so'fiysi shayx Yusuf Hamadoniy bilan uchrashib, unga murid tushgani yozilgan. Keyinchalik Yassaviy yassaviya tariqatining asoschisi bo'lgan. Manba: Ziyouz.com, Ahmad Yassaviy sahifasi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xojagon silsilasidagi o'rnim$$, $$Mendan keyin shogirdim Xoja Abdulxoliq G'ijduvoniy xojagon tariqatiga asos solgan, ammo bu ta'limotning ilk urug'larini men tashlaganman.$$, $$["xojagon", "silsila", "tariqat", "urug", "pir"]$$::jsonb, $$Ziyouz.com — Abdulxoliq G'ijduvoniy (1103–1179) sahifasi$$, TRUE,
       $$Xojagon silsilasida Yusuf Hamadoniyning o'rni qanday?$$, $$Ziyouz.com'dagi Abdulxoliq G'ijduvoniy sahifasida aytilishicha, xojagon tariqatini garchand Xoja Abdulxoliq asoslagan bo'lsa-da, uning ilk urug'lari Xoja Yusuf tomonidan tashlangan. A. Jo'zjoniy maqolasida bu silsila keyinchalik naqshbandiya tariqatiga ulanib ketgani yozilgan. Manba: Ziyouz.com, Abdulxoliq G'ijduvoniy sahifasi va A. Jo'zjoniy maqolasi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$G'ijduvoniyga pirligim$$, $$Men Buxoroga kelganimda 22 yoshli Abdulxoliq G'ijduvoniy men bilan uchrashib, menga shogird tushgan. Men uning suhbat va xirqa piri bo'lganman, u suluk usullarini kengroq miqyosda mendan o'zlashtirgan.$$, $$["gijduv", "abdulx", "xirqa", "22", "suluk"]$$::jsonb, $$Ziyouz.com — Abdulxoliq G'ijduvoniy (1103–1179) sahifasi$$, TRUE,
       $$Abdulxoliq G'ijduvoniy Yusuf Hamadoniyga qanday shogird bo'lgan?$$, $$Ziyouz.com'da yozilishicha, Abdulxoliq 22 yoshida Buxoroga kelgan o'sha davrning dongdor shayxi Xoja Yusuf Hamadoniy bilan uchrashib, unga shogird tushgan. Xojai Xizr uning saboq piri bo'lsa, Xoja Yusuf suhbat va xirqa piriga aylangan. Manba: Ziyouz.com, Abdulxoliq G'ijduvoniy sahifasi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Men haqimdagi asar$$, $$Men 1140-yilda vafot etganman. Vafotimdan keyin shogirdim Abdulxoliq G'ijduvoniy men haqimda «Maqomoti Yusuf Hamadoniy» nomli asar yozib qoldirgan.$$, $$["asar", "kitob", "yoz", "maqomot"]$$::jsonb, $$Ziyouz.com — Abdulxoliq G'ijduvoniy (1103–1179) sahifasi$$, TRUE,
       $$Yusuf Hamadoniy haqida qanday asar yozilgan?$$, $$Ziyouz.com kutubxonasining «Tasavvufga oid kitoblar» bo'limida Abdulxoliq G'ijduvoniy qalamiga mansub «Maqomoti Yusuf Hamadoniy» asari saqlanadi. Ziyouz'dagi G'ijduvoniy sahifasida uning «Risolai shayx ush-shuyux hazrati Yusuf Hamadoniy» nomli risolasi ham qayd etilgan. Manba: Ziyouz.com kutubxonasi va Abdulxoliq G'ijduvoniy sahifasi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Umrimning oxirida Buxorodan Xurosonga qaytib ketganman. Men 1140-yilda vafot etganman. Mendan keyin ta'limotim shogirdlarim orqali davom etgan.$$, $$["vafot", "1140", "xuroson", "oxir", "olamdan"]$$::jsonb, $$Ziyouz.com — Abdulxoliq G'ijduvoniy (1103–1179) sahifasi$$, TRUE,
       $$Yusuf Hamadoniy qachon vafot etgan?$$, $$Ziyouz.com'dagi Abdulxoliq G'ijduvoniy sahifasida Xoja Yusuf Hamadoniyning yashagan yillari 1048–1140 deb berilgan. Abdulxoliq G'ijduvoniy ustozi Xurosonga qaytib ketguniga qadar uning xizmat-mulozamatida bo'lgani yozilgan. Manba: Ziyouz.com, Abdulxoliq G'ijduvoniy sahifasi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Quyidagilardan qaysi biri Yusuf Hamadoniyning mashhur shogirdlari qatoriga kirmaydi?$$, $$["Ahmad Yassaviy", "Abdulxoliq G'ijduvoniy", "Hasan Andoqiy", "Alisher Navoiy"]$$::jsonb, 3, $$Ziyouz.com'dagi Ahmad Yassaviy sahifasida Yusuf Hamadoniy muridlari qatorida Xoja Abdulxoliq G'ijduvoniy, Abdulloh Barqiy, Xoja Hasan Andoqiy va Xoja Ahmad Yassaviy nomlari keltirilgan. Alisher Navoiy esa ancha keyin, XV asrda yashagan.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Yusuf Hamadoniy qaysi shaharda muridlarga tasavvufdan ta'lim bergan?$$, $$["Samarqand", "Buxoro", "Toshkent", "Xiva"]$$::jsonb, 1, $$Ziyouz.com sahifalarida u Buxoroga kelib muridlarga tasavvufdan ta'lim bergani aytiladi. O'sha davrda Buxoro Movarounnahrning ilm-ma'rifat markazlaridan biri edi va u yerga Turkistonning turli tomonlaridan tolibi ilmlar yig'ilardi.$$
  FROM heroes h WHERE h.slug = 'yusuf-hamadoniy';
