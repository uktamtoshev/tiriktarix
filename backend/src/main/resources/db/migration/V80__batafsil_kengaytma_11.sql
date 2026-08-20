-- «Batafsil» matnlarini KENGAYTIRISH — 11-to'plam: Ismoil Somoniy va
-- Abu Bakr Narshaxiy. Ikkalasi bitta shahar — Buxoro atrofida bog'lanadi:
-- biri davlatni qurgan, ikkinchisi o'sha davlatning tarixini yozgan.
--
-- MANBA. V79 dagi qoida saqlanadi: TASHQI manba ishlatilmagan. Matnlar
-- bazadagi tekshirilgan kartochkalardan yig'ilgan —
--   shu qahramonning boshqa kartochkalari;
--   Ibn Sino kartochkalari (Buxoro saroy kutubxonasi, uning yong'inda nobud
--     bo'lishi), Muqanna kartochkalari (Narshaxiy asosiy manba ekani),
--     G'iyosiddin Koshiy kartochkasi (nisba qoidasi);
--   janr va atama izohlari (noib, yorliq, nisba, tazkira, matnshunoslik).
-- Yangi sana, ism yoki raqam qo'shilmagan.

-- ================================ ISMOIL SOMONIY ================================

UPDATE fact_cards SET detail_uz = $$Sulolamiz nomi bobokalonimiz Somonxudotdan olingan — ya'ni davlat nomi shaxs nomidan kelib chiqqan.

Tug'ilgan joyim Farg'ona, ammo umrimning asosiy qismi undan g'arbda — Buxoroda o'tgan. Oilamiz vakillari o'sha davrda Movarounnahrning turli shaharlarini boshqarardi.

Men tug'ilganimda hali yagona davlat yo'q edi: o'lka bo'lak-bo'lak bo'lib, har bir shahar o'z hokimiga bo'ysunardi. Uni birlashtirish umrimning asosiy ishiga aylandi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Noib — hukmdor nomidan viloyatni boshqaruvchi mansabdor; u to'liq mustaqil emas, ammo amalda o'lkani o'zi idora qiladi.

Buxoroga kelganimda shahar mening tayanchimga aylandi va martabam shu yerdan ko'tarilib borgan.

Qizig'i shundaki, butun Movarounnahr noibi bo'lgan yilim — 893-yilda men Taroz shahriga harbiy yurish ham qilganman. Ya'ni bir yil ichida ham mavqe, ham harbiy obro' qo'lga kiritilgan.$$
 WHERE topic_uz = $$Buxoro noibi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Taroz Movarounnahrdan ancha shimoli-sharqda, dasht chegarasida joylashgan shahar edi. Unga qilingan yurish davlatimiz ta'sirini shu tomonga kengaytirgan.

Bu oddiy jang emas edi — u chegara masalasini hal qilgan va shimoldan keladigan xavfni kamaytirgan.

G'alaba menga katta obro' keltirgan. Aynan shu yili men butun Movarounnahrning noibi etib tayinlanganman: harbiy natija siyosiy mavqega aylangan.$$
 WHERE topic_uz = $$Taroz yurishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Birlashtirish faqat shaharlarni bo'ysundirish emas edi. Yagona davlat degani — yagona boshqaruv, yagona tanga va savdo yo'llarining xavfsizligi.

Aynan shu narsa iqtisodni ko'targan: karvon xavfsiz yursa, savdo o'sadi; savdo o'ssa, xazina to'ladi; xazina to'lsa, qurilish va ilmga mablag' topiladi.

Poytaxt qilib Buxoroni tanlaganman. Bu shahar mening noiblik yo'lim boshlangan joy edi va u tez orada butun Sharqning ilm markazlaridan biriga aylangan.$$
 WHERE topic_uz = $$Yagona davlat$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Xuroson — Amudaryodan janubdagi katta va boy o'lka; uni nazorat qilgan hukmdor mintaqadagi eng kuchli kishiga aylanardi.

Safforiylar o'sha davrning kuchli sulolasi edi va Xurosonni ular egallab turardi. G'alaba shuning uchun hal qiluvchi bo'lgan: u meni noibdan mustaqil hukmdorga aylantirgan.

Shundan keyin Bag'dod xalifasi menga yorliq yuborib, hukmronligimni rasman tan olgan. Ya'ni kuch avval qo'lga kiritilgan, e'tirof esa keyin kelgan.$$
 WHERE topic_uz = $$Xuroson uchun kurash$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Homiylik amalda nimani anglatardi? Olimga ta'minot va ishlash sharoiti beriladi, kitob ko'chirtiriladi, kutubxona to'ldiriladi, bino quriladi.

Saroy kutubxonam butun Sharqda dong taratgan va uning natijasi men vafot etganimdan keyin ham davom etgan: bir asr o'tib shu kutubxonada yosh Ibn Sino bilim olgan.

Adolat esa boshqacha o'lchanadi — soliqning me'yorda bo'lishi, qozilarning xolisligi va oddiy odamning hukmdorga arz qila olishi bilan. Zamondoshlarim meni shu jihatlarim uchun eslashgan.$$
 WHERE topic_uz = $$Adolatli boshqaruv$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Bu laqabni menga zamondoshlarim emas, keyingi avlodlar bergan — ya'ni u vaqt sinovidan o'tgan baho.

«Amiri moziy» shunchaki eslatma emas: u keyingi hukmdorlar bilan taqqoslanadigan o'lchov ma'nosini bildiradi.

Men haqimdagi ma'lumotlarning katta qismi tarixchi Narshaxiyning «Buxoro tarixi» asaridan olingan. U mendan keyingi avlodga mansub va Buxoroda yashagan — ya'ni shahar xotirasini yaqindan bilgan.$$
 WHERE topic_uz = $$«Amiri moziy» laqabim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Narshaxiy 899-yilda tug'ilgan — ya'ni men vafot etganimda u hali bola edi; kitobini esa 943–944-yillarda yozgan.

Demak u meni ko'rmagan. Yozganlari Buxoroda saqlangan xotira, hujjatlar va zamondoshlar rivoyatiga tayanadi — tarixchi uchun bu odatiy holat.

Raqamlarning o'zi ma'noli: o'ttiz yillik hukmronligimning yigirma yilida men Xuroson amiri ham bo'lganman. Ya'ni Xurosonni qo'lga kiritish umrimning uchdan ikki qismini egallagan.$$
 WHERE topic_uz = $$Narshaxiy guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Vafotim o'zim ko'targan shaharda yuz bergan. Otam ham, akam ham boshqa shaharlarda hukmronlik qilgan, men esa umrimni Buxoroda yakunlaganman.

Mendan keyin davlat yana bir necha o'n yil davom etgan va Buxoro ilm markazi bo'lib qolgan. Aynan shu shaharda, bir asr o'tib, yosh Ibn Sino bilim olgan.

Qabrim ustidagi maqbara bugungacha turibdi — ming yildan ortiq vaqt davomida. Bu, ehtimol, hukmdor uchun eng g'ayrioddiy davomiylik.$$
 WHERE topic_uz = $$Umrim oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Oilamizda hokimiyat bo'lingan holda yuritilgan: har bir aka-uka alohida shaharni boshqarardi.

Meni Buxoroga aynan akam yuborgan. O'sha paytda bu ikkinchi darajali tayinlov ko'ringan bo'lishi mumkin, ammo aynan shu shahar keyinchalik butun davlatning poytaxtiga aylangan.

Sulolaviy davlatda aka-ukalar o'rtasidagi munosabat doim sinovda bo'ladi. Bizning holimizda hokimiyat oxir-oqibat bir qo'lda — Buxoroda jamlangan.$$
 WHERE topic_uz = $$Oilam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Buxoro qulay joyda — savdo yo'llari kesishgan nuqtada joylashgan; uni anhorlar tarmog'i suv bilan ta'minlagan.

Poytaxt maqomi shaharni o'zgartirgan: bu yerda saroy, kutubxona, masjidlar va bozorlar qurilgan, hunarmandchilik hamda savdo jonlangan.

Buxoroning o'sha davrdagi ko'rinishi — ko'chalari, anhorlari, qishloqlari va bozorlari — tarixchi Narshaxiyning kitobida batafsil tasvirlangan. Uning tavsifi tufayli biz shaharni ming yil oldingi holida tasavvur qila olamiz.$$
 WHERE topic_uz = $$Poytaxtim Buxoro$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Kutubxona faqat kitob to'plami emas edi: u yerda kitoblar ko'chirilar, tarjima qilinar va tartibga solinardi.

Uning shuhrati asrlar davomida saqlangan. Ibn Sino bu kutubxonaga kirish huquqini olgani va u yerda noyob kitoblarni o'qib chiqqanini yozib qoldirgan.

Afsuski, oradan yillar o'tib kutubxona yong'inda nobud bo'lgan. Bu — kitob merosining eng katta xavfi: bir joyda jamlangan xazina bir kechada yo'qolishi mumkin.$$
 WHERE topic_uz = $$Ilm-fan ravnaqi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Tanga tarixchi uchun alohida manba: unda hukmdorning nomi, zarb qilingan shahar va yil yoziladi. Ya'ni har bir dirham — sanasi bor kichik hujjat.

Bizning dirhamlarimiz savdo karvonlari bilan juda uzoq o'lkalarga yetib borgan; ular shimoliy mamlakatlar hududidan ham topilgan.

Bu topilmalar bir narsani isbotlaydi: Movarounnahr o'sha davrda yopiq o'lka emas, katta savdo tarmog'ining markazlaridan biri bo'lgan.$$
 WHERE topic_uz = $$Kumush dirhamlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Maqbaraning o'ziga xosligi shundaki, unda kafel yoki bo'yoq yo'q: butun naqsh faqat pishiq g'ishtni turlicha terish orqali hosil qilingan.

Bunday usul ustadan aniq hisob talab qiladi — har bir g'isht o'z o'rnida yotishi va yorug'lik tushganda soya naqsh berishi kerak. Kun davomida quyosh siljigani sayin binoning ko'rinishi o'zgarib turadi.

Bino ming yildan ortiq vaqt davomida saqlanib qolgan. O'sha davr me'morchiligidan bizgacha yetib kelgan yodgorliklar juda kam — shuning uchun bu maqbara alohida qadrlanadi.$$
 WHERE topic_uz = $$Somoniylar maqbarasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Yorliq — xalifa nomidan beriladigan rasmiy hujjat; u hukmdorning huquqini qog'ozda tasdiqlardi.

O'sha davrda Bag'dod xalifasi butun musulmon olamining rasmiy boshlig'i hisoblanardi, ammo uzoq o'lkalarda haqiqiy hokimiyat mahalliy hukmdorlar qo'lida edi.

Shuning uchun yorliq menga kuch bermagan — kuch allaqachon qo'limda edi. U boshqa narsani bergan: hukmronligimning qonuniyligini va boshqa hukmdorlar oldidagi maqomni.$$
 WHERE topic_uz = $$Xalifa yorlig'i$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

UPDATE fact_cards SET detail_uz = $$Nomimning bugungi hayoti bir necha shaklda davom etadi: qo'shni Tojikistonda pul birligi va eng baland cho'qqi mening nomim bilan ataladi.

O'zbekistonda esa asosiy yodgorlik — Buxorodagi Somoniylar maqbarasi; u shahar markazidagi bog'da turibdi va unga ziyoratchilar keladi.

Somoniylar davlati bugungi bir necha xalqning umumiy tarixiga tegishli. Shuning uchun nomim chegaralarning ikkala tomonida ham eslanadi.$$
 WHERE topic_uz = $$Nomim bugun$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ismoil-somoniy');

-- ============================== ABU BAKR NARSHAXIY ==============================

UPDATE fact_cards SET detail_uz = $$«Narshaxiy» nisbam qishlog'im nomidan olingan. O'sha davrda olimlar tug'ilgan joyi nomi bilan atalardi — masalan Koshondan chiqqan olim «Koshiy» deb yozilgan.

Narshax Buxoroga yaqin qishloq edi. Bu tafsilot bejiz emas: kitobimda men o'z qishlog'im yonida bo'lib o'tgan jangni ham tasvirlaganman.

Tug'ilgan yilim men uchun muhim: men Somoniylar davlatining gullagan davrida voyaga yetganman va shu davlatning tarixchisiga aylanganman.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$To'la ism o'sha davrda odamning shajarasini ham bildirardi: unda otasi, bobosi va undan oldingi ajdodlar ketma-ket sanaladi.

Mening ismimda besh avlod qayd etilgan. Bu bugungi tarixchi uchun qimmatli: bir ism butun bir oila tarixini saqlab qoladi.

Qizig'i shundaki, bu ma'lumot o'z kitobimdan emas, boshqa muallif — Sam'oniyning asaridan ma'lum. Muallif o'zi haqida kam yozadi; uni ko'pincha boshqalar yozib qoldiradi.$$
 WHERE topic_uz = $$To'la ismim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Kitobni yozganimda qirq besh yoshlar atrofida edim — ya'ni u yetuk davrimning ishi.

Uning ahamiyati shunda: bu O'rta Osiyoda mahalliy muallif tomonidan yozilib, bizgacha to'liq yetib kelgan eng qadimgi tarixiy asar. Undan avvalgi davr haqida biz asosan chet ellik mualliflarning yozganlariga tayanamiz.

Farq katta: chet ellik muallif o'lkani tashqaridan ko'radi, mahalliy muallif esa ichkaridan — mahalla nomlarini, anhorlar tartibini va odamlarning kundalik hayotini biladi.$$
 WHERE topic_uz = $$«Buxoro tarixi» kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Asarni hukmdorga bag'ishlash o'sha davrning odati edi: bu muallifga ta'minot, kitobga esa e'tibor va ko'chirilish imkonini berardi.

Amir Nuh ibn Nasr Somoniylar sulolasidan — ya'ni men Ismoil Somoniy asos solgan davlatning tarixchisi bo'lganman.

Bag'ishlov kitobning mazmuniga ham ta'sir qiladi: hukmdorga taqdim etilgan asarda sulola tarixi alohida e'tibor bilan yoritiladi. Buni bugungi o'quvchi hisobga olishi kerak.$$
 WHERE topic_uz = $$Kitobim kimga bag'ishlangan$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Odatdagi solnoma hukmdorlar va janglarni yozadi. Mening kitobim boshqacha tuzilgan: unda shahar va uning atrofi butun bir tirik organizm sifatida tasvirlanadi.

Anhorlar, mahallalar, bozorlar, qishloqlar, qozilar, soliqlar va odamlarning kundalik hayoti — bularning barchasi asarda o'z o'rniga ega.

Shuning uchun bu kitobni ko'pincha shaharning tarjimai holi deb atashadi. Undan tarixchi ham, arxeolog ham, tilshunos ham foydalanadi.$$
 WHERE topic_uz = $$Kitobimning mazmuni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Muqanna qo'zg'oloni haqidagi eng batafsil bayon aynan mening kitobimda; bugungi tarixchilar bu voqeani asosan shu bobga tayanib o'rganadi.

Menda alohida sabab bor edi: jang mening qishlog'im Narshax yonida bo'lgan. Voqea mendan bir asr avval yuz bergan, ammo uning xotirasi qishloqda saqlangan.

Shuni ham aytish kerak: men xalifalik tarafida turgan muallifman va qo'zg'olonchilarga xayrixoh emasman. Shuning uchun mening bahomni emas, keltirgan dalillarimni olish to'g'ri bo'ladi.$$
 WHERE topic_uz = $$Muqanna haqida yozganlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Tarjima kitobim yozilganidan qariyb ikki asr keyin qilingan.

Al-Quboviy uni nafaqat tarjima qilgan, balki qisqartirgan ham: ba'zi boblar tashlab ketilgan, ba'zi joylarga esa o'z davrining ma'lumotlari qo'shilgan.

Shuning uchun bugun o'qilayotgan matn mening yozganimning aynan o'zi emas. Matnshunoslarning ishi ham shundan iborat: qaysi qism asl, qaysi biri keyin qo'shilganini ajratish.$$
 WHERE topic_uz = $$Fors tiliga tarjima$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Ikkinchi qisqartirish birinchisidan ellik yilcha keyin qilingan — ya'ni matn kamida ikki marta qayta ishlangan.

Har bir qayta ishlash matnga o'z qatlamini qo'shadi: bir narsa olib tashlanadi, boshqasi qo'shiladi, uchinchisi boshqacha aytiladi.

Ammo aynan shu qayta ko'chirishlar tufayli kitob saqlanib qolgan. Ko'chirilmagan asar yo'qoladi — bu qo'lyozma davrining asosiy qonuni.$$
 WHERE topic_uz = $$Keyingi tahrir$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$To'rt xil nom bir narsani ko'rsatadi: qo'lyozma davrida kitobning qat'iy sarlavhasi bo'lmagan. Har bir ko'chiruvchi unga o'zicha nom qo'yishi mumkin edi.

Nomlarning ma'nosi ham har xil: «Tarixi Buxoro» — Buxoro tarixi, «Axbori Buxoro» — Buxoro haqidagi xabarlar, «Tahqiq ul-viloyat» — viloyatni tekshirish.

Bugungi fanda bitta nom qat'iy o'rnashgan. Ilmda shunday kelishuv zarur: bir asar bir nom bilan atalmasa, unga havola berish qiyinlashadi.$$
 WHERE topic_uz = $$Kitobimning nomlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Nashrlar ro'yxati kitobning yo'lini ko'rsatadi: Parij, Toshkent, Kembrij va yana Toshkent — to'rt shahar, to'rt til.

Har bir nashr o'z o'quvchisini ochgan: fransuz va ingliz tilidagi nashrlar asarni Yevropa sharqshunosligiga, rus tilidagisi Rossiya olimlariga, o'zbekchasi esa o'z yurtimdagi o'quvchiga yetkazgan.

Bir kitobning ming yil o'tib to'rt tilda chop etilishi uning qiymatini ko'rsatadi. Bunday asarlar juda kam.$$
 WHERE topic_uz = $$Jahon e'tirofi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Somoniylar davlatiga Ismoil Somoniy asos solgan va u mendan ellik yilcha avval vafot etgan. Ya'ni men bu davlatning gullagan davrida yashaganman.

Buxoro o'sha paytda poytaxt bo'lib, uning saroy kutubxonasi butun Sharqda dong taratgan. Bunday muhitda tarixchi bo'lish uchun sharoit bor edi: kitob ham, hujjat ham topilardi.

Mendan keyin ham bu muhit davom etgan: shu shaharda, shu kutubxonada yosh Ibn Sino bilim olgan.$$
 WHERE topic_uz = $$Yashagan davrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Arab tili o'sha davrda ilm-fan tili edi: unda yozilgan asar butun musulmon olamida o'qilardi.

Ammo bu tanlovning teskari tomoni ham bor edi. Ikki asr o'tgach mahalliy o'quvchi uchun kitobim tushunarsiz bo'lib qolgan va uni fors tiliga o'girishga to'g'ri kelgan.

Aynan shu tarjima asarimni saqlab qolgan. Arabcha asl nusxa esa yo'qolgan — ya'ni kitob o'zi yozilgan tilda emas, tarjimada omon qolgan.$$
 WHERE topic_uz = $$Nega arab tilida yozganman$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Bu holat kam uchraydigan istisno emas: o'rta asr asarlarining ko'pi asl qo'lyozmada emas, keyingi nusxalar orqali bizgacha yetib kelgan.

Sabab oddiy: qog'oz va siyoh uzoq turmaydi, yong'in, suv hamda urush esa kutubxonalarni yo'q qiladi. Faqat ko'p ko'chirilgan asar omon qoladi.

Shuning uchun matnshunos bir necha nusxani solishtiradi va ular orasidagi farqlarni qayd etadi. Shu yo'l bilan asl matnga eng yaqin variant tiklanadi.$$
 WHERE topic_uz = $$Asl nusxaning taqdiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Shaharning bir necha nomi bo'lishi uning qadimiyligini ko'rsatadi: har bir yangi davr va har bir yangi til shaharga o'z nomini qoldiradi.

Numijkat — o'sha nomlardan biri. Bunday nomlar tilshunoslar uchun qimmatli: ular orqali qaysi til qachon bu yerda gapirilganini aniqlash mumkin.

Kitobimda men bunday tafsilotlarni ataylab yozganman. Tarixchining vazifasi faqat voqealarni emas, nomlarni ham saqlab qolish.$$
 WHERE topic_uz = $$Buxoroning qadimiy nomlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Men bu rivoyatni fakt sifatida emas, aynan rivoyat sifatida keltirganman — matnda «aytishlaricha» degan ogohlantirish bor.

Siyovush qadimgi doston qahramoni; uning haqiqiy shaxs bo'lganini isbotlaydigan dalil yo'q. Ammo rivoyatning o'zi ham ma'lumot beradi: u odamlar o'z shahrining kelib chiqishini qanday tasavvur qilganini ko'rsatadi.

Tarixchi uchun ikkalasi ham kerak: dalil o'tmishda nima bo'lganini, rivoyat esa odamlar nimaga ishonganini aytadi.$$
 WHERE topic_uz = $$Siyovush haqidagi rivoyat$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Poykand o'sha davrning yirik savdo shaharlaridan biri bo'lgan; keyinchalik u kichrayib, xarobaga aylangan.

Mening tavsiflarim bugungi arxeologlar uchun yo'l ko'rsatkichi: kitobda qaysi qishloq qayerda, qaysi anhor bo'yida joylashgani yozilgan. Shu ma'lumot yordamida yer ostidagi qadimgi joylar topiladi.

Tarixchi yozayotganda buni bilmaydi. U shunchaki ko'rgan narsasini qayd etadi — ming yildan keyin esa bu qayd yagona ko'rsatma bo'lib qoladi.$$
 WHERE topic_uz = $$Atrofdagi qishloqlar tavsifi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');

UPDATE fact_cards SET detail_uz = $$Bu nashr bilan aylana yopilgan: kitob arab tilida yozilgan, fors tiliga o'girilgan va nihoyat men yozgan shaharning bugungi tilida chop etilgan.

Yo'l ming yildan ortiq davom etgan va u uch tildan hamda kamida ikki marta qayta ishlanishdan o'tgan. Har bir bosqichda kitob yo'qolib ketishi mumkin edi.

Endi uni sen ham o'z ona tilingda o'qiy olasan — ming yil oldin Buxoro qanday shahar bo'lganini o'sha yerda yashagan odamning so'zlari bilan bilib olasan.$$
 WHERE topic_uz = $$O'zbek tilidagi nashri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'narshaxiy');
