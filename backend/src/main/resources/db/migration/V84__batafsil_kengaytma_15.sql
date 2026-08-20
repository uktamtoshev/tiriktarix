-- «Batafsil» matnlarini KENGAYTIRISH — 15-to'plam: Tamara Xonim va
-- Mukarrama Turg'unboyeva. Ikkalasi ustoz-shogird: matnlarda bu zanjir
-- (Usta Olim Komilov → Tamaraxonim → Mukarrama → «Bahor») ochiq ko'rsatilgan.
--
-- MANBA. V79–V83 qoidasi saqlanadi: TASHQI manba ishlatilmagan. Matnlar
-- bazadagi tekshirilgan kartochkalardan yig'ilgan — shu qahramonning boshqa
-- kartochkalari, bir-birining kartochkalari, Dilbar Abdurahmonova kartochkasi
-- (Navoiy nomidagi teatr), hamda atama izohlari (baletmeyster, filarmoniya,
-- front brigadasi, usul).
-- Yangi sana, ism yoki raqam qo'shilmagan.

-- ================================== TAMARA XONIM ==================================

UPDATE fact_cards SET detail_uz = $$Asl ismim Tamara Artyomovna Petrosyan — men arman oilasida tug'ilganman.

O'zbek qo'shig'i va raqsini dunyoga tanitgan san'atkor boshqa millat vakili bo'lishi tasodif emas: Farg'ona o'sha davrda ham ko'p millatli shahar bo'lgan va ikki madaniyat orasida o'sish tabiiy hol edi.

«Xonim» esa familiya emas — bu Sharqda ayolga hurmat bilan qo'shiladigan so'z. El menga shu nomni bergan va u rasmiy ismimdan mashhurroq bo'lib ketgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Sahnaga o'n to'rt yoshimda chiqqanman va ansamblda yagona ayol edim.

O'sha davrda bu shunchaki kasb tanlash emas edi: ayol kishining ochiq yuz bilan sahnaga chiqishi jamiyat uchun keskin qadam hisoblanardi va bunga qarshilik ham bo'lgan.

Shu bois meni «birinchi» deb atashadi. Har qanday sohada birinchi bo'lgan odam eng og'ir yo'lni bosib o'tadi — undan keyingilarga esa yo'l ochiladi.$$
 WHERE topic_uz = $$Ansambldagi yagona ayol$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Bu ta'rif menga sahnaga chiqqanimdan atigi to'rt yil keyin berilgan.

Qaldirg'och bahorning birinchi belgisi hisoblanadi va ta'rifning ma'nosi ham shunda: mendan keyin sahnaga ko'plab qiz chiqqan.

Men bir vaqtning o'zida uch ishni bajarardim — aktrisa, xonanda va raqqosa. Bunday keng qamrov o'sha davr musiqali dramasi uchun zarur edi.$$
 WHERE topic_uz = $$Birinchi Sharq qaldirg'ochi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Usta Olim Komilov o'zbek raqsining eng katta ustalaridan biri; u ayni paytda mohir doirachi ham bo'lgan.

Bizning ishimiz oddiy emas edi: og'zaki uzatiladigan harakatlarni ajratib, nomlab va tartibga solish kerak bo'lgan. Bir yuz yigirma usul — bu butun bir tizim.

Bunday darslikning ahamiyati shunda: raqs endi faqat ustozdan shogirdga emas, kitob orqali ham uzatiladigan bo'lgan. Keyinchalik shogirdim Mukarrama Turg'unboyeva xuddi shu ustoz bilan yangi qo'llanma yaratgan.$$
 WHERE topic_uz = $$Ustozim bilan darslik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Truppani boshqarish ijrochilikdan farq qiladi: bu yerda mashq tartibi, dastur va yosh raqqosalarni tayyorlash masalalari turadi.

Teatr keyinchalik Alisher Navoiy nomidagi katta opera va balet teatriga aylangan — ya'ni men uning eng dastlabki bosqichida ishlaganman.

O'sha sahna keyingi avlodlar uchun ham maktab bo'lgan: Mukarrama Turg'unboyeva ham, dirijyor Dilbar Abdurahmonova ham shu teatrda ishlagan.$$
 WHERE topic_uz = $$Teatrda raqs truppasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Bu O'rta Osiyo san'atining xalqaro sahnadagi ilk yirik g'alabalaridan biri edi.

Tomoshabinlar uchun ko'rgan narsasi butunlay yangi bo'lgan: qo'l va bilak harakatlariga qurilgan raqs, boshqa musiqa tizimi, boshqa liboslar. Yevropa bunday san'atni bilmasdi.

Medalni men ustozim Usta Olim Komilov bilan birga olganman — ya'ni bu yakka ijrochining emas, butun bir maktabning e'tirofi bo'lgan.$$
 WHERE topic_uz = $$Londonda oltin medal$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Front brigadasi — san'atkorlarning jang maydoniga yaqin joyda konsert berishi; bu tez ko'chib yuradigan kichik jamoa bo'lgan.

O'zbekistonlik san'atkorlarning frontlarda bergan konsertlari o'ttiz besh mingdan oshgan. Bu raqam mehnatning hajmini ko'rsatadi.

Bunday konsertning ma'nosi tomoshadan kengroq: jangchi uchun bu bir necha daqiqaga bo'lsa-da urushdan tashqarida bo'lish va uydagi hayotni eslash imkoni edi.$$
 WHERE topic_uz = $$Urush yillarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Men chet elga faqat chiqish qilish uchun bormaganman — har safar o'sha yurtning qo'shiq va raqslarini o'rganib qaytganman.

Natijada repertuarimda o'nlab xalqning asari to'plangan va men ularni asl tilida ijro etardim. Bu tinglovchini hurmat qilish shakli: odam o'z tilidagi qo'shiqni eshitganda san'atkorni o'ziniki deb his qiladi.

Shu bilan birga men har bir yurtga o'zbek qo'shig'i va raqsini olib borganman. Ya'ni almashinuv ikki tomonlama bo'lgan.$$
 WHERE topic_uz = $$86 millat qo'shig'i$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Muzey men vafot etganimdan uch yil keyin, o'zim yashagan uyda ochilgan.

Unda sahna liboslarim saqlanadi va bu alohida qimmatga ega: libos raqsning bir qismi — uning og'irligi, kesimi va bezagi harakatga bevosita ta'sir qiladi.

Bundan tashqari muzeyda mukofotlarim, suratlar va menga yozilgan maktublar bor. Maktublar boshqa narsani ko'rsatadi — tomoshabin bilan san'atkor o'rtasidagi jonli aloqani.$$
 WHERE topic_uz = $$Uy-muzeyim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Sahnaga o'n to'rt yoshimda chiqqanman — ya'ni umrimning yetmish yildan ortig'i san'atda o'tgan.

Bu davr butun bir asrni qamragan: men o'zbek professional sahna san'ati endigina shakllanayotgan paytda boshlaganman va u yetuk maktabga aylanganini ko'rganman.

Yubileyning katta konsert bilan nishonlanishi esa xotiraning eng yaxshi shakli: san'atkorning ishi qayta ijro etilmoqda.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Bu mening chet eldagi birinchi katta chiqishim bo'lgan va u Londondagi festivaldan o'n yil avval yuz bergan.

Butunjahon ko'rgazmasi o'sha davrning eng yirik xalqaro tadbiri edi: unga o'nlab mamlakat o'z san'ati va sanoatini olib kelardi.

Yevropa tomoshabini uchun o'zbek raqsi mutlaqo yangilik bo'lgan. Ya'ni yigirma yoshli qiz butun bir san'at maktabini birinchi marta jahonga ko'rsatgan.$$
 WHERE topic_uz = $$Parij ko'rgazmasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$«SSSR xalq artisti» o'sha davrdagi eng yuqori san'at unvoni bo'lgan va u butun ittifoq miqyosida berilardi.

Bu unvonni olish O'rta Osiyodan chiqqan san'atkor uchun oson emasdi. Menga u sahnaga chiqqanimdan qariyb o'ttiz olti yil keyin berilgan.

Unvon ijodni o'zgartirmaydi, ammo imkoniyat beradi: gastrol, yozib olish va shogird tayyorlash uchun sharoit kengayadi.$$
 WHERE topic_uz = $$Unvonlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Gastrollarim davomida repertuarim doim ikki qismdan iborat bo'lgan: o'zbek qo'shiq va raqslari hamda o'sha yurtning o'z asarlari.

Bu usul oddiy, ammo kuchli. Chet ellik tomoshabin avval o'z qo'shig'ini eshitib san'atkorga yaqinlashadi — keyin unga begona madaniyatni ko'rsatish osonlashadi.

Shu tariqa men o'zbek san'atini bir necha qit'ada tanitganman. O'sha davrda bunday imkoniyat kam odamga nasib etardi.$$
 WHERE topic_uz = $$Jahon sahnalarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Usta Olim Komilov bilan biz darslik yaratganmiz va Londonda birga oltin medal olganmiz — ya'ni ishimiz umumiy bo'lgan.

Mukarrama Turg'unboyeva mendan yosh edi va u meni ustoz deb bilgan; o'zi ham keyinchalik xuddi shu Usta Olim Komilovdan saboq olgan.

Mukarrama tuzgan «Bahor» ansambli faqat qizlardan iborat bo'lgan. Bir avlod avval ansamblda yagona ayol men edim — bu farq san'atimizdagi o'zgarishni ko'rsatadi.$$
 WHERE topic_uz = $$Safdoshlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Ustozlik menda alohida ish bo'lmagan — u sahna bilan yonma-yon yurgan.

Raqs va qo'shiqni kitobdan o'rganib bo'lmaydi: shogird ustozning yonida turib, harakatni ko'rib va takrorlab o'rganadi. Shuning uchun bu san'at ustoz-shogird zanjiri orqali uzatiladi.

Usta Olim Komilov bilan yaratgan darsligimiz shu zanjirni mustahkamlagan: endi harakatlar yozib qo'yilgan va ular yo'qolib ketmaydi.$$
 WHERE topic_uz = $$Shogirdlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Filarmoniya — konsert tashkiloti; u teatrdan farq qiladi, chunki bu yerda spektakl emas, konsert dasturi tayyorlanadi.

Yakkaxon san'atkor uchun bu qulay shakl: dastur o'zgaruvchan bo'ladi va uni turli tomoshabinga moslashtirish mumkin.

Aynan shu ish menga keng gastrol imkonini bergan: filarmoniya jamoalari mamlakat bo'ylab ham, chet elga ham chiqib turardi.$$
 WHERE topic_uz = $$Filarmoniyadagi ishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

UPDATE fact_cards SET detail_uz = $$Qo'shiq aytib turib raqsga tushish oson emas: nafas raqs davomida tez buziladi, ovoz esa tekis chiqishi kerak.

Shu bois ko'p san'atkor ikkalasidan birini tanlaydi. Men esa ikkalasini birga olib borganman va bu uslubimga aylangan.

Bunday uslubning ildizi xalq an'anasida: to'y va sayllarda bir kishi ham kuylar, ham o'ynardi. Men shu an'anani professional sahnaga olib chiqqanman.$$
 WHERE topic_uz = $$San'atimning o'ziga xosligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tamara-xonim');

-- ============================ MUKARRAMA TURG'UNBOYEVA ============================

UPDATE fact_cards SET detail_uz = $$Otamdan erta ayrilganman va tog'amning uyida tarbiyalanganman.

Pedagogika texnikumi esa boshqa kasbga tayyorlardi: men o'qituvchi bo'lishim kerak edi. San'at o'sha paytda reja emasdi.

Ammo pedagogika ta'limi keyinchalik asqotgan: butun umrim davomida men o'qituvchilik qilganman — avval balet maktabida, keyin «Bahor» ansamblida.$$
 WHERE topic_uz = $$Bolaligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Tamaraxonim mendan bir necha yosh katta edi va u o'sha paytda allaqachon mashhur san'atkor bo'lgan.

«Dilxiroj» raqsini ko'rish men uchun burilish nuqtasi bo'ldi. Bu holat san'atda tez-tez uchraydi: bir tomosha butun bir taqdirni o'zgartiradi.

Keyinchalik men Tamaraxonimning shogirdiga aylanganman va u bilan bir teatrda ishlaganman. Ya'ni ilhom bergan odam ustozimga aylangan.$$
 WHERE topic_uz = $$San'atga ahd$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Studiya bir vaqtning o'zida ham teatr, ham o'quv yurti bo'lgan: aktyorlar spektaklda o'ynar va ayni paytda saboq olardi.

Ikkala ustozim ham o'zbek raqsining asoschilaridan: Usta Olim Komilov — usullar ustasi va doirachi, Tamaraxonim esa sahna san'atining birinchi ayol namoyandasi.

Ya'ni men o'zbek professional raqsining birinchi avlodidan bevosita saboq olganman. Bu zanjirda men ikkinchi bo'g'inman.$$
 WHERE topic_uz = $$Teatr studiyasida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Yigirma yoshimda o'qituvchi bo'lganman — ya'ni sahna faoliyatim bilan ustozlik deyarli bir vaqtda boshlangan.

«Doira darsi va raqs» qo'llanmasi og'zaki an'anani yozma tizimga aylantirgan: unda usullar, ularning nomlari va harakat bilan bog'lanishi bayon etilgan.

Bu ish avval Tamaraxonim va Usta Olim Komilov boshlagan yo'lning davomi edi. Ular usullar darsligini yaratgan, biz esa uni o'quv jarayoniga to'liq kiritganmiz.$$
 WHERE topic_uz = $$O'qituvchilik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$«Tanovar» — qadimgi xalq kuyi; men uning asosidagi raqsning ilk ijrochisiman.

Baletdagi bosh rollar esa boshqa maktabni talab qilardi: klassik balet texnikasi milliy raqsdan butunlay farq qiladi — u boshqa qomat, boshqa oyoq holati va boshqa mashq tizimiga tayanadi.

Ikkala uslubni egallash o'sha avlod uchun zarur bo'lgan: o'zbek baleti endigina shakllanayotgan edi va unda milliy raqs bilan klassika birlashtirilardi.$$
 WHERE topic_uz = $$Sahnadagi rollarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Bu holat hayotimda ikkinchi marta takrorlangan: yoshligimda Tamaraxonimning raqsini ko'rib san'atkor bo'lishga ahd qilgandim, endi esa boshqa jamoani ko'rib yangi orzu tug'ildi.

«Beryozka» faqat qizlardan iborat jamoa edi. Menda aniq savol paydo bo'ldi: nega bizda shunday ansambl yo'q?

Orzudan amalga o'tish uchun bir yil kerak bo'lgan — keyingi yili men o'z ansamblimni tuzganman.$$
 WHERE topic_uz = $$«Beryozka»dan ilhom$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Jamoa kichik boshlangan: o'zim dars bergan o'n ikki qiz, xonandalar va sozandalar.

Nom bastakor M. Mirzayevning «Bahor valsi» kuyi sharafiga berilgan va u mos tushgan: jamoa yosh qizlardan iborat edi hamda o'zbek raqsida yangi davr ochgan.

O'n ikki qizdan boshlangan jamoa keyinchalik ellikdan ortiq mamlakatda chiqish qilgan. Katta ish ko'pincha kichik guruhdan boshlanadi.$$
 WHERE topic_uz = $$«Bahor» tug'ilishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Olti yuzga yaqin raqs — bu yigirma yildan ortiq vaqt davomida yiliga o'nlab yangi asar degani.

Sahnalashtirish faqat harakat o'ylab topish emas: musiqa tanlanadi, libos ishlanadi, guruh tuzilmasi quriladi va har bir ijrochining o'rni belgilanadi.

Dasturga jahon xalqlari raqslarining kiritilishi ustozim Tamaraxonimning yo'lini eslatadi — u ham chet eldan qo'shiq va raqs to'plab qaytardi.$$
 WHERE topic_uz = $$600 raqs$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$«Yil raqqosasi» ko'rik-tanlovi har yili 31-mayda — mening tug'ilgan kunimda o'tkaziladi.

Bunday xotira shakli mukofotdan foydaliroq: u yosh ijrochilarni topadi va ularga sahna beradi.

Ya'ni nomim ro'yxatda emas, ishda davom etadi. San'atkor uchun eng yaxshi yodgorlik — uning kasbining yashab qolishi.$$
 WHERE topic_uz = $$Mukofotlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$«O'zidan keyin tirik haykal qoldirgan» degan ta'rif aniq: merosim tosh yoki kitob emas — u ijro etilib turadigan raqslar va ularni biladigan odamlar.

Ansamblning qayta tashkil etilishi shuni ko'rsatadi: jamoa vafotimdan keyin qirq yildan ortiq vaqt o'tib ham davlat e'tiboriga tushgan.

Raqs eng nozik san'at turlaridan: uni yozib qo'yib bo'lmaydi, u faqat ijrochi orqali yashaydi. Shu bois jamoaning saqlanishi merosning saqlanishi degani.$$
 WHERE topic_uz = $$Merosim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$«Tanovar» — o'zbek musiqasining eng qadimgi va eng sevimli kuylaridan biri; unda ayol dardi hamda umidi ifodalanadi.

Raqs kuyning mazmuniga tayanadi: unda tez harakat kam, asosiy og'irlik qo'l, bilak va yuz ifodasiga tushadi. Bunday raqs texnikadan ko'ra ichki holatni talab qiladi.

Shu bois u ijrochini sinaydi. Men uni sahnada ko'p bor ijro etganman va raqs mening nomim bilan bog'lanib qolgan.$$
 WHERE topic_uz = $$«Tanovar» raqsim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Bu raqs mavzusi bo'yicha avvalgilaridan farq qiladi: unda mumtoz yoki xalq kuyi emas, kundalik mehnat ko'rsatiladi.

Bunday asar yaratish qiyin: mehnat harakatlarini shunday tanlash kerakki, ular ham tanish bo'lsin, ham raqsga aylansin.

Zamonaviy mavzuga murojaat o'sha davr san'atining umumiy yo'nalishi edi. Muhimi shundaki, men buni milliy raqs tili bilan bajarganman — chet el uslubini ko'chirmasdan.$$
 WHERE topic_uz = $$«Paxta» raqsim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Alisher Navoiy nomidagi teatr mamlakatimizdagi asosiy opera va balet sahnasi hisoblanadi.

Baletmeyster — spektakldagi raqslarni sahnalashtiruvchi kishi. Bu ijrochilikdan boshqa kasb: u yerda butun sahna tuzilmasini ko'ra bilish kerak.

Shu teatrda ustozim Tamaraxonim raqs truppasini boshqargan, keyingi avlodda esa Dilbar Abdurahmonova dirijyorlik qilgan. Ya'ni bitta sahna bir necha avlodni bog'lab turgan.$$
 WHERE topic_uz = $$Opera teatrida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Ansamblimiz ellikdan ortiq mamlakatda chiqish qilgan — bu san'at orqali olib borilgan tanishtiruv ishining hajmini ko'rsatadi.

Raqsning afzalligi shunda: uni tushunish uchun til bilish shart emas. Tomoshabin harakat, musiqa va libos orqali begona madaniyat bilan bevosita tanishadi.

Bu yo'lni ustozim Tamaraxonim ochgan — u Parij va Londonda o'zbek san'atini birinchi bo'lib ko'rsatgan. Biz esa uni davom ettirganmiz.$$
 WHERE topic_uz = $$Jahon sahnalarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$«Maktab» bu yerda bino emas, tizim degani: usullar, ularning nomlari, o'qitish tartibi va ijro qoidalari.

Bunday tizimni yaratish uchun uch ish kerak bo'lgan: og'zaki an'anani yig'ish, uni yozib qo'yish va o'quv jarayoniga kiritish. Ustozlarim birinchi ikkitasini boshlagan, men uchinchisini yakunlaganman.

Natijada o'zbek raqsi havaskorlik darajasidan professional san'at darajasiga ko'tarilgan: unda darslik, o'quv yurti va professional jamoa paydo bo'lgan.$$
 WHERE topic_uz = $$O'zbek raqs maktabi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Uch uslub uch o'lkaga tegishli va ular bir-biridan sezilarli farq qiladi.

Farg'ona uslubi yumshoq va oqib boruvchi, Xorazm uslubi tez va o'ynoqi, Buxoro uslubi esa vazmin va tantanavor deb ta'riflanadi. Har birining o'z musiqasi va libosi bor.

Ularni bitta dasturga jamlash muhim ish bo'lgan: shu tariqa tomoshabin o'zbek raqsi bitta emas, uch xil ekanini ko'radi.$$
 WHERE topic_uz = $$Uch raqs uslubi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');

UPDATE fact_cards SET detail_uz = $$Nom vafotimdan keyin berilgan — ya'ni bu qaror mening emas, jamoaning va davlatning qarori bo'lgan.

Ansamblga asoschisining nomi berilishi mantiqiy: men uni o'n ikki qizdan tuzganman va yigirma yildan ortiq badiiy rahbari bo'lganman.

Ansambl qayta tashkil etilganda ham nom saqlangan. Ya'ni nom shunchaki sarlavha emas — u jamoaning qaysi maktabga tegishli ekanini bildiradi.$$
 WHERE topic_uz = $$Ansamblga berilgan nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mukarrama-turgunboyeva');
