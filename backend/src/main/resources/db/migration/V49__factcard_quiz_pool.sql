-- Savollar pulini kengaytirish: HAR BIR tasdiqlangan fakt kartochkasiga savol.
--
-- QOIDA (M1): har savol AYNAN bitta kartochkaga tayanadi — fact_card_id
-- to'ldiriladi, javob kartochkaning fact_uz matnidan topiladi, izoh esa
-- manbani keltiradi. Bola javobni mahsulot ichida (Xazina) topa oladi.
--
-- Nega pul katta: test har safar puldan tasodifiy terib olinadi (QuizService),
-- pul qancha katta bo'lsa, savollar shuncha kam takrorlanadi.
--
-- Kartochka id bo'yicha emas, (mavzu + qahramon/davr) bo'yicha topiladi —
-- id lar bazani qayta yig'ganda o'zgarishi mumkin, bu juftlik esa barqaror
-- (V32 dagi kabi). Eski savollarga tegilmaydi.
--
-- Hisob: 55 qahramon uchun har kartochkaga 1 tadan savol (savoli kam bo'lgan
-- 7 qahramonga — 2 tadan), 8 davr uchun har kartochkaga 2 tadan. Jami 648.

-- ===================== heroes_aa.sql =====================

-- abdulla-avloniy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy qanday oilada tug'ilgan?$$,
       $$["Bog'bon oilasida", "Ziyoli oilasida", "To'quvchi oilasida", "Savdogar oilasida"]$$::jsonb,
       2,
       $$Abdulla Avloniy 1878-yil 7-dekabrda Toshkentda, to'quvchi oilasida tug'ilgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy 1885–1895-yillarda qayerda o'qigan?$$,
       $$["Maktabxona va madrasada", "Istanbul dorilfununida", "O'rta Osiyo universitetida", "Sharq musiqa maktabida"]$$::jsonb,
       0,
       $$Avloniy 1885–1895-yillarda maktabxona va madrasada o'qigan, arab, fors va rus tillarini esa mustaqil o'rgangan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | Gazetalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy 1917-yilda qaysi gazetani nashr etgan?$$,
       $$["«Shuhrat»", "«Turon»", "«Oyina»", "«Najot»"]$$::jsonb,
       1,
       $$Avloniy 1907-yilda «Shuhrat» gazetasini chiqargan, 1917-yilda esa «Turon» gazetasini nashr etgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$Gazetalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | Maktabim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy 1912-yilda qayerda ikki sinfli maktab tashkil etgan?$$,
       $$["Mirobodda", "Darxonda", "Registonda", "Degrezda"]$$::jsonb,
       3,
       $$Avloniy 1908-yilda Mirobod mahallasida yangi usul maktabini ochgan, 1912-yilda esa Degrezda ikki sinfli maktab tashkil etgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$Maktabim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | Xayriya jamiyati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy «Jamiyati xayriya» xayriya jamiyatini qaysi yili tuzgan?$$,
       $$["1905-yilda", "1909-yilda", "1913-yilda", "1917-yilda"]$$::jsonb,
       1,
       $$Avloniy «Jamiyati xayriya» xayriya jamiyatini 1909-yilda tuzgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xayriya jamiyati$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | Darsliklarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniyning 1911-yilda chiqqan darsligi qanday nomlanadi?$$,
       $$["«Birinchi muallim»", "«Ikkinchi muallim»", "«Maktab gulistoni»", "«Turkiy guliston yoxud axloq»"]$$::jsonb,
       0,
       $$Avloniy «Birinchi muallim» (1911), «Ikkinchi muallim» (1912) va «Maktab gulistoni» (1915) darsliklarini yozgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$Darsliklarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | «Turkiy guliston»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy 1913-yilda qaysi kitobini chop etgan?$$,
       $$["«Birinchi muallim»", "«Maktab gulistoni»", "«Turkiy guliston yoxud axloq»", "«Adabiyot qoidalari»"]$$::jsonb,
       2,
       $$Avloniy 1913-yilda bolalarga odob-axloqdan saboq beruvchi «Turkiy guliston yoxud axloq» kitobini chop etgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Turkiy guliston»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | Teatr truppam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy 1910–1916-yillarda teatr uchun qanday ish qilgan?$$,
       $$["Yangi teatr binosini qurdirgan", "Opera kuylarini notaga yozgan", "Aktyorlar uchun darslik yozgan", "Bir qancha pyesalarni tarjima qilib sahnalashtirgan"]$$::jsonb,
       3,
       $$Avloniy 1913-yilda teatr truppasini tuzib, 1910–1916-yillarda bir qancha pyesalarni tarjima qilib sahnalashtirgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$Teatr truppam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | Elchilik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy Afg'onistonda siyosiy vakil bo'lib qaysi yillarda ishlagan?$$,
       $$["1907–1908-yillarda", "1913–1914-yillarda", "1919–1920-yillarda", "1930–1934-yillarda"]$$::jsonb,
       2,
       $$Avloniy 1919–1920-yillarda Afg'onistonda siyosiy vakil bo'lib ishlagan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$Elchilik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-avloniy | So'nggi yillarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Avloniy qachon vafot etgan?$$,
       $$["1916-yilda", "1934-yil 24-avgustda", "1938-yilda", "1941-yilda"]$$::jsonb,
       1,
       $$Avloniy 1930–1934-yillarda O'rta Osiyo universitetida professor bo'lib ishlagan va 1934-yil 24-avgustda vafot etgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934).$$
FROM fact_cards f
WHERE f.topic_uz = $$So'nggi yillarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- abdulla-oripov | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripov Qashqadaryo viloyatining qaysi tumanida tug'ilgan?$$,
       $$["Koson tumanida", "Shahrisabz tumanida", "G'uzor tumanida", "Kitob tumanida"]$$::jsonb,
       0,
       $$Abdulla Oripov 1941-yil 21-martda Qashqadaryo viloyati Koson tumanidagi Neko'z qishlog'ida tug'ilgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripov Toshkent davlat universitetining jurnalistika fakultetini qaysi yili tugatgan?$$,
       $$["1958-yilda", "1963-yilda", "1969-yilda", "1975-yilda"]$$::jsonb,
       1,
       $$Oripov 1963-yilda Toshkent davlat universitetining jurnalistika fakultetini tugatgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | Davlat madhiyasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripov 1992-yilda qaysi muhim matnni yozgan?$$,
       $$["«Jannatga yo'l» dostonini", "«Sohibqiron» dostonini", "«Mitti yulduz» to'plamini", "O'zbekiston Respublikasi Davlat madhiyasi matnini"]$$::jsonb,
       3,
       $$Oripov 1992-yilda O'zbekiston Respublikasi Davlat madhiyasi matnini yozgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlat madhiyasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | She'riy kitoblarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripovning «Mitti yulduz» kitobi qaysi yili chop etilgan?$$,
       $$["1955-yilda", "1961-yilda", "1965-yilda", "1971-yilda"]$$::jsonb,
       2,
       $$Oripovning «Mitti yulduz» kitobi 1965-yilda chop etilgan; keyinroq «Ko'zlarim yo'lingda», «Onajon», «O'zbekiston» va «Munojot» kitoblari chiqqan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$She'riy kitoblarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | Dostonlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripovning «Jannatga yo'l» dostoni qaysi yili yozilgan?$$,
       $$["1978-yilda", "1965-yilda", "1971-yilda", "1996-yilda"]$$::jsonb,
       0,
       $$Oripov «Jannatga yo'l» dostonini 1978-yilda, «Sohibqiron» dostonini esa 1996-yilda yozgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Dostonlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | Sahna asarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1998-yilda Abdulla Oripovning qaysi she'riy dramasi yirik teatrlarda sahnalashtirilgan?$$,
       $$["«Jannatga yo'l»", "«Sohibqiron»", "«Munojot»", "«O'zbekiston»"]$$::jsonb,
       1,
       $$1998-yilda Oripovning «Sohibqiron» she'riy dramasi yirik teatrlarda sahnalashtirilgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Sahna asarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | Tarjimalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripov qaysi shoirlarning she'rlarini o'zbekchaga tarjima qilgan?$$,
       $$["Bayron va Shekspir", "Gyote va Shiller", "Homer va Vergiliy", "Pushkin, Nekrasov, Shevchenko va Rasul Hamzatov"]$$::jsonb,
       3,
       $$Oripov Dantening «Ilohiy komediya» asarini hamda Pushkin, Nekrasov, Shevchenko va Rasul Hamzatov she'rlarini o'zbekchaga o'girgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tarjimalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | Unvonlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripov 1990-yilda qanday unvon olgan?$$,
       $$["O'zbekiston xalq shoiri", "O'zbekiston Qahramoni", "Professor", "Akademik"]$$::jsonb,
       0,
       $$Oripov 1990-yilda O'zbekiston xalq shoiri, 1998-yilda esa O'zbekiston Qahramoni unvonini olgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Unvonlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | Mukofotlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripov 1983-yilda qaysi mukofot sovrindori bo'lgan?$$,
       $$["Alisher Navoiy nomidagi Davlat mukofoti", "Boburiy mukofoti", "Hamza mukofoti", "O'zbekiston Qahramoni unvoni"]$$::jsonb,
       2,
       $$Oripov 1983-yilda Hamza mukofoti, 1992-yilda esa Alisher Navoiy nomidagi Davlat mukofoti sovrindori bo'lgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Mukofotlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-oripov | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Oripov necha yoshida vafot etgan?$$,
       $$["65 yoshida", "70 yoshida", "75 yoshida", "80 yoshida"]$$::jsonb,
       2,
       $$Oripov 2016-yil 5-noyabrda 75 yoshida vafot etgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- abdulla-qodiriy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Qodiriy qachon va qayerda tug'ilgan?$$,
       $$["1886-yilda Buxoroda", "1894-yilda Toshkentda", "1878-yilda Toshkentda", "1905-yilda Samarqandda"]$$::jsonb,
       1,
       $$Abdulla Qodiriy 1894-yilda Toshkentda tug'ilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Qodiriy qanday oilada tug'ilgan?$$,
       $$["To'quvchi oilasida", "Ziyoli oilasida", "Savdogar oilasida", "Bog'bon oilasida"]$$::jsonb,
       3,
       $$Abdulla Qodiriy Toshkentda bog'bon oilasida tug'ilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | «O'tkan kunlar»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«O'tkan kunlar» romanida qaysi davrdagi hayot tasvirlangan?$$,
       $$["Xonliklar davridagi hayot", "Temuriylar davridagi hayot", "Jadidlar davridagi hayot", "Mustaqillik davridagi hayot"]$$::jsonb,
       0,
       $$«O'tkan kunlar» romanida xonliklar davridagi hayot va Otabek bilan Kumushning qismati tasvirlangan. Manba: O'zbekiston tarixi, 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«O'tkan kunlar»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | «O'tkan kunlar»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$O'zbek adabiyotidagi ilk roman — «O'tkan kunlar»ni kim yozgan?$$,
       $$["Abdurauf Fitrat", "Cho'lpon", "Abdulla Qodiriy", "Abdulla Avloniy"]$$::jsonb,
       2,
       $$O'zbek adabiyotidagi ilk roman — «O'tkan kunlar»ni Abdulla Qodiriy yozgan. Manba: O'zbekiston tarixi, 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«O'tkan kunlar»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | «Mehrobdan chayon»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Qodiriyning «Mehrobdan chayon» romani nima asosida yozilgan?$$,
       $$["Amir Temur yurishlari asosida", "Xudoyorxon saroyidagi voqealar asosida", "Bobur hayoti asosida", "Jadid maktablari hayoti asosida"]$$::jsonb,
       1,
       $$Qodiriyning ikkinchi romani «Mehrobdan chayon» Xudoyorxon saroyidagi voqealar asosida yozilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Mehrobdan chayon»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | «Mehrobdan chayon»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Mehrobdan chayon» Abdulla Qodiriyning nechanchi romani?$$,
       $$["Birinchi romani", "Ikkinchi romani", "Uchinchi romani", "To'rtinchi romani"]$$::jsonb,
       1,
       $$«Mehrobdan chayon» — Qodiriyning ikkinchi romani bo'lib, u Xudoyorxon saroyidagi voqealar asosida yozilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Mehrobdan chayon»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | Julqunboy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Qodiriy «Julqunboy» taxallusi bilan qanday asarlarini e'lon qilgan?$$,
       $$["Tarixiy romanlarini", "She'riy to'plamlarini", "Darsliklarini", "Hajviy asarlarini"]$$::jsonb,
       3,
       $$Qodiriy hajviy asarlarini «Julqunboy» taxallusi bilan e'lon qilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Julqunboy$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | Julqunboy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Julqunboy» taxallusi qaysi adibga tegishli?$$,
       $$["Abdurauf Fitratga", "Abdulla Avloniyga", "Abdulla Qodiriyga", "Cho'lponga"]$$::jsonb,
       2,
       $$«Julqunboy» — Abdulla Qodiriyning taxallusi bo'lib, u hajviy asarlarini shu nom bilan e'lon qilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Julqunboy$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | Qatag'on
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Qodiriy hayoti qanday yakunlangan?$$,
       $$["1938-yilda qatag'on qurboni bo'lgan", "Uzoq umr ko'rib vafot etgan", "Xorijda yashab qolgan", "Ijoddan voz kechib ketgan"]$$::jsonb,
       0,
       $$Abdulla Qodiriy 1938-yilda qatag'on qurboni bo'lgan; keyinchalik nomi oqlangan. Manba: O'zbekiston tarixi, 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qatag'on$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdulla-qodiriy | Qatag'on
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Qatag'ondan keyin Abdulla Qodiriyning nomi va asarlari taqdiri qanday bo'lgan?$$,
       $$["Asarlari butunlay yo'qolgan", "Asarlari faqat xorijda nashr etilgan", "Nomi tilga olinmay qolgan", "Nomi oqlangan va asarlari xalqqa qaytarilgan"]$$::jsonb,
       3,
       $$Keyinchalik Qodiriyning nomi oqlangan va asarlari xalqqa qaytarilgan. Manba: O'zbekiston tarixi, 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qatag'on$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- abdurauf-fitrat | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdurauf Fitrat qanday oilada tug'ilgan?$$,
       $$["Ziyoli oilasida", "Bog'bon oilasida", "To'quvchi oilasida", "Dehqon oilasida"]$$::jsonb,
       0,
       $$Abdurauf Fitrat 1886-yilda Buxoroda, ziyoli oilasida tug'ilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | Taxallusim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdurauf Fitrat Istanbul dorilfununida qaysi yillarda o'qigan?$$,
       $$["1900–1905-yillarda", "1909–1913-yillarda", "1913–1917-yillarda", "1919–1920-yillarda"]$$::jsonb,
       1,
       $$Fitrat 1909–1913-yillarda Istanbul dorilfununida o'qigan va shu davrda «Fitrat» — «bilimdon» taxallusini olgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxallusim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | «Sayha»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Fitratning «Sayha» she'riy to'plami nomi qanday ma'noni bildiradi?$$,
       $$["«Bilimdon»", "«Guliston»", "«Chorlov»", "«Tong»"]$$::jsonb,
       2,
       $$Fitratning 1911-yilda chiqqan «Sayha» she'riy to'plami nomi «Chorlov» degan ma'noni bildiradi. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Sayha»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | «Munozara»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Fitratning «Munozara» asarida nima tasvirlangan?$$,
       $$["Eski va yangi qarashlar o'rtasidagi bahs", "Saroy hayoti", "Musiqa tarixi", "Safar taassurotlari"]$$::jsonb,
       0,
       $$1913-yilda Istanbulda chop etilgan «Munozara» asarida eski va yangi qarashlar bahsi berilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Munozara»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | Dramalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagi juftliklardan qaysi biri Fitrat dramalariga tegishli?$$,
       $$["«O'tkan kunlar» va «Mehrobdan chayon»", "«Jannatga yo'l» va «Sohibqiron»", "«Birinchi muallim» va «Ikkinchi muallim»", "«Qon» va «Temur sag'anasi»"]$$::jsonb,
       3,
       $$Fitrat «Qon», «Temur sag'anasi», «O'g'izxon», «Abulfayzxon» va «Arslon» kabi dramalar yozgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Dramalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | Til ilmim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Fitratning til darsliklari 1925–1930-yillarda necha marta chop etilgan?$$,
       $$["Ikki marta", "Uch marta", "Besh marta", "O'n marta"]$$::jsonb,
       2,
       $$Fitrat «Adabiyot qoidalari» va «Eski o'zbek adabiyoti namunalari» asarlarini yaratgan, til darsliklari esa 1925–1930-yillarda besh marta chop etilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Til ilmim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | Professor unvoni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$O'zbek olimlari orasida birinchilardan bo'lib professor unvonini kim olgan?$$,
       $$["Abdulla Qodiriy", "Abdurauf Fitrat", "Cho'lpon", "Abdulla Oripov"]$$::jsonb,
       1,
       $$Abdurauf Fitrat o'zbek olimlari orasida birinchilardan bo'lib professor unvonini olgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Professor unvoni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | Musiqa maktabim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdurauf Fitrat Sharq musiqa maktabini qaysi yili tashkil etgan?$$,
       $$["1907-yilda", "1913-yilda", "1917-yilda", "1921-yilda"]$$::jsonb,
       3,
       $$Fitrat 1921-yilda Sharq musiqa maktabini tashkil etib, Shashmaqom kuylarini notaga yozish ishlariga rahbarlik qilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Musiqa maktabim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | Musiqa kitobim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Fitrat 1927-yilda qaysi risolasini nashr ettirgan?$$,
       $$["«O'zbek klassik musiqasi va uning tarixi»", "«Adabiyot qoidalari»", "«Munozara»", "«Sayha»"]$$::jsonb,
       0,
       $$Fitrat 1927-yilda «O'zbek klassik musiqasi va uning tarixi» risolasini nashr ettirgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Musiqa kitobim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abdurauf-fitrat | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1938-yil 4-oktabrda Fitrat bilan birga yana qaysi adiblar qatag'on qurboni bo'lgan?$$,
       $$["Oybek va G'afur G'ulom", "Zulfiya va Erkin Vohidov", "Abdulla Qodiriy va Cho'lpon", "Hamza va Abdulla Avloniy"]$$::jsonb,
       2,
       $$Fitrat 1938-yil 4-oktabrda Abdulla Qodiriy va Cho'lpon bilan birga qatag'on qurboni bo'lgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- abu-nasr-forobiy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abu Nasr Forobiyning to'liq ismi qanday?$$,
       $$["Abu Ali al-Husayn ibn Abdulloh ibn Sino", "Abu Nasr Muhammad ibn Muhammad ibn O'zlug' Tarxon Forobiy", "Abu Rayhon Muhammad ibn Ahmad Beruniy", "Muhammad ibn Muso al-Xorazmiy"]$$::jsonb,
       1,
       $$Forobiy 873-yilda Forob shahrida tug'ilgan, to'liq ismi — Abu Nasr Muhammad ibn Muhammad ibn O'zlug' Tarxon Forobiy. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | «Ikkinchi muallim»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Forobiyga nisbatan ishlatilgan «Muallimus-soniy» nomi qanday ma'noni anglatadi?$$,
       $$["«Ikkinchi muallim»", "«Birinchi muallim»", "«Bilimdon»", "«Buyuk hakim»"]$$::jsonb,
       0,
       $$Dunyo Arastuni birinchi muallim deb biladi, Forobiyni esa «Muallimus-soniy» — «Ikkinchi muallim» deb atashgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Ikkinchi muallim»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Forobiy boshlang'ich ma'lumotni qayerda olgan?$$,
       $$["Bag'dodda", "Damashqda", "Isfahonda", "Ona yurtida"]$$::jsonb,
       3,
       $$Forobiy boshlang'ich ma'lumotni ona yurtida olgan, so'ng Toshkent, Buxoro va Samarqandda o'qigan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | Safarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Forobiy qaysi shaharlarda bo'lgan?$$,
       $$["Bag'dod, Isfahon, Hamadon va Rayda", "Hirot va Marvda", "Makka va Madinada", "Qohira va Iskandariyada"]$$::jsonb,
       0,
       $$Forobiy Bag'dod, Isfahon, Hamadon va Ray shaharlarida bo'lgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$Safarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | Tillar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Yetmishdan ortiq tilni bilgan alloma kim?$$,
       $$["Abu Ali ibn Sino", "Abu Rayhon Beruniy", "Abu Nasr Forobiy", "Al-Xorazmiy"]$$::jsonb,
       2,
       $$Abu Nasr Forobiy yetmishdan ortiq tilni bilgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tillar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | Fanlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagi fanlar guruhidan qaysi biri Forobiy shug'ullangan sohalarga kiradi?$$,
       $$["Dengizchilik va kartografiya", "Falsafa, astronomiya va tibbiyot", "Arxeologiya va geologiya", "Huquqshunoslik va iqtisod"]$$::jsonb,
       1,
       $$Forobiy falsafa, arifmetika, geometriya, astronomiya, musiqa, fizika, kimyo, optika, tibbiyot va biologiya bilan shug'ullangan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$Fanlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | Asarlarim soni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Forobiy asarlarining taqdiri qanday bo'lgan?$$,
       $$["Barcha asarlari to'liq saqlanib qolgan", "Asarlaridan birortasi ham saqlanmagan", "Faqat bitta asari yetib kelgan", "160 dan ortiq asaridan qirqqa yaqini bizgacha yetib kelgan"]$$::jsonb,
       3,
       $$Forobiy 160 dan ortiq asar yozgan, bizgacha ularning qirqqa yaqini yetib kelgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$Asarlarim soni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | Musiqa ilmi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Musiqa ilmi bilan ham shug'ullangan qomusiy alloma kim?$$,
       $$["Al-Xorazmiy", "Ahmad Farg'oniy", "Imom Buxoriy", "Abu Nasr Forobiy"]$$::jsonb,
       3,
       $$Musiqa ilmi Abu Nasr Forobiy shug'ullangan fanlardan biri edi. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$Musiqa ilmi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | Vafotim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abu Nasr Forobiy qaysi yili vafot etgan?$$,
       $$["920-yilda", "950-yilda", "973-yilda", "990-yilda"]$$::jsonb,
       1,
       $$Forobiy 950-yilda Damashq shahrida vafot etgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$Vafotim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- abu-nasr-forobiy | Nomim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Forob shahri nomi qaysi allomaning nomida aks etgan?$$,
       $$["Abu Rayhon Beruniyning nomida", "Ahmad Farg'oniyning nomida", "Abu Nasr Forobiyning nomida", "Abu Ali ibn Sinoning nomida"]$$::jsonb,
       2,
       $$Allomaning to'liq ismidagi «Forobiy» qismi u tug'ilgan Forob shahri nomidan olingan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950).$$
FROM fact_cards f
WHERE f.topic_uz = $$Nomim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- TOTAL: 50

-- ===================== heroes_ab.sql =====================

-- abu-rayhon-beruniy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abu Rayhon Beruniy qaysi yilda tug'ilgan?$$,
       $$["973-yilda", "1003-yilda", "948-yilda", "1010-yilda"]$$::jsonb,
       0,
       $$Beruniy 973-yilda Xorazmning Kot shahri yaqinida tug'ilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$973-yilda Xorazmning Kot shahri yaqinida qaysi olim tug'ilgan?$$,
       $$["Muhammad al-Xorazmiy", "Abu Rayhon Beruniy", "Ahmad al-Farg'oniy", "Ali Qushchi"]$$::jsonb,
       1,
       $$Abu Rayhon Beruniy 973-yilda Xorazmning Kot shahri yaqinida tug'ilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | Hindiston haqidagi asar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Beruniy «Hindiston» asarini yozish uchun qaysi tilni o'rgangan?$$,
       $$["Xitoy tilini", "Yunon tilini", "Sanskrit tilini", "Lotin tilini"]$$::jsonb,
       2,
       $$Beruniy «Hindiston» asarini yozish uchun sanskrit tilini o'rgangan va mamlakatni o'zi ko'rgan holda tasvirlagan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Hindiston haqidagi asar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | Hindiston haqidagi asar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Beruniy «Hindiston» asarida nimalarni tasvirlagan?$$,
       $$["Faqat urushlar tarixini", "Yulduzlar jadvalini", "Dorivor o'simliklarni", "Xalqning dini, urf-odatlari va fanlarini"]$$::jsonb,
       3,
       $$«Hindiston» asarida Beruniy bu mamlakat xalqining dini, urf-odatlari va fanlarini o'zi ko'rgan holda tasvirlagan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Hindiston haqidagi asar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | Yer o'lchovi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Beruniy Yer sharining radiusini qanday usul bilan hisoblab chiqqan?$$,
       $$["Tog' balandligidan ufq burchagini o'lchab", "Quduq tubidagi soyani kuzatib", "Yulduzlar jadvalini solishtirib", "Karvon yo'lining uzunligini o'lchab"]$$::jsonb,
       0,
       $$Beruniy tog' balandligidan ufq burchagini o'lchab, Yer sharining radiusini hisoblab chiqqan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Yer o'lchovi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | Yer o'lchovi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Beruniyning Yer radiusi bo'yicha hisob-kitobi qanday natija bergan?$$,
       $$["Natija ikki baravar katta chiqqan", "Natija hozirgi qiymatga juda yaqin bo'lgan", "Natija butunlay noto'g'ri bo'lgan", "Natija yarmiga kam chiqqan"]$$::jsonb,
       1,
       $$Beruniyning Yer radiusi bo'yicha natijasi hozirgi qiymatga juda yaqin bo'lgan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Yer o'lchovi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | Asarlarim soni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Beruniy umri davomida nechta asar yozgan?$$,
       $$["40 ga yaqin", "70 dan ortiq", "150 dan ortiq", "500 dan ortiq"]$$::jsonb,
       2,
       $$Beruniy umri davomida astronomiya, geografiya, tarix, mineralogiya va tibbiyotga oid 150 dan ortiq asar yozgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Asarlarim soni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | Asarlarim soni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Beruniyning asarlari qaysi fanlarga oid bo'lgan?$$,
       $$["She'riyat va musiqaga", "Huquq va tilshunoslikka", "Me'morlik va rassomlikka", "Astronomiya, geografiya, tarix, mineralogiya va tibbiyotga"]$$::jsonb,
       3,
       $$Beruniyning 150 dan ortiq asari astronomiya, geografiya, tarix, mineralogiya va tibbiyotga oid bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Asarlarim soni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | «Osor ul-boqiya»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Beruniy «Osor ul-boqiya» asarida nimalarni solishtirib chiqqan?$$,
       $$["Turli xalqlarning taqvimlari, bayramlari va yil hisoblarini", "Shaharlar va daryolarning koordinatalarini", "Yulduzlarning joylashuvini", "Dorivor moddalarning xossalarini"]$$::jsonb,
       0,
       $$«Osor ul-boqiya» asarida Beruniy turli xalqlarning taqvimlari, bayramlari va yil hisoblarini solishtirib chiqqan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Osor ul-boqiya»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abu-rayhon-beruniy | «Osor ul-boqiya»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Beruniyning qaysi asarida turli xalqlarning taqvimlari solishtirilgan?$$,
       $$["«Hindiston»", "«Osor ul-boqiya»", "«Kitob surat al-arz»", "«Astronomiya asoslari»"]$$::jsonb,
       1,
       $$Beruniy «Osor ul-boqiya» asarida turli xalqlarning taqvimlari, bayramlari va yil hisoblarini solishtirgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Osor ul-boqiya»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- abulgozi-bahodirxon | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abulg'ozi Bahodirxonning otasi — Xiva xoni Arabmuhammadxonning nechta o'g'li bo'lgan?$$,
       $$["Uchta", "Beshta", "Yettita", "To'qqizta"]$$::jsonb,
       2,
       $$Abulg'ozi Xiva xoni Arabmuhammadxonning yetti o'g'lidan biri bo'lgan. Manba: Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- abulgozi-bahodirxon | Taxtga kelishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1645-yildan Xiva xonligini qaysi hukmdor boshqara boshlagan?$$,
       $$["Eltuzarxon", "Umarxon", "Arabmuhammadxon", "Abulg'ozi Bahodirxon"]$$::jsonb,
       3,
       $$Abulg'ozi Bahodirxon 1645-yildan Xiva xonligini boshqargan. Manba: Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali).$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxtga kelishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- abulgozi-bahodirxon | Hukmronligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abulg'ozi Bahodirxon 1663-yilda taxtni kimga topshirgan?$$,
       $$["O'g'liga", "Ukasiga", "Nabirasiga", "Vaziriga"]$$::jsonb,
       0,
       $$Abulg'ozi Xivani 1645-yildan 1663-yilgacha boshqarib, so'ng taxtni o'g'liga topshirgan. Manba: Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali).$$
FROM fact_cards f
WHERE f.topic_uz = $$Hukmronligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- abulgozi-bahodirxon | «Shajarai turk»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Turkiy xalqlar tarixi bayon etilgan «Shajarai turk» asarini kim yozgan?$$,
       $$["Ali Qushchi", "Abulg'ozi Bahodirxon", "Zahiriddin Muhammad Bobur", "Abu Rayhon Beruniy"]$$::jsonb,
       1,
       $$«Shajarai turk» asarini Abulg'ozi Bahodirxon yozgan, unda turkiy xalqlar tarixi bayon etilgan. Manba: Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Shajarai turk»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- abulgozi-bahodirxon | Asarim — manba
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abulg'ozining «Shajarai turk» asaridan tarixiy manba sifatida kimlar foydalanadilar?$$,
       $$["Faqat shoirlar", "Faqat tabiblar", "Olimlar", "Faqat sayyohlar"]$$::jsonb,
       2,
       $$Olimlar Abulg'ozining «Shajarai turk» asaridan tarixiy manba sifatida foydalanadilar. Manba: Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali).$$
FROM fact_cards f
WHERE f.topic_uz = $$Asarim — manba$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- abulgozi-bahodirxon | Xon va olim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abulg'ozi Bahodirxon davlat arbobi bo'lishdan tashqari yana qanday sifatda tanilgan?$$,
       $$["Bastakor sifatida", "Me'mor sifatida", "Rassom sifatida", "Olim sifatida"]$$::jsonb,
       3,
       $$Abulg'ozi nafaqat davlat arbobi, balki olim sifatida ham tanilgan. Manba: Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xon va olim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- abulgozi-bahodirxon | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1664-yil Abulg'ozi Bahodirxon hayotida qaysi voqea bilan bog'liq?$$,
       $$["Bu yili u vafot etgan", "Bu yili u taxtga chiqqan", "Bu yili u Xivani boshqara boshlagan", "Bu yili u asar yozishni boshlagan"]$$::jsonb,
       0,
       $$Abulg'ozi Bahodirxon 1664-yilda vafot etgan. Manba: Ziyouz.com — «Shajarai turk» nashri taqdimoti; «O'zbekiston tarixi» 8-sinf darsligi (loyihaning fakt kartochkasi orqali).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- ahmad-al-fargoniy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ahmad al-Farg'oniy qaysi asrda yashab ijod qilgan?$$,
       $$["VIII asrda", "IX asrda", "XI asrda", "XIII asrda"]$$::jsonb,
       1,
       $$Ahmad al-Farg'oniy Farg'onada tug'ilib, IX asrda yashab ijod qilgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Bag'dodda ishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Farg'oniy faoliyat yuritgan «Bayt ul-hikma»ga qaysi olim rahbarlik qilgan?$$,
       $$["Abu Rayhon Beruniy", "Ali Qushchi", "Muhammad al-Xorazmiy", "Qozizoda Rumiy"]$$::jsonb,
       2,
       $$Al-Farg'oniyning ijodiy faoliyati Bag'dod bilan, al-Xorazmiy rahbarligidagi «Bayt ul-hikma» bilan bog'liq bo'lgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Bag'dodda ishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Rasadxonalar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Farg'oniy Bag'dod va Damashqda qanday ilmiy inshootlar qurilishida qatnashgan?$$,
       $$["Madrasalar", "Kutubxonalar", "Karvonsaroylar", "Rasadxonalar"]$$::jsonb,
       3,
       $$Al-Farg'oniy Bag'dod va Damashqdagi rasadxonalar qurilishida qatnashgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Rasadxonalar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Ptolemey jadvali
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Farg'oniy qaysi olimning «Yulduzlar jadvali»dagi ma'lumotlarni tekshirib chiqqan?$$,
       $$["Ptolemeyning", "Aristotelning", "Evklidning", "Arximedning"]$$::jsonb,
       0,
       $$Al-Farg'oniy Ptolemeyning «Yulduzlar jadvali»dagi ma'lumotlarni tekshirib chiqqan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ptolemey jadvali$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Quyosh tutilishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Farg'oniy quyosh tutilishini qaysi yilda oldindan aytib bergan?$$,
       $$["797-yilda", "812-yilda", "833-yilda", "850-yilda"]$$::jsonb,
       1,
       $$Al-Farg'oniy 812-yilda quyosh tutilishini oldindan aytib bergan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Quyosh tutilishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Yer shakli
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Yerning dumaloq ekanini ochib bergan farg'onalik olim kim?$$,
       $$["Muhammad al-Xorazmiy", "Abu Rayhon Beruniy", "Ahmad al-Farg'oniy", "Ali Qushchi"]$$::jsonb,
       2,
       $$Yerning dumaloq ekanini Ahmad al-Farg'oniy ochib bergan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Yer shakli$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Nil o'lchagichi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Farg'oniy Misrda qaysi daryoning suv sathini o'lchaydigan asbob yasagan?$$,
       $$["Dajla daryosining", "Amudaryoning", "Sirdaryoning", "Nil daryosining"]$$::jsonb,
       3,
       $$Al-Farg'oniy Misrda Nil daryosi suvining sathini o'lchaydigan asbob yasagan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Nil o'lchagichi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Yevropadagi nomim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Yevropada «Alfraganus» nomi bilan qaysi olim mashhur bo'lgan?$$,
       $$["Ahmad al-Farg'oniy", "Muhammad al-Xorazmiy", "Abu Rayhon Beruniy", "Ali Qushchi"]$$::jsonb,
       0,
       $$Yevropaliklar Ahmad al-Farg'oniyni «Alfraganus» deb atashgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Yevropadagi nomim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Asarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri al-Farg'oniyning saqlanib qolgan asarlaridan biri?$$,
       $$["«Kitob surat al-arz»", "«Usturlob yasash haqida kitob»", "«Osor ul-boqiya»", "«Shajarai turk»"]$$::jsonb,
       1,
       $$Al-Farg'oniyning yettita asari saqlanib qolgan, ular orasida «Usturlob yasash haqida kitob» ham bor. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Asarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ahmad-al-fargoniy | Xotiram
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1998-yilda al-Farg'oniy tavalludining necha yilligi xalqaro miqyosda nishonlandi?$$,
       $$["1000 yilligi", "1100 yilligi", "1200 yilligi", "1500 yilligi"]$$::jsonb,
       2,
       $$1998-yilda al-Farg'oniy tavalludining 1200 yilligi xalqaro miqyosda nishonlandi va Quva shahrida haykal o'rnatildi. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xotiram$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- al-xorazmiy | Vatanim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muhammad al-Xorazmiy qaysi o'lkada tug'ilgan?$$,
       $$["Farg'ona vodiysida", "Buxoroda", "Samarqandda", "Xorazm o'lkasida"]$$::jsonb,
       3,
       $$Al-Xorazmiy Xorazm o'lkasida tug'ilgan, shuning uchun al-Xorazmiy deb atalgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Vatanim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Vatanim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Olim nima sababdan al-Xorazmiy deb atalgan?$$,
       $$["Xorazm o'lkasida tug'ilgani uchun", "Xorazmda xonlik qilgani uchun", "Xorazmda rasadxona qurgani uchun", "«Xorazm» nomli asar yozgani uchun"]$$::jsonb,
       0,
       $$Olim Xorazm o'lkasida tug'ilgani uchun al-Xorazmiy deb atalgan; umrining katta qismi Bag'doddagi «Bayt ul-hikma»da o'tgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Vatanim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Algebra
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Xorazmiy «Al-kitob al-muxtasar fi hisob al-jabr va-l-muqobala» asarida nimani bayon qilgan?$$,
       $$["Yulduzlar jadvalini", "Tenglamalarni yechish qoidalarini", "Shaharlar koordinatalarini", "Xalqlar taqvimlarini"]$$::jsonb,
       1,
       $$Bu asarida al-Xorazmiy tenglamalarni yechish qoidalarini bayon qilgan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Algebra$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Algebra
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Algebra» atamasi al-Xorazmiyning qaysi asari nomidan kelib chiqqan?$$,
       $$["«Kitob surat al-arz»", "«Osor ul-boqiya»", "«Al-kitob al-muxtasar fi hisob al-jabr va-l-muqobala»", "«Astronomiya asoslari»"]$$::jsonb,
       2,
       $$«Algebra» atamasi «Al-kitob al-muxtasar fi hisob al-jabr va-l-muqobala» asari nomidagi «al-jabr» so'zidan kelib chiqqan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Algebra$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Algoritm so'zi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Xorazmiy ismi lotin tiliga qanday shaklda o'girilgan?$$,
       $$["«Alfraganus»", "«Avitsenna»", "«Algebra»", "«Algoritmi»"]$$::jsonb,
       3,
       $$Al-Xorazmiy ismi lotin tiliga «Algoritmi» shaklida o'girilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Algoritm so'zi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Algoritm so'zi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Xorazmiy ismining lotincha shakli tufayli hisoblash qoidalari ketma-ketligi bugun qanday ataladi?$$,
       $$["Algoritm", "Algebra", "Geometriya", "Trigonometriya"]$$::jsonb,
       0,
       $$Al-Xorazmiy ismi lotin tiliga «Algoritmi» shaklida o'girilgani sababli hisoblash qoidalari ketma-ketligi bugun «algoritm» deb ataladi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Algoritm so'zi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Hind raqamlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Xorazmiy qaysi raqamlarni va sanoq tizimini tushuntirib bergan?$$,
       $$["Rim raqamlarini va o'n ikkilik tizimni", "Hind raqamlarini va o'nlik sanoq tizimini", "Yunon raqamlarini va oltmishlik tizimni", "Misr raqamlarini va beshlik tizimni"]$$::jsonb,
       1,
       $$Al-Xorazmiy hind raqamlari va o'nlik sanoq tizimini, jumladan nolni tushuntirib bergan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Hind raqamlari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Hind raqamlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Xorazmiy tushuntirib bergan hind raqamlari bugungi kunda qanday nom bilan yuritiladi?$$,
       $$["«Rim raqamlari»", "«Yunon raqamlari»", "«Arab raqamlari»", "«Lotin raqamlari»"]$$::jsonb,
       2,
       $$Al-Xorazmiy asari orqali hind raqamlari Yevropaga tarqalgan va bugun ular «arab raqamlari» deb yuritiladi. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Hind raqamlari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Geografiya
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Xorazmiyning «Kitob surat al-arz» asarida nimalar keltirilgan?$$,
       $$["Yulduzlar ro'yxati", "Xalqlarning bayramlari", "Dorivor o'simliklar tavsifi", "Shaharlar va daryolarning koordinatalari"]$$::jsonb,
       3,
       $$«Kitob surat al-arz» asarida o'sha davrda ma'lum bo'lgan shaharlar va daryolarning koordinatalari keltirilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Geografiya$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- al-xorazmiy | Geografiya
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Al-Xorazmiyning geografiyaga oid asari qanday nomlanadi?$$,
       $$["«Kitob surat al-arz»", "«Hindiston»", "«Yetti iqlim hisobi»", "«Osor ul-boqiya»"]$$::jsonb,
       0,
       $$Al-Xorazmiy «Kitob surat al-arz» asarida shaharlar va daryolarning koordinatalarini keltirgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Geografiya$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- ali-qushchi | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ali Qushchi qaysi shaharda voyaga yetib, kamol topgan?$$,
       $$["Buxoroda", "Samarqandda", "Hirotda", "Bag'dodda"]$$::jsonb,
       1,
       $$Ali Qushchi 1403-yilda tug'ilib, Samarqandda voyaga yetib, kamol topgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- ali-qushchi | Laqabim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ali Qushchining laqabi qanday xizmat tufayli berilgan?$$,
       $$["Ot boqish xizmati tufayli", "Elchilik xizmati tufayli", "Lochin oviga oid xizmati tufayli", "Kutubxonadagi xizmati tufayli"]$$::jsonb,
       2,
       $$«Qushchi» laqabi qushlar bilan bog'liq — lochin oviga oid xizmat tufayli berilgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Laqabim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- ali-qushchi | Ustozlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ulug'bek Ali Qushchini kim deb bilgan?$$,
       $$["O'z ustozi deb", "O'z vaziri deb", "Raqibi deb", "O'z shogirdi va yosh safdoshi deb"]$$::jsonb,
       3,
       $$Ulug'bek Ali Qushchini o'z shogirdi va yosh safdoshi deb bilgan; u Qozizoda Rumiy va G'iyosiddin Jamshid Koshiy bilan birga ishlagan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Ustozlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- ali-qushchi | Ilk ma'ruzam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ali Qushchi Ulug'bek madrasasida talabalarga ilk ma'ruzasini qaysi yilda o'qigan?$$,
       $$["1420-yilda", "1403-yilda", "1445-yilda", "1474-yilda"]$$::jsonb,
       0,
       $$Ali Qushchi 1420-yilda Ulug'bek madrasasida talabalarga ilk bor ma'ruza o'qigan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk ma'ruzam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- ali-qushchi | Xitoy safarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ulug'bek Ali Qushchini Xitoyga qanday maqsadda yuborgan?$$,
       $$["Savdo shartnomasi tuzish uchun", "Astronomiyaga oid qo'llanmalar va taqvimlarni topib kelish uchun", "Harbiy ittifoq tuzish uchun", "Ipak matolar sotib olish uchun"]$$::jsonb,
       1,
       $$Ulug'bek Ali Qushchini astronomiyaga oid xitoy qo'llanmalari va taqvimlarini topib kelish uchun Xitoyga yuborgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Xitoy safarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- ali-qushchi | «Zij»dagi hissam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ulug'bek Ali Qushchining «Ziji jadidi Ko'ragoniy»ni yakunlashdagi xizmatini qayerda alohida ta'kidlagan?$$,
       $$["O'z maktubida", "Asar xotimasida", "Asar so'zboshisida", "Boshqa bir asarida"]$$::jsonb,
       2,
       $$Ali Qushchining «Ziji jadidi Ko'ragoniy»ni yakunlashdagi katta xizmatini Ulug'bek asar so'zboshisida alohida ta'kidlagan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$«Zij»dagi hissam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- ali-qushchi | Unvonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«O'z zamonasining Ptolemeyi» deb qaysi olim atalgan?$$,
       $$["Ahmad al-Farg'oniy", "Muhammad al-Xorazmiy", "Abu Rayhon Beruniy", "Ali Qushchi"]$$::jsonb,
       3,
       $$Ali Qushchini «o'z zamonasining Ptolemeyi» deb atashgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Unvonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- ali-qushchi | Asarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ali Qushchi arab va fors tillarida qanday asarlar yaratgan?$$,
       $$["Ilmiy asarlar", "She'riy devonlar", "Sayohatnomalar", "Maqollar to'plamlari"]$$::jsonb,
       0,
       $$Ali Qushchi arab va fors tillarida ilmiy asarlar yaratgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Asarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- ali-qushchi | Merosim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ulug'bek ilmiy maktabining davomchisi va elchisi sifatida tarixda qolgan olim kim?$$,
       $$["Ahmad al-Farg'oniy", "Ali Qushchi", "Muhammad al-Xorazmiy", "Abu Rayhon Beruniy"]$$::jsonb,
       1,
       $$Ali Qushchi Ulug'bek ilmiy maktabining davomchisi va elchisi sifatida tarixda qolgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren); UzA — «Ali Qushchi — Mirzo Ulug'bek ilmiy maktabining buyuk elchisi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Merosim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

-- TOTAL: 46

-- ===================== heroes_ac.sql =====================

-- alisher-navoiy | Tug'ilishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Alisher Navoiy qaysi yili tug'ilgan?$$,
       $$["1441-yilda", "1421-yilda", "1456-yilda", "1483-yilda"]$$::jsonb,
       0,
       $$Alisher Navoiy 1441-yil 9-fevralda Hirot shahrida tug'ilgan, asl ismi — Nizomiddin Mir Alisher. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- alisher-navoiy | Ona tili himoyasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Navoiy «Muhokamat ul-lug'atayn» asarini qaysi yilda yozgan?$$,
       $$["1483-yilda", "1499-yilda", "1469-yilda", "1441-yilda"]$$::jsonb,
       1,
       $$«Muhokamat ul-lug'atayn» 1499-yilda yozilgan bo'lib, unda Navoiy turkiy til fors tilidan qolishmasligini isbotlagan. Manba: «Muhokamat ul-lug'atayn».$$
FROM fact_cards f
WHERE f.topic_uz = $$Ona tili himoyasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- alisher-navoiy | «Xamsa»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Navoiy «Xamsa»sini qaysi yillarda yaratgan?$$,
       $$["1469–1472-yillarda", "1491–1498-yillarda", "1483–1485-yillarda", "1499–1501-yillarda"]$$::jsonb,
       2,
       $$Navoiy 1483–1485-yillarda besh dostondan iborat «Xamsa»ni yaratgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Xamsa»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- alisher-navoiy | Davlat xizmati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Navoiy qaysi yilda muhrdor lavozimiga tayinlangan?$$,
       $$["1441-yilda", "1483-yilda", "1472-yilda", "1469-yilda"]$$::jsonb,
       3,
       $$Navoiy do'sti Husayn Boyqaro saltanatida 1469-yilda muhrdor, 1472-yilda esa vazir bo'lib xizmat qilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlat xizmati$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- alisher-navoiy | Xayriya ishlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Navoiy qurdirgan inshootlar orasidagi mashhur madrasa qanday nomlangan?$$,
       $$["«Ixlosiya»", "«Bibixonim»", "«Oqsaroy»", "«Go'ri Amir»"]$$::jsonb,
       0,
       $$Navoiy daromadini xalq uchun sarflab, 300 ga yaqin inshoot qurdirgan; «Ixlosiya» madrasasi shulardan biridir. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xayriya ishlari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- alisher-navoiy | Devonlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Navoiyning «Xazoyin ul-maoniy» devonlarida qancha misra bor?$$,
       $$["O'n besh mingga yaqin", "Qirq besh mingdan ortiq", "Yigirma besh ming", "Sakson mingdan ortiq"]$$::jsonb,
       1,
       $$Navoiy she'rlarini 1491–1498-yillarda «Xazoyin ul-maoniy» nomli to'rt devonga jamlagan, unda qirq besh mingdan ortiq misra bor. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Devonlari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- alisher-navoiy | Taxallusi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Alisher Navoiy turkiy she'rlarida qaysi taxallusni qo'llagan?$$,
       $$["Foniy", "Mashrab", "Navoiy", "Bobur"]$$::jsonb,
       2,
       $$Turkiy she'rlarida u «Navoiy» (navo — kuy degani), forsiy she'rlarida «Foniy» taxallusini qo'llagan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxallusi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- alisher-navoiy | «Lison ut-tayr»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Navoiyning «Lison ut-tayr» dostoni nomi qanday ma'noni anglatadi?$$,
       $$["Ma'nolar xazinasi", "Ikki til muhokamasi", "Hayrat bog'i", "Qushlar tili"]$$::jsonb,
       3,
       $$Navoiy umri oxirida, 1499-yilda «Lison ut-tayr» («Qushlar tili») dostonini yozgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Lison ut-tayr»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- alisher-navoiy | Vafoti
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Alisher Navoiy qaysi yilda vafot etgan?$$,
       $$["1501-yilda", "1496-yilda", "1511-yilda", "1526-yilda"]$$::jsonb,
       0,
       $$Navoiy 1501-yil 3-yanvarda ona shahri Hirotda vafot etgan, butun shahar motam tutgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Vafoti$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- amir-temur | Tug'ilishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temurning otasi kim edi?$$,
       $$["Umarshayx Mirzo", "Amir Tarag'ay", "Husayn Boyqaro", "Shohrux Mirzo"]$$::jsonb,
       1,
       $$Amir Temurning otasi barlos beklaridan Amir Tarag'ay edi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | Davlat asoslashi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur qaysi yilda Movarounnahrda markazlashgan davlatga asos solgan?$$,
       $$["1336-yilda", "1391-yilda", "1370-yilda", "1402-yilda"]$$::jsonb,
       2,
       $$Amir Temur 1370-yilda Movarounnahrda markazlashgan davlatga asos solib, poytaxt etib Samarqandni tanlagan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlat asoslashi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | Sohibqiron unvoni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur g'alabalari sharafiga qanday unvon bilan atalgan?$$,
       $$["Xoqon", "Sulton", "Mirzo", "Sohibqiron"]$$::jsonb,
       3,
       $$Amir Temur g'alabalari sharafiga Sohibqiron — «baxtli yulduzlar birlashuvi davrida tug'ilgan» degan ma'noli unvon bilan atalgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Sohibqiron unvoni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | Harbiy yurishlar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur Hindistonga qaysi yillarda yurish qilgan?$$,
       $$["1398–1399-yillarda", "1391–1392-yillarda", "1370–1371-yillarda", "1402–1403-yillarda"]$$::jsonb,
       0,
       $$Amir Temur 1398–1399-yillarda Hindistonga yurish qilgan, 1402-yilda esa Anqara jangida Boyazid Yildirimni mag'lub etgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Harbiy yurishlar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | «Temur tuzuklari»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Temur tuzuklari» asarida nima bayon qilingan?$$,
       $$["She'riy g'azallar to'plami", "Davlatni boshqarish qoidalari", "Qushlar haqidagi qissa", "Savdo yo'llari tavsifi"]$$::jsonb,
       1,
       $$«Temur tuzuklari»da Amir Temur davlatni boshqarish qoidalarini bayon qilgan; uning shiori «Kuch — adolatda» edi. Manba: «Temur tuzuklari».$$
FROM fact_cards f
WHERE f.topic_uz = $$«Temur tuzuklari»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | Bunyodkorlik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Qudratimizga shubha qilsang — binolarimizga boq!» degan so'zlar kimga tegishli?$$,
       $$["Alisher Navoiyga", "Husayn Boyqaroga", "Amir Temurga", "Zahiriddin Muhammad Boburga"]$$::jsonb,
       2,
       $$Bu so'zlar Amir Temurga tegishli: uning davrida Samarqandda Bibixonim jome masjidi va Go'ri Amir maqbarasi, Shahrisabzda Oqsaroy qad ko'targan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bunyodkorlik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | Oilasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temurning nabirasi bo'lgan olim Mirzo Ulug'bek kimning o'g'li edi?$$,
       $$["Jahongirning", "Umarshayxning", "Mironshohning", "Shohruxning"]$$::jsonb,
       3,
       $$Amir Temurning farzandlari — Jahongir, Umarshayx, Mironshoh va Shohrux; olim Mirzo Ulug'bek Shohruxning o'g'li edi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Oilasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | Elchilik aloqalari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur qaysi davlatlarning qirollari bilan yozishmalar olib borgan?$$,
       $$["Fransiya va Angliya", "Xitoy va Hindiston", "Vizantiya va Genuya", "Misr va Suriya"]$$::jsonb,
       0,
       $$Amir Temur Yevropa davlatlari bilan elchilik aloqalari o'rnatgan: Fransiya va Angliya qirollari bilan yozishmalar olib borgan, saroyida Ispaniya elchisi Klavixo mehmon bo'lgan. Manba: Klavixo kundaliklari, O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Elchilik aloqalari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | Ipak yo'li savdosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur qaysi mashhur savdo yo'lini rivojlantirib, karvon yo'llarini xavfsiz qilgan?$$,
       $$["Ziravorlar yo'lini", "Buyuk ipak yo'lini", "Qahrabo yo'lini", "Shoh yo'lini"]$$::jsonb,
       1,
       $$Amir Temur Buyuk ipak yo'li savdosini rivojlantirgan: karvon yo'llarini xavfsiz qilib, Samarqandni dunyo savdo markaziga aylantirgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ipak yo'li savdosi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- amir-temur | Vafoti
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur qayerga dafn etilgan?$$,
       $$["Shahrisabzdagi Oqsaroyga", "O'trordagi maqbaraga", "Samarqanddagi Go'ri Amir maqbarasiga", "Hirotdagi Ixlosiya madrasasi yoniga"]$$::jsonb,
       2,
       $$Amir Temur 1405-yil 18-fevralda Xitoyga yurish boshida O'tror shahrida vafot etgan va Samarqanddagi Go'ri Amir maqbarasiga dafn etilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Vafoti$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- anbar-otin | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otinning to'liq ismi qanday?$$,
       $$["Anbar Otin Uvaysiy qizi", "Anbar Otin Ashurbibi qizi", "Anbar Otin Dilshod qizi", "Anbar Otin Farmonqul qizi"]$$::jsonb,
       3,
       $$Anbar Otin 1870-yilda Qo'qonda tug'ilgan, to'liq ismi — Anbar Otin Farmonqul qizi. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | Oilam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otinning onasi Ashurbibi kimning qizi edi?$$,
       $$["Hunarmandning", "Savdogarning", "Shoirning", "Dehqonning"]$$::jsonb,
       0,
       $$Anbar Otinning otasi shoira Uvaysiy izdoshlaridan edi, onasi Ashurbibi esa hunarmand qizi edi. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$Oilam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilshod otin maktabida tahsil olgan ijodkor kim?$$,
       $$["Uvaysiy", "Anbar Otin", "Alisher Navoiy", "Boborahim Mashrab"]$$::jsonb,
       1,
       $$Anbar Otin Dilshod otin maktabida tahsil olgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | «Otin» nomim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otin she'r yozish bilan birga yana nima bilan shug'ullangan?$$,
       $$["Savdo bilan", "Tabiblik bilan", "Mahallasidagi qizlarga saboq berish bilan", "Kashtachilik bilan"]$$::jsonb,
       2,
       $$Anbar Otin she'r yozish bilan birga mahallasidagi qizlarga saboq bergan, shu sababli «otin» deb atalgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Otin» nomim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | Tillarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otin nechta tilda ijod qilgan?$$,
       $$["Bitta", "Uchta", "To'rtta", "Ikkita"]$$::jsonb,
       3,
       $$Anbar Otin ikki tilda — o'zbek va tojik tillarida ijod qilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tillarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | Devonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otinning 1905-yilda tuzilgan devonida nechta muxammas bor?$$,
       $$["To'rtta", "Qirq bitta", "O'nta", "Yigirmata"]$$::jsonb,
       0,
       $$Anbar Otin 1905-yilda o'zbekcha she'rlaridan devon tuzgan: unda 41 g'azal, 4 muxammas, qit'a, masnaviy va mustazod bor. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$Devonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | She'rlarim mavzusi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otin she'rlarida kimlarning ahvoli haqida yozgan?$$,
       $$["Saroy ayonlarining", "Mehnatkashlarning", "Savdogarlarning", "Sayohatchilarning"]$$::jsonb,
       1,
       $$Anbar Otin she'rlarining aksariyati ijtimoiy mavzuda bo'lib, adolatsizlik va mehnatkashlar ahvoli haqida yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$She'rlarim mavzusi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | Ilm-ma'rifat
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otin she'rlarida nimani ulug'lagan?$$,
       $$["Boylik va shuhratni", "Saroy hayotini", "Ilm va ma'rifatni", "Ov va bazmlarni"]$$::jsonb,
       2,
       $$Anbar Otin she'rlarida ilm va ma'rifatni ulug'lagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilm-ma'rifat$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | «Qarolar falsafasi»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otinning ayollarning og'ir ahvoli haqidagi asari qanday nomlanadi?$$,
       $$["«Boburnoma»", "«Lison ut-tayr»", "«Muhokamat ul-lug'atayn»", "«Qarolar falsafasi»"]$$::jsonb,
       3,
       $$«Qarolar falsafasi» asarida Anbar Otin ayollarning og'ir ahvoli haqida so'z yuritgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Qarolar falsafasi»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- anbar-otin | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Anbar Otin qaysi shaharda vafot etgan?$$,
       $$["Qo'qonda", "Toshkentda", "Marg'ilonda", "Samarqandda"]$$::jsonb,
       0,
       $$Anbar Otin 1906-yilda Qo'qonda vafot etgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Anbar Otin (1870–1906).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- boborahim-mashrab | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Boborahim Mashrab qaysi yili tug'ilgan?$$,
       $$["1603-yilda", "1640-yilda", "1665-yilda", "1690-yilda"]$$::jsonb,
       1,
       $$Boborahim Mashrab 1640-yilda Namanganda tug'ilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- boborahim-mashrab | Ustozim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mashrab ustozi Mulla Bozor Oxunddan nimalarni o'rgangan?$$,
       $$["Harbiy san'atni", "Savdo ishini", "Diniy ilm va tasavvufni", "Tabobatni"]$$::jsonb,
       2,
       $$Mashrab diniy ilm va tasavvufni Mulla Bozor Oxunddan o'rgangan, fors tilini ham o'zlashtirgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ustozim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- boborahim-mashrab | Afoq Xoja xizmatida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mashrab Afoq Xoja xizmatiga kimning tavsiyasi bilan borgan?$$,
       $$["Otasining", "Xonning", "Do'stining", "Ustozining"]$$::jsonb,
       3,
       $$Taxminan 1665-yilda Mashrab ustozi tavsiyasi bilan mashhur din arbobi Afoq Xoja xizmatiga borgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711).$$
FROM fact_cards f
WHERE f.topic_uz = $$Afoq Xoja xizmatida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- boborahim-mashrab | She'riyatim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mashrab she'rlarining katta qismi qanday ta'sirda yaratilgan?$$,
       $$["Tasavvuf ta'sirida", "Saroy adabiyoti ta'sirida", "Yunon falsafasi ta'sirida", "Xalq dostonlari ta'sirida"]$$::jsonb,
       0,
       $$Mashrab she'rlarining katta qismi tasavvuf ta'sirida, Afoq Xoja dargohida yaratilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711).$$
FROM fact_cards f
WHERE f.topic_uz = $$She'riyatim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- boborahim-mashrab | Sayohatlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mashrabning hayoti haqidagi qaysi fikr to'g'ri?$$,
       $$["U butun umr saroyda xizmat qilgan", "U umrini shaharma-shahar kezishda o'tkazgan", "U umr bo'yi bir madrasada dars bergan", "U dengiz savdosi bilan shug'ullangan"]$$::jsonb,
       1,
       $$Mashrabning umri shaharma-shahar kezishda, darveshona sayohatlarda o'tgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711).$$
FROM fact_cards f
WHERE f.topic_uz = $$Sayohatlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- boborahim-mashrab | Xalq orasida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mashrab she'rlari kimlar orasida keng tarqalgan?$$,
       $$["Faqat saroy ahli orasida", "Faqat olimlar orasida", "Xalq orasida", "Chet ellik savdogarlar orasida"]$$::jsonb,
       2,
       $$Mashrab she'rlari xalq orasida og'izdan-og'izga o'tib, keng tarqalgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalq orasida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- boborahim-mashrab | Tazkiralarda nomim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mashrab nomi tazkiralardan tashqari yana qanday asarlarda tilga olingan?$$,
       $$["Harbiy yilnomalarda", "Savdo hujjatlarida", "Geografik asarlarda", "Tasavvufga oid asarlarda"]$$::jsonb,
       3,
       $$Mashrab nomi XVIII–XIX asrlarda tuzilgan tazkiralar va tasavvufga oid asarlarda tilga olingan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tazkiralarda nomim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- boborahim-mashrab | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Boborahim Mashrab qaysi shaharda vafot etgan?$$,
       $$["Balxda", "Namanganda", "Buxoroda", "Xivada"]$$::jsonb,
       0,
       $$Mashrab 1711-yilda Balx shahrida vafot etgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Boborahim Mashrab (1640–1711).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- bobur | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zahiriddin Muhammad Bobur qaysi yili tug'ilgan?$$,
       $$["1441-yilda", "1483-yilda", "1470-yilda", "1498-yilda"]$$::jsonb,
       1,
       $$Bobur 1483-yil 14-fevralda Andijonda tug'ilgan. Manba: «Boburnoma»; O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Boburning otasi kim edi?$$,
       $$["Husayn Boyqaro", "Shohrux Mirzo", "Umarshayx Mirzo", "Amir Tarag'ay"]$$::jsonb,
       2,
       $$Boburning otasi Farg'ona hokimi Umarshayx Mirzo bo'lib, Bobur Amir Temurning avlodidandir. Manba: «Boburnoma»; O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | «Boburnoma»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Boburnoma» jahon adabiyotida qanday o'rin tutadi?$$,
       $$["Ilk she'riy devonlardan biri", "Birinchi tarixiy roman", "Ilk lug'atlardan biri", "Ilk memuarlardan biri"]$$::jsonb,
       3,
       $$«Boburnoma» — Bobur o'z hayoti, ko'rgan shaharlari, o'simliklar va odamlar haqida yozgan kitobi bo'lib, jahon adabiyotidagi ilk memuarlardan biri hisoblanadi. Manba: «Boburnoma».$$
FROM fact_cards f
WHERE f.topic_uz = $$«Boburnoma»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | «Boburnoma»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bobur «Boburnoma»ni qaysi tilda yozgan?$$,
       $$["O'z tilida", "Fors tilida", "Arab tilida", "Hind tilida"]$$::jsonb,
       0,
       $$Bobur «Boburnoma»da hayoti, ko'rgan shaharlari, o'simliklar va odamlar haqida o'z tilida yozgan. Manba: «Boburnoma».$$
FROM fact_cards f
WHERE f.topic_uz = $$«Boburnoma»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | Hindistonga yurish
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bobur Hindistonda asos solgan davlat keyinchalik qanday atalgan?$$,
       $$["Temuriylar davlati", "Boburiylar saltanati", "Usmonlilar saltanati", "Xorazmshohlar davlati"]$$::jsonb,
       1,
       $$1526-yilda Panipat jangida g'alaba qozongan Bobur Hindistonda yangi davlatga asos solgan; u keyinchalik boburiylar saltanati deb atalgan. Manba: O'zbekiston tarixi, 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hindistonga yurish$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | Hindistonga yurish
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bobur Panipat jangida qaysi yilda g'alaba qozongan?$$,
       $$["1483-yilda", "1505-yilda", "1526-yilda", "1530-yilda"]$$::jsonb,
       2,
       $$Bobur 1526-yilda Panipat jangida g'alaba qozonib, Hindistonda yangi davlatga asos solgan. Manba: O'zbekiston tarixi, 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hindistonga yurish$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | Vatan sog'inchi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bobur she'rlarida qaysi yurtlar sog'inchi ko'p uchraydi?$$,
       $$["Samarqand va Buxoro", "Hirot va Balx", "Kobul va Dehli", "Andijon va Farg'ona"]$$::jsonb,
       3,
       $$Bobur umrining katta qismini vatandan uzoqda o'tkazgan; she'rlarida Andijon va Farg'ona sog'inchi ko'p uchraydi. Manba: «Boburnoma».$$
FROM fact_cards f
WHERE f.topic_uz = $$Vatan sog'inchi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | Vatan sog'inchi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Boburning umri asosan qayerda o'tgan?$$,
       $$["Vatandan uzoqda", "Andijonda", "Farg'onada", "Samarqandda"]$$::jsonb,
       0,
       $$Bobur umrining katta qismi vatandan uzoqda o'tgan, shu bois she'rlarida vatan sog'inchi ko'p uchraydi. Manba: «Boburnoma».$$
FROM fact_cards f
WHERE f.topic_uz = $$Vatan sog'inchi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | Farg'ona taxti
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bobur necha yoshida Farg'ona taxtiga o'tirgan?$$,
       $$["10 yoshida", "12 yoshida", "16 yoshida", "18 yoshida"]$$::jsonb,
       1,
       $$Otasi vafot etganda Bobur 12 yoshda edi va Farg'ona taxtiga o'tirgan. Manba: «Boburnoma».$$
FROM fact_cards f
WHERE f.topic_uz = $$Farg'ona taxti$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- bobur | Farg'ona taxti
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Otasi vafot etganida Bobur qaysi taxtga o'tirgan?$$,
       $$["Samarqand taxtiga", "Hirot taxtiga", "Farg'ona taxtiga", "Dehli taxtiga"]$$::jsonb,
       2,
       $$Otasi vafot etganida 12 yoshli Bobur Farg'ona taxtiga o'tirgan. Manba: «Boburnoma».$$
FROM fact_cards f
WHERE f.topic_uz = $$Farg'ona taxti$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

-- TOTAL: 47

-- ===================== heroes_ad.sql =====================

-- bumin-xoqon | Kimman?
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Turk xoqonligi deb atalgan buyuk davlatga kim asos solgan?$$,
       $$["Bumin xoqon", "Istami", "Abruy", "To'ng yabg'u"]$$::jsonb,
       0,
       $$Bumin xoqon tarixga Turk xoqonligi nomi bilan kirgan buyuk davlatning asoschisidir. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman?$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- bumin-xoqon | Qabilalar birlashuvi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bumin Oltoy va Janubiy Sibirda yashagan turkiy qabilalarni birlashtirib, yangi davlatni qachon tuzgan?$$,
       $$["IV asr boshida", "V asr o'rtalarida", "VI asr o'rtalarida", "VII asr oxirida"]$$::jsonb,
       2,
       $$Bumin VI asr o'rtalarida Oltoy va Janubiy Sibirda yashagan turkiy qabilalarni birlashtirib, yangi davlat tuzgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Qabilalar birlashuvi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- bumin-xoqon | 552-yil
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$552-yilda Turk xoqonligi tarixida qanday voqea yuz bergan?$$,
       $$["Xoqonlik ikkiga bo'lingan", "Bumin «xoqon» deb e'lon qilingan", "Istami g'arbga yurish boshlagan", "Turklar Orol dengizi bo'ylarini egallagan"]$$::jsonb,
       1,
       $$552-yilda Bumin «xoqon» deb e'lon qilingan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$552-yil$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- bumin-xoqon | Xoqon unvoni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Turk xoqonligi davrida qaysi unvon «buyuk hukmdor, podsho» degan ma'noni anglatgan?$$,
       $$["«Yabg'u»", "«Tudun»", "«Shod»", "«Xoqon»"]$$::jsonb,
       3,
       $$«Xoqon» so'zi buyuk hukmdor, podsho degan ma'noni anglatadi. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xoqon unvoni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- bumin-xoqon | Davlat markazi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bumin asos solgan Turk xoqonligida Oltoy o'lkasi qanday maqomga ega bo'lgan?$$,
       $$["Xoqonlikning markazi etib belgilangan", "G'arbiy chegara o'lkasi bo'lgan", "Xoqonlikdan ajralib chiqqan hudud bo'lgan", "Bo'ysunmagan qo'shni hudud bo'lgan"]$$::jsonb,
       0,
       $$Oltoy o'lkasi Turk xoqonligining markazi qilib belgilangan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlat markazi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- bumin-xoqon | Davlatning kengayishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Turklar Sirdaryo va Orol dengizi bo'ylarigacha cho'zilgan keng o'lkalarni qachon egallagan?$$,
       $$["550-yilda", "555-yildayoq", "570-yilda", "585-yilda"]$$::jsonb,
       1,
       $$Bumin asos solgan davlat tez kengaygan: 555-yildayoq turklar Sirdaryo va Orol dengizi bo'ylarigacha cho'zilgan keng o'lkalarni egallagan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlatning kengayishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- bumin-xoqon | Istami va g'arbiy yurishlar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Istami Turk xoqonligida qaysi yo'nalishdagi yurishlarga boshchilik qilgan?$$,
       $$["Sharqqa tomon", "Janubga tomon", "G'arbga tomon", "Shimolga tomon"]$$::jsonb,
       2,
       $$Turklarning g'arbga tomon yurishlariga Istami boshchilik qilgan va unga «Yabg'u xoqon» degan unvon berilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Istami va g'arbiy yurishlar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- bumin-xoqon | Xoqonlik taqdiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$VI asrning 80-yillari oxirida Turk xoqonligi taqdirida qanday voqea yuz bergan?$$,
       $$["Poytaxt Yettisuvga ko'chirilgan", "Bumin «xoqon» deb e'lon qilingan", "Turklar Oltoyni ilk bor egallagan", "Xoqonlik Sharqiy va G'arbiy turk xoqonligiga bo'linib ketgan"]$$::jsonb,
       3,
       $$VI asrning 80-yillari oxirida xoqonlik Sharqiy turk xoqonligi va G'arbiy turk xoqonligiga bo'linib ketgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xoqonlik taqdiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- cholpon | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Cho'lpon qaysi shaharda tug'ilgan?$$,
       $$["Andijonda", "Toshkentda", "Buxoroda", "Farg'onada"]$$::jsonb,
       0,
       $$Cho'lpon 1897-yilda Andijon shahrida tug'ilgan; asl ismi Abdulhamid Sulaymon o'g'li. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Cho'lpon madrasada qaysi yillarda o'qigan?$$,
       $$["1900–1904-yillarda", "1908–1912-yillarda", "1912–1914-yillarda", "1916–1920-yillarda"]$$::jsonb,
       1,
       $$Cho'lpon avval madrasada (1908–1912), so'ng rus tipidagi maktabda (1912–1914) o'qigan. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | Taxallusim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Shoir Abdulhamid Sulaymon o'g'li ijodda qanday taxallus olgan?$$,
       $$["«Fitrat»", "«Oybek»", "«Feruz»", "«Cho'lpon»"]$$::jsonb,
       3,
       $$Abdulhamid Sulaymon o'g'li ijodda «Cho'lpon» taxallusini olgan. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxallusim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | She'riy to'plamlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Cho'lponning «Uyg'onish» she'riy to'plami qaysi yilda chop etilgan?$$,
       $$["1912-yilda", "1918-yilda", "1922-yilda", "1935-yilda"]$$::jsonb,
       2,
       $$Cho'lpon she'rlari «Uyg'onish» (1922), «Buloqlar» (1923), «Tong sirlari» (1926) va «Soz» (1935) to'plamlarida chop etilgan. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$She'riy to'plamlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | «Kecha va kunduz»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1936-yilda Cho'lpon qanday asar yaratgan?$$,
       $$["«Kecha va kunduz» romanini yozgan", "«Uyg'onish» to'plamini chiqargan", "«O'ldiruvchi» dramasini yozgan", "«Buloqlar» to'plamini chiqargan"]$$::jsonb,
       0,
       $$1936-yilda Cho'lpon «Kecha va kunduz» romanini yozgan. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Kecha va kunduz»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | Hikoyalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri Cho'lpon qalamiga mansub hikoya?$$,
       $$["«O'tkan kunlar»", "«Qor qo'ynida lola»", "«Sarob»", "«Anor»"]$$::jsonb,
       1,
       $$Cho'lpon «Novvoy qiz», «Oydin kechalarda», «Qor qo'ynida lola» kabi hikoyalar yozgan. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Hikoyalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | Dramalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri Cho'lponning sahna asari?$$,
       $$["«Padarkush»", "«Kecha va kunduz»", "«Novvoy qiz»", "«Yorqinoy»"]$$::jsonb,
       3,
       $$Cho'lponning «Yorqinoy», «O'ldiruvchi» (1921), «Cho'pon sevgisi» (1922) kabi sahna asarlari bor. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Dramalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | Zamondoshlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abdulla Qodiriy va Abdurauf Fitrat bilan bir davrda qaysi shoir ijod qilgan?$$,
       $$["Alisher Navoiy", "Zahiriddin Muhammad Bobur", "Nodira", "Cho'lpon"]$$::jsonb,
       3,
       $$Cho'lpon Abdulla Qodiriy va Abdurauf Fitrat bilan bir davrda ijod qilgan. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Zamondoshlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Cho'lpon qaysi yilda qatag'on qurboni bo'lgan?$$,
       $$["1930-yilda", "1936-yilda", "1938-yilda", "1941-yilda"]$$::jsonb,
       2,
       $$Cho'lpon 1938-yilda qatag'on qurboni bo'lgan. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- cholpon | Merosim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Cho'lpon asarlari keyinchalik qanday taqdirga ega bo'lgan?$$,
       $$["Xalqqa qaytarilgan", "Butunlay yo'qolib ketgan", "Faqat xorijda saqlanib qolgan", "Taqiqlanganicha qolgan"]$$::jsonb,
       0,
       $$Cho'lpon asarlari keyinchalik xalqqa qaytarilgan va bugun maktabda o'qitiladi. Manba: Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938).$$
FROM fact_cards f
WHERE f.topic_uz = $$Merosim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- dilbar-abdurahmonova | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova qaysi yilda tug'ilgan?$$,
       $$["1925-yilda", "1930-yilda", "1936-yilda", "1941-yilda"]$$::jsonb,
       2,
       $$Dilbar Abdurahmonova 1936-yil 1-mayda Moskvada tug'ilgan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | Skripka darslari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova musiqa maktabida skripka o'rganish bilan bir vaqtda yana qaysi maktabda tahsil olgan?$$,
       $$["Matematika maktabida", "Rassomlik maktabida", "Sport maktabida", "Teatr studiyasida"]$$::jsonb,
       0,
       $$U 1948–1955-yillarda Toshkentdagi Glier nomidagi musiqa maktabida skripka bo'yicha o'qish bilan birga matematika maktabida ham tahsil olgan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Skripka darslari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | Ashrafiy shogirdi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova Toshkent konservatoriyasida Muxtor Ashrafiy sinfida qaysi yo'nalish bo'yicha 1960-yilda o'qishni tugatgan?$$,
       $$["Skripka ijrochiligi", "Opera xonandaligi", "Kompozitorlik", "Opera-simfonik dirijyorlik"]$$::jsonb,
       3,
       $$U Toshkent konservatoriyasida skripka bo'yicha 1959-yilda, Muxtor Ashrafiy sinfida opera-simfonik dirijyorlik bo'yicha 1960-yilda o'qishni tugatgan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ashrafiy shogirdi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | Orkestrda skripkachi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Talabalik yillarida (1957–1960) Dilbar Abdurahmonova Navoiy teatri orkestrida qanday vazifani bajargan?$$,
       $$["Xonanda bo'lgan", "Skripka chalgan", "Balet raqqosasi bo'lgan", "Rejissyor yordamchisi bo'lgan"]$$::jsonb,
       1,
       $$Talabalik yillarida, 1957–1960-yillarda u Navoiy teatri orkestrida skripka chalgan; 1957-yilda Moskvadagi Jahon yoshlar festivalida talaba-dirijyor sifatida qatnashgan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Orkestrda skripkachi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | Birinchi ayol dirijyor
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova qaysi yildan boshlab Navoiy teatrida dirijyorlik qila boshlagan?$$,
       $$["1955-yildan", "1960-yildan", "1969-yildan", "1974-yildan"]$$::jsonb,
       1,
       $$1960-yildan u Navoiy teatrida dirijyorlik qila boshlagan — O'zbekistonda dirijyorlik pultiga chiqqan birinchi ayol edi. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Birinchi ayol dirijyor$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | Bosh dirijyor
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova qaysi yillarda Navoiy teatrining bosh dirijyori va badiiy rahbari bo'lib ishlagan?$$,
       $$["1948–1955-yillarda", "1960–1974-yillarda", "1974–1990-yillarda", "1990–2005-yillarda"]$$::jsonb,
       2,
       $$1974–1990-yillarda u Navoiy teatrining bosh dirijyori va badiiy rahbari bo'lib ishlagan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bosh dirijyor$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | «Tanovar» va mukofot
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova sahnalashtirgan «Tanovar» baletining bastakori kim?$$,
       $$["A. Kozlovskiy", "Muxtor Ashrafiy", "Tolibjon Sodiqov", "M. Mirzayev"]$$::jsonb,
       0,
       $$1973-yilda u A. Kozlovskiyning «Tanovar» baletini sahnalashtirgani uchun Hamza nomidagi davlat mukofotiga sazovor bo'lgan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Tanovar» va mukofot$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | Unvonlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova qaysi yilda O'zbekiston xalq artisti unvonini olgan?$$,
       $$["1960-yilda", "1969-yilda", "1977-yilda", "2001-yilda"]$$::jsonb,
       1,
       $$U 1969-yilda O'zbekiston xalq artisti, 1977-yilda esa SSSR xalq artisti bo'lgan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Unvonlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | Ustozlik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova professor sifatida qayerda yosh ijrochilarga dars bergan?$$,
       $$["Navoiy teatri qoshidagi studiyada", "Glier nomidagi musiqa maktabida", "Moskva konservatoriyasida", "O'zbekiston davlat konservatoriyasida"]$$::jsonb,
       3,
       $$U O'zbekiston davlat konservatoriyasida professor bo'lib, yosh ijrochilarga opera san'atidan dars bergan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ustozlik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- dilbar-abdurahmonova | Umrim yakuni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Dilbar Abdurahmonova qachon va qayerda vafot etgan?$$,
       $$["2010-yilda Moskvada", "2018-yilda Toshkentda", "2016-yilda Farg'onada", "2021-yilda Samarqandda"]$$::jsonb,
       1,
       $$Dilbar Abdurahmonova 2018-yil 20-martda Toshkentda vafot etgan. Manba: Alisher Navoiy nomidagi DAKT (gabt.uz) «Tarixiy shaxslar» sahifasi va teatr tarixi; UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrim yakuni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

-- erkin-vohidov | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Erkin Vohidov qaysi sanada tug'ilgan?$$,
       $$["1936-yil 28-dekabrda", "1936-yil 1-mayda", "1930-yil 28-dekabrda", "1938-yil 20-martda"]$$::jsonb,
       0,
       $$Erkin Vohidov 1936-yil 28-dekabrda Farg'ona viloyati Oltiariq tumanida tug'ilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Erkin Vohidov Toshkent davlat universitetining filologiya fakultetini qaysi yilda tugatgan?$$,
       $$["1955-yilda", "1958-yilda", "1960-yilda", "1969-yilda"]$$::jsonb,
       2,
       $$Erkin Vohidov 1960-yilda Toshkent davlat universitetining filologiya fakultetini tugatgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | Nashriyotdagi ishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Erkin Vohidov «Yosh gvardiya» va G'afur G'ulom nomidagi nashriyotlarda qanday lavozimlarda ishlagan?$$,
       $$["Tarjimon", "Musavvir", "Direktor", "Muharrir va bosh muharrir"]$$::jsonb,
       3,
       $$Erkin Vohidov «Yosh gvardiya» va G'afur G'ulom nomidagi nashriyotlarda muharrir va bosh muharrir bo'lib ishlagan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Nashriyotdagi ishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | «Yoshlik» jurnali
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Erkin Vohidov qaysi yillarda «Yoshlik» jurnalining bosh muharriri bo'lgan?$$,
       $$["1969–1972-yillarda", "1975–1978-yillarda", "1982–1985-yillarda", "1990–1993-yillarda"]$$::jsonb,
       2,
       $$1982–1985-yillarda Erkin Vohidov «Yoshlik» jurnalining bosh muharriri bo'lgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Yoshlik» jurnali$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | Ilk kitoblarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri Erkin Vohidovning dastlabki to'plamlaridan biri?$$,
       $$["«Qo'shiqlarim sizga»", "«Bedorlik»", "«Uyg'onish»", "«Soz»"]$$::jsonb,
       0,
       $$«Tong nafasi» (1961), «Qo'shiqlarim sizga» (1962), «Yurak va aql» (1963) — Erkin Vohidovning dastlabki to'plamlari. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk kitoblarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | «Yoshlik devoni»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1969-yilda Erkin Vohidovning qaysi kitobi chiqqan?$$,
       $$["«Tong nafasi»", "«Tirik sayyoralar»", "«Bedorlik»", "«Yoshlik devoni»"]$$::jsonb,
       3,
       $$1969-yilda Erkin Vohidovning «Yoshlik devoni» kitobi chiqqan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Yoshlik devoni»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | Keyingi kitoblarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri Erkin Vohidov qalamiga mansub kitob?$$,
       $$["«Buloqlar»", "«Sharqiy qirg'oq»", "«Tong sirlari»", "«Kecha va kunduz»"]$$::jsonb,
       1,
       $$Erkin Vohidovning «Tirik sayyoralar» (1978), «Sharqiy qirg'oq» (1982), «Kelajakka maktub» (1983), «Bedorlik» (1985) kitoblari bor. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Keyingi kitoblarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | Sahna asarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Oltin devor» va «Istanbul fojiasi» Erkin Vohidov ijodida qanday asarlar hisoblanadi?$$,
       $$["She'riy to'plamlar", "Romanlar", "Sahna asarlari", "Hikoyalar"]$$::jsonb,
       2,
       $$«Oltin devor» (1969) va «Istanbul fojiasi» (1985) — Erkin Vohidovning sahna asarlari. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Sahna asarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | Unvonlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1987-yilda Erkin Vohidov qanday unvonga sazovor bo'lgan?$$,
       $$["O'zbekiston Qahramoni", "O'zbekiston xalq shoiri", "SSSR xalq artisti", "O'zbekiston xalq artisti"]$$::jsonb,
       1,
       $$Erkin Vohidov 1987-yilda O'zbekiston xalq shoiri, 1999-yilda O'zbekiston Qahramoni unvonini olgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Unvonlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- erkin-vohidov | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Erkin Vohidov 2016-yilning qaysi kunida vafot etgan?$$,
       $$["28-dekabrda", "20-martda", "12-iyunda", "30-mayda"]$$::jsonb,
       3,
       $$Erkin Vohidov 2016-yil 30-mayda Toshkentda vafot etgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

-- feruz | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muhammad Rahimxon Feruz qaysi shaharda tug'ilgan?$$,
       $$["Xivada", "Buxoroda", "Qo'qonda", "Toshkentda"]$$::jsonb,
       0,
       $$Muhammad Rahimxon Feruz 1845-yilda Xivada tug'ilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- feruz | Taxtga chiqishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Feruz kimning vafotidan so'ng 1864-yilda Xiva taxtiga o'tirgan?$$,
       $$["Ustozi Ogahiy vafotidan so'ng", "Otasi Sayid Muhammadxon vafotidan so'ng", "Akasi vafotidan so'ng", "Bobosi vafotidan so'ng"]$$::jsonb,
       1,
       $$Otasi Sayid Muhammadxon vafotidan so'ng, 1864-yilda Feruz Xiva taxtiga o'tirgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxtga chiqishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- feruz | Taxallusim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Xiva xoni Muhammad Rahimxon she'rlarini qanday taxallus bilan yozgan?$$,
       $$["«Ogahiy»", "«Komil»", "«Tabibiy»", "«Feruz»"]$$::jsonb,
       3,
       $$Muhammad Rahimxon she'rlarini «Feruz» taxallusi bilan yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxallusim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- feruz | Devonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1879-yilda Xiva xoni Feruz she'rlari jamlangan to'plam qanday nomlangan?$$,
       $$["«Majmuat ush-shuaro»", "«Devoni Feruz»", "«Devoni Ogahiy»", "«Devoni Komil»"]$$::jsonb,
       1,
       $$1879-yilda «Devoni Feruz» to'plami tuzilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Devonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- feruz | Ustozim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Feruzning ustozi Ogahiy qanday ijodkor bo'lgan?$$,
       $$["Shoir va tarixchi", "Bastakor", "Me'mor", "Xattot"]$$::jsonb,
       0,
       $$Feruzning ustozi shoir va tarixchi Ogahiy edi; saroyida Komil va Tabibiy kabi shoirlar ijod qilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ustozim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- feruz | Toshbosmam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Feruz ochirgan toshbosmada Xorazm shoirlarining qanday nomdagi to'plami bosilgan?$$,
       $$["«Devoni Feruz»", "«Xamsa»", "«Munojot»", "«Majmuat ush-shuaro»"]$$::jsonb,
       3,
       $$Feruz Xivada toshbosma ochirgan — unda Navoiy asarlari va Xorazm shoirlarining «Majmuat ush-shuaro» to'plami bosilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Toshbosmam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- feruz | Musiqa homiyligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Feruz saroyida qanday ijodiy jamoa tuzilgan?$$,
       $$["Teatr truppasi", "Xattotlik ustaxonasi", "Musiqa ansambli", "Raqs guruhi"]$$::jsonb,
       2,
       $$Feruz saroyida musiqa ansambli tuzilgan; u Shashmaqom an'anasidagi «Navo», «Dugoh» va «Segoh» kuylariga aloqador ishlarni qo'llab-quvvatlagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Musiqa homiyligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- feruz | Madrasam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Feruz homiyligida nechta inshoot bunyod etilgan?$$,
       $$["O'ndan ortiq", "Yigirmadan ortiq", "O'ttizdan ortiq", "Yuzdan ortiq"]$$::jsonb,
       2,
       $$Feruz 1871-yilda o'z nomi bilan ataluvchi ikki qavatli madrasa qurdirgan; uning homiyligida o'ttizdan ortiq inshoot bunyod etilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Madrasam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- feruz | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muhammad Rahimxon Feruz qaysi yilda vafot etgan?$$,
       $$["1900-yilda", "1905-yilda", "1910-yilda", "1917-yilda"]$$::jsonb,
       2,
       $$Muhammad Rahimxon Feruz 1910-yilda vafot etgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammad Rahimxon Feruz (1845–1910).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- TOTAL: 47

-- ===================== heroes_ae.sql =====================

-- gafur-gulom | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1903-yil 10-mayda Toshkentda qaysi o'zbek shoiri va adibi tug'ilgan?$$,
       $$["Oybek", "G'afur G'ulom", "Hamid Olimjon", "Abdulla Qahhor"]$$::jsonb,
       1,
       $$G'afur G'ulom 1903-yil 10-mayda Toshkentda tug'ilgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | «Shum bola»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$G'afur G'ulomning «Shum bola» qissasida nimalar aks etgan?$$,
       $$["Yozuvchining bolaligi va o'sha davr Toshkent hayoti", "Ikkinchi jahon urushi voqealari", "Qadimgi Samarqand tarixi", "Qishloq dehqonlarining mehnati"]$$::jsonb,
       0,
       $$G'afur G'ulom «Shum bola» qissasini 1936-yilda yozgan — unda uning bolaligi va o'sha davr Toshkent hayoti aks etgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Shum bola»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | She'riy to'plamlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$G'afur G'ulomning «Tirik qo'shiqlar» to'plami qachon chiqqan?$$,
       $$["1925", "1929", "1932", "1940"]$$::jsonb,
       2,
       $$G'afur G'ulomning «Dinamo» (1931) va «Tirik qo'shiqlar» (1932) to'plamlari chiqqan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$She'riy to'plamlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | Mashhur she'rlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$G'afur G'ulomning keng tanilgan «Toshkent» she'ri qaysi yilga oid?$$,
       $$["1929", "1931", "1943", "1933"]$$::jsonb,
       3,
       $$G'afur G'ulomning «Qish va shoirlar» (1929), «Non» (1931) va «Toshkent» (1933) she'rlari keng tanilgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$Mashhur she'rlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | Qissalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$G'afur G'ulomning «Netay» qissasi qachon yozilgan?$$,
       $$["1930", "1936", "1941", "1948"]$$::jsonb,
       0,
       $$G'afur G'ulom «Netay» (1930) va «Yodgor» (1936) qissalarini yozgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$Qissalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | «Mening o'g'rigina bolam»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$G'afur G'ulomning «Mening o'g'rigina bolam» asari qanday janrda yozilgan?$$,
       $$["Doston", "Qissa", "Hikoya", "Drama"]$$::jsonb,
       2,
       $$G'afur G'ulom 1965-yilda «Mening o'g'rigina bolam» hikoyasini yozgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Mening o'g'rigina bolam»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | Akademiklik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1943-yilda G'afur G'ulom qaysi ilmiy tashkilotning haqiqiy a'zosi bo'ldi?$$,
       $$["O'zbekiston Fanlar akademiyasining", "Rossiya Fanlar akademiyasining", "Sharqshunoslik institutining", "Til va adabiyot institutining"]$$::jsonb,
       0,
       $$G'afur G'ulom 1943-yilda O'zbekiston Fanlar akademiyasining haqiqiy a'zosi bo'lgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$Akademiklik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | Ilmiy ishlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$G'afur G'ulomning «Navoiy va zamonamiz» maqolasi qachon yozilgan?$$,
       $$["1939", "1943", "1948", "1958"]$$::jsonb,
       2,
       $$G'afur G'ulom «Folklordan o'rganaylik» (1939) va «Navoiy va zamonamiz» (1948) maqolalarini yozgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilmiy ishlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | Tarjimalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$G'afur G'ulom qaysi dramaturgning «Otello» va «Qirol Lir» asarlarini o'zbekchaga o'girgan?$$,
       $$["Shillerning", "Molyerning", "Gyotening", "Shekspirning"]$$::jsonb,
       3,
       $$G'afur G'ulom Shekspirning «Otello» va «Qirol Lir» asarlarini o'zbekchaga tarjima qilgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tarjimalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gafur-gulom | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$G'afur G'ulom 2000-yilda qaysi orden bilan taqdirlangan?$$,
       $$["«El-yurt hurmati»", "«Buyuk xizmatlari uchun»", "«Do'stlik»", "«Mehnat shuhrati»"]$$::jsonb,
       1,
       $$G'afur G'ulom 1966-yil 10-iyunda vafot etgan; 2000-yilda «Buyuk xizmatlari uchun» ordeni bilan taqdirlangan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: G'afur G'ulom (1903–1966).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- gavharshod-begim | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Gavharshod begimning otasi kim bo'lgan?$$,
       $$["Chig'atoy zodagoni G'iyosiddin Tarxon", "Amir Temur", "Abusaid Mirzo", "Qozizoda Rumiy"]$$::jsonb,
       0,
       $$Gavharshod begim 1379-yilda tug'ilgan, uning otasi chig'atoy zodagoni G'iyosiddin Tarxon bo'lgan. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- gavharshod-begim | Turmushim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Gavharshod begim Shohrux Mirzoga qachon turmushga chiqqan?$$,
       $$["1379", "1385", "1393", "1405"]$$::jsonb,
       2,
       $$Gavharshod begim 1393-yilda Temurning o'g'li Shohrux Mirzoga turmushga chiqqan. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Turmushim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- gavharshod-begim | Farzandlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Gavharshod begimning o'g'li Ulug'bek Mirzo qaysi ilm sohasi bilan mashhur hukmdor bo'lgan?$$,
       $$["She'riyat", "Astronomiya", "Tibbiyot", "Musiqa"]$$::jsonb,
       1,
       $$Gavharshod begimning o'g'illari orasida astronom hukmdor Ulug'bek Mirzo va san'at homiysi Boysung'ur Mirzo bor. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Farzandlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- gavharshod-begim | Saltanat ishlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Shohrux Mirzo nimalarga berilgan paytlarda saltanat va devon ishlarini amalda Gavharshod begim boshqargan?$$,
       $$["Harbiy yurishlarga", "Ov va bazmlarga", "Savdo ishlariga", "Ibodat va ilmga"]$$::jsonb,
       3,
       $$Shohrux ibodat va ilmga berilgan paytlarda saltanat va devon ishlarini amalda Gavharshod begim boshqargan. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Saltanat ishlari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- gavharshod-begim | Amaldorlar tayinlash
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Gavharshod begim hokim va lashkarboshilarni tayinlashdan tashqari yana qanday ishlarda qatnashgan?$$,
       $$["Mukofot va jazolarni belgilashda", "Yulduzlar jadvalini tuzishda", "Madrasada dars berishda", "Karvon savdosini yuritishda"]$$::jsonb,
       0,
       $$Gavharshod begim hokimlar va lashkarboshilarni tayinlash, mukofot va jazolarni belgilash ishlarida qatnashgan. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Amaldorlar tayinlash$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- gavharshod-begim | Madrasalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Gavharshod begim ikkita yirik madrasani qaysi shaharda qurdirgan?$$,
       $$["Samarqandda", "Buxoroda", "Hirotda", "Toshkentda"]$$::jsonb,
       2,
       $$Gavharshod begim Hirotda ikkita yirik madrasa qurdirgan. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Madrasalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- gavharshod-begim | Boshqa binolarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Masjidlar, xonaqohlar, shifoxonalar va karvonsaroylar qurdirgan temuriy malika kim?$$,
       $$["Xonzoda begim", "Gavharshod begim", "Gulbadan begim", "Qutlug' Nigor xonim"]$$::jsonb,
       1,
       $$Gavharshod begim masjidlar, xonaqohlar, shifoxonalar va karvonsaroylar qurdirgan. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Boshqa binolarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- gavharshod-begim | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Gavharshod begim taxminan necha yoshida vafot etgan?$$,
       $$["60 yoshida", "70 yoshida", "80 yoshida", "90 yoshida"]$$::jsonb,
       2,
       $$Gavharshod begim 1457-yilda, taxminan 80 yoshida vafot etgan. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- gavharshod-begim | Dafn joyim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Gavharshod begim dafn etilgan Boysung'ur maqbarasi qayerda joylashgan?$$,
       $$["U o'zi qurdirgan madrasa yonida", "Go'ri Amir majmuasida", "Shohizinda majmuasida", "Registon maydonida"]$$::jsonb,
       0,
       $$Gavharshod begim o'zi qurdirgan madrasa yonidagi Boysung'ur maqbarasiga dafn qilingan. Manba: Ziyouz.com — «Temuriy malikalar»: Gavhar Shod begim.$$
FROM fact_cards f
WHERE f.topic_uz = $$Dafn joyim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

-- giyosiddin-koshiy | Samarqandga kelishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1417-yilda G'iyosiddin Jamshid Koshiyni Samarqandga kim chaqirgan?$$,
       $$["Shohrux Mirzo", "Boysung'ur Mirzo", "Abusaid Mirzo", "Ulug'bek Mirzo"]$$::jsonb,
       3,
       $$1417-yilda Ulug'bek Koshiyni Samarqandga chaqirgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren).$$
FROM fact_cards f
WHERE f.topic_uz = $$Samarqandga kelishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

-- giyosiddin-koshiy | Rasadxona loyihasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Samarqand rasadxonasi loyihasining tashabbuskorlaridan biri bo'lgan olim kim?$$,
       $$["Alisher Navoiy", "G'iyosiddin Jamshid Koshiy", "Kamoliddin Behzod", "Zahiriddin Muhammad Bobur"]$$::jsonb,
       1,
       $$G'iyosiddin Jamshid Koshiy Samarqand rasadxonasi loyihasining tashabbuskorlaridan bo'lgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren).$$
FROM fact_cards f
WHERE f.topic_uz = $$Rasadxona loyihasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

-- giyosiddin-koshiy | Olimlar davrasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Koshiy Ulug'bek davrasida Qozizoda Rumiy bilan birga yana qaysi yosh olim bilan ishlagan?$$,
       $$["Ali Qushchi", "Alisher Navoiy", "Mirxond", "Abdurahmon Jomiy"]$$::jsonb,
       0,
       $$Koshiy Ulug'bek davrasida Qozizoda Rumiy va yosh Ali Qushchi bilan birga ishlagan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren).$$
FROM fact_cards f
WHERE f.topic_uz = $$Olimlar davrasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

-- giyosiddin-koshiy | «Miftoh ul-hisob»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Koshiyning «Miftoh ul-hisob» asari nomi qanday ma'noni anglatadi?$$,
       $$["«Yulduzlar jadvali»", "«Osmon sirlari»", "«Bilim xazinasi»", "«Hisob kaliti»"]$$::jsonb,
       3,
       $$Koshiy «Miftoh ul-hisob» («Hisob kaliti») asarini 1427-yilda yakunlagan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Miftoh ul-hisob»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

-- giyosiddin-koshiy | Ustozim kim edi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ulug'bek o'z ustozlaridan biri bo'lgan Koshiyga qanday munosabatda bo'lgan?$$,
       $$["Uni chuqur hurmat qilgan", "U bilan doim bahslashgan", "Uni saroydan uzoqlashtirgan", "Unga e'tibor bermagan"]$$::jsonb,
       0,
       $$Koshiy Ulug'bekning mashhur ustozlaridan biri bo'lgan va Ulug'bek uni chuqur hurmat qilgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ustozim kim edi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

-- giyosiddin-koshiy | Vafotim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1430-yilda vafoti yulduzlar jadvalini tuzayotgan Samarqand maktabi uchun katta yo'qotish bo'lgan olim kim?$$,
       $$["Qozizoda Rumiy", "Ali Qushchi", "G'iyosiddin Jamshid Koshiy", "Ulug'bek Mirzo"]$$::jsonb,
       2,
       $$Koshiy 1430-yilda vafot etgan — bu yulduzlar jadvalini tuzayotgan maktab uchun katta yo'qotish bo'lgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren).$$
FROM fact_cards f
WHERE f.topic_uz = $$Vafotim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

-- giyosiddin-koshiy | Merosim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Koshiyning Sharq matematikasi rivojiga xizmat qilgan ishlari qaysi ilmga oid bo'lgan?$$,
       $$["Tibbiyot ilmiga", "Hisob ilmiga", "Me'morlik ilmiga", "Musiqa ilmiga"]$$::jsonb,
       1,
       $$Koshiyning hisob ilmiga oid ishlari Sharq matematikasi rivojiga xizmat qilgan. Manba: Ziyouz.com — «Mirzo Ulug'bekning astronomiya maktabi» maqolasi (L. Keren).$$
FROM fact_cards f
WHERE f.topic_uz = $$Merosim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

-- halima-nosirova | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Nosirova qaysi yilda tug'ilgan?$$,
       $$["1903", "1913", "1923", "1931"]$$::jsonb,
       1,
       $$Halima Nosirova 1913-yilda Qo'qon yaqinidagi Tog'liq qishlog'ida tug'ilgan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | O'qish yillarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Nosirova bir guruh yosh san'atkorlar bilan qaysi shahardagi teatr bilim yurtiga o'qishga yuborilgan?$$,
       $$["Moskvadagi", "Toshkentdagi", "Samarqanddagi", "Bokudagi"]$$::jsonb,
       3,
       $$Halima Nosirova Toshkentdagi xotin-qizlar bilim yurtida o'qib, keyin bir guruh yosh san'atkorlar bilan Bokudagi teatr bilim yurtiga o'qishga yuborilgan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qish yillarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | Moskvadagi opera studiyasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Moskva konservatoriyasi qoshidagi O'zbek opera studiyasida olgan ta'limi Halima Nosirovaga qaysi san'atning sirlarini ochib bergan?$$,
       $$["Raqs san'atining", "Opera san'atining", "Rassomlik san'atining", "Kino san'atining"]$$::jsonb,
       1,
       $$Halima Nosirova Moskva davlat konservatoriyasi qoshidagi O'zbek opera studiyasida ta'lim olgan — bu unga opera san'atining sirlarini ochib bergan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Moskvadagi opera studiyasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | «Halima» spektakli
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Nosirova bosh rolni ijro etgan «Halima» spektaklining muallifi kim?$$,
       $$["G'ulom Zafariy", "Hamza", "Abdulla Qodiriy", "G'afur G'ulom"]$$::jsonb,
       0,
       $$Halima Nosirova G'ulom Zafariyning «Halima» spektaklida bosh rolni besh yuz martadan ortiq ijro etgan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Halima» spektakli$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | Birinchi o'zbek operasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1939-yildan boshlab Halima Nosirova qaysi teatrda ishlagan?$$,
       $$["Hamza nomidagi drama teatrida", "Muqimiy nomidagi teatrda", "Alisher Navoiy nomidagi opera va balet teatrida", "Boku opera teatrida"]$$::jsonb,
       2,
       $$Halima Nosirova 1939-yil 11-iyunda birinchi o'zbek operasi «Bo'ron» premyerasida Norgul partiyasini kuylagan va shu yildan Alisher Navoiy nomidagi opera va balet teatrida ishlagan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Birinchi o'zbek operasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | Mashhur rollarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Nosirovaning ijodiy yutug'i bo'lgan Sin Dun Fan partiyasi qaysi operadan?$$,
       $$["«Bo'ron»", "«Gulsara»", "«Karmen»", "«Ulug'bek»"]$$::jsonb,
       3,
       $$Halima Nosirova o'nlab operalarda bosh obrazlar yaratgan — «Ulug'bek» operasidagi Sin Dun Fan partiyasi uning ijodiy yutug'i bo'lgan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mashhur rollarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | Xalq ashulalari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Nosirova kuy-ashulalarni qaysi ustozlardan o'rgangan?$$,
       $$["Mulla To'ychi Toshmuhammedov va Usta Olim Komilovdan", "Yunus Rajabiy va To'xtasin Jalilovdan", "Muxtor Ashrafiy va Tolibjon Sodiqovdan", "Hamza va G'ulom Zafariydan"]$$::jsonb,
       0,
       $$Halima Nosirova «Ushshoq», «Chorgoh», «Bayot» kabi xalq ashulalarini kuylagan, kuy-ashulalarni Mulla To'ychi Toshmuhammedov va Usta Olim Komilov kabi ustozlardan o'rgangan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalq ashulalari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | Urush yillarida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ikkinchi jahon urushi yillarida Halima Nosirova qanday faoliyat olib borgan?$$,
       $$["Chet elda gastrolda yurgan", "Konsert brigadalari tarkibida jangchilar oldida chiqish qilgan", "Faqat radioda ishlagan", "Sahnani vaqtincha tark etgan"]$$::jsonb,
       1,
       $$Ikkinchi jahon urushi yillarida Halima Nosirova boshqa san'atkorlar qatori konsert brigadalari tarkibida jangchilar oldida chiqish qilgan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Urush yillarida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | Kino va jahon sahnalari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1956-yilda qaysi mamlakatlar gazetalari Halima Nosirova ovozini maqtab yozgan?$$,
       $$["Fransiya va Italiya", "Turkiya va Afg'oniston", "Suriya va Hindiston", "AQSH va Meksika"]$$::jsonb,
       2,
       $$Halima Nosirovaning ovozi o'nlab mamlakatlarda yangragan, 1956-yilda Suriya va Hindiston gazetalari uning ovozini maqtab yozgan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kino va jahon sahnalari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-nosirova | Unvonlarim va kitobim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Nosirova qanday faxriy unvonga sazovor bo'lgan?$$,
       $$["«O'zbekiston xalq shoiri»", "«O'zbekiston qahramoni»", "«O'zbekiston fan arbobi»", "«O'zbekiston xalq artisti»"]$$::jsonb,
       3,
       $$Halima Nosirova «O'zbekiston xalq artisti» unvoniga sazovor bo'lgan, mustaqillik yillarida «Buyuk xizmatlari uchun» ordeni bilan taqdirlangan. Manba: O'zbekiston davlat konservatoriyasi saytidagi «Halima Nosirova (1913-2003)» maqolasi; «Teatr tarixi» darsligi (Ziyouz); gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Unvonlarim va kitobim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- halima-xudoyberdiyeva | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyeva qaysi yilda tug'ilgan?$$,
       $$["1937", "1943", "1947", "1957"]$$::jsonb,
       2,
       $$Halima Xudoyberdiyeva 1947-yil 17-mayda Sirdaryo viloyatining Boyovut tumanida tug'ilgan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | Ilk she'rlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyevaning ilk she'rlari uning hayotidagi qaysi davrda bosilgan?$$,
       $$["Universitetni tugatganidan keyin", "O'quvchilik yillarida", "Moskvada tahsil olgan davrida", "«Saodat» jurnalida ishlagan yillarida"]$$::jsonb,
       1,
       $$Halima Xudoyberdiyevaning ilk she'rlari o'quvchilik yillarida, 1964-yilda Yangiyer tuman gazetasida bosilgan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk she'rlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyeva Toshkent davlat universitetining jurnalistika fakultetini qachon tugatgan?$$,
       $$["1964-yilda", "1968-yilda", "1976-yilda", "1972-yilda"]$$::jsonb,
       3,
       $$Halima Xudoyberdiyeva Toshkent davlat universitetining jurnalistika fakultetini 1972-yilda tugatgan, keyinchalik Moskvadagi adabiyot institutida ham tahsil olgan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | Ilk kitobim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyevaning birinchi she'riy kitobi «Ilk muhabbat» qachon chiqqan?$$,
       $$["1968-yilda", "1964-yilda", "1972-yilda", "1980-yilda"]$$::jsonb,
       0,
       $$Halima Xudoyberdiyevaning birinchi she'riy kitobi «Ilk muhabbat» 1968-yilda chiqqan; keyin «Oq olmalar», «Suyanch tog'larim» kabi to'plamlari nashr etilgan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk kitobim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | «Saodat» jurnalida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyeva «Saodat» jurnalida bosh muharrir bo'lishidan avval qanday lavozimlarda ishlagan?$$,
       $$["Muxbir va tarjimon", "Adabiy xodim va bo'lim mudiri", "Kotiba va musahhih", "Rassom va fotograf"]$$::jsonb,
       1,
       $$Halima Xudoyberdiyeva «Saodat» jurnalida adabiy xodim va bo'lim mudiri bo'lib ishlagan, 1982–1994-yillarda esa shu jurnalga bosh muharrirlik qilgan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Saodat» jurnalida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | Xotin-qizlar rahbari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyeva qaysi yillarda O'zbekiston xotin-qizlar qo'mitasining raisi bo'lgan?$$,
       $$["1982–1994-yillarda", "1972–1982-yillarda", "1994–2000-yillarda", "1990–1994-yillarda"]$$::jsonb,
       3,
       $$Halima Xudoyberdiyeva 1990–1994-yillarda O'zbekiston xotin-qizlar qo'mitasining raisi bo'lib, ayollar manfaatini himoya qilgan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xotin-qizlar rahbari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | To'maris haqida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyevaning jasur ayollarga bag'ishlangan «To'marisning aytgani» kitobi qachon chiqqan?$$,
       $$["1986-yilda", "1992-yilda", "1996-yilda", "2004-yilda"]$$::jsonb,
       2,
       $$1996-yilda Halima Xudoyberdiyevaning jasur ayollarga bag'ishlangan «To'marisning aytgani» kitobi chiqqan; uning she'rlari ko'plab xorijiy tillarga tarjima qilingan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$To'maris haqida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | Xalq shoiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1990-yilda Halima Xudoyberdiyeva qaysi mukofotni olgan?$$,
       $$["Hamza nomidagi davlat mukofotini", "Navoiy nomidagi davlat mukofotini", "Zulfiya nomidagi mukofotni", "«Oltin qalam» mukofotini"]$$::jsonb,
       0,
       $$Halima Xudoyberdiyeva 1990-yilda Hamza nomidagi davlat mukofotini olgan, 1992-yilda esa «O'zbekiston xalq shoiri» unvoniga sazovor bo'lgan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalq shoiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | «El-yurt hurmati»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyeva «El-yurt hurmati» ordeni bilan qachon taqdirlangan?$$,
       $$["1992-yilda", "2017-yilda", "2005-yilda", "1996-yilda"]$$::jsonb,
       1,
       $$2017-yilda davlat rahbari farmoni bilan Halima Xudoyberdiyeva «El-yurt hurmati» ordeni bilan taqdirlangan. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«El-yurt hurmati»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- halima-xudoyberdiyeva | Nomimdagi maktab
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Halima Xudoyberdiyeva nomidagi ijod maktabi qaysi viloyatda tashkil etilgan?$$,
       $$["Toshkent viloyatida", "Farg'ona viloyatida", "Samarqand viloyatida", "Sirdaryo viloyatida"]$$::jsonb,
       3,
       $$Prezident tashabbusi bilan Sirdaryo viloyatida Halima Xudoyberdiyeva nomidagi ijod maktabi tashkil etilgan — u yerda bo'lajak shoir va yozuvchilar o'qiydi. Manba: Ziyouz.com: «Halima Xudoyberdiyeva (1947)» sahifasi; UZA.uz: «Olovli satrlar sohibasi» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Nomimdagi maktab$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

-- TOTAL: 46

-- ===================== heroes_af.sql =====================

-- husayn-boyqaro | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Husayn Boyqaroning to'liq ismi qanday bo'lgan?$$,
       $$["Husayn ibn Mirzo Mansur ibn Mirzo Boyqaro", "Zahiriddin Muhammad Bobur", "Alisher ibn G'iyosiddin", "Muhammad Tarag'ay Ulug'bek"]$$::jsonb,
       0,
       $$Husayn Boyqaro 1438-yilda Hirotda tug'ilgan, to'liq ismi — Husayn ibn Mirzo Mansur ibn Mirzo Boyqaro. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Taxtga kelishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Husayn Boyqaro qaysi yildan boshlab Xuroson taxtini boshqargan?$$,
       $$["1449-yildan", "1469-yildan", "1481-yildan", "1501-yildan"]$$::jsonb,
       1,
       $$Husayn Boyqaro 1469-yildan Xuroson taxtini boshqargan va Hirotni mustahkamlagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxtga kelishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Hukmronligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Husayn Boyqaro Xurosonni qaysi yillar oralig'ida boshqargan?$$,
       $$["1370-yildan 1405-yilgacha", "1438-yildan 1469-yilgacha", "1469-yildan 1506-yilgacha", "1447-yildan 1494-yilgacha"]$$::jsonb,
       2,
       $$Husayn Boyqaro Xurosonni 1469-yildan 1506-yilgacha — qariyb qirq yil boshqargan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Hukmronligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Taxallusim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Husayniy» taxallusi bilan she'rlar yozgan temuriy hukmdor kim?$$,
       $$["Alisher Navoiy", "Ulug'bek", "Zahiriddin Bobur", "Husayn Boyqaro"]$$::jsonb,
       3,
       $$Husayn Boyqaro she'rlarini «Husayniy» taxallusi bilan yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxallusim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Devonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Husayn Boyqaroning devonidagi asarlari qatorida qaysi tildagi she'rlari ham bor?$$,
       $$["Forsiy she'rlari", "Arabiy she'rlari", "Hind-urdu she'rlari", "Mo'g'ulcha she'rlari"]$$::jsonb,
       0,
       $$Husayn Boyqaro devoniga 200 ga yaqin g'azal, muxammas va ruboiylar kirgan, forsiy she'rlari ham bor. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Devonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Do'stim Navoiy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Husayn Boyqaro do'sti Alisher Navoiyni maxsus yorliq bilan qaysi shahardan chaqirtirgan?$$,
       $$["Hirotdan", "Samarqanddan", "Balxdan", "Marvdan"]$$::jsonb,
       1,
       $$Husayn Boyqaro do'sti Alisher Navoiyni maxsus yorliq bilan Samarqanddan chaqirtirib, muhrdor lavozimiga tayinlagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Do'stim Navoiy$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Hirot — madaniyat markazi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Husayn Boyqaro davrida qaysi shahar Sharqning yirik madaniy markaziga aylangan?$$,
       $$["Samarqand", "Buxoro", "Hirot", "Toshkent"]$$::jsonb,
       2,
       $$Husayn Boyqaro davrida Hirot Sharqning yirik madaniy markaziga aylangan: u olimlar, shoirlar va hunarmandlarni qo'llab-quvvatlagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Hirot — madaniyat markazi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Qurilishlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Madrasalar, karvonsaroylar, ko'priklar va masjidlar qurdirgan Hirot hukmdori kim?$$,
       $$["Bobur", "Ulug'bek", "Amir Temur", "Husayn Boyqaro"]$$::jsonb,
       3,
       $$Husayn Boyqaro madrasalar, karvonsaroylar, ko'priklar va masjidlar qurdirgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Qurilishlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Behzodga buyurtma
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Husayn Boyqaro musavvir Kamoliddin Behzodga qanday topshiriq bergan?$$,
       $$["Yangi miniatyuralar yaratishni", "Yangi madrasa qurishni", "Devonini ko'chirib yozishni", "Hirot xaritasini chizishni"]$$::jsonb,
       0,
       $$Husayn Boyqaro musavvir Kamoliddin Behzodga yangi miniatyuralar yaratishni topshirgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Behzodga buyurtma$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- husayn-boyqaro | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Husayn Boyqaro vafotidan so'ng qayerga dafn qilingan?$$,
       $$["Samarqanddagi maqbaraga", "O'zi qurdirgan madrasa maqbarasiga", "Makkadagi qabristonga", "Bag'doddagi qabristonga"]$$::jsonb,
       1,
       $$Husayn Boyqaro 1506-yilda vafot etgan va o'zi qurdirgan madrasa maqbarasiga dafn qilingan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Husayniy (1438–1506).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- ibn-sino | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abu Ali ibn Sino qaysi yilda tug'ilgan?$$,
       $$["950-yilda", "965-yilda", "980-yilda", "1015-yilda"]$$::jsonb,
       2,
       $$Ibn Sino 980-yilda Buxoro yaqinidagi Afshona qishlog'ida tug'ilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibn Sino tug'ilgan Afshona qishlog'i qaysi shahar yaqinida joylashgan?$$,
       $$["Samarqand", "Termiz", "Xiva", "Buxoro"]$$::jsonb,
       3,
       $$Ibn Sino 980-yilda Buxoro yaqinidagi Afshona qishlog'ida tug'ilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | «Tib qonunlari»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibn Sinoning «Al-Qonun fit-tib» asari nechta kitobdan iborat?$$,
       $$["Beshta", "Uchta", "Yettita", "O'nta"]$$::jsonb,
       0,
       $$Besh kitobdan iborat «Al-Qonun fit-tib» kasalliklar, dorilar va davolash usullarini tartibga solgan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$«Tib qonunlari»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | «Tib qonunlari»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibn Sinoning «Tib qonunlari» asari Yevropada qanday ahamiyatga ega bo'lgan?$$,
       $$["Faqat saroy kutubxonalarida saqlangan", "Universitetlarda asrlar davomida darslik bo'lib xizmat qilgan", "Harbiy qo'llanma sifatida ishlatilgan", "Sayohatchilar uchun yo'l ko'rsatkichi bo'lgan"]$$::jsonb,
       1,
       $$«Al-Qonun fit-tib» Yevropa universitetlarida asrlar davomida darslik bo'lib xizmat qilgan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$«Tib qonunlari»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | Yoshligimdagi ilm
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibn Sino necha yoshida tabiblik bilan shug'ullana boshlagan?$$,
       $$["O'n yoshida", "Yigirma yoshida", "O'n olti yoshida", "O'ttiz yoshida"]$$::jsonb,
       2,
       $$Ibn Sino o'n olti yoshida tabiblik bilan shug'ullana boshlagan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yoshligimdagi ilm$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | Yoshligimdagi ilm
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Yosh Ibn Sino kimning kutubxonasidan foydalanish huquqini qo'lga kiritgan?$$,
       $$["Bag'dod xalifasining", "Samarqand hokimining", "Xorazm shohining", "Buxoro amirining"]$$::jsonb,
       3,
       $$O'n olti yoshida tabiblikni boshlagan Ibn Sino Buxoro amirining kutubxonasidan foydalanish huquqini qo'lga kiritgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yoshligimdagi ilm$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | «Kitob ash-Shifo»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibn Sinoning falsafa, mantiq va tabiat fanlariga bag'ishlangan qomusiy asari qaysi?$$,
       $$["Kitob ash-Shifo", "Al-Qonun fit-tib", "Osor ul-boqiya", "Al-Jome' as-Sahih"]$$::jsonb,
       0,
       $$«Kitob ash-Shifo» tibbiyot emas, balki falsafa, mantiq va tabiat fanlari qomusidir. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Kitob ash-Shifo»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | «Kitob ash-Shifo»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibn Sinoning «Kitob ash-Shifo» asariga qaysi soha kirmagan?$$,
       $$["Falsafa", "Tibbiyot", "Mantiq", "Tabiat fanlari"]$$::jsonb,
       1,
       $$«Kitob ash-Shifo» tibbiyotga emas, balki falsafa, mantiq va tabiat fanlariga bag'ishlangan qomusdir. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Kitob ash-Shifo»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | Yuqumli kasalliklar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibn Sino ba'zi kasalliklar qanday yo'l bilan yuqishini yozgan?$$,
       $$["Faqat teginish orqali", "Faqat ovqat orqali", "Suv va havo orqali", "Issiq-sovuq almashinuvi orqali"]$$::jsonb,
       2,
       $$Ibn Sino ba'zi kasalliklar suv va havo orqali yuqishini yozgan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Yuqumli kasalliklar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- ibn-sino | Yuqumli kasalliklar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Yuqumli kasalliklar tarqalmasligi uchun Ibn Sino qanday tavsiya bergan?$$,
       $$["Barcha bemorlarni bir joyda saqlashni", "Bemorlarni uzoq safarga jo'natishni", "Bemorlarni faqat issiq suvda cho'miltirishni", "Bemorlarni boshqalardan ajratib qo'yishni"]$$::jsonb,
       3,
       $$Ibn Sino kasallik yuqmasligi uchun bemorlarni ajratib qo'yishni tavsiya qilgan. Manba: UNESCO, «History of Civilizations of Central Asia».$$
FROM fact_cards f
WHERE f.topic_uz = $$Yuqumli kasalliklar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- imom-al-buxoriy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Imom al-Buxoriy qachon va qayerda tug'ilgan?$$,
       $$["810-yilda Buxoroda", "849-yilda Farg'onada", "980-yilda Afshonada", "870-yilda Samarqandda"]$$::jsonb,
       0,
       $$Imom al-Buxoriy 810-yilda Buxoroda tug'ilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Yosh Imom al-Buxoriyga ilm yo'lini kim ochgan?$$,
       $$["Bobosi", "Onasi", "Amakisi", "Buxoro qozisi"]$$::jsonb,
       1,
       $$Imom al-Buxoriy otasidan yosh qolgan, unga ilm yo'lini onasi ochgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | «Al-Jome' as-Sahih»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Imom al-Buxoriyning «Al-Jome' as-Sahih» asari qanday to'plam?$$,
       $$["She'riy devon", "Tarixiy solnoma", "Ishonchli hadislar to'plami", "Tibbiy qomus"]$$::jsonb,
       2,
       $$«Al-Jome' as-Sahih» — Imom al-Buxoriyning ko'p yillik mehnati natijasi bo'lgan ishonchli hadislar to'plami. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Al-Jome' as-Sahih»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | «Al-Jome' as-Sahih»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Imom al-Buxoriy to'plamidagi har bir hadisni qanday tekshirgan?$$,
       $$["Faqat o'z xotirasiga tayanib", "Qadimgi kitoblardan ko'chirib", "Boshqa olimlardan so'rab", "Rivoyat qilganlar zanjiri bo'yicha tekshirib"]$$::jsonb,
       3,
       $$Imom al-Buxoriy har bir hadisni rivoyat qilganlar zanjiri bo'yicha tekshirib chiqqan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Al-Jome' as-Sahih»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | Safarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Imom al-Buxoriy qanday maqsadda uzoq shaharlarga safar qilgan?$$,
       $$["Hadis to'plash uchun", "Savdo-sotiq qilish uchun", "Tabiblikni o'rganish uchun", "Yangi yerlarni zabt etish uchun"]$$::jsonb,
       0,
       $$Imom al-Buxoriy hadis to'plash uchun Makka, Madina, Bag'dod, Damashq va Misrga safar qilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Safarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | Safarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Imom al-Buxoriy hadis to'plash uchun qaysi shaharlarga safar qilgan?$$,
       $$["Hirot, Balx va Marvga", "Makka, Madina, Bag'dod, Damashq va Misrga", "Qashqar, Turfon va Xo'tanga", "Ray, Isfahon va Sherozga"]$$::jsonb,
       1,
       $$Imom al-Buxoriy hadis to'plash uchun Makka, Madina, Bag'dod, Damashq va Misrga safar qilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Safarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | Xotira kuchi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Manbalarda yozilishicha, o'n olti yoshli Imom al-Buxoriy nechta hadisni yoddan bilgan?$$,
       $$["Yuzga yaqin", "Besh yuzga yaqin", "Bir necha ming", "Qirqta"]$$::jsonb,
       2,
       $$Manbalarda yozilishicha, Imom al-Buxoriy o'n olti yoshida bir necha ming hadisni yoddan bilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xotira kuchi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | Xotira kuchi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Imom al-Buxoriy necha yoshida bir necha ming hadisni yoddan bilgan?$$,
       $$["Yetti yoshida", "O'ttiz yoshida", "Qirq yoshida", "O'n olti yoshida"]$$::jsonb,
       3,
       $$Manbalarda yozilishicha, Imom al-Buxoriy o'n olti yoshida bir necha ming hadisni yoddan bilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xotira kuchi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | Qabrim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Imom al-Buxoriy umrining oxirini o'tkazgan Xartang qishlog'i qaysi shahar yaqinida joylashgan?$$,
       $$["Samarqand", "Buxoro", "Toshkent", "Marv"]$$::jsonb,
       0,
       $$Imom al-Buxoriy umrining oxirini Samarqand yaqinidagi Xartang qishlog'ida o'tkazgan, qabri ham shu yerda. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qabrim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- imom-al-buxoriy | Qabrim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Qaysi allomaning qabri Samarqand yaqinidagi Xartang qishlog'ida joylashgan?$$,
       $$["Ibn Sino", "Imom al-Buxoriy", "Ismoil Somoniy", "Ahmad Farg'oniy"]$$::jsonb,
       1,
       $$Imom al-Buxoriy umrining oxirini Samarqand yaqinidagi Xartang qishlog'ida o'tkazgan, qabri ham shu yerda. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qabrim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- ishoqxon-ibrat | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Is'hoqxon Ibrat tug'ilgan To'raqo'rg'on qishlog'i qaysi shahar yaqinida joylashgan?$$,
       $$["Qo'qon", "Andijon", "Namangan", "Toshkent"]$$::jsonb,
       2,
       $$Is'hoqxon Ibrat 1862-yilda Namangan yaqinidagi To'raqo'rg'on qishlog'ida tug'ilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Is'hoqxon Ibrat dastlab qayerda o'qigan?$$,
       $$["Rus gimnaziyasida", "Yangi usul maktabida", "Qo'qon madrasasida", "Eski maktabda"]$$::jsonb,
       3,
       $$Ibrat dastlab eski maktabda o'qigan, so'ng Qo'qon madrasasida tahsil olib, 1886-yilda uni tugatgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | Katta sayohatim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Is'hoqxon Ibrat haj safaridan so'ng qaysi shaharlarda yashagan?$$,
       $$["Jidda, Bombey va Kalkuttada", "Sofiya, Afina va Rimda", "Moskva va Qozonda", "Qohira va Bayrutda"]$$::jsonb,
       0,
       $$Ibrat 1887-yilda haj safariga chiqib, Istanbul, Sofiya, Afina va Rimda bo'lgan, keyin Jidda, Bombey va Kalkuttada yashagan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Katta sayohatim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | Tillarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Is'hoqxon Ibrat arab, fors, hind-urdu va ingliz tillarini qayerda mukammal o'rgangan?$$,
       $$["Qo'qon madrasasida", "Sayohatlari davomida", "Rus-tuzem maktabida", "Peterburg universitetida"]$$::jsonb,
       1,
       $$Ibrat sayohatlarida arab, fors, hind-urdu va ingliz tillarini mukammal o'rgangan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tillarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | Vatanga qaytishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Is'hoqxon Ibrat uzoq safarlardan vataniga qachon qaytib kelgan?$$,
       $$["1887-yilda", "1890-yilda", "1896-yilda", "1901-yilda"]$$::jsonb,
       2,
       $$Ibrat 1896-yilda vataniga qaytib kelgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Vatanga qaytishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | Olti tilli lug'atim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibratning «Lug'ati sitta alsina» lug'atiga qaysi tillarning so'zlari kirgan?$$,
       $$["Ingliz, fransuz va nemis so'zlari", "Faqat arab va fors so'zlari", "Faqat turkiy tillar so'zlari", "Arab, fors, hind, turk, o'zbek va rus so'zlari"]$$::jsonb,
       3,
       $$1901-yilda chop etilgan «Lug'ati sitta alsina» arab, fors, hind, turk, o'zbek va rus so'zlaridan iborat olti tilli lug'atdir. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Olti tilli lug'atim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | Maktabim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Is'hoqxon Ibrat 1907-yilda yangi usul maktabini qayerda ochgan?$$,
       $$["To'raqo'rg'onda", "Namangan shahrida", "Qo'qonda", "Toshkentda"]$$::jsonb,
       0,
       $$Ibrat 1907-yilda To'raqo'rg'onda yangi usul maktabini ochgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Maktabim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | Bosmaxonam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibrat «Matbaai Ishoqiya» litografiya bosmaxonasini qachon tashkil etgan?$$,
       $$["1905-yilda", "1908-yilda", "1912-yilda", "1917-yilda"]$$::jsonb,
       1,
       $$Ibrat 1908-yilda qishlog'ida «Matbaai Ishoqiya» litografiya bosmaxonasini tashkil etgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Bosmaxonam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | Asarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ibratning 1909-yilda chiqqan «Ilmi Ibrat» asari qanday asar?$$,
       $$["Olti tilli lug'at", "Tarixga oid asar", "She'riy to'plam", "Darslik"]$$::jsonb,
       2,
       $$1909-yilda Ibratning «Ilmi Ibrat» she'riy to'plami chiqqan, 1912-yilda esa yozuvlar tarixiga oid «Jome' ul-xutut» asari yaratilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Asarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ishoqxon-ibrat | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Is'hoqxon Ibrat vafot etganida necha yoshda edi?$$,
       $$["60 yoshda", "68 yoshda", "80 yoshda", "75 yoshda"]$$::jsonb,
       3,
       $$Is'hoqxon Ibrat 1937-yilda 75 yoshida Andijon turmasida vafot etgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Is'hoqxon to'ra Ibrat (1862–1937).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- ismoil-somoniy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Somoniylar sulolasiga nom bergan Somonxudot Ismoil Somoniyga kim bo'lgan?$$,
       $$["Bobokaloni (ajdodi)", "Otasi", "Ukasi", "Ustozi"]$$::jsonb,
       0,
       $$Ismoil Somoniy 849-yilda Farg'onada tug'ilgan; sulola bobokaloni Somonxudot nomi bilan Somoniylar deb atalgan. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ismoil-somoniy | Buxoro noibi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ismoil Somoniy qaysi yildan boshlab butun Movarounnahrning noibi bo'lgan?$$,
       $$["875-yildan", "893-yildan", "899-yildan", "905-yildan"]$$::jsonb,
       1,
       $$Ismoil avval Buxoro shahriga noib etib tayinlangan, 893-yildan esa butun Movarounnahrning noibi bo'lgan. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Buxoro noibi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ismoil-somoniy | Taroz yurishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ismoil Somoniyning 893-yilgi Taroz yurishi qanday yakunlangan?$$,
       $$["Mag'lubiyat bilan tugagan", "Sulh tuzilmay ortga qaytilgan", "G'alaba bilan yakunlangan", "Yurish amalga oshmay qolgan"]$$::jsonb,
       2,
       $$Ismoil 893-yilda Taroz shahriga harbiy yurish qilib, g'alaba bilan qaytgan. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Taroz yurishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ismoil-somoniy | Yagona davlat
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ismoil Somoniy butun Movarounnahrni birlashtirib nimaga erishgan?$$,
       $$["Xalifalikka qo'shib bergan", "Davlatni ikkiga bo'lib boshqargan", "Uni boshqa sulolaga topshirgan", "Yagona kuchli davlat tuzgan"]$$::jsonb,
       3,
       $$Ismoil butun Movarounnahrni birlashtirib yagona kuchli davlat tuzgan; davlatning poytaxti Buxoro shahri edi. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yagona davlat$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ismoil-somoniy | Xuroson uchun kurash
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Safforiylar ustidan g'alaba qozongach, Ismoil Somoniy kimga aylangan?$$,
       $$["Mustaqil hukmdorga", "Xalifaning oddiy noibiga", "Buxoro qozisiga", "Lashkarboshiga"]$$::jsonb,
       0,
       $$Xuroson uchun kurashda safforiylar ustidan g'alaba qozongan Ismoil shundan so'ng mustaqil hukmdorga aylangan. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xuroson uchun kurash$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ismoil-somoniy | Adolatli boshqaruv
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zamondoshlari Ismoil Somoniyni qanday hukmdor deb bilishgan?$$,
       $$["Faqat harbiy yurishlar bilan band hukmdor", "Dono va adolatli hukmdor", "Ilm-fanga befarq hukmdor", "Savdo bilangina qiziqqan hukmdor"]$$::jsonb,
       1,
       $$Zamondoshlari Ismoilni dono va adolatli hukmdor deb bilishgan: u olimu ulamolarga homiylik qilgan va ko'plab binolar qurdirgan. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Adolatli boshqaruv$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ismoil-somoniy | «Amiri moziy» laqabim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ismoil Somoniyga berilgan «amiri moziy» laqabi qanday ma'noni anglatadi?$$,
       $$["Buyuk amir", "Adolatli amir", "O'tgan amir", "Yosh amir"]$$::jsonb,
       2,
       $$Keyingi avlodlar Ismoilni hurmat bilan «amiri moziy», ya'ni «o'tgan amir» deb atashgan. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Amiri moziy» laqabim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ismoil-somoniy | Narshaxiy guvohligi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Narshaxiy yozishicha, Ismoil Somoniy hukmronligining necha yilida Xuroson amiri ham bo'lgan?$$,
       $$["10 yilida", "15 yilida", "25 yilida", "20 yilida"]$$::jsonb,
       3,
       $$Tarixchi Narshaxiy yozishicha, Ismoilning hukmronligi 30 yil davom etgan, shundan 20 yilida u Xuroson amiri ham bo'lgan. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Narshaxiy guvohligi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ismoil-somoniy | Umrim oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$907-yilda poytaxti Buxoro shahrida vafot etgan hukmdor kim?$$,
       $$["Ismoil Somoniy", "Somonxudot", "Nuh ibn Nasr", "Qutayba ibn Muslim"]$$::jsonb,
       0,
       $$Ismoil Somoniy 907-yilda poytaxti Buxoro shahrida vafot etgan. Manba: Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrim oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- TOTAL: 49

-- ===================== heroes_ag.sql =====================

-- istami-xoqon | Kimman?
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Istami xoqon qaysi davlatda turklarning g'arbga tomon yurishlariga boshchilik qilgan?$$,
       $$["Kushon podsholigi", "Eftallar davlati", "Turk xoqonligi", "Eron davlati"]$$::jsonb,
       2,
       $$Istami xoqon Turk xoqonligida turklarning g'arbga tomon yurishlariga boshchilik qilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman?$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- istami-xoqon | Unvonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Yabg'u xoqon» unvoni quyidagi tarixiy shaxslardan qaysi biriga berilgan?$$,
       $$["Kanishka", "Istami", "Xusrav I Anushervon", "Doro I"]$$::jsonb,
       1,
       $$«Yabg'u xoqon» unvoni Istamiga berilgan; yabg'u darajasiga faqat xoqon urug'iga qon-qarindosh bo'lganlargina ko'tarilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Unvonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- istami-xoqon | Sharqiy o'lkalar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Istami yurishlari natijasida qaysi hududlarga tutashgan yurtlarda yashovchi turkiy qabilalar bo'ysundirilgan?$$,
       $$["Yettisuv va Sharqiy Turkistonga", "Kaspiy dengizi bo'ylariga", "Hindiston va Afg'onistonga", "Xorazm vohasiga"]$$::jsonb,
       0,
       $$Istami yurishlari natijasida Yettisuv va Sharqiy Turkistonga tutashgan yurtlarda yashovchi turkiy qabilalar bo'ysundirilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Sharqiy o'lkalar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- istami-xoqon | Keng o'lkalar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Turklar Sirdaryo va Orol dengizi bo'ylarigacha cho'zilgan keng o'lkalarni qachon egallagan?$$,
       $$["552-yilda", "563-yilda", "580-yilda", "555-yildayoq"]$$::jsonb,
       3,
       $$555-yildayoq turklar Sirdaryo va Orol dengizi bo'ylarigacha cho'zilgan keng o'lkalarni egallagan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Keng o'lkalar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- istami-xoqon | Eron bilan ittifoq
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Istami Eron shohi Xusrav I Anushervon bilan qanday ittifoq tuzgan?$$,
       $$["Savdo ittifoqi", "Harbiy ittifoq", "Diniy ittifoq", "Tinchlik shartnomasi"]$$::jsonb,
       1,
       $$Eron shohi Xusrav I Anushervon tashabbusi bilan harbiy ittifoq tuzilgan; bu ittifoq Eron shohining Istamiga kuyov bo'lishi orqali yanada mustahkamlangan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Eron bilan ittifoq$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- istami-xoqon | Eftallarga qarshi yurish
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$563-yilda turk qo'shinlari eftallar davlati yerlariga kirib, qaysi shaharlarni egallagan?$$,
       $$["Buxoro va Marv", "Termiz va Dalvarzintepa", "Peshovar va Xo'tan", "Choch, Samarqand, Kesh va Naxshab"]$$::jsonb,
       3,
       $$563-yilda turk qo'shinlari eftallar davlati yerlariga kirib, Choch, Samarqand, Kesh va Naxshab shaharlarini egallagan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Eftallarga qarshi yurish$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- istami-xoqon | Eftallar davlati yakuni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Eftallar davlati barham topgach, Amudaryoning o'ng sohillari bo'ylab Kaspiy dengizigacha cho'zilgan yerlar qaysi davlat tasarrufiga o'tgan?$$,
       $$["Turk xoqonligi", "Eron davlati", "Vizantiya", "Kushon podsholigi"]$$::jsonb,
       0,
       $$563–567-yillarda eftallar davlati barham topgach, Amudaryoning o'ng sohillari bo'ylab Kaspiy dengizigacha cho'zilgan yerlar Turk xoqonligi tasarrufiga o'tgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Eftallar davlati yakuni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- istami-xoqon | Ipak yo'li savdosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Eftallar davlati qulagach, turklar qaysi mashhur savdo yo'lining karvon savdosida faol qatnasha boshlagan?$$,
       $$["Shoh yo'li", "Ziravorlar yo'li", "Buyuk ipak yo'li", "Tuz yo'li"]$$::jsonb,
       2,
       $$Eftallar davlati qulagach, turklar Buyuk ipak yo'li karvon savdosida faol qatnashib, Eron orqali Vizantiya bilan bevosita savdo qiladigan bo'lgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ipak yo'li savdosi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- jaloliddin-manguberdi | Kimman
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Jaloliddin Manguberdi kimning o'g'li bo'lgan?$$,
       $$["Chingizxonning", "Xorazmshoh Alouddin Muhammadning", "Bag'dod xalifasining", "Eron shohining"]$$::jsonb,
       1,
       $$Jaloliddin Manguberdi Xorazmshoh Alouddin Muhammadning o'g'li bo'lgan. Manba: O'zbekiston tarixi, 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

-- jaloliddin-manguberdi | Kimman
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Jaloliddin Manguberdi mo'g'ul bosqiniga qarshi kurashni qaysi voqeadan so'ng davom ettirgan?$$,
       $$["Otasi vafotidan so'ng", "Akasi taxtga chiqqandan so'ng", "Poytaxt qulagandan so'ng", "Parvon jangidan so'ng"]$$::jsonb,
       0,
       $$Jaloliddin otasi Xorazmshoh Alouddin Muhammad vafotidan so'ng mo'g'ul bosqiniga qarshi kurashni davom ettirgan. Manba: O'zbekiston tarixi, 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

-- jaloliddin-manguberdi | Parvon jangi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Jaloliddin Manguberdi Parvon yonida mo'g'ul qo'shinini qaysi yilda yenggan?$$,
       $$["1215-yilda", "1227-yilda", "1221-yilda", "1231-yilda"]$$::jsonb,
       2,
       $$1221-yilda Jaloliddin Parvon yonida mo'g'ul qo'shinini yenggan — bu Chingizxon lashkariga qarshi erishilgan sanoqli g'alabalardan biri edi. Manba: O'zbekiston tarixi, 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Parvon jangi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

-- jaloliddin-manguberdi | Parvon jangi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1221-yilda Jaloliddin Manguberdi mo'g'ul qo'shinini qayerda yenggan?$$,
       $$["Samarqand yaqinida", "Urganch ostonasida", "Sind daryosi bo'yida", "Parvon yonida"]$$::jsonb,
       3,
       $$1221-yilda Jaloliddin Parvon yonida mo'g'ul qo'shinini yenggan. Manba: O'zbekiston tarixi, 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Parvon jangi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

-- jaloliddin-manguberdi | Sind daryosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Sind (Hind) daryosi bo'yidagi jangda Jaloliddin Manguberdi qanday holatda qolgan edi?$$,
       $$["Qurshovda qolgan", "Asirga tushgan", "Jang maydonidan chetda bo'lgan", "Ittifoqchilardan yordam olgan"]$$::jsonb,
       0,
       $$Sind daryosi bo'yidagi jangda Jaloliddin qurshovda qolgan va oti bilan daryoga sakrab, qarshi qirg'oqqa o'tgan. Manba: O'zbekiston tarixi, 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Sind daryosi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

-- jaloliddin-manguberdi | Sind daryosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Qurshovda qolgan Jaloliddin Manguberdi Sind daryosi bo'yidagi jangda qanday yo'l tutgan?$$,
       $$["Taslim bo'lgan", "Sulh so'ragan", "Oti bilan daryoga sakrab, qarshi qirg'oqqa o'tgan", "Tog'larga chekingan"]$$::jsonb,
       2,
       $$Sind (Hind) daryosi bo'yidagi jangda qurshovda qolgan Jaloliddin oti bilan daryoga sakrab, qarshi qirg'oqqa o'tgan. Manba: O'zbekiston tarixi, 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Sind daryosi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

-- jaloliddin-manguberdi | Kurashim qancha davom etdi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Jaloliddin Manguberdining mo'g'ullarga qarshi kurashi qancha davom etgan?$$,
       $$["Ikki yil", "Besh yil", "Yetti yil", "O'n yildan ortiq"]$$::jsonb,
       3,
       $$Jaloliddinning mo'g'ullarga qarshi kurashi o'n yildan ortiq — 1220-yillardan 1231-yilgacha davom etgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kurashim qancha davom etdi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

-- jaloliddin-manguberdi | Kurashim qancha davom etdi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Jaloliddin Manguberdining mo'g'ullarga qarshi kurashi qaysi yilgacha davom etgan?$$,
       $$["1221-yilgacha", "1231-yilgacha", "1227-yilgacha", "1245-yilgacha"]$$::jsonb,
       1,
       $$Jaloliddinning mo'g'ullarga qarshi kurashi 1220-yillardan 1231-yilgacha davom etgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kurashim qancha davom etdi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

-- kamoliddin-behzod | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$2020-yilda Kamoliddin Behzod tavalludining necha yilligi nishonlangan?$$,
       $$["500 yilligi", "525 yilligi", "565 yilligi", "600 yilligi"]$$::jsonb,
       2,
       $$Behzod taxminan 1455-yilda tug'ilgan — 2020-yilda tavalludining 565 yilligi nishonlangan. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kamoliddin-behzod | Yetakchilik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kamoliddin Behzod yigirma uch yoshida Hirotdagi qaysi san'at maktabining yetakchisiga aylangan?$$,
       $$["Miniatyura maktabining", "Xattotlik maktabining", "Me'morlik maktabining", "Musiqa maktabining"]$$::jsonb,
       0,
       $$Behzod yigirma uch yoshida Hirot miniatyura maktabining yetakchisiga aylangan. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yetakchilik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kamoliddin-behzod | Unvonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Sharq Rafaeli» deb qaysi ijodkor ataladi?$$,
       $$["Alisher Navoiy", "Abdurahmon Jomiy", "Husayn Boyqaro", "Kamoliddin Behzod"]$$::jsonb,
       3,
       $$Kamoliddin Behzodni «Sharq Rafaeli» deb atashadi. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Unvonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kamoliddin-behzod | Portretlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri Kamoliddin Behzod chizgan portretlar qatoriga kiradi?$$,
       $$["Amir Temur portreti", "Shayboniyxon portreti", "Ulug'bek portreti", "Mirzo Bobur portreti"]$$::jsonb,
       1,
       $$Behzod Abdurahmon Jomiy, Alisher Navoiy, Husayn Boyqaro va Shayboniyxon portretlarini chizgan. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Portretlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kamoliddin-behzod | Portret janri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kamoliddin Behzod qaysi san'at turida portret janrining ustasi va yo'lboshchisi sanaladi?$$,
       $$["Sharq miniatyurasida", "Haykaltaroshlikda", "Devoriy rassomlikda", "Kulolchilikda"]$$::jsonb,
       0,
       $$Behzod Sharq miniatyurasida portret janrining ustasi va yo'lboshchisi sanaladi. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Portret janri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kamoliddin-behzod | Hukmdor buyurtmasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Hirot hukmdori Husayn Boyqaro Kamoliddin Behzodga qanday topshiriq bergan?$$,
       $$["Madrasa qurishni", "Devon ko'chirishni", "Yangi miniatyura asarlari yaratishni", "Saroy xaritasini chizishni"]$$::jsonb,
       2,
       $$Hirot hukmdori Husayn Boyqaro Behzodga yangi miniatyura asarlari yaratishni topshirgan. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hukmdor buyurtmasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kamoliddin-behzod | «Rassom portreti»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kamoliddin Behzodning «Rassom portreti» asari qaysi asrda yaratilgan?$$,
       $$["XIV asrda", "XV asrda", "XVI asrda", "XVII asrda"]$$::jsonb,
       1,
       $$Behzod «Rassom portreti» asarini 1487-yilda, ya'ni XV asrda yaratgan. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Rassom portreti»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kamoliddin-behzod | Mashhur asarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behzodning G'arb olimlari tomonidan ham o'rganilgan «Bag'dodlik darvesh» asari qaysi janrga mansub?$$,
       $$["Manzara", "Jang tasviri", "Naqsh namunasi", "Portret"]$$::jsonb,
       3,
       $$Behzodning «Bag'dodlik darvesh» portreti G'arb olimlari tomonidan ham o'rganilgan. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mashhur asarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kamoliddin-behzod | Merosim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Sharq va G'arb san'ati xazinalarini boyitgan deb kimning ishlari e'tirof etiladi?$$,
       $$["Husayn Boyqaroning", "Shayboniyxonning", "Kamoliddin Behzodning", "Abdurahmon Jomiyning"]$$::jsonb,
       2,
       $$Kamoliddin Behzodning ishlari Sharq va G'arb san'ati xazinalarini boyitgan deb e'tirof etiladi. Manba: UzA — «Sharqning ulug' musavviri»; Ziyouz.com — «Behzod kashf etgan da Vinchi siri» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Merosim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

-- kanishka | Kimman?
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kanishka saltanati davrida hozirgi O'zbekistonning qaysi qismi Kushon davlati tarkibida bo'lgan?$$,
       $$["Shimoliy hududlari", "Janubi", "Faqat Farg'ona vodiysi", "Faqat Xorazm vohasi"]$$::jsonb,
       1,
       $$Kanishka saltanati davrida hozirgi O'zbekiston janubi Kushon davlati tarkibida bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman?$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Saltanat davri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kushon davlati qaysi hukmdor davrida o'z taraqqiyotining cho'qqisiga erishgan?$$,
       $$["Kanishka davrida", "Doro I davrida", "Xusrav I Anushervon davrida", "Istami xoqon davrida"]$$::jsonb,
       0,
       $$Kushon davlati milodiy I asrdan III asrgacha hukm surgan va Kanishka davrida o'z taraqqiyotining cho'qqisiga erishgan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Saltanat davri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Poytaxt
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kanishka poytaxt qilib tanlagan Peshovar shahri hozirgi qaysi davlat hududida joylashgan?$$,
       $$["Hindiston", "Afg'oniston", "Eron", "Pokiston"]$$::jsonb,
       3,
       $$Kanishka poytaxtni Baqtriyadan Peshovar shahriga — hozirgi Pokiston hududiga ko'chirgan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Poytaxt$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Saltanat hududi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kanishka davlatining hududiga qaysi yerlar kirgan?$$,
       $$["Misr va Suriya", "Yunoniston va Kichik Osiyo", "Hindiston, Xo'tan, Afg'oniston va O'zbekiston janubigacha bo'lgan yerlar", "Sibir va Volga bo'ylari"]$$::jsonb,
       2,
       $$Kanishka davlati hududiga Hindiston, Xo'tan, Afg'oniston va O'zbekiston janubigacha bo'lgan yerlar kirgan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Saltanat hududi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Buyuk davlatlar qatorida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kushon davlati o'z zamonasida qaysi ulkan davlatlar qatorida turgan?$$,
       $$["Vizantiya va Arab xalifaligi", "Rim, Parfiya va Xitoy", "Turk xoqonligi va Eftallar davlati", "Yunon-Baqtriya va Ahamoniylar davlati"]$$::jsonb,
       1,
       $$Rim, Parfiya va Xitoy davlatlari qatorida Kushon davlati ham zamonasining ulkan podsholiklaridan biriga aylangan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Buyuk davlatlar qatorida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Savdo va elchilik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kanishka hukmronligi davrida mamlakat hayotida qanday o'zgarish yuz bergan?$$,
       $$["Aholi ko'chmanchi turmushga qaytgan", "Eski shaharlar tark etilgan", "Tashqi savdo to'xtab qolgan", "Yangi-yangi shaharlar bunyod etilgan"]$$::jsonb,
       3,
       $$Kanishka davrida yangi-yangi shaharlar bunyod etilib, Hindiston, Xitoy va Rim imperiyasi bilan savdo va elchilik munosabatlari yo'lga qo'yilgan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Savdo va elchilik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Buddaviylik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kanishka davrida buddaviylik dini yurtimizga qaysi mamlakat bilan yaqin aloqalar tufayli kirib kelgan?$$,
       $$["Xitoy", "Rim", "Hindiston", "Eron"]$$::jsonb,
       2,
       $$Hindiston bilan yaqin aloqalar tufayli yurtimizga buddaviylik dini kirib kelgan va Surxon vohasi orqali O'rta Osiyo bo'ylab tarqala boshlagan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Buddaviylik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Termiz ibodatxonalari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Termiz atrofidagi Fayoztepa va Qoratepa ibodatxonalari nimadan guvohlik beradi?$$,
       $$["Buddaviylik keng tarqalganidan", "Zardushtiylik markazi bo'lganidan", "Yunon ibodatxonalari qurilganidan", "Nasroniylik keng yoyilganidan"]$$::jsonb,
       0,
       $$Termiz atrofidagi Fayoztepa va Qoratepa ibodatxonalari buddaviylik keng tarqalganidan guvohlik beradi. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Termiz ibodatxonalari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Dalvarzintepa
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kushonlarning dastlabki poytaxti Dalvarzintepa Kanishka davrida qanday o'zgargan?$$,
       $$["Butunlay huvillab qolgan", "Yanada rivojlangan", "Boshqa davlat qo'liga o'tgan", "Oddiy qishloqqa aylangan"]$$::jsonb,
       1,
       $$Dalvarzintepa Kushon podsholigining dastlabki poytaxti bo'lgan; Kanishka davrida bu shahar yanada rivojlangan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Dalvarzintepa$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- kanishka | Tangalar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Kushon podsholigida oltin, kumush va misdan nimalar zarb qilingan?$$,
       $$["Muhrlar", "Taqinchoqlar", "Haykalchalar", "Tangalar"]$$::jsonb,
       3,
       $$Kushon podsholigida oltin, kumush va misdan tangalar zarb qilingan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tangalar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

-- mahmudxoja-behbudiy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mahmudxo'ja Behbudiy qanday oilada tug'ilgan?$$,
       $$["Din olimlari oilasida", "Savdogarlar oilasida", "Dehqonlar oilasida", "Harbiylar oilasida"]$$::jsonb,
       0,
       $$Behbudiy 1875-yilda Samarqandda, din olimlari oilasida tug'ilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | Ilm yo'lim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behbudiy Makka safaridan qaytishda qanday unvonlarga ega bo'lgan?$$,
       $$["Amir va vazir", "Qozi va rais", "Xo'ja va mufti", "Shayx va sadr"]$$::jsonb,
       2,
       $$Behbudiy arab tilini chuqur o'rgangan, 1902-yilda Makkaga borib, qaytishda xo'ja va mufti unvonlariga ega bo'lgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilm yo'lim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | Safarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behbudiy qaysi shaharlarga borib, tatar ziyolilari va nashrlari bilan tanishgan?$$,
       $$["Moskva va Peterburgga", "Qozon, Ufa va Orenburgga", "Istanbul va Qohiraga", "Boku va Tiflisga"]$$::jsonb,
       1,
       $$Behbudiy Qozon, Ufa va Orenburgga borib, tatar ziyolilari va nashrlari bilan tanishgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$Safarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | Maqolalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behbudiy qachondan boshlab «Taraqqiy», «Shuhrat», «Turon» kabi nashrlarda maqolalar chop etgan?$$,
       $$["1895-yildan", "1907-yildan", "1912-yildan", "1901-yildan"]$$::jsonb,
       3,
       $$Behbudiy 1901-yildan boshlab «Taraqqiy», «Shuhrat», «Turon» va boshqa nashrlarda maqolalar chop etgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$Maqolalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | Gazeta va jurnalim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behbudiy «Samarqand» gazetasi va «Oyina» jurnalini qachon ta'sis etgan?$$,
       $$["1912–1913-yillarda", "1901–1902-yillarda", "1907–1908-yillarda", "1917–1918-yillarda"]$$::jsonb,
       0,
       $$Behbudiy 1912–1913-yillarda ona shahri Samarqandda «Samarqand» gazetasi va «Oyina» jurnalini ta'sis etgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$Gazeta va jurnalim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | Darsliklarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behbudiyning «Qisqacha umumiy jug'rofiya» darsligi qaysi yilda yozilgan?$$,
       $$["1898-yilda", "1910-yilda", "1903-yilda", "1915-yilda"]$$::jsonb,
       2,
       $$Behbudiy «Qisqacha umumiy jug'rofiya» (1903), «Bolalar uchun kitob» (1904) va «Qisqacha islom tarixi» (1904) darsliklarini yozgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$Darsliklarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | «Padarkush» dramasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behbudiyning «Padarkush» asari o'zbek adabiyotida qanday o'rin tutadi?$$,
       $$["Ilk tarixiy roman", "Yangi o'zbek adabiyotining ilk drama asari", "Ilk she'riy devon", "Ilk sayohatnoma"]$$::jsonb,
       1,
       $$Behbudiy 1911-yilda yozgan «Padarkush» dramasi yangi o'zbek adabiyotining ilk drama asari bo'lgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Padarkush» dramasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | «Padarkush» sahnada
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Padarkush» dramasi Samarqanddan so'ng yana qaysi shaharlar teatrlarida ko'rsatilgan?$$,
       $$["Buxoro va Toshkentda", "Qo'qon va Andijonda", "Xiva va Urganchda", "Qarshi va Termizda"]$$::jsonb,
       0,
       $$«Padarkush» 1914-yil 25-yanvarda Samarqandda sahnaga qo'yilgan, so'ng Buxoro va Toshkent teatrlarida ko'rsatilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Padarkush» sahnada$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | Yangi maktab
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behbudiy yangi usul maktablari bilan birga yana nimani targ'ib qilgan?$$,
       $$["Harbiy mashqlarni", "Sport musobaqalarini", "Chet el sayohatlarini", "Ular uchun o'quv dasturlarini"]$$::jsonb,
       3,
       $$Behbudiy yangi usul maktablarini va ular uchun o'quv dasturlarini targ'ib qilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$Yangi maktab$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- mahmudxoja-behbudiy | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Behbudiyning hayoti 1919-yilda qaysi shaharda yakun topgan?$$,
       $$["Samarqandda", "Toshkentda", "Qarshida", "Buxoroda"]$$::jsonb,
       2,
       $$Behbudiy 1919-yilda Qarshi shahrida qatl etilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

-- TOTAL: 45

-- ===================== heroes_ah.sql =====================

-- mirzo-ulugbek | Tug'ilishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mirzo Ulug'bek qaysi shaharda tug'ilgan?$$,
       $$["Samarqandda", "Buxoroda", "Sultoniya shahrida", "Hirotda"]$$::jsonb,
       2,
       $$Mirzo Ulug'bek 1394-yil 22-martda, harbiy yurish paytida Sultoniya shahrida tug'ilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

-- mirzo-ulugbek | Hukmronligi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mirzo Ulug'bek Movarounnahrni qancha vaqt boshqargan?$$,
       $$["Qariyb o'n yil", "Qariyb qirq yil", "Besh yil", "Yigirma yil"]$$::jsonb,
       1,
       $$Ulug'bek 1409-yildan Samarqand taxtiga o'tirib, Movarounnahrni qariyb qirq yil boshqargan; uning davrida Samarqand butun Sharqning ilm-fan markaziga aylangan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hukmronligi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

-- mirzo-ulugbek | Rasadxona
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mirzo Ulug'bek mashhur rasadxonasini qaysi shaharda qurdirgan?$$,
       $$["Samarqandda", "Buxoroda", "G'ijduvonda", "Hirotda"]$$::jsonb,
       0,
       $$Ulug'bek 1424–1429-yillarda Samarqandda ulkan rasadxona qurdirgan; uning bosh asbobi radiusi 40 metrga yaqin ulkan sekstant edi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Rasadxona$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

-- mirzo-ulugbek | «Ziji jadidi Ko'ragoniy»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mirzo Ulug'bekning «Ziji jadidi Ko'ragoniy» asari asrlar davomida qanday xizmat qilgan?$$,
       $$["Tarix solnomasi sifatida o'qitilgan", "Faqat saroy kutubxonasida saqlangan", "Xattotlik namunasi sifatida ko'chirilgan", "Sharq va Yevropada astronomiya qo'llanmasi bo'lgan"]$$::jsonb,
       3,
       $$«Ziji jadidi Ko'ragoniy» asari asrlar davomida Sharq va Yevropada astronomiya qo'llanmasi bo'lib xizmat qilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Ziji jadidi Ko'ragoniy»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

-- mirzo-ulugbek | Yil hisobi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mirzo Ulug'bek yil uzunligini qancha deb hisoblagan?$$,
       $$["365 kun 6 soat 10 daqiqa 8 soniya", "360 kun 5 soat 20 daqiqa", "366 kun 2 soat 15 daqiqa", "364 kun 12 soat"]$$::jsonb,
       0,
       $$Ulug'bek yil uzunligini 365 kun 6 soat 10 daqiqa 8 soniya deb hisoblagan — bu hozirgi zamon o'lchovidan bir daqiqadan kamroq farq qiladi. Manba: «Ziji jadidi Ko'ragoniy».$$
FROM fact_cards f
WHERE f.topic_uz = $$Yil hisobi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

-- mirzo-ulugbek | Madrasalari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mirzo Ulug'bek qaysi shaharlarda madrasa qurdirgan?$$,
       $$["Toshkent, Xiva va Qo'qonda", "Buxoro, Samarqand va G'ijduvonda", "Hirot va Marvda", "Faqat Samarqandda"]$$::jsonb,
       1,
       $$Ulug'bek uchta madrasa qurdirgan: Buxoroda (1417), Samarqand Registonida (1417–1420) va G'ijduvonda (1433). Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Madrasalari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

-- mirzo-ulugbek | Olimlar davrasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mirzo Ulug'bekning shogirdi bo'lgan olim kim?$$,
       $$["Qozizoda Rumiy", "G'iyosiddin Jamshid Koshiy", "Ali Qushchi", "Ibn Sino"]$$::jsonb,
       2,
       $$Ulug'bek atrofiga zamonasining eng yetuk olimlarini to'plagan: ustozi Qozizoda Rumiy, G'iyosiddin Jamshid Koshiy va shogirdi Ali Qushchi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Olimlar davrasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

-- mirzo-ulugbek | Vafoti
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mirzo Ulug'bek qayerga dafn etilgan?$$,
       $$["Buxoro madrasasi hovlisiga", "Sultoniya shahriga", "Rasadxona yoniga", "Go'ri Amirga, bobosi yoniga"]$$::jsonb,
       3,
       $$Ulug'bek 1449-yilda vafot etgach, Go'ri Amirda bobosi Amir Temur yoniga dafn etilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Vafoti$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

-- mukarrama-turgunboyeva | Bolaligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mukarrama Turg'unboyeva qayerda tug'ilgan?$$,
       $$["Farg'ona yaqinida", "Toshkentda", "Buxoroda", "Xivada"]$$::jsonb,
       0,
       $$Mukarrama Turg'unboyeva 1913-yilda Farg'ona yaqinida o'rtahol oilada tug'ilgan va pedagogika texnikumida o'qigan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bolaligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | San'atga ahd
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mukarrama Turg'unboyeva texnikumda o'qib yurganida qaysi to'garakka qatnagan?$$,
       $$["Rasm to'garagiga", "Ashula va raqs to'garagiga", "Shaxmat to'garagiga", "Adabiyot to'garagiga"]$$::jsonb,
       1,
       $$Mukarrama texnikumda ashula va raqs to'garagiga qatnagan hamda Tamaraxonimning «Dilxiroj» raqsini ko'rib, san'atkor bo'lishga qat'iy ahd qilgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$San'atga ahd$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | Teatr studiyasida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mukarrama Turg'unboyeva 1929–1933-yillarda qayerda aktrisa va o'quvchi bo'lgan?$$,
       $$["Respublika balet maktabida", "Toshkent xoreografiya bilim yurtida", "Birinchi O'zbek davlat musiqali teatr studiyasida", "«Bahor» ansamblida"]$$::jsonb,
       2,
       $$1929–1933-yillarda Mukarrama Birinchi O'zbek davlat musiqali teatr studiyasining aktrisasi va o'quvchisi bo'lgan; o'zbek raqsini Usta Olim Komilov va Tamaraxonimdan o'rgangan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Teatr studiyasida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | O'qituvchilik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mukarrama Turg'unboyeva ustozi Usta Olim Komilov bilan qaysi qo'llanmani yaratgan?$$,
       $$["«Bahor valsi»", "«Tanovar»", "«Dilxiroj»", "«Doira darsi va raqs»"]$$::jsonb,
       3,
       $$Mukarrama ustozi Usta Olim Komilov bilan «Doira darsi va raqs» qo'llanmasini yaratgan — shu qo'llanma asosida o'zbek raqsi hozirgacha o'qitiladi. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qituvchilik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | Sahnadagi rollarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1939-yilda Mukarrama Turg'unboyeva qaysi baletda bosh rolni ijro etgan?$$,
       $$["«Shohida»", "«Oqbilak»", "«Tanovar»", "«Dilxiroj»"]$$::jsonb,
       0,
       $$Mukarrama 1939-yilda «Shohida» baletida, 1943-yilda esa «Oqbilak» baletida bosh rollarni ijro etgan; u «Tanovar» raqsining ilk ijrochisi hamdir. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Sahnadagi rollarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | «Beryozka»dan ilhom
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Beryozka» ansamblini ko'rgach, Mukarrama Turg'unboyevada qanday orzu tug'ilgan?$$,
       $$["Yangi teatr binosini qurish", "Faqat qizlardan iborat milliy raqs ansambli tuzish", "Moskvada qolib ishlash", "Balet darsligini yozish"]$$::jsonb,
       1,
       $$1956-yilda Moskvadagi xalqaro yoshlar festivalida «Beryozka» ansamblini ko'rib, Mukarramada O'zbekistonda ham faqat qizlardan iborat milliy raqs ansambli tuzish orzusi tug'ilgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Beryozka»dan ilhom$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | «Bahor» tug'ilishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mukarrama Turg'unboyeva «Bahor» ansamblini dastlab nechta qizdan tuzgan?$$,
       $$["8 qizdan", "20 qizdan", "12 qizdan", "40 qizdan"]$$::jsonb,
       2,
       $$1957-yilda Mukarrama Toshkent xoreografiya bilim yurtida o'zi dars bergan 12 qiz hamda eng yaxshi xonanda va sozandalardan jamoa tuzgan; ansamblga M.Mirzayevning «Bahor valsi» kuyi sharafiga «Bahor» deb nom berilgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Bahor» tug'ilishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | 600 raqs
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Bahor» ansambli Mukarrama Turg'unboyeva rahbarligida nechta mamlakatda chiqish qilgan?$$,
       $$["10 ga yaqin", "25 ga yaqin", "30 ga yaqin", "50 dan ortiq"]$$::jsonb,
       3,
       $$Mukarrama 1957-yildan umrining oxirigacha «Bahor»ning badiiy rahbari bo'lgan: 600 ga yaqin raqs sahnalashtirgan, ansambl esa 50 dan ortiq mamlakatda chiqish qilgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$600 raqs$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | Mukofotlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mukarrama Turg'unboyeva xotirasiga bag'ishlangan «Yil raqqosasi» tanlovi har yili qaysi kuni o'tkaziladi?$$,
       $$["31-may kuni", "8-mart kuni", "1-sentabr kuni", "21-mart kuni"]$$::jsonb,
       0,
       $$Mukarrama mehnatlari «Xalq artisti» unvoni va orden-medallar bilan taqdirlangan; uning xotirasi uchun har yili 31-may kuni «Yil raqqosasi» respublika ko'rik-tanlovi o'tkaziladi. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mukofotlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- mukarrama-turgunboyeva | Merosim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mukarrama Turg'unboyeva qachon vafot etgan?$$,
       $$["1965-yilda", "1978-yilda", "1985-yilda", "1996-yilda"]$$::jsonb,
       1,
       $$Mukarrama Turg'unboyeva 1978-yilda vafot etgan; 2020-yil fevralda Prezident qarori bilan uning nomidagi «Bahor» davlat raqs ansambli qayta tashkil etilgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); UZA.uz «Bahor» haqidagi maqolalari; gabt.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Merosim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

-- munavvarqori | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori Abdurashidxonov qanday oilada tug'ilgan?$$,
       $$["Savdogar oilasida", "Dehqon oilasida", "Mudarris oilasida", "Hunarmand oilasida"]$$::jsonb,
       2,
       $$Munavvarqori 1878-yilda Toshkentning Darxon mahallasida mudarris oilasida tug'ilgan; onasi Xosiyat otin ham mudarris qizi edi. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori madrasada tahsil olib qanday yutuqqa erishgan?$$,
       $$["Tabiblik ilmini egallagan", "Xattotlik ustasi bo'lgan", "She'riy devon tuzgan", "Qur'onni to'liq yod olib, hofiz bo'lgan"]$$::jsonb,
       3,
       $$Munavvarqori 1885–1890-yillarda Buxorodagi Mir Arab madrasasida tahsil olib, Qur'onni to'liq yod olgan va hofiz bo'lgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | Jadid maktabim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori 1901-yilda yangi usul maktabini qayerda ochgan?$$,
       $$["O'z hovlisida", "Mir Arab madrasasi qoshida", "Buxoroda", "Samarqandda"]$$::jsonb,
       0,
       $$Munavvarqori 1901-yilda o'z hovlisida yangi usul maktabini ochgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$Jadid maktabim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | «Adibi avval»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqorining «Adibi avval» darsligi qayerlarda qo'llanilgan?$$,
       $$["Faqat Toshkent maktablarida", "Butun Turkiston maktablarida", "Faqat Buxoro madrasalarida", "Rossiya gimnaziyalarida"]$$::jsonb,
       1,
       $$1907-yilda yozilgan «Adibi avval» o'zbek tilidagi ilk alifbo kitoblaridan bo'lib, butun Turkiston maktablarida qo'llanilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Adibi avval»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | Boshqa darsliklarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori 1925–1926-yillarda qaysi darslikni yaratgan?$$,
       $$["«Adib us-soniy»", "«Yer yuzi»", "«O'zbekcha til saboqligi»", "«Adibi avval»"]$$::jsonb,
       2,
       $$Munavvarqori «Adib us-soniy» (1907), «Yer yuzi» (1916–1917) va «O'zbekcha til saboqligi» (1925–1926) darsliklarini yaratgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$Boshqa darsliklarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | Gazetalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori «Xurshid» gazetasini qachon tashkil etgan?$$,
       $$["1918-yilda", "1914-yilda", "1901-yilda", "1906-yilda"]$$::jsonb,
       3,
       $$Munavvarqori 1906-yilda «Xurshid» gazetasini tashkil etgan; «Najot» va «Kengash» gazetalarida ham ishlagan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$Gazetalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | «Sadoi Turkiston»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori «Sadoi Turkiston» gazetasida qaysi yillarda xizmat qilgan?$$,
       $$["1914–1915-yillarda", "1901–1902-yillarda", "1906–1907-yillarda", "1922–1923-yillarda"]$$::jsonb,
       0,
       $$Munavvarqori 1914–1915-yillarda «Sadoi Turkiston» gazetasida xizmat qilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Sadoi Turkiston»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | Dorilfunun
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori Turkiston xalq dorilfununining asoschisi va rektori etib qachon saylangan?$$,
       $$["1901-yilda", "1918-yil aprelida", "1907-yilda", "1929-yilda"]$$::jsonb,
       1,
       $$Munavvarqori 1918-yil aprelida Turkiston xalq dorilfununining asoschisi va rektori etib saylangan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$Dorilfunun$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | Maorif ishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori Toshkent shahrida qanday lavozimda ishlagan?$$,
       $$["Muzey direktori", "Teatr rahbari", "Maorif noziri", "Kutubxona mudiri"]$$::jsonb,
       2,
       $$Munavvarqori Toshkent shahar maorif noziri va 1922-yilda Akademmarkaz raisi bo'lib ishlagan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$Maorif ishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munavvarqori | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munavvarqori Abdurashidxonovning hayoti qanday yakunlangan?$$,
       $$["1929-yilda Toshkentda vafot etgan", "1935-yilda surgunda vafot etgan", "1945-yilda Buxoroda vafot etgan", "1931-yilda Moskvada qatl etilgan"]$$::jsonb,
       3,
       $$Munavvarqori 1929-yilda qamoqqa olinib, 1931-yilda Moskvada qatl etilgan; 1991-yilda nomi oqlangan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- munis-xorazmiy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munis Xorazmiyning otasi kim bo'lgan?$$,
       $$["Amir Avazbiy", "Eltuzarxon", "Mirxond", "Ogahiy"]$$::jsonb,
       0,
       $$Munis 1778-yilda Xiva yaqinidagi Qiyot qishlog'ida tug'ilgan; otasi — Amir Avazbiy. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- munis-xorazmiy | Saroy xizmatim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munis Xorazmiy saroyga farmonnavis kotib etib qachon tayinlangan?$$,
       $$["1778-yilda", "1800-yilda", "1806-yilda", "1819-yilda"]$$::jsonb,
       1,
       $$1800-yilda otasi vafotidan so'ng Munis saroyga farmonnavis kotib etib tayinlangan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$Saroy xizmatim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- munis-xorazmiy | Ilk devonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munis Xorazmiy ilk she'riy devonini qachon tuzgan?$$,
       $$["1795-yilda", "1800-yilda", "1804-yilda", "1819-yilda"]$$::jsonb,
       2,
       $$Munis ilk she'riy devonini 1804-yilda tuzgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk devonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- munis-xorazmiy | «Savodi ta'lim»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munisning «Savodi ta'lim» asari qanday janrda yozilgan?$$,
       $$["Tarixiy solnoma", "Doston", "Lug'at", "She'riy risola"]$$::jsonb,
       3,
       $$Munis 1804-yilda xattotlik va savod o'rgatishga oid «Savodi ta'lim» she'riy risolasini yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Savodi ta'lim»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- munis-xorazmiy | «Firdavs ul-iqbol»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munis «Firdavs ul-iqbol» asarini qachon yoza boshlagan?$$,
       $$["1806-yilda", "1800-yilda", "1819-yilda", "1829-yilda"]$$::jsonb,
       0,
       $$1806-yilda Eltuzarxon topshirig'i bilan Munis Xiva xonligi tarixiga oid «Firdavs ul-iqbol» asarini yoza boshlagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Firdavs ul-iqbol»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- munis-xorazmiy | Katta devonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munisning «Munis ul-ushshoq» devoniga qancha misra she'r jamlangan?$$,
       $$["Besh mingga yaqin", "Yigirma mingdan ortiq", "Bir mingga yaqin", "O'n mingga yaqin"]$$::jsonb,
       1,
       $$«Munis ul-ushshoq» devoniga yigirma mingdan ortiq misra she'r jamlangan; devon 1880-yilda Xivada chop etilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$Katta devonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- munis-xorazmiy | Tarjimam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Munis turkiyga tarjima qila boshlagan «Ravzat us-safo» asarining muallifi kim?$$,
       $$["Narshaxiy", "Ogahiy", "Mirxond", "Eltuzarxon"]$$::jsonb,
       2,
       $$1819-yilda Munis Mirxondning «Ravzat us-safo» asarini turkiyga tarjima qila boshlagan va birinchi jildini tugatgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tarjimam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- munis-xorazmiy | Davomchim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Shogirdi Ogahiy Munisning qaysi tugallanmagan ishlarini yakunlagan?$$,
       $$["Ilk devonini", "«Savodi ta'lim» risolasini", "Madrasa qurilishini", "Solnoma va tarjimani"]$$::jsonb,
       3,
       $$Munisning tugallanmagan ishlarini — solnoma va tarjimani — shogirdi va jiyani Ogahiy yakunlagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$Davomchim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- munis-xorazmiy | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1829-yilda Munis Xorazmiy hayotida qanday voqea yuz bergan?$$,
       $$["U vafot etgan", "Devoni Xivada chop etilgan", "Saroyga farmonnavis kotib etib tayinlangan", "Ilk devonini tuzgan"]$$::jsonb,
       0,
       $$Munis Xorazmiy 1829-yilda vafot etgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Shermuhammad Munis (1778–1829).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- muqanna | Asl ismim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muqanna yoshligida qanday kasb egasi bo'lgan?$$,
       $$["Savdogar", "Hunarmand", "Dehqon", "Tabib"]$$::jsonb,
       1,
       $$Muqannaning asl ismi Hoshim ibn Hakim bo'lib, u Marv yaqinidagi Koza qishlog'ida tug'ilgan va hunarmand bo'lgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Asl ismim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | Laqabimning siri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muqanna boshi va yuziga qanday rangdagi parda tutib yurgan?$$,
       $$["Oq", "Qora", "Ko'k", "Qizil"]$$::jsonb,
       2,
       $$Muqanna boshi va yuziga ko'k parda tutib yurgani uchun unga «Muqanna», ya'ni «Niqobdor» laqabi berilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Laqabimning siri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | Bilimlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tarixchi Narshaxiyning yozishicha, Muqanna qaysi ilmni o'rgangan?$$,
       $$["Tabobat", "Falakiyot", "Musiqa", "Kimyogarlik"]$$::jsonb,
       3,
       $$Narshaxiyning yozishicha, Muqanna ko'p o'qigan va g'oyat ziyrak odam bo'lib, kimyogarlik ilmini o'rgangan hamda arab va fors tillarini yaxshi bilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bilimlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | Xurosondagi xizmatim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muqanna Xurosonda kichik lashkarboshilikdan qaysi darajagacha ko'tarilgan?$$,
       $$["Vazirlik darajasigacha", "Qozilik darajasigacha", "Hokimlik darajasigacha", "Elchilik darajasigacha"]$$::jsonb,
       0,
       $$Muqanna Xurosonda kichik lashkarboshilikdan vazirlik darajasigacha ko'tarilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xurosondagi xizmatim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | «Oq kiyimlilar» qo'zg'oloni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muqanna boshchiligidagi harakat nega «Oq kiyimlilar» qo'zg'oloni deb atalgan?$$,
       $$["Bayroqlari oq rangda bo'lgani uchun", "Tarafdorlari oq libos kiyganlari uchun", "Qo'zg'olon qishda boshlangani uchun", "Rahbari oq parda tutib yurgani uchun"]$$::jsonb,
       1,
       $$Muqanna 769–783-yillarda arab xalifaligi zulmiga qarshi katta xalq qo'zg'oloniga boshchilik qilgan; tarafdorlari oq libos kiyganlari uchun harakat tarixda «Oq kiyimlilar» qo'zg'oloni deb ataladi. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Oq kiyimlilar» qo'zg'oloni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | Som qal'asi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muqanna o'ziga qarorgoh qilgan Som qal'asi qayerda joylashgan edi?$$,
       $$["Marv yaqinida", "Samarqand yaqinida", "Kesh yaqinidagi tog' tepasida", "Buxoro yaqinida"]$$::jsonb,
       2,
       $$Som qal'asi Kesh yaqinidagi tog' tepasiga qurilgan bo'lib, Muqanna uni o'ziga qarorgoh qilgan; tez orada butun Qashqadaryo vohasi qo'zg'olonchilar qo'liga o'tgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Som qal'asi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | Harakatning kengayishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muqanna qo'zg'oloni ayniqsa qaysi hududda avj olgan?$$,
       $$["Xorazmda", "Farg'ona vodiysida", "Xurosonda", "Sug'dda"]$$::jsonb,
       3,
       $$Qo'zg'olon ayniqsa Sug'dda avj olgan hamda Eloq (Ohangaron) vodiysi va Shoshga ham ta'sir o'tkazgan; unda turli tabaqalarning vakillari qatnashgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Harakatning kengayishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | Ta'limotim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Muqanna targ'ib qilgan ta'limot odamlarni nimaga da'vat etgan?$$,
       $$["Ijtimoiy tenglik va erkin hayotga", "Savdo-sotiqni kengaytirishga", "Ko'chmanchi hayot kechirishga", "Yangi shaharlar qurishga"]$$::jsonb,
       0,
       $$Muqanna Mazdak g'oyalariga asoslangan, ijtimoiy tenglik va erkin hayotga da'vat etuvchi ta'limotni targ'ib qilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ta'limotim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | Xalifa qo'shinlariga qarshi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$775-yilda xalifa Mansur Muqanna qo'zg'olonchilariga qarshi yuborgan qo'shinlar bilan dastlabki to'qnashuvlar qanday yakunlangan?$$,
       $$["Qo'zg'olonchilar Marvga chekingan", "Arab qo'shinlari katta talafot ko'rib, Samarqandga chekingan", "Ikki tomon sulh tuzgan", "Arab qo'shinlari Som qal'asini egallagan"]$$::jsonb,
       1,
       $$775-yilda xalifa Mansur qo'zg'olonchilarga qarshi katta harbiy kuch yuborgan; dastlabki to'qnashuvlarda arab qo'shinlari katta talafot ko'rib, Samarqandga chekingan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalifa qo'shinlariga qarshi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- muqanna | Qo'zg'olon yakuni va xotiram
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Sadriddin Ayniy Muqanna haqida qanday asar yozgan?$$,
       $$["«Muqanna» dramasini", "«Oq kiyimlilar» romanini", "«Muqanna isyoni» tarixiy-adabiy ocherkini", "«Buxoro tarixi» kitobini"]$$::jsonb,
       2,
       $$Muqanna xotirasi adabiyotda yashaydi: Hamid Olimjon «Muqanna» dramasini, Sadriddin Ayniy esa «Muqanna isyoni» tarixiy-adabiy ocherkini yozgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qo'zg'olon yakuni va xotiram$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

-- TOTAL: 47

-- ===================== heroes_ai.sql =====================

-- narshaxiy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Abu Bakr Narshaxiy qaysi yilda tug'ilgan?$$,
       $$["869-yilda", "879-yilda", "899-yilda", "921-yilda"]$$::jsonb,
       2,
       $$Narshaxiy 899-yilda Buxoro yaqinidagi Narshax qishlog'ida tug'ilgan, «Narshaxiy» nisbasi ana shu qishloq nomidan olingan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | To'la ismim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Narshaxiyning to'la ismi saqlanib qolgan «Kitob ul-ansab» asarining muallifi kim?$$,
       $$["Sam'oniy", "Abu Nasr Ahmad al-Quboviy", "Muhammad ibn Zufar", "A. Rasulev"]$$::jsonb,
       0,
       $$Narshaxiyning to'la ismi — Abu Bakr Muhammad ibn Ja'far ibn Zakariyo ibn Xattob ibn Sharik — Sam'oniyning «Kitob ul-ansab» asarida saqlanib qolgan; unda tug'ilgan va vafot etgan yillari ham qayd etilgan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$To'la ismim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | «Buxoro tarixi» kitobim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Narshaxiyning «Buxoro tarixi» asari qanday ahamiyatga ega?$$,
       $$["O'rta Osiyodagi ilk she'riy devon", "O'rta Osiyoda mahalliy muallif tomonidan yozilib, to'liq yetib kelgan eng qadimgi tarixiy asar", "Eng qadimgi tibbiyot qomusi", "Ilk falsafiy risola"]$$::jsonb,
       1,
       $$943–944-yillarda arab tilida yozilgan «Buxoro tarixi» — O'rta Osiyoda mahalliy muallif tomonidan yozilib, bizgacha to'liq yetib kelgan eng qadimgi tarixiy asardir. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Buxoro tarixi» kitobim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | Kitobim kimga bag'ishlangan
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Narshaxiy kitobini bag'ishlagan amir Nuh ibn Nasr qaysi sulolaning hukmdori edi?$$,
       $$["Qoraxoniylar", "G'aznaviylar", "Saljuqiylar", "Somoniylar"]$$::jsonb,
       3,
       $$Narshaxiy «Buxoro tarixi» kitobini somoniy hukmdor amir Nuh ibn Nasrga bag'ishlagan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kitobim kimga bag'ishlangan$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | Kitobimning mazmuni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Narshaxiyning «Buxoro tarixi» asarida nimalar haqida hikoya qilinadi?$$,
       $$["Buxoro shahri, qishloqlari, hukmdorlari va xalq hayoti haqida", "Samarqand olimlarining tarjimai holi haqida", "Xorazm shohlari shajarasi haqida", "Marv shahri bozorlari haqida"]$$::jsonb,
       0,
       $$Asarda Buxoro shahri va qishloqlari, anhorlari, hukmdorlari, qozilari hamda xalq hayoti hikoya qilinadi; unda arablar istilosi davri va Somoniylar tarixi ham yoritilgan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kitobimning mazmuni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | Muqanna haqida yozganlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Narshaxiy kitobida tasvirlangan, Muqanna qo'zg'oloni davrida Narshax qishlog'i yonida bo'lgan jang qaysi yilda yuz bergan?$$,
       $$["706-yilda", "746-yilda", "776-yilda", "806-yilda"]$$::jsonb,
       2,
       $$Narshaxiy kitobida Muqanna boshchiligidagi «Oq kiyimlilar» qo'zg'oloni haqida batafsil ma'lumot bergan, jumladan 776-yilda Narshax qishlog'i yonida bo'lgan jangni tasvirlagan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Muqanna haqida yozganlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | Fors tiliga tarjima
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Buxoro tarixi»ni fors tiliga tarjima qilgan Abu Nasr Ahmad al-Quboviy asli qaysi shahardan bo'lgan?$$,
       $$["Buxorodan", "Quvadan", "Samarqanddan", "Marvdan"]$$::jsonb,
       1,
       $$Kitobning arabcha asl nusxasi yetib kelmagan; 1128-yilda asli Quva shahridan bo'lgan Abu Nasr Ahmad al-Quboviy uni fors tiliga tarjima qilgan va qisqartirgan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Fors tiliga tarjima$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | Keyingi tahrir
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1178–1179-yillarda «Buxoro tarixi»ning forscha tarjimasini kim qisqartirib bayon qilgan?$$,
       $$["Sam'oniy", "Abu Nasr Ahmad al-Quboviy", "A. Rasulev", "Muhammad ibn Zufar"]$$::jsonb,
       3,
       $$1178–1179-yillarda Muhammad ibn Zufar forscha tarjimani yana bir bor qisqartirib bayon qilgan; shu tariqa kitob asrlar davomida qayta ko'chirilib, avloddan avlodga o'tgan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Keyingi tahrir$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | Kitobimning nomlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri Narshaxiy kitobining boshqa nomlaridan biri?$$,
       $$["«Tahqiq ul-viloyat»", "«Kitob ul-ansab»", "«Xazoin ul-ulum»", "«Muqanna isyoni»"]$$::jsonb,
       0,
       $$Kitob turli nomlar bilan mashhur bo'lgan: «Tarixi Narshaxiy», «Tarixi Buxoro», «Tahqiq ul-viloyat» va «Axbori Buxoro»; hozirgi fanda «Buxoro tarixi» nomi qat'iy o'rnashgan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kitobimning nomlari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- narshaxiy | Jahon e'tirofi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Narshaxiyning «Buxoro tarixi» kitobi 1892-yilda qaysi shaharda nashr etilgan?$$,
       $$["Toshkentda", "Kembrijda", "Parijda", "Tehronda"]$$::jsonb,
       2,
       $$Kitob 1892-yilda Parijda nashr etilgan, 1897-yilda Toshkentda rus tilida, 1954-yilda Kembrijda ingliz tilida, 1966-yilda esa o'zbek tilida chop etilgan. Manba: Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jahon e'tirofi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

-- nodira | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Shoira Nodiraning otasi kim bo'lgan?$$,
       $$["Marg'ilon hokimi Umarxon", "Andijon hokimi Rahmonqulbiy", "Buxoro amiri Nasrullo", "Qo'qon xoni Muhammad Alixon"]$$::jsonb,
       1,
       $$Nodira 1792-yilda Andijonda tug'ilgan; uning otasi Andijon hokimi Rahmonqulbiy edi. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- nodira | Turmushim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Nodira Marg'ilon hokimi Umarxonga qachon turmushga chiqqan?$$,
       $$["1797-yilda", "1812-yilda", "1822-yilda", "1807-yilda"]$$::jsonb,
       3,
       $$Nodira 1807-yilda Marg'ilon hokimi Umarxonga turmushga chiqqan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Turmushim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- nodira | Davlatni boshqarishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1822-yilda Umarxon vafotidan so'ng taxtga kim chiqqan?$$,
       $$["Nodiraning o'g'li Muhammad Alixon", "Buxoro amiri Nasrullo", "Olloqulixon", "Rahmonqulbiy"]$$::jsonb,
       0,
       $$Umarxon vafotidan so'ng 1822-yilda Nodiraning o'g'li Muhammad Alixon taxtga chiqqan, lekin davlatni asosan Nodiraning o'zi idora qilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlatni boshqarishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- nodira | Ustozim Uvaysiy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Nodira saroyga ustoz sifatida chaqirgan Uvaysiy kim bo'lgan?$$,
       $$["Tabib", "Me'mor", "Shoira", "Tarixchi"]$$::jsonb,
       2,
       $$Nodira shoira Uvaysiy bilan tanishib, uni saroyga ustoz qilib chaqirgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ustozim Uvaysiy$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- nodira | Bunyodkorligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri Nodira qurdirgan madrasa?$$,
       $$["Mir Arab madrasasi", "Madrasai Chalpak", "Sherdor madrasasi", "Ko'kaldosh madrasasi"]$$::jsonb,
       1,
       $$Nodira bozor va rastalar, masjid va madrasalar, karvonsaroylar qurilishiga e'tibor bergan; jumladan Madrasai Chalpak va Mohlaroyim madrasasini qurdirgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Bunyodkorligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- nodira | Taxalluslarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Komila» va «Maknuna» taxalluslari bilan ham she'rlar yozgan shoira kim?$$,
       $$["Uvaysiy", "Zebunniso", "Anbar Otin", "Nodira"]$$::jsonb,
       3,
       $$Nodira she'rlarini «Nodira», «Komila» va «Maknuna» taxalluslari bilan yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Taxalluslarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- nodira | Devonim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Nodira devonidagi 180 she'rning nechtasi o'zbek tilida yozilgan?$$,
       $$["44 tasi", "96 tasi", "136 tasi", "160 tasi"]$$::jsonb,
       2,
       $$Nodira devonida «Nodira» taxallusi bilan yozilgan 180 she'r jamlangan: 136 tasi o'zbek, 44 tasi tojik tilida. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Devonim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- nodira | Shoiralarga homiylik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Nodira o'z saroyida kimlarni yangi asarlar yozishga tashviq qilgan?$$,
       $$["Shoiralarni", "Me'morlarni", "Tabiblarni", "Savdogarlarni"]$$::jsonb,
       0,
       $$Nodira saroyida shoiralarni yangi asarlar yozishga tashviq qilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Shoiralarga homiylik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- nodira | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Nodira 1842-yilda halok bo'lganida Qo'qonga bostirib kirgan Buxoro amiri kim edi?$$,
       $$["Umarxon", "Olloqulixon", "Muhammad Alixon", "Nasrullo"]$$::jsonb,
       3,
       $$1842-yilda Buxoro amiri Nasrullo Qo'qonga bostirib kirganida Nodira farzandlari bilan birga halok bo'lgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Nodira (1792–1842).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- ogahiy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ogahiy qanday oilada tug'ilgan?$$,
       $$["Miroblar oilasida", "Savdogarlar oilasida", "Hunarmandlar oilasida", "Xonlar oilasida"]$$::jsonb,
       0,
       $$Ogahiy 1809-yil 17-dekabrda Xiva yaqinidagi Qiyot qishlog'ida, miroblar oilasida tug'ilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ogahiy | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ogahiy Xiva madrasalarida qaysi tillarni o'rgangan?$$,
       $$["Faqat arab tilini", "Rus va turk tillarini", "Arab, fors va turk tillarini", "Faqat fors tilini"]$$::jsonb,
       2,
       $$Ogahiy Xiva madrasalarida o'qib, arab, fors va turk tillarini o'rgangan; Navoiy she'riyatini alohida sevib mutolaa qilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ogahiy | Miroblik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1829-yilda Ogahiyni mirob etib qaysi hukmdor tayinlagan?$$,
       $$["Umarxon", "Muhammad Alixon", "Nasrullo", "Olloqulixon"]$$::jsonb,
       3,
       $$1829-yilda tog'asi Munis vafotidan so'ng Olloqulixon Ogahiyni uning o'rniga mirob etib tayinlagan — u suv taqsimoti ishlarini boshqargan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$Miroblik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ogahiy | Jarohatim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ogahiy miroblik lavozimidan qachon iste'foga chiqqan?$$,
       $$["1845-yilda", "1857-yilda", "1865-yilda", "1829-yilda"]$$::jsonb,
       1,
       $$1845-yilda Ogahiy otdan yiqilib oyog'i mayib bo'lgan; 1857-yilda esa miroblikdan iste'foga chiqqan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$Jarohatim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ogahiy | Tarixiy asarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ogahiy 1872-yilda qaysi tarixiy asarini yozgan?$$,
       $$["«Shohidi iqbol»", "«Riyoz ud-davla»", "«Gulshani davlat»", "«Zubdat ut-tavorix»"]$$::jsonb,
       0,
       $$Ogahiy «Riyoz ud-davla» (1844), «Zubdat ut-tavorix» (1845–1846), «Jome' ul-voqeoti sultoniy» (1857), «Gulshani davlat» (1865) va «Shohidi iqbol» (1872) asarlarini yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tarixiy asarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ogahiy | Nimalarni yozganman
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ogahiy asarlarida qaysi hudud xalqlarining tarixi va madaniy hayoti bayon etilgan?$$,
       $$["Farg'ona vodiysi", "Buxoro amirligi", "Yettisuv", "Xorazm"]$$::jsonb,
       3,
       $$Ogahiy asarlarida Xorazmdagi o'zbek, turkman, qoraqalpoq va qozoq xalqlari tarixi hamda madaniy hayotini bayon qilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$Nimalarni yozganman$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ogahiy | Tog'am ishini davom ettirishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ogahiy yakunlagan «Firdavs ul-iqbol» solnomasini yozishni kim boshlagan edi?$$,
       $$["Bayoniy", "Tog'asi Munis", "Feruz", "Olloqulixon"]$$::jsonb,
       1,
       $$Ogahiy tog'asi Munisning «Firdavs ul-iqbol» solnomasi va «Ravzat us-safo» tarjimasini yakunlagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tog'am ishini davom ettirishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ogahiy | Xotiram
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ogahiyning uy-muzeyi va bog'i qayerda tashkil etilgan?$$,
       $$["Toshkentda", "Urganchda", "Qiyot qishlog'ida", "Buxoroda"]$$::jsonb,
       2,
       $$Qiyotda Ogahiyning uy-muzeyi va bog' tashkil etilgan, muzey oldida haykali o'rnatilgan; ko'chalar va maktablar uning nomi bilan atalgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xotiram$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ogahiy | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ogahiy 1874-yilning qaysi oyida vafot etgan?$$,
       $$["Yanvarda", "Martda", "Iyulda", "Dekabrda"]$$::jsonb,
       3,
       $$Ogahiy 1874-yil 14-dekabrda vafot etgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Muhammadrizo Ogahiy (1809–1874).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- oybek | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybek Toshkentning qaysi mahallasida tug'ilgan?$$,
       $$["Chorsu", "Govkush", "Sebzor", "Beshyog'och"]$$::jsonb,
       1,
       $$Oybek 1905-yil 10-yanvarda Toshkentning Govkush mahallasida tug'ilgan; asl ismi — Muso Toshmuhammadov, «Oybek» — taxallusi. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | Ijodim boshlanishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybek 1922-yilda ijodini qaysi janrdan boshlagan?$$,
       $$["She'r yozishdan", "Roman yozishdan", "Drama yozishdan", "Tarjima qilishdan"]$$::jsonb,
       0,
       $$Oybek 1922-yildan she'r yoza boshlagan va umrining oxirigacha ijod qilgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ijodim boshlanishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | She'riy to'plamlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybekning 1930-yilda chiqqan she'riy to'plami qanday nomlangan?$$,
       $$["«Tanlash»", "«Ulug' yo'l»", "«Fanga yurish»", "«Bolalik»"]$$::jsonb,
       2,
       $$Oybekning «Tuyg'ular» davri to'plamlari 1920–1930-yillarda chiqqan; «Fanga yurish» (1930) va «Tanlash» (1935) shular jumlasidan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$She'riy to'plamlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | «Qutlug' qon»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybek 1940-yilda qaysi romanini yozgan?$$,
       $$["«Navoiy»", "«Qutlug' qon»", "«Quyosh qoraymas»", "«Oltin vodiydan shabadalar»"]$$::jsonb,
       1,
       $$Oybek 1940-yilda «Qutlug' qon» romanini yozgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Qutlug' qon»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | «Navoiy» romani
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybekning 1944-yilda chiqqan yirik tarixiy romani qaysi?$$,
       $$["«Qutlug' qon»", "«Ulug' yo'l»", "«Quyosh qoraymas»", "«Navoiy»"]$$::jsonb,
       3,
       $$Oybekning «Navoiy» romani 1944-yilda chiqqan — u o'zbek adabiyotidagi eng yirik tarixiy romanlardan biri sanaladi. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Navoiy» romani$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | Boshqa romanlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybekning 1949-yilda yozilgan romani qanday nomlanadi?$$,
       $$["«Oltin vodiydan shabadalar»", "«Quyosh qoraymas»", "«Ulug' yo'l»", "«Navoiy»"]$$::jsonb,
       0,
       $$Oybek «Oltin vodiydan shabadalar» (1949), «Quyosh qoraymas» (1954) va «Ulug' yo'l» (1963) romanlarini yozgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$Boshqa romanlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | «Bolalik»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybekning o'z bolaligi hikoya qilingan «Bolalik» xotira-qissasi qachon yozilgan?$$,
       $$["1944-yilda", "1954-yilda", "1963-yilda", "1968-yilda"]$$::jsonb,
       2,
       $$Oybek 1963-yilda «Bolalik» xotira-qissasini yozgan — unda o'z bolaligi hikoya qilinadi. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Bolalik»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | Akademiklik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybek 1943-yilda qaysi tashkilotning haqiqiy a'zosi bo'lgan?$$,
       $$["Yozuvchilar uyushmasining", "O'zbekiston Fanlar akademiyasining", "Toshkent davlat universitetining", "Rassomlar uyushmasining"]$$::jsonb,
       1,
       $$Oybek 1943-yilda O'zbekiston Fanlar akademiyasining haqiqiy a'zosi bo'lgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$Akademiklik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | Tarjimalarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybek Molyerning qaysi asarini o'zbek tiliga tarjima qilgan?$$,
       $$["«Tartyuf»", "«Maskarad»", "«Yevgeniy Onegin»", "«Hamlet»"]$$::jsonb,
       0,
       $$Oybek Pushkinning «Yevgeniy Onegin», Lermontovning «Maskarad» va Molyerning «Tartyuf» asarlarini o'zbekchaga o'girgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tarjimalarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- oybek | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Oybek 1968-yilda qaysi shaharda vafot etgan?$$,
       $$["Samarqandda", "Moskvada", "Andijonda", "Toshkentda"]$$::jsonb,
       3,
       $$Oybek 1968-yil 1-iyulda Toshkentda vafot etgan. Manba: Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- ozod-sharafiddinov | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinov qaysi yilda tug'ilgan?$$,
       $$["1919-yilda", "1925-yilda", "1929-yilda", "1935-yilda"]$$::jsonb,
       2,
       $$Ozod Sharafiddinov 1929-yil 1-martda Qo'qon yaqinidagi Oxunqaynar qishlog'ida tug'ilgan. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | Ilm yo'lim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinov 1951-yilda qaysi oliy o'quv yurtini tugatgan?$$,
       $$["Toshkent pedagogika institutini", "O'rta Osiyo universitetini", "Samarqand universitetini", "Moskva universitetini"]$$::jsonb,
       1,
       $$Ozod Sharafiddinov 1951-yilda O'rta Osiyo universitetini tugatgan, 1954-yilda filologiya fanlari nomzodi bo'lgan, 1979-yilda esa professor unvonini olgan. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilm yo'lim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | Qirq yillik ustozlik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinov Toshkent davlat universitetining qaysi fakultetida qirq yil dars bergan?$$,
       $$["O'zbek filologiyasi fakultetida", "Tarix fakultetida", "Sharqshunoslik fakultetida", "Jurnalistika fakultetida"]$$::jsonb,
       0,
       $$Ozod Sharafiddinov 1955-yildan 1995-yilgacha — qirq yil davomida Toshkent davlat universitetining o'zbek filologiyasi fakultetida dotsent va professor bo'lib, talabalarga adabiyot sirlarini o'rgatgan. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$Qirq yillik ustozlik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | Ilk mashhur kitobim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinovning «Zamon. Qalb. Poeziya» kitobida nima tahlil qilingan?$$,
       $$["Tarixiy romanlar", "Xalq dostonlari", "Teatr spektakllari", "She'riyat — badiiylik mezonlari asosida"]$$::jsonb,
       3,
       $$1962-yilda chiqqan «Zamon. Qalb. Poeziya» kitobida u she'riyatni badiiylik mezonlari asosida tahlil qilgan; keyin «Adabiy etyudlar», «Birinchi mo''jiza», «Hayot bilan hamnafas» kitoblari nashr etilgan. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk mashhur kitobim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | Cho'lponni anglash
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinov 1993-yilda qaysi asarini yozgan?$$,
       $$["«Zamon. Qalb. Poeziya»", "«Cho'lponni anglash»", "«Adabiy etyudlar»", "«Birinchi mo''jiza»"]$$::jsonb,
       1,
       $$1993-yilda u «Cho'lponni anglash» asarini yozgan — qatag'on yillarida taqiqlangan shoir Cho'lpon ijodini o'rganib, uni o'quvchilarga qaytadan tanitishga hissa qo'shgan. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$Cho'lponni anglash$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | Tarjimonligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinov qanday an'anani boshlaganlardan biri sanaladi?$$,
       $$["Qadimgi qo'lyozmalarni ko'chirish an'anasini", "Tarixiy solnomalar yozish an'anasini", "O'zbek adabiyotini jahon adabiyoti bilan bog'lab o'rganish an'anasini", "Faqat mumtoz she'riyatni o'rganish an'anasini"]$$::jsonb,
       2,
       $$U Lev Tolstoy va Paulo Koelo kabi jahon adiblarining asarlarini o'zbek tiliga tarjima qilgan hamda o'zbek adabiyotini jahon adabiyoti bilan bog'lab o'rganish an'anasini boshlaganlardan biri. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tarjimonligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | «Jahon adabiyoti» jurnali
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1996–1997-yillarda Ozod Sharafiddinov qaysi jurnalda bosh muharrir o'rinbosari bo'lib ishlagan?$$,
       $$["«Tafakkur»", "«Jahon adabiyoti»", "«Sharq yulduzi»", "«Guliston»"]$$::jsonb,
       0,
       $$1996–1997-yillarda u «Tafakkur» jurnalida bosh muharrir o'rinbosari bo'lgan, 1997-yildan esa «Jahon adabiyoti» jurnaliga bosh muharrirlik qilgan. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Jahon adabiyoti» jurnali$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | Darslik muallifi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinov 1999-yilda chiqqan qaysi darslik mualliflaridan biri edi?$$,
       $$["«Adabiyot nazariyasi»", "«O'zbekiston adabiyoti tarixi»", "«Jahon tarixi»", "«O'zbek tili grammatikasi»"]$$::jsonb,
       1,
       $$U 1970-yilda Beruniy nomidagi O'zbekiston davlat mukofotini olgan va 1999-yilda chiqqan «O'zbekiston adabiyoti tarixi» darsligi mualliflaridan biri. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$Darslik muallifi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | O'zbekiston Qahramoni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinovga «O'zbekiston Qahramoni» unvoni qachon berilgan?$$,
       $$["1993-yilda", "1999-yilda", "2005-yilda", "2002-yilda"]$$::jsonb,
       3,
       $$2002-yilda Ozod Sharafiddinovga «O'zbekiston Qahramoni» unvoni berilgan — bu mehnatlariga berilgan eng yuksak baho edi. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'zbekiston Qahramoni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- ozod-sharafiddinov | Umrim yakuni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ozod Sharafiddinov 2005-yilda qaysi shaharda vafot etgan?$$,
       $$["Qo'qonda", "Samarqandda", "Toshkentda", "Andijonda"]$$::jsonb,
       2,
       $$Ozod Sharafiddinov 2005-yilda Toshkentda vafot etgan. Manba: Ziyouz.com: «Ozod Sharafiddinov (1929-2005)» sahifasi (O'zbek ziyolilari bo'limi).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrim yakuni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

-- TOTAL: 48

-- ===================== heroes_aj.sql =====================

-- saroymulkxonim | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Saroymulkxonim necha yoshida otasi Qozonxondan ayrilgan?$$,
       $$["O'n yoshida", "Uch yoshida", "Besh yoshida", "Yetti yoshida"]$$::jsonb,
       2,
       $$Saroymulkxonim 1341-yilda Chig'atoy xoni Qozonxon oilasida tug'ilgan, besh yoshida otasi halok bo'lgan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- saroymulkxonim | Temurga turmushga chiqishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Saroymulkxonim 1370-yilda kimga turmushga chiqqan?$$,
       $$["Amir Temurga", "Shohruxga", "Ulug'bekka", "Muhammad Sultonga"]$$::jsonb,
       0,
       $$1370-yilda Amir Temur Saroymulkxonimga uylangan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$Temurga turmushga chiqishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- saroymulkxonim | «Ko'ragon» unvoni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur Saroymulkxonimga uylanib olgan «Ko'ragon» unvoni qanday ma'noni anglatadi?$$,
       $$["«Xon o'g'li»", "«Xon kuyovi»", "«Buyuk sarkarda»", "«Saroy egasi»"]$$::jsonb,
       1,
       $$Saroymulkxonim xon qizi bo'lgani uchun Temur unga uylanib «Ko'ragon» — «xon kuyovi» unvonini olgan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Ko'ragon» unvoni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- saroymulkxonim | «Bibixonim» nomim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Saroymulkxonim nima tufayli xonimlar orasida «katta xonim» sanalgan?$$,
       $$["Boyligi tufayli", "Yoshi kattaligi tufayli", "Go'zalligi tufayli", "Aql-idroki tufayli"]$$::jsonb,
       3,
       $$Saroymulkxonim aql-idroki tufayli xonimlar orasida «katta xonim» sanalib, el ichida Bibixonim nomi bilan tanilgan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Bibixonim» nomim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- saroymulkxonim | Davlat ishlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Saroymulkxonim davlat ishlaridan tashqari yana qayerda ishtirok etgan?$$,
       $$["Harbiy yurishlarda", "Savdo karvonlarida", "Elchilik safarlarida", "Ilmiy bahslarda"]$$::jsonb,
       0,
       $$Saroymulkxonim davlat ishlarida qatnashgan va harbiy yurishlarda ham ishtirok etgan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlat ishlari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- saroymulkxonim | Madrasam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Saroymulkxonim madrasani qaysi shaharda qurdirgan?$$,
       $$["Buxoroda", "Hirotda", "Samarqandda", "Toshkentda"]$$::jsonb,
       2,
       $$Saroymulkxonim otasidan qolgan javohirlar evaziga Samarqandda madrasa qurdirgan va talabalar ta'limini qo'llab-quvvatlagan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$Madrasam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- saroymulkxonim | Nabiralar tarbiyasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur nabiralari — Ulug'bek, Muhammad Sulton va Xalil Sulton mirzolar tarbiyasini kimga ishongan?$$,
       $$["Shohrux Mirzoga", "Saroymulkxonimga", "Saroy vazirlariga", "Madrasa mudarrislariga"]$$::jsonb,
       1,
       $$Temur nabiralarini — Ulug'bek, Muhammad Sulton va Xalil Sulton mirzolarni tarbiyalashni Saroymulkxonimga ishongan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$Nabiralar tarbiyasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- saroymulkxonim | Bibixonim masjidi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Amir Temur Saroymulkxonim sharafiga Samarqandda qanday inshoot qurdirgan?$$,
       $$["Madrasa", "Rasadxona", "Karvonsaroy", "Ulkan jome masjidi"]$$::jsonb,
       3,
       $$Temur Saroymulkxonim sharafiga 1399–1404-yillarda Samarqandda ulkan jome masjidi qurdirgan — u O'rta Osiyodagi eng yirik obidalardan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$Bibixonim masjidi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- saroymulkxonim | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Saroymulkxonim qayerga dafn etilgan?$$,
       $$["O'z madrasasi yonidagi maqbaraga", "Bibixonim masjidi ichiga", "Go'ri Amir maqbarasiga", "Shohizinda majmuasiga"]$$::jsonb,
       0,
       $$Ibn Arabshoh rivoyatiga ko'ra, Saroymulkxonim 1408-yilda vafot etgan va madrasasi yonidagi maqbaraga dafn qilingan. Manba: Ziyouz.com — «Temuriy malikalar»: Saroy Mulk xonim (Bibixonim).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- shiroq | Kimman?
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Sak qabilasidan chiqqan oddiy cho'pon bo'lgan qadimgi qahramon kim?$$,
       $$["Spitamen", "Shiroq", "To'maris", "Alpomish"]$$::jsonb,
       1,
       $$Shiroq sak qabilasidan chiqqan oddiy cho'pon bo'lgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman?$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- shiroq | Xalqim — saklar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Shiroqning xalqi — saklar qanday xalq bo'lgan?$$,
       $$["O'troq dehqonlar", "Dengizchi savdogarlar", "Shahar hunarmandlari", "Jasur chorvadorlar"]$$::jsonb,
       3,
       $$Saklar jasur chorvadorlar bo'lgan; Behistun qoyatosh bitiklarida ular «uchi o'tkir kuloh kiyib yuruvchi» xalq deb ta'riflangan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalqim — saklar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- shiroq | Doro I yurishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Doro I saklar yurtiga o'z hukmronligining nechanchi yilida qo'shin tortgan?$$,
       $$["Birinchi yilida", "Beshinchi yilida", "Uchinchi yilida", "O'ninchi yilida"]$$::jsonb,
       2,
       $$Fors shohi Doro I o'z hukmronligining uchinchi yilida saklar yurtiga qo'shin tortgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Doro I yurishi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- shiroq | Rejam
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Rivoyatga ko'ra, Shiroq yo'l ko'rsatuvchi qiyofasida borib forslarga nimani va'da qilgan?$$,
       $$["Saklarning orqa tomoniga olib borishni", "Yashirin xazinani ko'rsatishni", "Saklar sardorini tutib berishni", "Suv manbalariga olib borishni"]$$::jsonb,
       0,
       $$Rivoyatga ko'ra, Shiroq forslar qoshiga yo'l ko'rsatuvchi qiyofasida borib, ularni saklarning orqa tomoniga olib borishni va'da qilgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Rejam$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- shiroq | Sahroga yo'l
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Shiroq dushman qo'shinini suvsiz cho'lga qanday yo'l orqali boshlab borgan?$$,
       $$["Katta karvon yo'li orqali", "Faqat o'zi biladigan so'qmoq orqali", "Daryo bo'yidagi yo'l orqali", "Tog' dovoni orqali"]$$::jsonb,
       1,
       $$Rivoyatga ko'ra, Shiroq dushman qo'shinini faqat o'zi biladigan so'qmoq orqali suvsiz cho'lu biyobonga boshlab borgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Sahroga yo'l$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- shiroq | Yetti kunlik yo'l
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Rivoyatga ko'ra, suvsiz sahroda yetti kun yo'l bosgach, forslar nimani sezib qolgan?$$,
       $$["Suv yaqinligini", "Saklar hujumga tayyorlanayotganini", "Shiroq ularni aldaganini", "Yo'l poytaxtga olib borishini"]$$::jsonb,
       2,
       $$Rivoyatga ko'ra, forslar suvsiz sahro bo'ylab yetti kun yo'l bosgandan keyingina aldanganini sezib qolgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Yetti kunlik yo'l$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- shiroq | Fidoyilik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Shiroq o'z jonini nima uchun fido qilgan?$$,
       $$["Boylik uchun", "Shon-shuhrat uchun", "Taxt uchun", "Vatani ozodligi uchun"]$$::jsonb,
       3,
       $$Shiroq vatani ozodligi uchun jonini fido qilgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Fidoyilik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- shiroq | Natija
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Doro I ning saklar ustiga yurishi nimaning natijasida muvaffaqiyatsiz tugagan?$$,
       $$["Shiroqning jasorati tufayli", "Qattiq sovuq tushgani tufayli", "Qo'shinda kasallik tarqalgani tufayli", "Saklar qal'alarining mustahkamligi tufayli"]$$::jsonb,
       0,
       $$Shiroqning jasorati tufayli Doro I ning saklar ustiga yurishi muvaffaqiyatsiz tugagan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Natija$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- shiroq | Rivoyat manbasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tarixchi Poliyen Shiroq haqidagi rivoyatni nimaga asoslanib yozib qoldirgan?$$,
       $$["Fors saroy yilnomalariga", "Saklar rivoyatlariga", "O'zi ko'rgan voqealarga", "Yunon elchilarining hisobotlariga"]$$::jsonb,
       1,
       $$Shiroq haqidagi rivoyatni milodiy II asrda yashagan tarixchi Poliyen saklar rivoyatlariga asoslanib yozib qoldirgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Rivoyat manbasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- spitamen | Kimman?
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Spitamen manbalarda qanday inson sifatida ta'riflanadi?$$,
       $$["Buxoroning mashhur savdogari", "Fors saroyining kotibi", "So'g'diyonaning iste'dodli tashkilotchisi va harbiy yo'lboshchisi", "Maroqandalik diniy kohin"]$$::jsonb,
       2,
       $$Spitamen So'g'diyonaning iste'dodli tashkilotchisi va harbiy yo'lboshchisi bo'lgan; manbalarda ismi Spitaman shaklida ham uchraydi. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman?$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | Iskandar bosqini
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Mil. avv. 329-yilda Iskandar Maqduniy qo'shinlari qaysi daryodan o'tib Movarounnahrga bostirib kirgan?$$,
       $$["Sirdaryodan", "Zarafshondan", "Murg'obdan", "Amudaryodan"]$$::jsonb,
       3,
       $$Miloddan avvalgi 329-yilda Iskandar Maqduniy qo'shinlari Amudaryodan o'tib, Movarounnahrga bostirib kirgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Iskandar bosqini$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | Maroqanda
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Maroqandani mil. avv. 329-yilda kimning qo'shinlari egallagan?$$,
       $$["Yunon-makedon qo'shinlari", "Fors qo'shinlari", "Saklar qo'shini", "Baqtriya qo'shinlari"]$$::jsonb,
       0,
       $$Mil. avv. 329-yili yunon-makedon qo'shinlari Maroqandani — hozirgi Samarqandni egallagan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Maroqanda$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | Xalqlarni birlashtirish
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bosqinchilarga qarshi qo'zg'olonda so'g'diylar, baqtriyaliklar va saklarni kim birlashtirgan?$$,
       $$["Bess", "Spitamen", "Shiroq", "To'maris"]$$::jsonb,
       1,
       $$Spitamen bosqinchilarga qarshi qo'zg'olonda so'g'diylar, baqtriyaliklar va saklarni birlashtirgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalqlarni birlashtirish$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | Qamal
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Spitamen ancha qo'shin to'plab qaysi shaharni qamal qilgan?$$,
       $$["Baqtrani", "Marvni", "Maroqandani", "Buxoroni"]$$::jsonb,
       2,
       $$Spitamen ancha qo'shin to'plab, dushman qo'lidagi Maroqandani qamal qilgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Qamal$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | Politimet jangi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Spitamen pistirma qo'yib g'alaba qozongan Politimet daryosi hozirgi qaysi daryo?$$,
       $$["Amudaryo", "Sirdaryo", "Murg'ob", "Zarafshon"]$$::jsonb,
       3,
       $$Spitamen Politimet — hozirgi Zarafshon daryosi bo'yida pistirma qo'yib, Iskandar yordamga yuborgan uch mingga yaqin jangchidan iborat qo'shinni tor-mor etgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Politimet jangi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | Uch yillik kurash
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Spitamen boshchiligidagi xalq bosqinchilarga qanday qarshilik ko'rsatgan?$$,
       $$["Uch yil davomida qattiq qarshilik ko'rsatgan", "Qarshiliksiz taslim bo'lgan", "Faqat muzokaralar olib borgan", "Qisqa muddatli tarqoq hujumlar bilan cheklangan"]$$::jsonb,
       0,
       $$Xalq Spitamen boshchiligida bosqinchilarga uch yil davomida qattiq qarshilik ko'rsatgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Uch yillik kurash$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | Sulhni rad etishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Spitamenga sulh taklif qilgan hukmdor kim edi?$$,
       $$["Doro I", "Iskandar Maqduniy", "Kir II", "Salavk"]$$::jsonb,
       1,
       $$Iskandar Spitamenga sulh taklif qilgan, ammo u vatanini dushmanga topshirishdan bosh tortgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Sulhni rad etishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | So'nggi jang
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Spitamenning so'nggi hal qiluvchi jangi mil. avv. 328-yilning qaysi faslida bo'lib o'tgan?$$,
       $$["Bahorida", "Yozida", "Kuzida", "Qishida"]$$::jsonb,
       2,
       $$Mil. avv. 328-yil kuzida kuchlar teng bo'lmagan hal qiluvchi jang bo'lib o'tgan, shundan so'ng Spitamen cho'lga chekingan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$So'nggi jang$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- spitamen | Qizim Apama
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Spitamenning qizi Apama va yunon lashkarboshisi Salavk oilasida dunyoga kelgan podsho kim?$$,
       $$["Salavk II", "Ptolemey", "Filipp", "Antiox I"]$$::jsonb,
       3,
       $$Spitamenning qizi Apama yunon lashkarboshisi Salavkka turmushga chiqqan — ulardan podsho Antiox I dunyoga kelgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com).$$
FROM fact_cards f
WHERE f.topic_uz = $$Qizim Apama$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- tamara-xonim | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tamara Xonim qaysi yilda tug'ilgan?$$,
       $$["1906-yilda", "1896-yilda", "1912-yilda", "1926-yilda"]$$::jsonb,
       0,
       $$Tamara Xonim 1906-yilda Farg'ona shahrida ishchi arman oilasida dunyoga kelgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | Ansambldagi yagona ayol
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tamara Xonim yagona ayol sifatida qatnashgan ansamblni 1920-yilda kim tashkil qilgan?$$,
       $$["Usta Olim Komilov", "Muhiddin Qoriyoqubov", "Hamza Hakimzoda Niyoziy", "Muxtor Ashrafiy"]$$::jsonb,
       1,
       $$1920-yilda xalq ashulachisi Muhiddin Qoriyoqubov tashkil qilgan ansamblda ayollardan faqat Tamara Xonim bor edi — o'sha davrda ayol kishining sahnaga chiqishi katta jasorat hisoblanardi. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ansambldagi yagona ayol$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | Birinchi Sharq qaldirg'ochi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tamara Xonimga «birinchi Sharq qaldirg'ochi» degan ta'rif qachon berilgan?$$,
       $$["1918-yilda", "1935-yilda", "1924-yilda", "1930-yilda"]$$::jsonb,
       2,
       $$Yoshligidan musiqali drama spektakllarida artist, qo'shiqchi va raqqosa bo'lib qatnashgan Tamara Xonimga 1924-yildayoq «birinchi Sharq qaldirg'ochi» degan ta'rif berilgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Birinchi Sharq qaldirg'ochi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | Ustozim bilan darslik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tamara Xonim 120 usuldan tashkil topgan oyoq-qo'l harakatlari darsligini kim bilan birga yaratgan?$$,
       $$["Muhiddin Qoriyoqubov bilan", "Mukarrama Turg'unboyeva bilan", "Muxtor Ashrafiy bilan", "Ustozi Usta Olim Komilov bilan"]$$::jsonb,
       3,
       $$Tamara Xonim ustozi Usta Olim Komilov bilan 1927–1928-yillarda 120 usuldan tashkil topgan oyoq-qo'l harakatlari darsligini yaratgan — bu o'zbek raqsini o'rgatishda muhim qadam bo'lgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ustozim bilan darslik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | Teatrda raqs truppasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1929-yilda tashkil etilgan davlat o'zbek musiqiy teatrida Tamara Xonim nimani boshqargan?$$,
       $$["Raqs truppasini", "Xor jamoasini", "Orkestrni", "Teatr kutubxonasini"]$$::jsonb,
       0,
       $$1929-yilda tashkil etilgan davlat o'zbek musiqiy teatrida raqs truppasini Tamara Xonim boshqargan; bu teatr keyinchalik Alisher Navoiy nomidagi katta teatrga aylangan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Teatrda raqs truppasi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | Londonda oltin medal
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tamara Xonim oltin medal olgan 1935-yilgi birinchi xalqaro raqs va musiqa san'ati festivali qaysi shaharda o'tgan?$$,
       $$["Parijda", "Londonda", "Moskvada", "Berlinda"]$$::jsonb,
       1,
       $$1935-yilda Londonda o'tgan birinchi xalqaro raqs va musiqa san'ati festivalida Tamara Xonim Usta Olim Komilov bilan birga o'zbek san'atini namoyish etib, oltin medalga sazovor bo'lgan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Londonda oltin medal$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | Urush yillarida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ikkinchi jahon urushi yillarida Tamara Xonim ham safida bo'lgan o'zbek san'atkorlari frontlarda qancha konsert bergan?$$,
       $$["5 mingga yaqin", "10 mingdan ortiq", "35 mingdan ortiq", "100 mingdan ortiq"]$$::jsonb,
       2,
       $$Urush yillarida Tamara Xonim frontdagi konsert brigadalarida qatnashgan; o'zbek san'atkorlari jangchilarga ruhiy madad berib, frontlarda 35 mingdan ortiq konsert bergan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Urush yillarida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | 86 millat qo'shig'i
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tamara Xonim qaysi mamlakatlarda o'zbek san'atini targ'ib qilib, u yerlardan qo'shiq va raqslar to'plagan?$$,
       $$["AQSH va Kanadada", "Fransiya va Italiyada", "Xitoy va Yaponiyada", "Hindiston, Afg'oniston, Indoneziya va Pokistonda"]$$::jsonb,
       3,
       $$Tamara Xonim Hindiston, Afg'oniston, Indoneziya va Pokiston kabi mamlakatlarda o'zbek san'atini targ'ib qilgan; ijodiy xazinasi jahondagi 86 millatning qo'shiq va raqslari bilan boyigan. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$86 millat qo'shig'i$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | Uy-muzeyim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tamara Xonimning xotira muzeyi qaysi shaharda joylashgan?$$,
       $$["Toshkentda", "Farg'onada", "Samarqandda", "Londonda"]$$::jsonb,
       0,
       $$Tamara Xonimning Toshkentdagi uyida 1994-yilda xotira muzeyi tashkil etilgan — u yerda sahna liboslari, mukofotlari, suratlar va unga yozilgan maktublar saqlanadi. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Uy-muzeyim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tamara-xonim | Xotiram
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Tamara Xonim qaysi yilda vafot etgan?$$,
       $$["1983-yilda", "1991-yilda", "1996-yilda", "2004-yilda"]$$::jsonb,
       1,
       $$Tamara Xonim 1991-yilda vafot etgan; 2026-yilda tavalludining 120 yilligi Alisher Navoiy nomidagi teatrda katta konsert bilan nishonlandi. Manba: «Raqs» darsligi (R.Dosmetova, N.Abraykulova, Ziyouz kutubxonasi); gabt.uz, meros.uz, UZA.uz.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xotiram$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- tomaris | Kimman?
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Massagetlar malikasi To'maris qaysi zaminda yashagan?$$,
       $$["Eron zaminida", "Hind zaminida", "Turon zaminida", "Rum zaminida"]$$::jsonb,
       2,
       $$To'maris — qadimgi massagetlar xalqining malikasi, miloddan avvalgi VI asrda Turon zaminida yashagan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman?$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- tomaris | Xalqim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$To'marisning xalqi — massagetlar qanday turmush tarzida yashagan?$$,
       $$["Erkin ko'chmanchi xalq bo'lgan", "O'troq dehqonchilik bilan shug'ullangan", "Dengiz savdosi bilan yashagan", "Shahar hunarmandchiligi bilan mashhur bo'lgan"]$$::jsonb,
       0,
       $$Massagetlar Amudaryo bo'ylari va Qizilqum sahrolarida yashagan erkin ko'chmanchi xalq bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalqim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- tomaris | Malika bo'lishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Rivoyatga ko'ra, To'maris qachondan boshlab xalqiga o'zi boshchilik qila boshlagan?$$,
       $$["Otasi taxtdan voz kechganidan keyin", "Turmush o'rtog'i vafotidan keyin", "Xalq yig'ini qaroridan keyin", "Kir II bosqinidan keyin"]$$::jsonb,
       1,
       $$Rivoyatga ko'ra, turmush o'rtog'i vafotidan keyin To'maris xalqiga o'zi boshchilik qila boshlagan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Malika bo'lishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- tomaris | Kir II bosqini
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Fors shohi Kir II mil. avv. 530-yilda qaysi xalq ustiga yurish qilgan?$$,
       $$["Saklar ustiga", "So'g'diylar ustiga", "Massagetlar ustiga", "Baqtriyaliklar ustiga"]$$::jsonb,
       2,
       $$Miloddan avvalgi 530-yilda fors shohi Kir II ulkan lashkar bilan massagetlar ustiga yurish qilgan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Kir II bosqini$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- tomaris | Tinchlik taklifim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Rivoyatga ko'ra, Kir II To'marisning tinch-omon ortga qaytish taklifiga qanday javob bergan?$$,
       $$["Taklifni qabul qilgan", "Muzokaraga elchi yuborgan", "Javob bermay ortga qaytgan", "Taklifni rad etgan"]$$::jsonb,
       3,
       $$Rivoyatga ko'ra, To'maris Kir II ga urushsiz, tinch-omon ortiga qaytib ketishni taklif qilgan, ammo shoh bu taklifni rad etgan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tinchlik taklifim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- tomaris | Gerodot guvohligi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$To'maris haqidagi voqealarni yozib qoldirgan Gerodot qaysi xalqning tarixchisi edi?$$,
       $$["Fors", "Qadimgi yunon", "Rim", "Misr"]$$::jsonb,
       1,
       $$To'maris haqidagi voqealarni «tarix otasi» deb atalgan qadimgi yunon tarixchisi Gerodot yozib qoldirgan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Gerodot guvohligi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- tomaris | Buyuk jang
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Gerodot To'maris xalqi bilan forslar o'rtasidagi jangni qanday ta'riflagan?$$,
       $$["«Barcha janglardan ham dahshatliroq» deb", "«Eng qisqa jang» deb", "«Ikki tomon uchun teng jang» deb", "«Kichik chegara to'qnashuvi» deb"]$$::jsonb,
       0,
       $$Gerodot bu jangni «barcha janglardan ham dahshatliroq» deb ta'riflagan — uzoq davom etgan jangda massagetlarning qo'li baland kelgan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Buyuk jang$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- tomaris | Bosqin yakuni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Massagetlar yurtiga bostirib kirgan Kir II ning taqdiri qanday yakun topgan?$$,
       $$["O'z yurtiga qaytib ketgan", "Asirga tushgan", "Massagetlar bilan sulh tuzgan", "Jang maydonida halok bo'lgan"]$$::jsonb,
       3,
       $$Bosqinchi shoh Kir II o'sha jang maydonida halok bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Bosqin yakuni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- tomaris | Xotiram
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bugungi kunda nomi vatan himoyasi va jasorat ramziga aylangan qadimgi malika kim?$$,
       $$["Saroymulkxonim", "Tamara Xonim", "To'maris", "Nodirabegim"]$$::jsonb,
       2,
       $$Bugun To'marisning nomi vatan himoyasi va jasorat ramziga aylangan. Manba: O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xotiram$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- TOTAL: 47

-- ===================== heroes_ak.sql =====================

-- ubaydulla-xojayev | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayev qanday oilada tug'ilgan?$$,
       $$["Savdogar oilasida", "Hunarmand oilasida", "Bog'bon oilasida", "Mudarris oilasida"]$$::jsonb,
       2,
       $$Ubaydulla Xo'jayev 1878-yilda Toshkentda, bog'bon oilasida tug'ilgan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayev huquq ilmini o'rganishdan avval qaysi maktabni tugatgan?$$,
       $$["Rus-tuzem maktabini", "Eski usul madrasasini", "Harbiy bilim yurtini", "Gimnaziyani"]$$::jsonb,
       0,
       $$Ubaydulla Xo'jayev rus-tuzem maktabini tugatib, huquq ilmini Saratovda o'rgangan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | Advokatlik imtihoni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayev 1912-yilda advokatlik imtihonini qayerda topshirgan?$$,
       $$["Toshkent okrug sudida", "Saratov okrug sudida", "Moskva okrug sudida", "Orenburg okrug sudida"]$$::jsonb,
       1,
       $$Ubaydulla Xo'jayev 1912-yilda Saratov okrug sudida advokatlik imtihonini topshirgan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$Advokatlik imtihoni$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | Xalqqa xizmat
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayev qaysi yili Toshkentga qaytib, advokat sifatida xalqqa xizmat qila boshlagan?$$,
       $$["1905-yilda", "1908-yilda", "1916-yilda", "1913-yilda"]$$::jsonb,
       3,
       $$Ubaydulla Xo'jayev 1913-yilda Toshkentga qaytib, advokat sifatida xalqqa xizmat qilgan — ilk o'zbek advokatlaridan bo'lgan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalqqa xizmat$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | «Sadoi Turkiston»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayevning «Sadoi Turkiston» gazetasi 1914-yilning qaysi oyida chiqa boshlagan?$$,
       $$["Yanvarda", "Aprelda", "Iyulda", "Oktabrda"]$$::jsonb,
       1,
       $$Ubaydulla Xo'jayev safdoshlari bilan «Sadoi Turkiston» gazetasini 1914-yil aprelda chiqara boshlagan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Sadoi Turkiston»$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | Gazeta xarajati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayev chiqargan «Sadoi Turkiston» gazetasi qaysi yili yopilgan?$$,
       $$["1913-yilda", "1917-yilda", "1915-yilda", "1920-yilda"]$$::jsonb,
       2,
       $$Gazetaning har bir soni zarar bilan chiqqan, xarajatni Xo'jayev o'z zimmasiga olib turgan; 1915-yilda gazeta yopilgan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$Gazeta xarajati$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | Gazetadagi qalamkashlar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayevning «Sadoi Turkiston» gazetasida qaysi yosh ijodkorning ilk mashqlari bosilgan?$$,
       $$["Cho'lponning", "Oybekning", "G'afur G'ulomning", "Hamid Olimjonning"]$$::jsonb,
       0,
       $$Gazeta sahifalarida Abdulla Avloniy va boshqa ma'rifatparvarlar qatnashgan, yosh Cho'lponning ilk mashqlari bosilgan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$Gazetadagi qalamkashlar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | 1917-yil
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1917-yilda Ubaydulla Xo'jayev qaysi shahardagi «Sho'royi islom» jamiyatiga rais etib saylangan?$$,
       $$["Qo'qondagi", "Samarqanddagi", "Andijondagi", "Toshkentdagi"]$$::jsonb,
       3,
       $$Ubaydulla Xo'jayev 1917-yilda Toshkent «Sho'royi islom» jamiyatiga rais etib saylangan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$1917-yil$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | Muxtoriyat
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayev qaysi tarixiy tuzilma ishlarida qatnashgan?$$,
       $$["Turkiston muxtoriyati", "Buxoro amirligi devoni", "Xiva xonligi saroyi", "Orenburg general-gubernatorligi"]$$::jsonb,
       0,
       $$Ubaydulla Xo'jayev Turkiston muxtoriyati ishlarida qatnashgan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$Muxtoriyat$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- ubaydulla-xojayev | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ubaydulla Xo'jayev qaysi yili qamoqqa olingan?$$,
       $$["1930-yilda", "1934-yilda", "1938-yilda", "1941-yilda"]$$::jsonb,
       2,
       $$Ubaydulla Xo'jayev 1938-yilda qamoqqa olingan va 1939-yilda surgunda vafot etgan. Manba: Jadid.uz — Ubaydullaxo'ja Asadullaxo'jayev (1878–1939).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

-- uvaysiy | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1779-yilda Marg'ilonda tug'ilgan, asl ismi Jahon bo'lgan shoira qaysi taxallus bilan mashhur?$$,
       $$["Nodira", "Uvaysiy", "Dilshod otin", "Anbar otin"]$$::jsonb,
       1,
       $$Uvaysiy 1779-yilda Marg'ilonda tug'ilgan, asl ismi Jahon bo'lgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- uvaysiy | Ustozim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Uvaysiyga she'riyat ilmini o'rgatgan Oxunjon hofiz uning kimi edi?$$,
       $$["Otasi", "Amakisi", "Bobosi", "Akasi"]$$::jsonb,
       3,
       $$Uvaysiy she'riyat ilmini akasi Oxunjon hofizdan o'rgangan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ustozim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- uvaysiy | Maktabdorligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Uvaysiy avval xalfa bo'lib, so'ngra kimning yonida maktabdorlik qilgan?$$,
       $$["Onasining yonida", "Otasining yonida", "Akasining yonida", "Nodiraning yonida"]$$::jsonb,
       0,
       $$Uvaysiy oilada savod chiqarib, avval xalfa, so'ng onasi yonida maktabdorlik qilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Maktabdorligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- uvaysiy | Saroyda ustozligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Uvaysiy qaysi saroyda xotin-qizlarga she'riyatdan dars bergan?$$,
       $$["Xiva saroyida", "Buxoro saroyida", "Qo'qon saroyida", "Samarqand saroyida"]$$::jsonb,
       2,
       $$Uvaysiy Qo'qon saroyida Nodira va boshqa xotin-qizlarga she'riyatdan dars berib, ustozlik qilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Saroyda ustozligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- uvaysiy | Chistonlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Uvaysiy yozgan she'riy topishmoqlar qanday nom bilan ataladi?$$,
       $$["Muxammas", "Chiston", "Musaddas", "G'azal"]$$::jsonb,
       1,
       $$Uvaysiy she'riy topishmoq — chistonlar yozgan; mashhur chistoni: «Ul na gumbazdur: eshigi, tuynugidin yo'q nishon». Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Chistonlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- uvaysiy | Ijodim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Uvaysiy nechta muxammas yozgan?$$,
       $$["29 ta", "55 ta", "96 ta", "269 ta"]$$::jsonb,
       0,
       $$Uvaysiy 269 g'azal, 29 muxammas, 55 musaddas va uchta doston yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ijodim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- uvaysiy | Dostonlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Uvaysiyning «Shahzoda Hasan» va «Shahzoda Husan» asarlari qaysi janrda yozilgan?$$,
       $$["G'azal", "Chiston", "Muxammas", "Doston"]$$::jsonb,
       3,
       $$Uvaysiy «Shahzoda Hasan» va «Shahzoda Husan» dostonlarini hamda tarixiy doston yaratgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Dostonlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- uvaysiy | Safarlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Uvaysiyning Konibodom va Xo'jand shaharlarida bo'lgani kimning ma'lumotidan bilinadi?$$,
       $$["Nodiraning", "Oxunjon hofizning", "Dilshod otinning", "Anbar otinning"]$$::jsonb,
       2,
       $$Dilshod otin ma'lumotiga ko'ra, Uvaysiy Konibodom, Xo'jand va boshqa shaharlarda bo'lgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Safarlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- uvaysiy | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Uvaysiy qaysi yili vafot etgan?$$,
       $$["1825-yilda", "1845-yilda", "1858-yilda", "1836-yilda"]$$::jsonb,
       1,
       $$1842-yilda Qo'qon egallangach, Uvaysiy Marg'ilonga qaytib, umrining oxirigacha shu yerda yashagan va 1845-yilda vafot etgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti»: Jahonotin Uvaysiy (1779–1845).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

-- zardusht | Kimman?
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zardushtiylik dinining asoschisi kim?$$,
       $$["Gerodot", "Poliyen", "Aristotel", "Zardusht"]$$::jsonb,
       3,
       $$Zardusht — zardushtiylik dinining asoschisi; ismi turli tillarda Zaratushtra va Zoroastr shakllarida ham aytiladi. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Kimman?$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | Yashagan davrim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zardusht qaysi davrda yashab o'tgan?$$,
       $$["Miloddan avvalgi 1-ming yillikning birinchi yarmida", "Miloddan avvalgi 3-ming yillikda", "Milodiy V asrda", "Milodiy X asrda"]$$::jsonb,
       0,
       $$Zardusht miloddan avvalgi 1-ming yillikning birinchi yarmida yashab o'tgan tarixiy shaxs. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Yashagan davrim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | Xorazm bilan bog'liqlik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Ko'plab olimlar fikricha, «Avesto»ning qaysi qismlari Xorazm vohasida vujudga kelgan?$$,
       $$["Eng so'nggi qismlari", "Faqat duolar qismi", "Eng qadimgi qismlari", "Tarjima qilingan qismlari"]$$::jsonb,
       2,
       $$Ko'plab olimlar «Avesto»ning eng qadimgi qismlari Xorazm vohasida vujudga kelgan deb hisoblaydi. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xorazm bilan bog'liqlik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | Payg'ambarlik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zardusht tarixiga oid manbalarda «payg'ambar» so'zi qanday ma'noni anglatadi?$$,
       $$["«Qat'iy belgilangan qonun-qoidalar»", "«Ezgu amallar haqida xabar beruvchi»", "«Muqaddas olov posboni»", "«Yulduzlarni kuzatuvchi donishmand»"]$$::jsonb,
       1,
       $$Rivoyatga ko'ra, Zardusht 30 yoshida yangi diniy ta'limot payg'ambariga aylangan; «payg'ambar» so'zi «ezgu amallar haqida xabar beruvchi» degan ma'noni anglatadi. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Payg'ambarlik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | Bosh qoida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zardusht ta'limotining bosh qoidasi nechta tushunchadan iborat?$$,
       $$["Beshta", "Ikkita", "To'rtta", "Uchta"]$$::jsonb,
       3,
       $$Zardusht ta'limotining bosh qoidasi uchta: ezgu fikr, ezgu so'z va ezgu amal. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Bosh qoida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | Muqaddas unsurlar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Quyidagilardan qaysi biri zardushtiylik dinida muqaddas sanalgan?$$,
       $$["Suv", "Oltin", "Kumush", "Temir"]$$::jsonb,
       0,
       $$Zardushtiylik dinida olov, suv, tuproq va havo muqaddas sanalgan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Muqaddas unsurlar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | «Avesto» kitobi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$«Avesto» kitobiga Zardusht vafotidan keyin nimalar jamlangan?$$,
       $$["Saroy yilnomalari", "Savdo shartnomalari", "Va'zlari, madhiyalar va duolar", "Yulduz jadvallari"]$$::jsonb,
       2,
       $$Zardusht vafotidan keyin uning va'zlari, madhiyalar va duolar «Avesto» kitobiga jamlangan; bu nom «qat'iy belgilangan qonun-qoidalar» degan ma'noni anglatadi. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Avesto» kitobi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | «Avesto» tarixi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Keyinchalik «Avesto»ning barcha matnlari nechta kitobga jamlangan?$$,
       $$["12 ta", "21 ta", "30 ta", "40 ta"]$$::jsonb,
       1,
       $$«Avesto»ning ilk qismi miloddan avvalgi IX–VIII asrlarda paydo bo'lgan, keyinchalik barcha matnlar 21 ta kitobga jamlangan. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$«Avesto» tarixi$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | Yunonlar nazarida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Yunonlar Zardushtni birinchi galda kim sifatida bilishgan?$$,
       $$["Sarkarda sifatida", "Savdogar sifatida", "Shoir sifatida", "Donishmand va munajjim sifatida"]$$::jsonb,
       3,
       $$Yunonlar Zardushtni birinchi galda donishmand va munajjim sifatida bilishgan, shu bois ismini «Zoroastr» deb ataganlar. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Yunonlar nazarida$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zardusht | Navro'z ildizlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Navro'z bayramining ildizlari qaysi davrga borib taqaladi?$$,
       $$["Zardusht yashagan qadimgi davrga", "Xonliklar davriga", "Jadidlar davriga", "XX asrga"]$$::jsonb,
       0,
       $$Navro'z bayramining ildizlari Zardusht yashagan qadimgi davrga borib taqaladi. Manba: O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017).$$
FROM fact_cards f
WHERE f.topic_uz = $$Navro'z ildizlari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- zebo-ganiyeva | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$1937-yilgi qatag'on yillarida Zebo G'aniyevaning oilasida kim jabr ko'rgan?$$,
       $$["Otasi", "Onasi", "Akasi", "Bobosi"]$$::jsonb,
       1,
       $$Zebo G'aniyeva 1923-yilda tug'ilgan; bolaligi og'ir davrga to'g'ri kelib, 1937-yilgi qatag'on yillarida onasi jabr ko'rgan. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zebo-ganiyeva | Raqsga oshiqligim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zebo G'aniyeva 1937-yilda o'qishga kirgan xoreografiya bo'limi qaysi tashkilot qoshida edi?$$,
       $$["Opera va balet teatri qoshida", "Konservatoriya qoshida", "O'zbek davlat filarmoniyasi qoshida", "Kino studiyasi qoshida"]$$::jsonb,
       2,
       $$Zebo G'aniyeva 1937-yilda Toshkentga kelib, O'zbek davlat filarmoniyasi qoshidagi xoreografiya bo'limiga o'qishga kirgan — orzusi sahna edi. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Raqsga oshiqligim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zebo-ganiyeva | Moskvada aktyorlik
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zebo G'aniyeva 1940-yilda Moskvada qaysi o'quv yurtiga o'qishga kirgan?$$,
       $$["Harbiy akademiyaga", "Tibbiyot institutiga", "Universitetning tarix fakultetiga", "Davlat san'at oliy o'quv yurtiga"]$$::jsonb,
       3,
       $$Zebo G'aniyeva 1940-yilda Moskvadagi davlat san'at oliy o'quv yurtining aktyorlik fakultetiga o'qishga kirgan. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Moskvada aktyorlik$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zebo-ganiyeva | Frontga ko'ngilli
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Urush boshlanganida Zebo G'aniyeva ko'ngillilar safiga qanday qo'shilgan?$$,
       $$["Birinchilardan bo'lib", "Urushning so'nggi yilida", "Uzoq ikkilanishdan so'ng", "Chaqiruv kelgandan keyingina"]$$::jsonb,
       0,
       $$Urush boshlanganida Zebo G'aniyeva birinchilardan bo'lib, ko'ngillilar safida frontga jo'nagan. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Frontga ko'ngilli$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zebo-ganiyeva | Mohir mergan
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Frontda Zebo G'aniyeva qaysi ishda barchaga namuna bo'lgan?$$,
       $$["Harbiy texnikani ta'mirlashda", "Dala oshxonasini boshqarishda", "Dushman pozitsiyasi haqidagi ma'lumotlarni o'z vaqtida yetkazishda", "Harbiy gazeta chiqarishda"]$$::jsonb,
       2,
       $$Zebo G'aniyeva polkda mohir mergan, epchil aloqachi va zehni o'tkir razvedkachi sifatida nom qozonib, dushman pozitsiyasi haqidagi ma'lumotlarni o'z vaqtida yetkazishda barchaga namuna bo'lgan. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mohir mergan$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zebo-ganiyeva | Yaralanishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zebo G'aniyeva nima sababdan qariyb bir yil davolangan?$$,
       $$["Frontda qattiq shamollagani uchun", "Jangda og'ir yaralangani uchun", "Mashg'ulotda oyog'i lat yegani uchun", "Yurak xastaligi tufayli"]$$::jsonb,
       1,
       $$Zebo G'aniyeva jangda og'ir yaralangan va qariyb bir yil davolanib, shifo topgan. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yaralanishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zebo-ganiyeva | Kinoda malika roli
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zebo G'aniyeva rol o'ynagan «Tohir va Zuhra» filmining rejissyori kim?$$,
       $$["Hamid Olimjon", "Oybek", "G'afur G'ulom", "Nabi G'aniyev"]$$::jsonb,
       3,
       $$Urushdan so'ng Zebo G'aniyeva atoqli o'zbek rejissyori Nabi G'aniyevning «Tohir va Zuhra» badiiy filmida Xorazm malikasi rolini ijro etgan. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kinoda malika roli$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zebo-ganiyeva | Olimalik yo'lim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zebo G'aniyevaning urushdan keyingi hayot yo'li qanday ta'riflanadi?$$,
       $$["Jang maydonidan ilm maydoniga qaytdi", "Sahnadan savdo ishiga o'tdi", "Ilm maydonidan harbiy xizmatga qaytdi", "Qishloq xo'jaligida ishladi"]$$::jsonb,
       0,
       $$Keyinchalik Zebo G'aniyeva tarixchi va sharqshunos olima sifatida faoliyat ko'rsatgan — jang maydonidan ilm maydoniga qaytgan. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Olimalik yo'lim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zebo-ganiyeva | Jonli afsona
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Bugungi kunda yoshlar uchun Zebo G'aniyeva xotirasiga nimalar o'tkaziladi?$$,
       $$["Sport musobaqalari", "Ma'naviy-ma'rifiy tadbirlar va hujjatli film namoyishlari", "Rasm ko'rgazmalari", "Musiqa festivallari"]$$::jsonb,
       1,
       $$Zebo G'aniyevani hayotligidayoq «jonli afsona» deb atashgan; bugun ham yoshlar uchun u haqida ma'naviy-ma'rifiy tadbirlar va hujjatli film namoyishlari o'tkaziladi. Manba: UZA.uz: «Zebo G'aniyeva – sahna va jang maydoni qahramoni» maqolasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jonli afsona$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

-- zulfiya | Tug'ilishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiya qanday oilada tug'ilgan?$$,
       $$["Bog'bon oilasida", "Savdogar oilasida", "Hunarmand oilasida", "Dehqon oilasida"]$$::jsonb,
       2,
       $$Zulfiya 1915-yil 1-martda Toshkentda, hunarmand oilasida tug'ilgan; to'liq ismi — Zulfiya Isroilova. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tug'ilishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | O'qishim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiya ilk she'r mashqlarini qayerda boshlagan?$$,
       $$["Teatr studiyasida", "Musiqa maktabida", "Rassomlik to'garagida", "Adabiyot to'garagida"]$$::jsonb,
       3,
       $$Zulfiya 1931–1934-yillarda xotin-qizlar bilim yurtida o'qib, she'r mashqlarini adabiyot to'garagida boshlagan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$O'qishim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | Ilmiy yo'lim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiya 1935–1938-yillarda qayerda tahsil olgan?$$,
       $$["Fanlar akademiyasining Til va adabiyot institutida", "Xotin-qizlar bilim yurtida", "Moskvadagi adabiyot institutida", "Tarix institutida"]$$::jsonb,
       0,
       $$Zulfiya 1935–1938-yillarda Fanlar akademiyasining Til va adabiyot institutida tahsil olgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilmiy yo'lim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | Ilk kitobim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiyaning «Hayot varaqlari» nomli birinchi she'riy to'plami qaysi yili chiqqan?$$,
       $$["1928-yilda", "1932-yilda", "1938-yilda", "1944-yilda"]$$::jsonb,
       1,
       $$Zulfiyaning «Hayot varaqlari» nomli birinchi she'riy to'plami 1932-yilda chiqqan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk kitobim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | Kitoblarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiyaning 1944-yilda nashr etilgan to'plami qaysi?$$,
       $$["«Qizlar qo'shig'i»", "«Tong qo'shig'i»", "«Hijron kunlarida»", "«Kuylarim sizga»"]$$::jsonb,
       2,
       $$Zulfiyaning «Qizlar qo'shig'i» (1938), «Hijron kunlarida» (1944), «Tong qo'shig'i» (1953) va «Kuylarim sizga» (1965) to'plamlari nashr etilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Kitoblarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | Opera librettolari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiya Hamid Olimjon dostonlari asosida nimalar yaratgan?$$,
       $$["Kinossenariylarni", "Drama pyesalarini", "Doston tarjimalarini", "Opera librettolarini"]$$::jsonb,
       3,
       $$Zulfiya Hamid Olimjon dostonlari asosida opera librettolarini yaratgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Opera librettolari$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | Dehli anjumani
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiyaning Dehli safari ta'sirida qaysi asari tug'ilgan?$$,
       $$["«Mushoira»", "«Hayot varaqlari»", "«Tong qo'shig'i»", "«Qizlar qo'shig'i»"]$$::jsonb,
       0,
       $$Zulfiya 1956-yilda Dehlidagi Osiyo-Afrika yozuvchilari anjumanida qatnashgan; shu safar ta'sirida «Mushoira» (1958) asari tug'ilgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Dehli anjumani$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | Xalqaro mukofotlarim
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Javaharlal Neru xalqaro mukofoti Zulfiyaga nima uchun berilgan?$$,
       $$["Opera librettolari uchun", "Hindiston mavzusidagi she'rlari uchun", "Tarjimalari uchun", "Dostonlari uchun"]$$::jsonb,
       1,
       $$Zulfiya Hindiston mavzusidagi she'rlari uchun Javaharlal Neru xalqaro mukofotini, tinchlik uchun «Nilufar» mukofotini olgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Xalqaro mukofotlarim$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | Tarjimalar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiyaning she'rlari qaysi tillarga tarjima qilingan?$$,
       $$["Faqat rus tiliga", "Faqat fors va arab tillariga", "Rus, ingliz, hind, arab va boshqa ko'plab tillarga", "Faqat turkiy tillarga"]$$::jsonb,
       2,
       $$Zulfiya she'rlari rus, ingliz, nemis, hind, bolgar, xitoy, arab va fors tillariga tarjima qilingan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Tarjimalar$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- zulfiya | Umrimning oxiri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT f.hero_id, NULL, f.id,
       $$Zulfiya necha yoshida vafot etgan?$$,
       $$["66 yoshida", "74 yoshida", "90 yoshida", "81 yoshida"]$$::jsonb,
       3,
       $$Zulfiya 1996-yil 1-avgustda 81 yoshida vafot etgan. Manba: Ziyouz.com — «O'zbek ziyolilari»: Zulfiya (1915–1996).$$
FROM fact_cards f
WHERE f.topic_uz = $$Umrimning oxiri$$
  AND f.hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- TOTAL: 48

-- ===================== eras_aa.sql =====================

-- era:qadimgi | Eng qadimgi manzilgohlar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qariyb bir million yil avval qadimgi odamlar yashagan Selung'ur g'ori qayerda joylashgan?$$,
       $$["Farg'ona vodiysida", "Surxondaryoda", "Xorazm vohasida", "Zarafshon vodiysida"]$$::jsonb,
       0,
       $$Farg'ona vodiysidagi Selung'ur g'orida qariyb bir million yil avval qadimgi odamlar yashagan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Eng qadimgi manzilgohlar$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Eng qadimgi manzilgohlar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Neandertal bolasining qoldiqlari topilgan Teshiktosh g'ori qaysi viloyat hududida joylashgan?$$,
       $$["Farg'onada", "Xorazmda", "Surxondaryoda", "Toshkentda"]$$::jsonb,
       2,
       $$Surxondaryodagi Teshiktosh g'oridan neandertal bolasining qoldiqlari topilgan — bu kashfiyot butun dunyoga mashhur bo'lgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Eng qadimgi manzilgohlar$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | «Avesto»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$«Avesto»ning 2700 yilligi qachon keng nishonlangan?$$,
       $$["1991-yilda", "2001-yilda", "2010-yilda", "1996-yilda"]$$::jsonb,
       1,
       $$2001-yilda «Avesto»ning 2700 yilligi keng nishonlangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Avesto»$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | «Avesto»
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$«Avesto» kitobi bundan qariyb necha yil avval yaratila boshlagan?$$,
       $$["Qariyb 1000 yil avval", "Qariyb 1500 yil avval", "Qariyb 5000 yil avval", "Qariyb 2700 yil avval"]$$::jsonb,
       3,
       $$«Avesto» — zardushtiylik dinining muqaddas kitobi, u bundan qariyb 2700 yil avval yaratila boshlagan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$«Avesto»$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Ilk davlatlar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qadimgi So'g'diyona davlati qayerda joylashgan?$$,
       $$["Farg'ona vodiysida", "Amudaryoning quyi oqimida", "Zarafshon vodiysida", "Sirdaryoning o'rta oqimida"]$$::jsonb,
       2,
       $$So'g'diyona Zarafshon vodiysida, Baqtriya Amudaryoning yuqori oqimida, Xorazm esa Amudaryoning quyi oqimida joylashgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk davlatlar$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Ilk davlatlar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Hududimizdagi eng qadimgi davlatlar — Katta Xorazm, Baqtriya va So'g'diyona qachon vujudga kelgan?$$,
       $$["Mil. avv. I ming yillikda", "Mil. avv. III ming yillikda", "Milodiy I asrda", "Milodiy V asrda"]$$::jsonb,
       0,
       $$Katta Xorazm, Baqtriya va So'g'diyona davlatlari mil. avv. I ming yillikda vujudga kelgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ilk davlatlar$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | To'maris jasorati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Fors shohi Kir II massagetlar yurtiga qaysi asrda bostirib kirgan?$$,
       $$["Milodiy I asrda", "Mil. avv. IV asrda", "Mil. avv. VIII asrda", "Mil. avv. VI asrda"]$$::jsonb,
       3,
       $$Mil. avv. VI asrda fors shohi Kir II massagetlar yurtiga bostirib kirgan va To'maris boshchiligidagi jangchilar bosqinchilarni tor-mor etgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$To'maris jasorati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | To'maris jasorati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Massagetlar malikasi To'marisning nomi xalqimiz tarixida qanday ramzga aylangan?$$,
       $$["Savdo-sotiq ramziga", "Vatan himoyasi ramziga", "Ilm-fan ramziga", "Shaharsozlik ramziga"]$$::jsonb,
       1,
       $$To'maris boshchiligidagi jangchilar bosqinchilarni tor-mor etgan va uning nomi vatan himoyasi ramziga aylangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$To'maris jasorati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Shiroq jasorati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Vatani uchun jonini fido qilgan cho'pon Shiroq qaysi xalq vakili bo'lgan?$$,
       $$["Massagetlar", "Saklar", "So'g'dlar", "Forslar"]$$::jsonb,
       1,
       $$Shiroq — sak cho'poni bo'lib, vatani uchun jonini fido qilgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Shiroq jasorati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Shiroq jasorati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Cho'pon Shiroq Doro I qo'shinini ataylab qayerga boshlab borgan?$$,
       $$["Tog' dovoniga", "Daryo bo'yiga", "Qal'a devorlari ostiga", "Suvsiz sahroga"]$$::jsonb,
       3,
       $$Shiroq yo'l ko'rsatuvchi qiyofasida dushman qo'shinini ataylab suvsiz sahroga boshlab borgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Shiroq jasorati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Bronza davri madaniyati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Surxondaryodagi Sopollitepa va Jarqo'ton yodgorliklari qaysi davrga oid?$$,
       $$["Bronza davriga", "Tosh davriga", "Temir davriga", "Antik davrga"]$$::jsonb,
       0,
       $$Sopollitepa va Jarqo'ton yodgorliklari bronza davriga oid bo'lib, u yerda mil. avv. II ming yillikda dehqonchilik va hunarmandchilik rivojlangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bronza davri madaniyati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Bronza davri madaniyati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Sopollitepa va Jarqo'ton yodgorliklari o'lkamizdagi nimaning namunasi hisoblanadi?$$,
       $$["Ilk yozuv madaniyatining", "Ilk tanga zarb etishning", "Ilk shaharsozlik madaniyatining", "Ilk kutubxonalarning"]$$::jsonb,
       2,
       $$Sopollitepa va Jarqo'tonda dehqonchilik, hunarmandchilik va me'morlik yuksak rivojlangan — bu o'lkamizdagi ilk shaharsozlik madaniyatining namunasi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bronza davri madaniyati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Zardushtiylik dini
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Zardushtiylik dinida nimalar muqaddas sanalgan?$$,
       $$["Oltin va kumush", "Ot va qurol-yarog'", "Tog'lar va g'orlar", "Olov, suv, tuproq va havo"]$$::jsonb,
       3,
       $$Zardushtiylikda olov, suv, tuproq va havo muqaddas sanalgan, ezgu fikr, ezgu so'z va ezgu amal bosh qoida bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Zardushtiylik dini$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Zardushtiylik dini
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Navro'z bayramining ildizlari qaysi qadimgi din davriga borib taqaladi?$$,
       $$["Buddaviylik", "Zardushtiylik", "Xristianlik", "Islom"]$$::jsonb,
       1,
       $$Navro'z bayramining ildizlari zardushtiylik dini tarqalgan qadimgi davrga borib taqaladi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Zardushtiylik dini$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Qadimgi Xorazm qal'alari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Tuproqqal'a, Ayozqal'a va Jonbosqal'a kabi ulkan qal'alar qaysi qadimgi o'lka hududida qurilgan?$$,
       $$["Baqtriyada", "So'g'diyonada", "Qadimgi Xorazmda", "Dovonda"]$$::jsonb,
       2,
       $$Qadimgi Xorazmda Tuproqqal'a, Ayozqal'a, Jonbosqal'a kabi ulkan qal'alar qurilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qadimgi Xorazm qal'alari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:qadimgi | Qadimgi Xorazm qal'alari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qadimgi xorazmliklar dehqonchilikni yuksaltirish uchun cho'l o'rtasida nima barpo etgan?$$,
       $$["Murakkab sug'orish kanallarini", "Tosh yo'llar tarmog'ini", "Karvonsaroylarni", "Shamol tegirmonlarini"]$$::jsonb,
       0,
       $$Xorazmliklar cho'l o'rtasida murakkab sug'orish kanallari barpo etib, dehqonchilikni yuksak darajaga ko'targan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qadimgi Xorazm qal'alari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'qadimgi')
  AND f.hero_id IS NULL;

-- era:antik | Iskandar yurishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Xalqimiz Spitamen boshchiligida Iskandar Maqduniy qo'shiniga qancha vaqt davomida qarshilik ko'rsatgan?$$,
       $$["Uch yil", "Olti oy", "Bir yil", "O'n yil"]$$::jsonb,
       0,
       $$Xalqimiz So'g'd sarkardasi Spitamen boshchiligida uch yil davomida bosqinchilarga qattiq qarshilik ko'rsatgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Iskandar yurishi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Iskandar yurishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Iskandar Maqduniyga qarshi kurashga boshchilik qilgan Spitamen qaysi xalqning sarkardasi edi?$$,
       $$["Forslarning", "Yunonlarning", "So'g'dlarning", "Massagetlarning"]$$::jsonb,
       2,
       $$Spitamen So'g'd sarkardasi bo'lib, Iskandar bosqiniga qarshi xalq kurashiga boshchilik qilgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Iskandar yurishi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Yunon-Baqtriya davlati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Yunon-Baqtriya davlati davrida qanday o'ziga xos madaniyat vujudga kelgan?$$,
       $$["Bronza davri madaniyati", "Ellinizm madaniyati", "Ko'chmanchilar madaniyati", "Uyg'onish madaniyati"]$$::jsonb,
       1,
       $$Yunon-Baqtriya davrida yunon va mahalliy madaniyatlar qo'shilib, o'ziga xos ellinizm madaniyati vujudga kelgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yunon-Baqtriya davlati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Yunon-Baqtriya davlati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Yunon-Baqtriya davridagi ellinizm madaniyati qanday vujudga kelgan?$$,
       $$["Faqat fors madaniyati asosida", "Xitoy va hind madaniyatlari qo'shilishidan", "Arab va turkiy madaniyatlar qo'shilishidan", "Yunon va mahalliy madaniyatlar qo'shilishidan"]$$::jsonb,
       3,
       $$Ellinizm madaniyati yunon va mahalliy madaniyatlarning qo'shilishidan vujudga kelgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yunon-Baqtriya davlati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Qang' davlati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Sirdaryoning o'rta oqimida joylashgan Qang' (Kanguy) davlati qachon vujudga kelgan?$$,
       $$["Milodiy III asrda", "Mil. avv. VI asrda", "Mil. avv. III asrda", "Milodiy V asrda"]$$::jsonb,
       2,
       $$Qang' (Kanguy) davlati mil. avv. III asrda Sirdaryoning o'rta oqimida vujudga kelgan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qang' davlati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Qang' davlati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qadimgi Qang' davlati nimalardan boyigan?$$,
       $$["Dehqonchilik, chorvachilik va Ipak yo'li savdosidan", "Oltin konlaridan", "Dengiz savdosidan", "Harbiy o'ljalardan"]$$::jsonb,
       0,
       $$Qang' davlati o'z davrining qudratli davlatlaridan bo'lib, dehqonchilik, chorvachilik va Ipak yo'li savdosidan boyigan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qang' davlati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Dovon davlati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qadimgi Dovon davlati qayerda joylashgan?$$,
       $$["Zarafshon vodiysida", "Xorazm vohasida", "Sirdaryoning o'rta oqimida", "Farg'ona vodiysida"]$$::jsonb,
       3,
       $$Dovon davlati qadimda Farg'ona vodiysida joylashgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Dovon davlati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Dovon davlati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qadimgi Dovon davlati nimasi bilan mashhur bo'lgan?$$,
       $$["Shisha idishlari bilan", "«Samoviy arg'umoqlar» deb nom olgan zotdor otlari bilan", "Oltin buyumlari bilan", "Ipak matolari bilan"]$$::jsonb,
       1,
       $$Dovon «samoviy arg'umoqlar» deb nom olgan zotdor otlari bilan mashhur bo'lgan — Xitoy imperatorlari bu otlarga ega bo'lish uchun harbiy yurishlar ham uyushtirgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Dovon davlati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Kushon saltanati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Hududimiz qudratli Kushon saltanati tarkibida qaysi asrlarda bo'lgan?$$,
       $$["Mil. avv. VI–IV asrlarda", "Milodiy I–III asrlarda", "Milodiy V–VII asrlarda", "Mil. avv. III–I asrlarda"]$$::jsonb,
       1,
       $$Milodiy I–III asrlarda hududimiz qudratli Kushon saltanati tarkibida bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kushon saltanati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Kushon saltanati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Kushonlar davrida buddizm tarqalganidan guvohlik beruvchi Fayoztepa va Qoratepa ibodatxonalari qaysi shahar atrofida joylashgan?$$,
       $$["Samarqand", "Buxoro", "Xiva", "Termiz"]$$::jsonb,
       3,
       $$Termiz atrofidagi Fayoztepa va Qoratepa ibodatxonalari Kushon saltanati davrida buddizm keng tarqalganidan guvohlik beradi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Kushon saltanati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Buyuk ipak yo'li
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Buyuk ipak yo'li bo'ylab yurtimizda qaysi shaharlar gullab-yashnagan?$$,
       $$["Samarqand, Buxoro va Termiz", "Afina, Rim va Vizantiya", "Bag'dod, Damashq va Qohira", "Dehli, Agra va Lahor"]$$::jsonb,
       0,
       $$Buyuk ipak yo'li yurtimiz orqali o'tgan va yo'l bo'ylab Samarqand, Buxoro, Termiz shaharlari gullab-yashnagan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Buyuk ipak yo'li$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Buyuk ipak yo'li
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Buyuk ipak yo'li karvonlari qanday mollarni tashigan?$$,
       $$["Faqat g'alla va tuzni", "Yog'och va mo'ynani", "Ipak, ziravorlar, shisha va qimmatbaho toshlarni", "Qurol-yarog' va zirhlarni"]$$::jsonb,
       2,
       $$Ipak yo'li karvonlari ipak, ziravorlar, shisha va qimmatbaho toshlarni tashigan. Manba: «O'zbekiston tarixi» 6-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Buyuk ipak yo'li$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | So'g'd savdogarlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Buyuk ipak yo'lida qaysi til xalqaro savdo tiliga aylangan?$$,
       $$["Xitoy tili", "Yunon tili", "Fors tili", "So'g'd tili"]$$::jsonb,
       3,
       $$So'g'd savdogarlari Ipak yo'lining asosiy vositachilari bo'lgan, so'g'd tili esa yo'lning xalqaro savdo tiliga aylangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$So'g'd savdogarlari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | So'g'd savdogarlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$So'g'd savdogarlari qayerdan qayergacha savdo shoxobchalarini ochgan?$$,
       $$["Misrdan Rimgacha", "Xitoydan Vizantiyagacha", "Hindistondan Arabistongacha", "Yunonistondan Misrgacha"]$$::jsonb,
       1,
       $$So'g'd savdogarlari Xitoydan Vizantiyagacha savdo shoxobchalari ochgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$So'g'd savdogarlari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Afrosiyob
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qadimgi Samarqand o'rni — Afrosiyobdan topilgan mashhur yodgorliklar nima?$$,
       $$["Devoriy suratlar", "Oltin tangalar xazinasi", "Qadimgi qo'lyozmalar", "Bronza haykallar"]$$::jsonb,
       0,
       $$Afrosiyobdan topilgan mashhur devoriy suratlar antik shahar madaniyatining noyob guvohi hisoblanadi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Afrosiyob$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:antik | Afrosiyob
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Afrosiyob devoriy suratlarida nimalar tasvirlangan?$$,
       $$["Dengiz jangi manzaralari", "Piramidalar qurilishi", "Elchilar qabuli va bayram marosimlari", "Olimlar munozarasi"]$$::jsonb,
       2,
       $$Afrosiyob devoriy suratlarida elchilar qabuli, bayram marosimlari va o'sha davr kiyimlari tasvirlangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Afrosiyob$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'antik')
  AND f.hero_id IS NULL;

-- era:arab | Arablar istilosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Arab sarkardasi Qutayba ibn Muslim Buxoro, Samarqand va Xorazmni qaysi yillarda bosib olgan?$$,
       $$["709–712-yillarda", "651–655-yillarda", "750–755-yillarda", "809–812-yillarda"]$$::jsonb,
       0,
       $$Qutayba ibn Muslim 709–712-yillarda Buxoro, Samarqand va Xorazmni bosib olgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Arablar istilosi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Arablar istilosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Arablar istilosi bilan birga o'lkamizga nimalar kirib kelgan?$$,
       $$["Buddizm va sanskrit yozuvi", "Xristianlik va lotin yozuvi", "Islom dini va arab yozuvi", "Zardushtiylik va so'g'd yozuvi"]$$::jsonb,
       2,
       $$Istilo bilan birga islom dini va arab yozuvi kirib kelib, o'lka madaniyatiga chuqur ta'sir ko'rsatgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Arablar istilosi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Muqanna qo'zg'oloni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Muqanna boshchiligidagi qo'zg'olon qatnashchilari qanday nom bilan atalgan?$$,
       $$["«Qora kiyimlilar»", "«Oq kiyimlilar»", "«Qizil bayroqlilar»", "«Yashil kiyimlilar»"]$$::jsonb,
       1,
       $$VIII asrning 70-yillarida arab xalifaligi zulmiga qarshi ko'tarilgan qo'zg'olon «oq kiyimlilar» qo'zg'oloni deb atalgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Muqanna qo'zg'oloni$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Muqanna qo'zg'oloni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Muqanna boshchiligidagi qo'zg'olon qancha vaqt davom etgan?$$,
       $$["Uch oy", "Bir yil", "Besh yil", "O'n yildan ortiq"]$$::jsonb,
       3,
       $$Muqanna qo'zg'oloni o'n yildan ortiq davom etib, xalqning erk uchun kurashi ramziga aylangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Muqanna qo'zg'oloni$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Bayt ul-hikma va olimlarimiz
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$IX asrda al-Xorazmiy va al-Farg'oniy ijod qilgan «Bayt ul-hikma» qaysi shaharda joylashgan edi?$$,
       $$["Buxoroda", "Samarqandda", "Bag'dodda", "Damashqda"]$$::jsonb,
       2,
       $$IX asrda Bag'doddagi «Bayt ul-hikma» (Donishmandlik uyi)da al-Xorazmiy va al-Farg'oniy jahon faniga ulkan hissa qo'shgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bayt ul-hikma va olimlarimiz$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Bayt ul-hikma va olimlarimiz
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Al-Xorazmiy qaysi fanga asos solgan?$$,
       $$["Algebra faniga", "Tibbiyot faniga", "Falsafa faniga", "Geografiya faniga"]$$::jsonb,
       0,
       $$Al-Xorazmiy algebra faniga asos solgan, uning nomi «algoritm» so'zida abadiylashgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bayt ul-hikma va olimlarimiz$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Ahmad al-Farg'oniy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Astronom Ahmad al-Farg'oniy Yevropada qanday nom bilan mashhur bo'lgan?$$,
       $$["Avitsenna", "Algoritmi", "Alfarabius", "Alfraganus"]$$::jsonb,
       3,
       $$Al-Farg'oniyning «Astronomiya asoslari» kitobi Yevropada «Alfraganus» nomi bilan asrlar davomida darslik bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ahmad al-Farg'oniy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Ahmad al-Farg'oniy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Ahmad al-Farg'oniy Misrda qanday mashhur inshootni loyihalagan?$$,
       $$["Iskandariya mayog'ini", "Nil daryosi suvini o'lchaydigan nilometrni", "Ulkan suv ombori to'g'onini", "Shahar mudofaa devorini"]$$::jsonb,
       1,
       $$Al-Farg'oniy Misrda Nil daryosi suvini o'lchaydigan mashhur inshoot — nilometrni loyihalagan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ahmad al-Farg'oniy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Hadis ilmi sultonlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Imom al-Buxoriyning mashhur hadis to'plami qanday nomlanadi?$$,
       $$["«Tib qonunlari»", "«Al-jome as-sahih»", "«Fozil odamlar shahri»", "«Hindiston»"]$$::jsonb,
       1,
       $$Imom al-Buxoriyning «Al-jome as-sahih» to'plami hadis ilmining eng mashhur kitoblaridan biridir. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hadis ilmi sultonlari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Hadis ilmi sultonlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Al-Buxoriyning «Al-jome as-sahih» to'plami islom olamida qanday e'tirof etilgan?$$,
       $$["Birinchi she'riy devon deb", "Eng qadimgi tarix kitobi deb", "Birinchi tibbiy qomus deb", "Qur'ondan keyingi eng ishonchli kitob deb"]$$::jsonb,
       3,
       $$Al-Buxoriyning «Al-jome as-sahih» to'plami islom olamida Qur'ondan keyingi eng ishonchli kitob deb e'tirof etilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hadis ilmi sultonlari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Somoniylar davlati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Poytaxti Buxoro bo'lgan Somoniylar davlati qaysi asrlarda hukm surgan?$$,
       $$["IX–X asrlarda", "VII–VIII asrlarda", "XI–XII asrlarda", "XIII–XIV asrlarda"]$$::jsonb,
       0,
       $$IX–X asrlarda Somoniylar davlati poytaxti Buxoro yirik ilm-fan va madaniyat markaziga aylangan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Somoniylar davlati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Somoniylar davlati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Somoniylar davrida ravnaq topgan fors-tojik adabiyotining mashhur vakili kim?$$,
       $$["Alisher Navoiy", "Zahiriddin Muhammad Bobur", "Rudakiy", "Ahmad al-Farg'oniy"]$$::jsonb,
       2,
       $$Somoniylar davrida fors-tojik adabiyoti, jumladan Rudakiy ijodi ravnaq topgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Somoniylar davlati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Ibn Sino va Beruniy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Abu Rayhon Beruniy qalamiga mansub asarlar qaysilar?$$,
       $$["«Tib qonunlari» va «Al-jome as-sahih»", "«Xamsa» va «Boburnoma»", "«Fozil odamlar shahri» va «Astronomiya asoslari»", "«Hindiston» va «Qadimgi xalqlardan qolgan yodgorliklar»"]$$::jsonb,
       3,
       $$Beruniy «Hindiston» va «Qadimgi xalqlardan qolgan yodgorliklar» asarlarida tarix, geografiya va astronomiyani boyitgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ibn Sino va Beruniy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Ibn Sino va Beruniy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qomusiy olimlar Ibn Sino va Beruniy qaysi asrlarda yashab ijod qilgan?$$,
       $$["VIII–IX asrlarda", "X–XI asrlarda", "XII–XIII asrlarda", "XIV–XV asrlarda"]$$::jsonb,
       1,
       $$X–XI asrlar qomusiy olimlar davri bo'lib, bu davrda Ibn Sino va Abu Rayhon Beruniy ijod qilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ibn Sino va Beruniy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Abu Nasr Forobiy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Abu Nasr Forobiyning adolatli jamiyat haqidagi orzularni ifodalagan asari qanday nomlanadi?$$,
       $$["«Tib qonunlari»", "«Hindiston»", "«Fozil odamlar shahri»", "«Al-jome as-sahih»"]$$::jsonb,
       2,
       $$Forobiyning «Fozil odamlar shahri» asari adolatli jamiyat haqidagi orzularni ifodalaydi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Abu Nasr Forobiy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:arab | Abu Nasr Forobiy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Abu Nasr Forobiy qaysi ilm sohalariga ulkan hissa qo'shgan?$$,
       $$["Falsafa, mantiq va musiqa ilmiga", "Tibbiyot va kimyoga", "Geografiya va dengizchilikka", "Handasa va astronomiyaga"]$$::jsonb,
       0,
       $$Forobiy falsafa, mantiq va musiqa ilmiga ulkan hissa qo'shgani uchun «Ikkinchi muallim» deb ulug'langan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Abu Nasr Forobiy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'arab')
  AND f.hero_id IS NULL;

-- era:temuriylar | Markazlashgan davlat
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Amir Temur davlat boshqaruvining bosh qoidasi bo'lgan shiori qanday edi?$$,
       $$["«Kuch — adolatda»", "«Kuch — birlikda»", "«Kuch — boylikda»", "«Kuch — qo'shinda»"]$$::jsonb,
       0,
       $$Amir Temurning «Kuch — adolatda» shiori davlat boshqaruvining bosh qoidasi edi. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Markazlashgan davlat$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Markazlashgan davlat
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Amir Temur davlati boshqaruvining qonun-qoidalari qaysi asarda bayon etilgan?$$,
       $$["«Boburnoma»da", "«Ziji jadidi Ko'ragoniy»da", "«Temur tuzuklari»da", "«Xamsa»da"]$$::jsonb,
       2,
       $$«Temur tuzuklari»da davlat boshqaruvi qonun-qoidalari bayon etilgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Markazlashgan davlat$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Poytaxt Samarqand
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Amir Temur davrida ulug'vor Oqsaroy qaysi shaharda qurilgan?$$,
       $$["Samarqandda", "Shahrisabzda", "Buxoroda", "Hirotda"]$$::jsonb,
       1,
       $$Amir Temur davrida Shahrisabzda ulug'vor Oqsaroy qurilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Poytaxt Samarqand$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Poytaxt Samarqand
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Amir Temur davrida Samarqandda qad rostlagan jome masjidi qaysi?$$,
       $$["Shohi Zinda", "Go'ri Amir", "Oqsaroy", "Bibixonim jome masjidi"]$$::jsonb,
       3,
       $$Amir Temur davrida Samarqandda Bibixonim jome masjidi, Go'ri Amir maqbarasi va Shohi Zinda ansambli qad rostlagan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Poytaxt Samarqand$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Ulug'bek rasadxonasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Ulug'bekning «Ziji jadidi Ko'ragoniy» jadvalida nechta yulduzning o'rni ko'rsatilgan?$$,
       $$["500 ta", "300 ta", "1018 ta", "2500 ta"]$$::jsonb,
       2,
       $$«Ziji jadidi Ko'ragoniy» jadvalida 1018 yulduzning o'rni hayratlanarli aniqlikda ko'rsatilgan — bu asar Yevropada ham nashr etilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ulug'bek rasadxonasi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Ulug'bek rasadxonasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Mirzo Ulug'bek ulkan rasadxonani qaysi shaharda qurdirgan?$$,
       $$["Samarqandda", "Buxoroda", "G'ijduvonda", "Hirotda"]$$::jsonb,
       0,
       $$Mirzo Ulug'bek 1428–1429-yillarda Samarqandda ulkan rasadxona qurdirgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ulug'bek rasadxonasi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Ulug'bek madrasalari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Mirzo Ulug'bek qaysi shaharlarda madrasalar qurdirgan?$$,
       $$["Toshkent, Qo'qon va Xivada", "Hirot, Balx va Marvda", "Termiz, Shahrisabz va Qarshida", "Samarqand, Buxoro va G'ijduvonda"]$$::jsonb,
       3,
       $$Ulug'bek Samarqand, Buxoro va G'ijduvonda madrasalar qurdirgan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ulug'bek madrasalari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Ulug'bek madrasalari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Ulug'bekning Buxoro madrasasi darvozasiga qanday hikmat bitilgan?$$,
       $$["«Kuch — adolatda»", "«Bilim olish har bir muslim va muslima uchun farzdir»", "«Ezgu fikr, ezgu so'z, ezgu amal»", "«Adolat — davlat asosidir»"]$$::jsonb,
       1,
       $$Buxoro madrasasi darvozasiga «Bilim olish har bir muslim va muslima uchun farzdir» degan hikmat bitilgan — bu ilmga yuksak e'tibor ramzi. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ulug'bek madrasalari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Navoiy va ona tili
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Alisher Navoiy qaysi asarida ona tilimiz boyligini fors tili bilan qiyoslab isbotlagan?$$,
       $$["«Xazoyin ul-maoniy»da", "«Muhokamat ul-lug'atayn»da", "«Boburnoma»da", "«Temur tuzuklari»da"]$$::jsonb,
       1,
       $$Navoiy «Muhokamat ul-lug'atayn» asarida ona tilimizning boyligini fors tili bilan qiyoslab isbotlagan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Navoiy va ona tili$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Navoiy va ona tili
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Alisher Navoiy o'z asarlari bilan qaysi tilni buyuk adabiyot tiliga aylantirgan?$$,
       $$["Fors tilini", "Arab tilini", "Yunon tilini", "Turkiy (eski o'zbek) tilini"]$$::jsonb,
       3,
       $$Navoiy «Xamsa» va «Xazoyin ul-maoniy» asarlari bilan turkiy (eski o'zbek) tilini buyuk adabiyot tiliga aylantirgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Navoiy va ona tili$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Hirot madaniy markazi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Miniatyura ustasi Kamoliddin Behzod qanday nom bilan ulug'langan?$$,
       $$["«Sharq Rafaeli»", "«Ikkinchi muallim»", "«Sohibqiron»", "«Shayx ur-rais»"]$$::jsonb,
       0,
       $$Kamoliddin Behzod miniatyura san'atini shu qadar yuksaltirganki, uni «Sharq Rafaeli» deb atashgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hirot madaniy markazi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Hirot madaniy markazi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Husayn Boyqaro hukmronligidagi Hirot qachon Sharqning madaniy poytaxtiga aylangan?$$,
       $$["XIII asrda", "XIV asr boshida", "XV asr oxirida", "XVI asr o'rtalarida"]$$::jsonb,
       2,
       $$XV asr oxirida Husayn Boyqaro hukmronligidagi Hirot Sharqning madaniy poytaxtiga aylangan — bu yerda Navoiy va Behzod ijod qilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hirot madaniy markazi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Sharq Uyg'onish davri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Temuriylar davrida qaysi sohalar misli ko'rilmagan darajada rivojlangan?$$,
       $$["Faqat harbiy san'at", "Dengizchilik va kemasozlik", "Ovchilik va baliqchilik", "Astronomiya, matematika, adabiyot va me'morlik"]$$::jsonb,
       3,
       $$Temuriylar davrida astronomiya, matematika, tarix, adabiyot, xattotlik va me'morlik misli ko'rilmagan darajada rivojlangan. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Sharq Uyg'onish davri$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Sharq Uyg'onish davri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$«Sharq Uyg'onish davri» boshqacha qanday nom bilan ham ataladi?$$,
       $$["Ellinizm davri", "Temuriylar Renessansi", "Somoniylar Renessansi", "Kushonlar davri"]$$::jsonb,
       1,
       $$Temuriylar davri «Sharq Uyg'onish davri», ya'ni Temuriylar Renessansi deb ataladi. Manba: «O'zbekiston tarixi» 7-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Sharq Uyg'onish davri$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Bobur va boburiylar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Zahiriddin Muhammad Bobur Hindistonda boburiylar saltanatiga qachon asos solgan?$$,
       $$["1506-yilda", "1370-yilda", "1526-yilda", "1556-yilda"]$$::jsonb,
       2,
       $$Temuriy shahzoda Zahiriddin Muhammad Bobur 1526-yilda Hindistonda boburiylar saltanatiga asos solgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bobur va boburiylar$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- era:temuriylar | Bobur va boburiylar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Boburiylar qurdirgan jahon me'morligining durdonasi qaysi?$$,
       $$["Tojmahal", "Oqsaroy", "Bibixonim jome masjidi", "Go'ri Amir maqbarasi"]$$::jsonb,
       0,
       $$Boburiylar qurdirgan Tojmahal jahon me'morligining durdonasi hisoblanadi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bobur va boburiylar$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'temuriylar')
  AND f.hero_id IS NULL;

-- TOTAL: 64

-- ===================== eras_ab.sql =====================

-- era:xonliklar | Shayboniylar davri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Muhammad Shayboniyxon temuriylar davlatini qaysi yillarda egallagan?$$,
       $$["1441–1447-yillarda", "1526–1530-yillarda", "1500–1506-yillarda", "1465–1470-yillarda"]$$::jsonb,
       2,
       $$1500–1506-yillarda Muhammad Shayboniyxon temuriylar davlatini egallab, Movarounnahrda shayboniylar sulolasi hukmronligini o'rnatgan. Manba: «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Shayboniylar davri$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Shayboniylar davri
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Shayboniylar davrida, XVI asrda mintaqaning yirik davlatiga aylangan xonlik qaysi?$$,
       $$["Buxoro xonligi", "Xiva xonligi", "Qo'qon xonligi", "Qozoq xonligi"]$$::jsonb,
       0,
       $$Shayboniylar sulolasi hukmronligi davrida, XVI asrda Buxoro xonligi mintaqaning yirik davlatiga aylangan. Manba: «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Shayboniylar davri$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Uch davlat
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Buxoro amirligi, Xiva va Qo'qon xonliklari o'rtasidagi tez-tez urushlar qanday oqibatga olib keldi?$$,
       $$["Davlatlar birlashib, yagona saltanat tuzildi", "O'lka zaiflashib, chet el istilosiga zamin yaratildi", "Savdo yo'llari kengayib, o'lka yanada boyidi", "Poytaxt Samarqandga ko'chirildi"]$$::jsonb,
       1,
       $$Buxoro amirligi, Xiva xonligi va Qo'qon xonligi o'rtasidagi tez-tez urushlar o'lkani zaiflashtirib, chet el istilosiga zamin yaratdi. Manba: «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Uch davlat$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Uch davlat
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$XVIII–XIX asrlarda hududimizdagi uchta davlatdan qaysi biri amirlik deb atalgan?$$,
       $$["Xiva", "Qo'qon", "Toshkent", "Buxoro"]$$::jsonb,
       3,
       $$XVIII–XIX asrlarda hududimizda Buxoro amirligi, Xiva xonligi va Qo'qon xonligi mavjud bo'lib, ulardan Buxoro amirlik deb atalgan. Manba: «O'zbekiston tarixi» 8-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Uch davlat$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Xon-tarixchi Abulg'oziy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Xon va olim Abulg'oziy Bahodirxon qaysi yillarda yashagan?$$,
       $$["1603–1664-yillarda", "1552–1610-yillarda", "1645–1700-yillarda", "1571–1630-yillarda"]$$::jsonb,
       0,
       $$Xiva xoni Abulg'oziy Bahodirxon 1603–1664-yillarda yashagan; u nafaqat davlat arbobi, balki olim ham edi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xon-tarixchi Abulg'oziy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Xon-tarixchi Abulg'oziy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Abulg'oziy Bahodirxonning «Shajarayi turk» asari nimani o'rganishda muhim manba sanaladi?$$,
       $$["Yulduzlar ilmini", "Tibbiyot tarixini", "Turkiy xalqlar tarixini", "Geometriya fanini"]$$::jsonb,
       2,
       $$Xiva xoni Abulg'oziy Bahodirxonning «Shajarayi turk» asari turkiy xalqlar tarixini o'rganishda muhim manba sanaladi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Xon-tarixchi Abulg'oziy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Ichan-qal'a
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekistonda birinchi bo'lib YUNESKOning Jahon merosi ro'yxatiga kiritilgan yodgorlik majmuasi qaysi?$$,
       $$["Registon maydoni", "Labi hovuz ansambli", "Shohizinda majmuasi", "Ichan-qal'a"]$$::jsonb,
       3,
       $$Xivaning Ichan-qal'a majmuasi O'zbekistonda birinchi bo'lib YUNESKOning Jahon merosi ro'yxatiga kiritilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ichan-qal'a$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Ichan-qal'a
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Minoralar, madrasalar va saroylar bir butun saqlangan Ichan-qal'a majmuasi qaysi shaharda joylashgan?$$,
       $$["Buxoroda", "Xivada", "Samarqandda", "Qo'qonda"]$$::jsonb,
       1,
       $$Ichan-qal'a — Xiva shahridagi minoralar, madrasalar va saroylar bir butun saqlangan noyob shahar-yodgorlik. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Ichan-qal'a$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Buxoro me'morligi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Buxoro shahrining ramziga aylangan Kalon minorasi qaysi asrdan beri qad rostlab turibdi?$$,
       $$["X asrdan", "XV asrdan", "XII asrdan", "XVIII asrdan"]$$::jsonb,
       2,
       $$XII asrdan qad rostlab turgan Kalon minorasi Buxoro shahrining ramzi bo'lib qolgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Buxoro me'morligi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Buxoro me'morligi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Xonliklar davrida Buxoroda qurilgan mashhur ansambl qaysi?$$,
       $$["Labi hovuz", "Registon", "Shohizinda", "Ichan-qal'a"]$$::jsonb,
       0,
       $$Xonliklar davrida Buxoroda Labi hovuz ansambli, Chor minor va ko'plab savdo gumbazlari qurilgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Buxoro me'morligi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Mumtoz adabiyot
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Xonliklar davrida Xorazmda ijod qilgan shoirlar qaysi javobda to'g'ri ko'rsatilgan?$$,
       $$["Amiriy va Furqat", "Munis va Ogahiy", "Nodira va Uvaysiy", "Mashrab va Amiriy"]$$::jsonb,
       1,
       $$Xonliklar davrida Xorazmda Munis va Ogahiy, Qo'qonda esa Amiriy va Furqat ijod qilib, mumtoz adabiyotimizni boyitgan. Manba: «O'zbek adabiyoti tarixi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Mumtoz adabiyot$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Mumtoz adabiyot
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Xonliklar davri shoirlari Amiriy va Furqat qaysi shaharda ijod qilgan?$$,
       $$["Buxoroda", "Xivada", "Samarqandda", "Qo'qonda"]$$::jsonb,
       3,
       $$Xonliklar davrida Amiriy va Furqat Qo'qonda ijod qilib, mumtoz adabiyotimizni boyitgan. Manba: «O'zbek adabiyoti tarixi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Mumtoz adabiyot$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Shoiralar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Shoira Nodira qaysi Qo'qon xonining rafiqasi bo'lgan?$$,
       $$["Eltuzarxon", "Sherg'ozixon", "Muhammad Rahimxon", "Umarxon"]$$::jsonb,
       3,
       $$Nodira Qo'qon xoni Umarxonning rafiqasi bo'lib, o'zbek mumtoz adabiyotining buyuk shoiralaridan biridir. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Shoiralar$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Shoiralar
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Shoira Nodira she'riyatdan tashqari yana qanday faoliyati bilan tarixda qolgan?$$,
       $$["Harbiy yurishlarga qo'mondonlik qilgan", "Davlat ishlarida qatnashib, madaniyat homiysi bo'lgan", "Elchi sifatida xorijda xizmat qilgan", "Madrasalarda dars bergan"]$$::jsonb,
       1,
       $$Nodira davlat ishlarida ham faol qatnashib, madaniyat homiysi bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Shoiralar$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Hunarmandchilik va savdo
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Xonliklar davrida atlas to'qish maktabi bilan mashhur bo'lgan shahar qaysi?$$,
       $$["Marg'ilon", "Rishton", "Buxoro", "Xiva"]$$::jsonb,
       0,
       $$Xonliklar davrida Marg'ilon atlasi, Rishton kulolchiligi va Buxoro zardo'zligi kabi hunarmandchilik maktablari shakllangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hunarmandchilik va savdo$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:xonliklar | Hunarmandchilik va savdo
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Xonliklar davrida Rishton qaysi hunarmandchilik turi bilan mashhur bo'lgan?$$,
       $$["Zardo'zlik", "Atlas to'qish", "Kulolchilik", "Gilam to'qish"]$$::jsonb,
       2,
       $$Xonliklar davrida Rishton kulolchiligi mashhur hunarmandchilik maktablaridan biri bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Hunarmandchilik va savdo$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xonliklar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Rossiya istilosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Turkiston general-gubernatorligi qachon tuzilgan?$$,
       $$["1865-yilda", "1867-yilda", "1876-yilda", "1886-yilda"]$$::jsonb,
       1,
       $$Toshkent 1865-yilda bosib olingach, 1867-yilda Turkiston general-gubernatorligi tuzildi. Manba: «O'zbekiston tarixi» 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Rossiya istilosi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Rossiya istilosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Rossiya istilosidan so'ng Buxoro amirligi va Xiva xonligi qanday holatga tushdi?$$,
       $$["To'liq mustaqilligini saqlab qoldi", "Bir-biri bilan birlashdi", "Qo'qon xonligi tarkibiga kirdi", "Rossiyaga qaram davlatlarga aylantirildi"]$$::jsonb,
       3,
       $$Rossiya istilosi natijasida Buxoro amirligi va Xiva xonligi Rossiyaga qaram davlatlarga aylantirildi. Manba: «O'zbekiston tarixi» 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Rossiya istilosi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Jadidchilik harakati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Jadidchilik harakatining asosiy maqsadi nima edi?$$,
       $$["Millatni ma'rifat orqali uyg'otish", "Yangi savdo yo'llarini ochish", "Harbiy qo'shin tuzish", "Yangi shaharlar qurish"]$$::jsonb,
       0,
       $$Jadidchilik mustamlaka sharoitida millatni ma'rifat orqali uyg'otishga qaratilgan harakat edi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jadidchilik harakati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Jadidchilik harakati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Jadidlar xalqni ilmli qilish uchun qaysi vositalardan foydalangan?$$,
       $$["Faqat masjid va'zlaridan", "Savdo karvonlaridan", "Maktab, matbuot va teatrdan", "Harbiy mashqlardan"]$$::jsonb,
       2,
       $$Jadidlar yangi usul maktablari, matbuot va teatr orqali xalqni ilmli qilishga intildi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jadidchilik harakati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Yangi usul maktablari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Usuli jadid maktablarida bolalar qancha vaqtda savod chiqargan?$$,
       $$["O'n yilda", "Besh yilda", "Ikki yilda", "Bir necha oyda"]$$::jsonb,
       3,
       $$Usuli jadid maktablarida bolalar eski usuldagidan ancha tez — bir necha oyda savod chiqargan. Manba: «O'zbekiston tarixi» 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yangi usul maktablari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Yangi usul maktablari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Usuli jadid maktablarida qaysi dunyoviy fanlar o'qitilgan?$$,
       $$["Tibbiyot va huquq", "Jug'rofiya, hisob va tarix", "Dengizchilik va harbiy ish", "Faqat husnixat va she'riyat"]$$::jsonb,
       1,
       $$Yangi usul maktablarida bolalar jug'rofiya, hisob va tarix kabi dunyoviy fanlarni ham o'rgangan. Manba: «O'zbekiston tarixi» 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Yangi usul maktablari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Mahmudxo'ja Behbudiy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Mahmudxo'ja Behbudiy qaysi jurnalning noshiri bo'lgan?$$,
       $$["«Taraqqiy»", "«Sadoi Turkiston»", "«Oyina»", "«Munozara»"]$$::jsonb,
       2,
       $$Jadidlar yetakchisi Mahmudxo'ja Behbudiy «Oyina» jurnalining noshiri bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mahmudxo'ja Behbudiy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Mahmudxo'ja Behbudiy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$«Haq olinur, berilmas!» degan mashhur so'zlar qaysi jadid arbobiga tegishli?$$,
       $$["Mahmudxo'ja Behbudiyga", "Munavvarqori Abdurashidxonovga", "Abdurauf Fitratga", "Abdulla Avloniyga"]$$::jsonb,
       0,
       $$Mahmudxo'ja Behbudiy «Haq olinur, berilmas!» degan mashhur so'zlari bilan tarixda qolgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mahmudxo'ja Behbudiy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Munavvarqori va Avloniy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$«Adibi avval» darsligining muallifi kim?$$,
       $$["Munavvarqori Abdurashidxonov", "Abdulla Avloniy", "Mahmudxo'ja Behbudiy", "Abdulhamid Cho'lpon"]$$::jsonb,
       0,
       $$Munavvarqori Abdurashidxonov Toshkentda yangi usul maktablari tarmog'ini yaratib, «Adibi avval» darsligini yozgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Munavvarqori va Avloniy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Munavvarqori va Avloniy
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Jadid ma'rifatparvari Abdulla Avloniy kitoblardan tashqari yana qaysi vosita orqali ma'rifat tarqatgan?$$,
       $$["Savdo do'konlari orqali", "Kasalxonalar orqali", "Teatr truppasi orqali", "Temir yo'l qurilishi orqali"]$$::jsonb,
       2,
       $$Abdulla Avloniy «Turkiy guliston yoxud axloq» kitobi va teatr truppasi bilan ma'rifat tarqatgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Munavvarqori va Avloniy$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Milliy matbuot
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1906-yilda chiqa boshlagan ilk o'zbek gazetalaridan biri qaysi?$$,
       $$["«Sadoi Turkiston»", "«Taraqqiy»", "«Samarqand»", "«Oyina»"]$$::jsonb,
       1,
       $$1906-yilda birinchi o'zbek gazetalaridan «Taraqqiy» chiqa boshladi, «Sadoi Turkiston» va «Samarqand» kabi nashrlar keyinroq paydo bo'ldi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Milliy matbuot$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Milliy matbuot
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Jadidlar davrida milliy matbuot xalqqa qanday xizmat qilgan?$$,
       $$["Faqat rasmiy farmonlarni bosgan", "Faqat savdo e'lonlarini chop etgan", "Faqat diniy matnlar bergan", "Dunyo voqealarini yetkazib, milliy ongni o'stirgan"]$$::jsonb,
       3,
       $$«Sadoi Turkiston», «Samarqand» kabi nashrlar xalqqa dunyodagi voqealarni yetkazib, milliy ongni o'stirdi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Milliy matbuot$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Fitrat va Cho'lpon
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Abdurauf Fitrat «Munozara» asarida qanday g'oyalarni ilgari surgan?$$,
       $$["Yangi poytaxt qurish", "Savdo yo'llarini kengaytirish", "Jamiyatni isloh qilish", "Qadimgi yodgorliklarni ta'mirlash"]$$::jsonb,
       2,
       $$Abdurauf Fitrat «Munozara» asarida jamiyatni isloh qilish g'oyalarini ilgari surdi. Manba: «O'zbek adabiyoti tarixi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Fitrat va Cho'lpon$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Fitrat va Cho'lpon
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Erk haqidagi she'rlari bilan yangi o'zbek adabiyotiga asos solgan shoir kim?$$,
       $$["Abdulhamid Cho'lpon", "Abdurauf Fitrat", "Abdulla Avloniy", "Mahmudxo'ja Behbudiy"]$$::jsonb,
       0,
       $$Abdulhamid Cho'lpon «Kecha va kunduz» romani hamda erk haqidagi she'rlari bilan yangi o'zbek adabiyotiga asos soldi. Manba: «O'zbek adabiyoti tarixi».$$
FROM fact_cards f
WHERE f.topic_uz = $$Fitrat va Cho'lpon$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Jadidlar merosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Jadidlarning bosh g'oyasi qaysi shiorda ifodalangan?$$,
       $$["«Yer — dehqonlarga»", "«Haq olinur, berilmas!»", "«Birlik — kuchda»", "«Najot — ta'limda»"]$$::jsonb,
       3,
       $$Jadidlar millat kelajagini bilimli avlodda ko'rdi: «Najot — ta'limda» ularning bosh g'oyasi edi. Manba: «O'zbekiston tarixi» 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jadidlar merosi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:jadidlar | Jadidlar merosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Jadidlarning ma'rifat yo'lidagi jasorati bugungi kunda qanday baholanadi?$$,
       $$["Deyarli unutilgan", "Mustaqil O'zbekistonda yuksak qadrlanadi", "Faqat chet ellik olimlar o'rganadi", "Munozarali deb hisoblanadi"]$$::jsonb,
       1,
       $$Jadidlarning ma'rifat yo'lidagi jasorati bugungi mustaqil O'zbekistonda yuksak qadrlanadi. Manba: «O'zbekiston tarixi» 9-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jadidlar merosi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'jadidlar')
  AND f.hero_id IS NULL;

-- era:xx-asr | Turkiston muxtoriyati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Turkiston muxtoriyati qancha muddat faoliyat yuritgan?$$,
       $$["72 kun", "6 oy", "2 yil", "10 yil"]$$::jsonb,
       0,
       $$1917-yil noyabrda Qo'qonda e'lon qilingan Turkiston muxtoriyati bor-yo'g'i 72 kun yashagan. Manba: «O'zbekiston tarixi» 10-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Turkiston muxtoriyati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Turkiston muxtoriyati
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Turkiston muxtoriyatining tariximizdagi ahamiyati nimada?$$,
       $$["Birinchi sovet respublikasi bo'lgan", "Yangi xonlik sulolasini boshlab bergan", "Rossiya bilan ittifoq shartnomasini imzolagan", "O'z davlatchiligimizni tiklash yo'lidagi ilk urinish bo'lgan"]$$::jsonb,
       3,
       $$Turkiston muxtoriyati xalqimizning o'z davlatchiligini tiklash yo'lidagi ilk urinishi edi. Manba: «O'zbekiston tarixi» 10-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Turkiston muxtoriyati$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | O'zbekiston SSR
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekiston SSRning dastlabki poytaxti qaysi shahar bo'lgan?$$,
       $$["Toshkent", "Buxoro", "Samarqand", "Qo'qon"]$$::jsonb,
       2,
       $$1924-yilda tashkil etilgan O'zbekiston SSRning poytaxti dastlab Samarqand bo'lgan. Manba: «O'zbekiston tarixi» 10-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$O'zbekiston SSR$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | O'zbekiston SSR
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekiston SSR poytaxti Samarqanddan Toshkentga qachon ko'chirilgan?$$,
       $$["1924-yilda", "1930-yilda", "1936-yilda", "1945-yilda"]$$::jsonb,
       1,
       $$O'zbekiston SSR poytaxti dastlab Samarqand bo'lib, 1930-yilda Toshkentga ko'chirilgan. Manba: «O'zbekiston tarixi» 10-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$O'zbekiston SSR$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Qatag'on qurbonlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qatag'on qurbonlarini yod etish kuni qaysi sanada nishonlanadi?$$,
       $$["9-mayda", "31-avgustda", "1-sentabrda", "8-dekabrda"]$$::jsonb,
       1,
       $$Qatag'on qurbonlarining xotirasi 31-avgust — Qatag'on qurbonlarini yod etish kunida ulug'lanadi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qatag'on qurbonlari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Qatag'on qurbonlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Adiblar Abdulla Qodiriy, Cho'lpon va Fitrat qaysi yillardagi qatag'on qurboni bo'lgan?$$,
       $$["1917–1918-yillardagi", "1924–1925-yillardagi", "1953–1954-yillardagi", "1937–1938-yillardagi"]$$::jsonb,
       3,
       $$1937–1938-yillardagi qatag'onda Abdulla Qodiriy, Cho'lpon, Fitrat va minglab yurtdoshlarimiz qurbon bo'lgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qatag'on qurbonlari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Urush yillarida O'zbekiston
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Ikkinchi jahon urushida O'zbekistondan qancha kishi frontga safarbar etilgan?$$,
       $$["1,5 milliondan ortiq", "500 mingga yaqin", "100 mingga yaqin", "5 milliondan ortiq"]$$::jsonb,
       0,
       $$Ikkinchi jahon urushida 1,5 milliondan ortiq o'zbekistonlik frontga safarbar etilgan. Manba: «O'zbekiston tarixi» 10-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Urush yillarida O'zbekiston$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Urush yillarida O'zbekiston
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Urush yillarida Shomahmudovlar oilasi nechta yetim bolani o'z bag'riga olgan?$$,
       $$["5 nafar", "10 nafar", "15 nafar", "25 nafar"]$$::jsonb,
       2,
       $$Urush yillarida O'zbekistonga minglab yetim bolalar evakuatsiya qilingan; Shomahmudovlar oilasi 15 yetimni o'z bag'riga olgan. Manba: «O'zbekiston tarixi» 10-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Urush yillarida O'zbekiston$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Paxta yakkahokimligi va Orol
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Qaysi daryolar suvining dalalarga burib yuborilishi Orol fojiasiga sabab bo'ldi?$$,
       $$["Zarafshon va Chirchiq", "Volga va Ural", "Norin va Qoradaryo", "Amudaryo va Sirdaryo"]$$::jsonb,
       3,
       $$Amudaryo va Sirdaryo suvlari dalalarga burib yuborilgani oqibatida Orol dengizi quriy boshladi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Paxta yakkahokimligi va Orol$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Paxta yakkahokimligi va Orol
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Sovet davridagi paxta yakkahokimligi qanday ekologik oqibatga olib keldi?$$,
       $$["Daryolar toshib ketdi", "Orol dengizi quriy boshladi", "Zilzilalar ko'paydi", "Iqlim keskin sovib ketdi"]$$::jsonb,
       1,
       $$Paxta yakkahokimligi davrida daryolar suvi dalalarga olib ketilib, Orol dengizi quriy boshladi — bu XX asrning eng yirik ekologik fojialaridan biridir. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Paxta yakkahokimligi va Orol$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Toshkent zilzilasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1966-yilgi Toshkent zilzilasi qaysi kunda yuz bergan?$$,
       $$["1-yanvarda", "9-mayda", "26-aprelda", "31-avgustda"]$$::jsonb,
       2,
       $$1966-yil 26-aprelda Toshkentda kuchli zilzila yuz berib, yuz minglab kishi boshpanasiz qolgan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Toshkent zilzilasi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Toshkent zilzilasi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1966-yilgi zilziladan keyin qayta qurilgan Toshkentda nimalar barpo etildi?$$,
       $$["Zamonaviy keng ko'chalar va yangi mavzelar", "Faqat sanoat zavodlari", "Qadimiy qal'a devorlari", "Faqat vaqtinchalik turar joylar"]$$::jsonb,
       0,
       $$Zilziladan keyin Toshkent qisqa muddatda qayta qurilib, zamonaviy keng ko'chalar va yangi mavzelar barpo etildi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Toshkent zilzilasi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | XX asr adabiyoti
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$«Navoiy» romanining muallifi kim?$$,
       $$["G'afur G'ulom", "Zulfiya", "Oybek", "Abdulla Qodiriy"]$$::jsonb,
       2,
       $$XX asrda Oybek «Navoiy» romanini yaratdi. Manba: «O'zbek adabiyoti tarixi».$$
FROM fact_cards f
WHERE f.topic_uz = $$XX asr adabiyoti$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | XX asr adabiyoti
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$XX asr adibi G'afur G'ulom qaysi mashhur asarni yaratgan?$$,
       $$["«Shum bola»", "«Navoiy»", "«Kecha va kunduz»", "«Padarkush»"]$$::jsonb,
       0,
       $$XX asrda G'afur G'ulom «Shum bola» asarini yaratdi. Manba: «O'zbek adabiyoti tarixi».$$
FROM fact_cards f
WHERE f.topic_uz = $$XX asr adabiyoti$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Mustaqillik sari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1989-yil 21-oktabrda qanday tarixiy voqea yuz berdi?$$,
       $$["Mustaqillik e'lon qilindi", "O'zbek tiliga davlat tili maqomi berildi", "Konstitutsiya qabul qilindi", "Toshkentda zilzila yuz berdi"]$$::jsonb,
       1,
       $$1989-yil 21-oktabrda o'zbek tiliga davlat tili maqomi berildi — bu mustaqillik yo'lidagi muhim qadam edi. Manba: «O'zbekiston tarixi» 10-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mustaqillik sari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:xx-asr | Mustaqillik sari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekiston o'z mustaqilligini e'lon qilishga qachon tayyor bo'ldi?$$,
       $$["1985-yil boshida", "1989-yil oktabrida", "1990-yil yanvarida", "1991-yil avgustiga kelib"]$$::jsonb,
       3,
       $$1991-yil avgustiga kelib O'zbekiston o'z mustaqilligini e'lon qilishga tayyor bo'ldi. Manba: «O'zbekiston tarixi» 10-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mustaqillik sari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'xx-asr')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Mustaqillik e'loni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1991-yil 31-avgustda qanday tarixiy voqea yuz berdi?$$,
       $$["Konstitutsiya qabul qilindi", "So'm muomalaga kiritildi", "O'zbekiston BMTga a'zo bo'ldi", "O'zbekiston davlat mustaqilligi e'lon qilindi"]$$::jsonb,
       3,
       $$1991-yil 31-avgustda O'zbekiston davlat mustaqilligi e'lon qilindi va xalqimiz tarixida yangi davr boshlandi. Manba: «O'zbekiston tarixi» 11-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mustaqillik e'loni$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Mustaqillik e'loni
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekistonda 1-sentabrda qaysi bayram nishonlanadi?$$,
       $$["Konstitutsiya kuni", "Mustaqillik kuni", "Navro'z bayrami", "Xotira va qadrlash kuni"]$$::jsonb,
       1,
       $$O'zbekistonda 1-sentabr Mustaqillik kuni sifatida nishonlanadi. Manba: «O'zbekiston tarixi» 11-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Mustaqillik e'loni$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Konstitutsiya
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekiston Konstitutsiyasida davlatning oliy qadriyatlari sifatida nimalar belgilangan?$$,
       $$["Inson huquqlari, so'z erkinligi va qonun ustuvorligi", "Harbiy qudrat va kuchli armiya", "Boylik va tabiiy resurslar", "Savdo va sanoat rivoji"]$$::jsonb,
       0,
       $$O'zbekiston Konstitutsiyasida inson huquqlari, so'z erkinligi va qonun ustuvorligi davlatning oliy qadriyatlari deb belgilangan. Manba: O'zbekiston Respublikasi Konstitutsiyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Konstitutsiya$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Konstitutsiya
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1992-yil 8-dekabrda qaysi muhim hujjat qabul qilingan?$$,
       $$["Davlat tili to'g'risidagi qonun", "Mustaqillik deklaratsiyasi", "O'zbekiston Respublikasining Konstitutsiyasi", "BMTga a'zolik shartnomasi"]$$::jsonb,
       2,
       $$1992-yil 8-dekabrda O'zbekiston Respublikasining Konstitutsiyasi qabul qilindi. Manba: O'zbekiston Respublikasi Konstitutsiyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Konstitutsiya$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Davlat ramzlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekiston davlat madhiyasi qachon qabul qilingan?$$,
       $$["1991-yil 18-noyabrda", "1992-yil 10-dekabrda", "1992-yil 2-iyulda", "1994-yil 1-iyulda"]$$::jsonb,
       1,
       $$O'zbekiston davlat madhiyasi 1992-yil 10-dekabrda qabul qilingan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlat ramzlari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Davlat ramzlari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekiston gerbi markazida qaysi afsonaviy qush tasvirlangan?$$,
       $$["Semurg'", "Burgut", "Anqo", "Humo"]$$::jsonb,
       3,
       $$O'zbekiston gerbi markazida baxt va erk ramzi — afsonaviy Humo qushi tasvirlangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Davlat ramzlari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Bayroq ranglari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekiston bayrog'idagi yashil rang nimani anglatadi?$$,
       $$["Osmon va suvni", "Tinchlik va poklikni", "Tabiat va yangilanishni", "Hayot kuchini"]$$::jsonb,
       2,
       $$Bayrog'imizdagi yashil rang tabiat va yangilanish ramzidir. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bayroq ranglari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Bayroq ranglari
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekiston bayrog'idagi yarim oy va 12 yulduz nima bilan bog'liq?$$,
       $$["Xalqimizning qadimiy taqvim an'analari bilan", "Viloyatlar soni bilan", "Daryolar soni bilan", "Qo'shni davlatlar soni bilan"]$$::jsonb,
       0,
       $$Bayrog'imizdagi yarim oy va 12 yulduz xalqimizning qadimiy taqvim an'analari bilan bog'liq. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Bayroq ranglari$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Jahon hamjamiyatida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1992-yil 2-martda O'zbekiston qaysi xalqaro tashkilotga a'zo bo'ldi?$$,
       $$["Yevropa Ittifoqiga", "Jahon savdo tashkilotiga", "Birlashgan Millatlar Tashkilotiga", "Shanxay hamkorlik tashkilotiga"]$$::jsonb,
       2,
       $$1992-yil 2-martda O'zbekiston Birlashgan Millatlar Tashkilotiga a'zo bo'ldi. Manba: «O'zbekiston tarixi» 11-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jahon hamjamiyatida$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Jahon hamjamiyatida
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Bugungi kunda O'zbekistonni qancha davlat tan olgan?$$,
       $$["Dunyoning deyarli barcha davlatlari", "Faqat qo'shni davlatlar", "Yigirmaga yaqin davlat", "Faqat Osiyo davlatlari"]$$::jsonb,
       0,
       $$Bugun mamlakatimizni dunyoning deyarli barcha davlatlari tan olgan va u xalqaro tashkilotlarda faol qatnashadi. Manba: «O'zbekiston tarixi» 11-sinf darsligi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jahon hamjamiyatida$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Milliy valyuta
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1994-yil 1-iyulda qanday voqea yuz berdi?$$,
       $$["Konstitutsiya qabul qilindi", "Davlat bayrog'i qabul qilindi", "O'zbekiston BMTga a'zo bo'ldi", "Milliy valyuta — so'm muomalaga kiritildi"]$$::jsonb,
       3,
       $$1994-yil 1-iyulda milliy valyutamiz — so'm muomalaga kiritildi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Milliy valyuta$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Milliy valyuta
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'z pul birligiga ega bo'lish nimaning muhim belgisi sanaladi?$$,
       $$["Savdo rivojining", "Davlat mustaqilligining", "Qadimiy an'analarning", "Xalqaro hamkorlikning"]$$::jsonb,
       1,
       $$O'z puliga ega bo'lish davlat mustaqilligining muhim belgilaridan biridir. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Milliy valyuta$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Qadriyatlar tiklanishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Mustaqillik yillarida qaysi qadimiy bahor bayrami qayta tiklandi?$$,
       $$["Navro'z", "Mehrjon", "Hosil bayrami", "Lola sayli"]$$::jsonb,
       0,
       $$Mustaqillik yillarida Navro'z bayrami qayta tiklandi, buyuk ajdodlar merosi qadr topdi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qadriyatlar tiklanishi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Qadriyatlar tiklanishi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$1996-yil O'zbekistonda qanday yil deb e'lon qilingan?$$,
       $$["«Ulug'bek yili»", "«Alisher Navoiy yili»", "«Amir Temur yili»", "«Bobur yili»"]$$::jsonb,
       2,
       $$1996-yil «Amir Temur yili» deb e'lon qilinib, sohibqironning 660 yilligi keng nishonlangan. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Qadriyatlar tiklanishi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Jahon merosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$Mustaqillik yillarida YUNESKO ro'yxatiga qaysi tarixiy markazlar kiritildi?$$,
       $$["Toshkent, Andijon, Namangan va Farg'ona", "Ichan-qal'a, Buxoro, Shahrisabz va Samarqand", "Nukus, Urganch, Termiz va Jizzax", "Guliston, Navoiy, Qarshi va Sirdaryo"]$$::jsonb,
       1,
       $$Mustaqillik yillarida Ichan-qal'a, Buxoro, Shahrisabz va Samarqand tarixiy markazlari YUNESKOning Jahon merosi ro'yxatiga kiritildi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jahon merosi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- era:mustaqillik | Jahon merosi
INSERT INTO quiz_questions (hero_id, era_id, fact_card_id, question_uz, options, correct_index, explanation_uz)
SELECT NULL, f.era_id, f.id,
       $$O'zbekistonning YUNESKO ro'yxatiga kiritilgan yodgorliklari endi kimning mulki sanaladi?$$,
       $$["Faqat mahalliy hokimiyatning", "Xususiy shaxslarning", "YUNESKO tashkilotining", "Butun insoniyatning"]$$::jsonb,
       3,
       $$Ota-bobolarimiz yaratgan bu boyliklar endi butun insoniyat mulki sanaladi. Manba: O'zbekiston milliy ensiklopediyasi.$$
FROM fact_cards f
WHERE f.topic_uz = $$Jahon merosi$$
  AND f.era_id = (SELECT id FROM eras WHERE code = 'mustaqillik')
  AND f.hero_id IS NULL;

-- TOTAL: 64
