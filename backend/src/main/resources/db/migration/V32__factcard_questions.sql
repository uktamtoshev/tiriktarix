-- Fakt kartochkalariga TAYYOR SAVOL matni qo'shiladi.
--
-- MUAMMO. Flesh-kartada old tomon mavzudan yasalar edi: «Tug'ilishi» →
-- «Tug'ilishi haqida nima bilasan?». Katalogda o'nta qahramon bor, ya'ni
-- bunday yozuv KIMNING tug'ilishi ekanini aytmaydi — bu savol emas, topishmoq.
-- Mavzudan avtomatik savol yasab ham bo'lmaydi: mavzular ot birikmasi, ba'zilari
-- birinchi shaxsda («Tug'ilishim», «Vatanim», «Qabrim»), ba'zilari esa umuman
-- savolga aylanmaydi («Kimman», «Julqunboy», «Xotira kuchi»).
--
-- YECHIM. Savol — kontent, shuning uchun u faktning YONIDA, bazada turadi va
-- metodist uni fakt bilan birga tekshiradi. 125 ta kartochkaning har biriga
-- qo'lda yozilgan savol: «Amir Temur qachon va qayerda tug'ilgan?»,
-- «Ulug'bek rasadxonasi qachon qurilgan?», «Bayrog'imizdagi ranglar nimani
-- anglatadi?».
--
-- QOIDALAR:
--   1) Savol O'ZI YETARLI bo'lishi kerak — ichida kim yoki nima haqida
--      ekani aytiladi, chunki karta kontekstsiz ko'rsatiladi.
--   2) Javob AYNAN shu kartochkaning fact_uz matnida bo'lishi shart —
--      savol fakt chegarasidan chiqmaydi (M1 prinsipi).
--   3) Ohang xolis: og'ir mavzular ham quruq beriladi
--      («… hayoti qanday yakunlangan?»).
--
-- Kartochkalar id bo'yicha emas, (mavzu + qahramon/davr) bo'yicha topiladi:
-- id lar bazani qayta yig'ganda o'zgarishi mumkin, bu juftlik esa barqaror.
--
-- Savollar hali tekshirilmagan — metodist fakt bilan birga o'qib chiqsin.

ALTER TABLE fact_cards ADD COLUMN question_uz TEXT;

-- amir-temur
UPDATE fact_cards SET question_uz = $$Amir Temur qachon va qayerda tug'ilgan?$$
 WHERE topic_uz = $$Tug'ilishi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$Amir Temur qaysi yili markazlashgan davlatga asos solgan va qaysi shaharni poytaxt qilgan?$$
 WHERE topic_uz = $$Davlat asoslashi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$«Sohibqiron» unvoni nimani anglatadi?$$
 WHERE topic_uz = $$Sohibqiron unvoni$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$Amir Temur qanday harbiy yurishlar qilgan?$$
 WHERE topic_uz = $$Harbiy yurishlar$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$«Temur tuzuklari» qanday asar va unda nima bayon qilingan?$$
 WHERE topic_uz = $$«Temur tuzuklari»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$Amir Temur davrida Samarqand va Shahrisabzda qanday binolar qurilgan?$$
 WHERE topic_uz = $$Bunyodkorlik$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$Amir Temurning farzandlari kimlar bo'lgan?$$
 WHERE topic_uz = $$Oilasi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$Amir Temur Yevropa davlatlari bilan qanday aloqa o'rnatgan?$$
 WHERE topic_uz = $$Elchilik aloqalari$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$Amir Temur Buyuk ipak yo'li savdosini qanday rivojlantirgan?$$
 WHERE topic_uz = $$Ipak yo'li savdosi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);
UPDATE fact_cards SET question_uz = $$Amir Temur qachon vafot etgan va qayerga dafn qilingan?$$
 WHERE topic_uz = $$Vafoti$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$amir-temur$$);

-- mirzo-ulugbek
UPDATE fact_cards SET question_uz = $$Mirzo Ulug'bek qachon va qayerda tug'ilgan?$$
 WHERE topic_uz = $$Tug'ilishi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$mirzo-ulugbek$$);
UPDATE fact_cards SET question_uz = $$Mirzo Ulug'bek Movarounnahrni qachondan boshlab va qancha vaqt boshqargan?$$
 WHERE topic_uz = $$Hukmronligi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$mirzo-ulugbek$$);
UPDATE fact_cards SET question_uz = $$Ulug'bek rasadxonasi qachon qurilgan va uning bosh asbobi qanday bo'lgan?$$
 WHERE topic_uz = $$Rasadxona$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$mirzo-ulugbek$$);
UPDATE fact_cards SET question_uz = $$«Ziji jadidi Ko'ragoniy»da nechta yulduzning jadvali tuzilgan?$$
 WHERE topic_uz = $$«Ziji jadidi Ko'ragoniy»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$mirzo-ulugbek$$);
UPDATE fact_cards SET question_uz = $$Mirzo Ulug'bek yil uzunligini qanchalik aniq hisoblagan?$$
 WHERE topic_uz = $$Yil hisobi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$mirzo-ulugbek$$);
UPDATE fact_cards SET question_uz = $$Mirzo Ulug'bek qaysi shaharlarda madrasa qurdirgan?$$
 WHERE topic_uz = $$Madrasalari$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$mirzo-ulugbek$$);
UPDATE fact_cards SET question_uz = $$Mirzo Ulug'bek atrofida qanday olimlar to'plangan?$$
 WHERE topic_uz = $$Olimlar davrasi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$mirzo-ulugbek$$);
UPDATE fact_cards SET question_uz = $$Mirzo Ulug'bekning hayoti qanday yakunlangan?$$
 WHERE topic_uz = $$Vafoti$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$mirzo-ulugbek$$);

-- alisher-navoiy
UPDATE fact_cards SET question_uz = $$Alisher Navoiy qachon va qayerda tug'ilgan?$$
 WHERE topic_uz = $$Tug'ilishi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);
UPDATE fact_cards SET question_uz = $$Alisher Navoiy turkiy tilni qanday himoya qilgan?$$
 WHERE topic_uz = $$Ona tili himoyasi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);
UPDATE fact_cards SET question_uz = $$Alisher Navoiyning «Xamsa»siga qaysi besh doston kiradi?$$
 WHERE topic_uz = $$«Xamsa»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);
UPDATE fact_cards SET question_uz = $$Alisher Navoiy Husayn Boyqaro saltanatida qanday lavozimlarda ishlagan?$$
 WHERE topic_uz = $$Davlat xizmati$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);
UPDATE fact_cards SET question_uz = $$Alisher Navoiy xalq uchun qanday inshootlar qurdirgan?$$
 WHERE topic_uz = $$Xayriya ishlari$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);
UPDATE fact_cards SET question_uz = $$Alisher Navoiy she'rlarini qanday devonlarga jamlagan?$$
 WHERE topic_uz = $$Devonlari$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);
UPDATE fact_cards SET question_uz = $$Alisher Navoiy qanday taxalluslar bilan yozgan?$$
 WHERE topic_uz = $$Taxallusi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);
UPDATE fact_cards SET question_uz = $$«Lison ut-tayr» dostoni nima haqida?$$
 WHERE topic_uz = $$«Lison ut-tayr»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);
UPDATE fact_cards SET question_uz = $$Alisher Navoiy qachon va qayerda vafot etgan?$$
 WHERE topic_uz = $$Vafoti$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$alisher-navoiy$$);

-- al-xorazmiy
UPDATE fact_cards SET question_uz = $$Muhammad al-Xorazmiy qayerda tug'ilgan va nega shunday ataladi?$$
 WHERE topic_uz = $$Vatanim$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$al-xorazmiy$$);
UPDATE fact_cards SET question_uz = $$«Algebra» so'zi al-Xorazmiyning qaysi asaridan kelib chiqqan?$$
 WHERE topic_uz = $$Algebra$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$al-xorazmiy$$);
UPDATE fact_cards SET question_uz = $$«Algoritm» so'zi qanday paydo bo'lgan?$$
 WHERE topic_uz = $$Algoritm so'zi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$al-xorazmiy$$);
UPDATE fact_cards SET question_uz = $$Al-Xorazmiy hind raqamlari va nolni qanday tanitgan?$$
 WHERE topic_uz = $$Hind raqamlari$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$al-xorazmiy$$);
UPDATE fact_cards SET question_uz = $$Al-Xorazmiyning geografiyaga oid asari qanday nomlanadi?$$
 WHERE topic_uz = $$Geografiya$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$al-xorazmiy$$);

-- abu-rayhon-beruniy
UPDATE fact_cards SET question_uz = $$Abu Rayhon Beruniy qachon va qayerda tug'ilgan?$$
 WHERE topic_uz = $$Tug'ilishim$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abu-rayhon-beruniy$$);
UPDATE fact_cards SET question_uz = $$Beruniyning «Hindiston» asarida nima yozilgan?$$
 WHERE topic_uz = $$Hindiston haqidagi asar$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abu-rayhon-beruniy$$);
UPDATE fact_cards SET question_uz = $$Beruniy Yer sharining radiusini qanday o'lchagan?$$
 WHERE topic_uz = $$Yer o'lchovi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abu-rayhon-beruniy$$);
UPDATE fact_cards SET question_uz = $$Abu Rayhon Beruniy qancha asar yozgan?$$
 WHERE topic_uz = $$Asarlarim soni$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abu-rayhon-beruniy$$);
UPDATE fact_cards SET question_uz = $$Beruniyning «Osor ul-boqiya» asari nima haqida?$$
 WHERE topic_uz = $$«Osor ul-boqiya»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abu-rayhon-beruniy$$);

-- ibn-sino
UPDATE fact_cards SET question_uz = $$Abu Ali ibn Sino qachon va qayerda tug'ilgan?$$
 WHERE topic_uz = $$Tug'ilishim$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$ibn-sino$$);
UPDATE fact_cards SET question_uz = $$Ibn Sinoning «Tib qonunlari» qanday asar?$$
 WHERE topic_uz = $$«Tib qonunlari»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$ibn-sino$$);
UPDATE fact_cards SET question_uz = $$Ibn Sino necha yoshida tabiblik bilan shug'ullana boshlagan?$$
 WHERE topic_uz = $$Yoshligimdagi ilm$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$ibn-sino$$);
UPDATE fact_cards SET question_uz = $$Ibn Sinoning «Kitob ash-Shifo» asari qaysi fanlarga bag'ishlangan?$$
 WHERE topic_uz = $$«Kitob ash-Shifo»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$ibn-sino$$);
UPDATE fact_cards SET question_uz = $$Ibn Sino yuqumli kasalliklar haqida nima yozgan?$$
 WHERE topic_uz = $$Yuqumli kasalliklar$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$ibn-sino$$);

-- imom-al-buxoriy
UPDATE fact_cards SET question_uz = $$Imom al-Buxoriy qachon va qayerda tug'ilgan?$$
 WHERE topic_uz = $$Tug'ilishim$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$imom-al-buxoriy$$);
UPDATE fact_cards SET question_uz = $$Imom al-Buxoriyning «Al-Jome' as-Sahih» asari qanday to'plam?$$
 WHERE topic_uz = $$«Al-Jome' as-Sahih»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$imom-al-buxoriy$$);
UPDATE fact_cards SET question_uz = $$Imom al-Buxoriy hadis to'plash uchun qayerlarga safar qilgan?$$
 WHERE topic_uz = $$Safarlarim$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$imom-al-buxoriy$$);
UPDATE fact_cards SET question_uz = $$Imom al-Buxoriy necha yoshida necha ming hadisni yoddan bilgan?$$
 WHERE topic_uz = $$Xotira kuchi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$imom-al-buxoriy$$);
UPDATE fact_cards SET question_uz = $$Imom al-Buxoriyning qabri qayerda?$$
 WHERE topic_uz = $$Qabrim$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$imom-al-buxoriy$$);

-- jaloliddin-manguberdi
UPDATE fact_cards SET question_uz = $$Jaloliddin Manguberdi kim bo'lgan?$$
 WHERE topic_uz = $$Kimman$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$jaloliddin-manguberdi$$);
UPDATE fact_cards SET question_uz = $$Parvon jangi qachon bo'lgan va u nimasi bilan ahamiyatli?$$
 WHERE topic_uz = $$Parvon jangi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$jaloliddin-manguberdi$$);
UPDATE fact_cards SET question_uz = $$Sind daryosi bo'yidagi jangda Jaloliddin Manguberdi qanday yo'l tutgan?$$
 WHERE topic_uz = $$Sind daryosi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$jaloliddin-manguberdi$$);
UPDATE fact_cards SET question_uz = $$Jaloliddin Manguberdining mo'g'ullarga qarshi kurashi qancha davom etgan?$$
 WHERE topic_uz = $$Kurashim qancha davom etdi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$jaloliddin-manguberdi$$);

-- bobur
UPDATE fact_cards SET question_uz = $$Zahiriddin Muhammad Bobur qachon va qayerda tug'ilgan?$$
 WHERE topic_uz = $$Tug'ilishim$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$bobur$$);
UPDATE fact_cards SET question_uz = $$«Boburnoma» qanday kitob va u nima haqida?$$
 WHERE topic_uz = $$«Boburnoma»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$bobur$$);
UPDATE fact_cards SET question_uz = $$Bobur Hindistonda qanday davlatga asos solgan?$$
 WHERE topic_uz = $$Hindistonga yurish$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$bobur$$);
UPDATE fact_cards SET question_uz = $$Boburning she'rlarida vatan sog'inchi qanday aks etgan?$$
 WHERE topic_uz = $$Vatan sog'inchi$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$bobur$$);
UPDATE fact_cards SET question_uz = $$Bobur necha yoshida Farg'ona taxtiga o'tirgan?$$
 WHERE topic_uz = $$Farg'ona taxti$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$bobur$$);

-- abdulla-qodiriy
UPDATE fact_cards SET question_uz = $$Abdulla Qodiriy qachon va qayerda tug'ilgan?$$
 WHERE topic_uz = $$Tug'ilishim$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abdulla-qodiriy$$);
UPDATE fact_cards SET question_uz = $$«O'tkan kunlar» nima uchun o'zbek adabiyotida muhim?$$
 WHERE topic_uz = $$«O'tkan kunlar»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abdulla-qodiriy$$);
UPDATE fact_cards SET question_uz = $$Abdulla Qodiriyning «Mehrobdan chayon» romani nima haqida?$$
 WHERE topic_uz = $$«Mehrobdan chayon»$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abdulla-qodiriy$$);
UPDATE fact_cards SET question_uz = $$Abdulla Qodiriy hajviy asarlarini qanday taxallus bilan e'lon qilgan?$$
 WHERE topic_uz = $$Julqunboy$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abdulla-qodiriy$$);
UPDATE fact_cards SET question_uz = $$Abdulla Qodiriyning hayoti qanday yakunlangan?$$
 WHERE topic_uz = $$Qatag'on$$
   AND hero_id = (SELECT id FROM heroes WHERE slug = $$abdulla-qodiriy$$);

-- davr: qadimgi
UPDATE fact_cards SET question_uz = $$O'zbekiston hududidagi eng qadimgi odamlarning izlari qayerdan topilgan?$$
 WHERE topic_uz = $$Eng qadimgi manzilgohlar$$
   AND era_id = (SELECT id FROM eras WHERE code = $$qadimgi$$);
UPDATE fact_cards SET question_uz = $$«Avesto» qanday kitob va u qachon yaratila boshlagan?$$
 WHERE topic_uz = $$«Avesto»$$
   AND era_id = (SELECT id FROM eras WHERE code = $$qadimgi$$);
UPDATE fact_cards SET question_uz = $$Hududimizdagi eng qadimgi davlatlar qaysilar?$$
 WHERE topic_uz = $$Ilk davlatlar$$
   AND era_id = (SELECT id FROM eras WHERE code = $$qadimgi$$);
UPDATE fact_cards SET question_uz = $$To'maris kim bo'lgan va u nimasi bilan mashhur?$$
 WHERE topic_uz = $$To'maris jasorati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$qadimgi$$);
UPDATE fact_cards SET question_uz = $$Shiroq kim bo'lgan va u qanday jasorat ko'rsatgan?$$
 WHERE topic_uz = $$Shiroq jasorati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$qadimgi$$);
UPDATE fact_cards SET question_uz = $$Bronza davri yodgorliklari qayerdan topilgan?$$
 WHERE topic_uz = $$Bronza davri madaniyati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$qadimgi$$);
UPDATE fact_cards SET question_uz = $$Zardushtiylik dinida nimalar muqaddas sanalgan?$$
 WHERE topic_uz = $$Zardushtiylik dini$$
   AND era_id = (SELECT id FROM eras WHERE code = $$qadimgi$$);
UPDATE fact_cards SET question_uz = $$Qadimgi Xorazmda qanday qal'alar qurilgan?$$
 WHERE topic_uz = $$Qadimgi Xorazm qal'alari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$qadimgi$$);

-- davr: antik
UPDATE fact_cards SET question_uz = $$Iskandar Maqduniy Movarounnahrga qachon bostirib kirgan?$$
 WHERE topic_uz = $$Iskandar yurishi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$antik$$);
UPDATE fact_cards SET question_uz = $$Yunon-Baqtriya davlati qachon tashkil topgan?$$
 WHERE topic_uz = $$Yunon-Baqtriya davlati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$antik$$);
UPDATE fact_cards SET question_uz = $$Qang' davlati qayerda joylashgan edi?$$
 WHERE topic_uz = $$Qang' davlati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$antik$$);
UPDATE fact_cards SET question_uz = $$Dovon davlati nimasi bilan mashhur bo'lgan?$$
 WHERE topic_uz = $$Dovon davlati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$antik$$);
UPDATE fact_cards SET question_uz = $$Kushon saltanati qachon hukmronlik qilgan?$$
 WHERE topic_uz = $$Kushon saltanati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$antik$$);
UPDATE fact_cards SET question_uz = $$Buyuk ipak yo'li qaysi mamlakatlarni bog'lagan?$$
 WHERE topic_uz = $$Buyuk ipak yo'li$$
   AND era_id = (SELECT id FROM eras WHERE code = $$antik$$);
UPDATE fact_cards SET question_uz = $$So'g'd savdogarlari Ipak yo'lida qanday o'rin tutgan?$$
 WHERE topic_uz = $$So'g'd savdogarlari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$antik$$);
UPDATE fact_cards SET question_uz = $$Afrosiyob nima va u yerdan qanday topilmalar chiqqan?$$
 WHERE topic_uz = $$Afrosiyob$$
   AND era_id = (SELECT id FROM eras WHERE code = $$antik$$);

-- davr: arab
UPDATE fact_cards SET question_uz = $$Movarounnahrni arablar qachon va kim boshchiligida bosib olgan?$$
 WHERE topic_uz = $$Arablar istilosi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$arab$$);
UPDATE fact_cards SET question_uz = $$Muqanna qo'zg'oloni qachon va nimaga qarshi ko'tarilgan?$$
 WHERE topic_uz = $$Muqanna qo'zg'oloni$$
   AND era_id = (SELECT id FROM eras WHERE code = $$arab$$);
UPDATE fact_cards SET question_uz = $$«Bayt ul-hikma» nima va u yerda yurtimizdan kimlar ishlagan?$$
 WHERE topic_uz = $$Bayt ul-hikma va olimlarimiz$$
   AND era_id = (SELECT id FROM eras WHERE code = $$arab$$);
UPDATE fact_cards SET question_uz = $$Ahmad al-Farg'oniy qanday olim bo'lgan?$$
 WHERE topic_uz = $$Ahmad al-Farg'oniy$$
   AND era_id = (SELECT id FROM eras WHERE code = $$arab$$);
UPDATE fact_cards SET question_uz = $$Hadis ilmining qaysi buyuk olimlari yurtimizdan yetishib chiqqan?$$
 WHERE topic_uz = $$Hadis ilmi sultonlari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$arab$$);
UPDATE fact_cards SET question_uz = $$Somoniylar davlatining poytaxti qaysi shahar bo'lgan?$$
 WHERE topic_uz = $$Somoniylar davlati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$arab$$);
UPDATE fact_cards SET question_uz = $$Ibn Sino va Beruniy jahon faniga qanday hissa qo'shgan?$$
 WHERE topic_uz = $$Ibn Sino va Beruniy$$
   AND era_id = (SELECT id FROM eras WHERE code = $$arab$$);
UPDATE fact_cards SET question_uz = $$Abu Nasr Forobiy nega «Ikkinchi muallim» deb atalgan?$$
 WHERE topic_uz = $$Abu Nasr Forobiy$$
   AND era_id = (SELECT id FROM eras WHERE code = $$arab$$);

-- davr: temuriylar
UPDATE fact_cards SET question_uz = $$Movarounnahrda markazlashgan davlat qachon va kim tomonidan asos solingan?$$
 WHERE topic_uz = $$Markazlashgan davlat$$
   AND era_id = (SELECT id FROM eras WHERE code = $$temuriylar$$);
UPDATE fact_cards SET question_uz = $$Amir Temur Samarqandni qanday shaharga aylantirgan?$$
 WHERE topic_uz = $$Poytaxt Samarqand$$
   AND era_id = (SELECT id FROM eras WHERE code = $$temuriylar$$);
UPDATE fact_cards SET question_uz = $$Ulug'bek rasadxonasi qachon qurilgan va u yerda qanday asar yaratilgan?$$
 WHERE topic_uz = $$Ulug'bek rasadxonasi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$temuriylar$$);
UPDATE fact_cards SET question_uz = $$Ulug'bek qaysi shaharlarda madrasa qurdirgan?$$
 WHERE topic_uz = $$Ulug'bek madrasalari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$temuriylar$$);
UPDATE fact_cards SET question_uz = $$Alisher Navoiy turkiy til uchun nima qilgan?$$
 WHERE topic_uz = $$Navoiy va ona tili$$
   AND era_id = (SELECT id FROM eras WHERE code = $$temuriylar$$);
UPDATE fact_cards SET question_uz = $$Hirot XV asr oxirida nega Sharqning madaniy poytaxti sanalgan?$$
 WHERE topic_uz = $$Hirot madaniy markazi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$temuriylar$$);
UPDATE fact_cards SET question_uz = $$Temuriylar davri nega «Sharq Uyg'onish davri» deb ataladi?$$
 WHERE topic_uz = $$Sharq Uyg'onish davri$$
   AND era_id = (SELECT id FROM eras WHERE code = $$temuriylar$$);
UPDATE fact_cards SET question_uz = $$Bobur Hindistonda qanday saltanatga asos solgan?$$
 WHERE topic_uz = $$Bobur va boburiylar$$
   AND era_id = (SELECT id FROM eras WHERE code = $$temuriylar$$);

-- davr: xonliklar
UPDATE fact_cards SET question_uz = $$Shayboniylar Movarounnahrda hokimiyatni qachon egallagan?$$
 WHERE topic_uz = $$Shayboniylar davri$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xonliklar$$);
UPDATE fact_cards SET question_uz = $$XVIII–XIX asrlarda hududimizda qanday uchta davlat bo'lgan?$$
 WHERE topic_uz = $$Uch davlat$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xonliklar$$);
UPDATE fact_cards SET question_uz = $$Abulg'oziy Bahodirxon qanday asar yozgan?$$
 WHERE topic_uz = $$Xon-tarixchi Abulg'oziy$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xonliklar$$);
UPDATE fact_cards SET question_uz = $$Xivaning Ichan-qal'a majmuasi nimasi bilan noyob?$$
 WHERE topic_uz = $$Ichan-qal'a$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xonliklar$$);
UPDATE fact_cards SET question_uz = $$Xonliklar davrida Buxoroda qanday binolar qurilgan?$$
 WHERE topic_uz = $$Buxoro me'morligi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xonliklar$$);
UPDATE fact_cards SET question_uz = $$Xonliklar davrida qaysi shoirlar ijod qilgan?$$
 WHERE topic_uz = $$Mumtoz adabiyot$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xonliklar$$);
UPDATE fact_cards SET question_uz = $$Xonliklar davrining mashhur shoiralari kimlar bo'lgan?$$
 WHERE topic_uz = $$Shoiralar$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xonliklar$$);
UPDATE fact_cards SET question_uz = $$Xonliklar davrida qanday hunarmandchilik maktablari shakllangan?$$
 WHERE topic_uz = $$Hunarmandchilik va savdo$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xonliklar$$);

-- davr: jadidlar
UPDATE fact_cards SET question_uz = $$Toshkent qachon Rossiya imperiyasi tomonidan bosib olingan?$$
 WHERE topic_uz = $$Rossiya istilosi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$jadidlar$$);
UPDATE fact_cards SET question_uz = $$Jadidchilik harakati nimaga qaratilgan edi?$$
 WHERE topic_uz = $$Jadidchilik harakati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$jadidlar$$);
UPDATE fact_cards SET question_uz = $$Yangi usul maktablari eski maktabdan nimasi bilan farq qilgan?$$
 WHERE topic_uz = $$Yangi usul maktablari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$jadidlar$$);
UPDATE fact_cards SET question_uz = $$Mahmudxo'ja Behbudiy nimasi bilan mashhur?$$
 WHERE topic_uz = $$Mahmudxo'ja Behbudiy$$
   AND era_id = (SELECT id FROM eras WHERE code = $$jadidlar$$);
UPDATE fact_cards SET question_uz = $$Munavvarqori Abdurashidxonov va Abdulla Avloniy nima ish qilgan?$$
 WHERE topic_uz = $$Munavvarqori va Avloniy$$
   AND era_id = (SELECT id FROM eras WHERE code = $$jadidlar$$);
UPDATE fact_cards SET question_uz = $$Birinchi o'zbek gazetalari qachon chiqa boshlagan?$$
 WHERE topic_uz = $$Milliy matbuot$$
   AND era_id = (SELECT id FROM eras WHERE code = $$jadidlar$$);
UPDATE fact_cards SET question_uz = $$Fitrat va Cho'lpon qanday asarlar yozgan?$$
 WHERE topic_uz = $$Fitrat va Cho'lpon$$
   AND era_id = (SELECT id FROM eras WHERE code = $$jadidlar$$);
UPDATE fact_cards SET question_uz = $$Jadidlarning bosh g'oyasi nima edi?$$
 WHERE topic_uz = $$Jadidlar merosi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$jadidlar$$);

-- davr: xx-asr
UPDATE fact_cards SET question_uz = $$Turkiston muxtoriyati qachon va qayerda e'lon qilingan?$$
 WHERE topic_uz = $$Turkiston muxtoriyati$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xx-asr$$);
UPDATE fact_cards SET question_uz = $$O'zbekiston SSR qachon tashkil etilgan?$$
 WHERE topic_uz = $$O'zbekiston SSR$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xx-asr$$);
UPDATE fact_cards SET question_uz = $$1937–1938-yillardagi qatag'onda millatning qaysi farzandlari qurbon bo'lgan?$$
 WHERE topic_uz = $$Qatag'on qurbonlari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xx-asr$$);
UPDATE fact_cards SET question_uz = $$Ikkinchi jahon urushi yillarida O'zbekiston qanday hissa qo'shgan?$$
 WHERE topic_uz = $$Urush yillarida O'zbekiston$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xx-asr$$);
UPDATE fact_cards SET question_uz = $$Paxta yakkahokimligi qanday oqibatlarga olib kelgan?$$
 WHERE topic_uz = $$Paxta yakkahokimligi va Orol$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xx-asr$$);
UPDATE fact_cards SET question_uz = $$Toshkent zilzilasi qachon yuz bergan?$$
 WHERE topic_uz = $$Toshkent zilzilasi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xx-asr$$);
UPDATE fact_cards SET question_uz = $$XX asrda qaysi o'zbek yozuvchilari ijod qilgan?$$
 WHERE topic_uz = $$XX asr adabiyoti$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xx-asr$$);
UPDATE fact_cards SET question_uz = $$O'zbek tiliga davlat tili maqomi qachon berilgan?$$
 WHERE topic_uz = $$Mustaqillik sari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$xx-asr$$);

-- davr: mustaqillik
UPDATE fact_cards SET question_uz = $$O'zbekiston davlat mustaqilligi qachon e'lon qilingan?$$
 WHERE topic_uz = $$Mustaqillik e'loni$$
   AND era_id = (SELECT id FROM eras WHERE code = $$mustaqillik$$);
UPDATE fact_cards SET question_uz = $$O'zbekiston Respublikasining Konstitutsiyasi qachon qabul qilingan?$$
 WHERE topic_uz = $$Konstitutsiya$$
   AND era_id = (SELECT id FROM eras WHERE code = $$mustaqillik$$);
UPDATE fact_cards SET question_uz = $$Davlat bayrog'i, gerbi va madhiyasi qachon qabul qilingan?$$
 WHERE topic_uz = $$Davlat ramzlari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$mustaqillik$$);
UPDATE fact_cards SET question_uz = $$Bayrog'imizdagi ranglar nimani anglatadi?$$
 WHERE topic_uz = $$Bayroq ranglari$$
   AND era_id = (SELECT id FROM eras WHERE code = $$mustaqillik$$);
UPDATE fact_cards SET question_uz = $$O'zbekiston Birlashgan Millatlar Tashkilotiga qachon a'zo bo'lgan?$$
 WHERE topic_uz = $$Jahon hamjamiyatida$$
   AND era_id = (SELECT id FROM eras WHERE code = $$mustaqillik$$);
UPDATE fact_cards SET question_uz = $$Milliy valyutamiz so'm qachon muomalaga kiritilgan?$$
 WHERE topic_uz = $$Milliy valyuta$$
   AND era_id = (SELECT id FROM eras WHERE code = $$mustaqillik$$);
UPDATE fact_cards SET question_uz = $$Mustaqillik yillarida qanday qadriyatlar qayta tiklandi?$$
 WHERE topic_uz = $$Qadriyatlar tiklanishi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$mustaqillik$$);
UPDATE fact_cards SET question_uz = $$O'zbekistonning qaysi tarixiy markazlari YUNESKO ro'yxatiga kiritilgan?$$
 WHERE topic_uz = $$Jahon merosi$$
   AND era_id = (SELECT id FROM eras WHERE code = $$mustaqillik$$);
