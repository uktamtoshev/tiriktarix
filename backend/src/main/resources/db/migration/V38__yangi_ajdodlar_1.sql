-- Galereyaga birinchi to'plam yangi ajdodlar (1-partiya).
--
-- MANBALAR. Har bir qahramonning ma'lumotlari Ziyouz.com ning ensiklopedik
-- bo'limlaridan olingan — bu ruxsat etilgan manbalar ro'yxatidagi ikkinchi
-- pog'ona. Hech narsa yoddan yozilmadi: kartochkalarda faqat manbada bor
-- gaplar bor. Sanalar loyihaning mavjud kartochkalari va maktab darsligi
-- bilan solishtirildi.
--
-- verified = FALSE: metodist-tarixchi hammasini o'qib chiqishi shart.
-- Test savollari FAQAT shu kartochkalar asosida tuzilgan — bola javobni
-- mahsulotning o'zidan topa oladi.
--
-- Portret: bu partiyada hech kimga tasvir biriktirilmadi (Commons'da
-- tekshirilgan holda mos, erkin litsenziyali portret topilmadi yoki
-- tekshirish tugallanmadi) — vaqtincha emoji ishlatiladi.


-- ===================== Ahmad al-Farg'oniy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'ahmad-al-fargoniy', $$Ahmad al-Farg'oniy$$, $$Yulduzlar tarjimoni$$, 797, 867, e.id,
       $$Farg'onada tug'ilgan buyuk astronom. Bag'doddagi «Bayt ul-hikma»da ishlagan, Nil daryosi suvini o'lchaydigan asbob yasagan. Yevropada uni «Alfraganus» deb bilishgan.$$, $$Assalomu alaykum! Men Ahmad al-Farg'oniyman. Yulduzlar, rasadxonalar va Nil daryosidagi o'lchagichim haqida so'ra!$$, $$🔭$$, $$["farg'oniy", "fargoniy", "alfraganus", "al-farg'oniy", "yulduz", "astronomiya", "nil", "rasadxona", "bayt ul-hikma", "usturlob", "farg'ona", "quyosh tutilishi", "yetti iqlim"]$$::jsonb
  FROM eras e WHERE e.code = 'arab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men Farg'onada tug'ilganman. To'liq ismim — Abul Abbos Ahmad ibn Muhammad ibn Kasir al-Farg'oniy. IX asrda yashab ijod qildim.$$, $$["tug'ilish", "farg'ona", "ism"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Bag'dodda ishim$$, $$Ijodiy faoliyatim Bag'dod bilan, al-Xorazmiy rahbarligidagi «Bayt ul-hikma» bilan bog'liq bo'lgan.$$, $$["bag'dod", "bayt ul-hikma", "xorazmiy", "akademiya"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Rasadxonalar$$, $$Bag'dod va Damashqdagi rasadxonalar qurilishida qatnashganman.$$, $$["rasadxona", "damashq", "bag'dod", "qurilish"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ptolemey jadvali$$, $$Ptolemeyning «Yulduzlar jadvali»dagi ma'lumotlarni tekshirib chiqqanman.$$, $$["ptolemey", "yulduzlar jadvali", "tekshirish"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Quyosh tutilishi$$, $$812-yilda quyosh tutilishini oldindan aytib bergan edim.$$, $$["quyosh tutilishi", "812", "bashorat"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yer shakli$$, $$Yerning dumaloq ekanini ochib berganman.$$, $$["yer", "dumaloq", "shar", "shakl"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Nil o'lchagichi$$, $$Misrda Nil daryosi suvining sathini o'lchaydigan asbob yasadim.$$, $$["nil", "misr", "o'lchagich", "daryo", "suv"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yevropadagi nomim$$, $$Yevropaliklar meni «Alfraganus» deb atashgan.$$, $$["alfraganus", "yevropa", "nom", "lotin"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Asarlarim$$, $$Yettita asarim saqlanib qolgan. Ular orasida «Samoviy harakatlar va umumiy ilmi nujum kitobi» (Astronomiya asoslari), «Usturlob yasash haqida kitob» va «Yetti iqlim hisobi» bor.$$, $$["asar", "kitob", "astronomiya asoslari", "usturlob", "yetti iqlim"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xotiram$$, $$1998-yilda tavalludimning 1200 yilligi xalqaro miqyosda nishonlandi, Quva shahrida haykal o'rnatildi.$$, $$["1200 yillik", "quva", "haykal", "xotira", "1998"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Ahmad al-Farg'oniy (797–867)$$, FALSE
  FROM heroes h WHERE h.slug = 'ahmad-al-fargoniy';

-- ===================== Abu Nasr Forobiy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'abu-nasr-forobiy', $$Abu Nasr Forobiy$$, $$Ikkinchi muallim$$, 873, 950, e.id,
       $$Forobda tug'ilgan faylasuf va musiqashunos. Arastudan keyingi «Ikkinchi muallim» deb atalgan. 160 dan ortiq asar yozgan.$$, $$Assalomu alaykum! Men Abu Nasr Forobiyman. Falsafa, musiqa va bilim yo'llari haqida so'rasang, javob beraman.$$, $$📐$$, $$["forobiy", "farobi", "ikkinchi muallim", "muallimus-soniy", "falsafa", "musiqa", "mantiq", "forob", "arastu", "til"]$$::jsonb
  FROM eras e WHERE e.code = 'arab';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 873-yilda Forob shahrida tug'ilganman. To'liq ismim — Abu Nasr Muhammad ibn Muhammad ibn O'zlug' Tarxon Forobiy.$$, $$["tug'ilish", "forob", "873", "ism"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Ikkinchi muallim»$$, $$Dunyo Arastuni birinchi muallim deb biladi, meni esa «Muallimus-soniy» — «Ikkinchi muallim» deb atashgan.$$, $$["ikkinchi muallim", "arastu", "muallimus-soniy", "unvon"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$Boshlang'ich ma'lumotni ona yurtimda oldim, so'ng Toshkent, Buxoro va Samarqandda o'qidim.$$, $$["o'qish", "toshkent", "buxoro", "samarqand", "ta'lim"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Safarlarim$$, $$Bag'dod, Isfahon, Hamadon va Ray shaharlarida bo'lganman.$$, $$["safar", "bag'dod", "isfahon", "hamadon", "ray"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tillar$$, $$Yetmishdan ortiq tilni bilardim.$$, $$["til", "70", "tillar"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Fanlarim$$, $$Falsafa, arifmetika, geometriya, astronomiya, musiqa, fizika, kimyo, optika, tibbiyot va biologiya bilan shug'ullanganman.$$, $$["falsafa", "geometriya", "astronomiya", "musiqa", "tibbiyot", "fan"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Asarlarim soni$$, $$160 dan ortiq asar yozganman, bizgacha qirqqa yaqini yetib kelgan.$$, $$["asar", "160", "40", "kitob"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Musiqa ilmi$$, $$Musiqa ilmi men shug'ullangan fanlardan biri edi.$$, $$["musiqa", "ilm", "san'at"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Vafotim$$, $$950-yilda Damashq shahrida vafot etganman.$$, $$["vafot", "damashq", "950"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Nomim$$, $$To'liq ismimdagi «Forobiy» — tug'ilgan shahrim Forob nomidan olingan.$$, $$["forob", "nom", "taxallus"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar»: Abu Nasr Forobiy (873–950)$$, FALSE
  FROM heroes h WHERE h.slug = 'abu-nasr-forobiy';

-- ===================== Cho'lpon =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'cholpon', $$Cho'lpon$$, $$Uyg'onish shoiri$$, 1897, 1938, e.id,
       $$Andijonda tug'ilgan shoir va yozuvchi. Asl ismi — Abdulhamid Sulaymon o'g'li. «Kecha va kunduz» romani va she'riy to'plamlari bilan mashhur.$$, $$Assalomu alaykum! Men Cho'lponman. She'rlarim, «Kecha va kunduz» romanim va davrim haqida so'ra.$$, $$🌅$$, $$["cho'lpon", "cholpon", "abdulhamid", "sulaymon", "kecha va kunduz", "she'r", "uyg'onish", "buloqlar", "tong sirlari", "andijon", "soz"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1897-yilda Andijon shahrida tug'ilganman. Asl ismim — Abdulhamid Sulaymon o'g'li.$$, $$["tug'ilish", "andijon", "1897", "ism"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$Avval madrasada (1908–1912), so'ng rus tipidagi maktabda (1912–1914) o'qiganman.$$, $$["o'qish", "madrasa", "rus maktabi", "ta'lim"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taxallusim$$, $$Ijodda «Cho'lpon» taxallusini olganman.$$, $$["taxallus", "cho'lpon", "nom"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$She'riy to'plamlarim$$, $$She'rlarim «Uyg'onish» (1922), «Buloqlar» (1923), «Tong sirlari» (1926) va «Soz» (1935) to'plamlarida chop etilgan.$$, $$["to'plam", "uyg'onish", "buloqlar", "tong sirlari", "soz", "she'r"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Kecha va kunduz»$$, $$1936-yilda «Kecha va kunduz» romanini yozganman.$$, $$["kecha va kunduz", "roman", "1936"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Hikoyalarim$$, $$«Novvoy qiz», «Oydin kechalarda», «Qor qo'ynida lola» kabi hikoyalar yozganman.$$, $$["hikoya", "novvoy qiz", "oydin kechalarda", "qor qo'ynida lola"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Dramalarim$$, $$«Yorqinoy», «O'ldiruvchi» (1921), «Cho'pon sevgisi» (1922) kabi sahna asarlarim bor.$$, $$["drama", "yorqinoy", "o'ldiruvchi", "cho'pon sevgisi", "teatr"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Zamondoshlarim$$, $$Men Abdulla Qodiriy va Abdurauf Fitrat bilan bir davrda ijod qilganman.$$, $$["qodiriy", "fitrat", "zamondosh", "jadid"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1938-yilda qatag'on qurboni bo'lganman.$$, $$["1938", "qatag'on", "vafot"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Merosim$$, $$Asarlarim keyinchalik xalqqa qaytarilgan va bugun maktabda o'qitiladi.$$, $$["meros", "oqlanish", "maktab", "asarlar"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri»: Abdulhamid Cho'lpon (1897–1938)$$, FALSE
  FROM heroes h WHERE h.slug = 'cholpon';

-- ===================== Abdulla Oripov =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'abdulla-oripov', $$Abdulla Oripov$$, $$Madhiya muallifi$$, 1941, 2016, e.id,
       $$Qashqadaryoda tug'ilgan shoir. O'zbekiston Respublikasi Davlat madhiyasi matnini yozgan. Dante «Ilohiy komediya»sini o'zbekchaga o'girgan.$$, $$Assalomu alaykum! Men Abdulla Oripovman. She'rlarim, madhiya matni va tarjimalarim haqida so'ra.$$, $$🇺🇿$$, $$["oripov", "abdulla oripov", "madhiya", "gimn", "she'r", "dante", "ilohiy komediya", "munojot", "qashqadaryo", "sohibqiron", "o'zbekiston shoiri"]$$::jsonb
  FROM eras e WHERE e.code = 'mustaqillik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1941-yil 21-martda Qashqadaryo viloyati Koson tumanidagi Neko'z qishlog'ida tug'ilganman.$$, $$["tug'ilish", "qashqadaryo", "koson", "neko'z", "1941"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$1963-yilda Toshkent davlat universitetining jurnalistika fakultetini tugatganman.$$, $$["o'qish", "universitet", "jurnalistika", "1963"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Davlat madhiyasi$$, $$1992-yilda O'zbekiston Respublikasi Davlat madhiyasi matnini yozganman.$$, $$["madhiya", "gimn", "1992", "davlat ramzi"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$She'riy kitoblarim$$, $$«Mitti yulduz» (1965), «Ko'zlarim yo'lingda» (1966), «Onajon» (1969), «O'zbekiston» (1971), «Munojot» (1992) kitoblarim chop etilgan.$$, $$["kitob", "mitti yulduz", "onajon", "o'zbekiston", "munojot", "she'r"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Dostonlarim$$, $$«Jannatga yo'l» (1978) va «Sohibqiron» (1996) dostonlarini yozganman.$$, $$["doston", "jannatga yo'l", "sohibqiron"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Sahna asarim$$, $$1998-yilda «Sohibqiron» she'riy dramam yirik teatrlarda sahnalashtirilgan.$$, $$["drama", "sohibqiron", "teatr", "1998"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tarjimalarim$$, $$Dantening «Ilohiy komediya» asarini, Pushkin, Nekrasov, Shevchenko va Rasul Hamzatov she'rlarini o'zbekchaga o'girganman.$$, $$["tarjima", "dante", "ilohiy komediya", "pushkin", "shevchenko"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Unvonlarim$$, $$1990-yilda O'zbekiston xalq shoiri, 1998-yilda O'zbekiston Qahramoni unvonini olganman.$$, $$["unvon", "xalq shoiri", "qahramon", "1990", "1998"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Mukofotlarim$$, $$1983-yilda Hamza, 1992-yilda Alisher Navoiy nomidagi Davlat mukofoti sovrindori bo'lganman.$$, $$["mukofot", "hamza", "navoiy", "davlat mukofoti"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$2016-yil 5-noyabrda 75 yoshimda vafot etganman.$$, $$["vafot", "2016", "75 yosh"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Oripov (1941–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'abdulla-oripov';

-- ===================== Erkin Vohidov =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'erkin-vohidov', $$Erkin Vohidov$$, $$Yoshlik devoni shoiri$$, 1936, 2016, e.id,
       $$Farg'onada tug'ilgan shoir va dramaturg. «Yoshlik devoni» va «Ruhlar isyoni» asarlari bilan tanilgan. O'zbekiston Qahramoni.$$, $$Assalomu alaykum! Men Erkin Vohidovman. She'rlarim, «Yoshlik devoni» va sahna asarlarim haqida so'ra.$$, $$✒️$$, $$["vohidov", "erkin vohidov", "yoshlik devoni", "she'r", "oltin devor", "tirik sayyoralar", "bedorlik", "farg'ona", "oltiariq", "qahramon"]$$::jsonb
  FROM eras e WHERE e.code = 'mustaqillik';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1936-yil 28-dekabrda Farg'ona viloyati Oltiariq tumanida tug'ilganman.$$, $$["tug'ilish", "farg'ona", "oltiariq", "1936"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$1960-yilda Toshkent davlat universitetining filologiya fakultetini tugatganman.$$, $$["o'qish", "universitet", "filologiya", "1960"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Nashriyotdagi ishim$$, $$«Yosh gvardiya» va G'afur G'ulom nomidagi nashriyotlarda muharrir va bosh muharrir bo'lib ishlaganman.$$, $$["nashriyot", "muharrir", "yosh gvardiya", "g'afur g'ulom"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Yoshlik» jurnali$$, $$1982–1985-yillarda «Yoshlik» jurnalining bosh muharriri bo'lganman.$$, $$["yoshlik", "jurnal", "bosh muharrir", "1982"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilk kitoblarim$$, $$«Tong nafasi» (1961), «Qo'shiqlarim sizga» (1962), «Yurak va aql» (1963) — dastlabki to'plamlarim.$$, $$["kitob", "tong nafasi", "qo'shiqlarim sizga", "yurak va aql"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Yoshlik devoni»$$, $$1969-yilda «Yoshlik devoni» kitobim chiqqan.$$, $$["yoshlik devoni", "1969", "kitob"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Keyingi kitoblarim$$, $$«Tirik sayyoralar» (1978), «Sharqiy qirg'oq» (1982), «Kelajakka maktub» (1983), «Bedorlik» (1985) kitoblarim bor.$$, $$["tirik sayyoralar", "sharqiy qirg'oq", "kelajakka maktub", "bedorlik"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Sahna asarlarim$$, $$«Oltin devor» (1969) va «Istanbul fojiasi» (1985) sahna asarlarimni yozganman.$$, $$["oltin devor", "istanbul fojiasi", "drama", "teatr"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Unvonlarim$$, $$1987-yilda O'zbekiston xalq shoiri, 1999-yilda O'zbekiston Qahramoni unvonini olganman.$$, $$["unvon", "xalq shoiri", "qahramon", "1987", "1999"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$2016-yil 30-mayda Toshkentda vafot etganman.$$, $$["vafot", "2016", "toshkent"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Erkin Vohidov (1936–2016)$$, FALSE
  FROM heroes h WHERE h.slug = 'erkin-vohidov';

-- ===================== TEST SAVOLLARI (1-partiya) =====================

-- ahmad-al-fargoniy: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$Ahmad al-Farg'oniy qayerda tug'ilgan?$$,
 $$["Buxoroda", "Farg'onada", "Samarqandda", "Xivada"]$$, 1,
 $$Al-Farg'oniy Farg'onada tug'ilgan — taxallusi ham shundan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$Al-Farg'oniy qaysi ilmiy dargohda ishlagan?$$,
 $$["Ma'mun akademiyasida Xorazmda", "Bag'doddagi «Bayt ul-hikma»da", "Samarqand rasadxonasida", "Kordova madrasasida"]$$, 1,
 $$Uning faoliyati Bag'doddagi «Bayt ul-hikma» bilan bog'liq bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$Al-Farg'oniy qaysi shaharlardagi rasadxonalar qurilishida qatnashgan?$$,
 $$["Buxoro va Samarqand", "Bag'dod va Damashq", "Qohira va Iskandariya", "Marv va Hirot"]$$, 1,
 $$U Bag'dod va Damashqdagi rasadxonalar qurilishida qatnashgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$812-yilda al-Farg'oniy nimani oldindan aytib bergan?$$,
 $$["Yer qimirlashini", "Quyosh tutilishini", "Daryo toshqinini", "Kometa kelishini"]$$, 1,
 $$U 812-yilda quyosh tutilishini oldindan bashorat qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$Al-Farg'oniy Yer haqida qanday xulosaga kelgan?$$,
 $$["Yer tekis", "Yer dumaloq", "Yer kvadrat", "Yer harakatsiz"]$$, 1,
 $$Al-Farg'oniy Yerning dumaloq ekanini ochib bergan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$Al-Farg'oniy Misrda qanday asbob yasagan?$$,
 $$["Quyosh soati", "Nil suvini o'lchaydigan asbob", "Teleskop", "Kompas"]$$, 1,
 $$U Nil daryosi suvining sathini o'lchaydigan asbob yasagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$Yevropada al-Farg'oniyni qanday nom bilan atashgan?$$,
 $$["Avitsenna", "Algoritmi", "Alfraganus", "Aristotel"]$$, 2,
 $$Yevropaliklar uni «Alfraganus» deb atashgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$Al-Farg'oniyning nechta asari saqlanib qolgan?$$,
 $$["3 ta", "7 ta", "15 ta", "40 ta"]$$, 1,
 $$Uning yettita asari bizgacha yetib kelgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$Quyidagilardan qaysi biri al-Farg'oniy asari?$$,
 $$["«Tib qonunlari»", "«Astronomiya asoslari»", "«Boburnoma»", "«Xamsa»"]$$, 1,
 $$«Samoviy harakatlar va umumiy ilmi nujum kitobi» — «Astronomiya asoslari» deb ham ataladi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy'), NULL,
 $$1998-yilda al-Farg'oniy sharafiga qaysi shaharda haykal o'rnatilgan?$$,
 $$["Farg'onada", "Quvada", "Toshkentda", "Bag'dodda"]$$, 1,
 $$1200 yillik yubileyida Quva shahrida haykal o'rnatilgan.$$);

-- abu-nasr-forobiy: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$Abu Nasr Forobiy qachon va qayerda tug'ilgan?$$,
 $$["873-yilda Forobda", "850-yilda Buxoroda", "900-yilda Toshkentda", "873-yilda Bag'dodda"]$$, 0,
 $$Forobiy 873-yilda Forob shahrida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$Forobiyni qanday unvon bilan atashgan?$$,
 $$["Birinchi muallim", "Ikkinchi muallim", "Shayxur-rais", "Sohibqiron"]$$, 1,
 $$Uni «Muallimus-soniy» — «Ikkinchi muallim» deb atashgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$«Birinchi muallim» deb kim hisoblangan?$$,
 $$["Platon", "Arastu", "Suqrot", "Ptolemey"]$$, 1,
 $$Dunyo Arastuni birinchi muallim deb bilgan, Forobiy esa ikkinchisi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$Forobiy qaysi shaharlarda o'qigan?$$,
 $$["Toshkent, Buxoro, Samarqandda", "Qohira va Damashqda", "Hirot va Marvda", "Faqat Bag'dodda"]$$, 0,
 $$U boshlang'ich ta'limdan keyin Toshkent, Buxoro va Samarqandda o'qigan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$Forobiy nechta til bilgan?$$,
 $$["10 dan ortiq", "30 dan ortiq", "70 dan ortiq", "Faqat 3 ta"]$$, 2,
 $$Manbalarga ko'ra u yetmishdan ortiq tilni bilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$Forobiy nechta asar yozgan?$$,
 $$["40 ta", "100 ta", "160 dan ortiq", "500 ta"]$$, 2,
 $$U 160 dan ortiq asar yozgan, bizgacha qirqga yaqini yetib kelgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$Quyidagi fanlardan qaysi biri Forobiy shug'ullanganlar ro'yxatiga kiradi?$$,
 $$["Musiqa", "Dengizchilik", "Arxeologiya", "Kartografiya"]$$, 0,
 $$Forobiy musiqa ilmi bilan ham jiddiy shug'ullangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$Forobiy qayerda vafot etgan?$$,
 $$["Bag'dodda", "Damashqda", "Forobda", "Samarqandda"]$$, 1,
 $$U 950-yilda Damashqda vafot etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$Forobiyning bizgacha nechta asari yetib kelgan?$$,
 $$["7 ta", "40 ga yaqin", "100 ta", "Hammasi"]$$, 1,
 $$160 dan ortiq asaridan qirqga yaqini saqlanib qolgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy'), NULL,
 $$«Forobiy» nomi qayerdan olingan?$$,
 $$["Otasining ismidan", "Tug'ilgan shahri Forobdan", "Ustozining nomidan", "Asari nomidan"]$$, 1,
 $$Taxallusi tug'ilgan shahri Forob nomidan olingan.$$);

-- cholpon: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Cho'lponning asl ismi nima?$$,
 $$["Abdulhamid Sulaymon o'g'li", "Abdurauf Fitrat", "Abdulla Qodiriy", "Mahmudxo'ja Behbudiy"]$$, 0,
 $$Cho'lpon — taxallus; asl ismi Abdulhamid Sulaymon o'g'li.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Cho'lpon qachon va qayerda tug'ilgan?$$,
 $$["1897-yilda Andijonda", "1894-yilda Toshkentda", "1886-yilda Buxoroda", "1905-yilda Farg'onada"]$$, 0,
 $$U 1897-yilda Andijon shahrida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Cho'lpon qayerda o'qigan?$$,
 $$["Faqat madrasada", "Madrasada, so'ng rus tipidagi maktabda", "Moskva universitetida", "Faqat uyda"]$$, 1,
 $$Avval madrasada (1908–1912), keyin rus tipidagi maktabda (1912–1914) o'qigan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Quyidagilardan qaysi biri Cho'lponning she'riy to'plami?$$,
 $$["«Buloqlar»", "«Yoshlik devoni»", "«Munojot»", "«Xamsa»"]$$, 0,
 $$«Buloqlar» (1923) — Cho'lponning she'riy to'plami.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Cho'lponning mashhur romani qaysi?$$,
 $$["«O'tkan kunlar»", "«Kecha va kunduz»", "«Navoiy»", "«Sarob»"]$$, 1,
 $$«Kecha va kunduz» romanini 1936-yilda yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$«Kecha va kunduz» romani qachon yozilgan?$$,
 $$["1922-yilda", "1930-yilda", "1936-yilda", "1940-yilda"]$$, 2,
 $$Roman 1936-yilda yaratilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Quyidagilardan qaysi biri Cho'lpon hikoyasi?$$,
 $$["«Novvoy qiz»", "«Sultonali»", "«Anor»", "«O'g'ri»"]$$, 0,
 $$«Novvoy qiz» — Cho'lpon hikoyalaridan biri.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Cho'lpon qaysi adiblar bilan bir davrda ijod qilgan?$$,
 $$["Navoiy va Bobur", "Qodiriy va Fitrat", "Oybek va G'afur G'ulom", "Nodira va Uvaysiy"]$$, 1,
 $$U Abdulla Qodiriy va Abdurauf Fitrat bilan zamondosh bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Cho'lpon hayoti qanday yakunlangan?$$,
 $$["Uzoq umr ko'rgan", "1938-yilda qatag'on qurboni bo'lgan", "Xorijga ketgan", "Noma'lum"]$$, 1,
 $$U 1938-yilda qatag'on qurboni bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'cholpon'), NULL,
 $$Cho'lpon asarlari bugun qanday o'qitiladi?$$,
 $$["Taqiqlangan", "Maktab dasturiga kiritilgan", "Faqat xorijda o'qiladi", "Yo'qolgan"]$$, 1,
 $$Asarlari xalqqa qaytarilgan va maktabda o'qitiladi.$$);

-- abdulla-oripov: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$Abdulla Oripov qachon va qayerda tug'ilgan?$$,
 $$["1941-yilda Qashqadaryoda", "1936-yilda Farg'onada", "1938-yilda Toshkentda", "1945-yilda Samarqandda"]$$, 0,
 $$U 1941-yil 21-martda Qashqadaryo viloyati Koson tumanida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$Oripov universitetda qaysi yo'nalishda o'qigan?$$,
 $$["Filologiya", "Jurnalistika", "Tarix", "Huquq"]$$, 1,
 $$1963-yilda Toshkent davlat universitetining jurnalistika fakultetini tugatgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$O'zbekiston Davlat madhiyasi matnini kim yozgan?$$,
 $$["Erkin Vohidov", "Abdulla Oripov", "Zulfiya", "G'afur G'ulom"]$$, 1,
 $$Madhiya matnini 1992-yilda Abdulla Oripov yozgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$Madhiya matni qaysi yili yozilgan?$$,
 $$["1991", "1992", "1995", "2000"]$$, 1,
 $$Davlat madhiyasi matni 1992-yilda yaratilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$Quyidagilardan qaysi biri Oripovning she'riy kitobi?$$,
 $$["«Munojot»", "«Yoshlik devoni»", "«Tong sirlari»", "«Xamsa»"]$$, 0,
 $$«Munojot» (1992) — Oripov kitoblaridan biri.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$Oripov qaysi dostonlarni yozgan?$$,
 $$["«Jannatga yo'l» va «Sohibqiron»", "«Farhod va Shirin»", "«Layli va Majnun»", "«Qutadg'u bilig»"]$$, 0,
 $$«Jannatga yo'l» (1978) va «Sohibqiron» (1996) dostonlari unga tegishli.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$Oripov qaysi buyuk asarni o'zbekchaga tarjima qilgan?$$,
 $$["«Iliada»", "Dantening «Ilohiy komediya»sini", "«Hamlet»ni", "«Shohnoma»ni"]$$, 1,
 $$U Dantening «Ilohiy komediya» asarini o'girgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$Oripov qachon O'zbekiston Qahramoni bo'lgan?$$,
 $$["1990", "1992", "1998", "2005"]$$, 2,
 $$1998-yilda O'zbekiston Qahramoni unvonini olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$1992-yilda Oripov qaysi mukofotga sazovor bo'lgan?$$,
 $$["Hamza mukofoti", "Alisher Navoiy nomidagi Davlat mukofoti", "Nobel mukofoti", "Boburiy mukofoti"]$$, 1,
 $$1992-yilda Navoiy nomidagi Davlat mukofoti sovrindori bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-oripov'), NULL,
 $$Oripov qachon vafot etgan?$$,
 $$["2010-yilda", "2016-yilda", "2020-yilda", "2001-yilda"]$$, 1,
 $$U 2016-yil 5-noyabrda 75 yoshida vafot etgan.$$);

-- erkin-vohidov: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$Erkin Vohidov qachon va qayerda tug'ilgan?$$,
 $$["1936-yilda Farg'ona viloyatida", "1941-yilda Qashqadaryoda", "1930-yilda Toshkentda", "1945-yilda Andijonda"]$$, 0,
 $$U 1936-yil 28-dekabrda Farg'ona viloyati Oltiariq tumanida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$Vohidov universitetda qaysi fakultetni tugatgan?$$,
 $$["Jurnalistika", "Filologiya", "Tarix", "Matematika"]$$, 1,
 $$1960-yilda ToshDU filologiya fakultetini bitirgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$Vohidov qaysi jurnalga bosh muharrir bo'lgan?$$,
 $$["«Sharq yulduzi»", "«Yoshlik»", "«Guliston»", "«Mushtum»"]$$, 1,
 $$1982–1985-yillarda «Yoshlik» jurnalining bosh muharriri bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$«Yoshlik devoni» qachon chiqqan?$$,
 $$["1961", "1969", "1978", "1985"]$$, 1,
 $$«Yoshlik devoni» 1969-yilda nashr etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$Quyidagilardan qaysi biri Vohidovning ilk kitobi?$$,
 $$["«Tong nafasi»", "«Bedorlik»", "«Munojot»", "«Uyg'onish»"]$$, 0,
 $$«Tong nafasi» (1961) — uning dastlabki to'plami.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$Quyidagilardan qaysi biri Vohidov sahna asari?$$,
 $$["«Oltin devor»", "«Padarkush»", "«Yorqinoy»", "«Sohibqiron»"]$$, 0,
 $$«Oltin devor» (1969) — uning sahna asari.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$«Istanbul fojiasi» asari muallifi kim?$$,
 $$["Abdulla Oripov", "Erkin Vohidov", "Cho'lpon", "Oybek"]$$, 1,
 $$«Istanbul fojiasi» (1985) — Vohidov qalamiga mansub.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$Vohidov qachon O'zbekiston xalq shoiri bo'lgan?$$,
 $$["1983", "1987", "1990", "1999"]$$, 1,
 $$1987-yilda xalq shoiri unvonini olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$Vohidov qachon O'zbekiston Qahramoni bo'lgan?$$,
 $$["1987", "1997", "1999", "2005"]$$, 2,
 $$1999-yilda O'zbekiston Qahramoni unvoniga sazovor bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'erkin-vohidov'), NULL,
 $$Vohidov qachon va qayerda vafot etgan?$$,
 $$["2016-yilda Toshkentda", "2010-yilda Farg'onada", "2020-yilda Samarqandda", "2001-yilda Xivada"]$$, 0,
 $$U 2016-yil 30-mayda Toshkentda vafot etgan.$$);
