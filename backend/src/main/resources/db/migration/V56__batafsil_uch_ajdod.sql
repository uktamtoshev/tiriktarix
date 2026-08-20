-- «Batafsil» matnlari — Alisher Navoiy, Amir Temur va Mirzo Ulug'bek kartochkalari.
--
-- Bu uch ajdod sahifasiga bolalar eng ko'p kiradi, shuning uchun batafsil
-- matnlar ulardan boshlanadi. Qoida o'zgarmaydi: faqat tekshirilgan,
-- ensiklopedik ma'lumot; rivoyat bo'lsa matnda shunday deyiladi.
--
-- Kartochka (mavzu + qahramon) juftligi bo'yicha topiladi.

-- ============================ ALISHER NAVOIY ============================

UPDATE fact_cards SET detail_uz = $$Otam G'iyosiddin Kichkina temuriylar saroyida xizmat qilgan amaldor edi, uyimizga shoir va olimlar tez-tez kelib turardi. Shu muhitda men she'riyatni yoshligimdan sevib qoldim.

Hirot o'sha davrda Sharqning eng gavjum madaniy shaharlaridan biri edi: bu yerda kutubxonalar, madrasalar, xattotlik ustaxonalari ishlardi. Men to'rt yoshimdan she'r yodlay boshlaganman.$$
 WHERE topic_uz = $$Tug'ilishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$O'sha davrda ilm va she'riyatda fors tili ustun edi; ko'pchilik turkiy tilni yuksak adabiyot uchun yetarli emas deb hisoblardi.

«Muhokamat ul-lug'atayn» («Ikki til muhokamasi») asarimda men buni misollar bilan rad etdim: turkiy tilda bir harakatning o'nlab nozik ma'nosini ifodalovchi alohida so'zlar borligini, fors tilida esa ularning aksariyati bitta so'z bilan beriladigan bo'lsa-da, ko'rsatib berdim. Bu asar ona tilimizga bo'lgan munosabatni butunlay o'zgartirdi va meni «turkiy tilning himoyachisi» deb atashlariga sabab bo'ldi.$$
 WHERE topic_uz = $$Ona tili himoyasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$«Xamsa» — «beshlik» degani. Undan avval bu an'anada Nizomiy Ganjaviy va Xusrav Dehlaviy fors tilida besh doston yaratgan edi. Men esa uni birinchi bo'lib turkiy tilda yozdim va shu bilan ona tilimizning imkoniyatini isbotladim.

Beshlikning umumiy hajmi ellik ming misradan ortiq. Har doston o'z mavzusiga ega: «Hayrat ul-abror» — hikmat va axloq haqida, «Farhod va Shirin» — mehnat va sadoqat, «Layli va Majnun» — sof muhabbat, «Sab'ai sayyor» — yetti sayyora nomi bilan bog'liq yetti hikoya, «Saddi Iskandariy» esa adolatli hukmdor haqidagi doston.$$
 WHERE topic_uz = $$«Xamsa»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$Husayn Boyqaro taxtga o'tirgach, meni saroyga chaqirdi: avval muhrdor, so'ng vazir etib tayinladi. Keyinroq Astrobod viloyatiga hokim bo'lib ham xizmat qildim.

Lavozimni men boylik yig'ish uchun emas, odamlarga foyda keltirish uchun ishlatdim: nohaq soliqlarni bekor qildirdim, arz bilan kelganlarni o'zim tinglardim, iste'dodli yoshlarga homiylik qildim. Saroy xizmati bilan ijodni birga olib borish oson emasdi — ko'p asarlarimni tunda yozganman.$$
 WHERE topic_uz = $$Davlat xizmati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$Qurdirgan inshootlarim orasida Hirotdagi «Ixlosiya» madrasasi, «Shifoiya» shifoxonasi va «Xalosiya» xonaqohi bor. Shifoxonada bemorlar bepul davolangan, madrasada esa talabalar ta'minot bilan o'qigan.

Bulardan tashqari ko'priklar, hovuzlar, karvonsaroylar va suv inshootlari qurdirdim, eskirgan binolarni ta'mirlattirdim. Bu ishlarga o'z daromadimni sarfladim — mol-mulk to'plashni maqsad qilmadim. Shoir va hunarmandlarga beriladigan nafaqalarni ham o'z hisobimdan to'lardim.$$
 WHERE topic_uz = $$Xayriya ishlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$«Xazoyin ul-maoniy» — «ma'nolar xazinalari» degani. Men umr davomida yozgan she'rlarimni yoshim bosqichlariga qarab to'rt devonga taqsimladim.

Ular shunday nomlanadi: «G'aroyib us-sig'ar» (bolalik g'aroyibotlari), «Navodir ush-shabob» (yigitlik nodirliklari), «Badoye' ul-vasat» (o'rta yosh badialari) va «Favoyid ul-kibar» (keksalik foydalari). Bunday tartib shoir qalbining yillar davomida qanday o'zgarganini ko'rsatadi — bu turkiy she'riyatda yangilik edi.$$
 WHERE topic_uz = $$Devonlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$«Navo» so'zi kuy, ohang, nola degan ma'nolarni bildiradi — she'r ham musiqaga o'xshab ohangga ega bo'lgani uchun bu taxallusni tanlaganman.

Forsiy she'rlarimda esa «Foniy» taxallusini qo'llaganman; «foniy» — o'tkinchi, ya'ni dunyoning o'tkinchiligini eslatuvchi so'z. Bir shoirning ikki tilda ikki taxallus bilan ijod qilishi o'sha davr uchun odatiy hol edi, chunki ziyolilar odatda ikki tilni ham mukammal bilardi.$$
 WHERE topic_uz = $$Taxallusi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$«Lison ut-tayr» — «Qushlar tili» degani. Dostonda qushlar o'zlariga shoh izlab, afsonaviy Semurg'ni topish uchun uzoq va mashaqqatli safarga chiqadi.

Yo'lda ko'p qush qaytib ketadi, oxirida esa faqat o'ttiztasi manzilga yetib boradi va u yerda o'zlarini ko'radi — chunki forschada «si murg'» «o'ttiz qush» degani. Bu asar men bolaligimda sevib o'qigan Farididdin Attorning «Mantiq ut-tayr» dostoni ta'sirida yozilgan va menga eng aziz asarlarimdan biri bo'lib qolgan.$$
 WHERE topic_uz = $$«Lison ut-tayr»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$Umrimning oxirgi yillarida ham ijoddan to'xtamadim: «Mahbub ul-qulub» va «Lison ut-tayr» aynan shu yillarda yozilgan.

Meni Hirotda dafn etishdi, qabrim ustiga maqbara qurildi. Zamondoshlarim yozishicha, dafn kunida shahar hayoti to'xtagan. Asarlarim esa qo'lyozma holida ko'chirilib, Movarounnahr, Xuroson, Turkiya va Hindistongacha tarqalgan — shu bois ular bugungacha yetib kelgan.$$
 WHERE topic_uz = $$Vafoti$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$Biz Husayn bilan bir maktabda o'qiganmiz va bolalikdanoq do'st bo'lganmiz. Keyin taqdir bizni bir muddat ayirdi: u taxt uchun kurashda yurdi, men esa turli shaharlarda ilm oldim.

1469-yilda u Xuroson taxtiga o'tirgach, meni Hirotga chaqirtirdi. Shundan keyin uzoq yillar birga ishladik: u hukmdor, men vazir edim. Husayn Boyqaro o'zi ham «Husayniy» taxallusi bilan she'r yozgan. Bizning do'stligimiz tufayli Hirot shoir va olimlar to'planadigan shaharga aylandi, biroq har doim ham fikrimiz bir joydan chiqavermagan — men adolat masalasida unga ochiq e'tiroz bildirganman.$$
 WHERE topic_uz = $$Husayn Boyqaro bilan do'stligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$Tahsilni Hirotda boshlaganman, so'ng Mashhad va Samarqandda davom ettirganman. Samarqandda mashhur olim Fazlulloh Abullaysdan dars olganman.

O'sha davrda talaba bilim izlab shahardan shaharga yurar, har ustozdan alohida fan o'rganardi. Men adabiyot, tarix, mantiq va aruz (she'r vazni) ilmini o'rganganman, arab va fors tillarini mukammal egallaganman. Bu yillar menga keyingi butun ijodim uchun poydevor bo'ldi.$$
 WHERE topic_uz = $$Tahsil yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$Abdurahmon Jomiy (1414–1492) — o'z davrining eng nufuzli fors shoiri va mutafakkiri edi. Men uni ustoz deb bilganman, u esa mening ijodimni yuksak baholagan.

Biz bir-birimizga asarlarimizni ko'rsatib, maslahatlashardik. Jomiy vafotidan keyin men uning xotirasiga «Xamsat ul-mutahayyirin» («Besh hayrat») asarini yozdim — unda ustozim bilan bo'lgan suhbatlarimiz va uning hayoti haqida hikoya qilinadi. Bu ikki xalq adabiyoti o'rtasidagi do'stlikning ham timsolidir.$$
 WHERE topic_uz = $$Ustozim Jomiy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$Tazkira — shoirlar haqidagi ma'lumotlar to'plami, ya'ni o'sha davrning adabiyot qomusi.

«Majolis un-nafois» («Nafis majlislar») turkiy tilda yozilgan birinchi tazkiradir. Unda men o'zim ko'rgan, eshitgan yoki asarlarini o'qigan 450 dan ortiq shoir haqida qisqacha ma'lumot berdim va she'rlaridan namunalar keltirdim. Bu kitob tufayli bugun XV asr adabiy muhiti haqida ko'p narsa ma'lum — ba'zi shoirlarning nomi faqat shu asar orqali saqlanib qolgan.$$
 WHERE topic_uz = $$«Majolis un-nafois» tazkiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$«Mahbub ul-qulub» — «Qalblar mahbubi» degani. Bu she'r emas, nasrda yozilgan asar.

Uch qismdan iborat: birinchisida turli tabaqa va kasb egalari — hukmdorlar, savdogarlar, dehqonlar, hunarmandlar, olimlar — xolis tasvirlanadi; ikkinchisida yaxshi va yomon fe'l-atvor qiyoslanadi; uchinchisi esa hikmatli so'zlardan iborat. Asar umrim oxirida yozilgani uchun uni butun hayotim davomida to'plangan tajribaning xulosasi deyish mumkin.$$
 WHERE topic_uz = $$«Mahbub ul-qulub»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$Farididdin Attor — XII–XIII asrlarda yashagan fors shoiri. Uning «Mantiq ut-tayr» dostoni haqiqat izlab yo'lga chiqqan qushlar haqida.

Men bu kitobni bolaligimda shu qadar sevib o'qiganmanki, uni yod olganman. Yaqinlarim hatto qattiq berilib ketishimdan xavotirlanishgan. Oradan o'nlab yillar o'tib, umrim oxirida shu doston ta'sirida o'zimning «Lison ut-tayr» asarimni yozdim — bolalikda o'qilgan kitob butun umrga yetadigan iz qoldirishi mumkinligiga bu eng yaxshi misol.$$
 WHERE topic_uz = $$Bolalikdagi sevimli kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

UPDATE fact_cards SET detail_uz = $$O'zbekistonda bir viloyat va uning markazi bo'lgan shahar mening nomim bilan ataladi. Toshkentdagi Davlat akademik katta opera va balet teatri, O'zbekiston Milliy kutubxonasi va metro bekati ham shu nomni yuritadi.

Asarlarim maktab va oliygoh dasturlariga kiritilgan, ular o'nlab tillarga tarjima qilingan. 1991-yilda tavalludimning 550 yilligi YUNESKO ishtirokida xalqaro miqyosda nishonlangan. Toshkent va Navoiy shaharlarida menga haykal o'rnatilgan.$$
 WHERE topic_uz = $$Nomim yashaydi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'alisher-navoiy');

-- ============================== AMIR TEMUR ==============================

UPDATE fact_cards SET detail_uz = $$Otam Amir Tarag'ay barlos urug'idan bo'lgan zodagon edi. Xo'ja Ilg'or qishlog'i hozirgi Shahrisabz yaqinida joylashgan.

Men tug'ilgan davrda Movarounnahr tarqoq bekliklarga bo'linib ketgan, o'zaro urushlar to'xtamas edi. Yoshligimdan chavandozlik va qurol ishlatishni o'rganganman, shu bilan birga savodli bo'lganman: tarix kitoblari o'qib berilishini yaxshi ko'rardim. Bu bolalik yillari menda tarqoqlikka barham berish istagini uyg'otgan.$$
 WHERE topic_uz = $$Tug'ilishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$1370-yilda Balxda o'tkazilgan qurultoyda oliy hokimiyat menga topshirildi. Shundan boshlab tarqoq bekliklar birlashtirildi.

Poytaxt etib Samarqandni tanladim va uni butun dunyo havas qiladigan shaharga aylantirishni maqsad qildim: zabt etilgan o'lkalardan eng mohir me'mor, naqqosh va hunarmandlarni shu yerga taklif etdim. Davlat boshqaruvini tartibga soldim — har viloyatga hokim tayinlandi, soliq miqdori aniq belgilandi, savdo yo'llari qo'riqlandi.$$
 WHERE topic_uz = $$Davlat asoslashi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$«Sohibqiron» so'zi «qiron sohibi» degani: qiron — munajjimlar tilida ikki yorug' sayyoraning osmonda yaqinlashuvi. Bunday paytda tug'ilgan kishini baxtli yulduz egasi deb hisoblashgan.

O'sha davrda munajjimlik ilmi davlat ishlarida ham e'tiborda bo'lgan: yurish boshlash yoki bino qurish uchun qulay kun tanlanardi. Bu unvon tarixiy manbalarda va keyingi asrlar adabiyotida mening nomim bilan birga tilga olinadi; bugungi O'zbekistonda ham «Sohibqiron» so'zi men haqimda gapirilganda ishlatiladi.$$
 WHERE topic_uz = $$Sohibqiron unvoni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Yurishlarim ko'p bo'lgan. Oltin O'rda hukmdori To'xtamishxonga qarshi ikki marta — 1391-yilda Qunduzcha va 1395-yilda Terek daryosi bo'yida jang qildim; bu yurishlar Movarounnahrni shimoldan keladigan bosqinlardan himoya qildi.

1398–1399-yillarda Hindistonga, 1402-yilda esa Anqara yaqinida usmonli sulton Boyazid Yildirimga qarshi yurish qildim. Anqara jangi o'sha davr Yevropasida katta aks-sado bergan. Har bir yurish o'z sababiga ega edi, biroq urush hamisha odamlar uchun og'ir sinov bo'lgan — buni tarix darsi sifatida eslash kerak.$$
 WHERE topic_uz = $$Harbiy yurishlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$«Temur tuzuklari» — davlatni boshqarish tajribamni yozib qoldirgan asar. Unda hokimiyat qanday tuzilishi, maslahat kengashi qanday ishlashi, qo'shin qanday tashkil etilishi va soliq qanday yig'ilishi bayon etilgan.

Asarda hukmdor uchun muhim qoidalar ham bor: arz bilan kelgan odamni tinglash, va'daga vafo qilish, olim va hunarmandni qadrlash. Kitob keyinchalik turli tillarga tarjima qilinib, tarixchilar uchun muhim manbaga aylangan. «Kuch — adolatda» shiori esa uning bosh g'oyasini ifodalaydi.$$
 WHERE topic_uz = $$«Temur tuzuklari»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Bunyodkorlik men uchun harbiy yurishlardan kam ahamiyatli emasdi. Samarqand va Shahrisabzda qurilgan binolar bugungacha saqlanib qolgan.

Bibixonim jome masjidi o'z davrida Sharqdagi eng ulkan masjidlardan biri bo'lgan. Go'ri Amir maqbarasining ko'k gumbazi bugun Samarqand ramzi. Shahrisabzdagi Oqsaroy peshtog'iga «Qudratimizni ko'rmoq istagan kishi, binolarimizga boqsin» degan yozuv bitilgan — undan bugun ham baland ustunlar saqlanib turibdi. Bu binolar keyinchalik butun mintaqa me'morligiga namuna bo'lgan.$$
 WHERE topic_uz = $$Bunyodkorlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$To'rt o'g'lim bo'lgan: Jahongir, Umarshayx, Mironshoh va Shohrux. Jahongir va Umarshayx mendan oldin vafot etgan.

Shohrux keyinchalik Hirotda hukmronlik qilib, u yerni ilm va san'at markaziga aylantirdi. Uning o'g'li — mening nabiram Mirzo Ulug'bek Samarqandda rasadxona qurdirib, jahon fanida nom qoldirdi. Yana bir nabiram Muhammad Sulton yoshligida vafot etgan, uning uchun qurilgan maqbara keyinchalik Go'ri Amir majmuasiga aylandi. Avlodlarim orasidan Bobur chiqib, Hindistonda yangi saltanatga asos solgan.$$
 WHERE topic_uz = $$Oilasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Saroyimga uzoq mamlakatlardan elchilar kelib turardi. Ular orasida Ispaniya (Kastiliya) qiroli Genrix III yuborgan Rui Gonsales de Klavixo ham bor edi.

Klavixo 1404-yilda Samarqandga yetib kelgan va safari haqida batafsil kundalik yozib qoldirgan. Unda shahar bozorlari, bog'lari, qurilishlar va saroy marosimlari tasvirlangan. Bu kundalik bugun tarixchilar uchun eng qimmatli manbalardan biri — chunki uni o'z ko'zi bilan ko'rgan chet ellik guvoh yozgan. Xitoy, Misr va boshqa davlatlar bilan ham elchilik yozishmalari bo'lgan.$$
 WHERE topic_uz = $$Elchilik aloqalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Savdo davlatning boyligi va shaharlarning gullashi manbai edi, shuning uchun karvon yo'llarining xavfsizligiga alohida e'tibor berdim.

Yo'llar bo'ylab karvonsaroylar qurildi, qo'riqchilar qo'yildi, ko'prik va quduqlar tiklandi. Karvon talangan bo'lsa, zarar viloyat hisobidan qoplanishi qoida qilingan — bu savdogarlarga ishonch bergan. Natijada Samarqand bozorlariga Xitoydan ipak, Hindistondan ziravor, Yevropadan mato keltiriladigan bo'ldi; Klavixo bozorlardagi mollarning ko'pligiga hayron qolganini yozgan.$$
 WHERE topic_uz = $$Ipak yo'li savdosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$1404-yil oxirida Xitoy tomon yurish boshlangan edi. Qish qattiq kelgan, qo'shin Sirdaryo bo'yidagi O'tror shahrida to'xtagan. Men shu yerda kasallanib, 1405-yil 18-fevralda vafot etdim.

Jasadim Samarqandga keltirilib, Go'ri Amir maqbarasiga qo'yildi. Vafotimdan keyin yurish to'xtatildi, davlat esa o'g'illarim va nabiralarim o'rtasida taqsimlandi. Shunga qaramay temuriylar davri yana bir asr davom etib, Ulug'bek va Navoiy kabi buyuk siymolarni yetishtirdi.$$
 WHERE topic_uz = $$Vafoti$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Ulug'bek 1394-yilda harbiy yurish paytida tug'ilgan va bolaligining katta qismini mening saroyimda o'tkazgan. Uni suyukli xotinim Saroy Mulk xonim tarbiyalagan.

Men uni yurishlarga ham birga olib yurardim — shu safarlarda u ko'p shahar va yurtlarni ko'rgan. Bir rivoyatga ko'ra, Marog'a rasadxonasi xarobalarini ko'rgani unda yulduzlar ilmiga qiziqish uyg'otgan. Keyinchalik u Samarqandda o'z rasadxonasini qurdirib, jahon faniga nom qoldirdi. Nabiramning shuhrati qilich bilan emas, ilm bilan kelgani men uchun alohida faxrdir.$$
 WHERE topic_uz = $$Nabiram Ulug'bek$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Oqsaroy qurilishi uzoq davom etgan — u yigirma yildan ortiq vaqt ichida barpo etilgan. Saroy Shahrisabzda, ya'ni men tug'ilgan yurtda qurilgan.

Uning peshtog'i shu qadar baland bo'lganki, bugun saqlanib qolgan ustun qoldiqlarining balandligi ham qariyb 38 metrni tashkil etadi. Devorlari ko'k, feruza va oq koshinlar bilan bezatilgan, ichkarida hovuz va bog' bo'lgan. Klavixo o'z kundaligida saroyning hashamatini alohida ta'kidlab yozgan. Bugun Oqsaroy qoldiqlari Shahrisabzning tarixiy markazida turadi va bu markaz YUNESKO ro'yxatiga kiritilgan.$$
 WHERE topic_uz = $$Oqsaroy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Masjid qurilishida turli o'lkalardan kelgan ustalar ishlagan, og'ir toshlarni tashish uchun fillardan foydalanilgan degan ma'lumotlar bor.

Bino o'z davri uchun juda ulkan bo'lgani sababli, yillar o'tib uning ba'zi qismlari nurab tushgan. Masjid nomi xalq orasida «Bibixonim» — ya'ni Saroy Mulk xonim nomi bilan bog'liq. Hovlisidagi ulkan tosh lavh (Qur'on qo'yiladigan poya) bugun ham saqlanadi. XX asrda va mustaqillik yillarida masjid ta'mirlanib, Samarqandning eng mashhur ziyoratgohlaridan biriga aylangan.$$
 WHERE topic_uz = $$Bibixonim masjidi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Samarqand atrofidagi bog'lar shahar hayotining bir qismi edi: ularda qabul marosimlari o'tkazilar, elchilar kutib olinardi.

Bog'i Dilkusho, Bog'i Behisht, Bog'i Chinor va Bog'i Shamol nomlari manbalarda saqlanib qolgan. Bog'larda ariqlar qazilib, mevali daraxtlar va gullar ekilgan, o'rtasida ko'shk (yozgi saroy) qurilgan. Klavixo o'z kundaligida bu bog'larning kengligi va soyaligini hayrat bilan tasvirlagan. Bog'dorchilik an'anasi keyinchalik temuriylar orqali Hindistonga ham o'tgan.$$
 WHERE topic_uz = $$Samarqand atrofidagi bog'larim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Maqbara dastlab yoshligida vafot etgan nabiram Muhammad Sulton xotirasiga qurilgan edi; keyinchalik u oilaviy maqbaraga aylandi.

Uning qovurg'ali ko'k gumbazi Samarqand me'morligining eng taniqli belgilaridan biri. Ichkarisi zarhal naqshlar bilan bezatilgan. Maqbarada mendan tashqari o'g'illarim, nabiram Ulug'bek va ustozim Mir Sayyid Baraka dafn etilgan. 1941-yilda olim Mixail Gerasimov qabrni ilmiy o'rganib, bosh suyagi asosida qiyofani tikladi — bugun kitoblarda uchraydigan tasvirlar aynan shu ishga tayanadi.$$
 WHERE topic_uz = $$Go'ri Amir maqbarasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$Bu hikmat davlat boshqaruvidagi asosiy qoidamni ifodalaydi: hokimiyatning haqiqiy kuchi qo'shin sonida emas, adolatda.

«Temur tuzuklari»da yozilishicha, hukmdor kuchsizni kuchlidan himoya qilishi, arz bilan kelganni tinglashi va bergan so'zida turishi kerak. Shiorning asli forscha «Rosti — rusti» tarzida keltiriladi, ya'ni «To'g'rilikda — najot». Bugun bu so'zlar O'zbekistonda ko'p tilga olinadi va tarixiy yodgorliklarda ham uchraydi.$$
 WHERE topic_uz = $$Shiorim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

UPDATE fact_cards SET detail_uz = $$1996-yil O'zbekistonda «Amir Temur yili» deb e'lon qilinib, tavalludimning 660 yilligi xalqaro miqyosda nishonlandi; tadbirlarda YUNESKO ham ishtirok etdi.

Shu munosabat bilan Toshkentda Temuriylar tarixi davlat muzeyi ochildi — unda o'sha davr qurollari, tangalari, qo'lyozmalari va me'morlik namunalari saqlanadi. Toshkent markazidagi maydon va xiyobon mening nomim bilan ataladi, u yerda va Shahrisabzda haykallar o'rnatilgan. «Amir Temur ordeni» esa davlatning yuksak mukofotlaridan biridir.$$
 WHERE topic_uz = $$Xotiram O'zbekistonda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'amir-temur');

-- ============================= MIRZO ULUG'BEK =============================

UPDATE fact_cards SET detail_uz = $$Men bobom Amir Temurning harbiy yurishi paytida, hozirgi Eron hududidagi Sultoniya shahrida tug'ilganman. Asl ismim Muhammad Tarag'ay bo'lib, «Tarag'ay» bobomning otasi nomi edi.

«Ulug'bek» — «buyuk bek» degani, bu meni bolaligimdan shunday atashgani uchun nom bo'lib qolgan. Otam Shohrux Hirotda hukmronlik qilgan, men esa bolaligimni bobom saroyida o'tkazganman.$$
 WHERE topic_uz = $$Tug'ilishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$1409-yilda otam Shohrux meni Samarqandga hokim etib tayinladi — o'shanda men o'n besh yoshda edim. Movarounnahrni qariyb qirq yil boshqardim.

Davlat ishlaridan ko'ra ilm-fan menga yaqinroq edi: rasadxona qurdirdim, madrasalar ochdim, olimlarni atrofimga to'pladim. Samarqand shu yillarda dunyo astronomiyasining markaziga aylandi. Otam vafotidan so'ng, 1447-yilda men oliy hukmdor bo'ldim, ammo bu davr uzoq davom etmadi.$$
 WHERE topic_uz = $$Hukmronligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Rasadxona uch qavatli aylana bino bo'lgan. Uning bosh asbobi — yer ostiga o'rnatilgan ulkan yoysimon sekstant; uning radiusi qariyb 40 metrni tashkil etgan.

Asbob qancha katta bo'lsa, burchaklarni shuncha aniq o'lchash mumkin edi — teleskop hali ixtiro qilinmagan davrda aniqlikka faqat shunday erishilardi. Sekstantning yer ostidagi qismi zilzila va shamoldan himoyalangan. Bu yerda o'ttiz yilga yaqin muntazam kuzatuv olib borildi: yulduzlar, sayyoralar va Quyoshning harakati qayd etib borildi.$$
 WHERE topic_uz = $$Rasadxona$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$«Zij» — yulduzlar va sayyoralar harakati jadvali. «Ko'ragoniy» esa temuriylar sulolasi unvoniga ishora.

Jadvalga 1018 yulduzning o'rni kiritilgan; ular teleskopsiz erishilgan eng aniq natijalar sanaladi. Asarda astronomiya asoslari, taqvim tuzish va matematik hisoblar ham bayon etilgan. Kitob qo'lyozmalari Sharq mamlakatlariga tarqalgan, keyinchalik lotin tiliga tarjima qilinib, XVII asrda Angliyada — Oksfordda nashr etilgan. Shu tariqa mening ishim Yevropa astronomlariga ham xizmat qilgan.$$
 WHERE topic_uz = $$«Ziji jadidi Ko'ragoniy»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Yulduz yili — Yerning Quyosh atrofida bir marta to'liq aylanib chiqishi uchun ketadigan vaqt. Uni aniq bilish taqvim tuzish uchun zarur.

Men bu vaqtni 365 kun 6 soat 10 daqiqa 8 soniya deb hisoblaganman. Hozirgi zamon asboblari bilan o'lchangan qiymatdan farqi bir daqiqadan kamroq. Bunga uzoq yillik kuzatuvlar va murakkab hisob-kitoblar orqali erishilgan — rasadxonamdagi olimlar bir xil o'lchovni ko'p marta takrorlab, o'rtacha natijani chiqarishgan.$$
 WHERE topic_uz = $$Yil hisobi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Madrasalarim faqat diniy ta'lim maskani emasdi: u yerda matematika, astronomiya va geometriya ham o'qitilgan. Ba'zi ma'lumotlarga ko'ra, men o'zim ham dars berganman.

Samarqand Registonidagi madrasam keyinchalik butun maydon ansambliga asos bo'ldi — unga qarama-qarshi va yonma-yon qurilgan Sherdor hamda Tillakori madrasalari ikki asrdan keyin qad rostlagan. Bugun Registon O'zbekistonning eng mashhur me'moriy majmualaridan biri va YUNESKO ro'yxatidagi Samarqand markazining bir qismidir.$$
 WHERE topic_uz = $$Madrasalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Rasadxonamda bir necha avlod olimlari birga ishlagan. Ustozim Qozizoda Rumiy matematika va astronomiyada tayanchim edi.

G'iyosiddin Jamshid Koshiy o'nlik kasrlar bilan ishlash usulini rivojlantirgan va pi sonini o'sha davr uchun misli ko'rilmagan aniqlikda hisoblagan. Ali Qushchi esa eng yosh va iqtidorli shogirdim bo'lgan. Biz kuzatuv natijalarini birga muhokama qilar, hisoblarni bir necha bor tekshirardik. Bu jamoa keyinchalik «Ulug'bek maktabi» deb nom oldi.$$
 WHERE topic_uz = $$Olimlar davrasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Hayotimning oxirgi yillari og'ir kechdi: taxt uchun kurash avj oldi va 1449-yilda men hayotdan ko'z yumdim.

Meni Samarqanddagi Go'ri Amir maqbarasiga, bobom Amir Temur yoniga dafn etishdi. Vafotimdan keyin rasadxona qarovsiz qolib, asta-sekin vayron bo'ldi, kitoblarim esa shogirdlarim tomonidan saqlab qolindi: Ali Qushchi «Zij»ning nusxasini olib, uzoq yurtlarga — Tabriz va Istanbulga borgan va u yerda ilmimizni tarqatgan. Shu tufayli mening ishim yo'qolib ketmadi.$$
 WHERE topic_uz = $$Vafoti$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Bobom Amir Temur meni yurishlarga ham birga olib yurgan, shuning uchun bolaligimda ko'p shahar va yurtlarni ko'rganman.

Meni bobomning suyukli xotini Saroy Mulk xonim (xalq orasida Bibixonim nomi bilan mashhur) tarbiyalagan. U bilimli ayol bo'lib, menga kitob o'qib berardi. Saroyda olimlar va shoirlar bilan suhbatlar bo'lib turardi — ilmga bo'lgan qiziqishim aynan shu muhitda uyg'ongan.$$
 WHERE topic_uz = $$Bobom bilan bolaligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Qozizoda Rumiy — Anadolidan kelib Samarqandda ilm bilan shug'ullangan mashhur matematik va astronom.

U menga geometriya, trigonometriya va yulduzlar ilmini o'rgatgan. Keyinchalik u mening rasadxonamda ishlab, madrasada bosh mudarris bo'lgan. Ustoz bilan shogird orasidagi bunday hamkorlik butun umr davom etgan: men hukmdor bo'lsam ham, ilmiy masalada uning fikrini hurmat qilardim. U Samarqandda vafot etib, shu yerda dafn etilgan.$$
 WHERE topic_uz = $$Ustozim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Ali Qushchining otasi bobom saroyida qushlarga qaraydigan xizmatchi bo'lgan — «Qushchi» laqabi shundan.

U yoshligidan matematika va astronomiyaga qiziqib, rasadxonamdagi eng yaqin shogirdim bo'lib yetishdi. Vafotimdan keyin «Ziji jadidi Ko'ragoniy» qo'lyozmasini asrab qolgan va u bilan Tabriz, so'ng Istanbulga borgan. U yerda madrasada dars berib, Ulug'bek maktabining bilimlarini tarqatgan. Ali Qushchi tufayli bizning astronomiya ishlarimiz G'arbga ham yetib borgan.$$
 WHERE topic_uz = $$Shogirdim Ali Qushchi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Bu hikmat madrasa peshtog'iga koshin bilan bitilgan va bugungacha saqlanib qolgan.

Undagi eng muhim so'z — «muslima», ya'ni qizlar ham o'qishi kerakligi ochiq aytilgan. XV asr uchun bu jasoratli fikr edi. Yozuv madrasaga kiraverishda, har bir talaba ko'radigan joyda turgan. Bugun bu so'zlar O'zbekistonda ta'limga bo'lgan munosabatning tarixiy timsoli sifatida ko'p tilga olinadi.$$
 WHERE topic_uz = $$Peshtoqdagi hikmat$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$«Tarixi arba' ulus» — «To'rt ulus tarixi» degani. Ulus — Chingizxon avlodlari o'rtasida bo'lingan to'rt yirik hudud.

Asarda shu to'rt ulusning tarixi, hukmdorlari va muhim voqealari bayon etilgan. Men tarixni ham astronomiya kabi aniq ilm deb bilardim: sanalar va voqealar tartibini puxta tekshirishga harakat qilganman. Kitob keyinchalik ko'chirilib tarqalgan va sharqshunos olimlar uchun manba bo'lib xizmat qilgan.$$
 WHERE topic_uz = $$Tarix kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Rasadxona vayron bo'lgach, uning o'rni asta-sekin unutilgan va tepalik ostida ko'milib qolgan. Olimlar uni uzoq vaqt izlagan.

1908-yilda arxeolog Vasiliy Vyatkin qadimgi hujjatlardagi yer chegaralari tavsifiga tayanib, rasadxona o'rnini aniqladi va qazishma boshladi. Natijada sekstantning yer ostidagi qismi — marmar bilan qoplangan yoysimon yo'lak topildi. Bugun bu joyda muzey ishlaydi, rasadxona qoldiqlari esa Samarqandning eng ko'p ziyorat qilinadigan tarixiy obidalaridan biridir.$$
 WHERE topic_uz = $$Rasadxonamning qayta topilishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');

UPDATE fact_cards SET detail_uz = $$Toshkentdagi tumanlardan biri, O'zbekiston Milliy universiteti va ko'plab maktablar mening nomim bilan ataladi.

Astronomlar Oydagi kraterlardan biriga ham mening nomimni berishgan — bu ishim jahon fanida tan olinganining belgisi. 1994-yilda tavalludimning 600 yilligi YUNESKO ishtirokida nishonlangan. Samarqanddagi rasadxona o'rnida muzey ochilib, unda «Zij» nusxalari va o'sha davr astronomiya asboblarining namunalari qo'yilgan.$$
 WHERE topic_uz = $$Nomim bugun$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mirzo-ulugbek');
