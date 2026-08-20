-- «Batafsil» matnlarini KENGAYTIRISH — 1-to'plam: Anbar Otin va Munis Xorazmiy.
--
-- MUAMMO. V54–V69 migratsiyalarida har bir kartochkaga `detail_uz` yozilgan edi,
-- ammo ularning katta qismida birinchi xatboshi kartochkadagi faktning o'zini
-- takrorlardi («Batafsil» bosilganda bola o'zi hozirgina o'qigan jumlani qayta
-- ko'rardi), qolgan matn esa ko'pincha umumiy mulohazadan iborat edi. Ya'ni
-- tugma bosilardi, lekin YANGI ma'lumot kam qo'shilardi.
--
-- YECHIM. Har bir kartochkada:
--   1) birinchi xatboshi endi faktni takrorlamaydi — u YANGI aniq ma'lumotdan
--      boshlanadi (sana, ism, joy, son, asar nomi);
--   2) uch xatboshi — har birida tekshirilgan mazmun bor;
--   3) umumiy mulohaza («bu muhim», «shunday bo'lgan») o'rniga dalil turadi.
--
-- MANBA. Kartochkadagi `source` o'zgarmaydi. Quyidagi matnlar yozishdan oldin
-- qo'shimcha ravishda quyidagilar bilan solishtirib chiqilgan:
--   Anbar Otin — uz.wikipedia.org «Anbar otin Farmonqul qizi»; ziyouz.uz ru
--     bo'limi «Анбар-атын (1870-1915)»; ru.wikipedia.org «Анбар Атын».
--   Munis    — uz.wikipedia.org «Munis Xorazmiy»; saviya.uz «Munis Xorazmiy
--     (1778-1829)».
--
-- IXTILOF (metodist-tarixchi tasdig'i kerak). Anbar Otinning vafot yili
-- manbalarda ikki xil: 1906 (ziyouz.uz o'zbekcha bo'limi, bazadagi fakt) va
-- 1915 (uz.wikipedia, ziyouz.uz ruscha bo'limi). Matnda ikkala sana ham ochiq
-- aytilgan — to'qib qo'yish o'rniga ixtilofning o'zi aytilgan.

-- ================================= ANBAR OTIN =================================

UPDATE fact_cards SET detail_uz = $$Qo'qonda, hunarmand oilasida dunyoga kelganman. Otam Farmonqul asli marg'ilonlik bo'lib, kosiblik bilan kun ko'rgan; onam Ashurbibi ham hunarmand oilasidan edi.

Men tug'ilgan yillarda Qo'qon xonligi hali mavjud, ammo mustaqil emas edi: 1868-yildagi shartnomadan keyin u Rossiya imperiyasiga qaram bo'lib qolgan. Xonlik 1876-yilda butunlay tugatilib, uning yerlari Farg'ona viloyati deb atalgan — o'shanda men olti yoshda edim.

Qo'qon Farg'ona vodiysining eng yirik shahri va adabiy markazi edi. Mendan avval bu yerda Uvaysiy va Nodira ijod qilgan, men yashagan davrda esa Muqimiy, Furqat va Zavqiy she'r yozardi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Otam Farmonqul shoira Uvaysiyning jiyani bo'lgan — ya'ni oilamiz mashhur shoira bilan qarindosh edi. Onam Ashurbibi Qo'qonlik hunarmand oilasidan.

Otam Marg'ilondan Qo'qonga ko'chib kelgan va kosiblik qilgan. Oilamiz badavlat emasdi; men kambag'allikni kitobdan emas, o'z hayotimdan bilganman. Aynan shu tajriba she'rlarimning ijtimoiy yo'nalishini belgilagan: men saroy shoirasi emas, mahalla shoirasi bo'lganman.

Turmush o'rtog'im Zohidxo'ja adabiyotga qiziqqan kishi edi va Muqimiy, Furqat, Zavqiy qatnashadigan adabiy davralarga borib turardi. Shu tariqa Qo'qonning shoirlar davrasi bizning uyimizga ham yaqin bo'lgan.$$
 WHERE topic_uz = $$Oilam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Yetti yoshimdan mahallamizdagi Dilshod otin maktabiga qatnay boshlaganman.

Ustozim Dilshod otin bilimdon ayol bo'lib, o'zi ham she'r yozgan — uning taxallusi «Barno» edi. Maktabda savod, o'qish-yozuv, aruz vazni va mumtoz shoirlar she'rlari o'rgatilardi. Dars ustozning uyida o'tardi.

O'sha davrda Turkistonda qizlar uchun davlat maktabi yo'q edi, shuning uchun bilim faqat ana shunday uy maktablari — otin oyilar orqali berilardi. Yangi usuldagi maktablar o'lkamizda men voyaga yetganimdan keyin, 1890-yillardan boshlab ochila boshlagan.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$«Otin» yoki «otin oyi» — qizlarga ta'lim beruvchi bilimli ayolga beriladigan nom. Bu taxallus emas, kasb va martaba nomi edi.

Ustozim Dilshod ham shu nom bilan atalgan, men ham o'z navbatimda mahallamdagi qizlarga saboq berib, «otin» bo'lganman. Ta'lim shu zanjir orqali uzatilgan: bir otin o'z shogirdlaridan yangi otin yetishtirardi.

Otin oyi maktabi rasmiy ta'lim tizimiga kirmagan, ammo Turkistonda qizlar uchun yagona imkoniyat bo'lgan va ayollar orasida savodxonlikni asrlar davomida saqlab qolgan. Uvaysiy, Dilshod va men — uchalamiz ham shu an'anadan chiqqanmiz.$$
 WHERE topic_uz = $$«Otin» nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Manbalarda mening yuzdan ortiq asarim tilga olinadi; ular ikki tilda — o'zbek va tojik tillarida yozilgan.

O'zbekcha she'rlarimdan 1905-yilda devon tuzganman. Tojik tilidagi g'azallarimni ham alohida to'plamga jamlash niyatim bo'lgan, ammo bu to'plamning taqdiri noma'lum — u bizgacha yetib kelmagan.

Qo'qonda va butun Farg'ona vodiysida bu ikki til yonma-yon yashardi: bir mahallada ikkalasi ham eshitilardi. Ikki tilda ijod qilish bizning adabiyotimizda uzoq an'ana — Navoiy ham turkiy va forsiy tillarda yozgan.$$
 WHERE topic_uz = $$Tillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Devonimga qanday she'rlar kirganini manbalar aniq sanab beradi: 41 g'azal, 4 muxammas, bir qit'a va bir mustazod. Jami o'zbekcha she'rlarim qirq sakkiztaga yaqin deb hisoblanadi.

Devonni 1905-yilda tuzganman — bu umrimning oxirgi yillari edi. Devon tuzish shoir uchun yakun yasashdek: yozganlarini saralaydi, tartibga soladi va bir kitobga jamlaydi.

Merosim shu bilan tugamagan. 1970-yillarda yana bir qo'lyozma topilgan: unda qirqqa yaqin she'rim, «Qarolar falsafasi» risolam va 160 misradan iborat yakka baytlarim bor edi. Ya'ni vafotimdan ko'p yil o'tib ham she'rlarim topilishda davom etgan.$$
 WHERE topic_uz = $$Devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Zamondoshlarim Muqimiy, Furqat va Zavqiy ham shu yo'ldan borgan: ular ham hajv yozib, adolatsizlikni ochiq tanqid qilgan. Men ular bilan bir shaharda va bir davrda yashaganman.

Bu mendan oldingi shoiralardan farqli jihat: Nodira va Uvaysiy asosan ishq va falsafiy mavzularda yozgan. Men esa atrofimda ko'rgan hayotni — kambag'allik, mehnat va ayollarning og'ir ahvolini yozganman. Sababi oddiy: men saroyda emas, oddiy mahallada yashaganman.

Bunday she'rlar menga qimmatga tushgan. Manbalarda yozilishicha, hajvimdan norozi bo'lgan badavlat kishilar meni qattiq kaltaklashgan va baland joydan itarib yuborishgan; ikkala oyog'im singan. Shundan keyin sog'ligim tuzalmagan.$$
 WHERE topic_uz = $$She'rlarim mavzusi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Men ham shoira, ham o'qituvchi bo'lganman — ya'ni ma'rifat haqida faqat yozib qolmay, uni har kuni o'z qo'lim bilan tarqatganman.

She'rlarimda bilim odamning ahvolini o'zgartira oladigan kuch sifatida ko'rsatiladi; jaholat esa kambag'allik va adolatsizlikning sababi deb qaraladi. Bu qarash keyinchalik jadidlar harakatining ham asosiy g'oyasi bo'lgan.

Men yashagan davrda Turkistonda yangi usuldagi maktablar endigina yoyila boshlagan edi. Ya'ni men ma'rifat haqida o'sha harakat kuchayishidan avvalroq yozganman — mendan keyingi avlod bu ishni butun o'lka miqyosida davom ettirgan.$$
 WHERE topic_uz = $$Ilm-ma'rifat$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Bu asarim she'r emas, nasrda yozilgan risola — mening ijodimdagi yagona yirik nasriy ish.

«Qarolar» bu yerda kambag'al, mehnati bilan kun ko'radigan odamlarni bildiradi. Risolada ayollarning og'ir taqdiri va jamiyatdagi tengsizlik haqida so'z yuritiladi. Ayol muallifning bunday mavzuda ochiq yozishi o'sha davr uchun jasorat edi.

Risolaning matni uzoq vaqt noma'lum bo'lib turgan. U 1970-yillarda topilgan qo'lyozma tarkibidan chiqqan — o'sha daftarda qirqqa yaqin she'rim ham bor edi. Agar u topilmaganida, bu asar haqida bugun hech narsa bilmagan bo'lardik.$$
 WHERE topic_uz = $$«Qarolar falsafasi»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Umrimning so'nggi yillari kasallik bilan o'tgan. Hajviy she'rlarim uchun meni kaltaklashgan, ikkala oyog'im singan; keyin o'pka kasaliga chalinganman va o'rin egallab qolganman.

Vafot yilim haqida manbalar bir xil emas: bir qismida 1906-yil, boshqalarida 1915-yil ko'rsatiladi. Tarixda bunday hol tez-tez uchraydi — hujjat saqlanmagan bo'lsa, sana turlicha yoziladi. Shuning uchun kitoblarda ba'zan «1870–1906», ba'zan «1870–1915» deb bitiladi.

Qaysi sana to'g'ri bo'lishidan qat'i nazar, umrim uzoq bo'lmagan. Ortimda devon, nasriy risola va shogirdlarim qolgan; she'rlarim qo'lyozma holida saqlanib, keyingi avlodlarga yetib kelgan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Ustozim Dilshod otinning taxallusi «Barno» edi — u nafaqat o'qituvchi, balki o'z davrining taniqli shoirasi ham bo'lgan.

U uzoq umr ko'rgan va o'nlab yillar davomida Qo'qonda qizlarga saboq bergan. Ustozim o'z zamondoshlari haqida yozib ham qoldirgan: bugun Uvaysiy va boshqa shoiralar haqidagi ba'zi ma'lumotlar aynan uning yozuvlaridan olingan. Ya'ni u bir vaqtning o'zida ham muallim, ham xotira yozuvchisi bo'lgan.

Men uning maktabiga yetti yoshimdan qatnaganman. Ustozim menga she'riyat qoidalarini, aruz vaznini va mumtoz shoirlar ijodini o'rgatgan, iqtidorimni sezib qo'llab-quvvatlagan.$$
 WHERE topic_uz = $$Ustozim Dilshod otin$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Navoiyni men o'zimning asosiy ustozim deb bilganman — garchi u mendan to'rt asr avval yashagan bo'lsa ham.

Ro'yxatdagi shoirlar turli davr va tillardan: Navoiy — turkiy she'riyatning ustuni, Fuzuliy — XVI asrda yashagan ozarbayjon shoiri, Bedil esa Hindistonda tug'ilib fors tilida yozgan mutafakkir. Bedil asarlari bizning o'lkamizda shu qadar mashhur bo'lganki, ularni birga o'qish va sharhlash uchun maxsus «bedilxonlik» majlislari o'tkazilgan.

Uvaysiy va Nodira esa mening yurtdoshlarim. Uvaysiy bilan oilamiz qarindosh ham bo'lgan: otam uning jiyani edi.$$
 WHERE topic_uz = $$Sevimli shoirlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Bu an'ana men uchun faqat adabiy meros emas, qon-qarindoshlik ham edi: otam Farmonqul shoira Uvaysiyning jiyani bo'lgan.

An'ana ustoz-shogird zanjiri orqali uzatilgan. Uvaysiy Qo'qon saroyida Nodiraga yaqin bo'lgan va unga ustozlik qilgan, Dilshod otin ularning izidan borgan, men esa Dilshod otindan o'qiganman. Shu tariqa ayollar ijodi bir necha avlod davomida uzilmay davom etgan.

Har birimizning ovozimiz boshqacha edi: Nodira — malika va saroy shoirasi, Uvaysiy — saroyga yaqin bilimdon ayol, men esa mahallada yashagan o'qituvchi. Shuning uchun mavzularimiz ham har xil bo'lgan.$$
 WHERE topic_uz = $$Shoiralar an'anasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Men yashagan davrda Qo'qonda Muqimiy (1850–1903), Furqat (1859–1909) va Zavqiy (1853–1921) ijod qilgan — uchalasi ham ijtimoiy mavzuda va hajv janrida yozgan.

Turmush o'rtog'im Zohidxo'ja shu shoirlar qatnashadigan adabiy majlislarga borib turardi, ya'ni ularning she'rlari bizning uyimizga ham yetib kelardi. Shaharda madrasalar, kutubxonalar va muntazam she'riy davralar bor edi.

Qo'qonning adabiy an'anasi undan ancha avval boshlangan: XIX asr boshida «Amiriy» taxallusi bilan she'r yozgan Umarxon saroyida katta shoirlar davrasi to'plangan va Nodira ham shu davraning markazida bo'lgan.$$
 WHERE topic_uz = $$Qo'qon adabiy muhiti$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Marg'ilon — Farg'ona vodiysining eng qadimgi shaharlaridan biri, ipakchilik va hunarmandchilik markazi. Otam Farmonqul shu shahardan.

Bu tasodifiy tafsilot emas: shoira Uvaysiy (1781–1845) ham marg'ilonlik edi va otam uning jiyani bo'lgan. Ya'ni oilamiz she'riyat an'anasini Marg'ilondan Qo'qonga olib kelgan.

Marg'ilon Qo'qondan uzoq emas. O'sha davrda odamlar ish va turmush sharoitiga qarab shaharlar orasida ko'chib yurardi; otamning Qo'qonga kelishi mening taqdirimni belgilagan.$$
 WHERE topic_uz = $$Otamning ona yurti$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Mumtoz she'riyatda taxallus g'azalning oxirgi baytida — maqta'da keltirilardi; shoir shu tariqa she'r ostiga «imzo» qo'yardi. Mening baytlarimda «Anbar» so'zi turadi.

«Anbar» — xushbo'y modda nomi va Sharq she'riyatida go'zallik ramzi. Ko'p shoir o'ziga alohida taxallus o'ylab topgan, men esa o'z ismimni qoldirganman.

«Otin» esa taxallus emas — u o'qituvchilik martabasini bildiradigan nom. Shuning uchun to'liq nomim «Anbar Otin Farmonqul qizi» tarzida yoziladi: ismim, kasbim va otamning nomi.$$
 WHERE topic_uz = $$Taxallusim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

UPDATE fact_cards SET detail_uz = $$Merosimning katta qismi men vafot etganimdan keyin, ancha kech topilgan. 1970-yillarda qirqqa yaqin she'rim, «Qarolar falsafasi» risolam va 160 misralik yakka baytlarim jamlangan qo'lyozma aniqlangan.

Qo'lyozmalar kutubxona xazinalarida saqlanadi; ular ustida matnshunos olimlar ishlagan — eski yozuvni o'qish, turli nusxalarni solishtirish va nashrga tayyorlash katta mehnat talab qiladi.

Bugun she'rlarim kitob holida chop etilgan, ijodim adabiyot darslarida o'rganiladi, Qo'qonda nomim bilan atalgan joylar bor.$$
 WHERE topic_uz = $$She'rlarimning bugungi taqdiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'anbar-otin');

-- =============================== MUNIS XORAZMIY ===============================

UPDATE fact_cards SET detail_uz = $$1778-yilning mart oyida, Xiva yaqinidagi Qiyot qishlog'ida tug'ilganman. To'liq ismim — Shermuhammad Amir Avazbiy o'g'li; onam nayman urug'idan edi.

Otam Amir Avazbiy mirob unvoniga ega bo'lgan. Mirob — sug'orish tarmoqlarini boshqaruvchi mansabdor; Xorazmda bu juda mas'uliyatli vazifa, chunki butun dehqonchilik kanallardan keladigan suvga bog'liq.

Bu ish oilamizda avloddan avlodga o'tgan: keyinchalik men ham, jiyanim Ogahiy ham shu vazifani bajarganmiz. Qiyot Xivaga yaqin bo'lgani uchun poytaxt hayoti va saroy odamlari bizga begona emasdi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Otam vafot etgach, 1800-yil atrofida meni Avaz Muhammad Inoq saroyga farmonnavis kotib etib tayinlagan.

Farmonnavis — hukmdor farmonlarini yozadigan kotib. Bu ish chiroyli xat, aniq til va hujjat tuzish qoidalarini bilishni talab qilardi. Men saroyda uch hukmdor — Avaz Muhammad Inoq, Eltuzarxon va Muhammad Rahimxon I davrida xizmat qilganman.

Saroyda ishlash menga davlat ishlarini ichkaridan ko'rish va arxiv hujjatlaridan foydalanish imkonini bergan. Keyinchalik tarixiy solnoma yozganimda aynan shu hujjatlar asosiy manba bo'lgan: men voqealarni eshitib emas, yozma dalil asosida bayon qilganman.$$
 WHERE topic_uz = $$Saroy xizmatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Ilk devonimni 1804–1805-yillarda tuzganman, so'ng uni 1815–1820-yillarda kengaytirganman. Ya'ni devon bir marta yozib qo'yilmagan — men unga umrim davomida qaytganman.

Devondagi she'rlar qofiya harfiga qarab joylashtiriladi: har harf uchun alohida bo'lim bo'ladi. Devonimga g'azal, muxammas, qasida, ruboiy va qit'alar kirgan.

Devon tuzish shoir uchun jiddiy bosqich: tarqoq she'rlar yo'qoladi, devonga kirgani esa ko'chiriladi va saqlanadi. Aynan shu tartib tufayli she'rlarim ikki asrdan keyin ham o'qilmoqda.$$
 WHERE topic_uz = $$Ilk devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$«Savodi ta'lim»ni 1804-yilda yozganman — bu ilk devonim bilan bir yilda yaratilgan asar.

Unda husnixat qoidalari bayon etilgan: qalamni qanday yo'nish va tutish, harflarning o'lchovi, siyoh va qog'oz tanlash. Asar she'riy shaklda yozilgan, chunki nazm yodlashni osonlashtiradi — o'quvchi qoidani vazn bilan birga eslab qoladi.

O'sha davrda bosmaxona yo'q edi va har bir kitob qo'lda ko'chirilardi. Shuning uchun chiroyli va aniq yozish oddiy ko'nikma emas, balki kasb hisoblangan. Men o'zim ham xattot bo'lganman va bu asarni amaliyotdan bilib yozganman.$$
 WHERE topic_uz = $$«Savodi ta'lim»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Asar besh bobdan iborat bo'lib, unda voqealar eng qadimgi zamonlardan boshlab 1813-yilgacha bayon etilgan. Ya'ni bu shunchaki xonlik solnomasi emas, umumiy tarixdan Xorazm tarixiga o'tuvchi kitob.

Eltuzarxon menga bu vazifani 1806-yilda topshirgan. Asarda qo'ng'irotlar sulolasining kelib chiqishi, Xorazmning qadimgi tarixi va o'z ko'zim bilan ko'rgan voqealar yozilgan. Saroy kotibi bo'lganim uchun men hujjatlardan bevosita foydalanganman.

Asarni tugatishga ulgurmaganman — ishni jiyanim va shogirdim Ogahiy davom ettirgan. Bugun «Firdavs ul-iqbol» Xiva xonligi tarixini o'rganishdagi asosiy birlamchi manbalardan biri sanaladi.$$
 WHERE topic_uz = $$«Firdavs ul-iqbol»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$«Munis ul-ushshoq» — «Oshiqlarning do'sti» degani; bu nomda mening taxallusim ham yashiringan.

Devonga yigirma mingdan ortiq misra she'r jamlangan — bunday hajm yigirma yildan ortiq muntazam mehnat natijasidir. Ichida g'azal, muxammas, musaddas, qasida, ruboiy va qit'alar bor.

Devonim 1880-yilda Xivada toshbosmada chop etilgan — bu men vafot etganimdan yarim asr keyin. Xivadagi toshbosma Muhammad Rahimxon Feruz homiyligida ishlagan va u O'rta Osiyodagi birinchi litografiyalardan edi.$$
 WHERE topic_uz = $$Katta devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Mirxondning «Ravzat us-safo» asari — fors tilida yozilgan ko'p jildli umumiy tarix; unda dunyo tarixi eng qadimgi davrlardan boshlab bayon qilinadi.

Men uni 1819-yilda turkiy tilga o'gira boshlaganman va faqat birinchi jildini tugatishga ulgurganman. Tarjima asl asarni yozishdan kam mehnat emas: har atamaga muvofiq so'z topish, jumla tuzilishini o'zgartirish kerak bo'ladi.

Ishni jiyanim Ogahiy davom ettirgan va tarjimani oxiriga yetkazgan. Shu tariqa fors tilidagi katta tarix asari o'zbek o'quvchisiga ochilgan: asl nusxani faqat fors tilini bilgan kishi o'qiy olardi.$$
 WHERE topic_uz = $$Tarjimam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Ogahiy (1809–1874) mening jiyanim va shogirdim edi; u mening tarbiyamda o'sgan.

Men vafot etganimdan keyin u miroblik vazifasini ham, ilmiy ishni ham qabul qilib olgan: «Firdavs ul-iqbol»ni yakunlagan, «Ravzat us-safo» tarjimasini tugatgan. Bundan tashqari u o'zi oltita tarixiy asar yozgan va yigirmaga yaqin kitobni fors tilidan tarjima qilgan.

Bunday davomiylik tarixda kam uchraydi: odatda muallif vafot etsa, tugallanmagan asar shundayligicha qoladi. Bizning holimizda esa ustoz boshlagan ishni shogird oxiriga yetkazgan — shuning uchun meros yo'qolmagan.$$
 WHERE topic_uz = $$Davomchim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$1829-yilda tug'ilgan qishlog'im Qiyotda vafot etganman; manbalarga ko'ra o'lim sababi vabo kasalligi bo'lgan. O'shanda men ellik bir yoshda edim.

O'sha yili qo'limda ikkita tugallanmagan ish qolgan: «Firdavs ul-iqbol» solnomasi va «Ravzat us-safo» tarjimasi. Ikkalasini ham Ogahiy yakunlagan.

Ortimda qolgan meros — yigirma mingdan ortiq misradan iborat devon, tarixiy solnoma, tarjima va «Savodi ta'lim» o'quv asari. Bularning barchasi saroy kotibligi va miroblik vazifasi bilan bir vaqtda bajarilgan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Taxallus mumtoz she'riyatda majburiy edi: u g'azalning oxirgi baytida keltirilib, muallifni bildirardi. Muqovasi yo'q qo'lyozmada she'r kimniki ekanini aynan shu so'z ko'rsatardi.

«Munis» — «yaqin do'st, hamdam» degani. Katta devonimning nomi ham shu so'zdan yasalgan: «Munis ul-ushshoq», ya'ni «oshiqlarning do'sti».

Xorazm shoirlarida ma'noli taxallus tanlash odati kuchli bo'lgan: Ogahiy — «ogoh», ya'ni xabardor, zukko; Feruz — «baxtli»; Komil — «yetuk»; Tabibiy — «tabib». Taxallus shoirning o'zi haqidagi qisqa ta'rifi edi.$$
 WHERE topic_uz = $$Taxallusim ma'nosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Miroblik oilamizning merosiy vazifasi edi: otam Amir Avazbiy mirob bo'lgan, men undan keyin, Ogahiy esa mendan keyin bu ishni bajargan.

Mirob kanallarni tozalash ishlarini tashkil qilar, suvni yerlar orasida taqsimlar va nizolarni hal qilardi. Xorazmda dehqonchilik butunlay Amudaryodan chiqarilgan kanallarga bog'liq: kanalni loyqa bosib qolsa, butun mavsum yo'qoladi.

Bu ish odamlar bilan doimiy muloqotni talab qilardi va shoir hamda tarixchi uchun foydali bo'lgan: men xalq hayotini kitobdan emas, dala ustida ko'rganman.$$
 WHERE topic_uz = $$Miroblik vazifam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Xattotlik menda faqat hunar emas edi — men boshqa kotiblar ko'chirgan matnlarni tekshirib, xatolarini tuzatganman ham.

Qo'lda ko'chirishda xato muqarrar: harf tushib qoladi, so'z noto'g'ri o'qiladi va keyingi nusxaga o'tadi. Shuning uchun ko'chirilgan kitobni asl nusxa bilan solishtirib chiqish alohida ish hisoblangan.

Xattot qalamni o'zi yo'nardi, siyohni o'zi tayyorlardi; har harfning o'lchovi, qiyaligi va ulanishi qoidaga bo'ysunardi. Bu qoidalarni men «Savodi ta'lim» asarimda yozib qoldirganman.$$
 WHERE topic_uz = $$Xattotligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Xiva madrasalarida arab va fors tillarini o'rganganman; bu tillarsiz na mumtoz adabiyotni o'qish, na tarix hujjatlarini tushunish mumkin edi.

Madrasada mumtoz adabiyot, mantiq, aruz vazni va diniy fanlar o'qitilardi. Aruz — she'r vaznlari tizimi; uni bilmasdan g'azal yozib bo'lmaydi. Keyinchalik men shu bilimni «Savodi ta'lim» asarimda o'z shogirdlarimga uzatganman.

Fors tilini bilishim menga eng katta ishimni — Mirxond «Ravzat us-safo»sining tarjimasini boshlash imkonini bergan. Ya'ni madrasada olingan til bilimi keyinchalik butun bir kitobga aylangan.$$
 WHERE topic_uz = $$Tahsilim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$She'rlarimni turkiy — eski o'zbek tilida yozganman, garchi fors tilini erkin bilsam ham. Bu ongli tanlov edi.

Tanlovim Navoiy an'anasining davomi: u ham turkiy tilda yozib, bu tilning she'riyat uchun forsiydan kam emasligini isbotlagan. Men undan qariyb uch asr keyin yashaganman va uning yo'lini davom ettirganman.

Fors tilini esa boshqa ishda qo'llaganman — tarjimada. Ya'ni ikkala til ham menga kerak bo'lgan: biri yozish uchun, ikkinchisi o'qish va o'girish uchun.$$
 WHERE topic_uz = $$Ijod tilim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Navoiy 1501-yilda vafot etgan, men esa 1778-yilda tug'ilganman — orada qariyb uch asr bor. Shunga qaramay men uni o'zimga ustoz deb bilganman.

Mumtoz she'riyatda ustozga ergashishning aniq shakli bor edi: shoir avvalgi ustaning g'azalini olib, uning vazni va qofiyasida o'z g'azalini yozardi. Bunday she'r «javob» yoki «nazira» deb ataladi. Bu taqlid emas — bu ochiq bellashuv va mahoratni charxlash usuli.

Navoiy ta'siri mening ijodimda vazn, obrazlar va ona tiliga munosabatda ko'rinadi. Xorazm shoirlari orasida bu an'ana kuchli bo'lgan: mendan keyin Ogahiy ham, Feruz ham shu yo'ldan borgan.$$
 WHERE topic_uz = $$Ustozim Navoiy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Asarlarim Toshkentdagi Abu Rayhon Beruniy nomidagi Sharqshunoslik instituti qo'lyozmalar xazinasida saqlanadi — bu jahondagi eng yirik sharq qo'lyozma to'plamlaridan biri.

Qo'lyozma bilan ishlash alohida ilm: eski yozuvni o'qish, bir asarning turli nusxalarini solishtirish, farqlarni qayd etish va ishonchli matnni tiklash kerak. Bir asarning o'nlab nusxasi bo'lishi va har birida farq uchrashi mumkin.

«Munis ul-ushshoq» devonim 1880-yilda toshbosmada chop etilgan, mustaqillik yillarida esa asarlarim zamonaviy alifboda nashr qilingan. Shu tariqa ular qo'lyozma xazinasidan chiqib, keng o'quvchiga yetib borgan.$$
 WHERE topic_uz = $$Qo'lyozmalarim bugun$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munis-xorazmiy');
