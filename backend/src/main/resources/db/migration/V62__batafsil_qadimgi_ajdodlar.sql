-- «Batafsil» matnlari — To'maris, Shiroq, Spitamen va Zardusht.
--
-- DIQQAT: bu davr haqidagi ma'lumot asosan qadimgi mualliflar (Gerodot,
-- Poliyen, Arrian) asarlariga tayanadi. Shuning uchun matnlarda manba ochiq
-- ko'rsatiladi va rivoyat bo'lgan joyda «rivoyatga ko'ra» deb aytiladi.

-- ================================= TO'MARIS =================================

UPDATE fact_cards SET detail_uz = $$Massagetlar Amudaryoning quyi oqimi va Orol dengizi atrofidagi dashtlarda yashagan ko'chmanchi qabilalar ittifoqi edi.

Men ular boshida turgan malikaman. Mening haqimdagi ma'lumotlar asosan qadimgi yunon tarixchisi Gerodotning «Tarix» asarida saqlangan — u mendan taxminan yuz yil keyin yozgan va eshitganlarini qayd etgan. Shu sababli tafsilotlar turli manbalarda turlicha bo'lishi mumkin, ammo asosiy voqea — bosqinning qaytarilishi barcha manbalarda tasdiqlanadi.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Xalqim chorvachilik bilan shug'ullangan: ular yilqi, qo'y va tuya boqqan, yaylovdan yaylovga ko'chib yurgan.

Ko'chmanchi turmush ularni chidamli va harakatchan qilgan: uy-joy o'rniga kigiz o'tovlar, aravalar va otlar bo'lgan. Massagetlar mohir chavandoz va kamonchi sifatida tanilgan. Ular dehqonchilik bilan shug'ullanuvchi qo'shni xalqlar bilan savdo qilgan: chorva mahsulotini don va hunarmandchilik buyumlariga almashtirgan.$$
 WHERE topic_uz = $$Xalqim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, turmush o'rtog'im vafotidan keyin xalqimga o'zim bosh bo'lganman.

Ko'chmanchi xalqlarda ayolning hukmdor bo'lishi mumkin edi — bu o'troq davlatlardan farqli jihat. Ayollar ot minish va qurol ishlatishni bilgani uchun ular jamiyatda faolroq o'rin egallagan. Hukmdor sifatida mening asosiy vazifam qabilalar o'rtasidagi kelishuvni saqlash va tashqi xavfdan himoya qilish edi.$$
 WHERE topic_uz = $$Malika bo'lishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Mil. avv. 530-yil atrofida fors shohi Kir II ulkan lashkar bilan yurtimizga kirib keldi.

O'sha davrda Kir II ning saltanati Kichik Osiyodan Hindistongacha cho'zilgan edi va u yengilmas sanalardi. Bizning yurtimiz uning uchun shimoliy chegara edi. Kuchlar teng emasdi: forslarda tartibli, qurollangan qo'shin bor edi. Ammo bizning ustunligimiz o'z yerimizni bilishimizda va harakatchanligimizda edi.$$
 WHERE topic_uz = $$Kir II bosqini$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, men Kir II ga urush boshlamasdan tinch-omon ortiga qaytishni taklif qilganman.

Gerodot yozishicha, men unga xabar yuborib, o'z yurtida hukmronlik qilishni va begona yerga ko'z tikmaslikni maslahat berganman. Taklif rad etilgan. Urushdan oldin muzokara taklif qilish qadimgi davrda ham odat bo'lgan: bu qon to'kilishining oldini olish imkoniyati edi. Bu tafsilot Gerodot asarida keltiriladi va uni tarixiy dalil emas, manba guvohligi sifatida qabul qilish to'g'ri bo'ladi.$$
 WHERE topic_uz = $$Tinchlik taklifim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Gerodot (mil. avv. V asr) — qadimgi yunon tarixchisi; uni «tarix otasi» deb atashadi, chunki u voqealarni tizimli yozib qoldirgan birinchi mualliflardan biri.

Uning «Tarix» asari fors urushlariga bag'ishlangan va unda turli xalqlar — jumladan massagetlar haqida ma'lumot bor. Gerodot o'zi ko'rmagan voqealarni yozganda buni ko'rsatib o'tgan: «aytishlaricha», «men eshitdim» kabi iboralar ishlatgan. Shu bois uning asari bugun ham ehtiyotkorlik bilan, ammo qimmatli manba sifatida o'qiladi.$$
 WHERE topic_uz = $$Gerodot guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Gerodot bu jangni o'z asarida eng qattiq to'qnashuvlardan biri sifatida ta'riflagan.

Uning yozishicha, avval tomonlar uzoqdan kamondan o'q uzgan, keyin yaqin jang boshlangan. Jang uzoq davom etgan va ikkala tomon ham katta talafot ko'rgan. Qadimgi janglar haqidagi bunday tavsiflar bizga o'sha davr harbiy tartibi haqida ma'lumot beradi: kamonchilar, otliqlar va piyoda qo'shin qanday joylashgani ma'lum bo'ladi.$$
 WHERE topic_uz = $$Buyuk jang$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Bosqinchi shoh Kir II shu jang maydonida halok bo'lgan — bu tarixiy jihatdan e'tirof etilgan voqea.

Uning o'limi butun qadimgi dunyoni hayratga solgan: o'sha davrning eng qudratli hukmdori shimoliy chegarada mag'lub bo'lgan edi. Bu voqeadan keyin Ahamoniylar bir muddat bizning yurtimizga yurish qilmagan. Tarixda kuchli davlatning kichik xalq qarshiligi oldida to'xtashi kam uchraydi, ammo bo'lib turadi — bu o'z yerini himoya qilishning kuchini ko'rsatadi.$$
 WHERE topic_uz = $$Bosqin yakuni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Bugun mening nomim vatan himoyasi va jasorat ramziga aylangan.

O'zbekistonda haykallar o'rnatilgan, badiiy asarlar va filmlar yaratilgan, maktab darsliklariga hayotim haqida ma'lumot kiritilgan. Nomim ko'chalar va tashkilotlarga berilgan. Bundan tashqari «To'maris» nomi bugun qizlarga ism sifatida ham qo'yiladi. Ming yillar oldingi voqeaning bugungi kunda ham eslanishi xotiraning naqadar uzoq yashashini ko'rsatadi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Kir II (Kir Buyuk) — Ahamoniylar davlatining asoschisi. U Midiya, Lidiya va Bobilni bo'ysundirib, o'sha davrning eng katta saltanatini yaratgan.

Uning davlati Kichik Osiyodan Markaziy Osiyogacha cho'zilgan edi. Kir tarixda nafaqat sarkarda, balki nisbatan yumshoq boshqaruv siyosati bilan ham tanilgan: u zabt etilgan xalqlarning dini va odatlariga aralashmagan. Ammo shimoliy chegaradagi ko'chmanchi xalqlar unga bo'ysunmagan va aynan shu yerda uning yurishi to'xtagan.$$
 WHERE topic_uz = $$Kir II saltanati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Gerodot yozishicha, xalqim qurol-aslahalarini bronzadan, bezaklarini esa oltindan yasagan.

Uning ta'kidlashicha, massagetlarda temir va kumush kam bo'lgan, oltin va bronza esa ko'p bo'lgan. Bu ma'lumot arxeologik topilmalar bilan qisman tasdiqlanadi: dasht qabilalari qabrlaridan oltin bezaklar, bronza qurollar va ot anjomlari topilgan. Bezaklarda ko'pincha hayvon tasvirlari bo'lgan — bu «hayvon uslubi» deb ataladi va dasht xalqlari san'atining o'ziga xos belgisidir.$$
 WHERE topic_uz = $$Qurol-yarog'imiz$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Massagetlarda ayollar ham erkaklar qatori ot minib, kamondan otishni va jang qilishni bilgan.

Bu ko'chmanchi turmush bilan bog'liq: ko'chishda, chorva boqishda va himoyada barcha qatnashishi kerak edi. Shu sababli ayolning hukmdor bo'lishi ham g'ayrioddiy sanalmagan. Dasht qabilalari qabrlaridan qurol bilan dafn etilgan ayollar topilgani ham buni tasdiqlaydi. Bu holat o'sha davrdagi o'troq davlatlardan sezilarli farq qilgan.$$
 WHERE topic_uz = $$Xalqimda ayollar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Gerodot yozishicha, o'g'lim Sparangiz qo'shinimning bir qismiga boshchilik qilgan.

Uning yozuvlariga ko'ra, jangdan oldin bo'lgan to'qnashuvda o'g'lim asirga tushgan. Ona uchun bu og'ir sinov bo'lgan, ammo men xalqim taqdiri haqidagi mas'uliyatni unutmaganman. Bu tafsilot ham Gerodot asaridan olingan. Qadimgi manbalardagi bunday shaxsiy tafsilotlar voqeani jonli qiladi va tarixdagi odamlarni bizga yaqinlashtiradi.$$
 WHERE topic_uz = $$O'g'lim Sparangiz$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Gerodotning yozishicha, xalqim quyoshni muqaddas deb bilgan va unga otni qurbonlik qilgan.

Sababi shundaki, ot ular uchun eng tez harakatlanuvchi jonzot bo'lgan, quyosh esa osmonda eng tez harakatlanuvchi jism deb qaralgan. Quyoshga sig'inish dasht xalqlari orasida keng tarqalgan bo'lib, bu tabiat kuchlarini ulug'lash bilan bog'liq. Shunga o'xshash qarashlar zardushtiylikda ham uchraydi: u yerda olov va yorug'lik ezgulik ramzi sanaladi.$$
 WHERE topic_uz = $$Quyoshga e'tiqod$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Men yurtimiz tarixida nomi saqlanib qolgan ilk ayol hukmdor va sarkarda sanalaman.

Qadimgi davr haqidagi ma'lumotlar juda kam saqlangan; ayollar haqidagi yozuvlar esa bundan ham kam. Shuning uchun mening nomimning yozma manbada qayd etilishi alohida ahamiyatga ega. Keyingi asrlarda ham yurtimizda davlat ishlarida faol qatnashgan ayollar bo'lgan — masalan, Gavharshod begim va Nodira. Ular orasidagi masofa ming yillar bilan o'lchanadi.$$
 WHERE topic_uz = $$Ilk ayol hukmdor$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Bugun O'zbekistonda ko'plab qizlarga To'maris deb ism qo'yishadi.

Bu ismning tanlanishi bejiz emas: u jasorat, matonat va vatanga sadoqat bilan bog'lanadi. Ismlar orqali xalq o'z qadriyatlarini keyingi avlodga uzatadi. Shu bilan birga «To'maris» nomi teatr spektakllari, kitob va filmlarda ham uchraydi; Toshkentda va boshqa shaharlarda menga bag'ishlangan haykallar bor.$$
 WHERE topic_uz = $$Ismim bugun$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- ================================== SHIROQ ==================================

UPDATE fact_cards SET detail_uz = $$Men oddiy cho'ponman — sak qabilasidan chiqqanman.

Mening haqimdagi hikoya shuni ko'rsatadiki, tarixda nom qoldirish uchun hukmdor yoki sarkarda bo'lish shart emas. Hikoyam milodiy II asrda yashagan muallif Poliyen asarida saqlangan; u harbiy hiylalar haqidagi to'plamida bu voqeani keltirgan. Shu bois bu ma'lumot rivoyat sifatida qabul qilinadi — uni tasdiqlovchi boshqa manba yo'q.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Saklar — Markaziy Osiyoning dasht va tog' hududlarida yashagan qadimgi qabilalar guruhi.

Ular haqida Behistun qoyatosh bitiklarida yozilgan: bu Doro I buyrug'i bilan qoyaga o'yib yozilgan matn bo'lib, unda saltanatga bo'ysunuvchi xalqlar sanab o'tilgan. Saklar u yerda alohida tilga olinadi. Bu bitik uch tilda yozilgan va qadimgi fors yozuvini o'qish kalitini bergan — shu sababli u jahon tarixi uchun juda muhim hujjat.$$
 WHERE topic_uz = $$Xalqim — saklar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Doro I — Ahamoniylar saltanatining eng qudratli shohlaridan biri; u hukmronligining dastlabki yillarida saklar yurtiga yurish qilgan.

Uning maqsadi shimoliy chegarani mustahkamlash va ko'chmanchi qabilalarni bo'ysundirish edi. Doro I davrida saltanat Hindistondan Misrgacha cho'zilgan, yo'llar qurilgan, pochta xizmati yo'lga qo'yilgan. Ammo dasht xalqlarini bo'ysundirish qiyin bo'lgan: ular shaharlarda emas, keng hududda tarqoq yashagan va bir joyda ushlab turib bo'lmagan.$$
 WHERE topic_uz = $$Doro I yurishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, men forslar qoshiga yo'l ko'rsatuvchi qiyofasida borganman.

Bu harbiy hiyla edi: kuchsiz tomon kuchlisiga qarshi ochiq jangda emas, aql bilan turishi mumkin. Men dushmanni ishontirish uchun o'zimni jabrlangan va o'z xalqidan qochgan kishi qilib ko'rsatganman. Bunday hiylalar qadimgi urushlarda kam uchramagan — Poliyenning butun asari aynan shunday voqealar to'plamidan iborat.$$
 WHERE topic_uz = $$Rejam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, men dushman qo'shinini faqat o'zim biladigan so'qmoq bilan suvsiz sahroga boshlab kirganman.

Dasht va sahroda yo'l bilish hayot-mamot masalasi edi: quduqlar orasidagi masofani, mavsumga qarab o'zgaradigan yo'llarni faqat mahalliy odam bilardi. Katta qo'shin uchun suv eng zaruriy narsa — odam ham, ot ham suvsiz uzoq yura olmaydi. Shu bois men tanlagan yo'l dushman uchun eng xavfli yo'l bo'lib chiqqan.$$
 WHERE topic_uz = $$Sahroga yo'l$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, biz suvsiz sahro bo'ylab yetti kun yo'l bosganmiz.

Bu vaqt ichida qo'shin holdan toygan, suv zaxirasi tugagan va oziq-ovqat kamaygan. Qadimgi manbalarda «yetti kun» kabi sonlar ko'pincha aniq hisob emas, «uzoq vaqt» ma'nosida ishlatilgan — shuni yodda tutish kerak. Voqeaning mohiyati esa o'zgarmaydi: mahalliy joyni bilish katta qo'shinga qarshi eng kuchli qurol bo'lib chiqqan.$$
 WHERE topic_uz = $$Yetti kunlik yo'l$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, men vatanim ozodligi uchun jonimni fido qilganman.

Bu hikoyaning asosiy ma'nosi shundaki, vatan himoyasi faqat jangchining ishi emas — unda har bir kishi o'z imkoniyati bilan qatnashishi mumkin. Cho'ponning quroli qilich emas, joyni bilishi va qat'iyati bo'lgan. Shu sababli mening nomim asrlar davomida saqlanib qolgan va bugun ham yurtimizda vatanparvarlik namunasi sifatida eslanadi.$$
 WHERE topic_uz = $$Fidoyilik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, mening jasoratim tufayli Doro I ning saklar ustiga yurishi muvaffaqiyatsiz yakunlangan.

Suvsiz sahroda holdan toygan qo'shin jang qilishga qodir bo'lmagan va orqaga qaytishga majbur bo'lgan. Tarixiy manbalarda Doro I ning shimoliy yurishlari to'liq muvaffaqiyat keltirmagani qayd etilgan. Bu voqea ko'chmanchi xalqlarni bo'ysundirish naqadar qiyin bo'lganini ko'rsatadi — xuddi shunday holat keyinchalik Iskandar Maqduniy yurishida ham takrorlangan.$$
 WHERE topic_uz = $$Natija$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Men haqimdagi rivoyatni milodiy II asrda yashagan muallif Poliyen saqlab qolgan.

U «Harbiy hiylalar» nomli asar yozgan bo'lib, unda turli xalqlar tarixidan urush hiylalari to'plangan. Poliyen mendan qariyb yetti asr keyin yashagan, ya'ni u voqeani boshqa manbalardan olgan. Shu sababli bu hikoya rivoyat sifatida qabul qilinadi. Shunga qaramay, u qadimgi davr haqidagi kam sonli yozma guvohliklardan biri va shu bois qimmatli.$$
 WHERE topic_uz = $$Rivoyat manbasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Ahamoniylar saltanati mil. avv. VI asrda Kir II tomonidan asos solingan va Doro I davrida eng katta hududga yetgan.

U Misr va Kichik Osiyodan Hindiston chegaralarigacha cho'zilgan. Saltanat satrapliklar — viloyatlarga bo'lingan, har biriga satrap boshliq bo'lgan; soliq yig'ilgan, yo'llar qurilgan. Bizning yurtimizning bir qismi ham shu saltanat tarkibiga kirgan. Ammo dasht qabilalari doim to'liq bo'ysunmagan va chegarada kurash davom etgan.$$
 WHERE topic_uz = $$Ahamoniylar saltanati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Xalqim bir necha urug'ga bo'lingan va qadimgi fors bitiklarida ular alohida nomlar bilan tilga olinadi.

«Sak-tigraxauda» — o'tkir uchli kuloh kiygan saklar, «sak-haumavarga» — maxsus ichimlik tayyorlaydigan saklar, «dengiz ortidagi saklar» esa uzoqroq hududlarda yashaganlar. Bu nomlar Behistun bitigi va boshqa fors hujjatlarida uchraydi. Ular bizga qadimgi qabilalarning kiyimi va urf-odatlari haqida ham ma'lumot beradi.$$
 WHERE topic_uz = $$Sak urug'lari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Saklar Sirdaryo bo'ylari, Orol dengizi atroflari va tog' etaklaridagi keng hududlarda yashagan.

Bu yerlar chorvachilik uchun qulay bo'lgan: yozda tog' yaylovlari, qishda pastqam yerlar. Arxeologlar bu hududlardan sak qabrlarini — qo'rg'onlarni topgan. Ularda qurol, ot anjomlari, oltin bezaklar va kundalik buyumlar saqlangan. Bu topilmalar yozma manbalar kam bo'lgan davr haqida bevosita ma'lumot beradi.$$
 WHERE topic_uz = $$Yashagan yerlarimiz$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Xalqim bolalikdan ot minishni o'rgangan; saklar mohir chavandoz va o'q otuvchi sifatida tanilgan.

Ular ot ustida turib, chopib borayotgan holda kamondan aniq o'q uza olgan — bu katta mashq talab qiladigan mahorat. Shu bois dasht qabilalarining otliq qo'shini o'z davrining eng harakatchan kuchi hisoblangan. Ot ular uchun faqat ulov emas, hayotning bir qismi bo'lgan: u ko'chishda, ovda, jangda va hatto marosimlarda ishtirok etgan.$$
 WHERE topic_uz = $$Chavandozlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Qadimgi yunon tarixchisi Gerodot ham saklar va boshqa dasht xalqlari haqida yozib qoldirgan.

U ularning turmush tarzi, kiyimi, jang usullari va urf-odatlarini tasvirlagan. Gerodot bu ma'lumotlarni sayohatchilar va savdogarlardan eshitgan. Uning yozganlari bugun arxeologik topilmalar bilan solishtirilib tekshiriladi: ba'zi tafsilotlar tasdiqlanadi, ba'zilari esa mubolag'a bo'lib chiqadi. Tarix ana shunday — bir necha manbani solishtirish orqali tiklanadi.$$
 WHERE topic_uz = $$Gerodot yozganlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Bugun men haqimdagi rivoyat O'zbekiston maktablarining tarix darsliklariga kiritilgan.

Darslikda bu voqea vatanparvarlik namunasi sifatida beriladi va uning rivoyat ekani ham ko'rsatiladi — bu muhim, chunki o'quvchi tarixiy dalil bilan rivoyatni farqlashni o'rganishi kerak. Rivoyatlarning qimmati shundaki, ular xalqning nimani qadrlaganini ko'rsatadi: bu holda — o'z yurti uchun fidoyilikni.$$
 WHERE topic_uz = $$Darsliklarda o'rnim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Oradan ming yillar o'tsa ham nomim unutilmagan.

O'zbekistonda Shiroq nomi ko'chalar va tashkilotlarga berilgan, u haqidagi rivoyat kitob, spektakl va filmlarda aks etgan. Nomim ko'pincha To'maris bilan yonma-yon tilga olinadi: ikkalasi ham qadimgi davrdagi vatan himoyasi ramzi. Oddiy cho'ponning nomi asrlar osha saqlanib qolishi — xalq xotirasi kimni tanlashini ko'rsatadi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

-- ================================= SPITAMEN =================================

UPDATE fact_cards SET detail_uz = $$Men So'g'diyonaning harbiy yo'lboshchisiman — bosqinchilarga qarshi qo'zg'olonni uyushtirgan kishiman.

Mening haqimdagi ma'lumotlar yunon tarixchilari — Arrian, Kvint Kurtsiy Ruf va boshqalarning asarlarida saqlangan. Qiziq jihati shundaki, bu mualliflar Iskandar tomonida turgan, ya'ni ular meni dushman sifatida tasvirlagan. Shunga qaramay ular mening harbiy mahoratimni tan olgan — bu guvohliklarning ishonchliligini oshiradi.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Mil. avv. 329-yilda Iskandar Maqduniy qo'shinlari Amudaryodan o'tib, bizning yurtimizga kirib keldi.

Undan oldin Iskandar Ahamoniylar saltanatini tor-mor etgan edi va uning qo'shini yengilmas sanalardi. Ammo So'g'diyona unga oson berilmadi: bu yerda katta shaharlar bilan bir qatorda tog' va dasht hududlari bor edi, aholi esa mustaqillikka o'rgangan edi. Uch yillik qarshilik aynan shu sharoitda mumkin bo'lgan.$$
 WHERE topic_uz = $$Iskandar bosqini$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Maroqanda — hozirgi Samarqandning qadimgi nomi; u So'g'diyonaning bosh shahri edi.

Shahar mustahkam devor bilan o'ralgan, ichida saroy, ibodatxona va hunarmandlar mahallalari bo'lgan. Uning o'rni bugun Afrosiyob tepaligi deb ataladi va u yerda arxeologik qazishmalar olib boriladi. Yunon-makedon qo'shinlari shaharni egallab, unga garnizon joylashtirgan — shu bois shaharni ozod qilish bizning asosiy maqsadlarimizdan biri bo'lgan.$$
 WHERE topic_uz = $$Maroqanda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Men bosqinchilarga qarshi qo'zg'olonda so'g'diylar, baqtriyaliklar va dasht qabilalarini birlashtirganman.

Bu oson ish emasdi: har qabilaning o'z boshlig'i va manfaati bor edi. Birlashtirish uchun umumiy xavfni ko'rsatish va ishonch qozonish kerak bo'lgan. Dasht qabilalarining harakatchan otliq qo'shini bizga katta yordam bergan — ular kutilmagan hujum uyushtirib, tez chekinishga qodir edi. Turli xalqlarning umumiy xavf oldida birlashishi tarixda ko'p uchraydi.$$
 WHERE topic_uz = $$Xalqlarni birlashtirish$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Ancha qo'shin to'plab, dushman qo'lidagi Maroqandani qamal qilganman.

Qamal — mustahkam shaharni egallashning asosiy usuli: uni o'rab olib, oziq-ovqat va suv yetkazilishini to'xtatish. Bu uzoq vaqt va sabr talab qiladi. Qamal paytida Iskandar yordamga qo'shin yuborgan va aynan shu qo'shinni men Politimet daryosi bo'yida kutib olganman. Harbiy ishda dushmanning harakatini oldindan bilish katta ustunlik beradi.$$
 WHERE topic_uz = $$Qamal$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Politimet — hozirgi Zarafshon daryosining qadimgi yunoncha nomi; u «ko'p qadrlangan» degan ma'noni bildiradi.

Daryo bo'yida men pistirma qo'yib, Maroqandaga yordamga kelayotgan yunon-makedon qo'shinini kutib oldim. Jangda dushman katta talafot ko'rgan. Bu voqea yunon tarixchilari asarlarida ham qayd etilgan — ular buni Iskandar qo'shini uchun eng og'ir mag'lubiyatlardan biri deb yozgan. Joyni bilish va pistirma qo'yish mahorati kam sonli qo'shinga katta kuchni yengish imkonini beradi.$$
 WHERE topic_uz = $$Politimet jangi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Xalqim mening boshchiligimda bosqinchilarga uch yil davomida qattiq qarshilik ko'rsatgan.

Bu Iskandar yurishlari tarixidagi eng uzoq davom etgan qarshiliklardan biri edi: boshqa o'lkalar ancha tez bo'ysundirilgan. Uch yil davomida jang maydonlari o'zgarib turgan — tog', dasht va shahar atroflari. Iskandar bu yerda ko'plab qal'a qurishga va garnizon qoldirishga majbur bo'lgan. Uzoq qarshilik xalqning o'z yerini himoya qilishga tayyorligini ko'rsatadi.$$
 WHERE topic_uz = $$Uch yillik kurash$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Manbalarda yozilishicha, Iskandar menga sulh taklif qilgan, ammo men uni qabul qilmaganman.

Sulh odatda ma'lum shartlar bilan taklif qilinardi: bo'ysunish, soliq to'lash, qo'shinni tarqatish. Men uchun bu vatanni dushmanga topshirish bilan barobar edi. Bu qaror og'ir oqibatlarga olib kelishi mumkinligini bilardim, ammo boshqacha yo'l tanlamadim. Tarixda ba'zan mag'lub bo'lgan tomonning qat'iyati g'olibning nomidan ko'ra uzoqroq eslanadi.$$
 WHERE topic_uz = $$Sulhni rad etishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Mil. avv. 328-yil kuzida kuchlar teng bo'lmagan hal qiluvchi jang bo'lib o'tgan.

Uch yillik kurash qo'shinimizni charchatgan, ittifoqchilar orasida kelishmovchilik paydo bo'lgan edi. Mening umrim shu davrda yakunlangan; manbalarda buning tafsiloti turlicha keltiriladi. Kurashim tugagach, Iskandar So'g'diyonani nazorat qila boshladi, ammo bu yerda u mahalliy zodagonlar bilan kelishuvga borishga majbur bo'lgan va Roksanaga uylangan.$$
 WHERE topic_uz = $$So'nggi jang$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Qizim Apama yunon lashkarboshisi Salavkka turmushga chiqqan.

Salavk Iskandar vafotidan keyin uning saltanatining sharqiy qismida o'z davlatini — Salavkiylar davlatini tuzgan. Apama uning rafiqasi va o'g'li Antioxning onasi bo'lgan; Antiox keyinchalik davlatni boshqargan. Shu tariqa mening avlodlarim katta bir sulolaning bir qismiga aylangan. Bu qadimgi dunyoda turli xalqlarning qanday chatishib ketganini ko'rsatadi.$$
 WHERE topic_uz = $$Qizim Apama$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Iskandar bosqini boshlangan dastlabki paytda men safdoshlarim bilan Bessga qarshi chiqqanman.

Bess Baqtriya satrapi bo'lib, u fors shohi Doro III ga xiyonat qilgan va o'zini yangi shoh deb e'lon qilgan edi. Biz uning xiyonatini qabul qilmadik. Bu voqea shuni ko'rsatadiki, o'sha davrdagi kurash oddiy «biz va ular» bo'linishidan murakkabroq bo'lgan: turli guruhlar, manfaatlar va ittifoqlar mavjud edi. Keyinchalik mening kurashim aynan Iskandarga qarshi qaratilgan.$$
 WHERE topic_uz = $$Bess voqeasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Men ochiq jangdan ko'ra kutilmagan hujumlar uyushtirib, so'ng tez chekinish usulini qo'llaganman.

Buning sababi oddiy: dushman qo'shini son va qurollanish jihatidan ustun edi, ochiq maydondagi jangda ustunlik ularda bo'lardi. Kutilmagan hujum esa dushmanni tinch qo'ymaydi, uni doimiy hushyorlikda saqlaydi va kuchini yemiradi. Bu usul harbiy tarixda keng qo'llanilgan. Uning muvaffaqiyati joyni bilish va aholining qo'llab-quvvatlashiga bog'liq bo'ladi.$$
 WHERE topic_uz = $$Jang usulim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Men bilan kurash ketayotgan mil. avv. 329-yilda Iskandar Sirdaryo bo'yida yangi shahar qurdirgan.

U «Chekka Iskandariya» (Aleksandriya Esxata) deb atalgan — ya'ni «eng uzoqdagi Iskandariya», chunki bu Iskandar qurgan shaharlarning eng sharqiylaridan biri edi. Shahar chegarani himoya qilish va nazorat qilish uchun mo'ljallangan. Uning o'rni hozirgi Xo'jand shahri bilan bog'lanadi. Bosqinchi qanchalik uzoq kelganini shu shaharlar ko'rsatib turadi.$$
 WHERE topic_uz = $$Chekka Iskandariya$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Kurashim haqida yunon tarixchisi Arrian «Iskandarning yurishi» asarida yozib qoldirgan.

Arrian milodiy II asrda yashagan va Iskandar sarkardalarining kundaliklariga tayangan — shu bois uning asari eng ishonchli manbalardan biri sanaladi. Undan tashqari Kvint Kurtsiy Ruf ham bu voqealar haqida yozgan. Qiziq jihati: mening haqimdagi ma'lumot faqat raqiblarim tomonidan yozilgan. Shunga qaramay ular mening harbiy mahoratimni tan olgan.$$
 WHERE topic_uz = $$Tarixchilar guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Qizim Apama sharafiga keyinchalik Sharqda bir necha shahar «Apameya» deb nomlangan.

Bu shaharlarni Salavk va uning avlodlari qurdirgan; ular hozirgi Suriya, Turkiya va Eron hududlarida joylashgan. O'sha davrda hukmdorlar shaharlarga o'z yaqinlarining nomini berish odatiga ega edi. Shu tariqa So'g'diyonalik ayolning nomi Yaqin Sharq xaritasida qoldi — bu qadimgi dunyoning qanchalik bog'langan bo'lganini ko'rsatadi.$$
 WHERE topic_uz = $$Apameya shaharlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Vatanim So'g'diyona Amudaryo va Sirdaryo oralig'ida, asosan Zarafshon vodiysida joylashgan.

Uning yirik shaharlari Maroqanda (Samarqand) va Buxoro bo'lgan. So'g'diylar dehqonchilik, hunarmandchilik va ayniqsa savdo bilan mashhur edi: keyingi asrlarda ular Buyuk ipak yo'lining asosiy vositachilariga aylangan. So'g'd tili uzoq vaqt yo'lning xalqaro savdo tili bo'lgan. Bu o'lka bosqinlarni ko'p ko'rgan, ammo har safar tiklanib, o'z madaniyatini saqlab qolgan.$$
 WHERE topic_uz = $$Yurtim So'g'diyona$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Nomim yurt ozodligi uchun kurash ramzi bo'lib tarixda qolgan.

Bugun O'zbekistonda menga bag'ishlangan haykallar bor, nomim ko'chalarga berilgan, hayotim haqida badiiy asarlar va filmlar yaratilgan. Maktab darsliklarida Iskandar yurishiga qarshi kurash alohida mavzu sifatida o'rganiladi. Qadimgi davrdan bizgacha kam nom yetib kelgan — shu bois saqlanib qolgan har bir nom qadrlidir.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- ================================= ZARDUSHT =================================

UPDATE fact_cards SET detail_uz = $$Men zardushtiylik dinining asoschisiman; ismim turli tillarda turlicha talaffuz qilinadi — Zaratushtra, Zoroastr, Zardusht.

Nomdagi farq tarjima yo'li bilan bog'liq: yunonlar meni «Zoroastr» deb atagan, shu shakl Yevropa tillariga o'tgan. Mening hayotim haqidagi ma'lumotlar juda kam va ular asosan «Avesto» matnlari hamda keyingi davr mualliflari yozuvlariga tayanadi. Shu sababli tug'ilgan joyim va davrim haqida olimlar orasida turli qarashlar bor.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Men mil. avv. 1-ming yillikning birinchi yarmida yashab o'tgan deb hisoblanadi.

Aniq sanani belgilash qiyin: o'sha davrda voqealar yozib borilmagan, ta'limot esa uzoq vaqt og'zaki uzatilgan. Olimlar tilshunoslik dalillariga tayanadi: «Gotlar» matnining tili juda arxaik, ya'ni qadimiy — bu ularning yoshi haqida ma'lumot beradi. Turli tadqiqotchilar turli sanalarni keltiradi, ammo umumiy fikr shuki, bu Ahamoniylar saltanatidan ancha oldin bo'lgan.$$
 WHERE topic_uz = $$Yashagan davrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Ko'plab olimlar «Avesto»ning eng qadimgi qismlari Xorazm vohasida vujudga kelgan deb hisoblaydi.

Bu fikr matnlardagi tabiat tasvirlariga asoslanadi: unda daryolar, sug'orma dehqonchilik, qishning qattiqligi va chorvachilik tilga olinadi — bularning barchasi Amudaryo quyi oqimidagi hayotga mos keladi. «Avesto»da tilga olinadigan ba'zi joy nomlari ham shu hududga ishora qiladi. Bu masala olimlar orasida bahsli, ammo Xorazm versiyasi eng keng tarqalganlaridan biri.$$
 WHERE topic_uz = $$Xorazm bilan bog'liqlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, men o'ttiz yoshimda yangi diniy ta'limotni targ'ib qila boshlaganman.

Dastlab ta'limotim qabul qilinmagan va men ko'p qiyinchilikka duch kelganman — bu haqda «Gotlar»da ham eslatiladi. Keyinchalik hukmdor Vishtaspaning qo'llab-quvvatlashi bilan ta'limot keng tarqala boshlagan. Yangi g'oyaning avval qarshilikka uchrashi tarixda tez-tez takrorlanadi: odamlar tanish tartibni o'zgartirishga darrov rozi bo'lmaydi.$$
 WHERE topic_uz = $$Payg'ambarlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Ta'limotimning bosh qoidasi uchta so'z bilan ifodalanadi: ezgu fikr, ezgu so'z va ezgu amal (humata, hukhta, huvarshta).

Uning ma'nosi oddiy va chuqur: yaxshilik avval o'yda tug'iladi, keyin so'zda ifodalanadi va nihoyat ishda ko'rinadi. Uchalasi bir-biriga mos bo'lishi kerak — yaxshi gapirib, yomon ish qilgan kishi bu qoidaga amal qilmagan bo'ladi. Bu tamoyil zardushtiylikning o'zagi bo'lib, u keyingi diniy va axloqiy ta'limotlarga ham ta'sir ko'rsatgan.$$
 WHERE topic_uz = $$Bosh qoida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Dinimizda olov, suv, tuproq va havo muqaddas sanalgan.

Shu sababli ularni ifloslantirish gunoh hisoblangan: suvga chiqindi tashlash, tuproqni bulg'ash taqiqlangan. Bu qoidalar bugungi tilda tabiatni asrash tamoyillari deb ataladi — ular ming yillar oldin diniy talab shaklida mavjud bo'lgan. Olov ezgulik va poklik ramzi sifatida alohida o'rin tutgan: ibodatxonalarda muqaddas olov o'chirilmasdan saqlangan.$$
 WHERE topic_uz = $$Muqaddas unsurlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Vafotimdan keyin va'zlarim, madhiyalar va duolar «Avesto» kitobiga jamlangan.

Kitob bir necha bo'limdan iborat: Yasna (ibodat matnlari), Yashtlar (madhiyalar), Videvdat (qonun-qoidalar) va Visparad. Matnlar uzoq vaqt og'zaki uzatilgan va faqat keyinroq yozib olingan. Bugungacha kitobning bir qismi yetib kelgan — ko'p qismi tarix davomida yo'qolgan. Shunga qaramay «Avesto» yurtimiz hududidagi eng qadimgi yozma yodgorlik sanaladi.$$
 WHERE topic_uz = $$«Avesto» kitobi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$«Avesto»ning ilk qismlari mil. avv. IX–VIII asrlarda paydo bo'lgan deb hisoblanadi.

Matn asrlar davomida og'zaki uzatilgan: kohinlar uni yoddan bilgan va aniq talaffuz bilan keyingi avlodga o'rgatgan. Yozib olish ancha keyin — Sosoniylar davrida amalga oshirilgan. Arab istilosi davrida ko'p nusxa yo'qolgan; Beruniy bu haqda achinib yozgan. Bugun matnning saqlangan qismlari o'rganiladi va tarjima qilinadi.$$
 WHERE topic_uz = $$«Avesto» tarixi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Yunonlar meni birinchi galda donishmand va munajjim sifatida bilishgan.

Ular meni «Zoroastr» deb atagan va yulduzlar ilmi hamda hikmat bilan bog'lagan. Yunon mualliflari asarlarida mening nomim tez-tez uchraydi, ba'zan afsonaviy tafsilotlar bilan. Bu tabiiy: uzoq o'lkadagi ta'limot haqidagi ma'lumot uzatilgan sayin o'zgargan. Shunga qaramay bu yozuvlar ham qimmatli — ular ta'limotim naqadar keng tanilganini ko'rsatadi.$$
 WHERE topic_uz = $$Yunonlar nazarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Navro'z bayramining ildizlari qadimgi davrga, tabiat va quyosh bilan bog'liq qarashlarga borib taqaladi.

Navro'z bahorgi tengkunlik kunida — 21-mart atrofida nishonlanadi: shu kuni kun bilan tun tenglashadi va tabiat uyg'onadi. Bayramda dasturxonga ko'katlardan tayyorlangan taomlar qo'yiladi, uy tozalanadi, odamlar bir-birini kechiradi — bularning barchasi yangilanish ma'nosini bildiradi. Bugun Navro'z YUNESKOning nomoddiy madaniy meros ro'yxatiga kiritilgan va o'nlab mamlakatda nishonlanadi.$$
 WHERE topic_uz = $$Navro'z ildizlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$«Gotlar» — «Avesto»ning eng qadimgi qismi bo'lib, u madhiyalardan iborat.

Olimlarning fikricha, bu matnlar bevosita men aytgan so'zlarga borib taqaladi; ularning tili «Avesto»ning boshqa qismlaridan ancha qadimiy. Gotlarda ezgulik va yovuzlik, inson tanlovi va mas'uliyati haqida so'z boradi. Matnlar she'riy shaklda bo'lgani uchun ular yoddan saqlanishga qulay bo'lgan — aynan shu tufayli ular asrlar osha yetib kelgan.$$
 WHERE topic_uz = $$«Gotlar» madhiyalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Ta'limotimda ezgulik tangrisi Axura Mazda ulug'lanadi; bu nom «dono hukmdor», «dono egа» degan ma'noni bildiradi.

Axura Mazda olamni yaratgan va ezgulikni ifodalovchi kuch sifatida tasvirlanadi. Uning ramzi — nur va olov. Zardushtiylik dunyoda bitta oliy xudo tushunchasini ilgari surgan dinlardan biri sanaladi va shu jihati bilan diniy tafakkur tarixida muhim o'rin egallaydi. «Mazda» so'zi bugungi ba'zi tillarda ham iz qoldirgan.$$
 WHERE topic_uz = $$Axura Mazda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Ta'limotimga ko'ra, dunyoda ezgulik bilan yovuzlik o'rtasida doimiy kurash boradi.

Eng muhimi shundaki, bu kurashda inson tomoshabin emas — u har kuni o'z tanlovi bilan qatnashadi. Yaxshi ish qilgan kishi ezgulik tomonini kuchaytiradi, yomonlik qilgan esa aksincha. Bu qarash insonga mas'uliyat yuklaydi: taqdir tayyor emas, uni odamning o'zi shakllantiradi. Ana shu g'oya zardushtiylikning eng ta'sirchan tomonlaridan biri sanaladi.$$
 WHERE topic_uz = $$Ikki kuch kurashi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Izdoshlarim ibodat qiladigan joy otashkada deb atalgan — «olov uyi» degani.

Otashkadalarda muqaddas olov saqlangan va u o'chirilmasligi kerak bo'lgan; kohinlar uni doimiy kuzatib turgan. Olov sof narsa deb qaralgan, shuning uchun unga faqat toza yog'och tashlangan. Yurtimiz hududidan qadimgi otashkada qoldiqlari topilgan; ularning ba'zilari arxeologik yodgorlik sifatida o'rganiladi. Bugun ham dunyoda zardushtiylik izdoshlari bor va ularning otashkadalari ishlaydi.$$
 WHERE topic_uz = $$Otashkadalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Ta'limotimda halol mehnat alohida ulug'lanadi.

«Avesto»da yer haydagan, kanal qazigan, bog' o'stirgan va chorva boqqan kishi ezgu ish qilgan hisoblanadi. Sababi oddiy: bunday mehnat hayotni ko'paytiradi va odamlarni to'ydiradi. Aksincha, yerni tashlab qo'yish yoki suvni bulg'ash yomon ish sanalgan. Bu qarash dehqonchilik bilan shug'ullanuvchi jamiyat uchun tabiiy edi va u mehnatga bo'lgan hurmatni diniy darajaga ko'targan.$$
 WHERE topic_uz = $$Mehnat qadri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$2001-yilda O'zbekistonda «Avesto» yaratilganining 2700 yilligi keng nishonlangan.

Tadbirlar YUNESKO qarori bilan xalqaro miqyosda o'tkazilgan: ilmiy anjumanlar tashkil etilgan, «Avesto» matnlari o'zbek tiliga tarjima qilinib nashr etilgan, Xorazmda yodgorlik belgilari o'rnatilgan. Bunday yubileylar o'tmish merosini o'rganish va uni keng jamoatchilikka yetkazish imkonini beradi.$$
 WHERE topic_uz = $$«Avesto»ning 2700 yilligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Buyuk olim Abu Rayhon Beruniy o'z asarlarida men va ta'limotim haqida yozib qoldirgan.

«Qadimgi xalqlardan qolgan yodgorliklar» asarida u zardushtiylik taqvimi, bayramlari va urf-odatlarini batafsil tasvirlagan. Beruniy ma'lumotlarni xolis yozishga harakat qilgan va boshqa e'tiqodlarga hurmat bilan yondashgan. Uning yozuvlari qimmatli, chunki u ko'p manbalarni ko'rgan, ular esa keyinchalik yo'qolgan. Shu tariqa bir olimning mehnati asrlar bo'ylab ma'lumot uzatadi.$$
 WHERE topic_uz = $$Beruniy guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');
