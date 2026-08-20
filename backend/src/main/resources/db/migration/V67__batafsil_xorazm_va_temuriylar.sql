-- «Batafsil» matnlari — Abulg'ozi Bahodirxon, Munis Xorazmiy, Feruz
-- va Saroymulkxonim.

-- ============================ ABULG'OZI BAHODIRXON ============================

UPDATE fact_cards SET detail_uz = $$Men Xiva xoni Arabmuhammadxonning o'g'illaridan biriman.

Xonzoda bo'lib tug'ilish osoyishta hayotni kafolatlamas edi: taxt uchun kurash aka-ukalar orasida ham bo'lardi. Mening yoshligim aynan shunday kurashlar davrida o'tgan va men uzoq yillar vatandan tashqarida yashashga majbur bo'lganman. Aynan shu yillar menga ko'p kitob o'qish va bilim to'plash imkonini bergan — keyinchalik tarixchi bo'lishimga shu asos bo'lgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$1645-yildan Xiva xonligini boshqarganman.

Taxtga o'tirganimda men allaqachon o'rta yoshdagi, ko'p yurt ko'rgan odam edim. Hukmronligim davrida men xonlikdagi tartibni mustahkamlashga, qabilalar orasidagi nizolarni tinchitishga va sug'orish tarmoqlarini tiklashga e'tibor berganman. Xorazmda suv masalasi eng muhim masala — kanallarsiz dehqonchilik yo'q, dehqonchiliksiz esa davlat kuchsizlanadi.$$
 WHERE topic_uz = $$Taxtga kelishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Xivani 1645-yildan 1663-yilgacha boshqardim, so'ng taxtni o'g'limga topshirdim.

Taxtni tiriklik chog'ida vorisga topshirish kam uchraydigan qaror edi — odatda hokimiyat hukmdor vafotidan keyin o'tardi va bu ko'pincha nizoga sabab bo'lardi. Men esa umrimning oxirgi yillarini ilmiy ishga bag'ishlashni istaganman: «Shajarai turk» asari ustidagi ish aynan shu davrda olib borilgan.$$
 WHERE topic_uz = $$Hukmronligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$«Shajarai turk» — «Turklar shajarasi» degani; unda turkiy xalqlarning kelib chiqishi va tarixi bayon etilgan.

Asarda qabilalar, urug'lar, ularning nomlari va tarqalgan hududlari haqida ma'lumot berilgan; shuningdek Chingizxon va uning avlodlari, shayboniylar hamda Xorazm tarixi yoritilgan. Men kitobni yozishda ham kitobiy manbalarga, ham og'zaki xotiraga tayanganman. Bu asar turkiy xalqlar tarixini o'rganishdagi asosiy manbalardan biri sanaladi.$$
 WHERE topic_uz = $$«Shajarai turk»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Olimlar «Shajarai turk»dan tarixiy manba sifatida foydalanadilar.

Uning qiymati shundaki, unda boshqa kitoblarda uchramaydigan ma'lumotlar bor: qabila va urug' nomlari, mahalliy voqealar, Xorazmdagi hodisalar. Men ularni bevosita guvohlardan va og'zaki rivoyatlardan yozib olganman. Bunday ma'lumot boshqa yo'l bilan saqlanmaydi — yozib qo'yilmasa, u bir-ikki avlodda yo'qoladi.$$
 WHERE topic_uz = $$Asarim — manba$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Men nafaqat davlat arbobi, balki olim sifatida ham tanilganman.

Hukmdorning kitob yozishi kam uchraydigan hol: davlat ishlari ko'p vaqt oladi. Ammo men ilmni o'zim uchun zarur deb bilganman. Tarixdan tashqari tabobat bilan ham qiziqqanman. Bunday misollar tarixda bor: Bobur «Boburnoma»ni, Ulug'bek «Zij»ni yozgan. Hukmdorning bilimi uning boshqaruviga ham ta'sir qiladi.$$
 WHERE topic_uz = $$Xon va olim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$1664-yilda vafot etganman.

Umrimning oxirida men «Shajarai turk» ustida ishlagan, ammo asarni to'liq tugatishga ulgurmaganman — uni o'g'lim Anushaxon topshirig'i bilan boshqa muallif yakunlagan. Ortimda ikkita yirik tarixiy asar qoldi va ular asrlar davomida o'qilib kelmoqda. Kitob muallifidan uzoq yashaydi — bu yozma so'zning asosiy kuchi.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$«Shajarai tarokima» — «Turkmanlar shajarasi» degani; u turkman xalqining kelib chiqishi va urug'lariga bag'ishlangan.

Asarni yozishda men mahalliy rivoyatlar, og'zaki shajaralar va yozma manbalarga tayanganman. Turkmanlar Xorazm xonligi aholisining katta qismini tashkil etardi, shuning uchun ularning tarixini bilish davlat uchun ham zarur edi. Bu asar bugun turkman xalqi tarixini o'rganishda muhim manba sanaladi.$$
 WHERE topic_uz = $$«Shajarai tarokima»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Yoshligimda taxt talashlari sababli Eronga borib qolganman va Isfahon shahrida uzoq yillar yashaganman.

Isfahon o'sha davrning eng yirik va obod shaharlaridan biri edi: u yerda kutubxonalar, madrasalar va olimlar bor edi. Men u yerda ko'p kitob o'qiganman, fors tilini mukammal egallaganman va turli xalqlar tarixi bilan tanishganman. Surgun og'ir sinov edi, ammo aynan shu yillar menga tarixchi sifatida shakllanish imkonini bergan.$$
 WHERE topic_uz = $$Isfahondagi yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Turkiy tildan tashqari fors va arab tillarini ham yaxshi bilganman.

Bu bilim tarixchi uchun zarur: manbalarning katta qismi aynan shu tillarda yozilgan. Fors tilini men Isfahonda yashagan yillarimda mukammal egallaganman. Tillarni bilish menga asarlarni tarjimonsiz o'qish va turli manbalarni solishtirish imkonini bergan — bu esa yozganlarimning ishonchliligini oshirgan.$$
 WHERE topic_uz = $$Tillarni bilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Asarlarimni hamma tushunadigan sodda turkiy tilda yozganman.

Bu ongli tanlov edi. O'sha davrda tarixiy asarlar ko'pincha murakkab, arabcha va forscha iboralarga to'la tilda yoziladi va ularni faqat o'qimishli kishilar tushunardi. Men esa kitobim keng doiradagi odamlarga yetib borishini istaganman — shuning uchun ortiqcha bezakdan voz kechganman. Bu tanlov asarimning uzoq yashashini ta'minlagan.$$
 WHERE topic_uz = $$Sodda tilda yozganim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Men shayboniylar sulolasidanman; sulolamiz nasabi Chingizxon avlodiga borib taqaladi.

Shayboniylar XVI asrda Movarounnahrni boshqargan, keyinchalik ularning bir tarmog'i Xorazmda hukmronlik qilgan. Nasl-nasabni bilish o'sha davrda hokimiyat uchun asos bo'lgan: hukmdor o'z huquqini shajara bilan tasdiqlardi. Aynan shu sabab meni shajaralar tarixini o'rganishga undagan — «Shajarai turk» asari shu qiziqishdan tug'ilgan.$$
 WHERE topic_uz = $$Nasl-nasabim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$«Shajarai turk»ni yozishda Rashididdinning «Jome ut-tavorix» asari kabi manbalardan foydalanganman.

Rashididdin — XIV asrda yashagan tarixchi; uning asari mo'g'ullar va turkiy xalqlar tarixi bo'yicha eng nufuzli manbalardan biri. Men bir necha kitobni solishtirib, ularda uchraydigan farqlarni belgilaganman va o'z xulosamni yozganman. Tarixchining ishi shu: bitta manbaga ishonib qolmaslik, balki bir nechtasini qiyoslash.$$
 WHERE topic_uz = $$Foydalangan manbalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$«Shajarai turk»ni oxiriga yetkazishga ulgurmadim; uni o'g'lim Anushaxon topshirig'i bilan boshqa muallif yakunlagan.

Bunday holat o'rta asr kitoblarida ko'p uchraydi: muallif vafot etsa, ishni shogird yoki boshqa olim davom ettirardi. Shu bois matnshunoslar asarning qaysi qismi kimga tegishli ekanini aniqlash bilan shug'ullanadi. Ishning davom ettirilishi uning qadrini ko'rsatadi — keraksiz kitobni hech kim tugatmaydi.$$
 WHERE topic_uz = $$Asarimning yakunlanishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$«Shajarai turk» keyinchalik Yevropa tillariga — nemis, fransuz va rus tillariga tarjima qilingan.

XVIII–XIX asrlarda Yevropa sharqshunoslari turkiy xalqlar tarixiga qiziqib, manbalarni izlab topgan va nashr etgan. Mening asarim shu yo'l bilan jahon ilmiga tanish bo'lgan va u Markaziy Osiyo tarixini o'rganishda keng ishlatilgan. Sodda tilda yozganim tarjimonlar uchun ham qulaylik tug'dirgan.$$
 WHERE topic_uz = $$Yevropada tarjimalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Tarixdan tashqari tabobatga ham qiziqqanman; menga «Manofe ul-inson» nomli asar nisbat beriladi.

Unda dorivor o'simliklar, kasalliklar va davolash usullari haqida ma'lumot berilgan. O'sha davrda tabobat bilimlari kitoblarda to'plangan va ular tabiblar uchun qo'llanma bo'lgan. Hukmdorning bunday asar yozishi qiziq: bu uning qiziqishlari keng bo'lganini ko'rsatadi. Asarning menga tegishliligi masalasi olimlar tomonidan o'rganilmoqda.$$
 WHERE topic_uz = $$Tabobatga oid asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$O'z davrimda Xorazmda o'tmish voqealarini yaxshi biladigan tarixchi topilmagani uchun bu ishni o'zim zimmamga olganman.

Men buni kitobimning boshida ochiq yozganman. Vaziyat oddiy edi: bilimli odam bor, ammo tarixni yozadigan kishi yo'q. Shunday paytda ish qila oladigan odam uni o'zi bajarishi kerak. Aynan shu qaror tufayli bugun Xorazm va turkiy xalqlar tarixi haqida qimmatli manbaga egamiz.$$
 WHERE topic_uz = $$Tarix yozishga kirishganim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- =============================== MUNIS XORAZMIY ===============================

UPDATE fact_cards SET detail_uz = $$1778-yilda Xiva yaqinidagi Qiyot qishlog'ida tug'ilganman; otam mirob edi.

Mirob — sug'orish tarmoqlarini boshqaruvchi mansabdor. Xorazmda bu juda mas'uliyatli vazifa: butun dehqonchilik kanallardan keladigan suvga bog'liq. Oilamizda bu ish avloddan avlodga o'tgan va keyinchalik men ham, jiyanim Ogahiy ham shu vazifani bajarganmiz. Shu bilan birga oilamizda ilm va she'riyatga qiziqish kuchli bo'lgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$1800-yilda otam vafotidan so'ng saroyga farmonnavis kotib etib tayinlanganman.

Farmonnavis — hukmdor farmonlarini yozadigan kotib. Bu ish chiroyli xat, aniq til va hujjat tuzish qoidalarini bilishni talab qilardi. Saroyda ishlash menga davlat ishlarini ichkaridan ko'rish va arxiv hujjatlaridan foydalanish imkonini bergan — keyinchalik tarixiy solnoma yozganimda bu juda asqotgan.$$
 WHERE topic_uz = $$Saroy xizmatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$1804-yilda ilk she'riy devonimni tuzganman.

Devon tuzish — shoir uchun muhim bosqich: u yozganlarini tanlaydi, tartibga soladi va bir kitobga jamlaydi. Devondagi she'rlar odatda qofiya harfiga qarab joylashtiriladi. Bu ish shoirning o'z ijodiga jiddiy qarashini bildiradi — tarqoq she'rlar yo'qoladi, devonga kirgani esa saqlanadi va ko'chiriladi.$$
 WHERE topic_uz = $$Ilk devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$1804-yilda xattotlik va savod o'rgatishga oid «Savodi ta'lim» she'riy asarini yozganman.

Unda husnixat qoidalari — qalamni qanday tutish, harflarni qanday yozish, siyoh va qog'oz tanlash bayon etilgan. Asar she'riy shaklda yozilgan, chunki nazm yodlashni osonlashtiradi va o'quvchi qoidalarni tez esda saqlaydi. O'sha davrda kitoblar qo'lda ko'chirilgani uchun chiroyli va aniq yozish zarur mahorat hisoblangan.$$
 WHERE topic_uz = $$«Savodi ta'lim»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$1806-yilda Eltuzarxon topshirig'i bilan Xiva xonligi tarixiga oid «Firdavs ul-iqbol» solnomasini yoza boshlaganman.

Solnoma — voqealarni yildan yilga tartib bilan yozib borish. Asarda Xorazmning qadimgi tarixi, qo'ng'irotlar sulolasining kelib chiqishi va xonlik voqealari bayon etilgan. Men uni tugatishga ulgurmaganman — ishni jiyanim va shogirdim Ogahiy davom ettirgan. Bu asar Xorazm tarixini o'rganishda asosiy manbalardan biri.$$
 WHERE topic_uz = $$«Firdavs ul-iqbol»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$«Munis ul-ushshoq» devonimga yigirma mingdan ortiq misra she'r jamlangan.

Bu juda katta hajm — u ko'p yillik muntazam ijod natijasi. Devonda g'azal, muxammas, musaddas, ruboiy va boshqa janrlardagi she'rlar bor. Mavzular xilma-xil: ishq, do'stlik, hayot haqidagi o'ylar, zamon voqealari. Devon nomidagi «munis» so'zi mening taxallusim bo'lib, «yaqin do'st» degan ma'noni bildiradi.$$
 WHERE topic_uz = $$Katta devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$1819-yilda Mirxondning «Ravzat us-safo» asarini turkiyga tarjima qila boshlaganman.

«Ravzat us-safo» — ko'p jildli umumiy tarix asari; uni fors tilidan o'girish uzoq yillik mehnat talab qilardi. Tarjima o'z xalqingga bilim yetkazishning yo'li: asl nusxani faqat fors tilini biladigan kishi o'qiy oladi, tarjima esa uni hammaga ochadi. Men bu ishni tugatishga ulgurmaganman — uni Ogahiy davom ettirgan.$$
 WHERE topic_uz = $$Tarjimam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Tugallanmagan ishlarimni — solnoma va tarjimani — shogirdim hamda jiyanim Ogahiy davom ettirgan.

U mening tarbiyamda o'sgan va mendan she'riyat, tarix hamda tarjima ishini o'rgangan. Mendan keyin u miroblik vazifasini ham, ilmiy ishni ham davom ettirgan va o'zi ham oltita tarixiy asar yozgan. Bunday davomiylik kam uchraydi: ustoz boshlagan ishni shogird oxiriga yetkazsa, meros yo'qolmaydi.$$
 WHERE topic_uz = $$Davomchim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$1829-yilda vafot etganman.

Umrim davomida katta devon, tarixiy solnoma, tarjima va o'quv asari yaratganman — bularning barchasi saroy xizmati hamda miroblik vazifasi bilan birga olib borilgan. Ortimda boshlangan, ammo tugallanmagan ishlar qolgan; ularni Ogahiy yakunlagan. Bugun mening asarlarim Xorazm adabiyoti va tarixining muhim qismi sanaladi.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Asl ismim Shermuhammad; «Munis» esa taxallusim bo'lib, «yaqin do'st, hamdam» degan ma'noni bildiradi.

Taxallus mumtoz she'riyatda majburiy edi: u she'rning oxirgi baytida keltirilar va muallifni bildirardi. Taxallus tanlashda shoir o'z fe'lini yoki maqsadini ifodalovchi so'zni olardi. Jiyanim Ogahiyning taxallusi ham ma'noli: «ogoh» — xabardor, zukko degani. Ikkalasi ham insoniy fazilatlarni bildiradi.$$
 WHERE topic_uz = $$Taxallusim ma'nosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Xorazmda dehqonchilik suvsiz bitmaydi, shuning uchun suv taqsimlovchi mirob vazifasi juda muhim edi.

Mirob kanallarni tozalash ishlarini tashkil qilar, suvni yerlar orasida taqsimlar va nizolarni hal qilardi. Bu ish odamlar bilan doimiy muloqotni talab qilardi: har bir dehqon o'z ulushini olishi kerak edi. Shoir va tarixchi uchun bunday vazifa foydali — u xalq hayotini yaqindan ko'rish imkonini beradi.$$
 WHERE topic_uz = $$Miroblik vazifam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Men xattotlik san'atini puxta egallaganman va qo'lyozma kitoblarni chiroyli xat bilan ko'chirganman.

Xattotlik o'sha davrda alohida san'at hisoblangan: har harfning o'lchovi, qiyaligi va bir-biriga ulanishi qoidalarga bo'ysunardi. Xattot qalamni o'zi yo'nardi, siyohni o'zi tayyorlardi. Kitob bosmaxonasi yo'q davrda kitob faqat xattot mehnati bilan ko'payardi — ya'ni har bir nusxa qo'l mehnati mahsuli edi.$$
 WHERE topic_uz = $$Xattotligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Yoshligimda Xiva madrasalarida tahsil olganman; arab va fors tillarini o'rganganman.

Madrasada mumtoz adabiyot, mantiq, aruz vazni va diniy fanlar o'qitilgan. Til bilish menga fors mumtoz she'riyatini asl nusxada o'qish va keyinchalik tarjima qilish imkonini bergan. Xiva o'sha davrda ilm va adabiyot markazlaridan biri edi: shaharda madrasalar, kutubxonalar va shoirlar davrasi bor edi.$$
 WHERE topic_uz = $$Tahsilim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Fors tilini yaxshi bilsam-da, she'rlarimni asosan ona tilimda — turkiy tilda yozganman.

Bu ongli tanlov edi va u Navoiy an'anasining davomi: u ham turkiy tilda yozib, uning imkoniyatlarini isbotlagan. Ona tilida yozish shoirni o'z xalqiga yaqinlashtiradi — she'r tarjimasiz tushuniladi va kuyga solinadi. Fors tilini esa men tarjima ishida qo'llaganman: chet asarni o'z tilimga o'girish uchun ikkalasini ham bilish kerak.$$
 WHERE topic_uz = $$Ijod tilim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Alisher Navoiyni o'zimga ustoz deb bilganman va uning g'azallarini sevib o'qiganman.

Navoiy vafotidan qariyb uch asr keyin yashagan bo'lsam-da, uning ta'siri mening ijodimda sezilib turadi: vazn, obrazlar va ona tiliga munosabat. Mumtoz she'riyatda ustozga ergashish odat edi — shoir o'zidan oldingi ustaning g'azaliga javob yozardi. Bu taqlid emas, balki mahoratni o'stirish usuli hisoblangan.$$
 WHERE topic_uz = $$Ustozim Navoiy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Asarlarimning qo'lyozma nusxalari bugungacha yetib kelgan.

Ular Toshkentdagi Sharqshunoslik institutida va boshqa kutubxonalarda saqlanadi. Qo'lyozmalar bilan ishlash alohida ilm: matnni o'qish, turli nusxalarni solishtirish, farqlarni belgilash va nashrga tayyorlash kerak. Mustaqillik yillarida asarlarim zamonaviy alifboda nashr etilgan va shu tariqa ular keng o'quvchiga yetib borgan.$$
 WHERE topic_uz = $$Qo'lyozmalarim bugun$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

-- ==================================== FERUZ ====================================

UPDATE fact_cards SET detail_uz = $$1845-yilda Xivada tug'ilganman.

Xiva o'sha davrda Xorazm xonligining poytaxti bo'lib, uning Ichan-qal'a qismida saroylar, madrasalar va minoralar joylashgan edi. Xonzoda sifatida men yaxshi ta'lim olganman: arab va fors tillarini, mumtoz adabiyotni va musiqa asoslarini o'rganganman. Bu bilim keyinchalik men shoir va san'at homiysi bo'lishimga zamin yaratgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Otam Sayid Muhammadxon vafotidan so'ng, 1864-yilda Xiva taxtiga o'tirganman — o'shanda men o'n to'qqiz yoshda edim.

Hukmronligim qariyb ellik yil davom etgan va bu Xiva tarixidagi eng uzun hukmronliklardan biri. Davrim og'ir voqealarga to'g'ri keldi: 1873-yilda xonlik Rossiya imperiyasiga qaram bo'lgan. Shunga qaramay men madaniyat, adabiyot va musiqa sohasidagi ishlarni davom ettirganman.$$
 WHERE topic_uz = $$Taxtga chiqishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$She'rlarimni «Feruz» taxallusi bilan yozganman.

«Feruz» — feruza toshi nomi bilan bog'liq bo'lib, «baxtli, muvaffaqiyatli» degan ma'noni ham bildiradi. Hukmdorning shoir bo'lishi bizning tariximizda uchraydi: Husayn Boyqaro «Husayniy», Umarxon «Amiriy» taxallusi bilan yozgan. Taxallus hukmdorga o'z nomidan emas, shoir sifatida gapirish imkonini bergan.$$
 WHERE topic_uz = $$Taxallusim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$1879-yilda «Devoni Feruz» to'plamim tuzilgan.

Devonda g'azal, muxammas va boshqa janrlardagi she'rlarim jamlangan. Mavzular an'anaviy: ishq, sadoqat, hayot haqidagi o'ylar. She'rlarim ohangdor yozilgani uchun ularning ko'pi kuyga solingan va Xorazm maqom yo'llarida ijro etilgan. Bugun ham bu qo'shiqlar hofizlar repertuaridan o'rin oladi.$$
 WHERE topic_uz = $$Devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Ustozim shoir va tarixchi Ogahiy edi.

U menga she'riyat, aruz vazni va adabiyot tarixidan saboq bergan. Ogahiy o'z davrining eng bilimli kishilaridan biri edi: u oltita tarixiy asar yozgan va yigirmaga yaqin kitobni fors tilidan tarjima qilgan. Bunday ustozdan ta'lim olish katta imkoniyat bo'lgan. Saroyimda keyinchalik Komil Xorazmiy va Tabibiy kabi shoirlar ham to'plangan.$$
 WHERE topic_uz = $$Ustozim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Xivada toshbosma — litografiya bosmaxonasi ochirganman.

Toshbosma usulida matn maxsus toshga yoziladi va undan nusxa ko'chiriladi; bu qo'lda ko'chirishdan ancha tez va arzon edi. Bosmaxonada Navoiy asarlari, Xorazm shoirlarining devonlari va boshqa kitoblar chop etilgan. Bu ish madaniyat uchun katta ahamiyatga ega bo'lgan: kitob arzonlashgach, u ko'proq odamga yetib boradi.$$
 WHERE topic_uz = $$Toshbosmam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Saroyimda musiqa ansambli tuzilgan va Shashmaqom an'anasidagi kuylar ijro etilgan.

Maqom — murakkab tuzilishga ega mumtoz musiqa turkumi; Xorazmda uning o'ziga xos yo'llari shakllangan. Mening davrimda Xorazm maqomlarini yozib olish ishi boshlangan — buning uchun maxsus tanbur notasi ishlab chiqilgan. Bu juda muhim ish edi: og'zaki uzatiladigan kuy ustoz-shogird zanjiri uzilsa yo'qoladi, yozib olingani esa saqlanadi.$$
 WHERE topic_uz = $$Musiqa homiyligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$1871-yilda o'z nomim bilan ataluvchi ikki qavatli madrasa qurdirganman.

Madrasa Xivaning Ichan-qal'a qismida joylashgan va u bugungacha saqlanib qolgan. Binoda talabalar uchun hujralar, dars xonalari va kutubxona bo'lgan. Madrasa vaqf mulki hisobidan ta'minlangan, ya'ni unga doimiy daromad manbai ajratilgan. Bugun bu bino YUNESKO ro'yxatidagi Ichan-qal'a majmuasining bir qismidir.$$
 WHERE topic_uz = $$Madrasam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$1910-yilda vafot etganman.

Qariyb ellik yillik hukmronligim davrida Xivada adabiyot, musiqa va kitobat ishi rivojlangan. Ortimda devon, madrasa, toshbosma va yozib olingan maqom kuylari qoldi. Davrim siyosiy jihatdan og'ir edi — xonlik mustaqilligini yo'qotgan, ammo madaniy hayot to'xtamagan. Bu ham bir natija: qiyin sharoitda madaniyatni saqlab qolish oson ish emas.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$To'liq ismim — Muhammad Rahim Bahodirxon; tarixda men Muhammad Rahimxon Soniy (Ikkinchi) nomi bilan ham tilga olinaman.

«Soniy» — «ikkinchi» degani: mendan oldin Xivada shu nomdagi boshqa hukmdor bo'lgan. Hukmdorlarni bir-biridan ajratish uchun tartib raqami qo'shilishi ko'p mamlakatlarda uchraydi. «Bahodirxon» esa unvon bo'lib, u jasorat ma'nosini bildiradi. Shoir sifatidagi nomim esa — Feruz.$$
 WHERE topic_uz = $$To'liq ismim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Men Xiva xonligini boshqargan qo'ng'irot sulolasidan chiqqanman.

Qo'ng'irotlar XVIII asr oxiridan Xorazmda hukmronlik qilgan. Bu davrda Xivada qurilish ishlari jonlangan: madrasalar, minoralar va saroylar qad rostlagan; Ichan-qal'aning bugungi qiyofasi asosan shu davrda shakllangan. Bobolarim ham qurilish va madaniyatga e'tibor bergan — men bu an'anani davom ettirganman.$$
 WHERE topic_uz = $$Sulolam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$1873-yilda Rossiya imperiyasi bilan Gandimiyon shartnomasini imzolashga majbur bo'lganman.

Shartnomaga ko'ra Xiva xonligi Rossiyaga qaram davlatga aylangan: u mustaqil tashqi siyosat yurita olmasdi va o'lponto'lashi kerak edi. Bu og'ir qaror edi, ammo kuchlar teng emasdi. Shundan keyin men asosiy e'tiborimni ichki ishlarga — madaniyat, ta'lim va qurilishga qaratganman. Bunday sharoitda madaniyatni saqlash o'ziga xos qarshilik shakli edi.$$
 WHERE topic_uz = $$Gandimiyon shartnomasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Saroyimga zamonamning ko'plab shoirini to'plaganman.

Ular orasida Komil Xorazmiy, Tabibiy, Avaz O'tar va boshqalar bor edi. Saroyda she'riy majlislar o'tkazilar, shoirlar bir-biriga javob g'azallari yozardi. Bunday muhit ijodkorlar uchun ham raqobat, ham qo'llab-quvvatlash maydoni bo'lgan. Komil Xorazmiy shu bilan birga musiqa bilan ham shug'ullangan va maqom notasini ishlab chiqishda qatnashgan.$$
 WHERE topic_uz = $$Saroyimdagi shoirlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Shoir Tabibiyga topshiriq berib, Xorazm shoirlarining she'rlarini jamlagan tazkira tuzdirganman.

Tazkira — shoirlar va ularning she'rlari haqidagi to'plam. Bunday kitob bo'lmasa, ko'p shoirning nomi va ijodi yo'qolib ketardi: qo'lyozmalar tarqoq holda saqlanadi va vaqt o'tishi bilan yo'qoladi. Tazkira tufayli bugun XIX asr Xorazm adabiy muhiti haqida batafsil ma'lumotga egamiz.$$
 WHERE topic_uz = $$Shoirlar tazkirasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Mening davrimda Xivada tarjimachilik rivojlangan: buyrug'im bilan fors tilidan ko'plab asar o'zbekchaga o'girilgan.

Tarjima qilingan asarlar orasida tarixiy va badiiy kitoblar bor. Bu ish avval ustozim Ogahiy tomonidan boshlangan edi va men uni davom ettirganman. Tarjima qilingan kitoblar toshbosmada chop etilib, keng tarqalgan. Shu tariqa fors mumtoz adabiyoti o'zbek o'quvchisiga yetib borgan.$$
 WHERE topic_uz = $$Tarjima ishlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Mendan so'ng Xiva taxtiga o'g'lim Isfandiyorxon o'tirgan.

Uning davrida ham qurilish va madaniyat ishlari davom etgan: Xivada yangi saroy va binolar qurilgan. Ammo davr tobora murakkablashib borgan — XX asr boshidagi voqealar butun mintaqa taqdirini o'zgartirgan. Xiva xonligi 1920-yilda tugatilgan. Bizdan qolgan me'moriy meros esa bugun YUNESKO himoyasida.$$
 WHERE topic_uz = $$Vorisim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- ================================ SAROYMULKXONIM ================================

UPDATE fact_cards SET detail_uz = $$1341-yilda tug'ilganman; men Chig'atoy xoni Qozonxonning qiziman.

Xon qizi bo'lish o'sha davrda katta ahamiyatga ega edi: nasl-nasab hokimiyat huquqini belgilardi. Aynan shu sabab Amir Temur menga uylangach, «Ko'ragon» — «xon kuyovi» unvonini olgan. Men yaxshi ta'lim ko'rganman: zodagon oilalaridagi qizlar savod chiqarar va adabiyotdan xabardor bo'lardi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$1370-yilda Amir Temur menga uylandi — bu uning hokimiyatni qo'lga olgan yili edi.

Nikoh siyosiy ahamiyatga ega bo'lgan: u orqali Temur chig'atoy xonlari sulolasi bilan qarindosh bo'lgan va o'z hokimiyatiga qonuniy asos qo'shgan. Ammo bizning munosabatimiz faqat rasmiyatchilikdan iborat emasdi: manbalarda yozilishicha, Temur mening maslahatlarimga quloq solgan va davlat ishlarida menga ishongan.$$
 WHERE topic_uz = $$Temurga turmushga chiqishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Men xon qizi bo'lganim uchun Temur menga uylanib «Ko'ragon» — «xon kuyovi» unvonini olgan.

Bu unvon uning nomiga qo'shib aytilgan va tangalarda hamda hujjatlarda ishlatilgan. Sababi shundaki, Temur o'zi xon sulolasidan emasdi va o'sha davr qoidasiga ko'ra oliy hokimiyat Chingizxon avlodiga tegishli hisoblanardi. Nikoh orqali qarindoshlik esa bu masalada muhim asos bergan. Keyinchalik «Ko'ragoniy» so'zi butun sulolaga nisbatan ishlatilgan — Ulug'bekning «Ziji» nomida ham u bor.$$
 WHERE topic_uz = $$«Ko'ragon» unvoni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Aql-idrokim tufayli xonimlar orasida «katta xonim» sanalganman va el ichida «Bibixonim» nomi bilan mashhur bo'lganman.

«Bibi» — hurmatli ayolga nisbatan ishlatiladigan so'z. Bu nom shu qadar keng tarqalganki, Temur mening sharafimga qurdirgan masjid ham xalq orasida shu nom bilan atalib ketgan. Bugun ko'pchilik «Bibixonim» deganda masjidni tushunadi — ammo bu avval odamning nomi bo'lgan.$$
 WHERE topic_uz = $$«Bibixonim» nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Davlat ishlarida qatnashganman va harbiy yurishlarda ham ishtirok etganman.

O'sha davrda hukmdorning oila a'zolari yurishlarda birga yurishi odat edi: saroy ko'chib yurardi. Temur uzoq safarlarda bo'lganda, poytaxtdagi ishlarni kuzatib turish ham menga topshirilardi. Manbalarda mening maslahatlarim tinglangani va ba'zi hollarda men avf so'rab, kishilarni jazodan qutqarganim haqida ma'lumot bor.$$
 WHERE topic_uz = $$Davlat ishlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Otamdan qolgan javohirlar evaziga Samarqandda madrasa qurdirganman.

Madrasa talabalar uchun mo'ljallangan bo'lib, unda yashash xonalari va dars xonalari bo'lgan; talabalar vaqf hisobidan ta'minlangan. O'z mablag'ini ta'limga sarflash o'sha davrda hukmdor oilasi ayollari uchun eng qadrli xayrli ish sanalgan. Bunday an'anani keyinchalik Gavharshod begim ham davom ettirgan.$$
 WHERE topic_uz = $$Madrasam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Temur nabiralarini — Ulug'bek, Muhammad Sulton va Xalil Sulton mirzolarni tarbiyalaganman.

O'sha davrda shahzodalar ko'pincha saroydagi katta xonimlar tarbiyasida o'sardi. Tarbiya deganda faqat parvarish emas, balki ta'lim ham tushunilardi: bolalarga savod, adabiyot va odob o'rgatilardi. Ulug'bekning ilmga qiziqishi ham shu muhitda uyg'ongan: saroyda olimlar va shoirlar bilan suhbatlar bo'lib turardi.$$
 WHERE topic_uz = $$Nabiralar tarbiyasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Temur mening sharafimga 1399–1404-yillarda Samarqandda ulkan jome masjid qurdirgan.

Masjid Hindiston yurishidan keyin, katta mablag' va ko'p ustaning mehnati bilan qurilgan; manbalarda og'ir toshlarni tashishda fillardan foydalanilgani haqida yozilgan. Bino o'z davrida Sharqdagi eng ulkan masjidlardan biri bo'lgan. U shu qadar katta ediki, ba'zi qismlari yillar o'tib nurab tushgan. XX asrda va mustaqillik yillarida masjid ta'mirlangan.$$
 WHERE topic_uz = $$Bibixonim masjidi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Tarixchi Ibn Arabshoh rivoyatiga ko'ra, 1408-yilda vafot etganman.

Ibn Arabshoh — Temur davri haqida yozgan arab tarixchisi; uning asari muhim manba sanaladi, ammo unda Temurga nisbatan tanqidiy ohang kuchli. Shu bois tarixchilar uning ma'lumotlarini boshqa manbalar bilan solishtiradi. Men Temurdan uch yil keyin vafot etganman va o'zim qurdirgan madrasa yonidagi maqbaraga dafn etilganman.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$1404-yilda Samarqandga Ispaniya elchisi Rui Gonsales de Klavixo kelgan va u ko'rganlarini kundalikka yozib qoldirgan.

Kundalikda saroy marosimlari, ziyofatlar, bog'lar va qurilishlar batafsil tasvirlangan; unda malikalarning marosimlarda qatnashgani haqida ham ma'lumot bor. Chet ellik guvohning yozuvi alohida qimmatli: u o'sha muhitga ko'nikmagan, shuning uchun mahalliy kishi e'tibor bermaydigan tafsilotlarni ham qayd etadi.$$
 WHERE topic_uz = $$Klavixo guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Samarqand bog'larida katta bayram va ziyofatlar o'tkazilardi va ularda malikalar ham qatnashardi.

Klavixo o'z kundaligida bunday ziyofatlarni tasvirlagan: chodirlar tikilgan, dasturxon yozilgan, sozandalar va o'yinchilar chiqqan, elchilarga sovg'alar berilgan. Bunday tadbirlar shunchaki ko'ngilochar emas edi — ular orqali davlatning boyligi va qudrati chet el elchilariga ko'rsatilardi. Ya'ni ziyofat ham siyosatning bir qismi bo'lgan.$$
 WHERE topic_uz = $$Saroy ziyofatlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Amir Temur saltanat poytaxti etib Samarqandni tanlagan va men umrimning katta qismini shu shaharda o'tkazganman.

Temur bu shaharni dunyoning eng go'zal shahriga aylantirishni maqsad qilgan: zabt etilgan o'lkalardan mohir hunarmand, me'mor va naqqoshlarni shu yerga taklif etgan. Mening ko'z o'ngimda shahar o'zgargan: Bibixonim masjidi, Go'ri Amir maqbarasi va Shohi Zinda ansambli aynan shu yillarda qad rostlagan.$$
 WHERE topic_uz = $$Poytaxt Samarqand$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Samarqandda Bibixonim masjidi ro'parasida men uchun maqbara bunyod etilgan.

U men qurdirgan madrasa majmuasining bir qismi bo'lgan. Vaqt o'tishi bilan madrasa vayron bo'lgan, maqbara esa saqlanib qolgan va ta'mirlangan. Bugun u «Bibixonim maqbarasi» nomi bilan ma'lum va Samarqandning tarixiy markazidagi obidalardan biri sanaladi. Yonma-yon turgan masjid va maqbara bir davrning ikki yodgorligidir.$$
 WHERE topic_uz = $$Maqbaram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Men yashagan va obidalar qurdirgan Samarqand shahri 2001-yilda YUNESKOning Jahon merosi ro'yxatiga kiritilgan.

U ro'yxatga «Samarqand — madaniyatlar chorrahasi» nomi bilan kirgan; bu nom shaharning turli xalq va madaniyatlar uchrashgan joy bo'lganiga ishora qiladi. Ro'yxatga kiritilgan obidalar orasida Registon, Bibixonim masjidi, Go'ri Amir, Shohi Zinda va Ulug'bek rasadxonasi bor. Bu obidalarni asrash bugungi avlod zimmasidagi mas'uliyatdir.$$
 WHERE topic_uz = $$Jahon merosi ro'yxatida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Men tarbiya bergan nabiralardan biri Mirzo Ulug'bek edi.

U bolaligini saroyda o'tkazgan va keyinchalik Samarqand hokimi bo'lgan. Ulug'bek rasadxona qurdirib, «Ziji jadidi Ko'ragoniy» jadvalini yaratgan va uch madrasa qurdirgan. Uning ilmga bo'lgan qiziqishi bolalikda shakllangan: saroyda kitob o'qilar, olimlar bilan suhbatlar bo'lardi. Tarbiya natijasi ko'p yillardan keyin ko'rinadi.$$
 WHERE topic_uz = $$Nabiram Ulug'bek$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');

UPDATE fact_cards SET detail_uz = $$Xalq orasida men va masjidim qurilishi haqida ko'plab afsona to'qilgan.

Ularning eng mashhuri — me'mor va malika haqidagi rivoyat. Bu hikoyalar tarixiy dalil emas: ular keyingi asrlarda xalq og'zaki ijodida shakllangan. Shunga qaramay afsonalarning ham qadri bor: ular xalqning obidaga bo'lgan munosabatini va uni qanday tasavvur qilganini ko'rsatadi. Tarixni o'rganganda dalil bilan rivoyatni ajratish muhim.$$
 WHERE topic_uz = $$Men haqimdagi afsonalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'saroymulkxonim');
