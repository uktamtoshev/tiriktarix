-- Galereyaga yangi ajdodlar (7-partiya: Qadimgi va Antik davr).
-- Ma'lumotlar workflow agentlari tomonidan RUXSAT ETILGAN manbalardan
-- yig'ildi va mustaqil tekshiruvchi agent tomonidan qayta tekshirildi.
-- verified = TRUE — foydalanuvchi qarori (2026-08-01).
--
-- TEKSHIRUVCHI QAYDLARI (metodist uchun):
--   * FIXED (factual error): Shiroq — Poliyen (Polyaenus) yashagan davr «miloddan avvalgi II asr» deb noto'g'ri berilgan edi; u milodiy II asrda yashagan (Strategemata ~162-yilda, Mark A
--   * VERIFIED (unchanged): To'maris/Kir II mil. avv. 530-yil yurishi va Kir II ning jangda halok bo'lishi Ziyouz.com «To'maris» maqolasi bilan tasdiqlandi.
--   * VERIFIED (unchanged): Iskandar Maqduniyning mil. avv. 329-yilda Amudaryodan o'tishi va Spitamenning mil. avv. 328-yil kuzida halok bo'lishi (death_year=-328) mustaqil manbalarda ta
--   * VERIFIED (unchanged): Bumin 552-yilda «xoqon» deb e'lon qilingani tasdiqlandi.
--   * VERIFIED (unchanged): Eftallar davlatining 563–567-yillarda barham topishi va Amudaryoning o'ng sohilidan Kaspiygacha bo'lgan yerlarning Turk xoqonligiga o'tishi tasdiqlandi. Eslat
--   * VERIFIED (unchanged): «Avesto»ning ilk qismi mil. avv. IX–VIII asrlarda paydo bo'lgani va 21 kitobga jamlangani tasdiqlandi.
--   * FIXED (grammar, quiz distractors): Zardusht viktorinasida «Quyosh va oy faqat» → «Faqat quyosh va oy» (Q4) va «Mehrjon faqat» → «Mehrjon» (Q10) deb tuzatildi; javoblar o'zgarmadi.
--   * FIXED (consistency): Bumin viktorinasi Q5 izohidan faktlar massivida bo'lmagan «imperator» so'zi olib tashlandi; Istami viktorinasi Q8 izohi faktlarda bo'lmagan «janubdan Eron, shi
--   * CHECKED (quiz answerability): Barcha 7 qahramonning 70 ta viktorina savoli tekshirildi — Poliyen savolidan tashqari hammasi o'z faktlar massividan to'liq javob topadi; tuzatishdan 
--   * CHECKED (structure): Faktlar soni: To'maris 9, Shiroq 9, Zardusht 10, Spitamen 10, Kanishka 10, Bumin 8, Istami 8 — hammasi 6-10 oralig'ida; har birida aynan 10 viktorina savoli.
--   * CHECKED (style): Faktlar birinchi shaxsda; o'limlar bir quruq jumlada (Shiroq, Spitamen; Kir II haqidagi jumla ham quruq); afsonaviy tafsilotlar «rivoyatga ko'ra» bilan belgilangan
--   * CHECKED (Cyrillic): Matnlar kirill harflariga (a-ya, yo) tekshirildi — topilmadi; « » qo'shtirnoqlari punktuatsiya bo'lib, saqlab qolindi. Eslatma: gomoglif (ko'rinishi bir xil kir
--   * REMAINING DOUBT: Bumin (552) va Istami (576) vafot yillari adabiyotlarda uchraydi, ammo ruxsat etilgan manbalarda tasdiqlanmagani uchun null qoldirildi — metodist xohlasa qo'shimch
--   * REMAINING DOUBT: Kanishka hukmronlik yillari (taxm. milodiy 127–150) olimlar orasida bahsli — null saqlandi, asr biografiyada berildi.
--   * REMAINING DOUBT: To'maris Ziyouz maqolasida dastlabki g'alaba o'g'li Sparangiz qo'mondonligida bo'lgani aytiladi; bolalar kartochkasida bu ataylab umumlashtirilgan («xalqimning qo'

-- ===================== To'maris =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'tomaris', $$To'maris$$, $$Massagetlar malikasi$$, NULL, NULL, e.id,
       $$To'maris — miloddan avvalgi VI asrda yashagan massagetlar malikasi. Fors shohi Kir II yurtiga bostirib kirganida, u boshchiligidagi jangchilar bosqinchilarni tor-mor etgan. Uning nomi vatan himoyasi ramziga aylangan.$$, $$Salom! Men To'maris — massagetlar malikasiman. Mendan xalqim, fors shohi Kir II bilan bo'lgan jang va vatan himoyasi haqida bemalol so'rashingiz mumkin!$$, $$👑$$, $$["to'maris", "tomaris", "massagetlar", "malika", "kir ii", "gerodot", "turon", "amudaryo", "qizilqum", "vatan himoyasi"]$$::jsonb
  FROM eras e WHERE e.code = 'qadimgi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kimman?$$, $$Men To'marisman — qadimgi massagetlar xalqining malikasiman, miloddan avvalgi VI asrda Turon zaminida yashaganman.$$, $$["massagetlar", "malika", "turon"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalqim$$, $$Xalqim — massagetlar Amudaryo bo'ylari va Qizilqum sahrolarida yashagan erkin ko'chmanchi xalq bo'lgan.$$, $$["massagetlar", "amudaryo", "qizilqum"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Malika bo'lishim$$, $$Rivoyatga ko'ra, turmush o'rtog'im vafotidan keyin xalqimga o'zim boshchilik qila boshlaganman.$$, $$["malika", "boshchilik"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kir II bosqini$$, $$Miloddan avvalgi 530-yilda fors shohi Kir II ulkan lashkar bilan massagetlar ustiga yurish qilgan.$$, $$["kir ii", "forslar", "530-yil"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tinchlik taklifim$$, $$Rivoyatga ko'ra, men Kir II ga urushsiz, tinch-omon ortiga qaytib ketishni taklif qilganman, ammo shoh bu taklifni rad etgan.$$, $$["tinchlik", "taklif", "kir ii"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Gerodot guvohligi$$, $$Men haqimdagi voqealarni «tarix otasi» deb atalgan qadimgi yunon tarixchisi Gerodot yozib qoldirgan.$$, $$["gerodot", "tarix otasi", "yunon"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Buyuk jang$$, $$Gerodot bu jangni «barcha janglardan ham dahshatliroq» deb ta'riflagan — uzoq davom etgan jangda xalqimning qo'li baland kelgan.$$, $$["jang", "g'alaba", "gerodot"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bosqin yakuni$$, $$Bosqinchi shoh Kir II o'sha jang maydonida halok bo'lgan.$$, $$["kir ii", "jang maydoni"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xotiram$$, $$Bugun mening nomim vatan himoyasi va jasorat ramziga aylangan.$$, $$["vatan himoyasi", "jasorat", "ramz"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; Ziyouz.com «To'maris» maqolasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'tomaris';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$To'maris qaysi xalqning malikasi bo'lgan?$$,
 $$["So'g'dlar", "Forslar", "Massagetlar", "Yunonlar"]$$, 2,
 $$To'maris massagetlar xalqining malikasi bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$Massagetlar asosan qayerlarda yashagan?$$,
 $$["Amudaryo bo'ylari va Qizilqumda", "Oltoy tog'larida", "Kaspiy ortida", "Hindistonda"]$$, 0,
 $$Massagetlar Amudaryo bo'ylari va Qizilqum sahrolarida yashagan ko'chmanchi xalq edi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$To'maris yurtiga qaysi fors shohi bostirib kirgan?$$,
 $$["Doro I", "Kir II", "Doro III", "Xusrav I"]$$, 1,
 $$Massagetlar yurtiga fors shohi Kir II bostirib kirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$Kir II massagetlar ustiga qachon yurish qilgan?$$,
 $$["Mil. avv. 329-yilda", "Mil. avv. 522-yilda", "Milodiy 530-yilda", "Mil. avv. 530-yilda"]$$, 3,
 $$Bu yurish miloddan avvalgi 530-yilda bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$Rivoyatga ko'ra, To'maris jangdan oldin Kir II ga nima taklif qilgan?$$,
 $$["Katta boylik berishni", "Tinch-omon qaytib ketishni", "Birga yurish qilishni", "Shaharlarini topshirishni"]$$, 1,
 $$To'maris shohga urushsiz, tinch-omon ortiga qaytishni taklif qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$To'maris haqidagi voqealarni qaysi tarixchi yozib qoldirgan?$$,
 $$["Poliyen", "Aristotel", "Gerodot", "Behistun"]$$, 2,
 $$Bu voqealarni qadimgi yunon tarixchisi Gerodot hikoya qilib bergan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$Gerodot qanday faxriy nom bilan mashhur?$$,
 $$["«Tarix otasi»", "«Sharq donishmandi»", "«Yulduzlar ustozi»", "«Buyuk sayyoh»"]$$, 0,
 $$Gerodot «tarix otasi» deb ataladi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$Massagetlar bilan forslar jangi qanday yakunlangan?$$,
 $$["Forslar g'alaba qozongan", "Jang durang tugagan", "Massagetlar g'alaba qozongan", "Jang bo'lmagan"]$$, 2,
 $$Uzoq jangda massagetlarning qo'li baland kelib, Kir II jang maydonida halok bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$To'maris qaysi davrda yashagan?$$,
 $$["Mil. avv. VI asrda", "Milodiy VI asrda", "Mil. avv. I asrda", "Milodiy III asrda"]$$, 0,
 $$To'maris miloddan avvalgi VI asrda yashagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'tomaris'), NULL,
 $$Bugungi kunda To'maris nomi nimaning ramzi hisoblanadi?$$,
 $$["Savdo-sotiqning", "Vatan himoyasi va jasoratning", "Ilm-fanning", "Dehqonchilikning"]$$, 1,
 $$To'maris nomi vatan himoyasi va jasorat ramziga aylangan.$$);

-- ===================== Shiroq =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'shiroq', $$Shiroq$$, $$Fidoyi sak cho'poni$$, NULL, NULL, e.id,
       $$Shiroq — sak qabilasidan chiqqan cho'pon. Fors shohi Doro I qo'shini yurtga bostirib kirganida, u yo'l ko'rsatuvchi qiyofasida dushmanni ataylab suvsiz sahroga boshlab borgan va vatani uchun jonini fido qilgan. Uning jasorati haqidagi rivoyatni tarixchi Poliyen yozib qoldirgan.$$, $$Assalomu alaykum! Men Shiroqman — oddiy sak cho'poniman. Mendan saklar, Doro I qo'shini va sahrodagi jasoratim haqida so'rang!$$, $$🐑$$, $$["shiroq", "sak", "saklar", "cho'pon", "doro i", "forslar", "sahro", "poliyen", "behistun", "jasorat"]$$::jsonb
  FROM eras e WHERE e.code = 'qadimgi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kimman?$$, $$Men Shiroqman — sak qabilasidan chiqqan oddiy cho'ponman.$$, $$["sak", "cho'pon"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalqim — saklar$$, $$Xalqim jasur chorvadorlar bo'lgan; Behistun qoyatosh bitiklarida saklar «uchi o'tkir kuloh kiyib yuruvchi» xalq deb ta'riflangan.$$, $$["saklar", "behistun", "kuloh"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Doro I yurishi$$, $$Fors shohi Doro I o'z hukmronligining uchinchi yilida saklar yurtiga qo'shin tortgan.$$, $$["doro i", "forslar", "yurish"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Rejam$$, $$Rivoyatga ko'ra, men forslar qoshiga yo'l ko'rsatuvchi qiyofasida borib, ularni saklarning orqa tomoniga olib borishni va'da qilganman.$$, $$["yo'l ko'rsatuvchi", "reja"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Sahroga yo'l$$, $$Rivoyatga ko'ra, men dushman qo'shinini faqat o'zim biladigan so'qmoq orqali suvsiz cho'lu biyobonga boshlab borganman.$$, $$["sahro", "so'qmoq", "suvsiz cho'l"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yetti kunlik yo'l$$, $$Rivoyatga ko'ra, biz suvsiz sahro bo'ylab yetti kun yo'l bosganmiz — shundan keyingina forslar aldanganini sezib qolgan.$$, $$["yetti kun", "sahro", "forslar"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Fidoyilik$$, $$Men vatanim ozodligi uchun jonimni fido qilganman.$$, $$["vatan", "fidoyilik"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Natija$$, $$Mening jasoratim tufayli Doro I ning saklar ustiga yurishi muvaffaqiyatsiz tugagan.$$, $$["doro i", "muvaffaqiyatsiz", "g'alaba"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Rivoyat manbasi$$, $$Men haqimdagi rivoyatni milodiy II asrda yashagan tarixchi Poliyen saklar rivoyatlariga asoslanib yozib qoldirgan.$$, $$["poliyen", "rivoyat", "tarixchi"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'shiroq';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Shiroq kim bo'lgan?$$,
 $$["Sarkarda", "Cho'pon", "Savdogar", "Kohin"]$$, 1,
 $$Shiroq sak qabilasidan chiqqan oddiy cho'pon bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Shiroq qaysi qabiladan edi?$$,
 $$["Saklar", "Massagetlar", "So'g'dlar", "Eftallar"]$$, 0,
 $$Shiroq sak qabilasidan chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Saklar yurtiga qaysi fors shohi qo'shin tortgan?$$,
 $$["Kir II", "Doro III", "Doro I", "Xusrav I"]$$, 2,
 $$Saklar ustiga Doro I hukmronligining uchinchi yilida yurish qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Shiroq forslar oldiga qanday qiyofada borgan?$$,
 $$["Savdogar qiyofasida", "Elchi qiyofasida", "Jangchi qiyofasida", "Yo'l ko'rsatuvchi qiyofasida"]$$, 3,
 $$Rivoyatga ko'ra, Shiroq forslarga yo'l ko'rsatuvchi bo'lib borgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Shiroq fors qo'shinini qayerga boshlab borgan?$$,
 $$["Suvsiz sahroga", "Tog' qal'asiga", "Daryo bo'yiga", "Poytaxt shahariga"]$$, 0,
 $$U dushmanni ataylab suvsiz cho'lu biyobonga boshlab borgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Rivoyatga ko'ra, forslar sahro bo'ylab necha kun yo'l bosgan?$$,
 $$["Uch kun", "Yetti kun", "O'n kun", "Bir oy"]$$, 1,
 $$Ular suvsiz sahroda yetti kun yurganidan keyin aldanganini sezgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Shiroq haqidagi rivoyatni kim yozib qoldirgan?$$,
 $$["Gerodot", "Aristotel", "Poliyen", "Strabon"]$$, 2,
 $$Bu rivoyatni tarixchi Poliyen saklar rivoyatlariga asoslanib keltirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Tarixchi Poliyen qachon yashagan?$$,
 $$["Mil. avv. VI asrda", "Milodiy II asrda", "Mil. avv. II asrda", "Milodiy X asrda"]$$, 1,
 $$Poliyen milodiy II asrda yashagan tarixchi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Doro I ning saklar ustiga yurishi qanday tugagan?$$,
 $$["To'liq g'alaba bilan", "Sulh bilan", "Muvaffaqiyatsiz tugagan", "Saklar taslim bo'lgan"]$$, 2,
 $$Shiroq jasorati tufayli yurish muvaffaqiyatsiz tugagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'shiroq'), NULL,
 $$Behistun bitiklarida saklar qanday ta'riflangan?$$,
 $$["«Daryo bo'yida yashovchilar»", "«Uchi o'tkir kuloh kiyib yuruvchilar»", "«Oltin qazuvchilar»", "«Ot minmaydigan xalq»"]$$, 1,
 $$Behistun bitiklarida saklar «uchi o'tkir kuloh kiyib yuruvchi» xalq deyilgan.$$);

-- ===================== Zardusht =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'zardusht', $$Zardusht$$, $$Zardushtiylik dini asoschisi$$, NULL, NULL, e.id,
       $$Zardusht — zardushtiylik dinining asoschisi, miloddan avvalgi 1-ming yillikning birinchi yarmida yashab o'tgan tarixiy shaxs. Uning ta'limotida ezgu fikr, ezgu so'z va ezgu amal bosh qoida bo'lgan. Zardushtiylikning muqaddas kitobi «Avesto» deb ataladi.$$, $$Salom, do'stim! Men Zardushtman. Mendan «Avesto», ezgu fikr, ezgu so'z va ezgu amal haqida, qadimgi e'tiqodlar va Navro'z ildizlari haqida so'rashingiz mumkin!$$, $$🔥$$, $$["zardusht", "zaratushtra", "zoroastr", "avesto", "zardushtiylik", "ahuramazda", "xorazm", "navro'z", "ezgu fikr", "payg'ambar"]$$::jsonb
  FROM eras e WHERE e.code = 'qadimgi';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kimman?$$, $$Men Zardushtman — zardushtiylik dinining asoschisiman; ismim turli tillarda Zaratushtra va Zoroastr shakllarida ham aytiladi.$$, $$["zardusht", "zaratushtra", "zoroastr"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yashagan davrim$$, $$Men miloddan avvalgi 1-ming yillikning birinchi yarmida yashab o'tgan tarixiy shaxsman.$$, $$["mil. avv.", "tarixiy shaxs"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xorazm bilan bog'liqlik$$, $$Ko'plab olimlar «Avesto»ning eng qadimgi qismlari Xorazm vohasida vujudga kelgan deb hisoblaydi.$$, $$["avesto", "xorazm", "olimlar"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Payg'ambarlik$$, $$Rivoyatga ko'ra, men 30 yoshimda yangi diniy ta'limot payg'ambariga aylanganman; «payg'ambar» so'zi «ezgu amallar haqida xabar beruvchi» degan ma'noni anglatadi.$$, $$["payg'ambar", "30 yosh", "rivoyat"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bosh qoida$$, $$Ta'limotimning bosh qoidasi uchta: ezgu fikr, ezgu so'z va ezgu amal.$$, $$["ezgu fikr", "ezgu so'z", "ezgu amal"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Muqaddas unsurlar$$, $$Dinimizda olov, suv, tuproq va havo muqaddas sanalgan.$$, $$["olov", "suv", "tuproq", "havo"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Avesto» kitobi$$, $$Vafotimdan keyin va'zlarim, madhiyalar va duolar «Avesto» kitobiga jamlangan; bu nom «qat'iy belgilangan qonun-qoidalar» degan ma'noni anglatadi.$$, $$["avesto", "kitob", "ma'no"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Avesto» tarixi$$, $$«Avesto»ning ilk qismi miloddan avvalgi IX–VIII asrlarda paydo bo'lgan, keyinchalik barcha matnlar 21 ta kitobga jamlangan.$$, $$["avesto", "ix-viii asrlar", "21 kitob"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yunonlar nazarida$$, $$Yunonlar meni birinchi galda donishmand va munajjim sifatida bilishgan, shu bois ismimni «Zoroastr» deb ataganlar.$$, $$["yunonlar", "zoroastr", "munajjim"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Navro'z ildizlari$$, $$Navro'z bayramining ildizlari ham ana shu qadimgi davrga borib taqaladi.$$, $$["navro'z", "bayram", "ildizlar"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'zardusht';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$Zardusht qaysi dinning asoschisi?$$,
 $$["Buddaviylik", "Zardushtiylik", "Moniylik", "Shomonlik"]$$, 1,
 $$Zardusht zardushtiylik dinining asoschisidir.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$Zardushtiylikning muqaddas kitobi qanday ataladi?$$,
 $$["«Zand»", "«Behistun»", "«Avesto»", "«Vedalar»"]$$, 2,
 $$Zardushtiylikning muqaddas kitobi «Avesto» deb ataladi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$Zardusht ta'limotining bosh qoidasi nima?$$,
 $$["Ezgu fikr, ezgu so'z, ezgu amal", "Kuch, boylik, shuhrat", "Ilm, hunar, savdo", "Ov, jang, bayram"]$$, 0,
 $$Ta'limotning bosh qoidasi ezgu fikr, ezgu so'z va ezgu amaldir.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$Zardushtiylikda nimalar muqaddas sanalgan?$$,
 $$["Oltin va kumush", "Olov, suv, tuproq va havo", "Tog' va o'rmon", "Faqat quyosh va oy"]$$, 1,
 $$Zardushtiylikda olov, suv, tuproq va havo muqaddas sanalgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$«Avesto» so'zi qanday ma'noni anglatadi?$$,
 $$["«Muqaddas olov»", "«Ezgu yo'l»", "«Yulduzlar kitobi»", "«Qat'iy belgilangan qonun-qoidalar»"]$$, 3,
 $$«Avesto» nomi «qat'iy belgilangan qonun-qoidalar» degan ma'noni anglatadi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$Ko'plab olimlar «Avesto»ning eng qadimgi qismlari qayerda yaratilgan deb hisoblaydi?$$,
 $$["Xorazm vohasida", "Yunonistonda", "Hindistonda", "Misrda"]$$, 0,
 $$Olimlar «Avesto»ning eng qadimgi qismlari Xorazm vohasida vujudga kelgan deb hisoblaydi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$Rivoyatga ko'ra, Zardusht necha yoshida payg'ambarga aylangan?$$,
 $$["20 yoshida", "40 yoshida", "30 yoshida", "50 yoshida"]$$, 2,
 $$Rivoyatga ko'ra, Zardusht 30 yoshida payg'ambarga aylangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$Yunonlar Zardushtni qanday nom bilan ataganlar?$$,
 $$["Gerodot", "Zoroastr", "Poliyen", "Aristotel"]$$, 1,
 $$Yunonistonda Zardusht ismi «Zoroastr» shaklida jaranglagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$«Avesto»ning ilk qismi qachon paydo bo'lgan?$$,
 $$["Milodiy I asrda", "Mil. avv. III asrda", "Milodiy VIII asrda", "Mil. avv. IX–VIII asrlarda"]$$, 3,
 $$«Avesto»ning ilk qismi miloddan avvalgi IX–VIII asrlarda paydo bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'zardusht'), NULL,
 $$Qaysi bayramning ildizlari zardushtiylik davriga borib taqaladi?$$,
 $$["Navro'z", "Mehrjon", "Hosil bayrami", "Yangi yil"]$$, 0,
 $$Navro'z bayramining ildizlari ana shu qadimgi davrga borib taqaladi.$$);

-- ===================== Spitamen =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'spitamen', $$Spitamen$$, $$So'g'd sarkardasi$$, NULL, -328, e.id,
       $$Spitamen — Iskandar Maqduniy bosqiniga qarshi kurashgan so'g'd sarkardasi. U so'g'diylar, baqtriyaliklar va saklarni birlashtirib, bosqinchilarga uch yil davomida qattiq qarshilik ko'rsatgan. Miloddan avvalgi 328-yilda halok bo'lgan.$$, $$Salom! Men Spitamenman — So'g'diyona sarkardasiman. Mendan Iskandar Maqduniy bosqini, Maroqanda qamali va xalqimning uch yillik kurashi haqida so'rang!$$, $$⚔️$$, $$["spitamen", "spitaman", "so'g'diyona", "iskandar maqduniy", "aleksandr", "maroqanda", "samarqand", "politimet", "zarafshon", "qo'zg'olon"]$$::jsonb
  FROM eras e WHERE e.code = 'antik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kimman?$$, $$Men Spitamenman — So'g'diyonaning iste'dodli tashkilotchisi va harbiy yo'lboshchisiman; manbalarda ismim Spitaman shaklida ham uchraydi.$$, $$["spitamen", "so'g'diyona", "sarkarda"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Iskandar bosqini$$, $$Miloddan avvalgi 329-yilda Iskandar Maqduniy qo'shinlari Amudaryodan o'tib, Movarounnahrga bostirib kirgan.$$, $$["iskandar maqduniy", "329-yil", "amudaryo"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Maroqanda$$, $$O'sha yili yunon-makedon qo'shinlari Maroqandani — hozirgi Samarqandni egallagan.$$, $$["maroqanda", "samarqand", "bosqin"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xalqlarni birlashtirish$$, $$Men bosqinchilarga qarshi qo'zg'olonda so'g'diylar, baqtriyaliklar va saklarni birlashtirganman.$$, $$["so'g'diylar", "baqtriyaliklar", "saklar"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Qamal$$, $$Ancha qo'shin to'plab, dushman qo'lidagi Maroqandani qamal qilganman.$$, $$["qamal", "maroqanda", "qo'shin"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Politimet jangi$$, $$Politimet — hozirgi Zarafshon daryosi bo'yida pistirma qo'yib, Iskandar yordamga yuborgan uch mingga yaqin jangchidan iborat qo'shinni tor-mor etganman.$$, $$["politimet", "zarafshon", "pistirma"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Uch yillik kurash$$, $$Xalqim mening boshchiligimda bosqinchilarga uch yil davomida qattiq qarshilik ko'rsatgan.$$, $$["uch yil", "qarshilik", "kurash"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Sulhni rad etishim$$, $$Iskandar menga sulh taklif qilgan, ammo men vatanimni dushmanga topshirishdan bosh tortganman.$$, $$["sulh", "rad", "vatan"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$So'nggi jang$$, $$Miloddan avvalgi 328-yil kuzida kuchlar teng bo'lmagan hal qiluvchi jangdan so'ng cho'lga chekindim va o'sha yerda xoinlar qo'lida halok bo'ldim.$$, $$["328-yil", "halok", "so'nggi jang"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Qizim Apama$$, $$Qizim Apama yunon lashkarboshisi Salavkka turmushga chiqqan — ulardan podsho Antiox I dunyoga kelgan.$$, $$["apama", "salavk", "antiox"]$$::jsonb, $$«O'zbekiston tarixi» 6-sinf darsligi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); A. Berdimurodov maqolasi (Ziyouz.com)$$, TRUE
  FROM heroes h WHERE h.slug = 'spitamen';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Spitamen qaysi o'lkaning sarkardasi bo'lgan?$$,
 $$["Xorazm", "So'g'diyona", "Marg'iyona", "Parfiya"]$$, 1,
 $$Spitamen So'g'diyona sarkardasi va harbiy yo'lboshchisi bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Iskandar Maqduniy Movarounnahrga qachon bostirib kirgan?$$,
 $$["Mil. avv. 329-yilda", "Mil. avv. 530-yilda", "Mil. avv. 323-yilda", "Milodiy 329-yilda"]$$, 0,
 $$Iskandar Maqduniy miloddan avvalgi 329-yilda Amudaryodan o'tib bostirib kirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Maroqanda hozirgi qaysi shahar?$$,
 $$["Buxoro", "Termiz", "Samarqand", "Xo'jand"]$$, 2,
 $$Maroqanda — hozirgi Samarqand shahridir.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Spitamen qo'zg'olonda kimlarni birlashtirgan?$$,
 $$["Faqat so'g'diylarni", "Forslar va yunonlarni", "Eftallar va turklarni", "So'g'diylar, baqtriyaliklar va saklarni"]$$, 3,
 $$Spitamen so'g'diylar, baqtriyaliklar va saklarni bosqinchilarga qarshi birlashtirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Spitamen qaysi daryo bo'yida pistirma qo'ygan?$$,
 $$["Politimet (Zarafshon)", "Amudaryo", "Sirdaryo", "Murg'ob"]$$, 0,
 $$U Politimet — hozirgi Zarafshon daryosi bo'yida pistirma qo'ygan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Politimet bo'yidagi pistirmada qancha dushman qo'shini tor-mor etilgan?$$,
 $$["Yuzga yaqin", "Uch mingga yaqin", "O'n mingga yaqin", "Bir million"]$$, 1,
 $$Iskandar yuborgan uch mingga yaqin jangchidan iborat qo'shin tor-mor etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Xalq Spitamen boshchiligida necha yil qarshilik ko'rsatgan?$$,
 $$["Bir yil", "O'n yil", "Uch yil", "Yigirma yil"]$$, 2,
 $$Xalq bosqinchilarga uch yil davomida qattiq qarshilik ko'rsatgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Iskandar sulh taklif qilganda Spitamen nima qilgan?$$,
 $$["Sulhni qabul qilgan", "Iskandarga xizmatga o'tgan", "Yurtni tark etgan", "Vatanni topshirishdan bosh tortgan"]$$, 3,
 $$Spitamen vatanini dushmanga topshirishdan bosh tortib, kurashni davom ettirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Spitamen qachon halok bo'lgan?$$,
 $$["Mil. avv. 328-yilda", "Mil. avv. 336-yilda", "Mil. avv. 323-yilda", "Mil. avv. 300-yilda"]$$, 0,
 $$Spitamen miloddan avvalgi 328-yil kuzida halok bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'spitamen'), NULL,
 $$Spitamenning qizi kimga turmushga chiqqan?$$,
 $$["Iskandarga", "Salavkka", "Bessga", "Doro III ga"]$$, 1,
 $$Qizi Apama yunon lashkarboshisi Salavkka turmushga chiqqan.$$);

-- ===================== Kanishka =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'kanishka', $$Kanishka$$, $$Kushon saltanati hukmdori$$, NULL, NULL, e.id,
       $$Kanishka — milodiy I–III asrlarda hukm surgan qudratli Kushon saltanatining eng mashhur hukmdori. Uning davrida saltanat o'z taraqqiyotining cho'qqisiga chiqqan, yangi shaharlar qurilgan va buddaviylik dini keng tarqalgan. Kushon davlati Rim, Parfiya va Xitoy qatorida zamonasining ulkan podsholiklaridan biri bo'lgan.$$, $$Salom! Men Kanishkaman — Kushon saltanati hukmdoriman. Mendan Kushon davlati, buddaviylik, Termiz ibodatxonalari va qadimgi savdo yo'llari haqida so'rashingiz mumkin!$$, $$🪙$$, $$["kanishka", "kushon", "kushonlar", "peshovar", "buddaviylik", "termiz", "fayoztepa", "qoratepa", "dalvarzintepa", "tanga"]$$::jsonb
  FROM eras e WHERE e.code = 'antik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kimman?$$, $$Men Kanishkaman — Kushon podsholigining hukmdoriman; saltanatim davrida hozirgi O'zbekiston janubi ham davlatim tarkibida bo'lgan.$$, $$["kanishka", "kushon", "hukmdor"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Saltanat davri$$, $$Kushon davlati milodiy I asrdan III asrgacha hukm surgan; mening davrimda u o'z taraqqiyotining cho'qqisiga erishgan.$$, $$["i-iii asrlar", "cho'qqi", "taraqqiyot"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Poytaxt$$, $$Men poytaxtni Baqtriyadan Peshovar shahriga (hozirgi Pokiston hududi) ko'chirganman.$$, $$["peshovar", "poytaxt", "baqtriya"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Saltanat hududi$$, $$Davlatim hududiga Hindiston, Xo'tan, Afg'oniston va O'zbekiston janubigacha bo'lgan yerlar kirgan.$$, $$["hindiston", "xo'tan", "afg'oniston"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Buyuk davlatlar qatorida$$, $$Rim, Parfiya va Xitoy davlatlari qatorida Kushon davlati ham zamonasining ulkan podsholiklaridan biriga aylangan.$$, $$["rim", "parfiya", "xitoy"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Savdo va elchilik$$, $$Mening davrimda yangi-yangi shaharlar bunyod etilib, Hindiston, Xitoy va Rim imperiyasi bilan savdo va elchilik munosabatlari yo'lga qo'yilgan.$$, $$["savdo", "elchilik", "shaharlar"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Buddaviylik$$, $$Hindiston bilan yaqin aloqalar tufayli yurtimizga buddaviylik dini kirib kelgan va Surxon vohasi orqali O'rta Osiyo bo'ylab tarqala boshlagan.$$, $$["buddaviylik", "surxon vohasi", "din"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Termiz ibodatxonalari$$, $$Termiz atrofidagi Fayoztepa va Qoratepa ibodatxonalari buddaviylik keng tarqalganidan guvohlik beradi.$$, $$["fayoztepa", "qoratepa", "termiz"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Dalvarzintepa$$, $$Dalvarzintepa Kushon podsholigining dastlabki poytaxti bo'lgan; mening davrimda bu shahar yanada rivojlangan.$$, $$["dalvarzintepa", "surxondaryo", "shahar"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tangalar$$, $$Kushon podsholigida oltin, kumush va misdan tangalar zarb qilingan.$$, $$["tanga", "oltin", "kumush"]$$::jsonb, $$O'zbekiston milliy ensiklopediyasi; «Qadimgi dunyo tarixi» 6-sinf darsligi (2017); UzA maqolasi$$, TRUE
  FROM heroes h WHERE h.slug = 'kanishka';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Kanishka qaysi davlatning hukmdori bo'lgan?$$,
 $$["Kushon podsholigi", "Yunon-Baqtriya", "Parfiya", "Ahamoniylar davlati"]$$, 0,
 $$Kanishka Kushon podsholigining hukmdori bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Kushon davlati qaysi asrlarda hukm surgan?$$,
 $$["Mil. avv. VI–IV asrlarda", "Milodiy I–III asrlarda", "Milodiy V–VII asrlarda", "Mil. avv. II–I asrlarda"]$$, 1,
 $$Kushon davlati milodiy I asrdan III asrgacha hukm surgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Kanishka poytaxtni qayerga ko'chirgan?$$,
 $$["Samarqandga", "Termizga", "Peshovarga", "Marvga"]$$, 2,
 $$Kanishka poytaxtni Baqtriyadan Peshovarga ko'chirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Kanishka davrida qaysi din yurtimizga kirib kelib, keng tarqalgan?$$,
 $$["Zardushtiylik", "Moniylik", "Nasroniylik", "Buddaviylik"]$$, 3,
 $$Hindiston bilan aloqalar tufayli buddaviylik dini kirib kelgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Fayoztepa va Qoratepa ibodatxonalari qayerda joylashgan?$$,
 $$["Termiz atrofida", "Xorazmda", "Farg'onada", "Toshkent vohasida"]$$, 0,
 $$Fayoztepa va Qoratepa buddaviylik ibodatxonalari Termiz atrofida joylashgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Kushon podsholigining dastlabki poytaxti qaysi shahar bo'lgan?$$,
 $$["Peshovar", "Dalvarzintepa", "Maroqanda", "Baqtra"]$$, 1,
 $$Dalvarzintepa Kushon podsholigining dastlabki poytaxti bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Kushon davlati qaysi davlatlar bilan savdo va elchilik aloqalari o'rnatgan?$$,
 $$["Misr va Suriya bilan", "Yunoniston va Makedoniya bilan", "Hindiston, Xitoy va Rim bilan", "Vizantiya va Eron bilan"]$$, 2,
 $$Kanishka davrida Hindiston, Xitoy va Rim imperiyasi bilan savdo va elchilik munosabatlari yo'lga qo'yilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Kushon tangalari qaysi metallardan zarb qilingan?$$,
 $$["Faqat temirdan", "Oltin, kumush va misdan", "Faqat bronzadan", "Qo'rg'oshindan"]$$, 1,
 $$Tangalar oltin, kumush va misdan zarb qilingan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Buddaviylik O'rta Osiyo bo'ylab qaysi voha orqali tarqala boshlagan?$$,
 $$["Farg'ona vodiysi", "Xorazm vohasi", "Zarafshon vohasi", "Surxon vohasi"]$$, 3,
 $$Buddaviylik aynan Surxon vohasi orqali O'rta Osiyo bo'ylab tarqala boshlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'kanishka'), NULL,
 $$Kanishka davrida Kushon davlati qanday holatga erishgan?$$,
 $$["Taraqqiyot cho'qqisiga chiqqan", "Inqirozga yuz tutgan", "Ikkiga bo'linib ketgan", "Rimga qaram bo'lgan"]$$, 0,
 $$Kanishka hukmronligi davrida Kushon podsholigi o'z taraqqiyotining cho'qqisiga erishgan.$$);

-- ===================== Bumin xoqon =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'bumin-xoqon', $$Bumin xoqon$$, $$Turk xoqonligi asoschisi$$, NULL, NULL, e.id,
       $$Bumin xoqon — VI asr o'rtalarida Oltoy va Janubiy Sibirdagi turkiy qabilalarni birlashtirib, Turk xoqonligiga asos solgan hukmdor. 552-yilda u «xoqon» deb e'lon qilingan. U asos solgan davlat tez orada Sirdaryo va Orol dengizi bo'ylarigacha kengaygan.$$, $$Salom! Men Bumin xoqonman — Turk xoqonligining asoschisiman. Mendan turkiy qabilalarning birlashuvi, 552-yil voqealari va xoqonlik davlati haqida so'rang!$$, $$🏹$$, $$["bumin", "xoqon", "turk xoqonligi", "oltoy", "552-yil", "turkiy qabilalar", "janubiy sibir", "davlat asoschisi"]$$::jsonb
  FROM eras e WHERE e.code = 'antik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kimman?$$, $$Men Bumin xoqonman — tarixga Turk xoqonligi nomi bilan kirgan buyuk davlatning asoschisiman.$$, $$["bumin", "turk xoqonligi", "asoschi"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'bumin-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Qabilalar birlashuvi$$, $$VI asr o'rtalarida Oltoy va Janubiy Sibirda yashagan turkiy qabilalarni birlashtirib, yangi davlat tuzganman.$$, $$["turkiy qabilalar", "oltoy", "janubiy sibir"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'bumin-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$552-yil$$, $$552-yilda men «xoqon» deb e'lon qilinganman.$$, $$["552-yil", "xoqon", "e'lon"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'bumin-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xoqon unvoni$$, $$«Xoqon» so'zi buyuk hukmdor, podsho degan ma'noni anglatadi.$$, $$["xoqon", "unvon", "ma'no"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'bumin-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Davlat markazi$$, $$Oltoy o'lkasi xoqonligimizning markazi qilib belgilangan.$$, $$["oltoy", "markaz", "poytaxt"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'bumin-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Davlatning kengayishi$$, $$Men asos solgan davlat tez kengaygan: 555-yildayoq turklar Sirdaryo va Orol dengizi bo'ylarigacha cho'zilgan keng o'lkalarni egallagan.$$, $$["555-yil", "sirdaryo", "orol dengizi"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'bumin-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Istami va g'arbiy yurishlar$$, $$Turklarning g'arbga tomon yurishlariga Istami boshchilik qilgan; unga «Yabg'u xoqon» degan unvon berilgan.$$, $$["istami", "yabg'u xoqon", "g'arbiy yurishlar"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'bumin-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xoqonlik taqdiri$$, $$Keyinchalik, VI asrning 80-yillari oxirida xoqonlik Sharqiy turk xoqonligi va G'arbiy turk xoqonligiga bo'linib ketgan.$$, $$["bo'linish", "sharqiy xoqonlik", "g'arbiy xoqonlik"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'bumin-xoqon';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$Bumin qaysi davlatning asoschisi?$$,
 $$["Eftallar davlati", "Turk xoqonligi", "Kushon podsholigi", "Qang' davlati"]$$, 1,
 $$Bumin tarixga Turk xoqonligi nomi bilan kirgan davlatning asoschisidir.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$Bumin qachon «xoqon» deb e'lon qilingan?$$,
 $$["552-yilda", "563-yilda", "530-yilda", "576-yilda"]$$, 0,
 $$Bumin 552-yilda «xoqon» deb e'lon qilingan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$Bumin qaysi hududlarda yashagan turkiy qabilalarni birlashtirgan?$$,
 $$["Xorazm va Buxoroda", "Yettisuv va Farg'onada", "Oltoy va Janubiy Sibirda", "Hindiston va Xo'tanda"]$$, 2,
 $$U VI asr o'rtalarida Oltoy va Janubiy Sibirdagi turkiy qabilalarni birlashtirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$Turk xoqonligining markazi qilib qaysi o'lka belgilangan?$$,
 $$["Samarqand", "Yettisuv", "O'tukan", "Oltoy"]$$, 3,
 $$Oltoy xoqonlikning markazi qilib belgilangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$«Xoqon» so'zi qanday ma'noni anglatadi?$$,
 $$["Buyuk hukmdor, podsho", "Yo'l ko'rsatuvchi", "Qo'shin boshlig'i", "Soliq yig'uvchi"]$$, 0,
 $$«Xoqon» — buyuk hukmdor, podsho degan ma'noni anglatadi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$555-yilda turklar qayergacha bo'lgan o'lkalarni egallagan?$$,
 $$["Kaspiy dengizigacha", "Sirdaryo va Orol dengizi bo'ylarigacha", "Hind daryosigacha", "Qora dengizgacha"]$$, 1,
 $$555-yildayoq turklar Sirdaryo va Orol dengizi bo'ylarigacha cho'zilgan o'lkalarni egallagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$Turklarning g'arbga yurishlariga kim boshchilik qilgan?$$,
 $$["Bumin", "Abruy", "Istami", "To'ng yabg'u"]$$, 2,
 $$G'arbga tomon yurishlarga Istami boshchilik qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$Istamiga qanday unvon berilgan?$$,
 $$["«Shod»", "«Tudun»", "«Satrap»", "«Yabg'u xoqon»"]$$, 3,
 $$Istamiga «Yabg'u xoqon» degan unvon berilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$Turk xoqonligi qachon ikkiga bo'linib ketgan?$$,
 $$["VI asrning 80-yillari oxirida", "552-yilda", "V asr boshida", "VIII asr oxirida"]$$, 0,
 $$Xoqonlik VI asrning 80-yillari oxirida ikkiga bo'linib ketgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'bumin-xoqon'), NULL,
 $$Turk xoqonligi qaysi ikki davlatga bo'lingan?$$,
 $$["Shimoliy va Janubiy xoqonlik", "Sharqiy va G'arbiy turk xoqonligi", "Katta va Kichik xoqonlik", "Ichki va Tashqi xoqonlik"]$$, 1,
 $$Xoqonlik Sharqiy turk xoqonligi va G'arbiy turk xoqonligiga bo'lingan.$$);

-- ===================== Istami xoqon =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'istami-xoqon', $$Istami xoqon$$, $$Yabg'u xoqon — g'arb yurishlari sardori$$, NULL, NULL, e.id,
       $$Istami xoqon — Turk xoqonligida turklarning g'arbga tomon yurishlariga boshchilik qilgan hukmdor, unga «Yabg'u xoqon» unvoni berilgan. Uning davrida xoqonlik Eron bilan ittifoq tuzib, eftallar davlatini tor-mor etgan va Buyuk ipak yo'li savdosida faol qatnasha boshlagan.$$, $$Salom! Men Istami xoqonman — turklarning g'arbga yurishlariga boshchilik qilganman. Mendan eftallar bilan janglar, Eron bilan ittifoq va ipak yo'li savdosi haqida so'rang!$$, $$🐎$$, $$["istami", "yabg'u", "turk xoqonligi", "eftallar", "xusrav anushervon", "vizantiya", "ipak yo'li", "yettisuv", "choch", "g'arbiy yurishlar"]$$::jsonb
  FROM eras e WHERE e.code = 'antik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Kimman?$$, $$Men Istami xoqonman — Turk xoqonligida turklarning g'arbga tomon yurishlariga boshchilik qilganman.$$, $$["istami", "g'arbiy yurishlar", "turk xoqonligi"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'istami-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Unvonim$$, $$Menga «Yabg'u xoqon» degan unvon berilgan; yabg'u darajasiga faqat xoqon urug'iga qon-qarindosh bo'lganlargina ko'tarilgan.$$, $$["yabg'u xoqon", "unvon"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'istami-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Sharqiy o'lkalar$$, $$Yurishlarimiz natijasida Yettisuv va Sharqiy Turkistonga tutashgan yurtlarda yashovchi turkiy qabilalar bo'ysundirilgan.$$, $$["yettisuv", "sharqiy turkiston", "qabilalar"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'istami-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Keng o'lkalar$$, $$555-yildayoq turklar Sirdaryo va Orol dengizi bo'ylarigacha cho'zilgan keng o'lkalarni egallagan.$$, $$["555-yil", "sirdaryo", "orol dengizi"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'istami-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Eron bilan ittifoq$$, $$Eron shohi Xusrav I Anushervon tashabbusi bilan harbiy ittifoq tuzganmiz; bu ittifoq Eron shohining menga kuyov bo'lishi orqali yanada mustahkamlangan.$$, $$["xusrav anushervon", "eron", "ittifoq"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'istami-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Eftallarga qarshi yurish$$, $$563-yilda qo'shinlarimiz eftallar davlati yerlariga kirib, Choch, Samarqand, Kesh va Naxshab shaharlarini egallagan; sakkiz kun davom etgan shiddatli jangda eftallar qo'shini yengilgan.$$, $$["563-yil", "eftallar", "choch", "samarqand"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'istami-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Eftallar davlati yakuni$$, $$563–567-yillarda eftallar davlati barham topgach, Amudaryoning o'ng sohillari bo'ylab Kaspiy dengizigacha cho'zilgan yerlar Turk xoqonligi tasarrufiga o'tgan.$$, $$["563-567", "amudaryo", "kaspiy dengizi"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'istami-xoqon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ipak yo'li savdosi$$, $$Shundan so'ng turklar Buyuk ipak yo'li karvon savdosida faol qatnashib, Eron orqali Vizantiya bilan bevosita savdo qiladigan bo'lgan.$$, $$["ipak yo'li", "vizantiya", "savdo"]$$::jsonb, $$«O'zbekiston tarixi» 7-sinf darsligi (A. Muhammadjonov, 2017)$$, TRUE
  FROM heroes h WHERE h.slug = 'istami-xoqon';
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Istami Turk xoqonligida qaysi yo'nalishdagi yurishlarga boshchilik qilgan?$$,
 $$["Sharqqa", "G'arbga", "Shimolga", "Janubga"]$$, 1,
 $$Istami turklarning g'arbga tomon yurishlariga boshchilik qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Istamiga qanday unvon berilgan?$$,
 $$["«Yabg'u xoqon»", "«Shod»", "«Tudun»", "«El Arslon»"]$$, 0,
 $$Istamiga «Yabg'u xoqon» degan unvon berilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Yabg'u darajasiga kimlar ko'tarila olgan?$$,
 $$["Har qanday jangchi", "Boy savdogarlar", "Xoqon urug'iga qarindosh bo'lganlar", "Chet ellik elchilar"]$$, 2,
 $$Yabg'u darajasiga faqat xoqon urug'iga qon-qarindosh bo'lganlargina ko'tarilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Istami qaysi Eron shohi bilan ittifoq tuzgan?$$,
 $$["Doro I", "Kir II", "Bess", "Xusrav I Anushervon"]$$, 3,
 $$Harbiy ittifoq Xusrav I Anushervon tashabbusi bilan tuzilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Eron bilan ittifoq qanday mustahkamlangan?$$,
 $$["Eron shohi Istamiga kuyov bo'lgan", "Katta o'lpon to'langan", "Qo'shma poytaxt qurilgan", "Yer almashilgan"]$$, 0,
 $$Ittifoq Eron shohining Istamiga kuyov bo'lishi orqali mustahkamlangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$563-yilda turklar qaysi davlat yerlariga bostirib kirgan?$$,
 $$["Vizantiya", "Eftallar davlati", "Xitoy", "Kushon davlati"]$$, 1,
 $$563-yilda turk qo'shinlari eftallar davlati yerlariga kirib borgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Eftallar bilan hal qiluvchi shiddatli jang necha kun davom etgan?$$,
 $$["Uch kun", "Yetti kun", "Sakkiz kun", "O'n besh kun"]$$, 2,
 $$Sakkiz kun davom etgan shiddatli jangda eftallar qo'shini yengilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Eftallar davlati qachon butunlay barham topgan?$$,
 $$["552-yilda", "580-yilda", "600-yilda", "563–567-yillarda"]$$, 3,
 $$Eftallar davlati 563–567-yillarda barham topgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Eftallar davlati qulagach, Turk xoqonligiga qaysi yerlar o'tgan?$$,
 $$["Amudaryoning o'ng sohillari bo'ylab Kaspiy dengizigacha", "Hindistongacha bo'lgan yerlar", "Suriya va Misr", "Faqat Farg'ona vodiysi"]$$, 0,
 $$Amudaryoning o'ng sohillari bo'ylab Kaspiy dengizigacha cho'zilgan yerlar xoqonlik tasarrufiga o'tgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'istami-xoqon'), NULL,
 $$Eftallar davlati qulagach, turklar qaysi davlat bilan Eron orqali bevosita savdo qila boshlagan?$$,
 $$["Rim", "Vizantiya", "Misr", "Hindiston"]$$, 1,
 $$Turklar ipak yo'li savdosida Eron orqali Vizantiya bilan bevosita savdo qiladigan bo'lgan.$$);
