-- «Batafsil» matnlarini KENGAYTIRISH — 9-to'plam: Ogahiy va Ali Qushchi.
-- Ikkalasi ham allaqachon kengaytirilgan zanjirlarni yopadi:
--   Munis (V70) → Ogahiy → Feruz (V71);
--   Koshiy (V71) → Ali Qushchi → Ulug'bek maktabi.
--
-- MANBA. `source` o'zgarmaydi. Solishtirilgan manbalar:
--   Ogahiy      — uz.wikipedia.org «Ogahiy» (otasi Erniyozbek; devon
--     «Ta'viz ul-oshiqin» 1872: 470 g'azal, 89 muxammas, 5 musaddas,
--     3 mustazod, ~18 000 misra; tarixiy asarlar qamragan yillar).
--   Ali Qushchi — en.wikipedia.org «Ali Qushji» (otasi Muhammad — Ulug'bekning
--     qushbozi; ustozlar; Uzun Hasan elchiligi ~1470; Istanbulga 1472 gacha
--     ko'chish; vafot 18.12.1474, Ayyub Sulton yaqinida dafn).
--
-- IXTILOF (metodist-tarixchi tasdig'i kerak). Ogahiyning tarixiy asarlari
-- sanalari bazada va uz.wikipediyada farq qiladi («Riyoz ud-davla» 1844 / 1842;
-- «Zubdat ut-tavorix» 1845–1846 / 1843–1846; «Jome' ul-voqeoti sultoniy»
-- 1857 / 1855). Batafsil matnda yozilish sanalari qayta aytilmagan — uning
-- o'rniga har bir asar QAMRAGAN yillar berilgan.

-- ==================================== OGAHIY ====================================

UPDATE fact_cards SET detail_uz = $$Tug'ilgan kunim 17-dekabr. Otamning ismi Erniyozbek edi va u shoir Munisning akasi bo'lgan — ya'ni ikkala oila bir xonadonga tegishli.

Qiyot Xivadan uzoq emas va u miroblar qishlog'i hisoblanardi: bizning oilamizda suv taqsimoti ishi avloddan avlodga o'tgan.

Meni tog'am Munis tarbiyalagan va o'qitgan. U shoir, tarixchi hamda xattot edi; men undan ham hunar, ham ilm olganman. Taqdirim bolaligimdanoq belgilangan edi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Uch tilni bilganman: arab — ilm va din tili, fors — tarix hamda mumtoz she'riyat tili, turkiy — ona tilim.

Madrasada mumtoz adabiyot, aruz vazni, mantiq va diniy fanlar o'qitilardi. Navoiy she'riyatini alohida sevib o'qiganman va uning ta'siri butun ijodimda sezilib turadi.

Fors tilini bilishim keyinchalik eng katta ishimga aylangan: men bu tildan yigirmaga yaqin asarni o'zbekchaga o'girganman. Madrasada olingan til bilimi shu tariqa butun bir kutubxonaga aylangan.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Tog'am Munis 1829-yilda vabo kasalligidan vafot etgan va Olloqulixon uning o'rniga meni tayinlagan. O'shanda men yigirma yoshda edim.

Mirob kanallarni tozalash ishlarini tashkil qilar, suvni yerlar orasida taqsimlar va nizolarni hal qilardi. Xorazmda dehqonchilik butunlay Amudaryodan chiqarilgan kanallarga bog'liq edi.

Bu vazifani men yigirma sakkiz yil — 1857-yilgacha bajarganman. Shu vaqt ichida tarixiy asarlar yozganman, she'r bitganman va tarjima qilganman. Ya'ni ilm ishim davlat xizmati bilan yonma-yon borgan.$$
 WHERE topic_uz = $$Miroblik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Otdan yiqilganimdan keyin oyog'im mayib bo'lgan va bu og'riq umrimning oxirigacha davom etgan.

Mirob vazifasi ko'p yurishni talab qilardi: kanallarni ko'zdan kechirish, dalalarga chiqish, odamlar bilan joyida uchrashish. Jarohatdan keyin bu ish menga tobora og'irlashgan.

Iste'foga chiqqanimdan keyingi o'n yetti yil esa eng samarali davrim bo'lgan: aynan shu yillarda «Gulshani davlat», «Shohidi iqbol» va devonim yakunlangan. Yurish imkoni yo'qolgach, yozish uchun vaqt topilgan.$$
 WHERE topic_uz = $$Jarohatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Asarlarim bir-birini davom ettiradi va birgalikda uzluksiz solnoma hosil qiladi. «Riyoz ud-davla» 1825–1842-yillar voqealarini qamraydi, «Zubdat ut-tavorix» keyingi to'rt yilni, «Jome' ul-voqeoti sultoniy» 1846–1855-yillarni, «Gulshani davlat» 1856–1865-yillarni, «Shohidi iqbol» esa 1865–1872-yillarni.

Bularga tog'am boshlagan «Firdavs ul-iqbol» qo'shilsa, Xorazm tarixi uzluksiz yozib borilgan bo'ladi — bir necha asrdan XIX asr oxirigacha.

Ish uchun men saroy hujjatlaridan, farmonlardan va o'z ko'zim bilan ko'rgan voqealardan foydalanganman. Shuning uchun asarlarim bugun XIX asr Xorazmi bo'yicha asosiy birlamchi manba hisoblanadi.$$
 WHERE topic_uz = $$Tarixiy asarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Asarlarimda faqat xonlar va janglar emas, o'lkaning kundalik hayoti ham yozilgan: kanal qazish ishlari, hosil, narxlar, ocharchilik yillari, qurilishlar.

Xorazm ko'p xalqli o'lka edi va men bu haqda ochiq yozganman: o'zbeklar, turkmanlar, qoraqalpoqlar va qozoqlar bir hududda yashardi, ular orasidagi munosabat esa doim tekis kechmasdi.

Aynan shu tafsilotlar tufayli asarlarim bugun tarixchilar uchun qimmatli. Jang sanasini boshqa manbadan ham topish mumkin, oddiy odamning turmushi haqidagi qaydni esa deyarli topib bo'lmaydi.$$
 WHERE topic_uz = $$Nimalarni yozganman$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Tog'am Munis 1829-yilda vafot etganida ikkita ish tugallanmay qolgan edi: «Firdavs ul-iqbol» solnomasi va Mirxondning «Ravzat us-safo» tarjimasi.

Men ikkalasini ham oxiriga yetkazganman. Solnomani davom ettirish oson emas: boshqa odamning uslubini, atamalarini va bayon tartibini saqlash kerak, aks holda kitob ikkiga bo'linib qoladi.

Bu an'ana Xorazmda kuchli bo'lgan. Undan avval Abulg'ozi Bahodirxonning «Shajarai turk» asarini ham boshqa olim yakunlagan edi. Boshlangan ishni tugatish bu yerda odat hisoblangan.$$
 WHERE topic_uz = $$Tog'am ishini davom ettirishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Qiyot — men tug'ilgan va umrimning katta qismini o'tkazgan qishloq; bugun u yerda uy-muzeyim ishlaydi.

Asarlarim mustaqillik yillarida zamonaviy alifboda nashr etilgan; tarixiy kitoblarim va tarjimalarim alohida jildlarda chiqqan. Qo'lyozmalarim Toshkentdagi Sharqshunoslik instituti xazinasida saqlanadi.

Nomim ko'chalar va maktablarga berilgan. Ammo eng tirik xotira boshqa: g'azallarim bugun ham Xorazm maqom yo'llarida kuylanadi — ya'ni ular kitobda emas, ijroda yashaydi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Vafot etganimda oltmish besh yoshda edim. So'nggi yillarim jarohat va kasallik bilan o'tgan, ammo men yozishdan to'xtamaganman.

Aynan o'sha yillarda ikkita katta ish yakunlangan: «Shohidi iqbol» tarixiy asari va «Ta'viz ul-oshiqin» devoni — ikkalasi ham 1872-yilga tegishli.

Ortimda oltita tarixiy asar, o'n sakkiz mingga yaqin misradan iborat devon va yigirmaga yaqin tarjima qolgan. Bu hajm bir umrlik muntazam mehnat natijasidir.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Devon 1872-yilda tuzilgan va uning tarkibi aniq ma'lum: 470 g'azal, 89 muxammas, 5 musaddas, 3 mustazod va boshqa she'rlar; jami o'n sakkiz mingga yaqin misra.

«Ta'viz» — tumor, ya'ni kishini himoya qiluvchi bitik. Nom ma'noli: g'azal oshiq uchun tumor kabi — u dardni yengillashtiradi.

Devon tuzish shoir uchun yakuniy bosqich: tarqoq she'rlar yo'qoladi, devonga kirgani esa ko'chiriladi va saqlanadi. Men buni umrimning oxirgi yillarida qilganman.$$
 WHERE topic_uz = $$Devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Tarjima qilganlarim orasida Sa'diyning «Guliston»i, Kaykovusning «Qobusnoma»si, Jomiyning «Yusuf va Zulayho»si hamda Nizomiyning «Haft paykar»i bor.

Ro'yxatga qarasangiz, tanlov tasodifiy emas: unda ham axloq kitoblari, ham buyuk dostonlar, ham tarixiy asarlar bor. Men o'quvchiga bir yo'nalishni emas, butun bir kutubxonani ochishga harakat qilganman.

Tarjima asl asarni yozishdan kam mehnat emas: har atamaga muvofiq so'z topish, vaznni saqlash va ma'noni buzmaslik kerak. Bu ishlar keyinchalik shogirdim Feruz davrida toshbosmada chop etilib, keng tarqalgan.$$
 WHERE topic_uz = $$Tarjimonlik ishlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Xorazm shoirlarida ma'noli taxallus tanlash odati kuchli bo'lgan: tog'am «Munis» — yaqin do'st, shogirdim «Feruz» — baxtli, zamondoshlarim «Komil» — yetuk va «Tabibiy» — tabib taxalluslarini olgan.

«Ogahiy» esa «ogoh» so'zidan — xabardor, sezgir, uyg'oq degan ma'noda. Bu shoir uchun mos ta'rif: uning ishi atrofdagini sezish va qayd etishdir.

Taxallus mumtoz she'riyatda g'azalning oxirgi baytida keltirilardi — shoir shu tariqa she'r ostiga imzo qo'yardi.$$
 WHERE topic_uz = $$Taxallusim ma'nosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Devonimda o'zbekcha she'rlarim bilan birga forscha she'rlarim ham bor — ikki tilda bemalol ijod qilganman.

Bu Xorazm adabiy maktabining odati edi: fors tili ilm va mumtoz she'riyat tili hisoblanardi, turkiy esa xalq tili hamda Navoiy an'anasi tili edi.

Ammo asosiy ishimni — tarjimani men bir yo'nalishda qilganman: forsdan turkiyga. Chunki maqsad forsni bilganlarga emas, bilmaganlarga kitob ochish edi.$$
 WHERE topic_uz = $$Ikki tilda she'rlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Muhammad Rahimxon Soniy (1845–1910) 1864-yilda Xiva taxtiga o'tirgan — ya'ni u men vafot etganimdan o'n yil avval xon bo'lgan va men uning yosh yillarida ustozlik qilganman.

Men unga she'riyat, aruz vazni va adabiyot tarixidan saboq berganman. U «Feruz» taxallusi bilan yozgan va devon tuzgan.

Uning homiyligi tufayli Xivada 1874-yilda toshbosma ochilgan va bizning asarlarimiz — Munisning devoni ham, mening tarjimalarim ham chop etila boshlagan. Shogird ustozining ishini shu tariqa davom ettirgan.$$
 WHERE topic_uz = $$Shogirdim Feruz$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Xorazm maqomlari — mahalliy mumtoz musiqa turkumi; ularning matni sifatida ko'pincha Navoiy, Munis, Ogahiy va Feruz g'azallari olinadi.

Bu tasodif emas: g'azal aruz vaznida yozilgani uchun uning bo'g'inlari o'lchovli va u kuyga oson tushadi. Shoir yozayotganda ohangni ham eshitib turadi.

Shogirdim Feruz davrida Xorazm maqomlari birinchi marta notaga olingan. Shu tufayli o'sha kuylar — va ular bilan birga mening g'azallarim — bugungacha yetib kelgan.$$
 WHERE topic_uz = $$G'azallarim qo'shiqlarda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

UPDATE fact_cards SET detail_uz = $$Bu mavzu menda kitobdan emas, ishdan kelgan. Mirob sifatida men har kuni suv taqsimoti ustidagi nizolarni hal qilardim va kimning haqi yeyilayotganini o'z ko'zim bilan ko'rardim.

She'rlarimda kambag'alning ahvoli, mehnatning qadri va hokimning mas'uliyati haqida yozganman. Tarixiy asarlarimda ham ocharchilik yillari hamda soliq og'irligi ochiq qayd etilgan.

Saroy tarixchisi uchun bunday yozish oson emas edi. Ammo men voqeani yashirsam, kitobning qiymati qolmasligini bilardim.$$
 WHERE topic_uz = $$Adolat mavzusi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ogahiy');

-- ================================== ALI QUSHCHI ==================================

UPDATE fact_cards SET detail_uz = $$Samarqand o'sha davrda dunyodagi eng katta ilm markazlaridan biri edi: Ulug'bek madrasasi va rasadxona shu yerda joylashgan.

Oilam saroyga yaqin bo'lgan: otam Muhammad Ulug'bekning qushbozi — ov qushlariga qaraydigan xizmatchisi bo'lgan.

Shu bois men bolaligimdanoq saroy muhitida o'sganman va Ulug'bek atrofidagi olimlarni yaqindan ko'rganman. Bu tanishlik keyinchalik butun taqdirimni belgilagan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Laqabimning kelib chiqishi otam bilan bog'liq: u Ulug'bekning qushbozi, ya'ni ov lochinlariga qaraydigan xizmatchisi bo'lgan. «Qushchi» aynan shu kasb nomidan olingan.

O'sha davrda odamlar tug'ilgan shahri bo'yicha (Koshiy, Rumiy) yoki kasbi bo'yicha atalardi. Mening laqabim ikkinchi turdan.

Qizig'i shundaki, laqab kasbni bildirsa-da, u menda emas, otamda bo'lgan. Men esa qush emas, yulduzlar bilan shug'ullanganman.$$
 WHERE topic_uz = $$Laqabim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Ustozlarim uchta bo'lgan: Qozizoda Rumiy — tajribali matematik va astronom, G'iyosiddin Jamshid Koshiy — hisob ustasi, hamda Muiniddin Koshiy.

Men davraning eng yosh a'zosi edim: Qozizoda Rumiy mendan qariyb qirq yosh, Koshiy esa yigirma yoshdan ko'proq katta edi. Bunday tarkib qulay — har savolga javob beradigan odam bor.

Ulug'bek esa hukmdor bo'lsa-da, o'zini shu davraning a'zosi deb bilardi va bahsda teng qatnashardi. Men uni ham ustoz, ham safdosh deb bilganman.$$
 WHERE topic_uz = $$Ustozlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$O'shanda men o'n yetti yoshda edim. Ulug'bek madrasasi shu yillarda qurib bitkazilgan va u o'z davrining eng yirik oliy o'quv yurtlaridan biri bo'lgan.

Madrasada matematika, astronomiya va geometriya o'qitilardi — bu o'sha davr uchun g'ayrioddiy edi, chunki ko'p madrasada asosan diniy fanlar berilardi.

Keyinchalik men Hirotda ham dars berganman. Ya'ni umrimning katta qismi o'qituvchilik bilan o'tgan: Samarqand, Hirot, so'ng Istanbul.$$
 WHERE topic_uz = $$Ilk ma'ruzam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Bunday safar aniq maqsad bilan bog'liq edi: «Zij» tuzishda turli xalqlarning taqvimlarini bilish shart bo'lgan.

Ulug'bekning «Zij»idagi birinchi kitob aynan taqvimlarga bag'ishlangan: unda yunon, arab, fors va uyg'ur-xitoy hisob tizimlari solishtiriladi hamda ular orasida sana o'girish qoidalari beriladi.

Bu ish nima uchun kerak? Chunki turli manbadagi kuzatuvlar turli taqvimda yozilgan. Ularni solishtirish uchun avval hammasini bitta tizimga keltirish lozim.$$
 WHERE topic_uz = $$Xitoy safarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$«Ziji jadidi Ko'ragoniy» 1437-yilda yakunlangan; unda mingdan ortiq yulduzning o'rni keltirilgan va bu jadval o'z davrining eng aniqi bo'lgan.

Mening hissam ayniqsa oxirgi bosqichda katta bo'lgan: Koshiy 1429-yilda, Qozizoda Rumiy esa 1437-yilda vafot etgan va ishni yakunlash menga qolgan.

Ulug'bek asar so'zboshisida uchalamizni nomma-nom eslatgan. Aynan shu qayd tufayli bugun rasadxonada kim ishlagani aniq ma'lum.$$
 WHERE topic_uz = $$«Zij»dagi hissam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Ptolemey — II asrda yashagan yunon astronomi; uning «Almagest» asari ming yildan ortiq vaqt davomida astronomiyaning asosiy kitobi bo'lib kelgan.

Meni u bilan qiyoslashlari ishimning turiga ishora qiladi: Ptolemey ham yulduzlar jadvalini tuzgan, ham nazariy asar yozgan. Men ham xuddi shu ikki ishni bajarganman.

Ammo bir farq bor: men Ptolemey va Arastu ta'limotining ba'zi qoidalariga qarshi chiqqanman. Ustozni hurmat qilish uning har bir so'zini qabul qilish degani emas.$$
 WHERE topic_uz = $$Unvonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$O'ndan ortiq asar yozganman: astronomiya, matematika, mantiq va tilshunoslikka oid.

Ular ikki tilda yozilgan. Arab tili ilm tili, fors esa saroy va keng o'quvchi tili hisoblanardi; muallif kimga murojaat qilayotganiga qarab tilni tanlardi.

Eng muhim ishlarimdan biri — astronomiyaning falsafaga bog'liqligi haqidagi risolam. Unda men astronomiya Arastu fizikasiga tayanishi shart emas, u kuzatuv va hisobga tayanishi kerak degan fikrni ilgari surganman.$$
 WHERE topic_uz = $$Asarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Merosim ikki qismdan iborat: yozgan kitoblarim va uzatgan bilimim.

Samarqand maktabining bilimi men orqali Istanbulga o'tgan: u yerda men Ayasofya madrasasida dars berganman va shogirdlar tayyorlaganman. Keyingi avlod usmonli astronomlari aynan shu maktabdan chiqqan.

Shu bois meni Ulug'bek maktabining elchisi deb ataydilar. Rasadxona vayron qilingan bo'lsa-da, undagi bilim yo'qolmagan — chunki u odamlar bilan birga ko'chib ketgan.$$
 WHERE topic_uz = $$Merosim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Rasadxonaning bosh asbobi radiusi qariyb 40 metrli ulkan sekstant edi; u qisman yer ostiga o'rnatilgan, chunki shundagina zilzila va shamoldan himoyalangan bo'ladi.

Kuzatuv muntazam olib borilishi kerak edi: bir kecha o'tkazib yuborilsa, ma'lumotlar qatorida bo'shliq paydo bo'ladi. O'ttiz yildan ortiq davom etgan kuzatuvlar aynan shu tartib tufayli natija bergan.

Ulug'bek vafotidan keyin rasadxona vayron qilingan. Uning poydevori faqat 1908-yilda arxeolog V. L. Vyatkin tomonidan topilgan — ya'ni bino besh asr davomida yer ostida yotgan.$$
 WHERE topic_uz = $$Rasadxonadagi kuzatuvlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Bu ta'rif shunchaki iltifot emas edi: Ulug'bek menga rasadxonaning eng mas'uliyatli ishlarini ishonib topshirgan.

U meni bolaligimdan bilardi — otam uning xizmatida bo'lgan. Keyinchalik esa men uning shogirdi, so'ng safdoshi va nihoyat ishining davomchisi bo'lganman.

Ustoz va shogird munosabati ilmda alohida ahamiyatga ega. Ulug'bek 1449-yilda halok bo'lganida uning ishini yakunlash menga qolgan — men buni qarz deb bilganman.$$
 WHERE topic_uz = $$«Farzandi arjumand»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Ulug'bek 1449-yilda halok bo'lgan va shundan keyin Samarqandda ilm bilan shug'ullanish sharoiti yo'qolgan: rasadxona vayron qilingan, olimlar tarqagan.

Men avval Hirot va Toshkentda bo'lganman, keyin Tabrizga borganman. Bu yo'l qisqa emas — u bir necha yilga cho'zilgan.

Har safarda men bir narsani o'zim bilan olib yurganman: qo'lyozmalarim va Samarqandda to'plangan bilim. Aynan shu bilim keyinchalik boshqa yurtda yangi maktab ochgan.$$
 WHERE topic_uz = $$Samarqanddan ketishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Uzun Hasan — Oqqo'yunlilar davlatining hukmdori; uning poytaxti Tabriz o'sha davrda yirik siyosiy va madaniy markaz edi.

U meni 1470-yil atrofida usmonli sultoni Mehmed Fotih huzuriga elchi qilib yuborgan. Olimni elchi qilib yuborish odatiy hol edi: bunday odam ham muzokara olib bora oladi, ham qabul qiluvchi tomonda hurmat topadi.

Sulton Mehmed meni Istanbulda qolishga taklif qilgan. Men 1472-yilgacha u yerga ko'chib o'tganman va umrimning qolgan qismini shu shaharda o'tkazganman.$$
 WHERE topic_uz = $$Tabrizda elchi bo'lganim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Istanbul 1453-yilda usmonlilar tomonidan olingan va Mehmed Fotih uni yangi poytaxtga aylantirib, olimlarni turli yurtlardan chaqirgan.

Ayasofya madrasasi shu siyosatning bir qismi edi. Men u yerda astronomiya va matematikadan dars berganman; darslarimga shu qadar ko'p talaba yig'ilganki, bu haqda manbalarda alohida qayd bor.

Shu tariqa Samarqand maktabining usuli — kuzatuv va hisobga tayanish — Istanbulga ko'chgan. Bir shaharda to'xtatilgan ilm boshqa shaharda davom etgan.$$
 WHERE topic_uz = $$Ayasofya madrasasida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$«Muhammadiya» — matematikaga, «Fathiya» esa astronomiyaga oid risolalarim; ikkalasi ham Sulton Mehmed Fotihga bag'ishlangan.

Asarni hukmdorga bag'ishlash o'sha davrning odati edi: bu homiyga minnatdorchilik ham, kitobning saqlanishi uchun kafolat ham bo'lgan — saroy kutubxonasidagi nusxa yo'qolmaydi.

Bu asarlar keyinchalik usmonli madrasalarida darslik sifatida o'qitilgan va bir necha asr davomida qo'lda ko'chirilgan.$$
 WHERE topic_uz = $$Istanbulda yozgan asarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');

UPDATE fact_cards SET detail_uz = $$Vafot etganimda yetmish bir yoshda edim; qabrim Istanbuldagi Ayyub Sulton masjidi yaqinida joylashgan.

Hayotim uch shaharga bo'lingan: Samarqand — o'qidim va rasadxonada ishladim; Tabriz — o'tish davri; Istanbul — dars berdim va oxirgi asarlarimni yozdim.

Ulug'bekning yulduzlar jadvali esa o'z yo'lini davom ettirgan: u XVII asrda Yevropada — Oksfordda nashr etilgan. Ya'ni Samarqandda boshlangan ish uch qit'aga tarqalgan.$$
 WHERE topic_uz = $$So'nggi manzilim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ali-qushchi');
