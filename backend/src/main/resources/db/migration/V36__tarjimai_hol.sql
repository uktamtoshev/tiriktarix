-- Ajdodlar uchun TARJIMAI HOL sahifasi: matn va manbalar.
--
-- MATN QAYERDAN OLINGAN. Har bir tarjimai hol internetdan, faqat ruxsat
-- etilgan manbalardan yig'ilgan: asosan Ziyouz.com ning ensiklopedik
-- bo'limlari va O'zbekiston Milliy axborot agentligi (UzA). Bloglar,
-- referat saytlar va «qiziqarli faktlar» saytlaridan hech narsa olinmadi.
-- Vikipediya faqat qidiruv ko'rsatkichi sifatida ishlatildi, manba sifatida
-- keltirilmadi.
--
-- HECH NARSA YoDDAN YOZILMADI. Matnlarda faqat manbada bor gaplar bor.
-- Har bir bo'lim oxirida [n] belgisi turadi — u biography_sources dagi
-- manbaga ishora qiladi va sahifada ko'rinadi.
--
-- SANALAR IKKI MANBADAN TEKSHIRILDI: ziyouz maqolasi va loyihaning o'z fakt
-- kartochkalari (ular maktab darsligiga tayanadi). Ziddiyat chiqqan joyda
-- darslik varianti olindi va bu haqda matnda yoki izohda aytildi.
--
-- biography_verified = FALSE: metodist-tarixchi hammasini o'qib chiqishi
-- shart. Shu vaqtgacha sahifada «Matn metodist tekshiruvidan o'tmoqda»
-- degan yozuv turadi.

ALTER TABLE heroes ADD COLUMN biography_uz TEXT;
ALTER TABLE heroes ADD COLUMN biography_sources JSONB;
ALTER TABLE heroes ADD COLUMN biography_verified BOOLEAN NOT NULL DEFAULT FALSE;

-- Davr sahifasi uchun ham xuddi shu ustunlar. Matnlar hali yig'ilmagan:
-- sahifa ishlaydi, lekin tarjimai hol bo'limi bo'sh ko'rinadi.
ALTER TABLE eras ADD COLUMN biography_uz TEXT;
ALTER TABLE eras ADD COLUMN biography_sources JSONB;
ALTER TABLE eras ADD COLUMN biography_verified BOOLEAN NOT NULL DEFAULT FALSE;


UPDATE heroes
   SET biography_uz      = $$## Bolaligi va ustozi
Abu Rayhon Beruniy 973-yil 4-sentabrda Xorazmning qadimgi poytaxti Qiyot (Kot) shahrida tug'ilgan. Dastlabki ta'limni ona shahrida olgan. Unga astronomiya va matematikadan mashhur olim Abu Nasr ibn Iroq saboq bergan. [1]

## Ilmga ilk qadamlar
Beruniy 17 yoshida birinchi astronomik kuzatishlarini o'tkazgan. Uning taxallusi ham shu yerdan: «berun» yoki «birun» so'zi «tashqari» degan ma'noni bildiradi. [1]

## Asosiy ishlari
Umri davomida 150 dan ortiq ilmiy asar yozgan. Ular astronomiya, geografiya, tarix, mineralogiya va tibbiyotga oid. Eng mashhurlari: «Osor ul-boqiya» — turli xalqlarning taqvimlari, bayramlari va yil hisoblari haqida; «Hindiston» — bu mamlakat xalqining dini va urf-odatlari haqida; shuningdek «Geodeziya», «Mineralogiya» va «Farmakologiya». [1]

## Tabiat haqidagi qarashlari
Uning harakat, tovush, issiqlik, yorug'lik, magnitlik va modda tuzilishi haqidagi ishlari tabiiy fanlar rivojida katta ahamiyatga ega bo'lgan. Beruniy globusni yaratgan olimlardan biri sanaladi. [1]

## Umrining oxiri
Beruniy 1048-yil 13-dekabrda G'azna shahrida vafot etgan. Manbalarga ko'ra uning 152 ta kitobining nomi bizgacha yetib kelmagan, bor-yo'g'i 27 tasi saqlanib qolgan. [1]$$,
       biography_sources = $$[{"n": 1, "title": "Abu Rayhon Beruniy (973–1048). Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/tarix/qomusiy-olimlar-sarkardalar/abu-rayhon-beruniy-973-1048", "note": "Tug'ilgan sana va joyi, ustozi, asarlari, vafot sanasi, asarlar soni"}]$$::jsonb
 WHERE slug = 'abu-rayhon-beruniy';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi va tarbiyasi
Mirzo Ulug'bek 1394-yil 22-martda Sultoniya shahrida, Amir Temurning harbiy yurishi paytida tug'ilgan. To'rt yoshidan tarbiyasi bilan buvisi Saroymulkxonim va bobosi Amir Temur shug'ullangan; unga Amir Shoh Malik murabbiylik qilgan. Temur sevimli nabirasini safarlarda ham o'zi bilan olib yurgan. [1]

## Samarqand hukmdori
Amir Temur vafotidan keyin Ulug'bek Samarqand hokimi bo'ldi va Movarounnahrni qariyb qirq yil boshqardi. Uning davrida Samarqand ilm-fan markaziga aylandi. [1][2]

## Olimlar davrasi
Ulug'bek atrofiga o'z davrining yetuk olimlarini to'plagan: ustozi Qozizoda Rumiy, «o'z zamonasining Ptolemeyi» deb atalgan Ali Qushchi, matematik va astronomlar G'iyosiddin Jamshid Koshiy, Mansur Koshiy, Birjandiy, Miram Chalabiy. [1]

## Rasadxona va yulduzlar jadvali
Samarqandda Obirahmat soyi yoqasida uch qavatli, balandligi 50 metrga yaqin rasadxona qurdirgan. U yerda ishlagan olimlar 1018 ta yulduzning o'rnini aniqlaganlar. Bu ishning natijasi — «Ziji jadidi Ko'ragoniy» asari. Ulug'bekning boshqa asarlari: «Bir daraja sinusini aniqlash haqida risola», «Risolai Ulug'bek», «To'rt ulus tarixi». [1]

## Umrining oxiri
Ulug'bek 1449-yilda o'g'li Abdulatifning roziligi bilan yollangan qotil tomonidan o'ldirilgan. [1][2]$$,
       biography_sources = $$[{"n": 1, "title": "Mirzo Ulug'bek (1394–1449). Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/tarix/qomusiy-olimlar-sarkardalar/mirzo-ulug-bek-1394-1449", "note": "Tug'ilishi, tarbiyasi, olimlar davrasi, rasadxona va 1018 yulduz, asarlari, vafoti"}, {"n": 2, "title": "«O'zbekiston tarixi» 7-sinf darsligi (loyihaning fakt kartochkalari orqali)", "url": "", "note": "Hukmronlik yillari (1409-yildan) va vafot sanasi — kartochkalar bilan solishtirildi"}]$$::jsonb
 WHERE slug = 'mirzo-ulugbek';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi
Abu Ali al-Husayn ibn Abdulloh ibn Sino hijriy 370 (milodiy 980) yilda Buxoro yaqinidagi Afshona qishlog'ida tug'ilgan. [1]

## Ta'limi
Yoshligidanoq o'tkir zehni bilan ajralib turgan. An-Notiliy qo'lida tahsil olgan. O'n yoshida Qur'onni yod bilgan, o'n olti yoshida esa atoqli tabib bo'lgan. Buxoro amiri Nuh ibn Mansurni davolagani uchun saroyning boy kutubxonasidan foydalanish huquqini qo'lga kiritgan. [1]

## Safarlari
1002-yilda Buxorodan chiqib ketgan va Urganch, Obivard, Naso, Nishopur, Jurjon, Ray, Isfahon, Hamadon shaharlarida bo'lgan. [1]

## Asarlari
Astronomiya, falsafa, matematika, fizika, kimyo, tibbiyot, mantiq, adabiyot va mineralogiya bilan shug'ullangan. Turli fanlarga oid 450 dan ortiq asar yaratgani ma'lum, bizgacha 242 tasi yetib kelgan. Eng mashhurlari — tibbiyotga oid «Al-Qonun fit-tib» va falsafa, mantiq hamda tabiat fanlari qomusi bo'lgan «Kitob ash-Shifo». U shoir sifatida ham ijod qilgan: doston, qasida, g'azal va ruboiylar yozgan, tibbiy ko'rsatmalarni she'r bilan bayon etgan. [1]

## Nomi va merosi
Sharqda «Shayxur-rais», G'arbda «Avitsenna» nomi bilan mashhur. [1]

## Umrining oxiri
Ibn Sino 1037-yilda (hijriy 428) 57 yoshida Hamadon shahrida vafot etgan. [1]$$,
       biography_sources = $$[{"n": 1, "title": "Abu Ali ibn Sino (980–1037). Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/tarix/qomusiy-olimlar-sarkardalar/abu-ali-ibn-sino-980-1037", "note": "Tug'ilishi, ustozi, saroy kutubxonasi, safarlari, asarlari soni, vafoti"}]$$::jsonb
 WHERE slug = 'ibn-sino';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi va oilasi
Imom al-Buxoriyning asl ismi — Abu Abdulloh Muhammad ibn Ismoil al-Buxoriy. U 810-yil 21-iyulda Buxoroda tug'ilgan. Otasi Ismoil o'z davrining yetuk muhaddislaridan biri edi; otasi vafot etgach, tarbiya onasi zimmasiga tushgan. [1]

## Ta'limi
Besh-olti yoshidan hadislarni o'rganishga va yodlashga kirishgan. Al-Doxiliy, Muhammad ibn Salom al-Poykandiy, Muhammad ibn Yusuf al-Poykandiy kabi taniqli muhaddislardan saboq olgan. [1]

## Safarlari
O'n olti yoshga yetganda o'z yurtidagi ustozlaridan hadis yozib olib, boshqa o'lkalarga yo'l olgan. 825-yilda Makkaga, 827-yilda Madinaga borgan. Hijoz shaharlariga qilgan safari olti yil davom etgan. So'ng Basra, Kufa, Bag'dod, Shom va Misrga, shuningdek Marv, Balx, Hirot, Nishopur kabi shaharlarga borib, ular yerdagi olimlardan saboq olgan. [1]

## Asosiy ishi
Umri bo'yi hadislarni to'plash va tizimga solish bilan shug'ullangan, ularni ishonchli (sahih) va zaiflarga ajratgan. Buning uchun hadis rivoyat qilganlarning yashash joyi, tug'ilgan va vafot etgan sanalarini o'rgangan. Jami 600 mingga yaqin hadis to'plagan. Yigirmadan ortiq kitob yozgan; ulardan «Al-Jome' as-sahih» — eng ishonchli hadislar to'plami, «Al-Adab al-mufrad» esa 1322 hadis va xabarni jamlagan tarbiyaviy to'plamdir. [1]

## Umrining oxiri
Al-Buxoriy 870-yil 31-avgustda Samarqand yaqinidagi Xartang qishlog'ida vafot etgan. [1]$$,
       biography_sources = $$[{"n": 1, "title": "Imom Ismoil al-Buxoriy (810–870). Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/tarix/qomusiy-olimlar-sarkardalar/imom-ismoil-al-buxoriy-810-870", "note": "Tug'ilgan va vafot sanalari, oilasi, ustozlari, safarlari, asarlari va hadislar soni"}]$$::jsonb
 WHERE slug = 'imom-al-buxoriy';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi
Abu Abdulloh Muhammad ibn Muso al-Xorazmiy Xorazm o'lkasida tug'ilgan — taxallusi ham shundan. [1][2]

## Bag'dodda
Al-Xorazmiy Bag'dodda tashkil etilgan Ma'mun akademiyasining («Bayt ul-hikma») ilk tashkilotchilaridan va eng faol a'zolaridan biri bo'lgan. U Ahmad al-Farg'oniy bilan birga Bag'dodda rasadxona qurishga boshchilik qilgan. [1]

## Astronomiya ishlari
Rasadxona asboblari yordamida osmon jismlarini va Yer kurrasini o'rgangan. Uning boshchiligidagi olimlar mingdan ortiq yulduzni tekshirib, ularning joylashuv xaritasini tuzganlar va Yer kurrasi aylanasining uzunligini aniqlaganlar. Astronomiyaga oid ishlari «Zij» kitobida bayon etilgan. [1]

## Matematika va «algebra» so'zi
Uning nomini tarixda qoldirgan asar — «Al-jabr val-muqobala» risolasi. Undagi «al-jabr» so'zidan Yevropa tillariga «algebra» atamasi kirgan. Olimning nomi lotin tiliga «Algoritmi» shaklida o'girilgani sababli hisoblash qoidalari ketma-ketligi «algoritm» deb ataladigan bo'lgan. [1][2]

## Geografiya
«Surat al-arz» kitobida Afrika, Osiyo va Yevropa qit'alarini, ma'lum bo'lgan shaharlar va daryolarning koordinatalarini tavsiflagan. [1][2]

## Umrining oxiri
Al-Xorazmiy 850-yilda Bag'dod shahrida vafot etgan. [1]$$,
       biography_sources = $$[{"n": 1, "title": "Muhammad al-Xorazmiy (780–850). Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/tarix/qomusiy-olimlar-sarkardalar/muhammad-al-xorazmiy-780-850", "note": "Ma'mun akademiyasi, rasadxona, «Al-jabr val-muqobala», «Surat al-arz», vafot joyi va sanasi"}, {"n": 2, "title": "«O'zbekiston tarixi» 6-sinf darsligi (loyihaning fakt kartochkalari orqali)", "url": "", "note": "Tug'ilgan joyi, «algebra» va «algoritm» so'zlarining kelib chiqishi, o'nlik sanoq tizimi"}]$$::jsonb
 WHERE slug = 'al-xorazmiy';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi va oilasi
Amir Temur 1336-yil 9-aprelda Kesh (hozirgi Shahrisabz) yaqinidagi Xo'ja Ilg'or qishlog'ida tug'ilgan. Otasi — barlos urug'idan bo'lgan Amir Muhammad Tarag'ay. [1][2]

## Hokimiyatga kelishi
1360-yillarda o'lka kurashlarida qatnasha boshlagan. 1370-yilda Movarounnahrda markazlashgan davlatga asos solgan va Samarqandni poytaxt qilib tanlagan. [1][2]

## Davlat va shaharlar
Uning davrida shaharlar mustahkamlangan: 1365-yilda Qarshi, 1370-yilda Samarqand, 1380-yilda Kesh atrofiga devor qurilgan. Sug'orish inshootlari, bozorlar va hunarmandchilik ustaxonalari barpo etilgan. Samarqandda Bibixonim jome masjidi va Go'ri Amir maqbarasi, Shahrisabzda Oqsaroy qurilgan. [1][2]

## Yurishlari
Umri davomida ko'plab harbiy yurishlar qilgan. 1395-yilda To'xtamishxon ustidan hal qiluvchi g'alaba qozongan. Saltanati keyinchalik Xitoy chegaralaridan O'rta yer dengizigacha cho'zilgan. [1]

## Bunyodkorlik va savdo
Buyuk ipak yo'li savdosini rivojlantirgan: karvon yo'llarini xavfsiz qilgan, Samarqandni savdo markaziga aylantirgan. Yevropa davlatlari bilan elchilik aloqalari o'rnatgan. [2]

## Umrining oxiri
Amir Temur 1405-yilda vafot etgan; Samarqanddagi Go'ri Amir maqbarasiga dafn qilingan. [1][2]$$,
       biography_sources = $$[{"n": 1, "title": "Sohibqiron Amir Temur (1336–1405). Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/tarix/qomusiy-olimlar-sarkardalar/sohibqiron-amir-temur-1336-1405", "note": "Tug'ilgan sana va joyi, otasi, 1370-yil, shahar devorlari sanalari, yurishlar, vafoti"}, {"n": 2, "title": "«O'zbekiston tarixi» 7-sinf darsligi (loyihaning fakt kartochkalari orqali)", "url": "", "note": "Poytaxt Samarqand, bunyodkorlik, ipak yo'li savdosi, elchilik aloqalari, dafn joyi"}]$$::jsonb
 WHERE slug = 'amir-temur';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi va oilasi
Alisher Navoiy 1441-yil 9-fevralda Hirot shahrida tug'ilgan. Asl ismi — Nizomiddin Mir Alisher. Otasi G'iyosiddin Bahodir temuriylar saroyiga yaqin kishi edi. [1][2]

## Ta'limi va do'stlari
To'rt yoshida maktabga bergan. Fors va turkiy she'riyatni yoshligidan o'rgangan. Maktabdoshlari orasida bo'lajak hukmdor Husayn Boyqaro ham bor edi. 1465–1469-yillarda Samarqandda, Fazlulloh Abulays madrasasida tahsil olgan. [1]

## Davlat xizmati
1469-yilda Husayn Boyqaro saltanatida muhrdor etib tayinlangan, 1472-yilda bosh vazir bo'lgan va «Amiri kabir» unvonini olgan. 1487-yildan ikki yil Astrobodda hokimlik qilgan. [1][2]

## Ijodi
1483–1485-yillarda «Xamsa» — besh dostondan iborat asarini yaratgan: «Hayrat ul-abror», «Farhod va Shirin», «Layli va Majnun», «Sab'ai sayyor», «Saddi Iskandariy». «Muhokamat ul-lug'atayn» asarida turkiy tilning boyligini fors tili bilan qiyoslab isbotlagan. She'rlarini «Xazoyin ul-maoniy» nomli to'rt devonga jamlagan. Turkiy she'rlarida «Navoiy», forsiy she'rlarida «Foniy» taxallusini qo'llagan. [1][2]

## Xayriya ishlari
Daromadini xalq uchun sarflagan: madrasalar, rabotlar, masjidlar, xonaqohlar, hammomlar, ko'priklar va suv havzalari qurdirgan yoki ta'mirlatgan. [1][2]

## Umrining oxiri
Alisher Navoiy 1501-yil 3-yanvarda ona shahri Hirotda vafot etgan. [1][2]$$,
       biography_sources = $$[{"n": 1, "title": "Alisher Navoiy (1441–1501). Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/uzbek-sheriyati/o-zbek-mumtoz-adabiyoti/alisher-navoiy-1441-1501", "note": "Tug'ilgan sana va joyi, oilasi, ta'limi, saroy lavozimlari va sanalari, xayriya inshootlari, vafot sanasi"}, {"n": 2, "title": "«O'zbekiston tarixi» 7-sinf darsligi (loyihaning fakt kartochkalari orqali)", "url": "", "note": "«Xamsa» yozilgan yillar va besh doston, «Muhokamat ul-lug'atayn», devonlari, taxalluslari"}]$$::jsonb
 WHERE slug = 'alisher-navoiy';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi va oilasi
Zahiriddin Muhammad Bobur 1483-yil 14-fevralda Andijonda tug'ilgan. Otasi — Farg'ona hokimi Umarshayx Mirzo, onasi Qutlug' Nigorxonim. Yoshligi Andijonda o'tgan. [1][2]

## Farg'ona taxti
Otasi vafot etgach, 1494-yilda, o'n ikki yoshida Farg'ona taxtiga o'tirgan. Samarqandni egallashga bir necha bor urinib ko'rgan; 1497-yilda etti oylik qamaldan so'ng shaharni qo'lga kiritgan, ammo 1501-yilda uni yana boy bergan. [1]

## Kobul
1504-yildan Afg'onistonga o'tib, Kobul va G'aznani egallagan. U yerda bog'lar va inshootlar barpo etib, o'zini uddaburon boshqaruvchi sifatida ko'rsatgan. [1]

## Hindiston
1519-yildan Hindiston tomon yurishlar boshlagan. 1526-yilda Panipat jangida Dehli sultoni Ibrohim Lo'diy qo'shinini yengib, Hindistonda boburiylar saltanatiga asos solgan. [1][2]

## Ijodi
«Boburnoma» — uning o'z tilida yozgan tarjimai holi: ko'rgan shaharlari, o'simliklar, odamlar va davr voqealari haqida. Asar jahon adabiyotining nodir yodgorliklaridan sanaladi. Bobur devon ham tuzgan; unda g'azal, ruboiy va boshqa she'rlari jamlangan. 1521-yilda «Mubayyin» asarini yozgan. Umrining katta qismi vatandan uzoqda o'tgani uchun she'rlarida vatan sog'inchi ko'p uchraydi. [1][2]

## Umrining oxiri
Bobur 1530-yil 26-dekabrda Agrada vafot etgan. Vasiyatiga ko'ra keyinchalik Kobuldagi Bobur bog'iga ko'chirib dafn etilgan. [1]$$,
       biography_sources = $$[{"n": 1, "title": "Zahiriddin Muhammad Bobur (1483–1530). Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/uzbek-sheriyati/o-zbek-mumtoz-adabiyoti/zahiriddin-muhammad-bobur-1483-1530", "note": "Tug'ilgan sana va joyi, ota-onasi, taxtga o'tirishi, Samarqand va Kobul, Panipat, devoni, vafoti va qayta dafni"}, {"n": 2, "title": "«O'zbekiston tarixi» 7-sinf darsligi (loyihaning fakt kartochkalari orqali)", "url": "", "note": "Farg'ona taxti va yoshi, «Boburnoma», Panipat va boburiylar saltanati, vatan sog'inchi"}]$$::jsonb
 WHERE slug = 'bobur';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi va oilasi
Abdulla Qodiriy 1894-yil 10-aprelda Toshkentda, bog'bon oilasida tug'ilgan. Oila kambag'al bo'lgani uchun o'n ikki yoshidan ishlagan. [1][2]

## Ta'limi
Avval eski usuldagi maktabda ikki-uch yil, so'ng rus maktabida o'qigan. 1912-yildan savdo idorasida mirza bo'lib ishlagan. 1924-yilda Moskvadagi jurnalistika kursida tahsil olgan. [1]

## Ijodining boshlanishi
Dastlabki asarlari 1913–1914-yillarda «Sadoi Turkiston» va «Oyina» nashrlarida bosilgan. 1915-yilda «Baxtsiz kuyov» dramasini yozgan. Hajviy asarlarini «Julqunboy» taxallusi bilan e'lon qilgan. [1][2]

## Romanlari
«O'tkan kunlar» — o'zbek adabiyotidagi ilk roman. U avval 1922-yilda «Inqilob» jurnalida, keyin 1925–1926-yillarda uch kitob holida chop etilgan. Ikkinchi tarixiy romani «Mehrobdan chayon» 1928-yilda nashr etilgan. 1934-yilda «Obid ketmon» qissasini yozgan. [1][2]

## Umrining oxiri
1937-yil 31-dekabrda hibsga olingan, 1938-yil 4-oktabrda Toshkentda qatl etilgan. Asarlari 1956-yildan qayta nashr qilina boshlagan, nomi oqlangan. [1][2]$$,
       biography_sources = $$[{"n": 1, "title": "Abdulla Qodiriy (1894–1938). Ziyouz.com — «O'zbek ziyolilari» bo'limi", "url": "https://ziyouz.com/portal-haqida/xarita/o-zbek-ziyolilari/abdulla-qodiriy-1894-1938", "note": "Tug'ilgan sana va joyi, oilasi, ta'limi, ilk asarlari, romanlari va nashr yillari, hibs va qatl sanalari"}, {"n": 2, "title": "«O'zbekiston tarixi» 9-sinf darsligi (loyihaning fakt kartochkalari orqali)", "url": "", "note": "Bog'bon oilasi, «O'tkan kunlar» ilk roman ekani, «Julqunboy» taxallusi, 1938-yil qatag'oni"}]$$::jsonb
 WHERE slug = 'abdulla-qodiriy';

UPDATE heroes
   SET biography_uz      = $$## Tug'ilishi va oilasi
Jaloliddin Manguberdi Xorazmshoh Alouddin Muhammadning o'g'li. Manbalarda tug'ilgan yili turlicha ko'rsatiladi: Ziyouz 1198-yilni, O'zbekiston Milliy axborot agentligi 1199-yilni keltiradi. Asl ismi — Jaloliddin ibn Alouddin Muhammad. [1][2]

## Taxtga kelishi
1215-yilda sharqiy viloyatlarga — G'azna va atrofidagi yerlarga — hokim va taxt vorisi etib tayinlangan. Otasi vafotidan so'ng, 1220-yilda Xorazmshohlar davlatining so'nggi hukmdori bo'lgan. Davlatni o'n yilcha boshqargan. [1][2]

## Parvon jangi
G'azna yaqinidagi Parvon jangida mo'g'ul qo'shini ustidan g'alaba qozongan — bu Chingizxon lashkariga qarshi erishilgan sanoqli yutuqlardan biri edi. Jangdan keyin lashkarboshilar o'lja ustida janjallashib, uning safini tark etganlar. [1][2]

## Sind daryosidagi jang
1221-yil 25-noyabrda Sind (Hind) daryosi bo'yidagi teng bo'lmagan jangda qurshovda qolgan va qolgan to'rt mingga yaqin jangchisi bilan daryodan o'tib ketgan. [1][2]

## Umrining oxiri
Mo'g'ullarga qarshi kurashi o'n yildan ortiq davom etgan. 1231-yilda tog'li o'lkada noma'lum kishilar tomonidan o'ldirilgan. 1998-yilda O'zbekistonda uning tavalludining 800 yilligi keng nishonlangan. [1][2]$$,
       biography_sources = $$[{"n": 1, "title": "Jaloliddin Manguberdi. Ziyouz.com — «O'zbekiston hukmdorlari» bo'limi", "url": "https://n.ziyouz.com/portal-haqida/xarita/tarix/uzbekiston-hukmdorlari/jaloliddin-manguberdi", "note": "Otasi, 1215-yilgi tayinlov, taxtga kelishi, Parvon va Sind jangi, vafoti"}, {"n": 2, "title": "O'zbekiston Milliy axborot agentligi (UzA) — Jaloliddin Manguberdi haqidagi maqolalar", "url": "https://uza.uz/oz/posts/jaloliddin-jasoratning-mangu-namunasi_190163", "note": "Tug'ilgan yili (1199), hukmronlik muddati, Parvon jangi, 800 yillik yubiley"}]$$::jsonb
 WHERE slug = 'jaloliddin-manguberdi';
