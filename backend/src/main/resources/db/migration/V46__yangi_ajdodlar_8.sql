-- Galereyaga yangi ajdodlar (8-partiya: XX asr va Mustaqillik ayollari).
-- Ma'lumotlar workflow agentlari tomonidan RUXSAT ETILGAN manbalardan
-- yig'ildi va mustaqil tekshiruvchi agent tomonidan qayta tekshirildi.
-- verified = TRUE — foydalanuvchi qarori (2026-08-01).
--
-- TEKSHIRUVCHI QAYDLARI (metodist uchun):
--   * FIXED (ozod-sharafiddinov): birth date corrected from '1929-yil 1-yanvar' to '1929-yil 1-mart' in the first fact and quiz Q1 explanation. Ziyouz's '1929.1.3' is O'zbekiston Milliy 
--   * FIXED (ozod-sharafiddinov): quiz Q2 distractor 'Tilshunoslik emas, fizika' replaced with plain 'Fizika' (the original was confusingly worded for children).
--   * FIXED (ozod-sharafiddinov): quiz Q10 distractor 'Davlat ordeni yo'q' replaced with 'Navoiy nomidagi mukofotni' (the original was not a parallel answer option).
--   * FIXED (halima-nosirova): death restructured into one dry sentence 'Men 2003-yilda Toshkentda vafot etganman.' inside the last fact (previously death was embedded mid-sentence as 'U
--   * VERIFIED (tamara-xonim): 1935 London International Folk Dance Festival participation confirmed (Royal Albert Hall, 17-19 July 1935; she traveled with Usta Olim Komilov and received
--   * VERIFIED (dilbar-abdurahmonova): 1 May 1936 (Moscow) - 20 March 2018 (Tashkent), first woman conductor of Uzbekistan, chief conductor of the Navoiy theater 1974-1990, People's Arti
--   * VERIFIED (halima-xudoyberdiyeva): Ziyouz page re-checked and confirms 17 May 1947 (Boyovut), 'Ilk muhabbat' 1968, ToshDU journalism 1972, Hamza prize 1990, 'O'zbekiston xalq shoiri
--   * VERIFIED (mukarrama-turgunboyeva): 'Bahor' founded 1957 confirmed in multiple sources. Remaining doubt for methodist: some sources say she was artistic director 'until 1979' (succe
--   * REMAINING DOUBT (zebo-ganiyeva): death_year=2010 is not confirmed in the single allowed source (UZA.uz article omits it) but is corroborated by independent sources (died 2010 in Mo
--   * REMAINING DOUBT (halima-nosirova): 'Bo'ron' premiere day '11-iyun 1939' kept - the year 1939 is corroborated independently (she became lead soloist of the theater in 1939), but the
--   * REMAINING DOUBT (tamara-xonim): '35 mingdan ortiq konsert' (wartime front concerts) refers to Uzbek artists collectively, as the fact already states; the figure was not re-verified
--   * STRUCTURE: dropped the stray empty 'quiz_note' field from mukarrama-turgunboyeva (not part of the schema). All heroes have 6-10 facts (zebo-ganiyeva has 9, the rest 10) and exactly
--   * LANGUAGE: programmatic scan of every string found zero Cyrillic characters; all text is Uzbek Latin. All facts are first-person, all death mentions are single dry sentences, and no
--   * ERA CODES (for methodist): dilbar-abdurahmonova and ozod-sharafiddinov are tagged 'mustaqillik' per the project brief although most of their careers predate 1991 - flagged in their

-- ===================== Tamara Xonim =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'tamara-xonim', $$Tamara Xonim$$, $$O'zbek raqsining birinchi qaldirg'ochi$$, 1906, 1991, e.id,
       $$Tamara Xonim (asl ismi Tamara Artyomovna Petrosyan) 1906-yilda Farg'onada tug'ilgan raqqosa, xonanda va baletmeyster. U Usta Olim Komilov va Mukarrama Turg'unboyeva bilan birga o'zbek professional raqs maktabi asoschilaridan biri bo'lib, o'zbek raqsini butun dunyoga tanitgan.$$, $$Assalomu alaykum! Men Tamara Xonimman — umrimni o'zbek raqsi va qo'shig'iga bag'ishlaganman. Mendan raqs san'ati, London festivali, ustozim Usta Olim Komilov va sahnadagi jasorat haqida bemalol so'rang!$$, $$💃$$, $$["tamara xonim", "tamaraxonim", "tamara petrosyan", "raqqosa", "xonanda", "farg'ona", "usta olim komilov", "london", "oltin medal", "raqs"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1906-yilda Farg'ona shahrida ishchi arman oilasida dunyoga kelganman. Asl ismim Tamara Artyomovna Petrosyan, ammo el meni Tamara Xonim deb biladi.$$, $$["1906", "farg'ona", "petrosyan", "arman", "tug'ilgan"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ansambldagi yagona ayol$$, $$1920-yilda xalq ashulachisi Muhiddin Qoriyoqubov tashkil qilgan ansamblda ayollardan faqat men bor edim — o'sha davrda ayol kishining sahnaga chiqishi katta jasorat hisoblanardi.$$, $$["1920", "qoriyoqubov", "ansambl", "ayol", "jasorat"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Birinchi Sharq qaldirg'ochi$$, $$Yoshligimdan musiqali drama spektakllarida artist, qo'shiqchi va raqqosa bo'lib qatnashganman, 1924-yildayoq menga «birinchi Sharq qaldirg'ochi» degan ta'rif berilgan.$$, $$["1924", "sharq qaldirg'ochi", "artist", "qo'shiqchi"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ustozim bilan darslik$$, $$Ustozim Usta Olim Komilov bilan 1927–1928-yillarda 120 ta usuldan tashkil topgan oyoq-qo'l harakatlari darsligini yaratganmiz — bu o'zbek raqsini o'rgatishda muhim qadam bo'ldi.$$, $$["usta olim komilov", "darslik", "120 usul", "doira"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Teatrda raqs truppasi$$, $$1929-yilda tashkil etilgan davlat o'zbek musiqiy teatrida raqs truppasini men boshqarganman — bu teatr keyinchalik Alisher Navoiy nomidagi katta teatrga aylangan.$$, $$["1929", "musiqiy teatr", "truppa", "navoiy teatri"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Londonda oltin medal$$, $$1935-yilda Londonda bo'lib o'tgan birinchi xalqaro raqs va musiqa san'ati festivalida jahonga noma'lum bo'lgan o'zbek san'atini namoyish etib, Usta Olim Komilov bilan birga oltin medalga sazovor bo'lganmiz.$$, $$["1935", "london", "festival", "oltin medal"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Urush yillarida$$, $$Ikkinchi jahon urushi yillarida frontdagi konsert brigadalarida qatnashganman — o'zbek san'atkorlari jangchilarga ruhiy madad berib, frontlarda 35 mingdan ortiq konsert bergan.$$, $$["urush", "front", "konsert", "brigada", "1941"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$86 millat qo'shig'i$$, $$Hindiston, Afg'oniston, Indoneziya va Pokiston kabi mamlakatlarda o'zbek san'atini targ'ib qilganman, o'zim ham u yerlardan qo'shiq va raqslar to'plaganman — ijodiy xazinam jahondagi 86 millatning qo'shiq va raqslari bilan boyigan.$$, $$["86 millat", "gastrol", "hindiston", "kolleksiya"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Uy-muzeyim$$, $$Toshkentdagi uyimda 1994-yilda xotira muzeyi tashkil etilgan — u yerda sahna liboslarim, mukofotlarim, suratlar va menga yozilgan maktublar saqlanadi.$$, $$["muzey", "1994", "toshkent", "liboslar"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xotiram$$, $$Men 1991-yilda vafot etganman. 2026-yilda tavalludimning 120 yilligi Alisher Navoiy nomidagi teatrda katta konsert bilan nishonlandi.$$, $$["1991", "xotira", "120 yillik", "konsert"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'tamara-xonim';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$Tamara Xonim qaysi shaharda tug'ilgan?$$,
 $$["Toshkentda", "Farg'onada", "Samarqandda", "Buxoroda"]$$, 1,
 $$U 1906-yilda Farg'ona shahrida ishchi arman oilasida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$Tamara Xonimning asl ismi nima edi?$$,
 $$["Tamara Ibrohimova", "Tamara Shakirova", "Tamara Petrosyan", "Tamara Karimova"]$$, 2,
 $$Asl ismi Tamara Artyomovna Petrosyan bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$1920-yilda Muhiddin Qoriyoqubov ansamblida ayollardan kim bor edi?$$,
 $$["Faqat Tamara Xonim", "Uch nafar raqqosa", "Hech kim", "O'n nafar qiz"]$$, 0,
 $$Ansambldagi yagona ayol Tamara Xonim edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$1924-yilda Tamara Xonimga qanday ta'rif berilgan?$$,
 $$["«Sahna malikasi»", "«Birinchi Sharq qaldirg'ochi»", "«Raqs yulduzi»", "«Oltin ovoz»"]$$, 1,
 $$Unga «birinchi Sharq qaldirg'ochi» degan ta'rif berilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$Tamara Xonim Usta Olim Komilov bilan yaratgan darslik nechta usuldan iborat edi?$$,
 $$["50 ta", "86 ta", "100 ta", "120 ta"]$$, 3,
 $$1927–1928-yillarda 120 ta usuldan iborat harakatlar darsligini yaratishgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$1935-yilgi London festivalida Tamara Xonim qanday mukofot olgan?$$,
 $$["Kumush medal", "Oltin medal", "Faxriy yorliq", "Bronza medal"]$$, 1,
 $$U Usta Olim Komilov bilan birga oltin medalga sazovor bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$London festivali qaysi yili bo'lib o'tgan?$$,
 $$["1929-yil", "1935-yil", "1941-yil", "1957-yil"]$$, 1,
 $$Birinchi xalqaro raqs va musiqa festivali 1935-yilda Londonda o'tgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$Tamara Xonimning ijodiy xazinasi nechta millat qo'shiq va raqslari bilan boyigan?$$,
 $$["25", "50", "86", "120"]$$, 2,
 $$U jahondagi 86 millatning qo'shiq va raqslarini to'plagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$Tamara Xonimning uy-muzeyi qachon tashkil etilgan?$$,
 $$["1978-yilda", "1985-yilda", "1994-yilda", "2020-yilda"]$$, 2,
 $$Toshkentdagi uyida 1994-yilda xotira muzeyi ochilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tamara-xonim'), NULL,
 $$Urush yillarida Tamara Xonim qayerda chiqish qilgan?$$,
 $$["Faqat teatrda", "Frontdagi konsert brigadalarida", "Faqat radioda", "Chet elda"]$$, 1,
 $$U front konsert brigadalarida jangchilarga konsertlar bergan.$$);

-- ===================== Halima Nosirova =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'halima-nosirova', $$Halima Nosirova$$, $$O'zbek operasining birinchi yulduzi$$, 1913, 2003, e.id,
       $$Halima Nosirova 1913-yilda Qo'qon yaqinidagi Tog'liq qishlog'ida tug'ilgan xonanda va aktrisa bo'lib, o'zbek opera san'atida o'z maktabini yaratgan. U birinchi o'zbek operalarida bosh partiyalarni kuylagan va o'zbek xalq ashulalarining betakror ijrochisi sifatida dunyoga tanilgan.$$, $$Assalomu alaykum! Men Halima Nosirovaman — o'zbek sahnasida opera kuylagan ilk qizlardan biriman. Mendan opera, «Bo'ron» spektakli, xalq ashulalari va teatr hayoti haqida so'rasangiz, jonim bilan javob beraman!$$, $$🎶$$, $$["halima nosirova", "opera", "xonanda", "qo'qon", "tog'liq", "navoiy teatri", "bo'ron", "layli va majnun", "ulug'bek", "men o'zbek qiziman"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1913-yilda Qo'qon yaqinidagi Tog'liq qishlog'ida tug'ilganman.$$, $$["1913", "qo'qon", "tog'liq", "tug'ilgan"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qish yillarim$$, $$Toshkentdagi xotin-qizlar bilim yurtida o'qib, badiiy havaskorlik to'garagiga qatnaganman, so'ng bir guruh yosh san'atkorlar bilan Bokudagi teatr bilim yurtiga o'qishga yuborilganman.$$, $$["bilim yurti", "toshkent", "boku", "to'garak"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Moskvadagi opera studiyasi$$, $$Moskva davlat konservatoriyasi qoshidagi O'zbek opera studiyasida ta'lim olganman — bu menga opera san'atining sirlarini ochib berdi.$$, $$["moskva", "konservatoriya", "opera studiyasi", "ta'lim"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Halima» spektakli$$, $$G'ulom Zafariyning «Halima» spektaklida bosh rolni besh yuz martadan ortiq ijro etganman va har safar tomoshabinlar olqishiga sazovor bo'lganman.$$, $$["halima", "g'ulom zafariy", "bosh rol", "500 marta"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Birinchi o'zbek operasi$$, $$Birinchi o'zbek operasi — «Bo'ron»ning 1939-yil 11-iyundagi premyerasida Norgul partiyasini kuylaganman. Shu yildan boshlab Alisher Navoiy nomidagi opera va balet teatrida ishlaganman.$$, $$["bo'ron", "1939", "norgul", "premyera", "navoiy teatri"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Mashhur rollarim$$, $$«Layli va Majnun», «Gulsara», «Karmen», «Maysaraning ishi», «Zaynab va Omon», «Ulug'bek» kabi o'nlab operalarda bosh obrazlarni yaratganman — «Ulug'bek» operasida Sin Dun Fan partiyasi ijodiy yutug'im bo'lgan.$$, $$["layli va majnun", "gulsara", "karmen", "ulug'bek", "rollar"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalq ashulalari$$, $$«Ushshoq», «Chorgoh», «Bayot» kabi xalq ashulalarini o'ziga xos uslubda kuylaganman; kuy-ashulalarni Mulla To'ychi Toshmuhammedov va Usta Olim Komilov kabi ustozlardan o'rganganman.$$, $$["ushshoq", "chorgoh", "bayot", "xalq ashulasi", "ustozlar"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Urush yillarida$$, $$Ikkinchi jahon urushi yillarida boshqa san'atkorlar qatori konsert brigadalari tarkibida jangchilar oldida chiqish qilganman.$$, $$["urush", "front", "konsert brigadasi"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kino va jahon sahnalari$$, $$«Asal», «Frontga sovg'a», «Maftuningman» filmlarida rollar o'ynaganman; ovozim Hindiston, Birma, Livan, Misr, Eron, Xitoy va Kanada kabi o'nlab mamlakatlarda yangragan, 1956-yilda Suriya va Hindiston gazetalari ovozimni maqtab yozgan.$$, $$["kino", "asal", "maftuningman", "gastrol", "1956"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Unvonlarim va kitobim$$, $$«O'zbekiston xalq artisti» unvoniga sazovor bo'lganman, mustaqillik yillarida «Buyuk xizmatlari uchun» ordeni bilan taqdirlanganman; «Men o'zbek qiziman» nomli xotira kitobim bor. Men 2003-yilda Toshkentda vafot etganman. Bugun yosh opera ijrochilarining xalqaro tanlovi mening nomim bilan ataladi.$$, $$["xalq artisti", "orden", "men o'zbek qiziman", "tanlov", "2003"]$$::jsonb, $$O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-nosirova';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$Halima Nosirova qayerda tug'ilgan?$$,
 $$["Qo'qon yaqinidagi Tog'liq qishlog'ida", "Toshkentda", "Andijonda", "Xivada"]$$, 0,
 $$U 1913-yilda Qo'qon yaqinidagi Tog'liq qishlog'ida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$Halima Nosirova opera san'atini qayerdagi studiyada o'rgangan?$$,
 $$["London konservatoriyasida", "Moskva konservatoriyasi qoshidagi O'zbek opera studiyasida", "Parij operasida", "Boku filarmoniyasida"]$$, 1,
 $$U Moskva davlat konservatoriyasi qoshidagi O'zbek opera studiyasida ta'lim olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$«Halima» spektaklida bosh rolni u necha marta ijro etgan?$$,
 $$["50 martadan ortiq", "100 martadan ortiq", "500 martadan ortiq", "10 marta"]$$, 2,
 $$U bu rolni besh yuz martadan ortiq o'ynagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$Birinchi o'zbek operasi qaysi asar edi?$$,
 $$["«Gulsara»", "«Bo'ron»", "«Ulug'bek»", "«Karmen»"]$$, 1,
 $$«Bo'ron» operasi 1939-yil 11-iyunda premyera qilingan birinchi o'zbek operasidir.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$«Bo'ron» operasida Halima Nosirova qaysi partiyani kuylagan?$$,
 $$["Norgul", "Layli", "Zaynab", "Shirin"]$$, 0,
 $$U «Bo'ron»da Norgul partiyasini kuylagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$«Ulug'bek» operasida uning ijodiy yutug'i qaysi rol bo'lgan?$$,
 $$["Ulug'bek", "Sin Dun Fan", "Maysara", "Gulsara"]$$, 1,
 $$Sin Dun Fan roli uning ijodiy yutug'i hisoblangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$Quyidagilardan qaysi biri u kuylagan xalq ashulasi?$$,
 $$["«Ushshoq»", "«Lazgi»", "«Andijon polkasi»", "«Tanovar»"]$$, 0,
 $$U «Ushshoq», «Chorgoh», «Bayot» ashulalarini kuylagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$Halima Nosirova qaysi filmda suratga tushgan?$$,
 $$["«Tohir va Zuhra»", "«Maftuningman»", "«Shum bola»", "«O'tkan kunlar»"]$$, 1,
 $$U «Asal», «Frontga sovg'a» va «Maftuningman» filmlarida rollar yaratgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$Uning xotira kitobi qanday nomlanadi?$$,
 $$["«Mening sahnam»", "«Men o'zbek qiziman»", "«Opera yo'li»", "«Qo'shiq umri»"]$$, 1,
 $$Xotira kitobi «Men o'zbek qiziman» deb ataladi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-nosirova'), NULL,
 $$Bugungi kunda uning nomi bilan nima ataladi?$$,
 $$["Raqs ansambli", "Yosh opera ijrochilarining xalqaro tanlovi", "Kinostudiya", "Kutubxona"]$$, 1,
 $$Yosh opera ijrochilarining xalqaro tanlovi Halima Nosirova nomi bilan ataladi.$$);

-- ===================== Zebo G'aniyeva =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'zebo-ganiyeva', $$Zebo G'aniyeva$$, $$Sahna va jang maydoni qahramoni$$, 1923, 2010, e.id,
       $$Zebo G'aniyeva 1923-yilda tug'ilgan bo'lib, Ikkinchi jahon urushi yillarida mohir razvedkachi va afsonaviy snayper (mergan) sifatida nom qozongan. Urushdan keyin u kino aktrisasi, so'ngra tarixchi va sharqshunos olima bo'lib faoliyat yuritgan.$$, $$Salom, do'stim! Men Zebo G'aniyevaman — san'atni sevib sahnaga intilgan, ammo urush boshlanganda Vatan himoyasiga otlangan qizman. Mendan front hayoti, mergangarlik, kino va sharqshunoslik ilmi haqida so'rashing mumkin!$$, $$🎯$$, $$["zebo g'aniyeva", "snayper", "mergan", "razvedkachi", "ikkinchi jahon urushi", "front", "tohir va zuhra", "sharqshunos", "olima", "xoreografiya"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1923-yilda tug'ilganman. Bolaligim og'ir davrga to'g'ri keldi: 1937-yilgi qatag'on yillarida onam jabr ko'rdi.$$, $$["1923", "tug'ilgan", "1937", "qatag'on", "bolalik"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Raqsga oshiqligim$$, $$1937-yilda Toshkentga kelib, O'zbek davlat filarmoniyasi qoshidagi xoreografiya bo'limiga o'qishga kirganman — orzuim sahna edi.$$, $$["toshkent", "filarmoniya", "xoreografiya", "raqs", "1937"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Moskvada aktyorlik$$, $$1940-yilda Moskvadagi davlat san'at oliy o'quv yurtining aktyorlik fakultetiga o'qishga kirganman.$$, $$["1940", "moskva", "aktyorlik", "fakultet", "o'qish"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Frontga ko'ngilli$$, $$Urush boshlanganida birinchilardan bo'lib, ko'ngillilar safida frontga jo'naganman.$$, $$["urush", "front", "ko'ngilli", "1941"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Mohir mergan$$, $$O'zim xizmat qilgan polkda oz fursatda mohir mergan (snayper), epchil aloqachi va zehni o'tkir razvedkachi sifatida nom qozonganman — dushman pozitsiyasi haqidagi ma'lumotlarni o'z vaqtida yetkazishda barchaga namuna edim.$$, $$["snayper", "mergan", "razvedkachi", "aloqachi", "polk"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yaralanishim$$, $$Jangda og'ir yaralanganman va qariyb bir yil davolanib, shifo topganman.$$, $$["yara", "gospital", "bir yil", "shifo"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kinoda malika roli$$, $$Urushdan so'ng atoqli o'zbek rejissyori Nabi G'aniyevning «Tohir va Zuhra» badiiy filmida Xorazm malikasi rolini ijro etganman.$$, $$["tohir va zuhra", "kino", "nabi g'aniyev", "malika", "rol"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Olimalik yo'lim$$, $$Keyinchalik tarixchi va sharqshunos olima sifatida faoliyat ko'rsatganman — jang maydonidan ilm maydoniga qaytganman.$$, $$["tarixchi", "sharqshunos", "olima", "ilm"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Jonli afsona$$, $$Hayotligimdayoq meni «jonli afsona» deb atashgan; bugun ham yoshlar uchun men haqimda ma'naviy-ma'rifiy tadbirlar va hujjatli film namoyishlari o'tkaziladi.$$, $$["jonli afsona", "tadbir", "hujjatli film", "xotira"]$$::jsonb, $$UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'zebo-ganiyeva';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$Zebo G'aniyeva qaysi yili tug'ilgan?$$,
 $$["1913-yilda", "1923-yilda", "1936-yilda", "1947-yilda"]$$, 1,
 $$U 1923-yilda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$1937-yilda Zebo Toshkentda qayerga o'qishga kirgan?$$,
 $$["Tibbiyot institutiga", "Filarmoniya qoshidagi xoreografiya bo'limiga", "Harbiy maktabga", "Konservatoriyaga"]$$, 1,
 $$U O'zbek davlat filarmoniyasi qoshidagi xoreografiya bo'limiga kirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$1940-yilda u Moskvada qaysi fakultetda o'qigan?$$,
 $$["Aktyorlik fakultetida", "Tarix fakultetida", "Jurnalistika fakultetida", "Matematika fakultetida"]$$, 0,
 $$U davlat san'at oliy o'quv yurtining aktyorlik fakultetiga kirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$Urush boshlanganda Zebo nima qilgan?$$,
 $$["O'qishni davom ettirgan", "Ko'ngilli bo'lib frontga jo'nagan", "Chet elga ketgan", "Teatrda ishlagan"]$$, 1,
 $$U birinchilardan bo'lib ko'ngillilar safida frontga jo'nagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$Frontda Zebo qanday nom qozongan?$$,
 $$["Uchuvchi sifatida", "Shifokor sifatida", "Mohir mergan va razvedkachi sifatida", "Oshpaz sifatida"]$$, 2,
 $$U mohir mergan, epchil aloqachi va zehni o'tkir razvedkachi sifatida tanilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$Og'ir yaralangach, Zebo qancha vaqtda shifo topgan?$$,
 $$["Bir hafta", "Bir oy", "Qariyb bir yil", "Besh yil"]$$, 2,
 $$U qariyb bir yil davolanib shifo topgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$Urushdan keyin Zebo qaysi filmda rol o'ynagan?$$,
 $$["«Maftuningman»", "«Tohir va Zuhra»", "«Asal»", "«Shum bola»"]$$, 1,
 $$U Nabi G'aniyevning «Tohir va Zuhra» filmida suratga tushgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$«Tohir va Zuhra» filmida u qanday rolni ijro etgan?$$,
 $$["Xorazm malikasi", "Zuhra", "Cho'pon qizi", "O'qituvchi"]$$, 0,
 $$U filmda Xorazm malikasi rolini o'ynagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$Keyinchalik Zebo G'aniyeva qaysi sohada olima bo'lgan?$$,
 $$["Kimyo", "Tarix va sharqshunoslik", "Biologiya", "Astronomiya"]$$, 1,
 $$U tarixchi va sharqshunos olima sifatida faoliyat yuritgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva'), NULL,
 $$Xalq uni hayotligidayoq qanday atagan?$$,
 $$["«Jonli afsona»", "«Temir qiz»", "«Sahna malikasi»", "«Oltin ovoz»"]$$, 0,
 $$U hayotligidayoq «jonli afsona»ga aylangan.$$);

-- ===================== Mukarrama Turg'unboyeva =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'mukarrama-turgunboyeva', $$Mukarrama Turg'unboyeva$$, $$«Bahor» ansambli asoschisi$$, 1913, 1978, e.id,
       $$Mukarrama Turg'unboyeva 1913-yilda Farg'ona yaqinida tug'ilgan raqqosa, baletmeyster va pedagog bo'lib, o'zbek raqs maktabi asoschilaridan biri sanaladi. U 1957-yilda mashhur «Bahor» qizlar raqs ansamblini tashkil etib, umrining oxirigacha unga rahbarlik qilgan.$$, $$Assalomu alaykum, aziz do'stim! Men Mukarrama Turg'unboyevaman — «Bahor» ansamblining onasi deb atashadi meni. Mendan raqs, «Tanovar», «Bahor» qizlari va sahna mehnati haqida istagancha so'rayver!$$, $$🌸$$, $$["mukarrama turg'unboyeva", "bahor ansambli", "raqqosa", "baletmeyster", "tanovar", "farg'ona", "raqs", "xalq artisti", "bahor valsi", "xoreografiya"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bolaligim$$, $$Men 1913-yilda Farg'ona yaqinida o'rtahol oilada tug'ilganman. Otam men kichkinaligimda olamdan o'tgan, tog'amning uyida tarbiyalanganman va pedagogika texnikumida o'qiganman.$$, $$["1913", "farg'ona", "bolalik", "texnikum"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$San'atga ahd$$, $$Texnikumda ashula va raqs to'garagiga qatnardim. Tamaraxonimning «Dilxiroj» raqsini ko'rib qattiq ta'sirlanganman va san'atkor bo'lishga qat'iy ahd qilganman.$$, $$["to'garak", "dilxiroj", "tamaraxonim", "ahd"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Teatr studiyasida$$, $$1929–1933-yillarda Birinchi O'zbek davlat musiqali teatr studiyasining aktrisasi va o'quvchisi bo'lganman; o'zbek raqsini Usta Olim Komilov va Tamaraxonimdan o'rganganman.$$, $$["1929", "studiya", "aktrisa", "usta olim komilov", "samarqand"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qituvchilik$$, $$1933-yildan Respublika balet maktabida o'qituvchi bo'lib ishlaganman; ustozim Usta Olim Komilov bilan yaratgan «Doira darsi va raqs» qo'llanmamiz asosida o'zbek raqsi hozirgacha o'qitiladi.$$, $$["1933", "balet maktabi", "doira darsi", "qo'llanma", "pedagog"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Sahnadagi rollarim$$, $$«Tanovar» raqsining ilk ijrochisiman; 1939-yilda «Shohida» baletida, 1943-yilda «Oqbilak» baletida bosh rollarni ijro etganman.$$, $$["tanovar", "shohida", "oqbilak", "balet", "bosh rol"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Beryozka»dan ilhom$$, $$1956-yilda Moskvadagi xalqaro yoshlar festivalida «Beryozka» ansamblini ko'rib, O'zbekistonda ham faqat qizlardan iborat milliy raqs ansambli tuzish orzusi tug'ilgan menda.$$, $$["1956", "moskva", "festival", "beryozka", "orzu"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Bahor» tug'ilishi$$, $$1957-yilda Toshkent xoreografiya bilim yurtida o'zim dars bergan 12 qiz hamda eng yaxshi xonanda va sozandalardan jamoa tuzdim — bastakor M.Mirzayevning «Bahor valsi» kuyi sharafiga ansamblga «Bahor» deb nom berildi.$$, $$["1957", "bahor", "12 qiz", "bahor valsi", "mirzayev"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$600 raqs$$, $$1957-yildan umrimning oxirigacha «Bahor»ning badiiy rahbari bo'ldim: 600 ga yaqin milliy va jahon xalqlari raqslarini sahnalashtirdim, ansamblimiz 50 dan ortiq mamlakatda chiqish qildi.$$, $$["badiiy rahbar", "600 raqs", "50 mamlakat", "gastrol"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Mukofotlarim$$, $$Mehnatlarim «Xalq artisti» unvoni va bir qancha orden-medallar bilan taqdirlangan; xotiram uchun har yili 31-may kuni «Yil raqqosasi» respublika ko'rik-tanlovi o'tkaziladi.$$, $$["xalq artisti", "orden", "yil raqqosasi", "31-may"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Merosim$$, $$Men 1978-yilda vafot etganman. 2020-yil fevralda Prezident qarori bilan Mukarrama Turg'unboyeva nomidagi «Bahor» davlat raqs ansambli qayta tashkil etildi — meni «o'zidan keyin tirik haykal qoldirgan» deb aytishadi.$$, $$["1978", "2020", "qayta tashkil", "tirik haykal", "meros"]$$::jsonb, $$«Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'mukarrama-turgunboyeva';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$Mukarrama Turg'unboyeva qaysi yili tug'ilgan?$$,
 $$["1906-yilda", "1913-yilda", "1923-yilda", "1931-yilda"]$$, 1,
 $$U 1913-yilda Farg'ona yaqinida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$Uni san'atkor bo'lishga qaysi raqs ilhomlantirgan?$$,
 $$["Tamaraxonim ijrosidagi «Dilxiroj»", "«Lazgi»", "«Andijon polkasi»", "«Katta o'yin»"]$$, 0,
 $$Tamaraxonimning «Dilxiroj» raqsi uni qattiq ta'sirlantirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$Mukarrama o'zbek raqsini kimlardan o'rgangan?$$,
 $$["Faqat kitoblardan", "Usta Olim Komilov va Tamaraxonimdan", "Chet ellik ustozlardan", "Hech kimdan"]$$, 1,
 $$U studiyada Usta Olim Komilov va Tamaraxonimdan saboq olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$Qaysi raqsning ilk ijrochisi Mukarrama Turg'unboyeva edi?$$,
 $$["«Lazgi»", "«Tanovar»", "«Pilla»", "«Zang»"]$$, 1,
 $$U «Tanovar» raqsining ilk ijrochisi hisoblanadi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$1956-yilda Moskvada u qaysi ansamblni ko'rib ilhomlangan?$$,
 $$["«Beryozka»", "«Bahor»", "«Shodlik»", "«Lazgi»"]$$, 0,
 $$«Beryozka»ni ko'rib, qizlardan iborat o'zbek ansamblini tuzishni orzu qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$«Bahor» ansambli qaysi yili tashkil topgan?$$,
 $$["1933-yilda", "1943-yilda", "1957-yilda", "1978-yilda"]$$, 2,
 $$«Bahor» 1957-yilda tashkil etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$«Bahor» nomi qayerdan olingan?$$,
 $$["Bahor faslidan tasodifan", "M.Mirzayevning «Bahor valsi» kuyidan", "Bir qizning ismidan", "Gazeta maqolasidan"]$$, 1,
 $$Ansamblga bastakor M.Mirzayev yozgan «Bahor valsi» kuyi nom bergan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$Mukarrama nechta raqs sahnalashtirgan?$$,
 $$["50 ga yaqin", "100 ga yaqin", "300 ga yaqin", "600 ga yaqin"]$$, 3,
 $$U 600 ga yaqin milliy va jahon xalqlari raqslarini sahnalashtirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$Uning xotirasi uchun har yili qanday tanlov o'tkaziladi?$$,
 $$["«Yil raqqosasi»", "«Oltin raqs»", "«Bahor yulduzi»", "«Sahna malikasi»"]$$, 0,
 $$Har yili 31-may kuni «Yil raqqosasi» ko'rik-tanlovi o'tkaziladi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva'), NULL,
 $$2020-yilda «Bahor» ansambli bilan nima yuz berdi?$$,
 $$["Yopib qo'yildi", "Prezident qarori bilan qayta tashkil etildi", "Chet elga ko'chirildi", "Nomi o'zgartirildi"]$$, 1,
 $$2020-yil fevralda ansambl Mukarrama Turg'unboyeva nomi bilan qayta tashkil etildi.$$);

-- ===================== Halima Xudoyberdiyeva =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'halima-xudoyberdiyeva', $$Halima Xudoyberdiyeva$$, $$Olovli satrlar sohibasi$$, 1947, 2018, e.id,
       $$Halima Xudoyberdiyeva 1947-yilda Sirdaryo viloyatining Boyovut tumanida tug'ilgan atoqli shoira. U o'zbek ayolining orzu-armonlari kuychisi sifatida tanilgan va 1992-yilda «O'zbekiston xalq shoiri» unvoniga sazovor bo'lgan.$$, $$Assalomu alaykum! Men Halima Xudoyberdiyevaman — she'rlarimda olov, iztirob va isyon bor deyishadi. Mendan she'riyat, kitoblarim, To'maris haqidagi satrlarim va jurnalistlik yillarim haqida so'rang!$$, $$✍️$$, $$["halima xudoyberdiyeva", "shoira", "she'riyat", "boyovut", "sirdaryo", "saodat jurnali", "to'maris", "xalq shoiri", "muqaddas ayol", "suyanch tog'larim"]$$::jsonb
  FROM eras e WHERE e.code = 'mustaqillik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1947-yil 17-mayda Sirdaryo viloyatining Boyovut tumanida tug'ilganman.$$, $$["1947", "17-may", "boyovut", "sirdaryo"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilk she'rlarim$$, $$Ilk she'rlarim o'quvchilik yillarimda, 1964-yilda Yangiyer tuman gazetasida bosilgan.$$, $$["1964", "ilk she'r", "yangiyer", "gazeta"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$Toshkent davlat universitetining jurnalistika fakultetini 1972-yilda tugatganman, keyinchalik Moskvadagi adabiyot institutida ham tahsil olganman.$$, $$["toshdu", "jurnalistika", "1972", "moskva"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilk kitobim$$, $$Birinchi she'riy kitobim «Ilk muhabbat» 1968-yilda chiqqan; keyin «Oq olmalar», «Suyanch tog'larim», «Bobo quyosh», «Issiq qor», «Muqaddas ayol» kabi to'plamlarim nashr etilgan.$$, $$["ilk muhabbat", "1968", "suyanch tog'larim", "muqaddas ayol", "kitob"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Saodat» jurnalida$$, $$«Saodat» jurnalida adabiy xodim va bo'lim mudiri bo'lib ishlaganman, 1982–1994-yillarda esa shu jurnalga bosh muharrirlik qilganman.$$, $$["saodat", "jurnal", "bosh muharrir", "1982"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xotin-qizlar rahbari$$, $$1990–1994-yillarda O'zbekiston xotin-qizlar qo'mitasining raisi bo'lib, ayollar manfaatini himoya qilganman.$$, $$["xotin-qizlar qo'mitasi", "rais", "1990", "ayollar"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$To'maris haqida$$, $$1996-yilda jasur ayollarga bag'ishlangan «To'marisning aytgani» kitobim chiqqan; she'rlarim ko'plab xorijiy tillarga tarjima qilingan.$$, $$["to'maris", "1996", "tarjima", "kitob"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalq shoiri$$, $$1990-yilda Hamza nomidagi davlat mukofotini olganman, 1992-yilda esa «O'zbekiston xalq shoiri» unvoniga sazovor bo'lganman.$$, $$["xalq shoiri", "1992", "hamza mukofoti", "1990", "unvon"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«El-yurt hurmati»$$, $$2017-yilda davlatimiz rahbari farmoni bilan «El-yurt hurmati» ordeni bilan taqdirlanganman.$$, $$["el-yurt hurmati", "orden", "2017"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Nomimdagi maktab$$, $$Prezident tashabbusi bilan Sirdaryo viloyatida mening nomimdagi ijod maktabi tashkil etilgan — u yerda bo'lajak shoir va yozuvchilar o'qiydi.$$, $$["ijod maktabi", "sirdaryo", "meros", "yoshlar"]$$::jsonb, $$Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'halima-xudoyberdiyeva';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$Halima Xudoyberdiyeva qayerda tug'ilgan?$$,
 $$["Toshkentda", "Sirdaryo viloyati Boyovut tumanida", "Farg'onada", "Samarqandda"]$$, 1,
 $$U 1947-yil 17-mayda Boyovut tumanida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$Ilk she'rlari qachon va qayerda bosilgan?$$,
 $$["1964-yilda Yangiyer tuman gazetasida", "1972-yilda jurnalda", "1968-yilda kitobda", "1990-yilda Moskvada"]$$, 0,
 $$Ilk she'rlari 1964-yilda Yangiyer tuman gazetasida chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$U universitetda qaysi yo'nalishda o'qigan?$$,
 $$["Tarix", "Jurnalistika", "Matematika", "Tibbiyot"]$$, 1,
 $$U ToshDUning jurnalistika fakultetini 1972-yilda tugatgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$Uning birinchi she'riy kitobi qaysi?$$,
 $$["«Muqaddas ayol»", "«Ilk muhabbat»", "«Issiq qor»", "«Oq olmalar»"]$$, 1,
 $$«Ilk muhabbat» kitobi 1968-yilda nashr etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$1982–1994-yillarda u qaysi jurnalga bosh muharrirlik qilgan?$$,
 $$["«Saodat»", "«Guliston»", "«Sharq yulduzi»", "«Tafakkur»"]$$, 0,
 $$U «Saodat» jurnalining bosh muharriri bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$1990–1994-yillarda u qanday lavozimda ishlagan?$$,
 $$["Vazir", "O'zbekiston xotin-qizlar qo'mitasi raisi", "Teatr direktori", "Universitet rektori"]$$, 1,
 $$U O'zbekiston xotin-qizlar qo'mitasiga raislik qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$Jasur ayollarga bag'ishlangan kitobi qanday nomlanadi?$$,
 $$["«To'marisning aytgani»", "«Suyanch tog'larim»", "«Bobo quyosh»", "«Chaman»"]$$, 0,
 $$«To'marisning aytgani» kitobi 1996-yilda chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$«O'zbekiston xalq shoiri» unvonini u qachon olgan?$$,
 $$["1968-yilda", "1982-yilda", "1992-yilda", "2017-yilda"]$$, 2,
 $$Bu unvonga u 1992-yilda sazovor bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$2017-yilda u qaysi orden bilan taqdirlangan?$$,
 $$["«Mehnat shuhrati»", "«El-yurt hurmati»", "«Do'stlik»", "«Shon-sharaf»"]$$, 1,
 $$2017-yilda «El-yurt hurmati» ordeni bilan taqdirlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva'), NULL,
 $$Sirdaryo viloyatida uning nomi bilan nima tashkil etilgan?$$,
 $$["Muzey", "Ijod maktabi", "Teatr", "Kutubxona"]$$, 1,
 $$U yerda Halima Xudoyberdiyeva nomidagi ijod maktabi ochilgan.$$);

-- ===================== Dilbar Abdurahmonova =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'dilbar-abdurahmonova', $$Dilbar Abdurahmonova$$, $$O'zbekistonning birinchi ayol dirijyori$$, 1936, 2018, e.id,
       $$Dilbar Abdurahmonova 1936-yilda tug'ilgan skripkachi, dirijyor va pedagog bo'lib, O'zbekistondagi birinchi ayol dirijyor sanaladi. U qariyb yarim asr Alisher Navoiy nomidagi opera va balet teatrida ishlab, 60 dan ortiq opera va balet spektakllarini boshqargan.$$, $$Assalomu alaykum! Men Dilbar Abdurahmonovaman — dirijyorlik tayoqchasini qo'lga olgan birinchi o'zbekistonlik ayolman. Mendan orkestr, opera, balet va musiqa olami haqida so'rasangiz, mamnuniyat bilan javob beraman!$$, $$🎻$$, $$["dilbar abdurahmonova", "dirijyor", "skripkachi", "navoiy teatri", "opera", "balet", "tanovar", "muxtor ashrafiy", "konservatoriya", "birinchi ayol dirijyor"]$$::jsonb
  FROM eras e WHERE e.code = 'mustaqillik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1936-yil 1-mayda Moskvada tug'ilganman. Otam G'ulom Abdurahmonov opera teatrining yetakchi xonandalaridan edi — musiqa oilamizda doim yangrab turardi.$$, $$["1936", "1-may", "moskva", "otam", "opera"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Skripka darslari$$, $$1948–1955-yillarda Toshkentdagi Glier nomidagi musiqa maktabida skripka bo'yicha o'qiganman, shu bilan birga matematika maktabida ham tahsil olganman.$$, $$["glier", "skripka", "maktab", "matematika"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ashrafiy shogirdi$$, $$Toshkent konservatoriyasida skripka bo'yicha 1959-yilda, mashhur bastakor Muxtor Ashrafiy sinfida opera-simfonik dirijyorlik bo'yicha 1960-yilda o'qishni tugatganman.$$, $$["konservatoriya", "muxtor ashrafiy", "dirijyorlik", "1960"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Orkestrda skripkachi$$, $$Talabalik yillarimda, 1957–1960-yillarda Navoiy teatri orkestrida skripka chalganman; 1957-yilda Moskvadagi Jahon yoshlar festivalida talaba-dirijyor sifatida qatnashganman.$$, $$["orkestr", "skripkachi", "1957", "festival"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Birinchi ayol dirijyor$$, $$1960-yildan Navoiy teatrida dirijyorlik qila boshladim — O'zbekistonda dirijyorlik pultiga chiqqan birinchi ayol men bo'lganman.$$, $$["1960", "birinchi ayol dirijyor", "pult", "teatr"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bosh dirijyor$$, $$1974–1990-yillarda Navoiy teatrining bosh dirijyori va badiiy rahbari bo'lib ishlaganman.$$, $$["1974", "bosh dirijyor", "badiiy rahbar", "1990"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Tanovar» va mukofot$$, $$1973-yilda A.Kozlovskiyning «Tanovar» baletini sahnalashtirganim uchun Hamza nomidagi davlat mukofotiga sazovor bo'lganman; repertuarimda 60 dan ortiq opera va balet bor edi.$$, $$["tanovar", "1973", "hamza mukofoti", "60 spektakl"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Unvonlarim$$, $$1969-yilda O'zbekiston xalq artisti, 1977-yilda SSSR xalq artisti bo'lganman; mustaqillik yillarida «Mehnat shuhrati» (2001) va «Fidokorona xizmatlari uchun» (2012) ordenlari bilan taqdirlanganman.$$, $$["xalq artisti", "1977", "mehnat shuhrati", "fidokorona", "orden"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ustozlik$$, $$O'zbekiston davlat konservatoriyasida professor bo'lib, yosh ijrochilarga opera san'atidan dars berganman.$$, $$["professor", "konservatoriya", "pedagog", "shogird"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrim yakuni$$, $$Men 2018-yil 20-martda Toshkentda vafot etganman.$$, $$["2018", "toshkent", "vafot"]$$::jsonb, $$Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz$$, TRUE
  FROM heroes h WHERE h.slug = 'dilbar-abdurahmonova';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$Dilbar Abdurahmonova qayerda tug'ilgan?$$,
 $$["Toshkentda", "Moskvada", "Farg'onada", "Samarqandda"]$$, 1,
 $$U 1936-yil 1-mayda Moskvada tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$Uning otasi kim bo'lgan?$$,
 $$["Shifokor", "Opera teatrining yetakchi xonandasi", "O'qituvchi", "Muhandis"]$$, 1,
 $$Otasi G'ulom Abdurahmonov opera teatrining yetakchi xonandalaridan edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$U bolaligida qaysi cholg'u asbobini o'rgangan?$$,
 $$["Doira", "Skripka", "Fortepiano", "Dutor"]$$, 1,
 $$U Glier musiqa maktabida skripka bo'yicha o'qigan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$Dirijyorlikni unga kim o'rgatgan?$$,
 $$["Muxtor Ashrafiy", "Usta Olim Komilov", "M.Mirzayev", "Tolibjon Sodiqov"]$$, 0,
 $$U konservatoriyada Muxtor Ashrafiy sinfida dirijyorlikni o'rgangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$Dilbar Abdurahmonova qanday tarixiy o'ringa ega?$$,
 $$["Birinchi o'zbek balerinasi", "O'zbekistonning birinchi ayol dirijyori", "Birinchi opera xonandasi", "Birinchi bastakor ayol"]$$, 1,
 $$U O'zbekistonda dirijyorlik pultiga chiqqan birinchi ayoldir.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$U qaysi teatrda ishlagan?$$,
 $$["Alisher Navoiy nomidagi opera va balet teatrida", "Muqimiy teatrida", "Yosh tomoshabinlar teatrida", "Qo'g'irchoq teatrida"]$$, 0,
 $$U qariyb yarim asr Navoiy teatrida ishlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$1974–1990-yillarda u qanday lavozimda bo'lgan?$$,
 $$["Orkestr skripkachisi", "Teatr bosh dirijyori va badiiy rahbari", "Teatr direktori", "Kostyumchi"]$$, 1,
 $$Bu yillarda u teatrning bosh dirijyori va badiiy rahbari edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$Qaysi balet uchun u Hamza mukofotini olgan?$$,
 $$["«Tanovar»", "«Oqbilak»", "«Shohida»", "«Don Kixot»"]$$, 0,
 $$1973-yilda «Tanovar» baletini sahnalashtirgani uchun mukofotlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$Uning repertuarida nechta opera va balet bo'lgan?$$,
 $$["10 dan ortiq", "30 dan ortiq", "60 dan ortiq", "200 dan ortiq"]$$, 2,
 $$Repertuarida 60 dan ortiq opera va balet spektakli bor edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova'), NULL,
 $$SSSR xalq artisti unvonini u qachon olgan?$$,
 $$["1960-yilda", "1969-yilda", "1977-yilda", "2001-yilda"]$$, 2,
 $$1969-yilda O'zbekiston, 1977-yilda SSSR xalq artisti bo'lgan.$$);

-- ===================== Ozod Sharafiddinov =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'ozod-sharafiddinov', $$Ozod Sharafiddinov$$, $$Cho'lponni xalqqa qaytargan olim$$, 1929, 2005, e.id,
       $$Ozod Sharafiddinov 1929-yilda Qo'qon yaqinida tug'ilgan atoqli adabiyotshunos, munaqqid va tarjimon. U qatag'on qurboni bo'lgan Cho'lpon ijodini o'rganib o'quvchilarga qaytargan, «Jahon adabiyoti» jurnaliga bosh muharrirlik qilgan va 2002-yilda «O'zbekiston Qahramoni» unvoniga sazovor bo'lgan.$$, $$Assalomu alaykum, yosh do'stim! Men Ozod Sharafiddinovman — butun umrimni adabiyotga, kitoblarga bag'ishlaganman. Mendan Cho'lpon, adabiy tanqid, tarjima san'ati va «Jahon adabiyoti» jurnali haqida so'rayvering!$$, $$📚$$, $$["ozod sharafiddinov", "adabiyotshunos", "munaqqid", "cho'lpon", "jahon adabiyoti", "qo'qon", "tarjimon", "o'zbekiston qahramoni", "toshdu", "adabiy tanqid"]$$::jsonb
  FROM eras e WHERE e.code = 'mustaqillik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1929-yil 1-martda Qo'qon yaqinidagi Oxunqaynar qishlog'ida tug'ilganman.$$, $$["1929", "1-mart", "qo'qon", "oxunqaynar", "tug'ilgan"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilm yo'lim$$, $$1951-yilda O'rta Osiyo universitetini tugatganman, 1954-yilda filologiya fanlari nomzodi bo'lganman, 1979-yilda esa professor unvonini olganman.$$, $$["universitet", "1951", "filologiya", "professor"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Qirq yillik ustozlik$$, $$1955-yildan 1995-yilgacha — qirq yil davomida Toshkent davlat universitetining o'zbek filologiyasi fakultetida dotsent va professor bo'lib, talabalarga adabiyot sirlarini o'rgatganman.$$, $$["toshdu", "filologiya", "dotsent", "talabalar", "1955"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilk mashhur kitobim$$, $$1962-yilda chiqqan «Zamon. Qalb. Poeziya» kitobimda she'riyatni badiiylik mezonlari asosida tahlil qilganman; keyin «Adabiy etyudlar», «Birinchi mo''jiza», «Hayot bilan hamnafas» kitoblarim nashr etilgan.$$, $$["zamon qalb poeziya", "1962", "adabiy etyudlar", "kitob"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Cho'lponni anglash$$, $$1993-yilda «Cho'lponni anglash» asarimni yozdim — qatag'on yillarida taqiqlangan buyuk shoir Cho'lpon ijodini o'rganib, uni o'quvchilarga qaytadan tanitishga hissa qo'shganman.$$, $$["cho'lpon", "1993", "qatag'on", "taqiq", "anglash"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tarjimonligim$$, $$Lev Tolstoy va Paulo Koelo kabi jahon adiblarining asarlarini o'zbek tiliga tarjima qilganman — o'zbek adabiyotini jahon adabiyoti bilan bog'lab o'rganish an'anasini boshlaganlardanman.$$, $$["tarjima", "tolstoy", "koelo", "jahon adabiyoti"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Jahon adabiyoti» jurnali$$, $$1996–1997-yillarda «Tafakkur» jurnalida bosh muharrir o'rinbosari bo'lganman, 1997-yildan esa «Jahon adabiyoti» jurnaliga bosh muharrirlik qilganman.$$, $$["jahon adabiyoti", "1997", "tafakkur", "bosh muharrir"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Darslik muallifi$$, $$1970-yilda Beruniy nomidagi O'zbekiston davlat mukofotini olganman va 1999-yilda chiqqan «O'zbekiston adabiyoti tarixi» darsligi mualliflaridan biriman.$$, $$["beruniy mukofoti", "1970", "darslik", "1999"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'zbekiston Qahramoni$$, $$2002-yilda menga «O'zbekiston Qahramoni» unvoni berildi — bu mehnatlarimga berilgan eng yuksak baho edi.$$, $$["o'zbekiston qahramoni", "2002", "unvon"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrim yakuni$$, $$Men 2005-yilda Toshkentda vafot etganman.$$, $$["2005", "toshkent", "vafot"]$$::jsonb, $$Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi)$$, TRUE
  FROM heroes h WHERE h.slug = 'ozod-sharafiddinov';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$Ozod Sharafiddinov qayerda tug'ilgan?$$,
 $$["Toshkentda", "Qo'qon yaqinidagi Oxunqaynar qishlog'ida", "Samarqandda", "Buxoroda"]$$, 1,
 $$U 1929-yil 1-martda Oxunqaynar qishlog'ida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$U qaysi sohaning olimi edi?$$,
 $$["Tarix", "Adabiyotshunoslik", "Kimyo", "Fizika"]$$, 1,
 $$U atoqli adabiyotshunos va munaqqid edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$U ToshDUda necha yil dars bergan?$$,
 $$["O'n yil", "Yigirma yil", "Qirq yil", "Besh yil"]$$, 2,
 $$1955–1995-yillarda, qirq yil davomida dars bergan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$1962-yilda chiqqan mashhur kitobi qaysi?$$,
 $$["«Zamon. Qalb. Poeziya»", "«Cho'lponni anglash»", "«Birinchi mo''jiza»", "«Adabiy etyudlar»"]$$, 0,
 $$«Zamon. Qalb. Poeziya» kitobi 1962-yilda nashr etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$«Cho'lponni anglash» asari qachon yozilgan?$$,
 $$["1962-yilda", "1979-yilda", "1993-yilda", "2002-yilda"]$$, 2,
 $$Bu asar 1993-yilda yaratilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$U qaysi taqiqlangan shoir ijodini o'quvchilarga qaytargan?$$,
 $$["Cho'lpon", "Navoiy", "Bobur", "Muqimiy"]$$, 0,
 $$U qatag'onda taqiqlangan Cho'lpon ijodini qayta tanitgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$U qaysi jahon adiblarini o'zbekchaga tarjima qilgan?$$,
 $$["Shekspir va Gyote", "Tolstoy va Paulo Koelo", "Dante va Servantes", "Chexov va Gogol"]$$, 1,
 $$U Lev Tolstoy va Paulo Koelo asarlarini tarjima qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$1997-yildan u qaysi jurnalga bosh muharrirlik qilgan?$$,
 $$["«Saodat»", "«Jahon adabiyoti»", "«Guliston»", "«Sharq yulduzi»"]$$, 1,
 $$U 1997-yildan «Jahon adabiyoti» jurnalining bosh muharriri bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$2002-yilda unga qanday unvon berilgan?$$,
 $$["«O'zbekiston Qahramoni»", "«Xalq shoiri»", "«Xalq artisti»", "«Faxriy professor»"]$$, 0,
 $$2002-yilda «O'zbekiston Qahramoni» unvoniga sazovor bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov'), NULL,
 $$1970-yilda u qaysi mukofotni olgan?$$,
 $$["Hamza mukofotini", "Beruniy nomidagi davlat mukofotini", "Nobel mukofotini", "Navoiy nomidagi mukofotni"]$$, 1,
 $$U Beruniy nomidagi O'zbekiston davlat mukofoti laureati bo'lgan.$$);
