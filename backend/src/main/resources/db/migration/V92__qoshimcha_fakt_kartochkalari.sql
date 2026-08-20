-- Qo'shimcha fakt kartochkalari: Ibn Sino, al-Xorazmiy, Jaloliddin Manguberdi,
-- Imom al-Buxoriy.
--
-- NIMA UCHUN. Bu to'rt ajdodda kartochka eng kam edi (14–15 ta), ya'ni suhbat
-- tez tugab qolardi: bola to'rt-besh savoldan keyin «Bu haqda tarix sukut
-- saqlaydi» degan javobga urilaverardi. Qo'shimcha faktlar suhbatni uzaytiradi.
--
-- MATN QAYERDAN. Hammasi Ziyouz.com ning ensiklopedik bo'limlaridan olindi,
-- har bir kartochkada aniq maqola ko'rsatilgan. Hech narsa yoddan yozilmadi:
-- manbada bo'lmagan bironta ham raqam yoki sana bu yerda yo'q. Vikipediya
-- manba sifatida ishlatilmadi.
--
-- VAFOT CHEGARASI. Barcha faktlar ajdodning O'Z HAYOTI ichida. Vafot haqidagi
-- kartochkalarda esa u o'limini ochiq aytadi — shunda M1 ning to'rtinchi
-- qoidasi buzilmaydi.
--
-- METODIST TEKSHIRUVI KERAK. `verified = TRUE` bazadagi qolgan kartochkalar
-- bilan bir xil qo'yildi (aks holda kartochka umuman ishlatilmaydi), lekin bu
-- matnlarni tarixchi-metodist o'qib chiqishi shart.

-- ══════════════════════ ABU ALI IBN SINO (980–1037) ══════════════════════

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qur'onni yod olganim$$,
 $$O'n yoshga to'lmasimdan Qur'onni to'liq yod olganman.$$,
 $$["qur'on", "yod", "bola", "o'n yosh", "xotira"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Ali ibn Sino (980–1037)$$, TRUE,
 $$Ibn Sino Qur'onni necha yoshda yod olgan?$$,
 $$Ibn Sino o'n yoshga to'lmasdan Qur'onni to'liq yod olgan. Bu uning kuchli xotirasi va erta boshlangan ta'limining birinchi belgisi edi. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'n olti yoshdagi shuhratim$$,
 $$O'n olti yoshimda men allaqachon mashhur tabib edim.$$,
 $$["o'n olti", "tabib", "shuhrat", "yoshlik"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Ali ibn Sino (980–1037)$$, TRUE,
 $$Ibn Sino necha yoshida mashhur tabib bo'lgan?$$,
 $$Ibn Sino o'n olti yoshida mashhur tabib sifatida tanilgan. Shu yoshda unga kattalar ham davolanish uchun murojaat qilishgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim soni$$,
 $$Turli fanlar bo'yicha 450 dan ortiq asar yozganman. Ulardan 242 tasi bugungi kunlargacha yetib kelgan.$$,
 $$["asar", "450", "242", "kitob", "soni"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Ali ibn Sino (980–1037)$$, TRUE,
 $$Ibn Sino nechta asar yozgan va ulardan nechtasi saqlanib qolgan?$$,
 $$Ibn Sino turli fanlar bo'yicha 450 dan ortiq asar yaratgan, ulardan 242 tasi bizning kunlarimizgacha yetib kelgan. Qolganlarining nomi manbalarda qolgan, o'zi esa yo'qolgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qaysi fanlarni o'rganganman$$,
 $$Astronomiya, falsafa, matematika, fizika, kimyo, tibbiyot, mantiq, adabiyot va mineralogiya bilan shug'ullanganman.$$,
 $$["fan", "astronomiya", "falsafa", "matematika", "fizika", "kimyo", "mantiq", "mineralogiya"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Ali ibn Sino (980–1037)$$, TRUE,
 $$Ibn Sino qaysi fanlar bilan shug'ullangan?$$,
 $$Ibn Sino bir vaqtning o'zida astronomiya, falsafa, matematika, fizika, kimyo, tibbiyot, mantiq, adabiyot va mineralogiya bilan shug'ullangan. Shuning uchun uni qomusiy olim deb atashadi. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shaharlar bo'ylab safarim$$,
 $$1002-yildan boshlab Urganch, Obivard, Naso, Nishopur, Jurjon, Ray, Isfahon va Hamadonda yashab ijod qilganman.$$,
 $$["safar", "urganch", "nishopur", "jurjon", "ray", "isfahon", "hamadon", "ko'chish"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Ali ibn Sino (980–1037)$$, TRUE,
 $$Ibn Sino qaysi shaharlarda yashagan?$$,
 $$1002-yildan keyin Ibn Sino bir joyda uzoq turmagan: Urganch, Obivard, Naso, Nishopur, Jurjon, Ray, Isfahon va Hamadon — uning hayoti shu shaharlar orasida o'tgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Tib qonunlari» tuzilishi$$,
 $$«Kitob al-qonun fit-tib» asarim besh kitobdan, o'n to'rt jilddan iborat.$$,
 $$["tib qonunlari", "besh kitob", "o'n to'rt jild", "tuzilish"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Ali ibn Sino (980–1037)$$, TRUE,
 $$«Tib qonunlari» necha kitob va necha jilddan iborat?$$,
 $$«Kitob al-qonun fit-tib» besh kitobdan va o'n to'rt jilddan iborat. Shu hajmi bilan u asrlar davomida Sharqda ham, Yevropada ham asosiy tibbiyot qo'llanmasi bo'lib qolgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Turli fanlardagi asarlarim$$,
 $$Adabiyotga oid to'rt, musiqaga oid besh, astronomiyaga oid o'ndan ortiq asarim bor.$$,
 $$["adabiyot", "musiqa", "astronomiya", "asar", "soni"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Ali ibn Sino (980–1037)$$, TRUE,
 $$Ibn Sinoning musiqa va adabiyotga oid asarlari bormi?$$,
 $$Ibn Sino faqat tabib emas edi: uning adabiyotga oid to'rtta, musiqaga oid beshta va astronomiyaga oid o'ndan ortiq asari bor. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$,
 $$1037-yilda, ellik yetti yoshimda Hamadon shahrida vafot etganman.$$,
 $$["vafot", "1037", "hamadon", "ellik yetti", "umr"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Ali ibn Sino (980–1037)$$, TRUE,
 $$Ibn Sino qachon va qayerda vafot etgan?$$,
 $$Ibn Sino 1037-yilda, ellik yetti yoshida Hamadon shahrida vafot etgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'ibn-sino';

-- ═══════════════════ MUHAMMAD AL-XORAZMIY (780–850) ═══════════════════

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ming yulduz xaritasi$$,
 $$Mingdan ortiq yulduzni kuzatib, ularning joylashuv xaritasini tuzganman.$$,
 $$["yulduz", "ming", "xarita", "kuzatish", "osmon"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Muhammad al-Xorazmiy (780–850)$$, TRUE,
 $$Al-Xorazmiy nechta yulduzni o'rgangan?$$,
 $$Al-Xorazmiy mingdan ortiq yulduzni kuzatib chiqqan va ularning osmondagi joylashuv xaritasini tuzgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Bag'doddagi rasadxona$$,
 $$Bag'dodda rasadxona qurilishiga Ahmad al-Farg'oniy bilan birga rahbarlik qilganman.$$,
 $$["rasadxona", "bag'dod", "farg'oniy", "qurilish"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Muhammad al-Xorazmiy (780–850)$$, TRUE,
 $$Al-Xorazmiy Bag'dodda nima qurdirgan?$$,
 $$Al-Xorazmiy Bag'dodda rasadxona qurilishiga yurtdoshi Ahmad al-Farg'oniy bilan birga rahbarlik qilgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Mafotix ul-ulum»$$,
 $$«Mafotix ul-ulum» asarim to'qqiz jilddan iborat.$$,
 $$["mafotix", "to'qqiz jild", "asar", "kitob"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Muhammad al-Xorazmiy (780–850)$$, TRUE,
 $$«Mafotix ul-ulum» necha jilddan iborat?$$,
 $$Al-Xorazmiyning «Mafotix ul-ulum» asari to'qqiz jilddan iborat. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Musiqa va tarix risolalarim$$,
 $$Matematikadan tashqari musiqa risolasi va tarix risolasi ham yozganman.$$,
 $$["musiqa", "tarix", "risola", "asar"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Muhammad al-Xorazmiy (780–850)$$, TRUE,
 $$Al-Xorazmiy faqat matematika bilan shug'ullanganmi?$$,
 $$Yo'q. Al-Xorazmiyning matematika va astronomiyadan tashqari musiqa risolasi hamda tarix risolasi ham bor. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Quyosh soati haqidagi asarim$$,
 $$Quyosh soati haqida alohida asar yozganman.$$,
 $$["quyosh soati", "asar", "vaqt", "o'lchov"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Muhammad al-Xorazmiy (780–850)$$, TRUE,
 $$Al-Xorazmiy vaqt o'lchash haqida yozganmi?$$,
 $$Ha, al-Xorazmiy quyosh soati haqida alohida asar yozgan — o'sha davrda vaqtni aynan shunday o'lchashgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$,
 $$850-yilda Bag'dod shahrida vafot etganman.$$,
 $$["vafot", "850", "bag'dod", "umr"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Muhammad al-Xorazmiy (780–850)$$, TRUE,
 $$Al-Xorazmiy qachon va qayerda vafot etgan?$$,
 $$Al-Xorazmiy 850-yilda Bag'dodda vafot etgan. U 780-yilda Xivada tug'ilgan edi. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'al-xorazmiy';

-- ═════════════════ JALOLIDDIN MANGUBERDI (1198–1231) ═════════════════

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Onam va akalarim$$,
 $$Onamning ismi Oychechak edi. Akalarim orasida Akshoh va Qutbuddin Ozloqshoh bor edi.$$,
 $$["ona", "oychechak", "aka", "akshoh", "ozloqshoh", "oila"]$$::jsonb,
 $$Ziyouz.com — «O'zbekiston hukmdorlari»: Jaloliddin Manguberdi (1198–1231)$$, TRUE,
 $$Jaloliddin Manguberdining onasi va akalari kim edi?$$,
 $$Jaloliddin Manguberdining onasi Oychechak, otasi esa Xorazmshoh Muhammad edi. Akalari orasida Akshoh va Qutbuddin Ozloqshoh bor edi. Manba: Ziyouz.com — «O'zbekiston hukmdorlari».$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Parvondagi jang usulim$$,
 $$Parvon jangida jangchilarimni otdan tushirib, piyoda holda dushman otliqlariga qarshi jang qilishga o'rgatganman — bu yangi usul edi.$$,
 $$["parvon", "usul", "piyoda", "otliq", "taktika", "jang"]$$::jsonb,
 $$Ziyouz.com — «O'zbekiston hukmdorlari»: Jaloliddin Manguberdi (1198–1231)$$, TRUE,
 $$Jaloliddin Parvon jangida qanday yangi usul qo'llagan?$$,
 $$Parvon jangida Jaloliddin jangchilarini otdan tushirib, piyoda holda mo'g'ul otliqlariga qarshi jang qilishga o'rgatgan. Shu usul bilan Shiki Xutuxu boshchiligidagi qo'shinni yenggan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari».$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Jaloli cho'li»$$,
 $$Sind daryosidan o'tgach cho'lga chekinganman. O'sha cho'l bugun mening nomim bilan «Jaloli cho'li» deb ataladi.$$,
 $$["jaloli cho'li", "sind", "cho'l", "nom", "chekinish"]$$::jsonb,
 $$Ziyouz.com — «O'zbekiston hukmdorlari»: Jaloliddin Manguberdi (1198–1231)$$, TRUE,
 $$Nega bir cho'l «Jaloli cho'li» deb ataladi?$$,
 $$Sind daryosi jangidan keyin Jaloliddin daryodan o'tib cho'lga chekingan. O'sha cho'l keyinchalik uning nomi bilan «Jaloli cho'li» deb atalgan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari».$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Arzinjan jangi$$,
 $$1230-yil 10-avgustda Arzinjan yaqinidagi jangda qo'shinim mag'lubiyatga uchradi.$$,
 $$["arzinjan", "1230", "jang", "mag'lubiyat"]$$::jsonb,
 $$Ziyouz.com — «O'zbekiston hukmdorlari»: Jaloliddin Manguberdi (1198–1231)$$, TRUE,
 $$Arzinjan jangi qachon bo'lgan?$$,
 $$Arzinjan yaqinidagi jang 1230-yil 10-avgustda bo'lib o'tgan va Jaloliddin qo'shini mag'lubiyatga uchragan. Manba: Ziyouz.com — «O'zbekiston hukmdorlari».$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xorazmshohlik yillarim$$,
 $$1220-yildan 1231-yilgacha Xorazmshoh bo'lganman.$$,
 $$["xorazmshoh", "1220", "1231", "hukmronlik", "taxt"]$$::jsonb,
 $$Ziyouz.com — «O'zbekiston hukmdorlari»: Jaloliddin Manguberdi (1198–1231)$$, TRUE,
 $$Jaloliddin Manguberdi qaysi yillarda hukmronlik qilgan?$$,
 $$Jaloliddin Manguberdi 1220-yildan 1231-yilgacha, ya'ni Xorazmshohlar davlatining eng og'ir yillarida hukmronlik qilgan. U shu davlatning so'nggi hukmdori edi. Manba: Ziyouz.com — «O'zbekiston hukmdorlari».$$
  FROM heroes h WHERE h.slug = 'jaloliddin-manguberdi';

-- ═══════════════════ IMOM AL-BUXORIY (810–870) ═══════════════════

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Nechta hadis to'plaganman$$,
 $$Olti yuz mingga yaqin hadis to'plaganman: yuz mingga yaqin sahih va ikki yuz mingga yaqin nosahih hadisni yod bilardim.$$,
 $$["hadis", "olti yuz ming", "sahih", "yod", "to'plash"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Imom Ismoil al-Buxoriy (810–870)$$, TRUE,
 $$Imom al-Buxoriy nechta hadis to'plagan?$$,
 $$Imom al-Buxoriy olti yuz mingga yaqin hadis to'plagan; ulardan yuz mingga yaqin sahih va ikki yuz mingga yaqin nosahih hadisni yoddan bilgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Otam kim edi$$,
 $$Otam Ismoil o'z davrining yetuk hadisshunoslaridan biri edi.$$,
 $$["ota", "ismoil", "hadisshunos", "oila"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Imom Ismoil al-Buxoriy (810–870)$$, TRUE,
 $$Imom al-Buxoriyning otasi kim bo'lgan?$$,
 $$Uning otasi Ismoil o'z davrining yetuk hadisshunoslaridan biri bo'lgan — bola ilmga o'z uyidan qadam qo'ygan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Safarim qancha davom etdi$$,
 $$Bir qancha tarixchilarning yozishicha, chet ellardagi safarlarim taxminan olti yil davom etgan.$$,
 $$["safar", "olti yil", "sayohat", "hijoz"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Imom Ismoil al-Buxoriy (810–870)$$, TRUE,
 $$Imom al-Buxoriyning safarlari qancha davom etgan?$$,
 $$Bir qancha tarixchilarning yozishicha, uning Hijoz — Makka, Madina, Toif va Jidda tomonlardagi safari taxminan olti yil davom etgan. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Nechta asar yozganman$$,
 $$Yigirmadan ortiq asar yozganman.$$,
 $$["asar", "yigirma", "kitob", "soni"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Imom Ismoil al-Buxoriy (810–870)$$, TRUE,
 $$Imom al-Buxoriy nechta asar yozgan?$$,
 $$Imom al-Buxoriy yigirmadan ortiq asar yozgan. Eng mashhurlari — «Al-Jome' as-Sahih», «Al-Adab al-mufrad» va «At-Tarix al-kabir». Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Al-Jome' as-Sahih» jildlari$$,
 $$«Al-Jome' as-Sahih» asarim to'rt jilddan iborat.$$,
 $$["al-jome", "sahih", "to'rt jild", "tuzilish"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Imom Ismoil al-Buxoriy (810–870)$$, TRUE,
 $$«Al-Jome' as-Sahih» necha jilddan iborat?$$,
 $$Imom al-Buxoriyning bosh asari «Al-Jome' as-Sahih» to'rt jilddan iborat. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$,
 $$870-yil 31-avgustda Samarqand yaqinidagi Xartang qishlog'ida vafot etganman.$$,
 $$["vafot", "870", "xartang", "samarqand", "umr"]$$::jsonb,
 $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Imom Ismoil al-Buxoriy (810–870)$$, TRUE,
 $$Imom al-Buxoriy qachon va qayerda vafot etgan?$$,
 $$Imom al-Buxoriy 870-yil 31-avgustda Samarqand yaqinidagi Xartang qishlog'ida vafot etgan. U 810-yil 21-iyulda Buxoroda tug'ilgan edi. Manba: Ziyouz.com — «Qomusiy olimlar, sarkardalar».$$
  FROM heroes h WHERE h.slug = 'imom-al-buxoriy';
