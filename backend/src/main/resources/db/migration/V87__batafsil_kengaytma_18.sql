-- «Batafsil» matnlarini KENGAYTIRISH — 18-to'plam: Boborahim Mashrab va
-- Ubaydulla Xo'jayev. Bu to'plam bilan «Batafsil» matni faktni takrorlaydigan
-- kartochkalar ro'yxati yopiladi.
--
-- MANBA. V79–V86 qoidasi saqlanadi: TASHQI manba ishlatilmagan. Matnlar
-- bazadagi tekshirilgan kartochkalardan yig'ilgan — shu qahramonning boshqa
-- kartochkalari, bazadagi boshqa ajdodlar (Navoiy, Munis, Feruz — mustazod va
-- taxallus an'anasi; Abdulla Avloniy, Cho'lpon, Behbudiy, Munavvarqori —
-- jadidchilik; Muqanna — xalq orasidagi rivoyat), hamda atama izohlari
-- (qalandar, mustazod, tazkira, rus-tuzem maktabi, muxtoriyat).
-- Yangi sana, ism yoki raqam qo'shilmagan.

-- =============================== BOBORAHIM MASHRAB ===============================

UPDATE fact_cards SET detail_uz = $$Namangan Farg'ona vodiysining yirik shaharlaridan biri; u o'sha davrda diniy ilm va hunarmandchilik markazi hisoblangan.

Men tug'ilgan davr Navoiy vafotidan bir yarim asr keyingi vaqt — ya'ni turkiy she'riyat allaqachon boy an'anaga ega edi va yosh shoir tayyor maktabga kelardi.

Ammo mening yo'lim saroy shoirlarinikidan boshqacha bo'lgan: men umrimni bir joyda emas, shaharma-shahar kezib o'tkazganman.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Tasavvuf — ichki poklanish va haqiqatni izlash yo'li haqidagi ta'limot; unda shakl emas, niyat va holat birinchi o'ringa qo'yiladi.

Bu ta'limot she'riyatga bevosita ta'sir qilgan: unda ishq, yor va may kabi so'zlar ko'chma ma'noda ishlatiladi. Shu bois tasavvuf she'riyatini o'qish uchun kalit kerak bo'ladi.

Fors tilini bilishim esa menga bu an'ananing asosiy asarlarini asl nusxada o'qish imkonini bergan.$$
 WHERE topic_uz = $$Ustozim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Ustoz tavsiyasi bilan boshqa dargohga borish o'sha davr ta'lim tartibiga xos: shogird bir ustozdan o'rganib bo'lgach, keyingisiga yuborilardi.

Bu bugungi til bilan aytganda ilmiy safar: har bir dargohning o'z yo'nalishi bo'lgan va shogird ularni ketma-ket o'zlashtirardi.

Aynan shu dargohda mening she'rlarimning katta qismi yaratilgan — ya'ni bu safar mening ijodiy yo'limdagi eng mahsuldor davr bo'lgan.$$
 WHERE topic_uz = $$Afoq Xoja xizmatida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Tasavvuf she'riyatining o'ziga xosligi shundaki, unda oddiy so'zlar boshqa ma'no oladi: «yor» — ilohiy sevgili, «may» — ma'rifat, «mayxona» — ustoz dargohi ma'nosida keladi.

Shu bois mening she'rlarim ikki qatlamda o'qiladi: bilmagan odam uni oddiy ishqiy she'r deb tushunadi, biladigan kishi esa boshqa ma'noni ko'radi.

Aynan shu ikki qatlamlilik she'rlarimning keng tarqalishiga yordam bergan: ular ham savodli, ham oddiy tinglovchiga yetib borgan.$$
 WHERE topic_uz = $$She'riyatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Doimiy safar mening turmush tarzim bo'lgan: men bir joyda uzoq turmaganman va mulk to'plamaganman.

Bu tanlov tasodifiy emas — u qalandarlik yo'liga xos. Bunday odam boylik va mansabdan voz kechadi va uning uyi butun yo'l bo'ylab yoyilgan bo'ladi.

Safarning ijodga bevosita foydasi bor: har bir shaharda yangi odamlar, yangi tinglovchi va yangi hikoyalar. Shu bois she'rlarim saroyda emas, yo'lda tug'ilgan.$$
 WHERE topic_uz = $$Sayohatlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Og'zaki tarqalish yozma tarqalishdan tubdan farq qiladi: kitob savodli odamga yetadi, og'izdan chiqqan she'r esa hammaga.

Buning uchun she'r ma'lum shartlarga javob berishi kerak: ohangdor bo'lishi, yodda qolishi va tushunarli aytilishi. Mening g'azal hamda mustazodlarim shunday yozilgan.

Ammo og'zaki tarqalishning teskari tomoni ham bor: matn yo'lda o'zgaradi. Shu bois bugun she'rlarimning turli variantlari uchraydi va matnshunoslar ularni solishtirib chiqadi.$$
 WHERE topic_uz = $$Xalq orasida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Tazkira — shoirlar va ularning she'rlari haqidagi to'plam; unda har bir muallif haqida qisqacha ma'lumot va namunaviy she'rlar beriladi.

Bunday kitoblar bo'lmasa, ko'p shoirning nomi yo'qolib ketardi. Xorazmda shunday tazkirani Feruz buyrug'i bilan Tabibiy tuzgan.

Men haqimdagi ma'lumot ham asosan shu yo'l bilan saqlangan: men o'zim tarjimai hol yozmaganman va hayotim haqida hujjat qoldirmaganman.$$
 WHERE topic_uz = $$Tazkiralarda nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Balx — bugungi Afg'oniston hududidagi qadimgi shahar; u mening tug'ilgan yurtimdan ancha uzoqda joylashgan.

Shu tafsilotning o'zi hayotimni ta'riflab beradi: Namanganda tug'ilib Balxda vafot etish — bu butun umr yo'lda o'tgan degani.

Ortimda na uy, na mulk qolgan. Faqat she'rlar qolgan va ular og'izdan-og'izga o'tib, uch asrdan ortiq vaqt davomida yashab kelmoqda.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Mumtoz she'riyatda taxallus g'azalning oxirgi baytida keltirilardi — shoir shu tariqa she'r ostiga imzo qo'yardi.

«Devona» so'zi bu yerda kamsitish emas: tasavvuf an'anasida u dunyo tashvishlaridan voz kechgan, o'z yo'lida qat'iy odamni bildiradi.

Bunday nomni el beradi va uni o'zgartirib bo'lmaydi. Xalq bergan nom rasmiy unvondan uzoqroq yashaydi — bu bizning tariximizda ko'p takrorlangan.$$
 WHERE topic_uz = $$Taxallusim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Qissa mening o'zim yozgan asarim emas — uni xalq yaratgan va u og'zaki hikoyalar asosida shakllangan.

Bunday hol adabiyotda kam uchraydi: odatda shoir asar yozadi, bu yerda esa shoirning o'zi asar qahramoniga aylangan.

Qo'lyozma butun O'rta Osiyoga tarqalgan. Ammo unda tarixiy dalil bilan rivoyat aralash keladi — shu bois kitob mening tarjimai holim emas, xalq xotirasining ko'zgusi sifatida o'qilishi kerak.$$
 WHERE topic_uz = $$«Devonai Mashrab» qissasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Qalandar — dunyo moliga qiziqmaydigan, sodda kiyinib yurt kezuvchi darvesh.

Bunday hayot tarzi ongli tanlov edi va u she'riyatimga bevosita ta'sir qilgan: mansabga bog'liq bo'lmagan odam istaganini ochiq ayta oladi.

Aynan shu erkinlik mening she'rlarimdagi keskin tanqidiy ohangni tushuntiradi. Saroy shoiri homiysini tanqid qila olmaydi, qalandarning esa yo'qotadigan narsasi yo'q.$$
 WHERE topic_uz = $$Qalandarlik hayotim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Turkiy tilda yozish mening davrimda allaqachon mustahkam an'ana edi — bu yo'lni ikki asr avval Navoiy ochgan.

Fors tilini bilishim esa boshqa ish uchun kerak bo'lgan: tasavvuf adabiyotining asosiy asarlari shu tilda yozilgan va ularni asl nusxada o'qish zarur edi.

Ikki tilda ijod qilish bizning adabiyotimizda odatiy hol. Keyingi asrda xorazmlik shoirlar Munis va Ogahiy ham ikkala tilni bilgan.$$
 WHERE topic_uz = $$She'r yozgan tillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Mustazod — g'azalning o'zgartirilgan shakli: unda har bir baytdan keyin qisqa qo'shimcha misra keladi.

Aynan shu tuzilma uni kuyga solishga qulay qiladi: uzun misra ohangni olib boradi, qisqa qo'shimcha esa takrorlanuvchi naqorat vazifasini bajaradi.

Shu bois mustazodlarim xalq orasida qo'shiq bo'lib tarqalgan. Ular bugun ham hofizlar repertuarida saqlanib qolgan.$$
 WHERE topic_uz = $$Mustazodlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$Riyokorlik — ichi bilan tashi bir bo'lmagan odamning holati; tasavvuf ta'limotida bu eng qattiq qoralanadigan illatlardan biri.

Mening tanqidim shu ta'limotdan kelib chiqqan: agar asosiy o'lchov niyat bo'lsa, tashqi ko'rinish bilan cheklangan odam eng katta xatoga yo'l qo'yadi.

Bunday she'r xavfli edi va u menga do'st ham, dushman ham orttirgan. Ammo aynan shu keskinlik she'rlarimni oddiy xalqqa yaqin qilgan.$$
 WHERE topic_uz = $$Tanqidiy ruhdagi she'rlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

UPDATE fact_cards SET detail_uz = $$She'rlarimning uch asrdan ortiq yashashi ularning tarqalish usuli bilan bog'liq: ular kitobda emas, xotirada va qo'shiqda saqlangan.

Bugungi nashrlar esa matnshunoslarning mehnati natijasi: turli qo'lyozmalarni solishtirish, variantlarni belgilash va ishonchli matnni tiklash kerak bo'lgan.

Hofizlar hozir ham g'azallarimni kuylaydi. Shoir uchun bundan yaxshiroq davomiylik yo'q: uning so'zi kitob javonida emas, odamlarning ovozida yashaydi.$$
 WHERE topic_uz = $$Nomim bugun$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'boborahim-mashrab');

-- =============================== UBAYDULLA XO'JAYEV ===============================

UPDATE fact_cards SET detail_uz = $$Bog'bon oilasida tug'ilganman — ya'ni men zodagon emas, oddiy mehnatkash oiladan chiqqanman.

Bu tafsilot muhim: jadidlar harakatidagi ko'p kishi aynan shunday oilalardan chiqqan va ular martaba bilan emas, bilim bilan yo'l ochgan.

Toshkent o'sha davrda Turkistonning eng yirik shahri va o'lka boshqaruvining markazi edi. Shu bois yangi g'oyalar bu yerga birinchi bo'lib yetib kelardi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Rus-tuzem maktabi — mahalliy bolalar uchun ochilgan aralash maktab; unda ham rus tili, ham mahalliy fanlar o'qitilardi.

Bunday maktab o'sha davrda oliy ta'limga yo'l ochadigan yagona imkoniyat edi: unsiz Rossiya universitetiga kirish mumkin emasdi.

Saratovga borib huquq o'qish esa jasoratli qadam bo'lgan: Turkistondan chiqqan yigit uchun bu boshqa til, boshqa muhit va butunlay yangi kasb degani edi.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Advokatlik imtihoni oddiy sinov emas edi: unga qonunlarni bilish, sud amaliyotini o'zlashtirish va rus tilida erkin fikr yurita olish talab qilinardi.

Imtihonni chetda — Saratovda topshirish esa qo'shimcha qiyinchilik: u yerda mahalliy nomzodga nisbatan ishonchsizlik ham bo'lgan.

Bu diplom menga bir yildan keyin yurtimga qaytib, xalqim huquqini himoya qilish imkonini bergan. Ta'limning ma'nosi ham shunda edi.$$
 WHERE topic_uz = $$Advokatlik imtihoni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Advokat — sudda odamning huquqini himoya qiluvchi kishi. O'sha davrda mahalliy aholi uchun bunday himoya deyarli mavjud emasdi.

Sabab tilda edi: sud rus tilida yuritilardi va oddiy dehqon o'z ishini tushuntira olmasdi. Mahalliy advokatning paydo bo'lishi bu bo'shliqni to'ldirgan.

Shu bois mening kasbim shunchaki ish emas, ma'rifat ishining bir qismi bo'lgan. Jadidlar bilim orqali o'zgarish tarafdori edi — huquq ham shu bilimning bir turi.$$
 WHERE topic_uz = $$Xalqqa xizmat$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Gazeta chiqarish o'sha davrda eng ta'sirchan ma'rifat vositasi bo'lgan: u maktabdan tez ishlaydi va bir vaqtning o'zida minglab odamga yetib boradi.

«Sadoi Turkiston» — «Turkiston sadosi» degani. Nomning o'zi maqsadni bildiradi: o'lkaning o'z ovozi bo'lishi kerak.

Bu yo'lni bizdan avval Behbudiy Samarqandda boshlagan edi. Jadid matbuoti shu tariqa bir necha shaharda bir vaqtda paydo bo'lgan.$$
 WHERE topic_uz = $$«Sadoi Turkiston»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Gazetaning zarar bilan chiqishi tabiiy edi: obunachilar kam, reklama yo'q, bosma esa qimmat.

Xarajatni o'z zimmasiga olish degani — advokatlikdan tushgan daromadni gazetaga sarflash. Ya'ni bir kasb ikkinchisini moliyalashtirgan.

Gazetaning yopilishi ham shu sababdan: bunday nashr faqat homiy hisobiga yashaydi va homiyning imkoni tugaganda to'xtaydi. Ammo bir yil ichida u o'z ishini qilib ulgurgan.$$
 WHERE topic_uz = $$Gazeta xarajati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Gazeta sahifalari o'sha davr ziyolilarini bir joyga to'plagan: Abdulla Avloniy va boshqa ma'rifatparvarlar unda muntazam yozgan.

Eng qimmatlisi esa boshqa narsa: yosh Cho'lponning ilk mashqlari aynan shu gazetada bosilgan. Ya'ni keyinchalik buyuk shoir bo'lgan odamning birinchi sahifasi shu yerda bo'lgan.

Nashrning haqiqiy qiymati shunda o'lchanadi: u qancha yashaganida emas, kimlarga yo'l ochganida.$$
 WHERE topic_uz = $$Gazetadagi qalamkashlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$1917-yil butun mintaqa uchun burilish yili bo'lgan: imperiya qulagach, Turkistonda o'z-o'zini boshqarish masalasi ochiq qo'yilgan.

Shunday paytda ziyolilar tashkilot tuzishga kirishgan. Rais etib saylanish esa jamoaning ishonchini bildiradi — bu lavozim tayinlanmagan, saylangan.

Mendan avvalgi yillar ham shu kunga tayyorgarlik bo'lgan: gazeta, advokatlik va jamoat ishi orqali men allaqachon tanilgan edim.$$
 WHERE topic_uz = $$1917-yil$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Turkiston muxtoriyati — o'lkaning o'z-o'zini boshqarish uchun tuzilgan hukumati; u uzoq yashamagan.

Uning tarkibiga jadidlar harakatining yetakchilari kirgan — ya'ni bu ma'rifat ishining siyosiy davomi edi.

Muxtoriyat tugatilgan bo'lsa-da, uning ma'nosi qolgan: u Turkiston xalqlari o'z davlatini qurishga tayyor ekanini ko'rsatgan. Shu bois bu voqea bugungi tarix darsliklarida alohida o'rganiladi.$$
 WHERE topic_uz = $$Muxtoriyat$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Qamoq va surgun mening avlodimning ko'p vakili boshiga tushgan: jadid ma'rifatparvarlarining aksariyati o'sha yillarda yo'q qilingan.

Cho'lpon ham shu taqdirni ko'rgan — ya'ni mening gazetamda ilk she'rlari bosilgan yigit ham, gazetani chiqargan men ham bir davrda yo'q qilinganmiz.

Butun bir ziyolilar avlodining yo'qotilishi xalq uchun eng og'ir yo'qotish. Ular tayyorlagan ish esa o'nlab yil davomida davom ettirilmay qolgan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$To'liq ismim Ubaydullaxo'ja Asadullaxo'jayev — unda otamning ismi ham saqlangan.

«Xo'ja» — nomga qo'shiladigan hurmat so'zi; u ko'p mahalliy familiyalarning tarkibiga kirgan.

Tarixda qisqartirilgan shakl o'rnashgan. Bu odatiy hol: uzun rasmiy ism kundalik ishlatishda qisqaradi va aynan qisqa shakl yodda qoladi.$$
 WHERE topic_uz = $$To'liq ismim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Jadidchilik — «yangi usul» degan so'zdan kelib chiqqan harakat; uning asosiy g'oyasi xalqni ta'lim va matbuot orqali uyg'otish edi.

Harakat uch yo'nalishda ishlagan: yangi usul maktablari, gazeta hamda jurnallar va teatr. Menda uchalasi ham bor: men gazeta chiqarganman va «Turon» jamiyatini tuzishda qatnashganman.

Bu harakatda men yolg'iz emasdim: Behbudiy Samarqandda, Munavvarqori va Avloniy Toshkentda shu ish bilan shug'ullangan.$$
 WHERE topic_uz = $$Jadidchilik yo'lim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$«Turon» jamiyati gazetam chiqa boshlagan yilga yaqin davrda tuzilgan — ya'ni ikkala ish bir vaqtda olib borilgan.

Jamiyatning teatr bilan shug'ullanishi bejiz emas: sahna savodsiz odamga ham yetib boradi. Jadidlar uchun teatr ochiq darsxona vazifasini bajargan.

Shu tariqa harakat uch vositani birlashtirgan: maktab bolaga, gazeta savodli kishiga, teatr esa hammaga qaratilgan edi.$$
 WHERE topic_uz = $$«Turon» jamiyati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$1916-yilgi voqealar Turkiston tarixidagi eng og'ir sinovlardan biri bo'lgan: mahalliy aholini urush ortidagi ishlarga majburan olish o'lkada keng norozilikka sabab bo'lgan.

Bunday paytda advokatning ishi sud zalidan tashqariga chiqadi. Men Peterburgga borib, Davlat dumasidagi musulmon fraksiyasiga o'lkadagi ahvolni yetkazganman.

Bu huquqiy yo'l bilan ish ko'rish urinishi edi: qurol bilan emas, hujjat va so'z bilan. Jadidlar harakatining umumiy yo'nalishi ham shunday bo'lgan.$$
 WHERE topic_uz = $$Mardikorlik voqealari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Tashkilot imperiya qulagandan bir necha hafta keyin tuzilgan — ya'ni ziyolilar juda tez harakat qilgan.

Bunday tezlik tayyorgarlikni bildiradi: agar odamlar allaqachon tanish bo'lmasa va umumiy maqsad bo'lmasa, bir necha haftada tashkilot tuzib bo'lmaydi. O'sha tayyorgarlik gazeta va jamiyatlar orqali qilingan edi.

Rais etib saylanishim esa jamoaning qaroriga tayanadi. Shu bois bu lavozim menga berilgan emas — u menga ishonib topshirilgan.$$
 WHERE topic_uz = $$«Sho'roi Islomiya»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Harbiy ishlar vaziri — hukumatdagi eng og'ir vazifalardan biri, ayniqsa endigina tuzilgan davlat uchun.

Menda harbiy tayyorgarlik yo'q edi — men huquqshunosman. Ammo o'sha paytda tanlov kam bo'lgan: muxtoriyat hukumatiga ziyolilar kirgan va ular vazifalarni o'rtada taqsimlagan.

Bu holat yosh davlatlarning tanish muammosi: g'oya bor, odam bor, ammo tajriba yetishmaydi. Muxtoriyatning qisqa umri sabablaridan biri ham shunda edi.$$
 WHERE topic_uz = $$Harbiy vazirlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');

UPDATE fact_cards SET detail_uz = $$Nomimning tiklanishi mustaqillik yillarida boshlangan: undan avval jadidlar haqida ochiq yozish mumkin emasdi.

Bugun men Behbudiy, Munavvarqori, Avloniy, Fitrat va Cho'lpon bilan bir qatorda tilga olinaman. Bu to'g'ri: biz bir ishning turli tomonlarini bajarganmiz — kimdir maktab ochgan, kimdir darslik yozgan, men esa gazeta chiqarganman.

Tarix darsliklarida o'rganilish esa eng amaliy xotira shakli: har yili yangi avlod bu odamlar kim bo'lganini biladi.$$
 WHERE topic_uz = $$Xotira$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ubaydulla-xojayev');
