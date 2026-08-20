-- «Batafsil» matnlarini KENGAYTIRISH — 8-to'plam: Spitamen va Muqanna.
-- Ikkalasi ham bosqinchiga qarshi qarshilik yo'lboshchisi — matnlarda manba
-- masalasi alohida ta'kidlangan: ikkalasi haqidagi yozma ma'lumotning deyarli
-- barchasi qarshi tomon tomonidan qoldirilgan.
--
-- MANBA. `source` o'zgarmaydi. Solishtirilgan manbalar:
--   Spitamen — en.wikipedia.org «Spitamenes» (Bessni topshirish 329 m.a.;
--     Politimet jangida Arrian ko'rsatgan talafot — 2000 dan ortiq piyoda va
--     300 otliq; Gabay jangida Koyndan mag'lubiyat, m.a. 328-yil dekabr;
--     Apamaning Salavk I ga uzatilishi — m.a. 324-yil fevral, Suza).
--   Muqanna  — en.wikipedia.org «Al-Muqanna» (qo'zg'olon 776–783; Narshaxiy
--     «Tarixi Buxoro» asosiy manba; qal'ada zahar ichgani; Tomas Murning
--     «Lalla Rookh» (1817) dostoni).
--
-- IXTILOF (metodist-tarixchi tasdig'i kerak):
--   1) Politimet jangidagi talafot — bazada «uch mingga yaqin jangchi»,
--      Arrianda 2000 piyoda + 300 otliq. Matnda Arrian raqami manba nomi bilan
--      berilgan, bazadagi raqam qayta aytilmagan.
--   2) Muqanna qo'zg'oloni sanasi — bazada (darslik) 769–783, xalqaro
--      nashrlarda 776–783. Matnda ikkala variant ham ochiq aytilgan.
--   3) Bazada 775-yilgi qo'shinni «xalifa Mansur» yuborgan deyilgan; Mansur
--      aynan 775-yilda vafot etgan va kurash asosan Mahdiy davriga to'g'ri
--      keladi. Matnda hokimiyat almashuvi fakti qo'shilgan, fakt o'zgartirilmagan.

-- =================================== SPITAMEN ===================================

UPDATE fact_cards SET detail_uz = $$Nomim yunon manbalarida «Spitamen» shaklida yozilgan; u qadimgi eron tillaridagi «oq, yorug'» ma'noli o'zakdan kelib chiqqan deb hisoblanadi.

Men So'g'diyona zodagonlaridan bo'lganman va o'z yurtimning odamlarini hamda yo'llarini yaxshi bilardim. Aynan shu tanishlik menga qo'zg'olonni tashkil qilish imkonini bergan.

Men haqimda yozgan manbalarning barchasi qarshi tomonniki — yunon va rim tarixchilari. Shunga qaramay ular meni Iskandarga eng jiddiy qarshilik ko'rsatgan sarkarda sifatida tan olishadi.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Iskandar Movarounnahrga kelganida u allaqachon butun Eron saltanatini egallagan edi: ikki yil avval, miloddan avvalgi 331-yilda Doro III ni Gavgamela jangida tor-mor etgan.

Amudaryodan o'tish oson kechmagan: daryo keng, ko'prik yo'q edi va qo'shin teridan yasalgan sollarda kechib o'tgan. Bu bir necha kun davom etgan.

Movarounnahr uning uchun eng qiyin o'lka bo'lib chiqdi. Eron saltanati bir necha oyda qulagan, bu yerdagi qarshilik esa uch yil davom etgan.$$
 WHERE topic_uz = $$Iskandar bosqini$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Maroqanda — bugungi Samarqand; uning qadimgi o'rni Afrosiyob tepaligida saqlanib qolgan va u bugun arxeologik yodgorlik hisoblanadi.

Shahar o'sha davrda ham katta va mustahkam edi: uni devor o'rab turardi, ichida bozor, ustaxonalar va suv tarmog'i bor edi. Yunonlar uni So'g'diyonaning bosh shahri deb yozishgan.

Iskandar shaharni egallab, u yerda garnizon qoldirgan. Aynan shu garnizonni men keyinchalik qamal qilganman.$$
 WHERE topic_uz = $$Maroqanda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$So'g'diylar, baqtriyaliklar va saklar bir-biriga yaqin, ammo turlicha yashagan xalqlar edi: dastlabki ikkisi o'troq dehqon va hunarmand, saklar esa dashtda ko'chib yuruvchi chorvador va otliq jangchilar.

Ularni birlashtirish oson emasdi. Ammo umumiy xavf bor edi va men shuni ko'rsata olganman: o'troq shahar dasht otliqlarisiz, dasht esa shaharning oziq-ovqati va qurolisiz yengilardi.

Bu ittifoq asosiy kuchim bo'lgan. Sak otliqlari tez hujum qilib tez chekinar, so'g'diy shaharlar esa qarshilik markazi bo'lib turardi.$$
 WHERE topic_uz = $$Xalqlarni birlashtirish$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Qamal Maroqandada qoldirilgan makedon garnizoniga qarshi bo'lgan — ya'ni men shaharni emas, undagi bosqinchi qo'shinni qamal qilganman.

Bu jiddiy qaror edi: Iskandar bunday hujumni javobsiz qoldirmasligi aniq edi. Men aynan shunga hisob qilganman.

Kutganimdek, u yordamga qo'shin yuborgan. Men esa qamalni to'xtatib chekinganman va yordam qo'shinini shaharda emas, o'zim tanlagan maydonda kutib olganman.$$
 WHERE topic_uz = $$Qamal$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Politimet — yunonlar Zarafshon daryosiga bergan nom; u «juda qadrli» degan ma'noni bildiradi.

Jang pistirma usulida olib borilgan: men chekinayotgandek ko'rinib, dushmanni daryo bo'yidagi noqulay joyga tortganman, so'ng sak otliqlari bilan birga to'rt tomondan hujum qilganman. Yunon tarixchisi Arrianning yozishicha, makedon talafoti ikki mingdan ortiq piyoda va uch yuzga yaqin otliqni tashkil qilgan.

Bu Iskandarning butun sharq yurishidagi eng og'ir mag'lubiyatlaridan biri edi. Xabar yetib borgach, u qo'shinni o'zi boshqarib, shoshilinch Maroqandaga qaytgan.$$
 WHERE topic_uz = $$Politimet jangi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Taqqoslash aniq ko'rsatadi: Iskandar butun Eron saltanatini uch yilda egallagan, So'g'diyonaning o'zi esa unga yana uch yilni sarflatgan.

Sabab jang usulida edi. Ochiq maydonda makedon falangasi bilan tenglashib bo'lmasdi, shuning uchun men urushni boshqacha olib borganman: kutilmagan hujum, tez chekinish, ta'minot yo'llariga zarba.

Iskandar buni tushunib, taktikasini o'zgartirgan: qo'shinni bir necha qismga bo'lib, o'lkani tarmoq bo'ylab qidirtirgan va istehkomlar qurdirgan. Kurash aynan shundan keyin men uchun qiyinlashgan.$$
 WHERE topic_uz = $$Uch yillik kurash$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Iskandar odatda yengilgan hukmdorlarga o'z lavozimini qoldirardi: bu uning sinalgan usuli edi va ko'p o'lkada ishlagan.

Menga ham shunday taklif kelgan. Rad javobi men uchun ham xavfli edi — u kurashni oxirigacha olib borishni anglatardi.

Manbalarda bu qarorim alohida qayd etilgan. Yunon tarixchilari bosqinchi tomonda turgan bo'lsa-da, menga hurmat bilan yozgan: raqibning qat'iyatini tan olish ularning odati edi.$$
 WHERE topic_uz = $$Sulhni rad etishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Hal qiluvchi jangda Iskandarning sarkardasi Koyn qo'shini bilan to'qnashganman va mag'lub bo'lganman.

Shundan keyin men dashtga — sak va massaget qabilalari orasiga chekinganman. Ular ilgari ittifoqchim edi, ammo mag'lubiyatdan keyin ittifoq buzilgan.

Manbalarga ko'ra o'sha qabila boshliqlari meni o'ldirib, boshimni Iskandarga yuborishgan. Ittifoq faqat kuch bor paytda ishlaydi — bu tarixda ko'p takrorlangan saboq.$$
 WHERE topic_uz = $$So'nggi jang$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Nikoh miloddan avvalgi 324-yilning fevralida Suza shahrida bo'lgan. Bu oddiy to'y emas edi: Iskandar bir kunda o'z sarkardalarini sharq zodagonlarining qizlariga uylantirgan.

Maqsad siyosiy edi — yunon va sharq zodagonlarini bir oilaga birlashtirish. Salavk keyinchalik Iskandar saltanatining sharqiy qismida o'z davlatini tuzgan.

Shu tariqa nabiram Antiox I ulkan saltanatning hukmdori bo'lgan. Ya'ni Iskandarga qarshi kurashgan odamning qoni uning vorislari taxtiga o'tgan.$$
 WHERE topic_uz = $$Qizim Apama$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Bess — Baqtriya satrapi; u Doro III ni o'ldirib, o'zini shoh deb e'lon qilgan edi. Ya'ni u bosqinchiga qarshi kurashuvchi emas, o'z shohini o'ldirgan xoin sifatida ko'rilardi.

Men va safdoshlarim uni qo'lga olib, Iskandar yuborgan sarkardaga topshirganmiz. Bu qaror o'sha paytda mantiqiy tuyulgan.

Ammo tez orada ma'lum bo'ldiki, Iskandar So'g'diyonani ozod qilishga emas, egallashga kelgan. Shundan keyin men unga qarshi qo'zg'olon ko'targanman — kechagi hamkor bir yil ichida asosiy raqibga aylangan.$$
 WHERE topic_uz = $$Bess voqeasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Bu usulni bugungi til bilan partizan urushi deb atash mumkin: dushmanni charchatish, uni tarqoq holga keltirish va faqat qulay paytda zarba berish.

Menda ustunlik bor edi: quduqlar, o'tish joylari va yaylovlar qayerdaligini bilardim. Bosqinchi qo'shin esa notanish o'lkada, uzun ta'minot yo'li bilan harakat qilardi.

Ochiq jangdan qochish zaiflik emas — bu kuchlar teng bo'lmaganda yagona to'g'ri tanlov. Aynan shu sabab Iskandar bu yerda uch yil qolishga majbur bo'lgan.$$
 WHERE topic_uz = $$Jang usulim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Shahar Sirdaryo bo'yida — hozirgi Xo'jand o'rnida qurilgan. Nomining ma'nosi «Eng chekka Iskandariya»: bu Iskandar asos solgan shaharlar orasida eng shimoli-sharqdagisi edi.

Shahar tasodifan qurilmagan. U harbiy istehkom vazifasini bajarardi: daryodan nariga, sak qabilalari tomonga qarab turardi va ta'minot bazasi bo'lib xizmat qilardi.

Iskandar shunday shaharlarni o'nlab qurgan. Ularning ba'zisi bugungacha yashab kelmoqda — Xo'jand shu shaharlardan biri.$$
 WHERE topic_uz = $$Chekka Iskandariya$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Arrian II asrda — voqealardan qariyb besh asr keyin yozgan, ammo u Iskandarning sarkardalari Ptolemey va Aristobulning bizgacha yetib kelmagan yozuvlariga tayangan. Shu bois uning asari eng ishonchli manba sanaladi.

Kvint Kursiy Ruf boshqacha yozgan: uning kitobi badiiyroq, unda nutqlar va tafsilotlar ko'p. Tarixchi uchun bu manbani ehtiyot bilan o'qish kerak degani.

Bir voqeani ikki manbadan solishtirib o'qish — tarix ilmining asosiy usuli. Men haqimdagi ma'lumot ham aynan shunday tekshiriladi.$$
 WHERE topic_uz = $$Tarixchilar guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Salavk o'z davlatida shaharlarni oila a'zolari nomi bilan atagan: otasi sharafiga Salavkiya, onasi sharafiga Laodikiya, xotini — mening qizim sharafiga esa Apameya.

Suriyadagi Apameya eng mashhuri bo'lgan: u yirik shahar bo'lib, uning xarobalari bugungacha saqlangan.

Nabiram Antiox I Salavkiylar saltanatini boshqargan. Shu tariqa So'g'diyona zodagonining qoni Kichik Osiyodan Hindistongacha cho'zilgan davlat taxtiga yetib borgan.$$
 WHERE topic_uz = $$Apameya shaharlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$So'g'diyona qadimgi manbalarda — jumladan «Avesto»da ham tilga olinadi; u eng qadimgi o'troq madaniyat o'lkalaridan biri hisoblanadi.

Uning boyligi sun'iy sug'orishga asoslangan edi: Zarafshon va Qashqadaryo suvi kanallar orqali dalalarga taqsimlanardi. Shu tufayli bu yerda yirik shaharlar shakllangan.

So'g'diylar keyinchalik Ipak yo'lining asosiy savdogarlariga aylangan. Ya'ni men himoya qilgan o'lka nafaqat jangchilar, balki savdogarlar va hunarmandlar yurti edi.$$
 WHERE topic_uz = $$Yurtim So'g'diyona$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

UPDATE fact_cards SET detail_uz = $$Men haqimdagi barcha yozma ma'lumot qarshi tomon tomonidan qoldirilgan: yunon va rim tarixchilaridan. O'z yurtimizda o'sha davr yozuvlari saqlanmagan.

Shunga qaramay bu manbalarda menga hurmat bilan yozilgan: ular meni Iskandarga uch yil qarshilik ko'rsata olgan sarkarda sifatida tasvirlaydi.

Bugun O'zbekistonda nomim yurt ozodligi uchun kurash ramzi sanaladi: maktab darsliklarida o'rganiladi, ko'chalar va harbiy qismlar nomim bilan ataladi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'spitamen');

-- =================================== MUQANNA ===================================

UPDATE fact_cards SET detail_uz = $$Marv o'sha davrda Xurosonning bosh shahri va xalifalikning sharqdagi eng muhim markazlaridan biri edi — aynan shu yerda 750-yilda abbosiylar harakati g'alaba qozongan.

Men oddiy hunarmand oilasidan chiqqanman; manbalarda kasbim ham qayd etilgan — mato oqartiruvchi bo'lganman.

Ya'ni Movarounnahrdagi eng yirik qo'zg'olonni zodagon emas, oddiy mehnat odami boshlagan. Bu harakatning kimlarga suyanganini ham tushuntiradi.$$
 WHERE topic_uz = $$Asl ismim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Yuzimni yopib yurishimning sababi haqida manbalar turlicha yozadi: ba'zilarida yashil ipak parda, ba'zilarida sayqallangan kumush niqob deb ko'rsatiladi.

O'zim buni shunday izohlaganman: yuzimdan taralayotgan nur inson ko'zi ko'tara olmaydigan darajada kuchli. Muxoliflarim esa boshqacha yozgan — go'yo men jangda olgan chandiqni yashirganman.

Sabab qanday bo'lmasin, niqob o'z vazifasini bajargan: u meni oddiy odamdan farqlab turgan. «Muqanna» so'zining o'zi arabcha «niqoblangan» degani.$$
 WHERE topic_uz = $$Laqabimning siri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Narshaxiy X asrda yashagan buxorolik tarixchi; uning «Buxoro tarixi» asari men haqimdagi eng batafsil manba hisoblanadi.

Uning yozishicha, men ko'p o'qigan, ziyrak odam bo'lganman, kimyogarlik ilmini o'rganganman hamda arab va fors tillarini yaxshi bilganman.

Bu tafsilot muhim: Narshaxiy menga xayrixoh emas — u xalifalik tarafida turgan muallif. Shunday bo'lsa-da, u bilimimni tan olgan. Raqibning e'tirofi eng ishonchli e'tirofdir.$$
 WHERE topic_uz = $$Bilimlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Bunday ko'tarilish oddiy hunarmand uchun g'ayrioddiy edi va u abbosiylar davrining o'ziga xosligini ko'rsatadi: yangi hokimiyat o'z tarafdorlarini kelib chiqishiga qaramay ko'targan.

Xizmat davomida men davlat ishini ichkaridan ko'rganman: soliq qanday yig'iladi, qo'shin qanday tashkil qilinadi, hokimiyat qayerda kuchsiz.

Aynan shu tajriba keyinchalik qo'zg'olonni tashkil qilishda asqotgan. Men xalifalik tuzumini tashqaridan emas, ichkaridan bilardim.$$
 WHERE topic_uz = $$Xurosondagi xizmatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Harakat Movarounnahr va Xurosonning katta qismini qamragan — bu xalifalikning sharqdagi eng yirik qo'zg'olonlaridan biri edi.

Tarafdorlarim orasida dehqonlar, hunarmandlar, mahalliy zodagonlarning bir qismi va dasht turkiylari bo'lgan. Ularni bir maqsad birlashtirgan: og'ir soliq va begona hokimiyatdan xalos bo'lish.

Qo'zg'olon shunchalik kuchli bo'lganki, xalifalik unga qarshi bir necha marta katta qo'shin yuborishga majbur bo'lgan va uni bostirish uchun yillar kerak bo'lgan.$$
 WHERE topic_uz = $$«Oq kiyimlilar» qo'zg'oloni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Qal'a Kesh — bugungi Shahrisabz yaqinidagi tog'da joylashgan edi. Bunday joy tanlash tasodifiy emas: tog' qal'asini qamal qilish tekislikdagi shahardan ancha qiyin.

Qal'ada suv manbai, oziq-ovqat zaxirasi va qurol ustaxonalari bo'lgan — ya'ni u uzoq qamalga chidashga mo'ljallangan.

Qashqadaryo vohasi qo'limizga o'tgach, harakat butun Sug'dga yoyilgan. Qal'a esa oxirigacha qarorgohim bo'lib qolgan: men shu yerda halok bo'lganman.$$
 WHERE topic_uz = $$Som qal'asi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Sug'd — Zarafshon va Qashqadaryo vodiylari; Eloq esa Ohangaron vodiysi bo'lib, u kon-metallurgiya markazi hisoblangan.

Eloqda kumush va mis qazib olinardi; Shosh (bugungi Toshkent) esa hunarmandchilik va savdo shahri edi. Ya'ni harakatga o'lkaning iqtisodiy jihatdan eng muhim hududlari qo'shilgan.

Turli tabaqaning bir harakatga qo'shilishi uning kuchini ham, zaifligini ham ko'rsatadi: birlashtiruvchi sabab yo'qolsa, bunday ittifoq tarqalib ketadi.$$
 WHERE topic_uz = $$Harakatning kengayishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Mazdak — VI asrda Eronda yashagan va ijtimoiy tenglikni targ'ib qilgan din arbobi; uning harakati sosoniylar tomonidan qattiq bostirilgan.

Mening ta'limotim ham shu g'oyalarga tayangan: yer va boylik teng taqsimlanishi, zulm bo'lmasligi kerak degan qarash. Aynan shu g'oya kambag'al dehqon va hunarmandlarni atrofimga to'plagan.

Muxoliflarim yozuvlarida men payg'ambarlik da'vo qilgan deb ko'rsatiladi. Bu manbalar qarshi tomon tomonidan yozilgani uchun ularni ehtiyotkorlik bilan o'qish kerak.$$
 WHERE topic_uz = $$Ta'limotim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$775-yil xalifalikda hokimiyat almashgan yil: xalifa Mansur vafot etib, taxtga uning o'g'li Mahdiy o'tirgan. Qo'zg'olonga qarshi asosiy kurash aynan Mahdiy davriga to'g'ri kelgan.

Dastlabki to'qnashuvlarda arab qo'shinlari katta talafot ko'rib, Samarqandga chekingan. Sabab tanish: tog'li va notanish o'lkada katta qo'shinning ustunligi yo'qoladi.

Shundan keyin xalifalik taktikani o'zgartirgan — bir necha yo'nalishdan bir vaqtda hujum qilib, harakatni bo'laklarga bo'lgan.$$
 WHERE topic_uz = $$Xalifa qo'shinlariga qarshi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Qamal uzoq davom etgan va oxirida qal'ada oziq-ovqat tugagan.

Manbalarga ko'ra men taslim bo'lishdan bosh tortganman va dushman qo'liga tirik tushmaslik uchun zahar ichganman. Narshaxiy bu voqeani batafsil yozib qoldirgan.

Xotiram adabiyotda yashaydi: Sadriddin Ayniy «Muqanna isyoni» tarixiy-adabiy ocherkini, Hamid Olimjon esa XX asrning 40-yillarida «Muqanna» dramasini yozgan.$$
 WHERE topic_uz = $$Qo'zg'olon yakuni va xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Abbosiylar xalifaligining rasmiy rangi qora edi: qora bayroq va qora libos ularning hokimiyat belgisi hisoblangan.

Tarafdorlarim ataylab oq kiyim kiygan. Bu shunchaki kiyim emas, ochiq siyosiy bayonot edi: odam ko'chada yurgan holida ham qaysi tomonda ekanini bildirardi.

Ramzning kuchi shunda: uni hamma tushunadi va uni tarqatish uchun na kitob, na maktab kerak. Shu bois harakatimiz tarixda «Oq kiyimlilar» nomi bilan qolgan.$$
 WHERE topic_uz = $$Oq libos ramzi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Asosiy sabab soliq edi. Mahalliy aholi yer solig'i — xiroj va jon solig'i — jizyani to'lardi; bunga davlat majburiyatlari va lashkar ta'minoti qo'shilardi.

Bundan tashqari boshqaruvdagi tengsizlik bor edi: yuqori lavozimlar asosan kelgindilarga berilar, mahalliy aholi esa ikkinchi darajali holatda qolardi.

Shuning uchun atrofimga dehqonlar va hunarmandlar birlashgan — ya'ni eng ko'p soliq to'lagan va eng kam huquqqa ega bo'lgan tabaqalar.$$
 WHERE topic_uz = $$Kurash sabablari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Qo'zg'olon davri haqida manbalar bir xil emas: darsliklarimizda 769–783-yillar, xalqaro nashrlarda esa 776–783-yillar ko'rsatiladi. Farq boshlanish sanasida — harakat qaysi voqeadan hisoblanishiga bog'liq.

Uzunligi esa ikkala hisobda ham hayratlanarli: xalifalik o'z davrining eng kuchli davlatlaridan biri bo'lgan va u bir o'lkadagi qo'zg'olonni yillar davomida bostira olmagan.

Bu qarshilikning naqadar keng ekanini ko'rsatadi: agar harakat faqat bitta guruh bilan cheklangan bo'lsa, u bunchalik uzoq turmasdi.$$
 WHERE topic_uz = $$Kurash yillari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Dasht turkiylari o'sha davrda Movarounnahrning shimoliy chegarasida yashardi va ular xalifalik hokimiyatiga bo'ysunmasdi.

Ularning qo'shilishi harakatga otliq qo'shin bergan. Bu muhim edi: tog' qal'alarida turgan qo'zg'olonchilar ochiq dalada arab otliqlariga qarshi tura olmasdi, dasht otliqlari esa bu bo'shliqni to'ldirgan.

Ittifoq shuni ko'rsatadiki, qarshilik faqat mahalliy sabab bilan cheklanmagan: unga o'troq va ko'chmanchi xalqlar birga qatnashgan.$$
 WHERE topic_uz = $$Turkiy qabilalar madadi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Rivoyatga ko'ra, men Naxshab — bugungi Qarshi shahrida quduqdan sun'iy oy chiqarib ko'rsatganman va u kechalari uzoqdan ko'rinib turgan.

Bu rivoyat, tarixiy dalil emas — kartochkada ham shunday deb yozilgan. Ba'zi mualliflar buni ko'zgu va sayqallangan idishlar yordamida qilingan tomosha deb izohlaydi.

Ammo rivoyatning o'zi ham ma'lumot beradi: u zamondoshlarim orasida qanday taassurot qoldirganimni ko'rsatadi. Kuchli rivoyat kuchli taassurotdan tug'iladi.$$
 WHERE topic_uz = $$Naxshab oyi rivoyati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Narshaxiyning «Buxoro tarixi» X asrda arab tilida yozilgan, XII asrda esa fors tiliga tarjima qilingan; men haqimdagi eng batafsil bob aynan shu kitobda.

Beruniy «Osor ul-boqiya» asarida, Tabariy esa o'zining ulkan yilnomasida qo'zg'olon haqida yozgan. Uch muallifning uchalasi ham menga xayrixoh emas.

Shu bois tarixchi ularni tanqidiy o'qiydi: dalil va sanalar olinadi, baho esa muallifning tomoniga tegishli deb qaraladi. Bu birlamchi manba bilan ishlashning oddiy qoidasi.$$
 WHERE topic_uz = $$Qadimiy kitoblarda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');

UPDATE fact_cards SET detail_uz = $$Hamid Olimjon dramani XX asrning 40-yillarida yozgan; asar teatr sahnasida ko'p yillar qo'yilgan.

Undan avval Sadriddin Ayniy «Muqanna isyoni» tarixiy-adabiy ocherkini yaratgan. Ya'ni ming yildan ko'proq vaqt o'tib, hikoyam yana yozuvchilarni qiziqtirgan.

Nomim Yevropa adabiyotiga ham yetib borgan: irland shoiri Tomas Murning «Lalla Ruk» (1817) she'riy kitobidagi birinchi doston «Xurosonning niqobli payg'ambari» deb ataladi va uning qahramoni mendan olingan.$$
 WHERE topic_uz = $$Drama qahramoniman$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'muqanna');
