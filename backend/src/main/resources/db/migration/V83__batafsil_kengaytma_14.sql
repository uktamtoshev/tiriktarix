-- «Batafsil» matnlarini KENGAYTIRISH — 14-to'plam: Saroymulkxonim va
-- Gavharshod begim. Ikkalasi ham temuriylar xonadonining ketma-ket ikki
-- avlodiga mansub va ikkalasi ham davlat ishlarida qatnashgan.
--
-- MANBA. V79–V82 qoidasi saqlanadi: TASHQI manba ishlatilmagan. Matnlar
-- bazadagi tekshirilgan kartochkalardan yig'ilgan — shu qahramonning boshqa
-- kartochkalari, Ulug'bek maktabi (Koshiy, Qozizoda Rumiy, Ali Qushchi),
-- Navoiy, Husayn Boyqaro, Behzod, To'maris va Spitamen (Maroqanda)
-- kartochkalari, hamda atama izohlari (tarxon, ko'ragon, vaqf, devon, koshin).
-- Yangi sana, ism yoki raqam qo'shilmagan.

-- ================================ SAROYMULKXONIM ================================

UPDATE fact_cards SET detail_uz = $$Otam Qozonxon chig'atoy xoni edi — ya'ni men Chingizxon naslidan bo'lgan xonadonga mansubman.

Besh yoshimda otam halok bo'lgan va bu taqdirimni belgilagan: xon qizi bo'lsam-da, ortimda hokimiyat qolmagan edi.

Ammo kelib chiqishim qadrini yo'qotmagan. Aynan shu nasl keyinchalik Amir Temurga «Ko'ragon» unvonini bergan — ya'ni mening kelib chiqishim uning maqomiga qo'shilgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Nikoh siyosiy ahamiyatga ega edi: Amir Temur o'zi Chingizxon naslidan emasdi va xon qiziga uylanish unga hukmronlik huquqini mustahkamlagan.

Aynan o'sha yili Temur Movarounnahrda hokimiyatni to'liq qo'lga olgan. Ya'ni nikoh uning yuksalishi bilan bir vaqtga to'g'ri kelgan.

Bu men uchun ham yangi hayotning boshlanishi bo'lgan: keyingi qariyb qirq yil davomida men saltanatning eng yuqori doirasida yashaganman.$$
 WHERE topic_uz = $$Temurga turmushga chiqishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$«Ko'ragon» so'zining ma'nosi oddiy, ammo uning ortidagi qoida jiddiy.

Mo'g'ul an'anasiga ko'ra oliy hokimiyat faqat Chingizxon naslidagi kishiga tegishli hisoblanardi. Amir Temur bu naslga mansub emasdi va bu uning yo'lidagi rasmiy to'siq edi.

Xon qiziga uylanish shu to'siqni aylanib o'tish yo'li bo'lgan. Shu bois bu unvon uning nomiga qo'shib aytilardi.$$
 WHERE topic_uz = $$«Ko'ragon» unvoni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$«Bibixonim» rasmiy unvon emas, el ichida paydo bo'lgan nom. Bu farq muhim: unvonni hukmdor beradi, bunday nomni esa xalq beradi.

«Katta xonim» maqomi saroy tartibida aniq ma'noga ega edi: ziyofatlardagi o'rin, murojaat tartibi va qaror qabul qilishdagi ovoz shu maqomga bog'liq bo'lgan.

Bugungacha Samarqanddagi eng ulkan masjid shu nom bilan ataladi. Ya'ni el bergan nom rasmiy unvondan uzoqroq yashagan.$$
 WHERE topic_uz = $$«Bibixonim» nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Harbiy yurishda qatnashish o'sha davrda malika uchun g'ayrioddiy emasdi: saroy hukmdor bilan birga ko'chardi.

Ammo qatnashish bilan boshqarish boshqa narsa. Menga davlat ishlarida ovoz berilgan va bu kelib chiqishim hamda tajribamga bog'liq edi.

Temuriylar xonadonida bu an'ana davom etgan: keyingi avlodda Shohrux Mirzoning rafiqasi Gavharshod begim Hirotda deyarli shu vazifani bajargan.$$
 WHERE topic_uz = $$Davlat ishlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Madrasa qurish uchun mablag' otamdan qolgan javohirlar bo'lgan — ya'ni men o'z mulkimni sarflaganman, xazinadan emas.

Bu tafsilot muhim: u malikaning mustaqil mulki bo'lganini va uni o'zi xohlagancha sarflay olganini ko'rsatadi.

Madrasa faqat bino emas: unga vaqf mulki ajratiladi, mudarris va talabalar ta'minlanadi. Ya'ni bir marta sarflangan mablag' o'nlab yil davomida ishlaydi.$$
 WHERE topic_uz = $$Madrasam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Uch nabira — Ulug'bek, Muhammad Sulton va Xalil Sulton — saltanatning bo'lajak hukmdorlari edi. Ularning tarbiyasi davlat ishi hisoblangan.

Tarbiya deganda faqat odob emas, ta'lim ham tushuniladi: til, xat, hisob, tarix va davlat boshqaruvi asoslari.

Natija ma'lum: Ulug'bek keyinchalik Samarqandda rasadxona qurdirgan va o'z davrining eng yirik olimlaridan biriga aylangan. Bolalikdagi ta'lim bekorga ketmagan.$$
 WHERE topic_uz = $$Nabiralar tarbiyasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Qurilish besh yil davom etgan va u Amir Temurning eng yirik loyihalaridan biri bo'lgan.

Bino o'sha davr uchun juda katta bo'lgan — bunday o'lchamda qurish me'morlar uchun sinov edi. Shu bois qurilishda turli o'lkalardan kelgan ustalar ishlagan.

Masjidning mening nomim bilan atalishi bejiz emas: u saroyda maqomim qanchalik yuqori bo'lganini ko'rsatadi.$$
 WHERE topic_uz = $$Bibixonim masjidi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Vafot sanam Ibn Arabshoh degan muallif rivoyatiga tayanadi — ya'ni u aniq hujjat emas, keyingi davr yozuvi.

Ibn Arabshoh Amir Temur haqida asar yozgan va u saltanatga xayrixoh bo'lmagan. Shunga qaramay uning yozganlari qimmatli manba sanaladi: raqib tomonning guvohligi ham dalil bo'la oladi.

Men o'zim qurdirgan madrasa yonidagi maqbaraga dafn qilinganman — ya'ni hayotimda barpo etgan bino oxirgi manzilim bo'lgan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Klavixo Ispaniya qirolining elchisi bo'lib, Samarqandga uzoq yo'l bosib kelgan va bu yerda bir necha oy turgan.

Uning kundaligi tariximiz uchun noyob hujjat: unda saroy tartibi, ziyofatlar, kiyimlar va shahar ko'rinishi chet ellik odam ko'zi bilan tasvirlangan.

Bunday manbaning qimmati shundaki, muallif ichki tartibga o'rganib qolmagan. Mahalliy kishi e'tibor bermaydigan tafsilot chet ellikni hayratga soladi — va u buni yozib qoldiradi.$$
 WHERE topic_uz = $$Klavixo guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Ziyofatdagi o'rin tartibi saroyda oddiy urf-odat emas edi: u kimning maqomi qanday ekanini hammaga ko'rsatib turardi.

Bunday marosimlarda elchilar ham qatnashardi. Ya'ni ziyofat siyosiy vosita ham bo'lgan: mehmon saltanatning boyligi va tartibini o'z ko'zi bilan ko'rardi.

Klavixoning kundaligida aynan shunday ziyofatlar batafsil tasvirlangan va u yerda mening o'rnim ham qayd etilgan.$$
 WHERE topic_uz = $$Saroy ziyofatlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Samarqand poytaxt sifatida tanlangach, shahar tubdan o'zgargan: bu yerda masjidlar, madrasalar, bozorlar va bog'lar qurilgan.

Qurilishga turli o'lkalardan ustalar keltirilgan va shu tariqa shaharda alohida me'morchilik uslubi shakllangan.

Shaharning tarixi esa undan ancha qadimiy: Samarqand qadimda Maroqanda deb atalgan va Iskandar davridayoq yirik shahar bo'lgan. Ya'ni Amir Temur bo'sh joyda emas, qadimgi markazda qurgan.$$
 WHERE topic_uz = $$Poytaxt Samarqand$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Maqbara masjid ro'parasida joylashgan — ya'ni ikkala bino bir majmuani hosil qiladi.

Bunday joylashuv o'sha davr me'morchiligiga xos: masjid, madrasa va maqbara ko'pincha birga qurilar va bir maydonni tashkil qilardi.

Bugun bu joy ziyoratgoh hisoblanadi. Olti asrdan ortiq vaqt o'tgan bo'lsa-da, odamlar bu yerga kelishda davom etadi.$$
 WHERE topic_uz = $$Maqbaram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$YUNESKO ro'yxatiga kiritilish yodgorlikni saqlash bo'yicha xalqaro majburiyatni ham yuklaydi: bino faqat ta'mirlanmaydi, uning asl ko'rinishi saqlanishi kerak.

Samarqand butun shahar sifatida ro'yxatga kiritilgan — ya'ni alohida bino emas, tarixiy markazning o'zi qo'riqlanadi.

Bibixonim majmuasi shu merosning bir qismi. Olti asr avval qurilgan bino bugun butun dunyo e'tirof etgan yodgorlikka aylangan.$$
 WHERE topic_uz = $$Jahon merosi ro'yxatida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Ulug'bek nafaqat hukmdor, balki olim ham bo'lgan: u Samarqandda rasadxona qurdirgan va atrofiga o'z davrining eng yaxshi olimlarini to'plagan.

Uning davrasida G'iyosiddin Koshiy, Qozizoda Rumiy va Ali Qushchi ishlagan; ular birgalikda yulduzlar jadvalini tuzgan.

Bolalikdagi ta'lim uning yo'lini belgilagan. Nabiraga bilim berish — bu eng uzoq muddatli sarmoya: natijasi o'nlab yildan keyin ko'rinadi.$$
 WHERE topic_uz = $$Nabiram Ulug'bek$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Afsona va tarix ikki xil narsa va ularni ajratish kerak: afsonada voqea qiziqarli qilib aytiladi, tarixda esa dalil bilan tasdiqlanadi.

Men haqimdagi afsonalarning ko'pi masjid qurilishi bilan bog'liq. Ular xalq og'zaki ijodiga tegishli va tarixiy hujjat sanalmaydi.

Tarixchilar boshqa manbalarga tayanadi: Klavixo kundaligi, o'sha davr yozuvlari va qurilgan binolar. Ular meni saroyning dono va obro'li malikasi sifatida ko'rsatadi.$$
 WHERE topic_uz = $$Men haqimdagi afsonalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

-- =============================== GAVHARSHOD BEGIM ===============================

UPDATE fact_cards SET detail_uz = $$Otam G'iyosiddin Tarxon chig'atoy zodagoni bo'lgan. «Tarxon» — alohida imtiyozlarga ega zodagonga beriladigan unvon.

Ya'ni men saroyga begona emasdim: oilam allaqachon hokimiyatga yaqin doiraga mansub edi.

Bu kelib chiqish keyingi hayotimni belgilagan. Zodagon qizi saroyda o'zini erkin tutar va davlat ishlariga aralasha olardi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Shohrux Mirzo Amir Temurning o'g'li edi — ya'ni nikoh bilan men temuriylar xonadoniga kirganman.

O'sha paytda men o'n to'rt yoshlar atrofida edim; Amir Temur hali tirik va saltanat eng kuchli davrida edi.

Turmush o'rtog'im keyinchalik saltanatni boshqargan va poytaxtni Hirotga ko'chirgan. Shu bilan mening hayotim ham Hirot bilan bog'lanib qolgan.$$
 WHERE topic_uz = $$Turmushim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Ikki o'g'lim ikki xil sohada iz qoldirgan: Ulug'bek — astronomiya va matematikada, Boysung'ur — kitobat san'ati hamda xattotlikda.

Bu tasodif emas: bizning xonadonimizda ilm va san'atga homiylik oilaviy an'ana bo'lgan.

Ulug'bek Samarqandda rasadxona qurdirgan, Boysung'ur esa Hirotda kitobxona tashkil qilgan. Ya'ni ikki shaharda ikki markaz — ikkalasi ham bir oiladan chiqqan.$$
 WHERE topic_uz = $$Farzandlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Bunday holat o'rta asr saroylarida uchraydi, ammo kam qayd etiladi: rasmiy hujjatda hukmdorning nomi turadi, amaldagi ish esa boshqa odam qo'lida bo'lishi mumkin.

Mening holimda bu ochiq ma'lum — manbalarda Shohrux ibodat va ilmga berilgan paytlarda devon ishlarini men boshqarganim qayd etilgan.

Devon — davlat boshqaruvining markaziy idorasi: u yerda soliq, hujjat, tayinlov va nizolar bilan shug'ullanilardi.$$
 WHERE topic_uz = $$Saltanat ishlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Tayinlash huquqi — hokimiyatning eng jiddiy vositasi: kimni qo'ysang, o'sha joyda sening qaroring bajariladi.

Mukofot va jazoni belgilash esa boshqaruvning ikkinchi qanoti. Bu ikkalasi birga davlat mashinasini yurgizadi.

Ayolning bunday vakolatga ega bo'lishi o'sha davr uchun kam uchraydigan hol edi. Tariximizda bunga misollar bor: qadimda To'maris qo'shin boshqargan, temuriylar xonadonida esa Saroymulkxonim davlat ishlarida qatnashgan.$$
 WHERE topic_uz = $$Amaldorlar tayinlash$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Ikkala madrasa ham Hirotda qurilgan — bu shahar o'sha davrda saltanatning poytaxti edi.

Madrasa qurish uzoq muddatli qaror: unga vaqf mulki ajratiladi va u hukmdor almashsa ham ishlashda davom etadi.

Shu bois madrasa quruvchi homiy faqat bino emas, butun bir ta'lim tizimini yaratadi: mudarris, talaba, kutubxona va ularni ta'minlaydigan daromad manbai.$$
 WHERE topic_uz = $$Madrasalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Ro'yxatning o'zi qiziq: masjid — ibodat uchun, xonaqoh — sayohatchi va darveshlar uchun, shifoxona — bemorlar uchun, karvonsaroy — savdogarlar uchun.

Ya'ni qurilishlarim faqat diniy emas edi. Ular shaharning kundalik hayotini ta'minlaydigan inshootlar bo'lgan.

Bunday tuzilma o'rta asr shahriga xos: bir homiy bir necha turdagi bino qurdirar va ularning barchasi bir vaqf tizimiga bog'lanardi.$$
 WHERE topic_uz = $$Boshqa binolarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Sakson yosh o'sha davr uchun juda uzun umr; men bir necha hukmdorning davrini ko'rganman.

Ammo oxiri fojiali bo'lgan: temuriylar xonadonidagi taxt uchun kurash meni ham chetlab o'tmagan.

Bu sulolaviy davlatlarning tanish holati: hokimiyat almashganda avvalgi davrning nufuzli kishilari xavf ostida qoladi. Yoshim ham, xizmatlarim ham himoya bo'la olmagan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Maqbara o'zim qurdirgan madrasa yonida joylashgan — ya'ni barpo etgan majmuam oxirgi manzilim bo'lgan.

Maqbara o'g'lim Boysung'ur nomi bilan ataladi: u mendan avval vafot etgan va u yerga birinchi bo'lib dafn qilingan.

Ona uchun bundan og'irroq narsa yo'q — farzandidan keyin yashash. Men undan keyin yana o'n yillar yashaganman va shu vaqt davomida qurilish ishlarini davom ettirganman.$$
 WHERE topic_uz = $$Dafn joyim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Ism ikki so'zdan tuzilgan; bunday qo'shma ismlar fors tilida keng tarqalgan.

«Gavhar» — qimmatbaho dur, «shod» — xursand degani; birgalikda «shodlik gavhari» ma'nosini beradi.

Sharqda ismga tilak sifatida qaralardi: bola dunyoga kelganda unga qanday hayot tilansa, shunga mos ism qo'yilardi.$$
 WHERE topic_uz = $$Ismimning ma'nosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Amir Temur mening qaynotam bo'lgan va men uning saltanati eng kuchli davrida bu xonadonga kelganman.

Saroymulkxonim esa Amir Temurning katta xonimi edi — ya'ni ikkalamiz bir xonadonda, ammo ketma-ket ikki avlodda yashaganmiz.

Taqdirimizda o'xshashlik bor: ikkalamiz ham davlat ishlarida qatnashganmiz, ikkalamiz ham madrasa qurdirganmiz va ikkalamiz ham bo'lajak olim Ulug'bekning tarbiyasiga aloqadormiz.$$
 WHERE topic_uz = $$Qaynotam Amir Temur$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Poytaxtning Samarqanddan Hirotga ko'chishi butun saltanatning og'irlik markazini janubga surgan.

Hirot shundan keyin tez o'sgan: u yerda madrasalar, kitobxonalar va ustaxonalar paydo bo'lgan.

Bu o'sish keyingi avlodda ham davom etgan: Husayn Boyqaro va Alisher Navoiy davrida Hirot Sharqning eng yirik madaniyat markaziga aylangan va u yerda musavvir Kamoliddin Behzod ishlagan.$$
 WHERE topic_uz = $$Hirot poytaxtimiz$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Masjid Hirotdan tashqarida — Mashhad shahrida qurilgan. Ya'ni homiyligim poytaxt bilan cheklanmagan.

Bino koshinlari bilan mashhur. Koshin — sirlangan sopol plitka; undan naqsh yig'iladi va u asrlar davomida rangini yo'qotmaydi.

Masjid bugungacha mening nomim bilan ataladi. Olti asr o'tib ham bino quruvchisining nomi yodda qolishi kam uchraydigan hol.$$
 WHERE topic_uz = $$Mashhaddagi masjidim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Qavomiddin Sheroziy o'z davrining eng mashhur me'mori bo'lgan va u mening yirik loyihalarimni bajargan.

Bitta me'mor bilan uzoq ishlash tasodifiy emas: bunda uslub yagona bo'ladi va har bir yangi bino avvalgisining davomi kabi ko'rinadi.

O'rta asrda me'morning nomi kam saqlanadi — odatda faqat buyurtmachi eslanadi. Uning nomining yetib kelgani mahorati darajasini ko'rsatadi.$$
 WHERE topic_uz = $$Me'morim Qavomiddin$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Homiylik amalda ta'minot degani: olimga maosh, shoirga sharoit, musavvirga bo'yoq va ustaxona beriladi.

Hirotdagi madaniy yuksalish shu tizim ustida qurilgan. Kitobxonada xattotlar, musavvirlar va muqovasozlar birga ishlardi.

Bu an'ana mendan keyin ham davom etgan: keyingi avlodda Alisher Navoiy xuddi shu ishni qilgan — u ijodkorlarga nafaqa belgilagan va ularning ishlashiga sharoit yaratgan.$$
 WHERE topic_uz = $$Ilm-fan homiyligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');

UPDATE fact_cards SET detail_uz = $$Ulug'bek Samarqandda hukmdor bo'lgan, ammo tarixda avvalo olim sifatida qolgan.

U qurdirgan rasadxonada G'iyosiddin Koshiy, Qozizoda Rumiy va Ali Qushchi ishlagan; ularning birgalikdagi ishi yulduzlar jadvali bo'lgan.

Uning bolaligida tarbiya bilan Saroymulkxonim ham shug'ullangan. Ya'ni bir olimning shakllanishida temuriylar xonadonining ikki avlodidagi ayollar qatnashgan.$$
 WHERE topic_uz = $$O'g'lim Ulug'bek$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gavharshod-begim');
