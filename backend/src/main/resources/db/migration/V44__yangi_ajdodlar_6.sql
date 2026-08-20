-- Galereyaga yangi ajdodlar (6-partiya: Arablar davri).
-- Ma'lumotlar workflow agentlari tomonidan RUXSAT ETILGAN manbalardan
-- yig'ildi va mustaqil tekshiruvchi agent tomonidan qayta tekshirildi.
-- verified = TRUE — foydalanuvchi qarori (2026-08-01).
--
-- TEKSHIRUVCHI QAYDLARI (metodist uchun):
--   * VERIFIED (WebFetch, ziyouz.com Ismoil Somoniy maqolasi): 849-yil Farg'onada tug'ilgani va 907-yil Buxoroda vafot etgani manbada aynan shunday berilgan ('849-yil, Farg'ona – 907-yil
--   * VERIFIED (ziyouz.com): 893-yilda Movarounnahr noibi bo'lgani va o'sha yiliyoq Taroz yurishi ('U shu yiliyoq Taroz shahrini egallagan') tasdiqlandi. Narshaxiy guvohligi (30 yil hukm
--   * VERIFIED (WebSearch, uz manbalar): Muqanna qo'zg'oloni 769–783-yillar sanasi tasdiqlandi; 775-yilda xalifa Mansur Jabroil ibn Yahyo boshchiligida qo'shin yuborgani va uning mag'lub
--   * VERIFIED (WebSearch): Narshaxiy 899–959, 'Buxoro tarixi' 943–944-yillarda arab tilida yozilgani, Nuh ibn Nasrga (hukmronligi 943–954) bag'ishlangani va 1128-yilda al-Quboviy forsch
--   * CHANGED (ismoil-somoniy, fakt 2 va test 3-savol): 'Xalifa meni ... tayinlagan' iborasi yumshatildi ('Men avval Buxoro shahriga noib etib tayinlanganman') va savol 'Xalifa Ismoilni.
--   * CHANGED (ismoil-somoniy, notes): Safforiylar ustidan g'alaba yili haqiqatan bahsli ekani qo'shildi — ziyouz maqolasi 899 deydi, boshqa adabiyotlarda 900-yilgi Balx jangi; fakt kart
--   * CHANGED (muqanna, notes): metodist uchun izoh qo'shildi — xalifa Mansur 775-yilning o'zida vafot etgan va qo'zg'olonni bostirishni xalifa Mahdiy davom ettirgan (777-yil Nishopur); 
--   * DOUBT (muqanna): birth_year=719 darslikda 'taxm. 719' — taxminiy sana sifatida saqlandi (notes'da bor). Agar platforma taxminiy sanani ko'rsata olmasa, null qilish variantini metod
--   * DOUBT (narshaxiy): vafot yili hijriy 348 = milodiy 959–960; 959 qabul qilingan (notes'da bor). Test 10-savol javobi (959) faktlar bilan mos.
--   * CHECKED: barcha 30 ta test savoli faqat o'z qahramonining facts massividan javob topilishi tekshirildi — hammasi javob beriladi, correct_index'lar to'g'ri va 0–3 oralig'ida, har sa
--   * CHECKED: fakt sonlari (9/10/10) 6–10 oralig'ida, testlar aynan 10 tadan; barcha faktlar birinchi shaxsda; vafotlar bir quruq jumla bilan berilgan (Muqannada ikkinchi jumla vafot em
--   * CHECKED (dasturiy skan): butun batch matni kirill harflari ([Ѐ-ӿ], jumladan yo/yo') uchun Python regex bilan skan qilindi — birorta kirill belgisi topilmadi, tuzatish kerak bo'lmad

-- Afsonaviy qadimgi qahramonlarning yillari noma'lum — endi death_year ham
-- bo'sh bo'lishi mumkin. Interfeys yillar nishonini bunday holda yashiradi.
ALTER TABLE heroes ALTER COLUMN death_year DROP NOT NULL;

-- ===================== Ismoil Somoniy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'ismoil-somoniy', $$Ismoil Somoniy$$, $$Somoniylar davlati asoschisi$$, 849, 907, e.id,
       $$Ismoil Somoniy (849–907) — Somoniylar davlatining asoschisi, butun Movarounnahrni yagona kuchli davlatga birlashtirgan hukmdor. Uning poytaxti Buxoro shahri bo'lgan. Dono va adolatli boshqaruvi tufayli tarixda «amiri moziy» nomi bilan qolgan.$$, $$Assalomu alaykum, aziz do'stim! Men amir Ismoil Somoniy bo'laman. Mendan Buxoro, Movarounnahrning birlashishi, Taroz yurishi va Somoniylar davlati haqida bemalol so'rayvering!$$, $$👑$$, $$["ismoil somoniy", "somoniylar", "somonxudot", "buxoro", "movarounnahr", "xuroson", "taroz", "amiri moziy", "farg'ona", "amir"]$$::jsonb
  FROM eras e WHERE e.code = 'arab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 849-yilda Farg'onada tug'ilganman. Sulolamiz bobokalonimiz Somonxudot nomi bilan Somoniylar deb atalgan.$$, $$["tug'ilgan", "849", "farg'ona", "somonxudot", "somoniylar", "sulola"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Buxoro noibi$$, $$Men avval Buxoro shahriga noib etib tayinlanganman, 893-yildan esa butun Movarounnahrning noibi bo'lganman.$$, $$["buxoro", "noib", "movarounnahr", "893"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taroz yurishi$$, $$Men 893-yilda Taroz shahriga harbiy yurish qilib, g'alaba bilan qaytganman.$$, $$["taroz", "yurish", "893", "g'alaba", "qo'shin"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yagona davlat$$, $$Men butun Movarounnahrni birlashtirib, yagona kuchli davlat tuzganman. Davlatimning poytaxti Buxoro shahri edi.$$, $$["movarounnahr", "birlashtirish", "davlat", "poytaxt", "buxoro"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xuroson uchun kurash$$, $$Xuroson uchun bo'lgan kurashda safforiylar ustidan g'alaba qozonganman va shundan so'ng mustaqil hukmdorga aylanganman.$$, $$["xuroson", "safforiylar", "g'alaba", "mustaqil", "hukmdor"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Adolatli boshqaruv$$, $$Zamondoshlarim meni dono va adolatli hukmdor deb bilishgan: men olimu ulamolarga homiylik qilganman va ko'plab binolar qurdirganman.$$, $$["adolat", "dono", "ulamolar", "homiylik", "binolar", "qurilish"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Amiri moziy» laqabim$$, $$Keyingi avlodlar meni hurmat bilan «amiri moziy», ya'ni «o'tgan amir» deb atashgan.$$, $$["amiri moziy", "laqab", "hurmat", "o'tgan amir"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Narshaxiy guvohligi$$, $$Tarixchi Narshaxiy yozishicha, mening hukmronligim 30 yil davom etgan, shundan 20 yilida Xuroson amiri ham bo'lganman.$$, $$["narshaxiy", "tarixchi", "hukmronlik", "30 yil", "xuroson", "amir"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrim oxiri$$, $$Men 907-yilda poytaxtim Buxoro shahrida vafot etganman.$$, $$["vafot", "907", "buxoro", "umr"]$$::jsonb, $$Ziyouz.com portali, «O'zbekiston hukmdorlari: Ismoil Somoniy» maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'ismoil-somoniy';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Ismoil Somoniy qachon va qayerda tug'ilgan?$$,
 $$["893-yilda Samarqandda", "849-yilda Farg'onada", "849-yilda Buxoroda", "907-yilda Tarozda"]$$, 1,
 $$Ismoil Somoniy 849-yilda Farg'onada tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Somoniylar sulolasining nomi kimning nomidan olingan?$$,
 $$["Somonxudot", "Narshaxiy", "Nuh ibn Nasr", "Qutayba ibn Muslim"]$$, 0,
 $$Sulola bobokalon Somonxudot nomi bilan Somoniylar deb atalgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Ismoil dastlab qaysi shaharga noib etib tayinlangan?$$,
 $$["Samarqand", "Marv", "Buxoro", "Kesh"]$$, 2,
 $$Ismoil avval Buxoro shahriga noib etib tayinlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$893-yildan boshlab Ismoil qaysi hududning noibi bo'lgan?$$,
 $$["Movarounnahr", "Eron", "Iroq", "Xorazm"]$$, 0,
 $$893-yildan Ismoil butun Movarounnahrning noibi bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Ismoil 893-yilda qaysi shaharga harbiy yurish qilgan?$$,
 $$["Bag'dod", "Taroz", "Xiva", "Termiz"]$$, 1,
 $$893-yilda Ismoil Taroz shahriga yurish qilib, g'alaba qozongan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Ismoil Somoniy davlatining poytaxti qaysi shahar edi?$$,
 $$["Samarqand", "Farg'ona", "Toshkent", "Buxoro"]$$, 3,
 $$Somoniylar davlatining poytaxti Buxoro shahri bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Ismoil Xuroson uchun kurashda kimlar ustidan g'alaba qozongan?$$,
 $$["Qoraxoniylar", "G'aznaviylar", "Safforiylar", "Saljuqiylar"]$$, 2,
 $$Ismoil Xuroson uchun kurashda safforiylar ustidan g'alaba qozongan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Keyingi avlodlar Ismoilni qanday laqab bilan atashgan?$$,
 $$["«Amiri moziy»", "«Niqobdor»", "«Sohibqiron»", "«Amiri kabir»"]$$, 0,
 $$Uni hurmat bilan «amiri moziy», ya'ni «o'tgan amir» deb atashgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Narshaxiy yozishicha, Ismoilning hukmronligi necha yil davom etgan?$$,
 $$["10 yil", "50 yil", "20 yil", "30 yil"]$$, 3,
 $$Narshaxiy yozishicha, hukmronligi 30 yil davom etgan, shundan 20 yilida u Xuroson amiri ham bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ismoil-somoniy'), NULL,
 $$Ismoil Somoniy qachon va qayerda vafot etgan?$$,
 $$["907-yilda Buxoroda", "893-yilda Tarozda", "849-yilda Farg'onada", "959-yilda Marvda"]$$, 0,
 $$Ismoil Somoniy 907-yilda poytaxti Buxoroda vafot etgan.$$);

-- ===================== Muqanna =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'muqanna', $$Muqanna$$, $$«Oq kiyimlilar» qo'zg'oloni yo'lboshchisi$$, 719, 783, e.id,
       $$Muqanna (asl ismi Hoshim ibn Hakim) — VIII asrda Movarounnahrda arab xalifaligi zulmiga qarshi ko'tarilgan «Oq kiyimlilar» qo'zg'olonining yo'lboshchisi. Boshi va yuziga ko'k parda tutib yurgani uchun «Muqanna», ya'ni «Niqobdor» laqabini olgan. Qo'zg'olon 769–783-yillarda davom etgan.$$, $$Salom, yosh do'stim! Men Muqanna — «Oq kiyimlilar» harakatining yo'lboshchisiman. Mendan qo'zg'olonimiz, Som qal'asi va laqabimning siri haqida bemalol so'rashing mumkin!$$, $$🎭$$, $$["muqanna", "hoshim ibn hakim", "oq kiyimlilar", "niqobdor", "qo'zg'olon", "som qal'asi", "kesh", "qashqadaryo", "marv", "xalifalik"]$$::jsonb
  FROM eras e WHERE e.code = 'arab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Asl ismim$$, $$Mening asl ismim Hoshim ibn Hakim. Men Marv shahri yaqinidagi Koza qishlog'ida tug'ilganman va hunarmand bo'lganman.$$, $$["hoshim ibn hakim", "asl ism", "marv", "koza", "qishloq", "hunarmand"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Laqabimning siri$$, $$Boshim va yuzimga ko'k parda tutib yurganim uchun meni «Muqanna», ya'ni «Niqobdor» laqabi bilan atashgan.$$, $$["muqanna", "niqobdor", "laqab", "parda", "yuz"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bilimlarim$$, $$Tarixchi Narshaxiyning yozishicha, men ko'p o'qigan va g'oyat ziyrak odam bo'lganman, kimyogarlik ilmini o'rganganman hamda arab va fors tillarini yaxshi bilganman.$$, $$["narshaxiy", "ilm", "kimyogarlik", "arab tili", "fors tili", "ziyrak"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xurosondagi xizmatim$$, $$Men Xurosonda kichik lashkarboshilikdan vazirlik darajasigacha ko'tarilganman.$$, $$["xuroson", "lashkarboshi", "vazir", "martaba", "xizmat"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Oq kiyimlilar» qo'zg'oloni$$, $$Men 769–783-yillarda arab xalifaligi zulmiga qarshi katta xalq qo'zg'oloniga boshchilik qilganman. Tarafdorlarim oq libos kiyganlari uchun harakatimiz tarixda «Oq kiyimlilar» qo'zg'oloni deb ataladi.$$, $$["oq kiyimlilar", "qo'zg'olon", "769", "783", "xalifalik", "zulm", "oq libos"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Som qal'asi$$, $$Kesh yaqinidagi tog' tepasiga qurilgan Som qal'asini o'zimga qarorgoh qilganman. Tez orada butun Qashqadaryo vohasi qo'limizga o'tgan.$$, $$["som qal'asi", "kesh", "qarorgoh", "tog'", "qashqadaryo", "voha"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Harakatning kengayishi$$, $$Qo'zg'olonimiz ayniqsa Sug'dda avj olgan hamda Eloq (Ohangaron) vodiysi va Shoshga ham ta'sir o'tkazgan. Unda turli tabaqalarning vakillari qatnashgan.$$, $$["sug'd", "eloq", "ohangaron", "shosh", "kengayish", "tabaqalar"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ta'limotim$$, $$Men Mazdak g'oyalariga asoslangan, ijtimoiy tenglik va erkin hayotga da'vat etuvchi ta'limotni targ'ib qilganman.$$, $$["mazdak", "ta'limot", "ijtimoiy tenglik", "erkin hayot", "g'oya"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalifa qo'shinlariga qarshi$$, $$775-yilda xalifa Mansur bizga qarshi katta harbiy kuch yuborgan. Dastlabki to'qnashuvlarda arab qo'shinlari katta talafot ko'rib, Samarqandga chekingan.$$, $$["xalifa mansur", "775", "qo'shin", "jang", "samarqand", "chekinish"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Qo'zg'olon yakuni va xotiram$$, $$783-yilda Som qal'asidagi qarorgohim uzoq qamalga olingan va o'sha yili men halok bo'lganman. Xotiram adabiyotda yashaydi: Hamid Olimjon «Muqanna» dramasini, Sadriddin Ayniy «Muqanna isyoni» tarixiy-adabiy ocherkini yozgan.$$, $$["783", "qamal", "som qal'asi", "hamid olimjon", "sadriddin ayniy", "drama", "xotira"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017) va «O'zbekiston tarixi» 8-sinf darsligi$$, TRUE
  FROM heroes h WHERE h.slug = 'muqanna';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$Muqannaning asl ismi nima edi?$$,
 $$["Muhammad ibn Ja'far", "Hoshim ibn Hakim", "Nuh ibn Nasr", "Rofe ibn Lays"]$$, 1,
 $$Muqannaning asl ismi Hoshim ibn Hakim bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$«Muqanna» laqabi qanday ma'noni bildiradi?$$,
 $$["«Niqobdor»", "«Oq kiyimli»", "«Lashkarboshi»", "«Hunarmand»"]$$, 0,
 $$«Muqanna» so'zi «Niqobdor» degan ma'noni bildiradi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$Nega unga «Muqanna» laqabi berilgan?$$,
 $$["Oq libos kiygani uchun", "Tog'da yashagani uchun", "Boshi va yuziga ko'k parda tutib yurgani uchun", "Kimyogarlikni bilgani uchun"]$$, 2,
 $$U boshi va yuziga ko'k parda tutib yurgani uchun «Niqobdor» deb atalgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$Muqanna boshchiligidagi qo'zg'olon tarixda qanday nom bilan mashhur?$$,
 $$["«Qora kiyimlilar» qo'zg'oloni", "«Oq kiyimlilar» qo'zg'oloni", "«Tog'liklar» qo'zg'oloni", "«Niqobdorlar» yurishi"]$$, 1,
 $$Qo'zg'olonchilar oq libos kiyganlari uchun harakat «Oq kiyimlilar» qo'zg'oloni deb atalgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$«Oq kiyimlilar» qo'zg'oloni qaysi yillarda bo'lib o'tgan?$$,
 $$["720–740-yillarda", "806–810-yillarda", "849–907-yillarda", "769–783-yillarda"]$$, 3,
 $$Qo'zg'olon 769–783-yillarda davom etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$Muqanna qaysi qal'ani o'ziga qarorgoh qilgan?$$,
 $$["Som qal'asini", "Ark qal'asini", "Afrosiyob qal'asini", "Narshax qal'asini"]$$, 0,
 $$U Kesh yaqinidagi tog' tepasiga qurilgan Som qal'asini qarorgoh qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$Muqanna qayerda tug'ilgan?$$,
 $$["Buxoro yaqinidagi Narshax qishlog'ida", "Marv yaqinidagi Koza qishlog'ida", "Kesh shahrida", "Samarqandda"]$$, 1,
 $$Muqanna Marv shahri yaqinidagi Koza qishlog'ida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$775-yilda qo'zg'olonchilarga qarshi katta qo'shin yuborgan xalifa kim edi?$$,
 $$["Umar ibn Abdulaziz", "Ma'mun", "Mansur", "Horun"]$$, 2,
 $$775-yilda xalifa Mansur Movarounnahrga katta harbiy kuch yuborgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$Muqanna ta'limoti kimning g'oyalariga asoslangan edi?$$,
 $$["Mazdak g'oyalariga", "Zardusht g'oyalariga", "Suqrot g'oyalariga", "Konfutsiy g'oyalariga"]$$, 0,
 $$U Mazdak g'oyalariga asoslangan ijtimoiy tenglik ta'limotini targ'ib qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'muqanna'), NULL,
 $$Hamid Olimjon Muqanna jasoratiga bag'ishlab qanday asar yozgan?$$,
 $$["«Muqanna isyoni» ocherkini", "«Muqanna» dramasini", "«Buxoro tarixi» kitobini", "«Oq kiyimlilar» romanini"]$$, 1,
 $$Hamid Olimjon «Muqanna» dramasini, Sadriddin Ayniy esa «Muqanna isyoni» ocherkini yozgan.$$);

-- ===================== Abu Bakr Narshaxiy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'narshaxiy', $$Abu Bakr Narshaxiy$$, $$«Buxoro tarixi» muallifi$$, 899, 959, e.id,
       $$Abu Bakr Muhammad ibn Ja'far Narshaxiy (899–959) — Buxoro yaqinidagi Narshax qishlog'ida tug'ilgan tarixchi. U 943–944-yillarda arab tilida yozgan «Buxoro tarixi» asari O'rta Osiyoda mahalliy muallif tomonidan yaratilib, bizgacha to'liq yetib kelgan eng qadimgi tarixiy asar hisoblanadi.$$, $$Assalomu alaykum, aziz o'quvchi! Men tarixchi Narshaxiyman. Mendan «Buxoro tarixi» kitobim, qadimgi Buxoro hayoti va kitobimning ming yillik sarguzashtlari haqida so'rayvering!$$, $$📜$$, $$["narshaxiy", "buxoro tarixi", "narshax", "buxoro", "tarixchi", "nuh ibn nasr", "quboviy", "tarixi buxoro", "somoniylar", "kitob"]$$::jsonb
  FROM eras e WHERE e.code = 'arab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 899-yilda Buxoro yaqinidagi Narshax qishlog'ida tug'ilganman. «Narshaxiy» nisbam ana shu qishloq nomidan olingan.$$, $$["899", "narshax", "qishloq", "buxoro", "nisba", "tug'ilgan"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$To'la ismim$$, $$To'la ismim Abu Bakr Muhammad ibn Ja'far ibn Zakariyo ibn Xattob ibn Sharik bo'lib, u Sam'oniyning «Kitob ul-ansab» asarida saqlanib qolgan. O'sha asarda 899-yilda tug'ilib, 959-yilda vafot etganim ham qayd etilgan.$$, $$["abu bakr", "to'la ism", "sam'oniy", "kitob ul-ansab", "959", "vafot"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Buxoro tarixi» kitobim$$, $$Men 943–944-yillarda arab tilida «Buxoro tarixi» kitobini yozganman. Bu — O'rta Osiyoda mahalliy muallif tomonidan yozilib, bizgacha to'liq yetib kelgan eng qadimgi tarixiy asardir.$$, $$["buxoro tarixi", "943", "944", "arab tili", "eng qadimgi", "tarixiy asar"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kitobim kimga bag'ishlangan$$, $$Kitobimni somoniy hukmdor amir Nuh ibn Nasrga bag'ishlaganman.$$, $$["nuh ibn nasr", "bag'ishlov", "somoniylar", "amir", "hukmdor"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kitobimning mazmuni$$, $$Asarimda Buxoro shahri va qishloqlari, anhorlari, hukmdorlari, qozilari hamda xalq hayoti haqida hikoya qilganman. Unda arablar istilosi davri va Somoniylar tarixi ham yoritilgan.$$, $$["buxoro", "qishloqlar", "anhorlar", "hukmdorlar", "qozilar", "somoniylar", "mazmun"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Muqanna haqida yozganlarim$$, $$Kitobimda Muqanna boshchiligidagi «Oq kiyimlilar» qo'zg'oloni haqida ham batafsil ma'lumot berganman, jumladan 776-yilda o'z qishlog'im Narshax yonida bo'lgan jang tasvirlangan.$$, $$["muqanna", "oq kiyimlilar", "qo'zg'olon", "776", "narshax", "jang"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Fors tiliga tarjima$$, $$Kitobimning arab tilidagi asl nusxasi bizgacha yetib kelmagan. 1128-yilda asli Quva shahridan bo'lgan Abu Nasr Ahmad al-Quboviy uni fors tiliga tarjima qilgan va qisqartirgan.$$, $$["fors tili", "tarjima", "1128", "quboviy", "quva", "asl nusxa"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Keyingi tahrir$$, $$1178–1179-yillarda Muhammad ibn Zufar forscha tarjimani yana bir bor qisqartirib bayon qilgan. Shu tariqa kitobim asrlar davomida qayta ko'chirilib, avloddan avlodga o'tgan.$$, $$["muhammad ibn zufar", "1178", "1179", "tahrir", "qisqartirish", "qo'lyozma"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kitobimning nomlari$$, $$Kitobim turli nomlar bilan mashhur bo'lgan: «Tarixi Narshaxiy», «Tarixi Buxoro», «Tahqiq ul-viloyat» va «Axbori Buxoro». Hozirgi fanda «Buxoro tarixi» nomi qat'iy o'rnashgan.$$, $$["tarixi narshaxiy", "tarixi buxoro", "tahqiq ul-viloyat", "axbori buxoro", "nomlar"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Jahon e'tirofi$$, $$Kitobim 1892-yilda Parijda nashr etilgan, 1897-yilda Toshkentda rus tilida, 1954-yilda Kembrijda ingliz tilida, 1966-yilda esa A. Rasulev tarjimasida o'zbek tilida chop etilgan.$$, $$["parij", "1892", "toshkent", "kembrij", "1954", "1966", "tarjimalar", "nashr"]$$::jsonb, $$Abu Bakr Narshaxiy, «Buxoro tarixi» (A. Rasulev tarjimasi, muharrir so'zboshisi, 1966) — Ziyouz.com kutubxonasi$$, TRUE
  FROM heroes h WHERE h.slug = 'narshaxiy';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$Narshaxiy qayerda tug'ilgan?$$,
 $$["Samarqand shahrida", "Buxoro yaqinidagi Narshax qishlog'ida", "Marv yaqinidagi Koza qishlog'ida", "Quva shahrida"]$$, 1,
 $$U Buxoro yaqinidagi Narshax qishlog'ida tug'ilgan va nisbasi shu qishloq nomidan olingan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$Narshaxiyning mashhur asari qanday nomlanadi?$$,
 $$["«Buxoro tarixi»", "«Kitob ul-ansab»", "«Xazoin ul-ulum»", "«Muqanna isyoni»"]$$, 0,
 $$Narshaxiyning mashhur asari «Buxoro tarixi» deb nomlanadi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$Narshaxiy «Buxoro tarixi»ni dastlab qaysi tilda yozgan?$$,
 $$["Fors tilida", "O'zbek tilida", "Arab tilida", "Rus tilida"]$$, 2,
 $$Asar dastlab arab tilida yozilgan, forscha tarjimasi keyinroq paydo bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$«Buxoro tarixi» qaysi yillarda yozilgan?$$,
 $$["899–900-yillarda", "1128-yilda", "959–960-yillarda", "943–944-yillarda"]$$, 3,
 $$Narshaxiy kitobini 943–944-yillarda yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$Narshaxiy kitobini qaysi hukmdorga bag'ishlagan?$$,
 $$["Ismoil Somoniyga", "Amir Nuh ibn Nasrga", "Xalifa Mansurga", "Ahmad ibn Ismoilga"]$$, 1,
 $$Kitob somoniy hukmdor Nuh ibn Nasrga bag'ishlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$1128-yilda «Buxoro tarixi»ni fors tiliga kim tarjima qilgan?$$,
 $$["Abu Nasr Ahmad al-Quboviy", "Muhammad ibn Zufar", "A. Rasulev", "Sam'oniy"]$$, 0,
 $$1128-yilda asli Quva shahridan bo'lgan Abu Nasr Ahmad al-Quboviy asarni fors tiliga tarjima qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$Narshaxiyning to'la ismi qaysi asarda saqlanib qolgan?$$,
 $$["«Xazoin ul-ulum»da", "«Buxoro tarixi»da", "Sam'oniyning «Kitob ul-ansab» asarida", "«Axbori Buxoro»da"]$$, 2,
 $$Uning to'la ismi hamda tug'ilgan va vafot etgan yillari Sam'oniyning «Kitob ul-ansab» asarida qayd etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$«Buxoro tarixi»da qaysi xalq qo'zg'oloni haqida ma'lumot berilgan?$$,
 $$["Muqanna boshchiligidagi «Oq kiyimlilar» qo'zg'oloni", "Spartak qo'zg'oloni", "Dukchi Eshon qo'zg'oloni", "Jaloliddin Manguberdi kurashi"]$$, 0,
 $$Kitobda Muqanna boshchiligidagi «Oq kiyimlilar» qo'zg'oloni, jumladan 776-yilgi Narshax yonidagi jang tasvirlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$«Buxoro tarixi»ning inglizcha tarjimasi 1954-yilda qayerda nashr etilgan?$$,
 $$["Parijda", "Kembrijda", "Toshkentda", "Tehronda"]$$, 1,
 $$Inglizcha tarjimasi 1954-yilda Kembrijda nashr etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'narshaxiy'), NULL,
 $$Narshaxiy qachon vafot etgan?$$,
 $$["907-yilda", "899-yilda", "959-yilda", "1128-yilda"]$$, 2,
 $$Sam'oniyning yozishicha, Narshaxiy 959-yilda vafot etgan.$$);
