-- «Batafsil» matnlari — al-Buxoriy, al-Farg'oniy, Forobiy va Jaloliddin Manguberdi.
-- Faqat tekshirilgan ensiklopedik ma'lumot; rivoyat matnda shunday belgilanadi.

-- ============================= IMOM AL-BUXORIY =============================

UPDATE fact_cards SET detail_uz = $$Buxoro o'sha davrda Somoniylar davlatining poytaxti va ilm markazi edi. Otam Ismoil ham hadis ilmi bilan shug'ullangan, ammo men yosh bolaligimda vafot etgan.

Onam meni yolg'iz tarbiyalagan va ilm olishimga barcha sharoitni yaratgan. U meni Buxorodagi mashhur muhaddislar huzuriga olib borgan. Onamning sabri va mehnati bo'lmaganida, mening yo'lim boshqacha bo'lardi — shuning uchun men ilmdagi ilk qadamimni har doim uning nomi bilan bog'layman.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$To'plamning to'liq nomi juda uzun, xalq orasida esa u qisqacha «Sahihi Buxoriy» deb ataladi. «Sahih» — «ishonchli» degani.

Men yig'gan yuz minglab rivoyat orasidan qat'iy mezonlar asosida eng ishonchlilarini tanlaganman. Har bir hadis uchun uni rivoyat qilganlar zanjiri — kim kimdan eshitgani tekshirilgan: rivoyatchilarning yashagan davri, halolligi va xotirasi o'rganilgan. Agar zanjirda bitta shubhali odam bo'lsa, hadis to'plamga kiritilmagan. Shu qat'iylik tufayli asar islom olamida eng nufuzli kitoblardan biri sanaladi.$$
 WHERE topic_uz = $$«Al-Jome' as-Sahih»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$O'sha davrda kitob nusxalari kam edi, bilim esa asosan ustozdan shogirdga og'zaki o'tardi. Shuning uchun ilm izlagan kishi safarga chiqishga majbur bo'lgan.

Men Makka, Madina, Bag'dod, Basra, Kufa, Damashq, Misr va boshqa shaharlarda bo'lganman; safarlarim o'n olti yildan ortiq davom etgan. Har shaharda men mahalliy olimlar bilan uchrashib, ulardan hadis eshitganman va yozib olganman. Manbalarda yozilishicha, men mingdan ortiq ustozdan ta'lim olganman. Bu safarlar menga turli o'lkalardagi rivoyatlarni solishtirish imkonini bergan.$$
 WHERE topic_uz = $$Safarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$O'sha davrda xotira ilm ahlining asosiy quroli edi: eshitilgan matn darhol yodga olinardi.

Manbalarda mening o'n olti yoshimda bir necha ming hadisni, ularning rivoyatchilari zanjiri bilan birga yoddan bilganim yozilgan. Bag'dodda meni sinash uchun olimlar ataylab rivoyatchilar nomini aralashtirib, yuzta hadisni noto'g'ri tartibda o'qigan; men har birini eshitib, xatoni ko'rsatib, to'g'ri holini aytib berganman — bu voqea tarixiy manbalarda saqlanib qolgan. Xotira o'z-o'zidan kelmaydi: u kundalik takrorlash va mashq natijasidir.$$
 WHERE topic_uz = $$Xotira kuchi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$Umrimning oxirida Samarqand yaqinidagi Xartang qishlog'ida yashadim va 870-yilda shu yerda vafot etdim.

Qabrim ustidagi joy asrlar davomida ziyoratgoh bo'lib kelgan. 1998-yilda bu yerda katta yodgorlik majmuasi barpo etilgan: unda maqbara, masjid, kutubxona va muzey bor. Majmuaga dunyoning ko'plab mamlakatlaridan ziyoratchilar keladi. Bugun bu joy Samarqand viloyatidagi eng mashhur ziyoratgohlardan biridir.$$
 WHERE topic_uz = $$Qabrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$«Nisba» — o'sha davrda kishining tug'ilgan yeri, kasbi yoki urug'iga ishora qiluvchi qo'shimcha nom.

Mening to'liq ismim — Abu Abdulloh Muhammad ibn Ismoil al-Buxoriy. «Ibn Ismoil» otamning nomi, «al-Buxoriy» esa tug'ilgan shahrim Buxoroga ishora qiladi. Shunday tartib o'sha davrda odat edi: al-Xorazmiy — xorazmlik, at-Termiziy — termizlik, al-Farg'oniy — farg'onalik. Shu tufayli bugun bu olimlarning qayerdan ekanini nomidan bilib olish mumkin.$$
 WHERE topic_uz = $$To'liq ismim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$Bu voqea manbalarda rivoyat tarzida keltiriladi, shuning uchun uni tarixiy dalil emas, balki xalq xotirasida saqlangan hikoya sifatida qabul qilish to'g'ri bo'ladi.

Rivoyatga ko'ra, bolaligimda ko'zlarim ojizlashib qolgan, onam esa uzoq vaqt duo qilgan va shifo topganman. Bu hikoya asrlar davomida aytib kelinishining sababi bor: u onaning farzandi uchun qilgan mehnati va sabrini eslatadi. Onamning ilm yo'lidagi qo'llab-quvvatlashi esa tarixiy manbalarda ham qayd etilgan haqiqat.$$
 WHERE topic_uz = $$Onamning duosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$Hadis yod olishni men taxminan o'n yoshimda boshlaganman. Avvaliga Buxorodagi mashhur ustozlar darsiga qatnab, eshitganlarimni yodda saqlardim.

Bir kuni ustoz dars paytida rivoyatchilar zanjirini xato aytdi; men buni sezib, hurmat bilan e'tiroz bildirdim va to'g'ri variantni keltirdim — tekshirib ko'rishganda men haq bo'lib chiqdim. O'shanda men hali o'n bir yoshda edim. Bu voqea menga bir umrlik saboq berdi: ilmda obro'ga emas, dalilga tayanish kerak.$$
 WHERE topic_uz = $$Ilmga ilk qadamim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$O'n olti yoshimda onam va akam Ahmad bilan haj safariga chiqdim. Yo'l uzoq va mashaqqatli edi — karvon bilan bir necha oy yurilgan.

Haj marosimi tugagach, onam va akam Buxoroga qaytdi, men esa Makkada qolishga qaror qildim. Sababi oddiy: bu yerga butun islom olamidan olimlar yig'ilardi va ulardan bilim olish imkoniyati bor edi. Shu qaror mening butun hayotimni belgilab berdi — shundan keyin o'n olti yil davomida turli shaharlarda ilm izlab yurdim.$$
 WHERE topic_uz = $$Makkaga borishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$Bag'dod xalifalikning poytaxti va o'sha davrning eng yirik ilm markazi edi; men u yerga bir necha bor borganman.

Shaharda men zamonamning yirik olimlari bilan uchrashganman. Ular orasida mashhur muhaddis va faqih Ahmad ibn Hanbal ham bor edi. Bunday uchrashuvlarda olimlar bir-biriga hadis o'qib berar, rivoyatchilar zanjirini muhokama qilar, ba'zan bahslashardi. Aynan shu bahslar hadis ilmining mezonlarini qat'iylashtirgan. Bag'doddagi yillar mening to'plamim uchun ko'p material bergan.$$
 WHERE topic_uz = $$Bag'dod ulamolari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$«Al-Adab al-mufrad» — «Odob durdonalari» degan ma'noni beradi. Bu kitobda men insoniy munosabatlarga oid hadislarni jamlaganman.

Undagi mavzular kundalik hayotga tegishli: ota-onaga hurmat, qo'shni haqi, mehmon kutish, salomlashish, kattaga izzat va kichikka shafqat, hayvonlarga rahm-shafqat, ochiq yuz bilan muomala qilish. Kitob soddaligi tufayli asrlar davomida bolalarga axloq o'rgatishda foydalanilgan. U bugun ham o'zbek tiliga tarjima qilinib nashr etiladi.$$
 WHERE topic_uz = $$«Al-Adab al-mufrad»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$«At-Tarix al-kabir» — «Katta tarix» degani. Bu kitob voqealar tarixi emas, balki odamlar haqidagi ma'lumotnoma.

Unda men hadis rivoyat qilgan minglab kishining nomi, yashagan davri, ustozlari, shogirdlari va ishonchlilik darajasi haqida ma'lumot keltirganman. Bu ish hadis ilmi uchun zarur edi: rivoyatchi kim ekanini bilmasdan turib, uning aytgan gapiga baho berib bo'lmaydi. Bugun bu asar o'sha davr olimlari va ijtimoiy hayoti haqidagi noyob tarixiy manba sanaladi.$$
 WHERE topic_uz = $$«At-Tarix al-kabir»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$Ustozlarimdan bilim olganim kabi, o'zim ham ko'plab shogird tarbiyalaganman; darslarimga minglab talaba qatnashgani haqida ma'lumot bor.

Shogirdlarim orasida Muslim ibn Hajjoj va Abu Iso at-Termiziy alohida o'rin tutadi. Ikkalasi ham keyinchalik o'z hadis to'plamlarini yaratib, mashhur muhaddislar bo'lib yetishgan. At-Termiziy — vatandoshimiz, Termiz shahridan; uning «Sunan» to'plami ham islom olamida e'tirof etilgan. Ustoz uchun eng katta natija — shogirdining o'z yo'lini topishidir.$$
 WHERE topic_uz = $$Shogirdlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$To'plamni tuzish o'n olti yil davom etdi. Bu vaqt ichida men yig'ilgan rivoyatlarni qayta-qayta tekshirib, saralab chiqdim.

Har bir hadisni to'plamga kiritishdan oldin uning zanjirini alohida o'rganardim. Manbalarda yozilishicha, men matnni ko'chirishdan avval o'ylanib, keyin yozardim — shoshilinch qaror ilmda xatoga olib kelishini bilardim. Natijada yuz minglab rivoyatdan atigi bir necha mingtasi to'plamga kirdi. Bu mehnat menga bir haqiqatni ko'rsatdi: ilmda tezlikdan ko'ra aniqlik muhimroq.$$
 WHERE topic_uz = $$O'n olti yillik mehnatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

UPDATE fact_cards SET detail_uz = $$Majmua Samarqanddan taxminan yigirma besh chaqirim uzoqlikdagi Xartang qishlog'ida joylashgan.

1998-yilda bu yerda keng ta'mirlash va qurilish ishlari olib borildi: maqbara qayta tiklandi, uning yoniga masjid, kutubxona va ziyoratchilar uchun binolar qurildi. Majmua hovlisida sharqona bog' barpo etilgan. Shu yili tavalludimning hijriy taqvim bo'yicha 1225 yilligi xalqaro miqyosda nishonlangan. Bugun bu yer O'zbekistonga keladigan ziyoratchilar eng ko'p tashrif buyuradigan joylardan biri.$$
 WHERE topic_uz = $$Yodgorlik majmuam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'imom-al-buxoriy');

-- ============================= AHMAD AL-FARG'ONIY =============================

UPDATE fact_cards SET detail_uz = $$Farg'ona vodiysi qadimdan dehqonchilik va hunarmandchilik o'lkasi bo'lgan; men shu yerda tug'ilganman.

Ismimdagi «al-Farg'oniy» nisbasi tug'ilgan o'lkamga ishora qiladi. Yoshligim haqida ko'p ma'lumot saqlanmagan, ammo IX asrda Movarounnahr va Xorazmdan ko'plab iqtidorli yoshlar Bag'dodga — o'sha davrning ilm poytaxtiga borgani ma'lum. Men ham shu yo'ldan borib, umrimning katta qismini Bag'dod va Misrda o'tkazganman.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$«Bayt ul-hikma» xalifa Ma'mun davrida tashkil etilgan bo'lib, u kutubxona, tarjima maktabi va rasadxonani birlashtirgan ilm markazi edi.

Men u yerda vatandoshim Muhammad al-Xorazmiy bilan birga ishlaganman. Markazda yunon, hind va fors tillaridagi kitoblar arabchaga tarjima qilinar, eski ilmiy ma'lumotlar esa yangi kuzatuvlar bilan tekshirilardi. Astronomiya guruhi Quyosh va yulduzlar harakatini muntazam kuzatib borgan. Aynan shu jamoaviy ish tufayli IX asr Sharq fanida yuksalish davri bo'lgan.$$
 WHERE topic_uz = $$Bag'dodda ishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Rasadxona — osmon jismlarini muntazam kuzatish uchun mo'ljallangan maxsus inshoot. Uni qurish uchun joyni to'g'ri tanlash va asboblarni aniq o'rnatish kerak.

Men Bag'dod va Damashqdagi rasadxonalar ishida qatnashganman. U yerda quyosh soati, asturlob va boshqa o'lchov asboblari bilan kuzatuvlar olib borilgan. Kuzatuv natijalari yozib borilib, jadvallarga kiritilgan. Bunday muntazam ish tufayli avvalgi olimlar hisoblarini tekshirish va xatolarini tuzatish mumkin bo'lgan. Bu an'ana keyinchalik Ulug'bek rasadxonasida davom ettirilgan.$$
 WHERE topic_uz = $$Rasadxonalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Klavdiy Ptolemey — mil. II asrda yashagan yunon astronomi; uning «Almagest» asari asrlar davomida astronomiyaning asosiy kitobi bo'lgan.

Biz uning yulduzlar jadvalidagi ma'lumotlarni o'z kuzatuvlarimiz bilan solishtirib chiqdik. Ba'zi qiymatlar vaqt o'tishi bilan o'zgargani yoki noaniq ekani aniqlandi va tuzatildi. Bu ish ilmning muhim qoidasini ko'rsatadi: hatto eng obro'li kitobdagi ma'lumot ham tekshirilishi kerak. Bizning tuzatishlarimiz keyingi avlod astronomlari uchun aniqroq asos bo'lgan.$$
 WHERE topic_uz = $$Ptolemey jadvali$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Quyosh tutilishi — Oy Yer bilan Quyosh orasidan o'tib, uning nurini to'sib qo'yishi. Bu hodisani oldindan aytish uchun Oy va Yerning harakatini aniq hisoblash kerak.

O'sha davrda tutilish ko'pchilikni qo'rquvga solardi. Uni oldindan hisoblab aytish esa astronomiya qanchalik rivojlanganini ko'rsatardi. Bunday hisob-kitoblar «zij» jadvallariga asoslangan. Bugun tutilishlar yuz yillar oldinga hisoblab qo'yilgan — ammo bu ishning boshlanishi aynan o'rta asr astronomlari mehnatiga borib taqaladi.$$
 WHERE topic_uz = $$Quyosh tutilishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Yerning shar shaklida ekani IX asr olimlari uchun bahsli masala emas edi — buni yunon olimlari ham bilgan, biz esa hisob va kuzatuv bilan tasdiqlaganmiz.

Dalillar oddiy: dengizda uzoqlashayotgan kemaning avval korpusi, keyin yelkani ko'zdan yo'qoladi; Oy tutilishida Yer soyasi doim yumaloq bo'ladi; turli shaharlarda yulduzlarning balandligi har xil. Kitobimda men Yer o'lchamlari va iqlim mintaqalari haqida ham yozganman. Bu ma'lumotlar keyinchalik Yevropaga yetib borib, u yerdagi geografiya tasavvuriga ta'sir ko'rsatgan.$$
 WHERE topic_uz = $$Yer shakli$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Nil daryosi Misr dehqonchiligining asosi edi: har yili suv ko'tarilib, dalalarga unumdor loyqa keltirardi. Suv qancha ko'tarilishini oldindan bilish hosilni rejalashtirish uchun zarur bo'lgan.

Men Qohira yaqinidagi Ravza orolida shunday inshoot — nilometr qurilishini boshqarganman. U markaziy ustunga o'rnatilgan o'lchov shkalasidan iborat bo'lib, suv sathi shu bo'yicha o'qilgan. Inshoot shu qadar puxta qurilganki, u bugungacha saqlanib qolgan va Qohirada tarixiy yodgorlik sifatida ko'rsatiladi.$$
 WHERE topic_uz = $$Nil o'lchagichi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$«Alfraganus» — mening nisbam «al-Farg'oniy»ning lotin tilidagi shakli.

O'rta asr Yevropasida sharq olimlarining nomi shu tarzda o'zgargan: Ibn Sino — Avitsenna, al-Xorazmiy — Algoritmi, Ibn Rushd — Averroes. Kitoblarim lotin tiliga tarjima qilingach, bu nom Yevropa ilmiy adabiyotida keng tarqalgan va asrlar davomida ishlatilgan. Shu tariqa Farg'onada tug'ilgan olimning nomi Yevropa universitetlarida tanish bo'lib qolgan.$$
 WHERE topic_uz = $$Yevropadagi nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Saqlanib qolgan asarlarim asosan astronomiya va o'lchov asboblariga bag'ishlangan.

Eng mashhuri — «Samoviy harakatlar va umumiy ilmi nujum kitobi»; u qisqacha «Astronomiya asoslari» deb ataladi. Kitob sodda va tizimli yozilgani uchun darslik sifatida qulay bo'lgan: unda Yer va osmon tuzilishi, iqlim mintaqalari, sayyoralar harakati bayon etilgan. «Usturlob yasash haqida kitob»da esa asbobning tuzilishi va undan foydalanish tushuntirilgan. «Yetti iqlim hisobi» geografiyaga oid.$$
 WHERE topic_uz = $$Asarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$1998-yilda YUNESKO ishtirokida tavalludimning 1200 yilligi xalqaro miqyosda nishonlandi.

Shu munosabat bilan Farg'ona vodiysida ilmiy anjumanlar o'tkazilib, asarlarim o'zbek tiliga tarjima qilindi. Quva shahrida — tug'ilgan o'lkamda menga haykal o'rnatildi va yodgorlik bog'i barpo etildi. Qohirada, Nil bo'yidagi nilometr yaqinida ham mening nomim bilan bog'liq yodgorlik belgisi bor. Toshkentdagi bir necha ta'lim muassasasi ham mening nomimni yuritadi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$XII asrda Yevropada arab tilidagi ilmiy kitoblarni lotinchaga tarjima qilish keng yo'lga qo'yilgan — ayniqsa Ispaniyaning Toledo shahrida.

«Astronomiya asoslari» kitobim shu davrda ikki marta lotin tiliga o'girilgan. Undan keyin asar Yevropa universitetlarida astronomiya bo'yicha asosiy qo'llanmalardan biri bo'lgan va bir necha asr davomida o'qitilgan. Kitob keyinchalik bosma shaklda ham nashr etilgan. Shu tariqa Sharq olimlarining bilimi G'arb faniga o'tgan.$$
 WHERE topic_uz = $$Lotincha tarjimalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Dante Aligeri — XIII–XIV asrlarda yashagan italyan shoiri, «Ilohiy komediya» asarining muallifi.

Uning asarlarida osmon jismlari va olam tuzilishi tasvirlanganda o'sha davrda ma'lum bo'lgan astronomiya ma'lumotlariga tayanilgan. Tadqiqotchilar Dante mening kitobimdagi ma'lumotlardan foydalangani haqida yozadi — u davrda «Astronomiya asoslari» Yevropada eng keng tarqalgan qo'llanmalardan biri edi. Bu ilm chegara bilmasligining yaxshi misoli: Farg'onada tug'ilgan olimning hisoblari italyan shoiri satrlarida aks etgan.$$
 WHERE topic_uz = $$Dante asarlarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Kolumb Hindistonga g'arb tomondan suzib borishni rejalashtirganda, Yerning kattaligi haqidagi hisoblarga tayangan.

Tadqiqotchilarning yozishicha, u mening kitobimdagi Yer o'lchamlariga oid ma'lumotlardan foydalangan, ammo o'lchov birligini noto'g'ri tushunib, Yerni haqiqiydan kichikroq deb hisoblagan. Shu sababli u Osiyoga yetib borishni kutgan joyda yangi qit'aga duch kelgan. Bu hodisa ilmda o'lchov birligini aniq belgilash naqadar muhimligini ko'rsatadi.$$
 WHERE topic_uz = $$Kolumbning hisoblari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Astrolab (usturlob) — mis yoki jezdan yasalgan, aylanadigan qismlari va shkalalari bo'lgan asbob.

Uning yordamida yulduz yoki Quyoshning ufqdan balandligini o'lchash, shu orqali vaqtni aniqlash, joyning geografik kengligini topish va qibla yo'nalishini belgilash mumkin edi. Men bu asbobning tuzilishi, yasalishi va undan foydalanish qoidalarini alohida kitobda bayon qilganman. Astrolab o'sha davrning eng ko'p vazifali ilmiy asbobi bo'lgan; uni sayyohlar, dengizchilar va munajjimlar ishlatgan.$$
 WHERE topic_uz = $$Astrolab haqidagi asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Kitobimda men sayyoralargacha bo'lgan masofalar va ularning o'lchamlari haqidagi hisoblarni keltirganman.

Bu hisoblar o'sha davr tasavvuriga — Yer markazda turadi degan qarashga asoslangan edi va bugungi aniq ma'lumotlardan farq qiladi. Ammo muhimi natijaning o'zi emas: bunday masalalarni umuman hisoblab ko'rishga urinish, ya'ni osmonni o'lchash mumkin deb qarash o'sha davr uchun katta qadam edi. Keyingi avlodlar aynan shu asosda ishlab, aniqroq natijalarga erishgan.$$
 WHERE topic_uz = $$Sayyoralar hisobi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Oydagi krater va relef shakllariga ilm-fanda iz qoldirgan olimlar nomi beriladi; bu nomlarni Xalqaro astronomiya ittifoqi tasdiqlaydi.

Menga bag'ishlangan krater «Alfraganus» deb ataladi — bu mening Yevropadagi nomim. Shu ro'yxatda vatandoshlarimizdan al-Xorazmiy, Beruniy va Ulug'bek nomlari ham bor. Bir vaqtlar osmonni kuzatgan olimlarning nomi bugun o'sha osmondagi jismlarda saqlanib turibdi.$$
 WHERE topic_uz = $$Oydagi krater$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

UPDATE fact_cards SET detail_uz = $$Yubiley tadbirlari 1998-yilda o'tkazilib, ularda chet ellik olimlar ham ishtirok etdi.

Farg'ona va Quva shaharlarida yodgorlik va bog'lar barpo etildi, ilmiy anjumanlar o'tkazildi, asarlarim va hayotim haqidagi kitoblar nashr etildi. Maktab darsliklariga men haqimdagi ma'lumot kiritildi. Bunday yubileylarning maqsadi — o'tmish olimlarini eslash orqali bugungi yoshlarda ilmga qiziqish uyg'otish.$$
 WHERE topic_uz = $$1200 yillik to'yim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ahmad-al-fargoniy');

-- ============================== ABU NASR FOROBIY ==============================

UPDATE fact_cards SET detail_uz = $$Forob (O'tror) shahri Sirdaryo bo'yida joylashgan bo'lib, u Buyuk ipak yo'lidagi yirik savdo va ilm markazlaridan biri edi. Bugun bu hudud Qozog'iston tarkibida.

Otam harbiy xizmatda bo'lgan. Forobda katta kutubxona bo'lgani haqida ma'lumotlar bor — yoshligimda ilmga qiziqishim shu muhitda uyg'ongan. Keyinchalik bilim izlab uzoq safarlarga chiqdim va umrimning katta qismini Bag'dod, Halab va Damashqda o'tkazdim.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Yunon faylasufi Arastu (Aristotel) Sharqda «birinchi muallim» deb ulug'langan, chunki u mantiq va tabiat ilmlarining asoslarini yaratgan.

Meni «Muallimus-soniy» — «Ikkinchi muallim» deb atashgan, sababi men uning murakkab asarlarini sharhlab, tushunarli qilib berganman va o'z ta'limotim bilan falsafani rivojlantirganman. Bu unvon o'z-o'zidan berilmagan: uni keyingi avlod olimlari, jumladan Ibn Sino ham e'tirof etgan. Sharq falsafasida bunday yuksak baho kam kishiga nasib etgan.$$
 WHERE topic_uz = $$«Ikkinchi muallim»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$O'sha davrda talaba bir ustozdan bilim olib, keyin boshqasini izlab yo'lga chiqardi — har shaharning o'z kuchli tomoni bor edi.

Men boshlang'ich ma'lumotni ona yurtimda olganman, so'ng Toshkent, Buxoro va Samarqandda o'qiganman. Keyinchalik Bag'dodga borib, u yerda mantiq va yunon falsafasini chuqur o'rganganman. Ta'limim umr bo'yi davom etgan: men bilim olishni ma'lum yoshda tugaydigan ish deb hisoblamaganman.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Umrim safarda o'tgan: Bag'dod, Isfahon, Hamadon, Ray, keyinroq Halab, Damashq va Misrda bo'lganman.

Bag'dodda men mantiq va falsafa bilan shug'ullanib, atrofimda shogirdlar davrasi shakllangan. Halabda hukmdor Sayf ad-Davla saroyida yashaganman. Har bir shahar menga yangi kitoblar, yangi ustozlar va suhbatdoshlar bergan. Bunday sayohatlar o'sha davr olimlari uchun odatiy hol edi — bilim bir joyda to'planmagan, uni izlab topish kerak bo'lgan.$$
 WHERE topic_uz = $$Safarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Manbalarda mening ko'p tilni bilganim haqida yoziladi; bu ma'lumot turli manbalarda turlicha keltiriladi.

Aniq bilinadigani shuki, men arab, fors va turkiy tillarni, shuningdek yunon tilini bilganman — yunon falsafasini asl matndan o'rganganim shundan dalolat beradi. Til bilish menga tarjimonsiz o'qish va turli xalq olimlari bilan bevosita suhbatlashish imkonini bergan. «Ihso al-ulum» asarimda til ilmini fanlar tasnifida birinchi o'ringa qo'yganman: fikrni aniq ifodalash uchun avval tilni bilish kerak.$$
 WHERE topic_uz = $$Tillar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$O'rta asrlarda fanlar bugungidek qat'iy bo'linmagan edi — olim bir vaqtning o'zida bir necha soha bilan shug'ullanardi.

Men falsafa va mantiqdan tashqari arifmetika, geometriya, astronomiya, musiqa nazariyasi, fizika, optika va tibbiyot masalalari bilan ham shug'ullanganman. Har bir fanning o'z o'rni va boshqalar bilan bog'liqligini ko'rsatishga harakat qilganman. Menimcha, ilmlar bir-biridan uzilgan emas: matematika musiqa nazariyasiga, mantiq esa barcha fanlarga xizmat qiladi.$$
 WHERE topic_uz = $$Fanlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Asarlarimning aksariyati risola — ya'ni bitta masalaga bag'ishlangan qisqa ilmiy ish shaklida yozilgan.

Ularning umumiy soni 160 dan ortiq deb keltiriladi, ammo bizgacha qirqqa yaqini yetib kelgan. Qolganlarining nomi keyingi olimlarning asarlarida eslatib o'tilgani uchun ma'lum. Saqlangan asarlar orasida «Fozil odamlar shahri», «Ihso al-ulum», «Kitob ul-musiqi al-kabir» va Arastu asarlariga sharhlar bor. Ular ko'plab tillarga tarjima qilingan.$$
 WHERE topic_uz = $$Asarlarim soni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$«Kitob ul-musiqi al-kabir» («Musiqa haqida katta kitob») — musiqa nazariyasiga bag'ishlangan eng yirik asarim.

Unda men tovushlarning tabiatini, ohang tuzilishini va musiqa asboblarini ilmiy asosda tahlil qilganman: tor uzunligi bilan tovush balandligi orasidagi bog'liqlikni matematik yo'l bilan tushuntirganman. Kitobda o'sha davr Sharq musiqa asboblari ham tasvirlangan. Manbalarda mening o'zim ham mohir sozanda bo'lganim haqida ma'lumot bor. Bu asar Sharq musiqashunosligining asosiy manbalaridan biri sanaladi.$$
 WHERE topic_uz = $$Musiqa ilmi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Umrimning oxirgi yillarini Damashqda o'tkazganman va 950-yilda shu yerda vafot etganman.

Manbalarda yozilishicha, men oddiy hayot kechirganman: hukmdor saroyida yashasam ham, boylik to'plashga intilmaganman va kunimni ilm bilan o'tkazganman. Dafn marosimida hukmdor Sayf ad-Davlaning o'zi ishtirok etgan. Asarlarim shogirdlarim va keyingi olimlar tomonidan ko'chirilib saqlangan; shu tufayli ular Ibn Sinogacha va undan keyingi avlodlargacha yetib borgan.$$
 WHERE topic_uz = $$Vafotim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$To'liq ismim — Abu Nasr Muhammad ibn Muhammad al-Forobiy. Undagi «al-Forobiy» nisbasi tug'ilgan shahrim Forob nomidan olingan.

Forob shahri Sirdaryo bo'yida joylashgan bo'lib, u O'tror nomi bilan ham mashhur. Bunday nom berish o'sha davrda odat edi va bugun bizga olimlarning qayerdan ekanini bilish imkonini beradi. Bu shahar Buyuk ipak yo'lidagi yirik markazlardan biri bo'lgan; uning xarobalari bugun ham arxeologlar tomonidan o'rganilmoqda.$$
 WHERE topic_uz = $$Nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Asarning to'liq nomi — «Fozil odamlar shahri aholisining qarashlari haqida kitob». Unda men adolatli jamiyat qanday bo'lishi kerakligi haqida yozganman.

Fikrimcha, shahar — bu tirik organizmga o'xshaydi: har bir a'zo o'z vazifasini bajargandagina butun tana sog'lom bo'ladi. Fozil shaharda odamlar bir-biriga yordam beradi, hunar va ilm qadrlanadi, boshliq esa eng bilimli va adolatli kishi bo'ladi. Men bunga qarama-qarshi jamiyat turlarini ham tasvirlaganman: unda odamlar faqat boylik yoki shon-shuhrat ketidan quvadi. Bu asar Sharq ijtimoiy falsafasining eng mashhur namunasi.$$
 WHERE topic_uz = $$Fozil shahar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Arastu asarlari qadimgi yunon tilida yozilgan va juda murakkab edi; ularni tushunish uchun izoh kerak bo'lgan.

Men uning mantiq, metafizika, tabiat falsafasi va etikaga oid asarlariga sharhlar yozganman: matnni bo'lib-bo'lib tushuntirib, misollar keltirganman. Bu ishning natijasi shundaki, keyingi avlod olimlari yunon falsafasini mening sharhlarim orqali o'rgangan. Ibn Sino «Metafizika»ni aynan mening sharhim yordamida tushunganini yozib qoldirgan. Yaxshi tushuntirish — o'zi ham ilmiy ish ekanining dalilidir.$$
 WHERE topic_uz = $$Arastuga sharhlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$«Ihso al-ulum» — «Fanlar tasnifi» degani. Bu asarda men o'z davrimdagi barcha ilmlarni guruhlarga ajratib chiqdim.

Tasnif shunday: til ilmi, mantiq, matematika (arifmetika, geometriya, astronomiya, musiqa), tabiat ilmi va ilohiyot, so'ngra jamiyat haqidagi ilmlar. Har biri uchun predmeti va boshqa fanlar bilan bog'liqligi ko'rsatilgan. Bunday tasnif o'quv rejalarini tuzishga yordam bergan: qaysi fanni qaysidan keyin o'rganish kerakligi aniq bo'lgan. Asar lotin tiliga tarjima qilinib, Yevropa universitetlarining fanlar tizimiga ta'sir ko'rsatgan.$$
 WHERE topic_uz = $$Fanlar tasnifi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Mantiq — to'g'ri fikrlash va xulosa chiqarish qoidalari haqidagi ilm. U qaysi mulohaza to'g'ri, qaysi biri xato ekanini aniqlash imkonini beradi.

Men mantiqqa oid ko'plab risola yozganman va uni barcha fanlar uchun asos deb bilganman: mantiqni bilmagan kishi bahsda aldanishi yoki noto'g'ri xulosaga kelishi mumkin. Shuning uchun meni «mantiq ustozi» deb ham atashgan. Bugungi tilda aytganda, mantiq — tanqidiy fikrlash mahoratidir va u har qanday davrda kerak.$$
 WHERE topic_uz = $$Mantiq ilmi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$«Baxt-saodatga erishuv haqida» risolamda men insonning eng oliy maqsadi nima ekani haqida yozganman.

Fikrimcha, baxt boylik yoki mansabda emas: ular o'tkinchi va o'z-o'zidan qanoat bermaydi. Haqiqiy baxtga inson ikki narsa orqali erishadi — bilim olish va yaxshi xulqni odat qilish. Bilim olamni tushunishga, yaxshi xulq esa odamlar orasida to'g'ri yashashga yordam beradi. Bu ikkisi mashq bilan hosil bo'ladi: bir marta yaxshi ish qilgan kishi hali yaxshi bo'lib qolmaydi, buni takrorlash kerak.$$
 WHERE topic_uz = $$Baxt haqida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Sayf ad-Davla — Halab (hozirgi Suriya hududida) hukmdori bo'lib, u ilm va san'at homiysi sifatida mashhur edi. Saroyida shoirlar, olimlar va sozandalar to'plangan.

U meni taklif qilib, alohida izzat ko'rsatgan. Manbalarda yozilishicha, men saroy hashamatiga qiziqmaganman va o'zimga belgilangan nafaqadan faqat kundalik ehtiyojimga yetgulik miqdorini olganman. Vaqtimning katta qismini yozish va shogirdlar bilan suhbatga sarflaganman. Hukmdorning hurmati menga tinch ishlash imkonini bergan — bu o'sha davr olimi uchun katta imkoniyat edi.$$
 WHERE topic_uz = $$Hukmdor ehtiromi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

UPDATE fact_cards SET detail_uz = $$Qozog'istondagi al-Forobiy nomidagi Qozoq milliy universiteti mamlakatning eng yirik oliygohlaridan biri; tug'ilgan shahrim O'tror xarobalari ham shu yurtda.

O'zbekistonda ham nomim ulug'lanadi: asarlarim o'zbek tiliga tarjima qilinib nashr etilgan, maktab darsliklariga hayotim haqida ma'lumot kiritilgan, Toshkentda ko'cha va ta'lim muassasalari mening nomimni yuritadi. «Ikkinchi muallim» unvoni esa bugungacha ilm tarixidagi eng yuksak baholardan biri bo'lib qolmoqda.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-nasr-forobiy');

-- ========================= JALOLIDDIN MANGUBERDI =========================

UPDATE fact_cards SET detail_uz = $$Otam Alouddin Muhammad Xorazmshohlar davlatining hukmdori bo'lgan. Bu davlat XIII asr boshida O'rta Osiyoning eng qudratli davlatlaridan biri edi.

1219-yilda Chingizxon qo'shini bostirib kirganda, davlat qarshilik ko'rsata olmadi va shaharlar birin-ketin qo'ldan ketdi. Otam vafotidan so'ng kurash mening zimmamga tushdi. Men bu kurashni yolg'iz emas, atrofimga to'plangan jangchilar bilan olib bordim va u o'n yildan ortiq davom etdi.$$
 WHERE topic_uz = $$Kimman$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$Parvon — hozirgi Afg'oniston hududidagi joy. 1221-yilda shu yerda men mo'g'ul qo'shiniga qarshi jang qildim va g'alaba qozondim.

Bu g'alaba alohida ahamiyatga ega, chunki o'sha davrda Chingizxon lashkari yengilmas hisoblanardi va bu unga qarshi erishilgan kam sonli muvaffaqiyatlardan biri edi. Xabar tez tarqalib, bosqinga qarshi kurashayotgan odamlarga umid bergan. Ammo g'alabadan keyin qo'shinim ichida o'lja taqsimoti yuzasidan kelishmovchilik chiqib, kuchlar bo'linib ketgan — bu keyingi janglarda o'z ta'sirini ko'rsatgan.$$
 WHERE topic_uz = $$Parvon jangi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$1221-yilda Sind (Hind) daryosi bo'yidagi jangda men ancha katta qo'shin bilan yuzma-yuz keldim va qurshovda qoldim.

Chekinish yo'li yopiq edi: orqada tik qirg'oq va daryo turardi. Men otim bilan qirg'oqdan daryoga sakrab, narigi tomonga suzib o'tdim. Bu voqea tarixiy manbalarda qayd etilgan va keyinchalik miniatyuralarda ham tasvirlangan. Rivoyatlarga ko'ra, Chingizxonning o'zi bu jasoratni ko'rib, o'g'illariga shunday matonatni o'rnak qilib ko'rsatgan. Shu sahna bugun mening nomim bilan bog'liq eng mashhur voqeadir.$$
 WHERE topic_uz = $$Sind daryosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$Kurashim 1220-yillar boshidan 1231-yilgacha — o'n yildan ortiq davom etdi. Bu vaqt ichida men Movarounnahr, Xuroson, Hindiston chegaralari, Eron, Iroq va Ozarbayjon hududlarida jang qildim.

Kuchlar teng emasdi: mo'g'ul qo'shini son va tashkiliy jihatdan ustun edi, mening tayanchim esa doim o'zgarib turardi. Shunga qaramay men taslim bo'lmadim va qarshilikni to'xtatmadim. Tarixchilar bu kurashni bosqinchilarga qarshi uzoq davom etgan eng qat'iyatli qarshiliklardan biri deb baholaydi.$$
 WHERE topic_uz = $$Kurashim qancha davom etdi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$Otam Alouddin Muhammad bosqin boshlangach chekinishga majbur bo'lgan va Kaspiy dengizidagi kichik orolda umrini yakunlagan.

So'nggi kunlarida u meni taxt vorisi deb e'lon qildi. Bu og'ir meros edi: taxt bilan birga menga vayron bo'lgan davlat va davom etayotgan bosqin qoldi. Kotibim Nasaviy yozib qoldirishicha, otam menga qarshilikni to'xtatmaslikni vasiyat qilgan. Men bu vasiyatga umrimning oxirigacha sodiq qoldim.$$
 WHERE topic_uz = $$Otamning vasiyati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$«Manguberdi» — turkiy tildagi nom bo'lib, «Tangri bergan» degan ma'noni anglatadi. «Jaloliddin» esa arabcha unvon.

O'sha davrda hukmdor va shahzodalarga bir necha nom hamda unvon berilishi odat edi: biri diniy, biri esa xalq tilidagi nom bo'lardi. Mening nomim ikkala an'anani birlashtiradi. Tarixiy manbalarda u turlicha yozilgan — Manguberdi, Mangburni kabi shakllarda; bu manbalarning turli tillarda bitilgani bilan bog'liq.$$
 WHERE topic_uz = $$Ismimning ma'nosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$G'azna — hozirgi Afg'oniston hududidagi qadimiy shahar; u bir vaqtlar G'aznaviylar davlatining poytaxti bo'lgan.

Otam bu o'lkani menga boshqarishni topshirgan. Bosqin boshlangach, aynan shu yerda men qo'shin to'pladim va mo'g'ullarga qarshi kurashni tashkil qildim. Parvon jangi ham shu atrofda bo'lib o'tgan. G'azna men uchun tayanch nuqta bo'lgan: bu yerdan turib janubga ham, shimolga ham harakat qilish mumkin edi.$$
 WHERE topic_uz = $$G'azna o'lkasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$Gurganj (Urganch) Amudaryoning quyi oqimida joylashgan bo'lib, Xorazmshohlar davlatining poytaxti edi.

Shahar Buyuk ipak yo'lidagi yirik savdo markazi bo'lgan: unda madrasalar, masjidlar, bozorlar va kutubxonalar ishlagan. Bu yerda Ma'mun akademiyasi faoliyat yuritgan, Beruniy va Ibn Sino shu shaharda ilm bilan shug'ullangan. Mo'g'ul bosqini vaqtida Gurganj uzoq qarshilik ko'rsatgan va qattiq vayron bo'lgan. Bugun Ko'hna Urganch yodgorliklari YUNESKOning Jahon merosi ro'yxatiga kiritilgan.$$
 WHERE topic_uz = $$Poytaxtimiz Gurganj$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$Shihobiddin Muhammad an-Nasaviy mening shaxsiy kotibim bo'lgan va voqealarni bevosita guvoh sifatida yozib borgan.

Uning «Sultan Jaloliddin Manguberdi hayoti tafsiloti» asari mening hayotim haqidagi asosiy tarixiy manba sanaladi. Kitobda janglar, safarlar, muzokaralar va kundalik voqealar batafsil bayon etilgan. Asar ko'plab tillarga tarjima qilingan va tarixchilar tomonidan XIII asr voqealarini o'rganishda foydalaniladi. Bu shuni ko'rsatadiki, yozib qo'yilgan guvohlik asrlar davomida saqlanadi.$$
 WHERE topic_uz = $$Kotibim Nasaviy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$Kurashimning so'nggi yillarida men g'arbga — hozirgi Eron va Ozarbayjon hududlariga o'tdim va u yerda hokimiyatni qo'lga oldim.

Tabriz shahri poytaxtim bo'ldi. Bu yerda men davlat boshqaruvini tiklashga, soliq tizimini tartibga solishga va yangi qo'shin to'plashga harakat qildim. Maqsadim bosqinga qarshi kengroq ittifoq tuzish edi, ammo qo'shni hukmdorlar bilan kelishuvga erishish oson bo'lmadi. Shunga qaramay bu yillarda ham mo'g'ullarga qarshi harakat to'xtamadi.$$
 WHERE topic_uz = $$Tabrizda hukmronligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$1231-yilda men Kurdiston tog'larida hayotdan ko'z yumdim; bu haqda manbalarda turli ma'lumotlar keltiriladi.

Umrim jang va safarlarda o'tdi — men o'n yildan ortiq vaqt davomida bosqinchilarga qarshi kurashdim va hech qachon taslim bo'lmadim. Xalq xotirasida mening nomim mag'lubiyat bilan emas, matonat bilan bog'lanib qoldi. Tarixda ba'zan kim g'alaba qozongani emas, kim oxirigacha turgani muhimroq bo'ladi.$$
 WHERE topic_uz = $$Umrimning yakuni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$1999-yil O'zbekistonda tavalludimning 800 yilligiga bag'ishlangan tadbirlar yili bo'ldi.

Ilmiy anjumanlar o'tkazilib, men haqimdagi tarixiy manbalar — jumladan Nasaviy asari o'zbek tiliga tarjima qilinib nashr etildi. Maktab darsliklariga hayotim va kurashim haqida ma'lumot kiritildi, badiiy asarlar va filmlar yaratildi. Yubiley tadbirlari Xorazm viloyatida — mening ota yurtimda alohida keng o'tkazildi.$$
 WHERE topic_uz = $$800 yillik tantanalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$Urganch — Xorazm viloyatining markazi; qadimgi Gurganj shahri shu hududda bo'lgan.

Bu yerda menga bag'ishlangan yodgorlik majmuasi barpo etilgan: markazida ot ustidagi haykal turadi, atrofida bog' va xiyobon joylashgan. Majmua 1999-yildagi 800 yillik tadbirlari doirasida ochilgan. Bu joy shahar aholisi va sayyohlar uchun ziyoratgohga aylangan; u yerda bayram va xotira tadbirlari o'tkaziladi.$$
 WHERE topic_uz = $$Urganchdagi yodgorligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');

UPDATE fact_cards SET detail_uz = $$«Jaloliddin Manguberdi» ordeni 2000-yilda ta'sis etilgan davlat mukofoti.

U Vatan mudofaasida, chegaralar daxlsizligini ta'minlashda va harbiy xizmatda alohida jasorat ko'rsatgan kishilarga beriladi. Orden ko'krak nishoni shaklida bo'lib, unda tarixiy ramzlar aks etgan. Bunday mukofotning ta'sis etilishi shuni bildiradiki, sakkiz asr oldingi jasorat bugungi kunda ham qadrlanadi va o'rnak sifatida ko'rsatiladi.$$
 WHERE topic_uz = $$Nomimdagi orden$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'jaloliddin-manguberdi');
