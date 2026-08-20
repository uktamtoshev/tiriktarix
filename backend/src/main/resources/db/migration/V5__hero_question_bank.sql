-- Tirik tarix: qahramonlar savollar bankini kengaytirish — har bir qahramonda 10 tadan.
-- Savollar tasdiqlangan fakt kartochkalariga tayanadi (M1 kontur).

-- ============ AMIR TEMUR (+5) ============

INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'amir-temur'), NULL,
 $$Amir Temur qayerda tug'ilgan?$$,
 $$["Samarqandda", "Kesh (Shahrisabz) yaqinidagi Xo'ja Ilg'or qishlog'ida", "Buxoroda", "Toshkentda"]$$, 1,
 $$Amir Temur 1336-yilda Kesh (hozirgi Shahrisabz) yaqinidagi Xo'ja Ilg'or qishlog'ida tug'ilgan.$$),
((SELECT id FROM heroes WHERE slug = 'amir-temur'), NULL,
 $$«Sohibqiron» unvoni qanday ma'noni anglatadi?$$,
 $$["Baxtli yulduzlar birlashuvi davrida tug'ilgan", "Buyuk sarkarda", "Adolatli hukmdor", "Jahon fotihi"]$$, 0,
 $$«Sohibqiron» — «baxtli yulduzlar birlashuvi davrida tug'ilgan» degan ma'noni anglatadi.$$),
((SELECT id FROM heroes WHERE slug = 'amir-temur'), NULL,
 $$Amir Temur Shahrisabzda qurdirgan mashhur saroy qaysi?$$,
 $$["Bibixonim", "Registon", "Oqsaroy", "Ark"]$$, 2,
 $$Shahrisabzdagi ulug'vor Oqsaroy saroyi peshtoqiga «Qudratimizni ko'rmoq istasang — binolarimizga boq» deb bitilgan.$$),
((SELECT id FROM heroes WHERE slug = 'amir-temur'), NULL,
 $$Ispaniyadan Amir Temur saroyiga kelgan mashhur elchi kim?$$,
 $$["Marko Polo", "Vasko da Gama", "Afanasiy Nikitin", "Rui Gonsales de Klavixo"]$$, 3,
 $$Ispaniya elchisi Klavixo Samarqandda mehmon bo'lib, safari haqida qimmatli kundalik qoldirgan.$$),
((SELECT id FROM heroes WHERE slug = 'amir-temur'), NULL,
 $$Amir Temur qachon va qayerda vafot etgan?$$,
 $$["1405-yilda O'trorda", "1449-yilda Samarqandda", "1501-yilda Hirotda", "1370-yilda Keshda"]$$, 0,
 $$Amir Temur 1405-yil fevralda Xitoyga yurish boshida O'tror shahrida vafot etgan va Go'ri Amirda dafn qilingan.$$);

-- ============ MIRZO ULUG'BEK (+5) ============

INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek'), NULL,
 $$Mirzo Ulug'bek qachon Samarqand taxtiga o'tirgan?$$,
 $$["1394-yilda", "1409-yilda", "1428-yilda", "1449-yilda"]$$, 1,
 $$Ulug'bek 1409-yildan Samarqand taxtiga o'tirib, Movarounnahrni qariyb qirq yil boshqargan.$$),
((SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek'), NULL,
 $$Ulug'bek rasadxonasining bosh asbobi nima edi?$$,
 $$["Teleskop", "Globus", "Radiusi 40 metrga yaqin ulkan sekstant", "Quyosh soati"]$$, 2,
 $$Rasadxonaning bosh asbobi — yer ostiga o'yilgan ulkan sekstant bo'lib, u yulduzlarni hayratlanarli aniqlikda kuzatish imkonini bergan.$$),
((SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek'), NULL,
 $$Ulug'bek hisoblagan yil uzunligi hozirgi o'lchovdan qancha farq qiladi?$$,
 $$["Atigi bir daqiqacha", "Bir soatcha", "Bir kuncha", "O'n kuncha"]$$, 0,
 $$Ulug'bek yil uzunligini 365 kun 6 soat 10 daqiqa 8 soniya deb hisoblagan — bu hozirgi o'lchovdan atigi bir daqiqacha farq qiladi.$$),
((SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek'), NULL,
 $$Ulug'bekning ustozi bo'lgan mashhur olim kim?$$,
 $$["Ibn Sino", "Beruniy", "Forobiy", "Qozizoda Rumiy"]$$, 3,
 $$Qozizoda Rumiy — Ulug'bekning ustozi; u rasadxonadagi olimlar davrasining yetakchilaridan edi.$$),
((SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek'), NULL,
 $$Mirzo Ulug'bek taqdiri qanday yakun topgan?$$,
 $$["Xitoy yurishida vafot etgan", "1449-yilda o'g'li fitnasi natijasida halok bo'lgan", "Hirotga ko'chib ketgan", "Taxtdan voz kechib olim bo'lgan"]$$, 1,
 $$1449-yilda Ulug'bek o'g'li Abdullatif fitnasi natijasida shahid bo'lgan; keyinchalik Go'ri Amirda dafn etilgan.$$);

-- ============ ALISHER NAVOIY (+5) ============

INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'alisher-navoiy'), NULL,
 $$Navoiy Husayn Boyqaro saltanatida qaysi yuksak lavozimda xizmat qilgan?$$,
 $$["Qozi", "Vazir", "Sarkarda", "Xazinachi"]$$, 1,
 $$Navoiy do'sti Husayn Boyqaro saltanatida avval muhrdor, so'ng vazir bo'lib, adolat uchun xizmat qilgan.$$),
((SELECT id FROM heroes WHERE slug = 'alisher-navoiy'), NULL,
 $$«Xazoyin ul-maoniy» nima?$$,
 $$["Tarixiy solnoma", "Beshta doston", "To'rt devondan iborat she'rlar xazinasi", "Lug'at kitobi"]$$, 2,
 $$«Xazoyin ul-maoniy» — Navoiy she'rlarini jamlagan to'rt devon; unda 45 mingdan ortiq misra bor.$$),
((SELECT id FROM heroes WHERE slug = 'alisher-navoiy'), NULL,
 $$Navoiy xalq uchun qancha inshoot qurdirgan?$$,
 $$["300 ga yaqin", "O'nta", "Ellikta", "Mingdan ortiq"]$$, 0,
 $$Navoiy daromadini xalqqa sarflab, 300 ga yaqin madrasa, masjid, shifoxona, hammom va ko'priklar qurdirgan.$$),
((SELECT id FROM heroes WHERE slug = 'alisher-navoiy'), NULL,
 $$«Lison ut-tayr» dostoni nima haqida?$$,
 $$["Buyuk jang haqida", "Yulduzlar ilmi haqida", "Ikki oshiq qissasi", "Haqiqatni izlagan qushlar qissasi"]$$, 3,
 $$«Lison ut-tayr» («Qushlar tili», 1499) — haqiqat izlab yo'lga chiqqan qushlar haqidagi falsafiy doston.$$),
((SELECT id FROM heroes WHERE slug = 'alisher-navoiy'), NULL,
 $$«Navoiy» taxallusi qaysi so'z bilan bog'liq?$$,
 $$["Nav — yangilik", "Navo — kuy", "Nur — yog'du", "Nasr — g'alaba"]$$, 1,
 $$Taxallus «navo» — kuy so'zidan olingan; forsiy she'rlarida esa shoir «Foniy» taxallusini qo'llagan.$$);
