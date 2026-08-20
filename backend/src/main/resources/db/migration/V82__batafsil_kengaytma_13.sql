-- «Batafsil» matnlarini KENGAYTIRISH — 13-to'plam: Zardusht va Kanishka.
--
-- MANBA. V79–V81 qoidasi saqlanadi: TASHQI manba ishlatilmagan. Matnlar
-- bazadagi tekshirilgan kartochkalardan yig'ilgan — shu qahramonning boshqa
-- kartochkalari, Beruniy va Ipak yo'li bilan bog'liq kartochkalar, hamda
-- atama izohlari (otashkada, stupa, nisba, tanga, bitiktosh).
-- Yangi sana, ism yoki raqam qo'shilmagan.
--
-- ALOHIDA E'TIBOR. Zardusht kartochkalarida sana noaniqligi ochiq aytilgan:
-- matnda nima uchun aniq yil yo'qligi va olimlar davrni qanday belgilashi
-- tushuntirilgan. «Xorazm bilan bog'liqlik» kartochkasida esa bu masala hali
-- yopilmagan ilmiy bahs ekani qayd etilgan.

-- ==================================== ZARDUSHT ====================================

UPDATE fact_cards SET detail_uz = $$Bir odamning uch xil nomi bo'lishi tilning tabiiy hodisasi: har bir til begona ismni o'z tovush tizimiga moslashtiradi.

«Zaratushtra» — asl shaklga eng yaqin variant; «Zoroastr» — yunoncha shakli; «Zardusht» esa bizning tilimizda o'rnashgan nom.

Bir nomning uch shakli ta'limotim qanchalik keng tarqalganini ko'rsatadi: u haqda ham Sharqda, ham Yunonistonda yozganlar.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Aniq sana ma'lum emas va bu tabiiy: men yozuv keng tarqalishidan avvalgi davrda yashaganman.

Olimlar davrni bilvosita belgilaydi — tilni tahlil qilib. «Avesto»ning eng qadimgi qismi juda arxaik tilda bitilgan va shu til qachon ishlatilganiga qarab davr taxmin qilinadi.

Shuning uchun kitoblarda keng oraliq beriladi. Tarixda qanchalik uzoqqa borsak, sanalar shunchalik noaniq bo'ladi — bu kamchilik emas, halollik belgisi.$$
 WHERE topic_uz = $$Yashagan davrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Bu masala olimlar orasida bahsli va uning yechimi bitta dalilga emas, bir necha belgiga tayanadi.

Asosiy dalil — tabiat tasviri: «Avesto»da tilga olinadigan daryolar, o'simliklar va iqlim janubiy o'lkalarga emas, aynan shu mintaqaga mos keladi.

Shu bois ko'plab olim eng qadimgi qismlar Xorazm vohasida vujudga kelgan deb hisoblaydi. Ammo boshqa qarashlar ham bor — bu hali yopilmagan ilmiy bahs.$$
 WHERE topic_uz = $$Xorazm bilan bog'liqlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$O'ttiz yosh ko'p an'anada yetuklik yoshi hisoblanadi: bu davrga kelib odam ham bilim, ham hayot tajribasiga ega bo'ladi.

Bu ma'lumot rivoyatga tayanadi va uni hujjat bilan tasdiqlab bo'lmaydi — kartochkada ham shunday deb yozilgan.

«Payg'ambar» so'zining ma'nosi esa ta'limotimning mohiyatini ochadi: xabar beruvchi, ya'ni odamlarga ezgu amal haqida aytuvchi kishi.$$
 WHERE topic_uz = $$Payg'ambarlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Uchta qoidaning tuzilishi diqqatga sazovor: ular fikrdan boshlanib, so'z orqali amalga o'tadi.

Tartib bejiz emas. Avval odam nimanidir o'ylaydi, keyin uni aytadi, so'ng bajaradi. Ya'ni ezgulik ichkaridan boshlanadi.

Bunday qisqa va yodda qoladigan qoida ta'limotning keng tarqalishiga yordam bergan: uni yozuvni bilmagan odam ham eslab qolardi.$$
 WHERE topic_uz = $$Bosh qoida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$To'rt unsur — olov, suv, tuproq va havo — insonning yashashi uchun zarur narsalar. Ularni muqaddas deb bilish amalda tabiatni asrashga o'rgatgan.

Bu shunchaki e'tiqod emas edi: u kundalik qoidalarga aylangan — suvni bulg'amaslik, tuproqni ifloslantirmaslik, olovga axlat tashlamaslik.

Bugungi til bilan aytganda bu ekologik tartib. U ming yillar avval din shaklida ifodalangan.$$
 WHERE topic_uz = $$Muqaddas unsurlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Kitob mening vafotimdan keyin tuzilgan — ya'ni uni men yozmaganman.

Bu ko'p qadimgi ta'limotda uchraydigan holat: ustoz og'zaki o'rgatadi, shogirdlar uning so'zlarini yodlab keyingi avlodga uzatadi va nihoyat yozib qoldiradi.

Nomning ma'nosi ham shuni ko'rsatadi: «qat'iy belgilangan qonun-qoidalar» — ya'ni bu erkin hikoya emas, tartibga solingan matn.$$
 WHERE topic_uz = $$«Avesto» kitobi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Kitob bir kunda emas, asrlar davomida shakllangan: eng qadimgi qismi bir davrga, keyingi boblari boshqa davrlarga tegishli.

Yigirma bir kitobga jamlanishi katta tahririy ish bo'lgan — matnlarni yig'ish, tartibga solish va bo'limlarga ajratish kerak bo'lgan.

Bugungacha bu yigirma bir kitobning hammasi yetib kelmagan; ko'p qismi yo'qolgan. Qadimgi asarlar taqdirida bu odatiy hol.$$
 WHERE topic_uz = $$«Avesto» tarixi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Yunonlar meni din asoschisi sifatida emas, avvalo donishmand va munajjim sifatida bilishgan.

Buning sababi bor: ular ta'limotim bilan bevosita emas, oraliq hikoyalar orqali tanishgan. Uzoq o'lkadagi mutafakkir haqidagi ma'lumot yo'lda o'zgargan.

«Zoroastr» nomi ham shu tariqa paydo bo'lgan. U yunon tiliga moslashtirilgan shakl bo'lib, keyinchalik butun Yevropa tillariga o'tgan.$$
 WHERE topic_uz = $$Yunonlar nazarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Navro'z — «yangi kun» degani; u bahorgi tengkunlik, ya'ni kun bilan tun tenglashadigan kunda nishonlanadi.

Bayramning astronomik asosi bor: u odamlar tuzgan kalendarga emas, quyoshning holatiga bog'langan. Shuning uchun u har yili taxminan bir xil kunga to'g'ri keladi.

Bayram ta'limotimning asosiy g'oyalariga mos: yangilanish, tozalik va ezgulikning g'alabasi. Shu bois u dinlar almashsa ham saqlanib qolgan.$$
 WHERE topic_uz = $$Navro'z ildizlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$«Gotlar» — «Avesto»ning eng qadimgi va eng arxaik qismi; ularning tili qolgan boblardan sezilarli farq qiladi.

Aynan shu til farqi olimlar uchun asosiy dalil: agar matn qismlari turli tilda bo'lsa, demak ular turli davrda yaratilgan.

Shu sabab «Gotlar» bevosita menga nisbat beriladi. Qolgan boblar esa keyingi avlodlar tomonidan qo'shilgan deb hisoblanadi.$$
 WHERE topic_uz = $$«Gotlar» madhiyalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Nomning ma'nosi ta'limotning mohiyatini ochadi: «dono hukmdor» — ya'ni kuch emas, donolik birinchi o'ringa qo'yiladi.

Bu o'sha davr uchun yangilik edi: ko'p qadimgi e'tiqodda bosh xudo avvalo kuch va qudrat bilan ta'riflanardi.

Menda esa asosiy o'lchov boshqa — odamning tanlovi. Axura Mazda majbur qilmaydi: u yo'l ko'rsatadi, tanlash esa insonning o'ziga qoldiriladi.$$
 WHERE topic_uz = $$Axura Mazda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Bu qarash dunyoni tushuntirishning oddiy va kuchli usuli: har bir hodisa ikki kuchdan birining ishi deb qaraladi.

Ammo eng muhimi boshqasi: bu kurashda inson tomoshabin emas, ishtirokchi. Uning har bir amali u yoki bu tomonni kuchaytiradi.

Ya'ni ta'limotim odamga mas'uliyat yuklaydi. Yaxshilik o'z-o'zidan yuz bermaydi — uni har kuni odamlar qiladi.$$
 WHERE topic_uz = $$Ikki kuch kurashi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Otashkada — «olov uyi» degani; unda muqaddas olov saqlanardi.

Olovni o'chirmaslik uchun doimiy xizmat kerak bo'lgan: kimdir har kuni o'tin qo'shib turishi lozim edi. Ya'ni ibodat joyi bir kun ham qarovsiz qolmasdi.

Olovning ma'nosi ramziy: u tozalik va yorug'lik belgisi. Uning uzluksiz yonib turishi ezgulik ham to'xtamasligi kerakligini eslatib turgan.$$
 WHERE topic_uz = $$Otashkadalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Bu qoida ta'limotimni ko'p boshqa qadimgi qarashlardan ajratib turadi: unda dunyodan voz kechish emas, dunyoni obod qilish ulug'lanadi.

Yer haydash, bog' o'stirish va chorva boqish savobli ish sanaladi. Ya'ni dehqonning kundalik mehnati ibodat darajasiga ko'tariladi.

Buning sababi tushunarli: ta'limotim o'troq dehqonchilik o'lkasida shakllangan. Bunday joyda yerni obod qilish tirikchilikning ham, e'tiqodning ham asosi.$$
 WHERE topic_uz = $$Mehnat qadri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Yubiley sanasi «Avesto»ning eng qadimgi qismi yaratilgan davrga qarab belgilangan.

Urganchdagi yodgorlik majmuasi ham tasodifiy joyda emas: ko'plab olim kitobning ilk qismlari aynan Xorazm vohasida vujudga kelgan deb hisoblaydi.

Bunday sanani nishonlash amalda ilmiy ishni ham jonlantiradi: yubiley munosabati bilan matnlar qayta nashr etiladi, tarjimalar tayyorlanadi va anjumanlar o'tkaziladi.$$
 WHERE topic_uz = $$«Avesto»ning 2700 yilligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

UPDATE fact_cards SET detail_uz = $$Beruniy mendan qariyb ikki ming yil keyin yashagan olim, ammo u qadimgi xalqlarning kalendari, bayramlari va e'tiqodini alohida o'rgangan.

Uning qimmati shunda: u ma'lumotni to'plab, solishtirib va manbasini ko'rsatib yozgan. Bu bugungi ilmiy usulga yaqin yondashuv.

Beruniy asarlari tufayli biz o'sha davrdagi bayramlar tartibi va e'tiqod tafsilotlarini bilamiz. Ba'zi ma'lumotlar esa faqat undan ma'lum — boshqa manbalarda saqlanmagan.$$
 WHERE topic_uz = $$Beruniy guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zardusht');

-- ==================================== KANISHKA ====================================

UPDATE fact_cards SET detail_uz = $$Kushon podsholigi yurtimiz tarixidagi eng katta davlatlardan biri; u bugungi bir necha mamlakat hududini qamragan.

Uning shimoliy qismi — Surxon vohasi va Amudaryoning o'ng sohili bugungi O'zbekiston janubiga to'g'ri keladi. Shu bois bu davlat bizning tariximizning bir qismi.

Men haqimdagi ma'lumot uch xil manbadan yig'iladi: tangalar, tosh bitiklar va qo'shni xalqlarning yozuvlari. O'zimiz yozgan solnoma saqlanmagan.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Ikki asrdan ortiq davom etgan davlat uchun bu uzun umr: qadimgi dunyoda ko'p saltanat bir necha o'n yilda tarqalib ketgan.

Mening davrim uning eng yuksak nuqtasi bo'lgan: chegaralar eng keng, savdo eng jonli va qurilish eng ko'p bo'lgan payt.

Bunday cho'qqidan keyin odatda pasayish boshlanadi. Kushon davlati ham III asrga kelib kuchsizlanib, bo'linib ketgan.$$
 WHERE topic_uz = $$Saltanat davri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Poytaxtni ko'chirish jiddiy siyosiy qaror: u davlatning og'irlik markazi qayerga siljiganini ko'rsatadi.

Baqtriya shimolda, Peshovar esa janubda — Hindistonga yaqin. Ya'ni ko'chirish bilan men davlatning e'tiborini janubga qaratganman.

Bu qaror savdo bilan bog'liq edi: Hindiston tomondagi yo'llar va bozorlar davlat daromadining muhim qismini berardi.$$
 WHERE topic_uz = $$Poytaxt$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Ro'yxatdagi hududlar bugungi bir necha davlatga to'g'ri keladi — Hindiston, Xitoyning g'arbiy qismi, Afg'oniston va O'zbekiston.

Bunday keng davlatni boshqarish uchun yo'llar, ombor tizimi va mahalliy hokimlar kerak bo'lgan. Buyruq poytaxtdan chekkaga haftalab yetib borardi.

Ammo ayni shu kenglik davlatning kuchi ham edi: u Hindiston bilan Xitoy o'rtasidagi yo'llarni nazorat qilardi.$$
 WHERE topic_uz = $$Saltanat hududi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Rim, Parfiya, Kushon va Xitoy — o'sha davr dunyosining to'rt yirik kuchi; ular ketma-ket joylashib, g'arbdan sharqqa uzun zanjir hosil qilgan.

Bu zanjir aynan Ipak yo'li bo'ylab cho'zilgan. Ya'ni to'rt davlat bir savdo tarmog'ining to'rt bo'g'ini bo'lgan.

Bizning o'rnimiz markazda edi. Shu bois Kushon podsholigi nafaqat harbiy, balki savdo va madaniy vositachi sifatida ham muhim bo'lgan.$$
 WHERE topic_uz = $$Buyuk davlatlar qatorida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Elchilik almashinuvi o'sha davrda savdodan ajralmas edi: elchi bilan birga savdogar, hunarmand va tarjimon ham yurardi.

Yangi shaharlar qurilishi ham shu bilan bog'liq: karvon yo'lida to'xtash joyi, ombor va ustaxona kerak bo'lardi.

Natijada faqat mol emas, bilim ham ko'chgan: din, san'at uslublari, hunar sirlari va yozuv shakllari yo'l bo'ylab tarqalgan.$$
 WHERE topic_uz = $$Savdo va elchilik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Dinning ko'chishi savdo yo'lining bevosita natijasi: rohiblar karvonlar bilan birga yurgan va yo'l bo'yidagi shaharlarda to'xtagan.

Surxon vohasi bu yo'lda muhim bo'g'in bo'lgan: u Hindistondan kelayotgan yo'lni shimolga — Movarounnahr va undan keyin sharqqa ulagan.

Shu tariqa buddaviylik Hindistondan chiqib, bizning yurtimiz orqali uzoq o'lkalarga yetib borgan. Ya'ni bu yerlar dinning tarqalishida oraliq bekat vazifasini bajargan.$$
 WHERE topic_uz = $$Buddaviylik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Fayoztepa va Qoratepa — Termiz atrofidagi ikki yirik yodgorlik; ular arxeologik qazishmalar natijasida ochilgan.

Ular oddiy ibodat joyi emas, butun bir majmua bo'lgan: ibodatxona, rohiblar yashaydigan hujralar va yordamchi binolar.

Bunday majmuaning qurilishi bir narsani isbotlaydi: buddaviylik bu yerda o'tkinchi hodisa emas, uzoq muddat mavjud bo'lgan va o'z jamoasiga ega bo'lgan.$$
 WHERE topic_uz = $$Termiz ibodatxonalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Dalvarzintepa Surxon vohasida joylashgan va u davlatimizning ilk markazlaridan biri bo'lgan.

Qazishmalar u yerda mudofaa devorlari, turar joylar, ustaxonalar va ibodatxonalar borligini ko'rsatgan — ya'ni bu to'liq shakllangan shahar edi.

Shaharning kengayishi mening davrimga to'g'ri keladi. Poytaxt janubga ko'chgan bo'lsa-da, shimoliy shaharlar tashlab qo'yilmagan.$$
 WHERE topic_uz = $$Dalvarzintepa$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Uch metall uch xil ehtiyoj uchun ishlatilgan: oltin katta savdo va xazina uchun, kumush o'rtacha to'lovlar, mis esa kundalik xarid uchun.

Tanga tarixchi uchun eng ishonchli manbalardan biri: unda hukmdorning nomi, unvoni va ba'zan tasviri bo'ladi.

Tangalarimiz savdo yo'llari bo'ylab uzoq o'lkalarga tarqalgan. Shu bois ular bugun turli mamlakatlarda topiladi va savdo aloqalarimiz qay darajada keng bo'lganini ko'rsatadi.$$
 WHERE topic_uz = $$Tangalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Kadfiz I ning ishi men uchun poydevor bo'lgan: u tarqoq qabilalarni bir boshqaruvga birlashtirgan.

Birlashtirish har qanday davlatning birinchi bosqichi. Ikkinchi bosqich — kengaytirish va mustahkamlash; bu vazifa keyingi avlodlarga, jumladan menga qolgan.

Shu bois tarixda ikki nom yonma-yon turadi: asoschi va davlatni cho'qqiga chiqargan hukmdor. Bizda bu ikki rol ikki kishi o'rtasida taqsimlangan.$$
 WHERE topic_uz = $$Sulolam asoschisi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Yuechjilar dastlab sharqda yashagan qabilalar edi; ular ko'chib kelib, bu yerda yangi davlatga asos solgan.

Bu haqdagi ma'lumot xitoy yilnomalarida saqlangan. Xitoyda tarix yozish davlat ishi bo'lgan va qo'shni xalqlarning harakati muntazam qayd etilgan.

Ya'ni kelib chiqishimiz haqidagi asosiy dalil chetdan — boshqa mamlakat arxividan kelgan. Qadimgi tarixda bu tez-tez uchraydigan holat.$$
 WHERE topic_uz = $$Xalqimning ildizlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Bitikning qimmati shunda: unda mening nomim va ajdodlarim ketma-ket sanab o'tilgan — ya'ni u sulola shajarasini beradi.

Yozuv esa alohida qiziq: matn baqtriya tilida, ammo yunon harflari bilan bitilgan. Bu ikki madaniyatning uchrashuvi natijasi.

Bunday hujjat qadimgi davr uchun kam uchraydi. Aynan shu tosh tufayli bugun Kushon hukmdorlarining tartibi va bir-biriga munosabati ma'lum.$$
 WHERE topic_uz = $$Rabatak bitigi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Gandxara — davlatimizning janubiy qismidagi o'lka; u yerda ikki an'ana uchrashgan.

Natija g'ayrioddiy bo'lgan: buddaviy mavzudagi haykallar yunon haykaltaroshligi uslubida — real tana nisbatlari va oqib tushadigan kiyim burmalari bilan ishlangan.

Bu uslub keyinchalik sharqqa tarqalgan va Markaziy Osiyo san'atiga ta'sir ko'rsatgan. Ya'ni san'at ham savdo yo'li bo'ylab ko'chgan.$$
 WHERE topic_uz = $$Gandxara san'ati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Haykaldagi yozuv unvonimni beradi: «ulug' shoh, shohlar shohi». Bunday unvon o'sha davrda eng oliy maqomni bildirardi.

Haykal Mathura shahridan — ya'ni davlatimizning janubiy qismidan topilgan. Bu hududlarimiz naqadar keng bo'lganini yana bir bor tasdiqlaydi.

Hukmdor haykalining qo'yilishi ham ma'noli: u markazdan uzoq o'lkalarda hokimiyatni eslatib turish vositasi bo'lgan.$$
 WHERE topic_uz = $$Mathuradagi haykalim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Stupa — buddaviylikdagi maxsus inshoot; u muqaddas yodgorlik va ibodat joyi vazifasini bajaradi.

Menikisi o'z davrining eng baland binolaridan biri bo'lgan. Uni ko'rgan sayyohlar hayratlarini yozib qoldirgan va aynan shu yozuvlar tufayli bino haqida bilamiz.

Binoning o'zi saqlanmagan. Qadimgi me'morchilikda bu odatiy hol: eng baland inshootlar ko'pincha eng tez nurab ketadi.$$
 WHERE topic_uz = $$Ulkan stupa$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');

UPDATE fact_cards SET detail_uz = $$Anjumanning maqsadi matnlarni tartibga solish bo'lgan: turli jamoalarda saqlangan matnlar bir-biridan farq qilardi va ularni solishtirish kerak edi.

Bunday ish keyinchalik boshqa ta'limotlarda ham takrorlangan: muqaddas matnni bir qolipga solish har qanday dinning muhim bosqichi.

Hukmdorning bunday anjumanni chaqirishi esa boshqa narsani ko'rsatadi: din davlat siyosatining bir qismiga aylangan edi.$$
 WHERE topic_uz = $$Rohiblar anjumani$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kanishka');
