-- «Batafsil» matnlarini KENGAYTIRISH — 10-to'plam: Oybek va Halima Xudoyberdiyeva.
--
-- MANBA — MUHIM FARQ. Bu to'plamda TASHQI manba ishlatilmagan. Matnlar faqat
-- quyidagilardan yig'ilgan:
--   1) shu qahramonning bazadagi BOSHQA kartochkalari (ular allaqachon
--      ziyouz.com, UZA.uz va O'zbekiston milliy ensiklopediyasiga tayanadi) —
--      har bir kartochkaga o'ZINING faktida yo'q, ammo bazada bor ma'lumot
--      qo'shildi;
--   2) bazadagi boshqa ajdodlarning tekshirilgan kartochkalari (Navoiy,
--      Husayn Boyqaro, To'maris, Zulfiya, Nodira, Uvaysiy, Abdulla Oripov,
--      Erkin Vohidov) bilan o'zaro bog'lanish;
--   3) janr va atama izohlari (doston, xotira-qissa, libretto, tazkira kabi) —
--      ular loyihaning oldingi matnlarida ham shu tarzda berilgan.
-- Yangi sana, ism yoki raqam qo'shilmagan. Sabab: README dagi qoida —
-- biografik material uchun ziyouz.com va UzA ishlatiladi, Vikipediya manba
-- sifatida qabul qilinmaydi.
--
-- IXTILOF (metodist-tarixchi tasdig'i kerak). «Saodat» jurnali rahbarligi
-- bazada ikki joyda ko'rsatilgan va ular ustma-ust tushadi: Zulfiya kartochkasi
-- bo'yicha u 1950–1985-yillarda jurnalda ishlagan (oxirida bosh muharrir),
-- Halima Xudoyberdiyeva kartochkasi bo'yicha esa bosh muharrirlik 1982–1994.
-- Matnda aniq yillar qarshi qo'yilmagan — faqat «mendan avval jurnalni uzoq
-- yillar Zulfiya boshqargan» deyilgan.

-- ==================================== OYBEK ====================================

UPDATE fact_cards SET detail_uz = $$«Oybek» taxallusi ikki so'zdan tuzilgan: «oy» va «bek». Men uni yoshligimda tanlaganman va butun umr shu nom bilan yozganman — bugun asl familiyamni ko'pchilik bilmaydi.

Govkush — Toshkentning eski shahar qismidagi mahallalardan biri. Bolaligim shu ko'chalarda, oddiy oilada o'tgan va o'sha hayot keyingi asarlarimga to'g'ridan-to'g'ri kirgan.

Bolaligimni men keyinchalik alohida kitobda — «Bolalik» xotira-qissasida bayon qilganman. Ya'ni bu davr menda shunchaki xotira emas, adabiy material bo'lib qolgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$She'r yoza boshlaganimda o'n yetti yoshda edim; ijodiy yo'lim esa 1968-yilgacha — qariyb qirq olti yil davom etgan.

Bu yo'lda janrim bir necha marta o'zgargan: avval she'r, keyin doston, so'ng roman va xotira nasri. Ko'p yozuvchi bitta janrda qoladi, men esa har o'n yilda yangi shaklga o'tganman.

Shu bilan birga men ilmiy ish bilan ham shug'ullanganman va universitetda dars berganman. Ya'ni yozuvchilik menda o'qituvchilik va ilm bilan yonma-yon yurgan.$$
 WHERE topic_uz = $$Ijodim boshlanishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Kitob nomlarining o'zi davr ruhini ko'rsatadi: «Fanga yurish» — ilmga intilish, «Tanlash» — yo'l tanlash haqida.

Bu yillar ijodimning she'riy bosqichi bo'lgan. Roman yozishga men ancha keyin — 1940-yilda «Qutlug' qon» bilan kirishganman.

She'riyat maktabi nasrga foyda bergan: romanlarimning tili obrazli va ohangdor deb baholanadi. Avval she'r yozgan yozuvchi jumlaning ritmini his qiladi.$$
 WHERE topic_uz = $$She'riy to'plamlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$«Qutlug' qon» — mening birinchi romanim. Uni yozganimda o'ttiz besh yoshda edim va oldimda o'n sakkiz yillik she'riy tajriba bor edi.

Roman she'rdan butunlay boshqacha ish: unda voqea rivoji, qahramonlar va uzun tuzilma kerak. Shoirdan yozuvchiga o'tish har kimga nasib etmaydi.

To'rt yildan keyin men ikkinchi romanim «Navoiy»ni yozganman. Ya'ni 1940-yil ijodimdagi burilish nuqtasi bo'lgan: shundan keyin nasr asosiy ishimga aylangan.$$
 WHERE topic_uz = $$«Qutlug' qon»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Roman urush yillarida yozilgan va aynan shu asar uchun men 1946-yilda Davlat mukofotiga sazovor bo'lganman.

Asarda XV asr Hirot muhiti tiklangan: Alisher Navoiy, uning do'sti hamda homiysi hukmdor Husayn Boyqaro, saroy davrasi, shoirlar va musavvirlar. Bunday roman yozish uchun tarixiy manbalarni uzoq o'rganish kerak bo'lgan.

Navoiy siymosi menda bir asar bilan tugamagan: romandan avval men u haqda doston ham yozganman. Bu mavzu butun ijodimning o'zagi bo'lgan.$$
 WHERE topic_uz = $$«Navoiy» romani$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Romanlarim 1940-yildan 1963-yilgacha — yigirma uch yil davomida yozilgan; jami beshta.

Mavzular xilma-xil: «Qutlug' qon» va «Navoiy» tarixiy, keyingilari esa zamonaviy hayotga bag'ishlangan.

1963-yil menda ayniqsa mahsuldor bo'lgan: o'sha yili ham «Ulug' yo'l» romani, ham «Bolalik» xotira-qissasi yakunlangan. Bu umrimning oxirgi yirik asarlari bo'lib chiqdi.$$
 WHERE topic_uz = $$Boshqa romanlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Xotira-qissa — yozuvchi o'z hayotini badiiy shaklda bayon qiladigan janr. Bu yerda muallif o'z asarining bosh qahramoni bo'ladi.

Unda men Toshkentning Govkush mahallasidagi bolaligimni — oila, ko'cha, birinchi kitoblar va birinchi taassurotlarni tasvirlaganman.

Kitob romanlarimdan keyin, umrimning oxirgi yillarida yozilgan. Yozuvchi ko'pincha bolaligiga eng oxirida qaytadi: buning uchun butun yo'lni bosib o'tish kerak bo'ladi.$$
 WHERE topic_uz = $$«Bolalik»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Akademik bo'lganimda o'ttiz sakkiz yoshda edim — bu ilmiy unvon uchun yosh hisoblanadi.

Yozuvchining akademik bo'lishi kam uchraydi: akademiya odatda olimlarni saylaydi. Menda ikkalasi birga bo'lgan — men adabiyotshunoslik bilan jiddiy shug'ullanganman va universitetda dars berganman.

Unvon «Qutlug' qon» romanidan uch yil keyin, «Navoiy» ustidagi ish davrida berilgan. Ya'ni u ijodimning eng kuchli yillariga to'g'ri keladi.$$
 WHERE topic_uz = $$Akademiklik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Uchala asar ham uch xil vazifa qo'ygan: «Yevgeniy Onegin» — she'riy roman, «Maskarad» — she'riy drama, «Tartyuf» esa komediya.

She'riy asarni tarjima qilish alohida murakkablik: vazn, qofiya tartibi va ohangni birga saqlash kerak. Shuning uchun bunday ishni odatda shoirning o'zi bajaradi.

Molyer esa fransuz an'anasidan — ya'ni butunlay boshqa maktabdan. Tarjimalar orqali o'zbek o'quvchisi jahon adabiyotining turli yo'nalishlari bilan tanishgan.$$
 WHERE topic_uz = $$Tarjimalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Vafot etganimda oltmish uch yoshda edim; ijodiy yo'lim 1922-yildan boshlangani uchun u qariyb qirq olti yil davom etgan.

Ortimda beshta roman, xotira-qissa, o'nlab she'riy to'plam, dostonlar, ilmiy ishlar va tarjimalar qolgan.

Toshkentda men yashagan uy bugun uy-muzeyga aylantirilgan; metro bekati va bir qancha ko'cha ham mening nomimni yuritadi.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Iqtisod yo'nalishi yozuvchi uchun g'ayrioddiy tanlov. Ammo u menga boshqa narsani bergan: jamiyat qanday tuzilganini va odamlar nima uchun shunday yashashini tizimli ko'rish.

Leningradda o'qish esa muhitni o'zgartirgan: boshqa shaharda, boshqa maktabda tahsil olish har doim ufqni kengaytiradi.

Keyinchalik men o'zim universitetda dars berganman. Yozuvchi va o'qituvchi bo'lish bir-birini to'ldiradi: talabaga tushuntirish uchun fikringni aniq shakllantirishga majbursan.$$
 WHERE topic_uz = $$O'qigan dargohlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Oilamizda adabiyot va aniq fan yonma-yon turgan: turmush o'rtog'im kimyogar olima bo'lgan.

Uning «Oybegim mening» xotira kitobi men haqimda yozilgan eng yaqin manba: unda kundalik hayot, ish tartibi va oila tafsilotlari bor. Bunday kitobni faqat yonida bo'lgan odam yoza oladi.

Yozuvchining tarjimai holi ikki manbadan yig'iladi: rasmiy hujjatlar va yaqinlarining xotiralari. Ikkinchisisiz odam quruq sanalar ro'yxatiga aylanadi.$$
 WHERE topic_uz = $$Turmush o'rtog'im$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Mukofot roman chiqqanidan ikki yil keyin berilgan — bu odatiy hol: asar avval o'quvchiga yetib borishi va baholanishi kerak.

Bunday mukofot umumiy xizmat uchun emas, aniq asar uchun beriladi. Ya'ni bu «Navoiy» romanining bahosi.

O'sha yillarda men allaqachon akademik edim va Yozuvchilar uyushmasida ishlardim. Ammo yozuvchi uchun asosiy natija unvon emas — kitobning o'qilishda qolishi.$$
 WHERE topic_uz = $$Davlat mukofotim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Doston — yirik hajmli she'riy asar. Ya'ni men bir mavzuni avval nazmda, keyin nasrda ishlaganman.

Bu kam uchraydigan hol va u mavzuning men uchun qanchalik muhimligini ko'rsatadi: doston kifoya qilmagan, material roman talab qilgan.

Navoiyning ona tiliga munosabati, ijodkorlarga homiyligi va davlat ishidagi o'rni menga eng yaqin mavzular edi. Shu bois uning siymosi ijodimning bosh mavzularidan biriga aylangan.$$
 WHERE topic_uz = $$Navoiy haqidagi dostonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Uyushma yozuvchilarni birlashtiradi, nashr ishlarini tashkil qiladi va yosh ijodkorlarni qo'llab-quvvatlaydi.

Urushdan keyingi yillar bu ish uchun eng og'ir davr bo'lgan: ko'p adib frontdan qaytmagan, nashriyot ishi esa qaytadan yo'lga qo'yilishi kerak edi.

Rahbarlik ijodga vaqt qoldirmaydi — bu bizning adabiyotimizda tanish holat. Keyingi avlodda ham shunday bo'lgan: Abdulla Oripov ham, Erkin Vohidov ham adabiy tashkilotlarga rahbarlik qilgan.$$
 WHERE topic_uz = $$Yozuvchilar uyushmasidagi ishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Uy-muzeyda qo'lyozmalarim, kutubxonam, ish stolim va shaxsiy buyumlarim saqlanadi.

Qo'lyozma yozuvchi uchun alohida qimmatga ega: unda o'chirilgan jumlalar, o'zgartirilgan nomlar va chetdagi izohlar ko'rinadi. Ya'ni u tayyor kitob emas, kitobning qanday yaratilganini ko'rsatadi.

Bunday muzey oddiy ko'rgazma emas, ilmiy markaz ham: matnshunoslar u yerda qo'lyozmalar ustida ishlaydi.$$
 WHERE topic_uz = $$Uy-muzeyim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

UPDATE fact_cards SET detail_uz = $$Metro bekatiga nom berilishi alohida hol: bunday nom har kuni minglab odamning og'zida takrorlanadi.

Bundan tashqari ko'chalar, kutubxonalar va maktablar mening nomimni yuritadi, Toshkentdagi uyim esa muzey bo'lib ishlaydi.

Asarlarim maktab va oliy o'quv yurti dasturlarida o'rganiladi. Yozuvchi uchun eng ishonchli davomiylik shu — kitobning o'qilishda qolishi.$$
 WHERE topic_uz = $$Nomimdagi joylar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'oybek');

-- ========================== HALIMA XUDOYBERDIYEVA ==========================

UPDATE fact_cards SET detail_uz = $$Boyovut — Sirdaryo viloyatidagi qishloq xo'jaligi tumani. Men poytaxtda emas, viloyatda tug'ilib o'sganman va bu she'riyatimga iz qoldirgan.

Ilk she'rlarim ham shu yerda — o'quvchilik yillarimda tuman gazetasida bosilgan. Ya'ni adabiyotga yo'lim markazdan emas, chetdan boshlangan.

Keyinchalik aynan Sirdaryo viloyatida mening nomimdagi ijod maktabi ochilgan. Bir aylana yopilgan: viloyat menga yo'l bergan, men esa nomimni o'sha yerga qaytarganman.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$O'shanda men o'n yetti yoshda, hali maktab o'quvchisi edim.

Tuman gazetasi o'sha davrda yosh ijodkor uchun birinchi eshik bo'lgan: u yerda bosilgan she'r viloyat va respublika nashrlariga yo'l ochardi.

To'rt yildan keyin — 1968-yilda birinchi kitobim chiqqan. Ya'ni gazetadagi kichik she'rdan kitobgacha bo'lgan masofa uzoq emas ekan, agar muntazam yozilsa.$$
 WHERE topic_uz = $$Ilk she'rlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Jurnalistika ta'limi adabiyotga yaqin yo'l: u aniq va tez yozishga o'rgatadi. Bizning adiblarimizdan Abdulla Oripov ham xuddi shu fakultetni tugatgan.

Moskvadagi adabiyot instituti esa boshqacha o'quv yurti — u maxsus yozuvchi tayyorlashga mo'ljallangan va u yerga ijodiy tanlov orqali qabul qilinadi.

Ya'ni menda ikki xil maktab bo'lgan: biri kasb bergan, ikkinchisi ijodni charxlagan.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Birinchi kitobim chiqqanda men yigirma bir yoshda va hali talaba edim.

Kitob nomlarining o'zgarishi ijodimning yo'nalishini ko'rsatadi: «Ilk muhabbat»dan «Suyanch tog'larim» va «Muqaddas ayol»gacha — shaxsiy tuyg'udan umumiy, ijtimoiy mavzuga o'tish.

Ya'ni yoshlikdagi sevgi she'rlari o'rniga asta-sekin ayol taqdiri, ona yurt va sadoqat mavzulari kelgan. Bu o'sish odatda shoirning butun umriga cho'ziladi.$$
 WHERE topic_uz = $$Ilk kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Jurnalda men pastdan boshlaganman: avval adabiy xodim, keyin bo'lim mudiri, so'ngra bosh muharrir.

Bu nashr xotin-qizlarga mo'ljallangan va u o'zbek adabiyotida alohida o'rin tutadi: mendan avval jurnalni uzoq yillar shoira Zulfiya boshqargan.

Bosh muharrirlik ijodga vaqt qoldirmaydi, ammo u orqali ko'plab ayolga yetib borish mumkin. Jurnal sahifalarida ilk bor bosilgan yosh shoiralar keyinchalik tanilgan.$$
 WHERE topic_uz = $$«Saodat» jurnalida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Bu vazifani men jurnaldagi bosh muharrirlik bilan bir vaqtda bajarganman — ya'ni to'rt yil davomida ikki ish yelkamda bo'lgan.

Yillar ham oson emasdi: aynan shu davrda O'zbekiston mustaqillikka erishgan va butun hayot qayta qurilayotgan edi.

Qo'mita ayollarning ta'lim, mehnat va oila masalalari bilan shug'ullanardi. She'rda aytilgan gapni amaliy qarorga aylantirish imkoni shu yerda bo'lgan.$$
 WHERE topic_uz = $$Xotin-qizlar rahbari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$To'maris — qadimgi massagetlar malikasi va bizning tariximizdagi eng qadimgi ayol siymolardan biri.

Uni tanlashim tasodifiy emas: men she'rlarimda kuchli, o'z so'zi bor ayol obrazini yaratishga intilganman. To'maris esa bu obrazning eng qadimgi namunasi.

Kitob mustaqillikning ilk yillarida chiqqan — o'z tariximizga qayta murojaat qilingan davrda. O'sha yillarda ko'p ijodkor ajdodlar mavzusiga qaytgan.$$
 WHERE topic_uz = $$To'maris haqida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Ikki e'tirof orasida ikki yil bor, ammo ular ikki davrga tegishli: Hamza nomidagi mukofot sovet davrining oliy adabiy mukofoti bo'lgan, «xalq shoiri» unvoni esa menga allaqachon mustaqil O'zbekistonda berilgan.

Ya'ni ijodim ikki tuzumda ham baholangan. Bu shoir uchun o'ziga xos sinov: davr o'zgarganda she'rning qiymati saqlanadimi?

O'sha yillarda men bir vaqtning o'zida jurnalga bosh muharrirlik va xotin-qizlar qo'mitasiga raislik qilardim.$$
 WHERE topic_uz = $$Xalq shoiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Orden menga umrimning oxirgi yillarida — ijodiy yo'lim boshlanganidan yarim asrdan ko'proq vaqt o'tgach berilgan.

«El-yurt hurmati» mamlakat oldidagi xizmatlar uchun beriladigan davlat mukofotlaridan biri. Bu butun ijodiy yo'limning e'tirofi edi.

Ammo shoir uchun eng katta baho boshqa: she'rining odamlar dilida yashashi va og'ir kunda ularga suyanch bo'lishi.$$
 WHERE topic_uz = $$«El-yurt hurmati»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Ijod maktablari iqtidorli bolalarni erta topib, ularga alohida sharoit yaratish uchun ochilgan; ularning har biri taniqli ijodkor nomi bilan ataladi.

Menikida bo'lajak shoir va yozuvchilar o'qiydi: ular adabiyot hamda ijod asoslarini o'rganadi, adabiy kechalar va tanlovlarda qatnashadi.

Maktab Sirdaryo viloyatida — men tug'ilib o'sgan o'lkada joylashgan. O'zim ham adabiyotga aynan shu yerdagi tuman gazetasi orqali kirganman.$$
 WHERE topic_uz = $$Nomimdagi maktab$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Kitob nomlarim ko'pincha tabiat obrazlariga tayanadi: oq olma, tog', quyosh, qor. Bu obrazlar she'riyatimda ma'no tashiydi.

«Suyanch tog'larim» — suyanadigan tog'lar degani; bu yerda tog' oila, ona yurt va yaqin odamlar ma'nosida keladi. Shoir uchun obraz tanlash mavzu tanlashdek muhim.

Bu to'plamlar birinchi kitobim «Ilk muhabbat»dan keyingi bosqichga tegishli: ularda yoshlik tuyg'usidan ko'ra hayot tajribasi ko'proq.$$
 WHERE topic_uz = $$She'riy to'plamlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Bu mavzu menda bitta kitob bilan cheklanmagan: ayol taqdiri butun ijodimning o'zagi bo'lgan.

Uni men faqat she'rda emas, amalda ham olib borganman: xotin-qizlar jurnaliga bosh muharrirlik qilganman va xotin-qizlar qo'mitasiga raislik qilganman.

«To'marisning aytgani» kitobim ham shu qatorga qo'shiladi. Ya'ni bir mavzu — kuchli va o'z so'zi bor ayol obrazi — o'nlab yil davomida turli shaklda ishlangan.$$
 WHERE topic_uz = $$«Muqaddas ayol»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Bu mavzular bizning she'riyatimizda uzoq an'anaga ega, ammo har avlod ularni o'zicha aytadi.

Nodira va Uvaysiy davrida shoira saroy yoki uy maktabi doirasida gapirardi; Zulfiya avlodi ayol qalbini butun mamlakatga eshittirgan; men esa ochiq va dadil ohangni tanlaganman.

Shu bois she'rlarim ko'pincha murojaat shaklida yoziladi — ular kimgadir qarata aytilgan gapdek eshitiladi.$$
 WHERE topic_uz = $$She'riyatim mavzusi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Bu ta'rif uslubimga berilgan: she'rlarim baland ovozda, ochiq va keskin aytiladi.

O'zbek she'riyatida boshqa an'ana ham bor — sokin, pichirlab aytilgan lirika. Men esa aytiladigan gapni yashirmaslikni tanlaganman.

Shu bois she'rlarim minbardan o'qishga va sahnada aytishga qulay. Ular yozma matn bo'lib qolmay, ovoz chiqarib o'qilganda to'liq ochiladi.$$
 WHERE topic_uz = $$Olovli satrlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Qizig'i shundaki, ismimning ma'nosi ijodimning ohangiga zid: meni «olovli satrlar sohibasi» deb atashgan.

Ammo ziddiyat ko'rinishdagina. Keskin gap ko'pincha mehrdan tug'iladi: odam o'ziga aziz narsani himoya qilayotganda ovozi baland chiqadi.

Sharqda ismga alohida e'tibor berilgan — u bolaga tilak sifatida qo'yilardi. Shoirlar esa ko'pincha o'ziga taxallus tanlagan; men o'z ismim bilan yozganman.$$
 WHERE topic_uz = $$Ismimning ma'nosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Uyushma a'zoligi o'sha davrda yozuvchining rasmiy maqomi edi: u nashr, ijodiy safar va muhokamalarda qatnashish imkonini berardi.

Men adabiy hayotda faol bo'lganman: jurnalga bosh muharrirlik qilganman, yosh ijodkorlarni qo'llab-quvvatlaganman, muhokamalarda fikrimni ochiq aytganman.

Adabiyot yolg'iz stol ustida yaratilmaydi: unga davra, bahs va tanqid kerak. Uyushma aynan shu davrani ushlab turgan.$$
 WHERE topic_uz = $$Yozuvchilar uyushmasida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');

UPDATE fact_cards SET detail_uz = $$Ilk she'rim 1964-yilda bosilgan — ya'ni ijodiy yo'lim ellik yildan ortiq davom etgan.

Ortimda o'nlab she'riy to'plam, jurnaldagi yillar va shogirdlar qolgan. Sirdaryo viloyatida nomimdagi ijod maktabi ishlaydi.

She'rlarim qo'shiq bo'lib kuylanadi va adabiyot darslarida o'rganiladi. Shoir uchun eng ishonchli davomiylik shu — satrning yodda qolishi.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-xudoyberdiyeva');
