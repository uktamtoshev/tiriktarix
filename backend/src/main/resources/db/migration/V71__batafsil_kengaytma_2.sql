-- «Batafsil» matnlarini KENGAYTIRISH — 2-to'plam: Muhammad Rahimxon Feruz va
-- G'iyosiddin Jamshid Koshiy. Qoidalar V70 bilan bir xil: birinchi xatboshi
-- faktni takrorlamaydi, uch xatboshining har birida tekshirilgan dalil bor.
--
-- MANBA. `source` o'zgarmaydi. Matnlar quyidagilar bilan solishtirib chiqilgan:
--   Feruz  — uz.wikipedia.org «Muhammad Rahimxon II» va «Otajon Abdalov».
--   Koshiy — MacTutor History of Mathematics (mathshistory.st-andrews.ac.uk)
--            «Al-Kashi»; Britannica «al-Kashi»; en.wikipedia.org «Jamshid
--            al-Kashi».
--
-- IXTILOF (metodist-tarixchi tasdig'i kerak). Koshiyning vafot sanasi:
-- xalqaro manbalarda 1429-yil 22-iyun, bazadagi faktda esa 1430-yil. Matnda
-- ikkala variant ham ochiq aytilgan va farq sababi tushuntirilgan.

-- ========================= MUHAMMAD RAHIMXON FERUZ =========================

UPDATE fact_cards SET detail_uz = $$Otam Sayid Muhammadxon Xiva xoni edi, ya'ni men xonzoda bo'lib tug'ilganman. To'liq ismim — Muhammad Rahim Bahodirxon.

Men tug'ilgan yillarda Xiva xonligi hali mustaqil davlat edi. Poytaxtning ichki qal'asi Ichan-qal'a deb atalgan: bu yerda saroylar, madrasalar va minoralar joylashgan. Bugun Ichan-qal'a YUNESKOning Jahon merosi ro'yxatiga kiritilgan.

Xonzoda sifatida men arab va fors tillarini, mumtoz adabiyotni va musiqa asoslarini o'rganganman; ustozim shoir va tarixchi Ogahiy bo'lgan. Shu ta'lim keyinchalik men shoir va san'at homiysi bo'lishimga zamin yaratgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Taxtga o'tirganimda o'n to'qqiz yoshda edim; hukmronligim 1910-yilgacha, ya'ni qariyb qirq olti yil davom etgan. Bu Xiva tarixidagi eng uzun hukmronliklardan biri.

Davrim og'ir voqealarga to'g'ri keldi. 1873-yilda xonlik Rossiya imperiyasining protektoratiga aylangan va mustaqil tashqi siyosat yuritish huquqidan mahrum bo'lgan. Shundan keyin men asosiy kuchimni ichki ishlarga qaratganman.

Hukmronligim davomida homiyligimda o'ttizdan ortiq madrasa, masjid, minora va xonaqoh bunyod etilgan; Xivada O'rta Osiyodagi birinchi toshbosmalardan biri ochilgan; Xorazm maqomlari esa birinchi marta notaga olingan.$$
 WHERE topic_uz = $$Taxtga chiqishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$«Feruz» — feruza toshi bilan bog'liq so'z; u «baxtli, muvaffaqiyatli» degan ma'noni bildiradi.

Hukmdorning shoir bo'lishi bizning tariximizda kam emas: Husayn Boyqaro «Husayniy», Qo'qon xoni Umarxon esa «Amiriy» taxallusi bilan yozgan. Taxallus hukmdorga taxtdan emas, shoir sifatida gapirish imkonini bergan.

G'azallarim Xivadagi toshbosmada 1897-yilda alohida kitob bo'lib bosilgan — ya'ni ular saroy ichida qolib ketmagan, balki oddiy o'quvchiga ham yetib borgan.$$
 WHERE topic_uz = $$Taxallusim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Devonimni 1879-yilda tuzganman; 1900-yilda esa uni Muhammad Sharif ismli kotib qayta ko'rib chiqib, to'ldirgan.

Devonda g'azal, muxammas va boshqa janrlardagi she'rlarim jamlangan; mavzular an'anaviy — ishq, sadoqat, hayot haqidagi o'ylar. She'rlarim ohangdor yozilgani uchun ko'pi kuyga solingan va Xorazm maqom yo'llarida ijro etilgan.

1897-yilda g'azallarim Xiva toshbosmasida chop etilgan. Bugun ham bu qo'shiqlar hofizlar repertuaridan o'rin oladi.$$
 WHERE topic_uz = $$Devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Ustozim Ogahiy (1809–1874) — Munis Xorazmiyning jiyani va shogirdi edi. Ya'ni men Xorazm adabiy maktabining uchinchi bo'g'iniga tegishliman: Munis — Ogahiy — Feruz.

Ogahiy oltita tarixiy asar yozgan va yigirmaga yaqin kitobni fors tilidan o'zbekchaga tarjima qilgan; shu bilan birga u miroblik vazifasini ham bajargan. U menga she'riyat, aruz vazni va adabiyot tarixidan saboq bergan.

Ustozim vafot etganidan keyin saroyimda Komil Xorazmiy, Tabibiy, Bayoniy va Avaz O'tar kabi shoirlar to'plangan — men ular uchun sharoit yaratishga harakat qilganman.$$
 WHERE topic_uz = $$Ustozim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Toshbosma 1874-yilda mening homiyligimda, Xivadagi saroyda tashkil etilgan. Uni Otajon Abdalov (1856–1939) — birinchi o'zbek kitob bosuvchisi boshqargan.

Bu O'rta Osiyodagi birinchi litografiya bosmaxonalaridan edi. Toshbosma usulida matn maxsus tekis toshga yoziladi va undan nusxa ko'chiriladi — bu qo'lda ko'chirishdan ancha tez va arzon.

Bosmaxonada 1876–1910-yillar davomida Navoiy asarlari, Xorazm shoirlarining devonlari, mening g'azallarim (1897) va «Majmuat ush-shuaro» tazkirasi (1900) chop etilgan. Kitob arzonlashgach, u ko'proq odamga yetib boradi.$$
 WHERE topic_uz = $$Toshbosmam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Xorazm maqomlarini notaga olish ishi aynan mening davrimda amalga oshirilgan. Buning uchun shoir va musiqashunos Komil Xorazmiy (1825–1897) maxsus tanbur notasini ishlab chiqqan.

Maqom — murakkab tuzilishga ega mumtoz musiqa turkumi; Xorazmda uning o'ziga xos yo'llari shakllangan. Saroyimda musiqa ansambli tuzilgan va Shashmaqom an'anasidagi kuylar ijro etilgan.

Nota nima uchun kerak edi? Og'zaki uzatiladigan kuy ustoz-shogird zanjiri uzilsa yo'qoladi. Yozib olingani esa saqlanadi: tanbur notasi tufayli XIX asr Xorazm kuylari bugungacha yetib kelgan.$$
 WHERE topic_uz = $$Musiqa homiyligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Madrasa 1871-yilda Ko'hna Ark ro'parasida qurilgan va u «Muhammad Rahimxon madrasasi» deb ataladi — Xivadagi eng yirik madrasalardan biri.

Ikki qavatli binoda talabalar uchun hujralar, dars xonalari va kutubxona bo'lgan. Madrasa vaqf mulki hisobidan ta'minlangan, ya'ni unga doimiy daromad manbai ajratilgan — shu bois u hukmdor almashsa ham ishlashda davom etardi.

Homiyligimda umuman o'ttizdan ortiq madrasa, masjid, minora va xonaqoh bunyod etilgan. Madrasam bugun YUNESKO ro'yxatidagi Ichan-qal'a majmuasining bir qismi.$$
 WHERE topic_uz = $$Madrasam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Vafotimdan keyin taxtga o'g'lim Asfandiyorxon o'tirgan va u 1918-yilgacha hukmronlik qilgan.

Qariyb qirq olti yillik hukmronligim davrida Xivada adabiyot, musiqa va kitobat ishi rivojlangan. Ortimda devon, madrasa, toshbosma, notaga olingan maqom kuylari va «Majmuat ush-shuaro» tazkirasi qoldi.

Davrim siyosiy jihatdan og'ir edi: xonlik 1873-yildan boshlab mustaqilligini yo'qotgan, 1920-yilda esa butunlay tugatilgan. Shunday sharoitda madaniyatni saqlab qolish oson ish emas.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Bir odamning uchta nomi bor: rasmiy ismi, tarixiy tartib raqami va taxallusi. Menda ular — Muhammad Rahim Bahodirxon, Muhammad Rahimxon Soniy va Feruz.

«Soniy» — «ikkinchi» degani. Mendan avval Xivada Muhammad Rahimxon I hukmronlik qilgan (1806–1825); u ham qo'ng'irotlar sulolasidan va mening ajdodim edi. Hukmdorlarni ajratish uchun tartib raqami qo'shilishi ko'p mamlakatlarda uchraydi.

«Bahodirxon» esa unvon bo'lib, jasorat ma'nosini bildiradi. Shoir sifatidagi nomim esa butunlay boshqa — Feruz; devonim va g'azallarim shu nom bilan chop etilgan.$$
 WHERE topic_uz = $$To'liq ismim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Qo'ng'irot sulolasi Xorazmda XVIII asr oxiridan hukmronlik qilgan; xonlik sifatida uning asoschisi Eltuzarxon (1804–1806) hisoblanadi.

Bu davrda Xivada qurilish jonlangan: madrasalar, minoralar va saroylar qad rostlagan; Ichan-qal'aning bugungi qiyofasi asosan shu davrda shakllangan. Xorazmning yozma tarixi ham shu sulola davrida yaratilgan — Eltuzarxon buyrug'i bilan Munis «Firdavs ul-iqbol» solnomasini boshlagan.

Men bu an'anani davom ettirganman. Sulolamiz hukmronligi 1920-yilda tugagan; oxirgi xon Sayid Abdulla bo'lgan (1918–1920).$$
 WHERE topic_uz = $$Sulolam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Shartnoma 1873-yil 12-avgustda Gandimiyon qishlog'ida imzolangan. Unga ko'ra Xiva xonligi Rossiya imperiyasining protektoratiga aylangan.

Shartlar og'ir edi: xonlik mustaqil tashqi siyosat yurita olmasdi, Amudaryoning o'ng qirg'og'idagi yerlardan voz kechdi va tovon to'lashi kerak bo'ldi. Kuchlar teng emasdi — qarshilik xonlikning butunlay tugatilishiga olib kelishi mumkin edi.

Keyingi yillarda imperiya menga unvonlar bergan: 1896-yilda general-leytenant, 1902-yilda «Oliy Hazrat», 1904-yilda otliq qo'shin generali unvoni. Bularning barchasi qaramlikning tashqi belgisi edi. Men esa e'tiborimni ichki ishlarga — madaniyat, ta'lim va qurilishga qaratganman.$$
 WHERE topic_uz = $$Gandimiyon shartnomasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Saroyimda to'plangan shoirlarning har biri o'z sohasida iz qoldirgan: Komil Xorazmiy (1825–1897) — shoir, xattot va musiqashunos; Tabibiy (1869–1911) — shoir va tazkiranavis; Bayoniy (1858–1923) — shoir va tarixchi; Avaz O'tar (1884–1919) — eng yosh va eng keskin ovoz.

Saroyda she'riy majlislar o'tkazilar, shoirlar bir-biriga javob g'azallari yozardi. Bunday muhit ijodkorlar uchun ham raqobat, ham qo'llab-quvvatlash maydoni bo'lgan.

Komil Xorazmiy maqom notasini ishlab chiqqan, Tabibiy esa «Majmuat ush-shuaro» tazkirasini tuzgan. Ya'ni davra faqat she'r yozib qolmagan — u Xorazm madaniyatini yozib qoldirgan.$$
 WHERE topic_uz = $$Saroyimdagi shoirlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Tazkirani shoir Tabibiy (1869–1911) tuzgan va u 1900-yilda Xiva toshbosmasida chop etilgan.

Tazkira — shoirlar va ularning she'rlari haqidagi to'plam: unda har shoir haqida qisqacha ma'lumot va namunaviy she'rlar beriladi. «Majmuat ush-shuaro»ga XIX asr Xorazm shoirlarining asarlari kiritilgan.

Bunday kitob bo'lmasa, ko'p shoirning nomi va ijodi yo'qolib ketardi: qo'lyozmalar tarqoq holda saqlanadi va vaqt o'tishi bilan nobud bo'ladi. Tazkira tufayli bugun XIX asr Xorazm adabiy muhiti haqida batafsil ma'lumotga egamiz.$$
 WHERE topic_uz = $$Shoirlar tazkirasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$Xorazmda maxsus tarjima maktabi shakllangan va uning eng gullagan payti mening davrimga to'g'ri keladi.

Bu ish mendan avval boshlangan edi: Munis Mirxondning «Ravzat us-safo»sini tarjima qila boshlagan, ustozim Ogahiy esa uni yakunlab, yana yigirmaga yaqin asarni fors tilidan o'zbekchaga o'girgan. Men shu ishni davom ettirganman va buyrug'im bilan fors hamda arab tillaridagi ko'plab kitob tarjima qilingan.

Tarjima qilingan kitoblar toshbosmada chop etilib, keng tarqalgan. Ya'ni ikkita yangilik birga ishlagan: tarjima matnni tayyorlagan, bosmaxona esa uni ko'paytirgan.$$
 WHERE topic_uz = $$Tarjima ishlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

UPDATE fact_cards SET detail_uz = $$O'g'lim Asfandiyorxon 1910-yilda taxtga o'tirgan va 1918-yilgacha hukmronlik qilgan.

Uning davrida ham qurilish davom etgan: Xivada Nurullaboy saroyi kabi yangi binolar bunyod etilgan. Ammo davr tobora murakkablashib borgan — XX asr boshidagi voqealar butun mintaqa taqdirini o'zgartirgan.

Xiva xonligi 1920-yilda tugatilib, uning o'rnida Xorazm Xalq Sovet Respublikasi tuzilgan; oxirgi xon Sayid Abdulla bo'lgan. Bizdan qolgan me'moriy meros esa bugun YUNESKO himoyasida.$$
 WHERE topic_uz = $$Vorisim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'feruz');

-- ====================== G'IYOSIDDIN JAMSHID KOSHIY ======================

UPDATE fact_cards SET detail_uz = $$Samarqandga kelishimdan avval men Koshon shahrida ishlagan va bir necha asar yozib ulgurgan edim: 1406-yilda oy tutilishini kuzatganman, 1407-yilda «Sullam us-samo»ni tugatganman, 1410–1411-yillarda esa astronomiya bo'yicha qo'llanma yozganman.

Eng muhimi «Ziji Xoqoniy» jadvali edi — men uni Ulug'bekka bag'ishlaganman. Taklifnoma aynan shu ish tufayli kelgan: Ulug'bek atrofiga eng yaxshi olimlarni to'plashga intilardi va odamni ilmiy obro'siga qarab tanlardi.

Samarqandga ko'chish men uchun katta imkoniyat bo'ldi. U yerda rasadxona qurilishi rejalashtirilayotgan edi — ya'ni menga kuzatish uchun asboblar ham, jamoa ham va'da qilingandi.$$
 WHERE topic_uz = $$Samarqandga kelishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Rasadxona qurilishi 1424-yilda boshlangan va men uning loyihasida qatnashganman.

Rasadxona qurish oddiy bino qurishdan farq qiladi: joyni to'g'ri tanlash, meridian yo'nalishini aniq belgilash va asboblarni juda aniq o'lchov bilan o'rnatish kerak. Bosh asbob — radiusi qariyb 40 metrli ulkan sekstant qisman yer ostiga joylashtirilgan, chunki shundagina u zilzila, shamol va harorat o'zgarishidan himoyalanadi.

Asbob qanchalik katta bo'lsa, shkalasidagi bo'linmalar shunchalik yirik bo'ladi va o'lchov shunchalik aniq chiqadi. Aynan shu sabab Samarqand rasadxonasi o'z davrining eng aniq kuzatuvlarini bergan.$$
 WHERE topic_uz = $$Rasadxona loyihasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Ulug'bek davrasida uch avlod yonma-yon ishlagan: Qozizoda Rumiy — eng katta va tajribali ustoz, men — o'rta avlod, Ali Qushchi (1403–1474) esa eng yosh a'zo edi.

Biz kuzatuv natijalarini birga muhokama qilar, hisoblarni bir necha bor tekshirardik. Ilmiy jamoada ishlashning foydasi shundaki, xato tezroq topiladi va har bir fikr sinovdan o'tadi.

Bu davra «Ulug'bek maktabi» deb ataladi. Men vafot etganimdan keyin ishni Qozizoda Rumiy, undan keyin esa Ali Qushchi davom ettirgan — «Zij» aynan shu uzluksizlik tufayli tugallangan.$$
 WHERE topic_uz = $$Olimlar davrasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Asarni 1427-yil 2-martda yakunlaganman.

Unda arifmetika, algebra, geometriya va amaliy hisob izchil bayon etilgan. Kitob kimga mo'ljallangani aniq aytilgan: astronomlar, yer o'lchovchilar, me'morlar, hisobchilar va savdogarlar. Shunga mos masalalar berilgan — yer maydonini o'lchash, bino qurilishida material hisoblash, meros taqsimlash.

Asarning eng muhim yangiligi — o'nli kasrlar bilan ishlash usuli. Kitob darslik sifatida tuzilgan: har mavzu qoida va misollar bilan tushuntirilgan. U asrlar davomida Sharq madrasalarida o'qitilgan.$$
 WHERE topic_uz = $$«Miftoh ul-hisob»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Ulug'bek o'zining «Zij» asari muqaddimasida meni «ajoyib olim, dunyodagi eng mashhurlardan biri» deb ta'riflagan.

Hukmdor bo'lsa-da, u ilmiy masalalarda o'zini shogird deb bilardi va bizning fikrimizni hurmat qilardi. Bu ilmiy muhit uchun juda muhim: agar hukmdorning har so'zi to'g'ri deb qabul qilinsa, xato tuzatilmay qoladi.

Otamga yozgan maktublarimda men aynan shuni ta'riflaganman: rasadxonada masalalar ochiq muhokama qilinardi va Ulug'bekning o'zi ham hisob-kitobda qatnashardi. «Zij»ning aniqligi shu erkin muhit natijasidir.$$
 WHERE topic_uz = $$Ustozim kim edi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Xalqaro ma'lumotnomalarda vafot sanam aniq ko'rsatiladi: 1429-yil 22-iyun, Samarqand. O'zbek nashrlarida ba'zan 1430-yil ham uchraydi — bunday farq hijriy sanani milodiy sanaga o'girishda paydo bo'ladi.

Vafotim maktab uchun katta yo'qotish bo'ldi: men rasadxonadagi hisob ishlarining asosiy mutaxassisi edim. Hatto oxirgi asarim — sinus haqidagi risolam ham tugallanmay qolgan va uni Qozizoda Rumiy yakunlagan.

Ishni Qozizoda Rumiy va Ali Qushchi davom ettirgan. Ilmiy loyihada bitta odamga bog'liq bo'lib qolmaslik muhim — shu bois jamoa bo'lib ishlash va bilimni uzatish zarur.$$
 WHERE topic_uz = $$Vafotim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Asosiy yutuqlarim uchta: o'nli kasrlar bilan ishlash usuli, pi sonining o'n olti xonagacha aniq hisobi va bir daraja sinusini topish usuli.

Bu natijalar qog'ozda qolib ketmagan. Pi hisobim qariyb ikki yuz yil davomida dunyodagi eng aniq natija bo'lib turgan; o'nli kasrlar esa keyinchalik butun hisob-kitob usulini o'zgartirgan.

Matematikada natija to'planib boradi: bir olimning topgani ikkinchisi uchun boshlang'ich nuqta bo'ladi. Mening ishlarim Ulug'bek «Zij»iga kirgan, «Zij» esa XVII asrda Yevropada nashr etilib, u yerdagi astronomlarga xizmat qilgan.$$
 WHERE topic_uz = $$Merosim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Koshon shahrida, taxminan 1380-yilda tug'ilganman; «Koshiy» nisbam shu shahar nomidan olingan.

Yoshligim og'ir kechgan: oilamiz kambag'al edi va men muhtojlikda yashaganman. Sharoit 1405-yildan keyin — Shohruh hukmronlik qila boshlagach yaxshilangan; o'shanda men ilm bilan jiddiy shug'ullanish imkoniga ega bo'ldim.

Koshondan Samarqandga ko'chishim ilm markazlari qanday shakllanishini ko'rsatadi: hukmdor sharoit yaratsa, olimlar uzoq yurtlardan ham keladi. Samarqand XV asrda ana shunday markazga aylangan.$$
 WHERE topic_uz = $$Tug'ilgan shahrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$«Ziji Xoqoniy»ni men Samarqandga kelishimdan ancha avval, 1410-yillarda tuzganman va uni Ulug'bekka bag'ishlaganman.

Asarning to'liq nomi uning maqsadini aytib turadi: «Ziji Xoqoniy — Ziji Elxoniyni to'ldirish». Ya'ni men Nosiriddin Tusiy tuzgan mashhur jadvalni tekshirib, undagi noaniqliklarni tuzatganman va yangi hisoblar qo'shganman.

Aynan shu ish menga obro' keltirgan va Ulug'bekning e'tiborini tortgan. Ilmda nom shu tariqa qozoniladi: e'lon qilingan ish boshqa olimlarga yetib boradi va sening imkoniyatingni ko'rsatadi.$$
 WHERE topic_uz = $$«Ziji Xoqoniy» asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Bu asarni 1407-yil 1-martda tugatganman — u mening eng erta ishlarimdan biri.

«Sullam us-samo» — «Osmon narvoni» degani; unda osmon jismlarining o'lchamlari va ular orasidagi masofalar hisoblangan. Hisoblar o'sha davr tasavvuriga — Yer markazda turadi degan qarashga asoslangan va ular bugungi ma'lumotlardan farq qiladi.

Ammo muhimi shundaki, olimlar osmonni o'lchash mumkin deb hisoblagan va buni matematik yo'l bilan qilishga urinishgan. Keyingi avlodlar aynan shu asosda ishlab, aniqroq natijalarga erishgan.$$
 WHERE topic_uz = $$«Sullam us-samo»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Bu ishimni 1424-yilning iyul oyida «Risola al-muhitiyya» — «Aylana haqida risola» nomi bilan tugatganman.

Pi — aylana uzunligining diametriga nisbati; u cheksiz kasr bo'lgani uchun uni faqat taqriban hisoblash mumkin. Men buni ko'pburchak usuli bilan topganman: aylana ichiga va tashqarisiga ko'pburchak chizib, tomonlar sonini har safar ikki barobar oshirganman. Oxirgi ko'pburchagimning tomonlari soni 805 306 368 taga — sakkiz yuz milliondan ortiqqa yetgan.

Natijani men oltmishlik sanoq tizimida to'qqiz xona aniqlikda olganman; bu bugungi o'nlik hisobda o'n olti xonaga to'g'ri keladi. Bu qariyb ikki yuz yil davomida dunyodagi eng aniq hisob bo'lib qolgan.$$
 WHERE topic_uz = $$Pi sonini hisoblashim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$O'nli kasrlar bilan ishlash usulini men «Miftoh ul-hisob» (1427) asarimda batafsil bayon qilganman.

O'nli kasr — vergul bilan yoziladigan son (masalan 3,14). Undan avval kasrlar oddiy kasr shaklida yoki oltmishlik tizimda yozilardi va ular bilan hisoblash noqulay edi. O'nli kasr esa qo'shish va ko'paytirishni butun sonlar kabi osonlashtiradi.

Bu yangilik astronomik hisoblar uchun ayniqsa muhim bo'lgan — u yerda juda aniq qiymatlar kerak. Yevropada o'nli kasrlar keng qo'llanishi esa ancha keyin, XVI asr oxirida boshlangan.$$
 WHERE topic_uz = $$O'nli kasrlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Bu masalani men «Risola al-vatar va-l-jayb» — «Vatar va sinus haqida risola» asarimda yechganman.

Sinus — trigonometriyadagi asosiy kattaliklardan biri; astronomiyada yulduzlar o'rnini hisoblash uchun sinus jadvallari kerak bo'ladi. Bir daraja sinusini aniq topish butun jadvalning aniqligini belgilaydi — qolgan qiymatlar shundan hisoblanadi.

Men uni uchinchi darajali tenglamaga keltirib, ketma-ket yaqinlashtirish usuli bilan yechganman va natijani pi kabi yuqori aniqlikda olganman. Risola vafotim tufayli tugallanmay qolgan — uni Qozizoda Rumiy yakunlagan.$$
 WHERE topic_uz = $$Bir daraja sinusi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Rasadxona 1424-yilda qurila boshlangan va uning ilmiy ishini Ulug'bek menga ishonib topshirgan.

Vazifa kuzatuvlarni tashkil qilish, asboblarni sozlash, natijalarni tekshirish va hisoblarni yuritishni o'z ichiga olardi. Ish muntazam olib borilishi kerak edi: kuzatuv bir kecha o'tkazib yuborilsa, ma'lumotlar qatorida bo'shliq paydo bo'ladi.

Rasadxonaning asosiy natijasi — «Ziji Ko'ragoniy» yulduzlar jadvali. Men uning tugashini ko'rmaganman: jadval 1437-yilda, ya'ni vafotimdan sakkiz yil keyin yakunlangan.$$
 WHERE topic_uz = $$Rasadxona boshlig'i$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Maktublarim rasadxona qurilishi boshlangan 1424-yildan keyin yozilgan va ular bugungacha saqlanib qolgan.

Ularda men Ulug'bek saroyidagi ilmiy hayotni ichkaridan tasvirlaganman: kim nima ustida ishlayotgani, masalalar qanday muhokama qilinishi, Ulug'bekning o'zi hisob-kitobda qanday qatnashishi. Ba'zi olimlarning bilimini ochiq baholaganman ham.

Bu maktublar tarixchilar uchun bebaho manba: rasmiy asar ilmiy natijani yozadi, maktub esa ish qanday olib borilganini ko'rsatadi. Oddiy oilaviy xat asrlar o'tib tarixiy hujjatga aylanishi mumkin.$$
 WHERE topic_uz = $$Otamga maktublarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Ixtiro qilgan asboblarimni 1416-yilda yozilgan «Nuzhat ul-hadoiq» asarimda batafsil ta'riflaganman.

Ulardan biri — «Tabaq ul-manotiq», ya'ni «Qo'shilishlar tabaqasi»; ikkinchisi sayyoralarning osmondagi o'rnini aniqlaydigan asbob. Ular aylanadigan disklar va shkalalardan iborat bo'lib, murakkab hisoblarni mexanik yo'l bilan bajarish imkonini bergan — ya'ni o'ziga xos hisoblash moslamasi edi.

Asarda men asbobni qanday yasash kerakligini ham yozganman, ya'ni uni boshqalar takrorlashi mumkin edi. Bunday asboblar astronomlarning ishini yengillashtirgan: uzun hisob-kitob o'rniga natijani shkaladan o'qish mumkin bo'lgan.$$
 WHERE topic_uz = $$Ixtiro qilgan asbobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Ulug'bek «Zij» muqaddimasida meni «ajoyib olim, dunyodagi eng mashhurlardan biri» deb yozgan.

Muqaddimada odatda muallif o'ziga yordam bergan kishilarni sanab o'tadi — bu ilmiy odob qoidasi va u bugun ham saqlanadi. Hukmdorning o'z olimini nomma-nom eslatishi uning ilmiy mehnatni qadrlaganini ko'rsatadi.

Aynan shu qayd tufayli bugun Ulug'bek maktabida kim ishlagani aniq ma'lum: Qozizoda Rumiy, men va Ali Qushchi. Tarixda ko'p olimning nomi shunday bir jumla tufayli saqlanib qolgan.$$
 WHERE topic_uz = $$Ulug'bekning ta'rifi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');
