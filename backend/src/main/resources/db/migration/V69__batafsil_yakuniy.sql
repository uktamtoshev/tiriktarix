-- «Batafsil» matnlari — Bumin xoqon, Istami xoqon, G'iyosiddin Koshiy
-- va Zebo G'aniyeva. Bu — barcha fakt kartochkalari uchun batafsil matn
-- yozilishini yakunlovchi migratsiya.

-- ================================ BUMIN XOQON ================================

UPDATE fact_cards SET detail_uz = $$Men Turk xoqonligiga asos solgan hukmdorman.

Turk xoqonligi VI asrda vujudga kelgan va u Osiyoning katta qismini qamrab olgan davlat edi. Uning tarixi haqidagi ma'lumotlar Xitoy yilnomalari, keyingi davr turkiy bitiktoshlari va Vizantiya manbalari orqali bizgacha yetib kelgan. Turli xalqlarning yozuvlarini solishtirish tarixni aniqroq tiklash imkonini beradi.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$VI asr o'rtalarida Oltoy va Janubiy Sibirda yashagan turkiy qabilalarni birlashtirganman.

Bunday birlashtirish oson ish emas: har qabilaning o'z boshlig'i, yaylovi va manfaati bor edi. Birlashish uchun umumiy maqsad, kuchli yetakchi va ittifoqchi qabilalarning ishonchi kerak bo'lgan. Tarqoq qabilalar birlashib katta davlat tuzishi tarixda ko'p uchraydi — shu tariqa Kushon, Turk va boshqa saltanatlar vujudga kelgan.$$
 WHERE topic_uz = $$Qabilalar birlashuvi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$552-yilda men «xoqon» deb e'lon qilinganman va shu sana Turk xoqonligining tashkil topgan yili sanaladi.

Bu voqea Xitoy yilnomalarida qayd etilgani uchun sana aniq ma'lum — qadimgi tarix uchun bu kam uchraydigan hol. Xoqonlik tashkil topishi butun mintaqa uchun burilish nuqtasi bo'lgan: yangi kuch paydo bo'lgan va u qo'shni davlatlar — Xitoy, Eron va keyinchalik Vizantiya bilan munosabatga kirishgan.$$
 WHERE topic_uz = $$552-yil$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$«Xoqon» so'zi buyuk hukmdor, podsho degan ma'noni anglatadi.

Bu unvon oddiy qabila boshlig'idan yuqori turadigan darajani bildirgan: xoqon bir necha qabila va xalq ustidan hukmronlik qiladi. Unvon keyinchalik boshqa turkiy davlatlarda ham ishlatilgan. Unvonning qabul qilinishi shunchaki nom o'zgarishi emas edi — u yangi darajadagi davlat tuzilganini e'lon qilish edi.$$
 WHERE topic_uz = $$Xoqon unvoni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Oltoy o'lkasi xoqonligimizning markazi qilib belgilangan.

Oltoy tog'lari qadimdan turkiy xalqlarning vatani hisoblangan; u yerda temir konlari bor edi va temirchilik rivojlangan. Markaz tanlash muhim qaror: u himoyaga qulay, resurslarga yaqin va yo'llar chorrahasida bo'lishi kerak. Keyinchalik xoqonlik hududi kengaygach, boshqaruv sharqiy va g'arbiy qismlarga bo'lingan.$$
 WHERE topic_uz = $$Davlat markazi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Men asos solgan davlat juda tez kengaygan: bir necha yil ichida turklar Sirdaryo bo'ylarigacha yetib borgan.

Bunday tez kengayishning sababi harakatchan otliq qo'shin edi: u uzoq masofani tez bosib o'tardi. G'arbga tomon yurishlarga ukam Istami boshchilik qilgan. Kengaygan davlatni boshqarish esa alohida masala: shu bois hudud sharqiy va g'arbiy qismlarga bo'linib, ular alohida boshqarilgan.$$
 WHERE topic_uz = $$Davlatning kengayishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Turklarning g'arbga tomon yurishlariga ukam Istami boshchilik qilgan.

Unga «yabg'u xoqon» unvoni berilgan — bu xoqondan keyingi eng yuqori daraja. Istami g'arbiy hududlarni boshqargan va u yerda Eron hamda Vizantiya bilan munosabat o'rnatgan. Davlatni aka-uka bo'lib boshqarish o'sha davr uchun oqilona yechim edi: bir kishi shuncha keng hududni nazorat qila olmasdi.$$
 WHERE topic_uz = $$Istami va g'arbiy yurishlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$VI asr oxirida xoqonlik Sharqiy va G'arbiy turk xoqonliklariga bo'lingan.

Buning sababi oddiy: hudud juda keng edi va uni bir markazdan boshqarish qiyin bo'lgan; shu bilan birga sulola ichida hokimiyat uchun kurash ham ta'sir qilgan. G'arbiy xoqonlik bizning yurtimiz hududlarini o'z ichiga olgan. Katta davlatlarning bo'linishi tarixda ko'p takrorlanadigan jarayon.$$
 WHERE topic_uz = $$Xoqonlik taqdiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Qadimgi Xitoy yilnomalarida mening nomim «Tumen» shaklida yozib qoldirilgan.

Bir kishining turli manbalarda turlicha nom bilan uchrashi odatiy hol: har til o'z tovushlariga moslab yozadi. Xitoy yilnomalari qadimgi tarix uchun bebaho manba — ularda voqealar sana bilan qayd etilgan va qo'shni xalqlar haqida batafsil ma'lumot bor. Tarixchilar turli manbalardagi nomlarni solishtirib, bir shaxs haqida gap ketayotganini aniqlaydi.$$
 WHERE topic_uz = $$Xitoy manbalaridagi nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Men turkiy qabilalarga boshchilik qilgan ashina urug'idan chiqqanman.

Ashina — Turk xoqonligining hukmron urug'i; keyingi turkiy davlatlarning hukmdorlari ham shu urug'dan chiqqan deb hisoblangan. Urug'ning kelib chiqishi haqida qadimgi rivoyatlar mavjud, ammo ular tarixiy dalil emas. Muhimi shundaki, ashina nomi turkiy xalqlar tarixida uzoq davom etgan sulola sifatida qolgan.$$
 WHERE topic_uz = $$Ashina urug'i$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Xoqonlik tuzilishidan avval bizning qabilalarimiz Oltoy tog'larida temirchilik bilan shug'ullangan.

Bu muhim tafsilot: temir qazib olish va undan qurol yasash o'sha davrda katta ustunlik bergan. Temir qurol bronza quroldan kuchliroq, temir uzangi va yuganlar esa otliq jangchini barqarorroq qilardi. Hunar davlat qudratining asosi bo'lishi mumkin — bizning holimizda aynan shunday bo'lgan.$$
 WHERE topic_uz = $$Temirchilik hunari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$546-yilda tele qabilalarini o'zimga bo'ysundirib, ularni qo'l ostimga olganman.

Bu xoqonlik tashkil topishidan olti yil oldin bo'lgan va u mening kuchayishimdagi muhim bosqich edi. Tele — turkiy qabilalar guruhi; ular ko'p sonli edi va ularning qo'shilishi mening qo'shinimni sezilarli kuchaytirgan. Katta davlat bir kunda tuzilmaydi — u ana shunday bosqichlardan o'tadi.$$
 WHERE topic_uz = $$Tele qabilalari ustidan g'alabam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Kuchayish yo'lida Xitoydagi G'arbiy Vey davlati bilan do'stona aloqa o'rnatganman.

Bunday ittifoq amaliy hisobga asoslangan: har ikki tomon umumiy raqibga qarshi bir-biriga tayangan. Ittifoq odatda sovg'alar almashish, savdo va qarindoshlik nikohlari bilan mustahkamlanardi. Diplomatiya qadimda ham urush kabi muhim vosita bo'lgan: ba'zi masalalar jangsiz, muzokara orqali hal qilingan.$$
 WHERE topic_uz = $$Vey davlati bilan ittifoq$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Keyinchalik toshlarga o'yib yozilgan mashhur O'rxun bitiklarida mening nomim eslatib o'tilgan.

O'rxun bitiklari — VIII asrda hozirgi Mo'g'uliston hududida qadimgi turkiy yozuvda toshga o'yilgan matnlar. Ularda xoqonlik tarixi, xalqqa qaratilgan murojaat va o'tmish hukmdorlari haqida so'z boradi. Bu bitiklar turkiy xalqlarning eng qadimgi yozma yodgorliklaridan biri va ular XIX asr oxirida o'qib chiqilgan.$$
 WHERE topic_uz = $$O'rxun bitiklarida nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Mendan so'ng taxtga o'g'illarim o'tirgan; ular orasida Muqan xoqon alohida ajralib turadi.

Uning davrida xoqonlik yanada kengaygan va u o'z davrining eng qudratli davlatlaridan biriga aylangan. Ammo katta davlatning uzoq turishi vorislar orasidagi kelishuvga bog'liq bo'ladi: nizo boshlansa, davlat bo'linadi. Turk xoqonligining keyingi tarixi ham shuni ko'rsatgan.$$
 WHERE topic_uz = $$Vorislarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- =============================== ISTAMI XOQON ===============================

UPDATE fact_cards SET detail_uz = $$Men Turk xoqonligida g'arbga tomon yurishlarga boshchilik qilgan hukmdorman.

Akam Bumin xoqon davlatning sharqiy qismini boshqargan, men esa g'arbiy qismni. Bu bo'linish amaliy zarurat edi: xoqonlik hududi juda keng bo'lgan. Mening faoliyatim tufayli turklar Markaziy Osiyoga kirib kelgan va bu mintaqa tarixida yangi davr boshlangan.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Menga «Yabg'u xoqon» degan unvon berilgan.

«Yabg'u» — xoqondan keyingi eng yuqori daraja bo'lib, u odatda hukmron sulolaning yaqin a'zolariga berilardi. Bu unvon menga g'arbiy hududlarni mustaqil boshqarish, muzokaralar olib borish va ittifoqlar tuzish huquqini bergan. Davlat boshqaruvida bunday darajalar tizimi tartib o'rnatgan: kim nima qila oladi va kimga bo'ysunadi.$$
 WHERE topic_uz = $$Unvonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Yurishlarimiz natijasida Yettisuv va Sharqiy Turkistonga tutashgan yerlar xoqonlik tarkibiga kirgan.

Yettisuv — hozirgi Qozog'iston janubi va Qirg'iziston shimolidagi hudud; u yaylovlarga boy va savdo yo'llari chorrahasida joylashgan. Bu yerlarni egallash iqtisodiy jihatdan foydali edi: karvon yo'llari nazorat qilinganda savdodan boj olinardi. Hudud kengayishi ko'pincha aynan savdo yo'llari uchun qilingan.$$
 WHERE topic_uz = $$Sharqiy o'lkalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$555-yildayoq turklar Sirdaryo va Orol dengizi bo'ylarigacha cho'zilgan keng o'lkalarga yetib borgan.

Bu xoqonlik tuzilganidan atigi uch yil keyin bo'lgan — kengayish sur'ati juda tez edi. Sababi harakatchan otliq qo'shin va qo'shni davlatlarning zaifligi. Ammo tez egallangan hududni ushlab turish alohida vazifa: unda mahalliy zodagonlar bilan kelishish, soliq tizimini yo'lga qo'yish va tartib o'rnatish kerak bo'ladi.$$
 WHERE topic_uz = $$Keng o'lkalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Eron shohi Xusrav I Anushervon tashabbusi bilan harbiy ittifoq tuzganman.

Ittifoqning maqsadi umumiy raqib — eftallar davlatiga qarshi kurash edi. Bunday vaqtinchalik ittifoqlar diplomatiyada ko'p uchraydi: ikki tomon umumiy manfaat yo'lida birlashadi, maqsadga erishilgach esa yo'llari ayriladi. Bizning holimizda ham shunday bo'lgan: eftallar yengilgach, biz Eron bilan raqobatga kirishganmiz.$$
 WHERE topic_uz = $$Eron bilan ittifoq$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$563-yilda qo'shinlarimiz eftallar davlati yerlariga kirib, Choch va Samarqand atroflarini egallagan.

Eftallar — V–VI asrlarda Markaziy Osiyoda hukmronlik qilgan davlat. Ular bilan kurash bir necha yil davom etgan. Choch — hozirgi Toshkent vohasining qadimgi nomi. Bu yurishlar natijasida bizning yurtimiz hududi Turk xoqonligi tarkibiga kirgan va bu mintaqa tarixidagi muhim burilish bo'lgan.$$
 WHERE topic_uz = $$Eftallarga qarshi yurish$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$563–567-yillarda eftallar davlati barham topgan va Amudaryoning o'ng qirg'og'idagi yerlar xoqonlik tarkibiga o'tgan.

Davlat hududi shu tariqa Eron bilan chegaradosh bo'lgan. Eftallar davlatining yo'q bo'lishi Markaziy Osiyo tarixidagi katta o'zgarish edi: mintaqada yangi kuchlar muvozanati shakllangan. Bunday o'zgarishlar odatda savdo yo'llari va aholi tarkibiga ham ta'sir qiladi.$$
 WHERE topic_uz = $$Eftallar davlati yakuni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Shundan so'ng turklar Buyuk ipak yo'li karvon savdosida faol qatnasha boshlagan.

Savdo yo'llarini nazorat qilish katta daromad berardi: karvonlardan boj olinar, xavfsizlik ta'minlanardi. So'g'd savdogarlari bu ishda asosiy vositachi bo'lgan va biz ular bilan hamkorlik qilganmiz. Aynan savdo manfaati meni Vizantiyaga elchi yuborishga undagan — maqsad ipakni Eron orqali emas, boshqa yo'ldan sotish edi.$$
 WHERE topic_uz = $$Ipak yo'li savdosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Men Turk xoqonligiga asos solgan Bumin xoqonning ukasiman.

Akam 552-yilda xoqon deb e'lon qilingan va davlatning sharqiy qismini boshqargan; menga g'arbiy qism topshirilgan. Bunday taqsimot ishonchga asoslangan: keng hududni boshqarish uchun yaqin va sodiq odam kerak edi. Aka-uka boshqaruvi davlatning tez kengayishiga imkon bergan.$$
 WHERE topic_uz = $$Akam Bumin xoqon$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$568-yilda so'g'd savdogari Maniax boshchiligidagi elchilarni Vizantiyaga yuborganman.

Elchilikning maqsadi savdo edi: biz ipakni Eron orqali emas, bevosita Vizantiyaga sotmoqchi edik. Elchilar uzoq va xavfli yo'lni bosib o'tgan — Kaspiy va Kavkaz orqali Konstantinopolgacha. Bu voqea Vizantiya tarixchilari asarlarida batafsil yozilgan. Bu Markaziy Osiyo va Yevropa o'rtasidagi eng erta bevosita diplomatik aloqalardan biri sanaladi.$$
 WHERE topic_uz = $$Vizantiyaga elchilik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Javob tariqasida Vizantiya imperatori menga Zemarx boshchiligida elchilar yuborgan.

Zemarx sayohati haqidagi ma'lumot Vizantiya tarixchisi Menandr asarida saqlangan: unda yo'l, qabul marosimi va ko'rgan-bilganlari tasvirlangan. Bunday guvohliklar qimmatli — ular chetdan kelgan odam nigohi bilan yozilgan. Ikki tomonlama elchilik almashinuvi munosabatlarning jiddiy ekanini bildiradi.$$
 WHERE topic_uz = $$Vizantiya elchisi mehmonimda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Eftallar davlati yengilganidan so'ng Amudaryo Turk xoqonligi bilan Eron o'rtasidagi chegara bo'lib qolgan.

Daryolar tabiiy chegara bo'lib xizmat qiladi: ularni kesib o'tish qiyin va ular aniq belgi bo'ladi. Ammo chegara doim barqaror qolavermaydi — tomonlar kuchaygan sayin u siljib turadi. Ittifoqchi bo'lgan ikki davlatning keyinchalik chegara masalasida raqobatga kirishishi tarixda tez-tez uchraydi.$$
 WHERE topic_uz = $$Amudaryo — chegara$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Nomim qadimgi turkiy bitiktoshlarda saqlanib qolgan.

O'rxun daryosi bo'yidagi toshbitiklarda xoqonlik tarixi va uning asoschilari eslatib o'tiladi. Bu yodgorliklar VIII asrda o'yilgan — ya'ni mendan qariyb ikki asr keyin. Ularning qimmati shundaki, bu turkiy xalqlarning o'z tilidagi eng qadimgi yozma manbalari. Ular XIX asr oxirida daniyalik olim Vilhelm Tomsen tomonidan o'qib chiqilgan.$$
 WHERE topic_uz = $$Bitiktoshlarda nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Mendan so'ng xoqonlikning g'arbiy qismini o'g'lim Tardu boshqargan.

Uning davrida g'arbiy qism tobora mustaqil siyosat yurita boshlagan va oxir-oqibat xoqonlik ikkiga bo'lingan. Katta davlatlarning bo'linishi odatda shunday kechadi: qismlar orasidagi masofa uzoq, manfaatlar esa har xil bo'ladi. G'arbiy turk xoqonligi bizning yurtimiz hududlarini o'z ichiga olgan va u bir necha o'n yil hukm surgan.$$
 WHERE topic_uz = $$O'g'lim Tardu$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Men VI asrda yashab o'tganman — bu davrda Turk xoqonligi Osiyoning eng qudratli davlatlaridan biri edi.

O'sha asrda xoqonlik Xitoy, Eron va Vizantiya bilan bir qatorda turgan: bu davlatlar bir-biri bilan savdo qilar, elchi yuborar va ba'zan urushardi. Bizning yurtimiz shu davrda turkiy xalqlar bilan yaqin aloqaga kirgan va bu keyingi asrlardagi til hamda madaniyat rivojiga ta'sir ko'rsatgan.$$
 WHERE topic_uz = $$Yashagan davrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

-- ============================= G'IYOSIDDIN KOSHIY =============================

UPDATE fact_cards SET detail_uz = $$1417-yilda Ulug'bek meni Samarqandga chaqirgan.

O'shanda men allaqachon taniqli matematik va astronom edim — «Ziji Xoqoniy» asarim yozilgan edi. Ulug'bek atrofiga eng yaxshi olimlarni to'plashga intilardi va taklifnomani ilmiy obro'siga qarab yuborardi. Samarqandga ko'chish men uchun katta imkoniyat bo'ldi: u yerda rasadxona qurilishi rejalashtirilayotgan edi.$$
 WHERE topic_uz = $$Samarqandga kelishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Samarqand rasadxonasi loyihasining tashabbuskorlaridan bo'lganman.

Rasadxona qurish oddiy bino qurishdan farq qiladi: unda asboblarning aniq o'lchovi, joyning to'g'ri tanlanishi va meridian yo'nalishining aniq belgilanishi kerak. Bosh asbob — radiusi qariyb 40 metrli sekstant yer ostiga o'rnatilgan, chunki shundagina u zilzila va shamoldan himoyalangan bo'ladi. Bunday loyiha matematik hisobni talab qiladi.$$
 WHERE topic_uz = $$Rasadxona loyihasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Ulug'bek davrasida Qozizoda Rumiy va yosh Ali Qushchi bilan birga ishlaganman.

Bu davra «Ulug'bek maktabi» deb ataladi. Qozizoda Rumiy tajribali ustoz, Ali Qushchi esa eng yosh a'zo edi. Biz kuzatuv natijalarini birga muhokama qilar, hisoblarni bir necha bor tekshirardik. Ilmiy jamoada ishlashning foydasi shundaki, xato tezroq topiladi va har bir fikr sinovdan o'tadi.$$
 WHERE topic_uz = $$Olimlar davrasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$«Miftoh ul-hisob» («Hisob kaliti») asarimni 1427-yilda yakunlaganman.

Bu o'rta asr matematikasining eng yirik asarlaridan biri. Unda arifmetika, algebra, geometriya va amaliy hisob masalalari izchil bayon etilgan: yer maydonini o'lchash, bino qurilishida material hisoblash, meros taqsimlash. Kitob darslik sifatida tuzilgan — har mavzu qoida va misollar bilan tushuntirilgan. U asrlar davomida Sharq madrasalarida o'qitilgan.$$
 WHERE topic_uz = $$«Miftoh ul-hisob»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Ulug'bekning mashhur ustozlaridan biri bo'lganman.

Ulug'bek hukmdor bo'lsa-da, ilmiy masalalarda u o'zini shogird deb bilardi va bizning fikrimizni hurmat qilardi. Bu ilmiy muhit uchun juda muhim: agar hukmdorning har so'zi to'g'ri deb qabul qilinsa, xato tuzatilmay qoladi. Ulug'bek esa bahsga ochiq edi — «Zij» ning aniqligi shu erkin muhit natijasidir.$$
 WHERE topic_uz = $$Ustozim kim edi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$1430-yilda vafot etganman — bu yulduzlar jadvali ustidagi ish qizg'in davom etayotgan payt edi.

Vafotim maktab uchun katta yo'qotish bo'ldi: men rasadxonadagi hisob ishlarining asosiy mutaxassisi edim. Ishni Qozizoda Rumiy va Ali Qushchi davom ettirgan. Ilmiy loyihada bitta odamga bog'liq bo'lib qolmaslik muhim — shu bois jamoa bo'lib ishlash va bilimni uzatish zarur.$$
 WHERE topic_uz = $$Vafotim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Hisob ilmiga oid ishlarim Sharq matematikasi rivojiga xizmat qilgan.

Mening asosiy yutuqlarim — o'nli kasrlar bilan ishlash usuli, pi sonining yuqori aniqlikdagi hisobi va bir daraja sinusini topish usuli. Bu ishlar keyingi olimlar tomonidan davom ettirilgan. Matematikada natija to'planib boradi: bir olimning topgani ikkinchisi uchun boshlang'ich nuqta bo'ladi.$$
 WHERE topic_uz = $$Merosim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Men Koshon shahrida (hozirgi Eron hududida) tug'ilganman; «Koshiy» nisbam shu shahar nomidan olingan.

O'sha davrda olimlar tug'ilgan shahri nomi bilan atalardi. Koshondan Samarqandga ko'chishim ilm markazlari qanday shakllanishini ko'rsatadi: hukmdor sharoit yaratsa, olimlar uzoq yurtlardan ham keladi. Samarqand XV asrda ana shunday markazga aylangan va u yerga turli o'lkalardan olimlar to'plangan.$$
 WHERE topic_uz = $$Tug'ilgan shahrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Samarqandga kelishimdan avval «Ziji Xoqoniy» nomli astronomik jadval tuzganman.

Bu asarda men avvalgi olimlarning jadvallarini tekshirib, ulardagi noaniqliklarni tuzatganman. Aynan shu ish menga obro' keltirgan va Ulug'bekning e'tiborini tortgan. Ilmda nom shu tariqa qozoniladi: e'lon qilingan ish boshqa olimlarga yetib boradi va u sening imkoniyatingni ko'rsatadi.$$
 WHERE topic_uz = $$«Ziji Xoqoniy» asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$«Sullam us-samo» — «Osmon narvoni» degani; unda osmon jismlarining o'lchamlari va ular orasidagi masofalar hisoblangan.

Bunday hisoblar o'sha davr tasavvuriga — Yer markazda turadi degan qarashga asoslangan edi va ular bugungi ma'lumotlardan farq qiladi. Ammo muhimi shundaki, olimlar osmonni o'lchash mumkin deb hisoblagan va buni matematik yo'l bilan qilishga urinishgan. Keyingi avlodlar aynan shu asosda ishlab, aniqroq natijalarga erishgan.$$
 WHERE topic_uz = $$«Sullam us-samo»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Doira haqidagi risolamda pi sonini o'n olti xona aniqlikda hisoblab chiqqanman.

Pi — doira uzunligining diametriga nisbati; u cheksiz kasr bo'lgani uchun uni faqat taqriban hisoblash mumkin. Men buni ko'p burchakli shakllar usuli bilan topganman: doira ichiga va tashqarisiga ko'p tomonli shakl chizib, ularning perimetrini hisoblaganman. Bu natija qariyb ikki yuz yil davomida dunyodagi eng aniq hisob bo'lib qolgan.$$
 WHERE topic_uz = $$Pi sonini hisoblashim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Men o'nli kasrlar nazariyasini mukammal ishlab chiqib, ularni hisob-kitobda keng qo'llaganman.

O'nli kasr — vergul bilan yoziladigan son (masalan 3,14). Undan avval kasrlar oddiy kasr shaklida yozilardi va ular bilan hisoblash noqulay edi. O'nli kasr esa qo'shish va ko'paytirishni butun sonlar kabi osonlashtiradi. Bu yangilik astronomik hisoblar uchun ayniqsa muhim bo'lgan — u yerda juda aniq qiymatlar kerak.$$
 WHERE topic_uz = $$O'nli kasrlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Bir daraja yoyning sinusini juda yuqori aniqlikda hisoblash usulini yaratganman.

Sinus — trigonometriyadagi asosiy kattaliklardan biri; astronomiyada yulduzlar o'rnini hisoblash uchun sinus jadvallari kerak bo'ladi. Bir daraja sinusini aniq topish esa butun jadvalning aniqligini belgilaydi — qolgan qiymatlar shundan hisoblanadi. Men buni ketma-ket yaqinlashtirish usuli bilan topganman va natija o'sha davr uchun misli ko'rilmagan aniqlikda bo'lgan.$$
 WHERE topic_uz = $$Bir daraja sinusi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Ulug'bek Samarqand rasadxonasidagi ishlarni menga ishonib topshirgan.

Bu vazifa kuzatuvlarni tashkil qilish, asboblarni sozlash, olingan natijalarni tekshirish va hisoblarni yuritishni o'z ichiga olardi. Rasadxonada ish muntazam olib borilishi kerak edi: kuzatuv bir kecha o'tkazib yuborilsa, ma'lumotlar qatorida bo'shliq paydo bo'ladi. Bunday tartibni saqlash uchun aniq rejalashtirish talab qilinardi.$$
 WHERE topic_uz = $$Rasadxona boshlig'i$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Samarqanddan Koshondagi otamga maktublar yozib turganman.

Maktublarimda men Ulug'bek saroyidagi ilmiy hayotni, rasadxonadagi ishni va olimlar davrasini tasvirlaganman. Bu maktublar saqlanib qolgan va bugun tarixchilar uchun bebaho manba: ular Ulug'bek maktabi qanday ishlaganini ichkaridan ko'rsatadi. Oddiy oilaviy xat asrlar o'tib tarixiy hujjatga aylanishi mumkin.$$
 WHERE topic_uz = $$Otamga maktublarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Sayyoralarning osmondagi holatini hisoblab beradigan maxsus asbob ixtiro qilganman.

Bu asbob aylanadigan disklar va shkalalardan iborat bo'lib, u murakkab hisoblarni mexanik yo'l bilan bajarish imkonini bergan — ya'ni u o'ziga xos hisoblash moslamasi edi. Bunday asboblar astronomlarning ishini sezilarli yengillashtirgan: har safar uzun hisob-kitob qilish o'rniga natijani shkaladan o'qish mumkin bo'lgan.$$
 WHERE topic_uz = $$Ixtiro qilgan asbobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

UPDATE fact_cards SET detail_uz = $$Ulug'bek o'zining mashhur «Zij» asari muqaddimasida meni hurmat bilan tilga olgan.

Muqaddimada odatda muallif o'ziga yordam bergan kishilarni sanab o'tadi — bu ilmiy odob qoidasi va u bugun ham saqlanadi. Hukmdorning o'z olimini nomma-nom eslatishi uning ilmiy mehnatni qadrlaganini ko'rsatadi. Aynan shu qayd tufayli bugun Ulug'bek maktabida kim ishlagani aniq ma'lum.$$
 WHERE topic_uz = $$Ulug'bekning ta'rifi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'giyosiddin-koshiy');

-- =============================== ZEBO G'ANIYEVA ===============================

UPDATE fact_cards SET detail_uz = $$1923-yilda tug'ilganman; bolaligim og'ir davrga to'g'ri keldi.

O'sha yillarda mamlakat qiyin sharoitda edi. Men yoshligimdan raqsni sevganman va shu yo'lni tanlaganman. Ammo hayotim butunlay boshqacha kechdi: urush boshlanganda men san'atni tashlab, frontga ko'ngilli bo'lib ketdim. Bir avlodning taqdiri ba'zan bitta voqea bilan o'zgaradi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$1937-yilda Toshkentga kelib, filarmoniya qoshidagi xoreografiya to'garagida shug'ullanganman.

O'shanda men o'n to'rt yoshda edim. Raqs ta'limi kundalik uzoq mashqni talab qiladi: cho'zilish, harakat texnikasi, ritmni his qilish. Bu tartib menga keyinchalik frontda ham asqotgan — jismoniy chidam va intizom har qanday sharoitda kerak bo'ladi.$$
 WHERE topic_uz = $$Raqsga oshiqligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$1940-yilda Moskvadagi davlat san'at oliy o'quv yurtining aktyorlik fakultetiga o'qishga kirganman.

Bu katta yutuq edi: u yerga tanlov orqali qabul qilinardi va o'qish jahon darajasidagi ta'lim hisoblanardi. Men aktyorlik mahoratini, sahna nutqini va harakatni o'rganganman. Ammo o'qish uzoq davom etmadi — bir yildan keyin urush boshlandi va men hujjat topshirib, frontga ketdim.$$
 WHERE topic_uz = $$Moskvada aktyorlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Urush boshlanganida birinchilardan bo'lib, ko'ngillilar safida frontga ketganman.

Ko'ngilli — ya'ni chaqiruv bo'yicha emas, o'z xohishi bilan boradigan kishi. O'shanda men o'n sakkiz yoshda edim va ayollar frontga kam olinardi. Bu qaror oson bo'lmagan: men san'at ta'limini yarim yo'lda tashlaganman. Urush yillarida ko'plab yosh o'z rejalaridan voz kechishga majbur bo'lgan.$$
 WHERE topic_uz = $$Frontga ko'ngilli$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Xizmat qilgan polkimda qisqa fursatda mohir mergan — snayper bo'lib yetishganman.

Snayper ishi diqqat, sabr va aniqlikni talab qiladi: masofani, shamolni va nishonning harakatini hisobga olish kerak. Raqs mashqlaridan kelgan chidam va nafas nazorati bu ishda kutilmaganda asqotgan. Urushda ayol jangchilar ko'p bo'lmagan va ular ko'pincha aloqa, tibbiyot yoki snayperlik sohasida xizmat qilgan.$$
 WHERE topic_uz = $$Mohir mergan$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Jangda og'ir yaralanganman va qariyb bir yil davolanib, shifo topganman.

Uzoq davolanish jismonan ham, ruhan ham og'ir kechadi. Yara tuzalgach ham uning izi qolgan. Urushdan qaytgan odamlar ko'pincha avvalgi hayotiga to'liq qaytolmagan — men ham raqsga qaytmadim va boshqa yo'ldan bordim: kino va keyinchalik ilmiy ish bilan shug'ullandim.$$
 WHERE topic_uz = $$Yaralanishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Urushdan so'ng rejissyor Nabi G'aniyevning «Tohir va Zuhra» filmida rol o'ynaganman.

Bu film o'zbek kinosining klassikasi sanaladi; u xalq dostoni asosida suratga olingan. Kinoda o'ynash sahnadan farq qiladi: kamera yaqindan olgani uchun yuz ifodasi va tabiiylik muhim. Urushdan keyingi yillarda kino odamlarga tinch hayotga qaytishda yordam bergan — u go'zallik va ertakni qaytargan.$$
 WHERE topic_uz = $$Kinoda malika roli$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Keyinchalik tarixchi va sharqshunos olima sifatida faoliyat ko'rsatganman.

Sharqshunoslik — Sharq mamlakatlari tarixi, tili va madaniyatini o'rganuvchi fan. Ilmiy ishga o'tish men uchun uchinchi kasb bo'ldi: avval raqqosa, keyin jangchi va aktrisa, so'ng olima. Bunday keskin burilishlar bir avlodning taqdirida uchraydi — urush ko'p odamning hayot yo'lini o'zgartirgan.$$
 WHERE topic_uz = $$Olimalik yo'lim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Hayotligimdayoq meni «jonli afsona» deb atashgan.

Sababi hayotimning g'ayrioddiyligida: o'n sakkiz yoshli raqqosa qiz frontga ketib, snayper va razvedkachi bo'lgan, keyin kinoda o'ynagan va olima bo'lgan. Bunday taqdir kam uchraydi. Ammo men o'zimni afsona deb hisoblamaganman — men shunchaki har bir davrda kerakli ishni qilganman.$$
 WHERE topic_uz = $$Jonli afsona$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Urush yillarida 3-Moskva kommunistik o'qchi diviziyasi safida xizmat qilganman.

Bu bo'linma Moskva mudofaasida qatnashgan. Jang sharoiti og'ir edi: qish qattiq, ta'minot yetishmasdi. Men u yerda snayperlik va razvedka vazifalarini bajarganman. Urush haqida gapirganda uning dahshatini ko'rsatish emas, unda odamlar qanday chidaganini eslash muhimroq.$$
 WHERE topic_uz = $$Moskva himoyasida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Frontda snayperlik kursini tugatib, mergan bo'lib yetishganman.

Kursda o'q otish texnikasi, masofani baholash, niqoblanish va sabr o'rgatilardi. Snayperning ishi ko'p soatlab qimirlamay kutishdan iborat — bu jismoniy va ruhiy chidamni talab qiladi. Menga raqs mashg'ulotlaridan qolgan intizom va nafas nazorati yordam bergan.$$
 WHERE topic_uz = $$Snayperlik kursi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Razvedkachi sifatida front chizig'idan dushman orqasiga o'n olti marta o'tganman.

Razvedka vazifasi — ma'lumot to'plash: dushman qayerda, qancha kuchi bor, qanday harakat qilmoqda. Bu ish jangdan ham xavfliroq, chunki razvedkachi yordamsiz va ko'pincha yolg'iz ishlaydi. To'plangan ma'lumot butun bo'linma uchun hal qiluvchi bo'lishi mumkin edi. Har safar qaytish kafolat emasdi.$$
 WHERE topic_uz = $$Razvedka topshiriqlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Jangovar xizmatlarim uchun Qizil Bayroq ordeni bilan taqdirlanganman.

Bu urush davridagi yuksak jangovar mukofotlardan biri edi. Ammo mukofotdan muhimroq narsa bor: urushdan tirik qaytish va keyingi hayotni qura olish. Ko'p tengdoshim qaytmadi. Men ularning xotirasi uchun ham yashashga va ishlashga harakat qilganman.$$
 WHERE topic_uz = $$Mukofotlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Urush yillari gazetalar jasoratim haqida yozgan va suratim matbuotda bosilgan.

O'sha davrda front gazetalari jangchilar haqida maqolalar chiqarardi — bu boshqalarga ruh berish uchun kerak edi. Yosh o'zbek qizining Moskva yaqinida jang qilishi haqidagi xabar ayniqsa keng tarqalgan. Bu maqolalar bugun tarixiy hujjat bo'lib qolgan: ular o'sha voqealarni tasdiqlaydi.$$
 WHERE topic_uz = $$Matbuot sahifalarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Men uzoq umr ko'rdim: urushdan keyin Moskvada yashadim va 2010-yilda vafot etdim.

Umrim davomida uch kasbni almashtirdim va uchalasida ham izim qoldi. Urush avlodining ko'pchiligi shunday yashagan: ular yoshligini yo'qotgan, ammo keyingi hayotni qurgan. Ular haqida eslash — bu shunchaki tarixni bilish emas, balki og'ir vaziyatda odam nima qila olishini tushunishdir.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Bugun O'zbekistonda men haqimda maqolalar chop etilgan va jasoratim yoshlarga o'rnak sifatida ko'rsatiladi.

Ikkinchi jahon urushida O'zbekistondan 1,5 milliondan ortiq kishi frontga safarbar etilgan va ular orasida ayollar ham bo'lgan. Ularning taqdiri haqidagi ma'lumotlar arxivlardan izlab topilmoqda. Har bir nomni tiklash muhim: urush statistikasi emas, aniq odamlarning hayotidan iborat.$$
 WHERE topic_uz = $$Xotira$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');
