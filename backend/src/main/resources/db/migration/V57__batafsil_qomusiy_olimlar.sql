-- «Batafsil» matnlari — Ibn Sino, al-Xorazmiy, Beruniy va Bobur kartochkalari.
--
-- Qoida o'zgarmaydi: faqat tekshirilgan, ensiklopedik ma'lumot; rivoyat
-- bo'lsa matnda «rivoyatlarga ko'ra» deb aytiladi.

-- ================================ IBN SINO ================================

UPDATE fact_cards SET detail_uz = $$Afshona qishlog'i Buxoro yaqinida joylashgan. Otam Abdulloh davlat xizmatida ishlagan, uyimizda ilm ahli yig'ilib turardi.

Men bolaligimdan g'ayrioddiy tez o'rganardim: o'n yoshimga borib Qur'onni to'liq yod olganman va adabiyot bo'yicha bilim to'plaganman. Keyin oilamiz Buxoroga ko'chdi — o'sha davrda bu shahar Somoniylar davlatining poytaxti va butun Sharqning ilm markazlaridan biri edi. Aynan shu muhit menga barcha imkoniyatni bergan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$«Al-Qonun fit-tib» besh kitobdan iborat: birinchisida tibbiyot asoslari, ikkinchisida oddiy dorilar, uchinchi va to'rtinchisida kasalliklar, beshinchisida murakkab dorilar tayyorlash bayon etilgan.

Asarning kuchi tartibida edi: unda kasallik belgilari, sabablari va davolash usullari izchil joylashtirilgan, shu bois undan darslik sifatida foydalanish qulay bo'lgan. Kitob XII asrda lotin tiliga tarjima qilinib, Yevropa tibbiyot maktablarida qariyb olti asr davomida asosiy qo'llanma bo'lib xizmat qilgan. Unda ming yarimga yaqin dori tasvirlangan.$$
 WHERE topic_uz = $$«Tib qonunlari»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Men avval mantiq, geometriya va astronomiyani o'rganib, so'ng tibbiyotga kirishdim. Tibbiyot menga boshqa fanlarga qaraganda oson tuyulgan, chunki unda kuzatish va tajriba bor edi.

O'n olti yoshimda bemorlarni qabul qila boshladim, tajribali tabiblar ham ba'zi hollarda mendan maslahat so'raydigan bo'lishdi. Amir kutubxonasidan foydalanish huquqi menga butun bir olamni ochdi: u yerda men ko'p noyob kitoblarni o'qib chiqdim. Yosh bo'lsam-da, o'qiganimni yodda saqlash va tartibga solishga harakat qilardim.$$
 WHERE topic_uz = $$Yoshligimdagi ilm$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$«Kitob ash-Shifo» — «Shifo kitobi» degani, ammo u tibbiyot haqida emas: bu yerda «shifo» bilimsizlikdan xalos bo'lish ma'nosida.

Asar o'z davri bilimlarining qomusi: unda mantiq, tabiat fanlari (fizika, kimyo, botanika, zoologiya), matematika va falsafa jamlangan. Hajmi juda katta bo'lgani uchun uni yozish yillar davom etgan. Kitob keyinchalik lotin tiliga tarjima qilinib, Yevropa faylasuflari uchun Arastu ta'limotini tushunish yo'lidagi muhim manba bo'lgan.$$
 WHERE topic_uz = $$«Kitob ash-Shifo»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Mikroblar kashf etilishiga hali ming yil bor edi, ammo kuzatuv ba'zi kasalliklarning bir odamdan boshqasiga o'tishini ko'rsatardi.

Men suv va havo orqali yuqadigan kasalliklar borligini yozganman va bemorni sog'lardan ajratib qo'yishni — bugungi til bilan aytganda karantin qilishni tavsiya qilganman. Shuningdek ichimlik suvini qaynatish yoki filtrlash, xonani tozalash va shamollatish zarurligini ta'kidlaganman. Bu maslahatlar bugun ham to'g'ri: qo'l yuvish va toza suv kasallikdan saqlaydi.$$
 WHERE topic_uz = $$Yuqumli kasalliklar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$«Avitsenna» — mening ismimning («Ibn Sino») lotinchaga o'zgargan shakli.

Asarlarim XII asrdan boshlab lotin tiliga tarjima qilina boshlagan; ularni Yevropa universitetlarida — Parij, Bolonya, Monpelye tibbiyot maktablarida o'qitishgan. Ba'zi kutubxonalarda «Tib qonunlari»ning bosma nusxalari bugun ham saqlanadi. Yevropa tibbiyot tarixiga oid kitoblarda mening nomim Gippokrat va Galen bilan yonma-yon tilga olinadi.$$
 WHERE topic_uz = $$Yevropada nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Somoniylar amiri Nuh ibn Mansur og'ir kasal bo'lganda, saroy tabiblari uni davolay olmagan. Meni chaqirishdi — o'shanda men hali o'smir edim.

Davolanish natija bergach, amir menga mukofot taklif qildi. Men boylik emas, saroy kutubxonasidan foydalanishni so'radim. Bu kutubxonada o'sha davrda kam uchraydigan kitoblar — yunon olimlarining tarjimalari, tibbiyot va falsafa asarlari bor edi. U yerda o'tkazgan kunlarim butun keyingi ijodimga poydevor bo'ldi. Afsuski, oradan yillar o'tib kutubxona yong'inda nobud bo'lgan.$$
 WHERE topic_uz = $$Amirni davolaganim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Abu Abdulloh Notiliy sayohatchi olim bo'lib, bir muddat bizning uyimizda yashagan. Otam undan menga saboq berishni iltimos qilgan.

U menga mantiq, Yevklid geometriyasi va Ptolemey astronomiyasidan dars bergan. Tez orada men savollarni shunday qo'ya boshladimki, ustozning o'zi ba'zi masalalarda javob topishga qiynalardi. Notiliy otamga aytganki, bu bolani faqat ilm bilan shug'ullantirish kerak. Shundan keyin men mustaqil o'qishga o'tdim — kitoblarni o'zim tahlil qilib, tushunmagan joyimni qayta-qayta o'qirdim.$$
 WHERE topic_uz = $$Ustozim Notiliy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Arastuning «Metafizika» asarini men qirq martaga yaqin o'qib chiqqanman va matnni deyarli yod bilardim, ammo uning ma'nosi menga ochilmasdi.

Bir kuni bozorda kitobfurush menga arzon bir kitobchani taklif qildi — u Abu Nasr Forobiyning «Metafizika»ga yozgan sharhi ekan. Uni o'qishim bilan asarning mazmuni birdan tushunarli bo'ldi. Bu voqea menga bir saboq berdi: to'g'ri tushuntirish yozilgan kichik kitob ba'zan yillab qilingan mustaqil urinishdan ko'ra ko'proq foyda beradi.$$
 WHERE topic_uz = $$Forobiy kitobi yordami$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Asarlarimning ko'pi arab tilida — o'sha davrning ilm tilida yozilgan. «Donishnoma» esa fors tilida bitilgan.

Uni men hukmdor Alouddavla iltimosiga binoan yozganman, shuning uchun asar «Donishnomayi Alaiy» deb ham ataladi. Unda mantiq, tabiat ilmlari, matematika va falsafa asoslari sodda tilda bayon etilgan. Bu kitob fors tilida yozilgan ilk falsafiy qomuslardan biri sanaladi va shu til ilmiy atamalarining shakllanishiga hissa qo'shgan.$$
 WHERE topic_uz = $$«Donishnoma» asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$«Urjuza» — she'riy shaklda yozilgan asar degani. Bunday matnni yodlash osonroq bo'ladi, chunki vazn va qofiya xotiraga yordam beradi.

Men tibbiyot qoidalarini shu tarzda nazmga solganman: kasallik belgilari, parhez, dori tayyorlash tartibi. Talabalar uni yod olib, keyin amaliyotda ishlatgan — kitob har doim ham qo'lda bo'lavermasdi. Bu asar ham lotin tiliga tarjima qilingan. Shu usul bugun ham qo'llanadi: she'r yoki qo'shiq shaklidagi qoidalar tez esda qoladi.$$
 WHERE topic_uz = $$Tibbiy dostonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$«Al-adviya al-qalbiya» — «Yurak dorilari» deb ataluvchi maxsus risolam.

Unda yurakni quvvatlaydigan o'simlik va dorilar, ularning ta'sir qilish tartibi va miqdori tasvirlangan. Men yurak faoliyati insonning ruhiy holati bilan bog'liqligini ta'kidlaganman: quvonch va xotirjamlik yurakka foyda, uzoq davom etgan qayg'u esa zarar keltiradi. Shuning uchun tabib bemorning kayfiyatiga ham e'tibor berishi kerak deb hisoblardim — bugun buni tibbiyot ham tasdiqlaydi.$$
 WHERE topic_uz = $$Yurak dorilari kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Tomir urishi (puls) — yurak ishining tashqaridan biladigan belgisi. Men uni o'nlab turga ajratib tasniflaganman: tez va sekin, kuchli va kuchsiz, tekis va notekis.

Har bir tur qanday holatga ishora qilishini «Tib qonunlari»da yozib qoldirganman. Rivoyatlarga ko'ra, men bir bemorning kasali dardi ruhiy ekanini tomir urishidagi o'zgarishdan aniqlaganman: turli shahar va odam nomlari aytilganda urish tezlashgan. Pulsni sanash bugungi tibbiyotda ham birinchi tekshiruvlardan biri bo'lib qolgan.$$
 WHERE topic_uz = $$Tomir urishidan tashxis$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Umrimning katta qismi safarda o'tdi: Buxoro, Gurganj, Ray, Hamadon va Isfahon shaharlarida yashaganman.

Hamadonda hukmdor Shams ud-Davlani davolaganimdan keyin u meni vazir etib tayinladi. Kunduzi davlat ishlari, kechqurun esa ilm bilan shug'ullanardim: shogirdlarim bilan o'tirib, «Kitob ash-Shifo» va «Tib qonunlari» ustida ishlardik. Bu yillar oson kechmagan — siyosat o'zgarishi bilan men bir muddat qamoqqa ham tushganman, ammo o'shanda ham yozishdan to'xtamaganman.$$
 WHERE topic_uz = $$Hamadonda vazirligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

UPDATE fact_cards SET detail_uz = $$Men 1037-yilda Hamadon shahrida (hozirgi Eron hududida) vafot etganman va shu yerda dafn etilganman.

Maqbara ustida XX asrda yangi yodgorlik majmuasi qurilgan: u baland minorasimon bino bo'lib, yonida kutubxona va muzey joylashgan. Bu yerga dunyoning turli mamlakatlaridan tabiblar va talabalar keladi. O'zbekistonda ham nomim ulug'lanadi: Buxoro viloyatidagi tug'ilgan qishlog'im Afshonada muzey ochilgan, Toshkentdagi tibbiyot akademiyasi va ko'plab shifoxonalar mening nomimni yuritadi.$$
 WHERE topic_uz = $$Maqbaram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ibn-sino');

-- =============================== AL-XORAZMIY ===============================

UPDATE fact_cards SET detail_uz = $$Xorazm — Amudaryoning quyi oqimidagi qadimiy voha. Olimning tug'ilgan joyi nomi bilan atalishi o'sha davrda odat edi: «al-Xorazmiy» «xorazmlik» degani.

Umrimning katta qismi Bag'dodda — xalifalikning poytaxti va o'sha davrning eng yirik ilm markazida o'tgan. U yerga turli o'lkalardan olimlar to'plangan edi. Ammo men qayerda bo'lsam ham, vatanim nomini o'zim bilan olib yurdim — bugun bu nom butun dunyoga tanish.$$
 WHERE topic_uz = $$Vatanim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Kitob nomidagi «al-jabr» — «to'ldirish», «al-muqobala» esa «qiyoslash» degani. Bular tenglamani soddalashtirishning ikki asosiy amali: manfiy hadni ikkinchi tarafga o'tkazish va o'xshash hadlarni qisqartirish.

Men tenglamalarni turlarga ajratib, har biri uchun yechish qoidasini bayon qildim va uni chizma bilan isbotladim. O'sha davrda harfli belgilar yo'q edi — hamma narsa so'z bilan yozilardi. Kitob nomidagi «al-jabr» so'zidan bugungi «algebra» fanining nomi kelib chiqqan.$$
 WHERE topic_uz = $$Algebra$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$O'rta asrlarda Yevropa olimlari arab tilidagi kitoblarni lotinchaga tarjima qilgan. Mening ismim tarjimalarda «Algoritmi» shaklida yozilgan.

Dastlab bu so'z «hind raqamlari bilan hisoblash usuli» ma'nosini bildirgan, keyin esa umuman «aniq ketma-ket qoidalar» degan ma'noga ega bo'lgan. Bugun algoritm — dasturlashning asosiy tushunchasi: har bir kompyuter dasturi, telefoningizdagi ilova va qidiruv tizimi algoritmlar asosida ishlaydi.$$
 WHERE topic_uz = $$Algoritm so'zi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$O'sha paytda turli xalqlar turli sanoq usulidan foydalanardi; ba'zilarida katta sonlarni yozish ham, ular ustida amal bajarish ham juda noqulay edi.

Men hindlardan olingan o'nlik sanoq tizimini — o'nta raqam va xona qiymati tamoyilini alohida kitobda tushuntirib berdim. Bu tizimda har raqamning qiymati turgan o'rniga bog'liq, shuning uchun ustunlab qo'shish va ko'paytirish mumkin. Kitob lotinchaga tarjima qilingach, bu raqamlar Yevropaga tarqalgan va u yerda «arab raqamlari» deb atalgan — bugun butun dunyo shu raqamlardan foydalanadi.$$
 WHERE topic_uz = $$Hind raqamlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$«Kitob surat al-arz» — «Yer surati kitobi» degani. Unda ikki minga yaqin shahar, tog', dengiz va daryoning koordinatalari — kenglik va uzunligi keltirilgan.

Men yunon olimi Ptolemeyning ma'lumotlarini asos qilib olganman, ammo ularni sayyohlar va savdogarlar keltirgan yangi xabarlar asosida tuzatganman: ayniqsa Sharq mamlakatlari, Kaspiy dengizi va O'rta Osiyo hududlari haqidagi ma'lumotlar aniqlashtirilgan. Asarga xaritalar ham ilova qilingan. Bu ish arab geografiya maktabining boshlanishi bo'lgan.$$
 WHERE topic_uz = $$Geografiya$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$«Bayt ul-hikma» — Bag'doddagi ilm markazi: u ayni vaqtda kutubxona, tarjima maktabi va rasadxona edi.

Xalifa Ma'mun u yerga turli o'lkalardan olimlarni taklif qilgan; yunon, hind va fors tillaridagi kitoblar arabchaga tarjima qilingan. Men bu markazda ishlab, keyinchalik olimlarga rahbarlik qilganman. Bizning vazifamiz faqat tarjima emas, balki bilimlarni tekshirish va rivojlantirish edi: eski jadvallar qayta hisoblangan, yangi kuzatuvlar o'tkazilgan. Ahmad al-Farg'oniy ham shu markazda ishlagan.$$
 WHERE topic_uz = $$«Bayt ul-hikma»ga rahbarligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$«Zij» — osmon jismlari harakatini oldindan hisoblash imkonini beruvchi jadvallar to'plami.

Mening «Zij»imda Quyosh, Oy va sayyoralar harakati, kunning uzunligi, taqvim hisoblari keltirilgan. Unda trigonometrik jadvallar — sinus qiymatlari ham bor; bu jadvallar hisoblarni ancha yengillashtirgan. Asar keyinchalik lotin tiliga tarjima qilingan va Yevropa astronomlari uchun namuna bo'lgan. «Zij» tuzish an'anasi keyinroq Ulug'bek rasadxonasida eng yuksak darajaga chiqqan.$$
 WHERE topic_uz = $$«Zij» jadvallarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Nol — matematikaning eng muhim ixtirolaridan biri. Usiz xona qiymatiga asoslangan sanoq tizimi ishlamaydi: 105 va 15 sonlarini farqlash uchun bo'sh xona belgisi kerak.

Arab tilida bo'sh xona «sifr» deb atalgan. Bu so'z lotinchaga «cifra» shaklida o'tib, keyin turli tillarda «shifr», «raqam» va «nol» ma'nolarini bergan. Rus tilidagi «цифра» va ingliz tilidagi «cipher» so'zlari ham shu ildizdan. Shunday qilib, bo'sh xonani bildirgan oddiy belgi butun dunyo matematikasini o'zgartirgan.$$
 WHERE topic_uz = $$Nol va «sifr» so'zi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Men algebrani mavhum fan sifatida emas, kundalik ehtiyoj sifatida ko'rganman va kitobimda buni ochiq yozganman.

Undagi masalalar hayotdan olingan: meros qanday taqsimlanadi, savdoda foyda qanday hisoblanadi, yer maydoni qanday o'lchanadi, kanal qazishda qancha tuproq chiqadi. Har masala uchun avval umumiy qoida beriladi, keyin misol yechiladi. Shu yondashuv tufayli kitob nafaqat olimlar, balki savdogarlar, mirzalar va me'morlar uchun ham foydali bo'lgan.$$
 WHERE topic_uz = $$Kundalik hayot masalalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Asturlob — yulduz va Quyoshning ufqdan balandligini o'lchaydigan asbob. U mis yoki jezdan yasalgan, aylanadigan qismlari va shkalalari bo'lgan.

Men bu asbobni yasash va undan foydalanish haqida asarlar yozganman. Asturlob yordamida vaqtni aniqlash, joyning kengligini topish va qibla yo'nalishini belgilash mumkin edi — ya'ni u o'sha davrning ko'p vazifali asbobi bo'lgan. Sayohatchilar va dengizchilar undan yo'l topishda foydalangan. Bu asbob keyinchalik Yevropaga ham tarqalib, kompas va sekstantgacha bo'lgan davrda asosiy vosita bo'lib qolgan.$$
 WHERE topic_uz = $$Asturlob haqidagi asarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Xalifa Ma'mun Yerning kattaligini aniq bilishni istagan va olimlarga shu vazifani topshirgan.

O'lchov quyidagicha o'tkazilgan: tekis cho'lda ikki guruh qarama-qarshi yo'nalishda yurib, yulduz balandligi bir darajaga o'zgarguncha bosib o'tilgan masofani o'lchagan. Shu yo'l bilan meridianning bir darajasi uzunligi topilgan va uni 360 ga ko'paytirib, Yer aylanasi hisoblangan. Natija o'sha davr imkoniyatlari uchun hayratlanarli darajada aniq chiqqan. Bu ish ilm-fanda o'lchov va tajribaga tayanishning erta namunasidir.$$
 WHERE topic_uz = $$Yer aylanasini o'lchash$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Oydagi relef shakllariga tarixda iz qoldirgan olimlar nomi beriladi — bu xalqaro astronomiya ittifoqi tomonidan tasdiqlanadi.

Mening nomim Oyning Yerdan ko'rinmaydigan tomonidagi kraterlardan biriga berilgan. Bu ro'yxatda vatandoshlarimizdan Ulug'bek va Beruniy nomlari ham bor. Bunday nomlar ilmiy meros butun insoniyatga tegishli ekanini eslatib turadi.$$
 WHERE topic_uz = $$Oydagi krater$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$Toshkentdagi Muhammad al-Xorazmiy nomidagi Axborot texnologiyalari universiteti — mamlakatning eng yirik texnika oliygohlaridan biri.

Nomning tanlanishi tasodifiy emas: dasturlash algoritmlarga asoslanadi, «algoritm» so'zi esa mening ismimdan kelib chiqqan. Universitetda dasturchilar, muhandislar va telekommunikatsiya mutaxassislari tayyorlanadi, uning filiallari bir necha viloyatda ishlaydi. Shu tariqa ming yil oldingi matematika bilan bugungi raqamli texnologiyalar o'rtasida bevosita bog'liqlik bor.$$
 WHERE topic_uz = $$Universitet nomimda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$1983-yilda YUNESKO ishtirokida tavalludimning 1200 yilligi nishonlangan: ilmiy anjumanlar o'tkazilib, asarlarim haqida kitoblar nashr etilgan.

Ona yurtim Xorazmda, Urganch shahrida menga haykal o'rnatilgan. Mustaqillik yillarida asarlarim o'zbek tiliga tarjima qilinib chop etildi, maktab darsliklariga hayotim haqida ma'lumot kiritildi. Xorazm viloyatida nomim bilan atalgan tuman ham bor.$$
 WHERE topic_uz = $$1200 yillik yubileyim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

UPDATE fact_cards SET detail_uz = $$XII asrda ingliz olimi Chester Roberti va boshqa tarjimonlar mening algebra kitobimni lotin tiliga o'girgan. Shundan keyin u Yevropada tarqala boshlagan.

Kitob asosida yozilgan darsliklar bo'yicha bir necha asr davomida matematika o'qitilgan; hind raqamlari ham shu yo'l bilan Yevropaga kirib borgan. Italiyalik matematik Leonardo Fibonachchi o'z asarida bu raqamlarning qulayligini targ'ib qilgan. Shunday qilib, Bag'dodda arab tilida yozilgan kitob Yevropa fanining rivojiga bevosita ta'sir ko'rsatgan.$$
 WHERE topic_uz = $$Yevropa darsliklarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'al-xorazmiy');

-- ============================= ABU RAYHON BERUNIY =============================

UPDATE fact_cards SET detail_uz = $$Kot shahri o'sha davrda Xorazmning poytaxti bo'lgan. Bugun uning o'rnida Qoraqalpog'istondagi Beruniy shahri joylashgan.

Yoshligimdan yulduzlarni kuzatish va o'lchash ishlariga qiziqqanman. Ustozim Abu Nasr ibn Iroq — matematik va astronom — menga geometriya va yulduzlar ilmini o'rgatgan. O'n yetti yoshimda men Quyoshning balandligini o'lchab, tug'ilgan shahrimning geografik kengligini hisoblab chiqqanman.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$«Tahqiq mo li-l-Hind» — «Hindiston haqidagi haqiqatni aniqlash» degani. Asarni yozish uchun men sanskrit tilini o'rganganman va hind olimlari bilan bevosita suhbatlashganman.

Kitobda hind falsafasi, dini, matematikasi, astronomiyasi, taqvimi va urf-odatlari tasvirlangan. Men o'zim ko'rmagan yoki tekshirmagan narsani yozmaslikka harakat qilganman va o'zga xalq e'tiqodini masxara qilmay, xolis bayon etganman. Shu yondashuv tufayli asar bugun ham qiyosiy dinshunoslik va etnografiyaning erta namunasi sifatida qadrlanadi.$$
 WHERE topic_uz = $$Hindiston haqidagi asar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$O'lchovni men Hindistondagi Nandana qal'asi yonida o'tkazganman. Usul geometriyaga asoslangan: avval tog'ning balandligini o'lchadim, so'ng cho'qqidan ufq chizig'igacha bo'lgan burchakni aniqladim.

Shu ikki qiymatdan trigonometriya yordamida Yer radiusini hisoblab chiqdim. Natija bugungi zamonaviy o'lchovlarga juda yaqin — farq bir foizdan kam. Bu usulning ahamiyati shundaki, u bitta joyda, kichik guruh bilan bajarilishi mumkin edi, avvalgi usullar esa uzoq masofani o'lchashni talab qilardi.$$
 WHERE topic_uz = $$Yer o'lchovi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Men yozgan asarlar ro'yxatini o'zim tuzganman — unda 150 dan ortiq nom bor. Ular astronomiya, matematika, geografiya, tarix, mineralogiya, tibbiyot va tillarga oid.

Afsuski, bu asarlarning hammasi ham saqlanmagan: bugungacha yigirmatachasi to'liq yoki qisman yetib kelgan. Qolganlarining nomi va mazmuni haqida faqat o'z ro'yxatim va boshqa olimlarning eslatmalari orqali bilamiz. Saqlangan asarlar orasida «Hindiston», «Osor ul-boqiya», «Qonuni Ma'sudiy», «Mineralogiya» va «Saydana» bor.$$
 WHERE topic_uz = $$Asarlarim soni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Asarning to'liq nomi — «Qadimgi xalqlardan qolgan yodgorliklar». Men uni yigirma sakkiz yoshimda yozganman.

Kitobda turli xalqlarning — forslar, yunonlar, yahudiylar, arablar, so'g'diylar va xorazmliklarning taqvimlari, yil hisoblari va bayramlari solishtirib chiqilgan. Har bir taqvimning tuzilishi, oy va kun nomlari, bayramlarning kelib chiqishi tushuntirilgan. Shu asar tufayli bugun xorazm taqvimi va qadimgi mahalliy bayramlar haqida ma'lumotga egamiz — boshqa manbalarda ular saqlanmagan.$$
 WHERE topic_uz = $$«Osor ul-boqiya»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Xorazmshoh Ma'mun II Gurganj saroyiga o'z davrining eng yaxshi olimlarini to'plagan edi. Bu davra keyinchalik «Ma'mun akademiyasi» deb nom oldi.

U yerda men bilan birga tabib va faylasuf Abu Sahl Masihiy, matematik Abu Nasr ibn Iroq va yosh Ibn Sino ishlagan. Olimlar bir-biriga savol berar, tajriba va kuzatuv natijalarini muhokama qilardi. Bu erkin ilmiy muhit uzoq davom etmadi: siyosiy o'zgarishlar tufayli olimlar turli tomonga tarqab ketdi. 1997-yilda Xorazmda Ma'mun akademiyasining 1000 yilligi nishonlangan.$$
 WHERE topic_uz = $$Ma'mun akademiyasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Men Ibn Sinodan yoshroq emas, aksincha undan taxminan yetti yosh katta edim; yozishmalarimiz ikkalamiz ham yosh paytimizda bo'lgan.

Men unga tabiat haqida o'nga yaqin savol yubordim: nima uchun suv sovuganda muzlaydi va hajmi kengayadi, yorug'lik qanday tarqaladi, osmon jismlari nima uchun shunday harakat qiladi. Ibn Sino javob yozgan, men esa ba'zi javoblariga e'tiroz bildirib, yana savol berganman. Bu yozishmalar saqlanib qolgan va ular ikki buyuk olimning yoshligidagi ilmiy bahsini ko'rsatadi — ilmda savol berish javob berishdan kam ahamiyatga ega emas.$$
 WHERE topic_uz = $$Ibn Sino bilan yozishmalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Mahmud G'aznaviy Xorazmni egallagach, saroyidagi olimlarni o'zi bilan G'azna shahriga (hozirgi Afg'oniston hududida) olib ketgan. Men ham shular orasida edim.

Bu men uchun og'ir davr bo'ldi — vatandan uzoqda yashashga to'g'ri keldi. Ammo aynan shu yillarda men Hindistonga bir necha bor borib, sanskrit tilini o'rgandim va «Hindiston» asarini yozdim. G'aznada «Qonuni Ma'sudiy» va boshqa yirik asarlarim yaratilgan. Umrimning oxirigacha shu shaharda yashab, 1048-yilda vafot etganman.$$
 WHERE topic_uz = $$G'aznadagi yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$«Qonuni Ma'sudiy» — astronomiya va matematikaga oid eng yirik asarim; u o'n bir kitobdan iborat.

Unda osmon jismlarining harakati, yulduzlar jadvali, geografik koordinatalar, trigonometriya qoidalari va Yerni o'lchash usullari bayon etilgan. Asarni men sulton Mas'udga bag'ishlaganman. Rivoyatlarga ko'ra, sulton menga mukofot tariqasida fil yuki kumush yuborgan, men esa uni qaytarganman — ilm bilan shug'ullanishning o'zi menga yetarli edi. Kitob keyingi asrlarda Sharq astronomlari uchun asosiy qo'llanmalardan biri bo'lgan.$$
 WHERE topic_uz = $$«Qonuni Ma'sudiy»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$«Kitob al-jamohir» («Qimmatbaho toshlar kitobi») asarimda men yuzga yaqin mineral, ma'dan va qimmatbaho toshni tasvirlaganman.

Har biri uchun rangi, qattiqligi, topiladigan joyi va ishlatilishi ko'rsatilgan. Eng muhimi — men ularning solishtirma og'irligini maxsus asbob yordamida o'lchaganman: bir xil hajmdagi turli toshlarning og'irligini suv bilan siqib chiqarish usulida taqqoslaganman. Olingan qiymatlar bugungi o'lchovlarga juda yaqin. Bu ish tajribaga asoslangan tabiatshunoslikning erta va yorqin namunasidir.$$
 WHERE topic_uz = $$Minerallar kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$«Saydana» — dorishunoslikka bag'ishlangan asar; men uni umrimning oxirida, sakson yoshga yaqinlashganda yozganman.

Unda mingga yaqin dorivor o'simlik, ma'dan va hayvon mahsulotlari tasvirlangan: ularning tashqi ko'rinishi, o'sadigan joyi, xossalari va qo'llanishi. Har bir dorining nomini men bir necha tilda — arab, fors, yunon, hind, suryoniy va xorazmiy tillarida keltirganman. Bu tabiblarga turli o'lkalardan kelgan dorilarni adashtirmasdan aniqlash imkonini bergan. Asar tibbiyot tarixi uchun ham, tilshunoslik uchun ham qimmatli manba.$$
 WHERE topic_uz = $$«Saydana» asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Ona tilim xorazmiy tili bo'lgan — bu bugun yo'qolib ketgan qadimgi til. Ilmiy asarlarni esa o'sha davr ilm tili bo'lgan arab tilida yozganman.

Bulardan tashqari fors, sanskrit, yunon va suryoniy tillarini o'rganganman. Tillarni bilish menga boshqa xalqlarning kitoblarini tarjimonsiz o'qish va olimlar bilan bevosita suhbatlashish imkonini bergan — «Hindiston» asari aynan shu tufayli yozilgan. Men til nafaqat muloqot vositasi, balki xalqning fikrlash tarzini ochib beruvchi kalit deb bilardim.$$
 WHERE topic_uz = $$Tillarni bilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Globus — Yer shari tasvirlangan model. Men uni yoshligimda, Xorazmda yasaganman: uning diametri qariyb besh qadam bo'lgan degan ma'lumot bor.

Unga o'sha davrda ma'lum bo'lgan shaharlar, dengizlar va o'lkalar tushirilgan. Bunday model tekis xaritaga qaraganda aniqroq: sharsimon Yer yuzasini tekislikka to'liq to'g'ri tushirib bo'lmasligini men yozib qoldirganman. Bu ish Yer shar shaklida ekani o'sha davr olimlari uchun oddiy haqiqat bo'lganini ko'rsatadi.$$
 WHERE topic_uz = $$Globus yasaganim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Fors tilidagi «berun» so'zi «tashqari» degani. Men tug'ilgan joy Kot shahrining chekkasida bo'lgani uchun meni shunday atashgan.

O'sha davrda olimlar odatda tug'ilgan yeri nomi bilan tanilardi: «al-Xorazmiy» — xorazmlik, «al-Farg'oniy» — farg'onalik, «al-Buxoriy» — buxorolik. Mening laqabim esa shahar nomidan emas, joylashuvidan olingan. Bu nom bilan men tarixda qoldim va bugun Qoraqalpog'istondagi bir shahar shu nom bilan ataladi.$$
 WHERE topic_uz = $$Ismimning ma'nosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

UPDATE fact_cards SET detail_uz = $$Qoraqalpog'istondagi Beruniy shahri va tuman mening nomim bilan ataladi — u men tug'ilgan Kot shahri o'rniga yaqin joyda.

Toshkentda metro bekati va O'zbekiston Fanlar akademiyasining Sharqshunoslik instituti ham shu nomni yuritadi; institutda qadimgi qo'lyozmalar saqlanadi. Oydagi kraterlardan biriga ham mening nomim berilgan. 1973-yilda tavalludimning 1000 yilligi YUNESKO qarori bilan xalqaro miqyosda nishonlangan.$$
 WHERE topic_uz = $$Nomim bilan atalgan joylar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abu-rayhon-beruniy');

-- ================================== BOBUR ==================================

UPDATE fact_cards SET detail_uz = $$Andijon o'sha davrda Farg'ona vodiysining markazi edi. Otam Umarshayx Mirzo bu yerning hokimi bo'lgan.

Ota tomondan men Amir Temurning avlodiman — u mening bobokalonim bo'ladi. Ona tomondan esa mo'g'ul xonlari nasabiga borib taqaladi. «Bobur» so'zi «yo'lbars» degan ma'noni bildiradi. Bolaligim Andijonda o'tgan; «Boburnoma»da men bu shahar haqida, uning mevalari va qovunlari, ov qiladigan qushlari haqida mehr bilan yozganman.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$«Boburnoma»ni men o'z ona tilimda — eski o'zbek (chig'atoy) tilida yozganman. Bu kundalik shaklidagi asar bo'lib, unda voqealar yildan yilga bayon etiladi.

Asarning noyobligi shundaki, men unda faqat g'alabalarni emas, mag'lubiyat va xatolarimni ham yozganman. Shaharlar, tog'lar, o'simlik va hayvonlar, odamlarning odatlari shu qadar aniq tasvirlanganki, tabiatshunoslar ham undan foydalanadi. Kitob fors, ingliz, rus, fransuz va boshqa o'nlab tillarga tarjima qilingan hamda jahon adabiyotidagi eng mashhur memuarlardan biri sanaladi.$$
 WHERE topic_uz = $$«Boburnoma»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Hindistonga bir necha bor yurish qilganman; hal qiluvchi jang 1526-yilda Panipat maydonida bo'lgan.

Qo'shinim son jihatidan ancha kam edi, shuning uchun men yangi usuldan foydalandim: aravalarni zanjir bilan bog'lab mudofaa chizig'i yasadim va uning orqasiga to'p hamda miltiqchilarni joylashtirdim. G'alabadan keyin Dehli va Agra qo'lga kiritildi. Shu tariqa Hindistonda yangi davlatga asos solindi — u keyinchalik boburiylar saltanati deb nom oldi va uch asrdan ortiq davom etdi.$$
 WHERE topic_uz = $$Hindistonga yurish$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Men o'n ikki yoshimda taxtga o'tirib, yigirma yoshimdan oldin vatanni tark etishga majbur bo'lganman va boshqa qaytolmaganman.

Hindistonda hukmdor bo'lsam ham, Farg'ona sog'inchi meni tark etmadi. She'rlarimda va «Boburnoma»da bu haqda ko'p yozganman; eng mashhur satrlarimdan biri shunday boshlanadi: «Tole' yo'qi jonimg'a balolig' bo'ldi». Hindiston tabiatini tasvirlaganimda ham uni doim Farg'ona bilan solishtirganman: u yerning qovuni, muzdek suvi va to'rt fasli menga yetishmasdi. Vatan sog'inchi mavzusi shu tufayli ijodimning eng samimiy qismi bo'lib qoldi.$$
 WHERE topic_uz = $$Vatan sog'inchi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Otam Umarshayx Mirzo 1494-yilda kutilmagan hodisa tufayli — qal'a devoridagi kabutarxona jarlikka qulaganda halok bo'lgan. Buni men «Boburnoma»da yozib qoldirganman.

Shundan keyin men o'n ikki yoshda Farg'ona taxtiga o'tirdim. Yosh hukmdor uchun bu og'ir sinov edi: qarindoshlar taxtga da'vo qilar, atrofdagi beklar o'z manfaatini ko'zlardi. Bu yillarda men davlat boshqaruvini amaliy tarzda — xato va tajriba orqali o'rgandim.$$
 WHERE topic_uz = $$Farg'ona taxti$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Samarqand men uchun oddiy shahar emas, bobokalonim Amir Temur poytaxti edi — uni egallash orzuyim bo'lgan.

Shaharni ikki marta qo'lga kiritdim, ammo ikkalasida ham uzoq ushlab turolmadim: Muhammad Shayboniyxon qo'shini kuchli edi, mening tayanchim esa yetarli emasdi. Bu kurashlarda men Farg'onani ham yo'qotdim. «Boburnoma»da bu mag'lubiyatlar haqida ochiq yozganman — o'z xatolarimni yashirmaganman. Shundan keyin janubga, Qobul tomon yo'l oldim.$$
 WHERE topic_uz = $$Samarqand uchun kurashim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$1504-yilda Qobulni egallaganman va bu shahar yigirma yildan ortiq mening tayanchim bo'ldi.

Qobulda men davlat boshqaruvini tartibga soldim, bog'lar barpo ettirdim, savdo yo'llarini xavfsizlantirdim. Aynan shu yillarda «Boburnoma»ning katta qismi yozilgan, she'rlarim to'plangan. Qobul menga geografik jihatdan ham qulay edi: bu yerdan Hindistonga yo'l ochilardi. Vasiyatimga ko'ra men shu shaharda dafn etilganman.$$
 WHERE topic_uz = $$Qobul hukmdorligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Panipat jangi 1526-yil aprel oyida Dehli yaqinidagi tekislikda bo'lib o'tgan. Qarshimda Dehli sultoni Ibrohim Lo'diyning ancha katta qo'shini turardi.

Men aravalarni bir-biriga bog'lab mudofaa devori yasadim, to'plarni ular orasiga joyladim, otliqlarni esa qanotlarga taqsimladim. Jang paytida otliqlar dushman qo'shinini yon tomondan qurshab oldi. To'plardan foydalanish Hindiston janglarida yangilik edi va natijani hal qildi. Bu g'alaba bilan Shimoliy Hindistonda yangi davr boshlandi.$$
 WHERE topic_uz = $$Panipat jangi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Men asos solgan sulola Hindistonda uch asrdan ortiq hukmronlik qilgan. Uni Yevropada «Buyuk mo'g'ullar», Sharqda esa boburiylar deb ataydilar.

Nabiram Akbar davrida davlat kengayib, turli din vakillari o'rtasida murosa siyosati yuritilgan. Avlodlarimdan Shohjahon rafiqasi xotirasiga Agrada Tojmahalni qurdirgan — bu bino bugun jahon me'morligining eng mashhur durdonalaridan biri va YUNESKO ro'yxatida. Dehlidagi Qizil qal'a va Jome masjidi ham shu sulola davrida qurilgan. Boburiylar me'morligida O'rta Osiyo an'analari hind uslubi bilan qo'shilgan.$$
 WHERE topic_uz = $$Boburiylar sulolasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$«Mubayyin» — «bayon qiluvchi» degani. Asarni men o'g'lim Humoyun va boshqa farzandlarimga atab yozganman.

Unda diniy amallar va qoidalar she'riy shaklda — masnaviy vaznida bayon etilgan, chunki nazm yodlashni osonlashtiradi. Kitobda soliq turlari va ularning hisobi ham tushuntirilgan, shu bois u amaliy qo'llanma vazifasini ham bajargan. Bu asar mening farzandlarim tarbiyasiga qanchalik e'tibor berganimni ko'rsatadi: men ularga faqat taxt emas, bilim qoldirishni istaganman.$$
 WHERE topic_uz = $$«Mubayyin» asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$«Xatti Boburiy» — men ishlab chiqqan yozuv. Uni yaratishdan maqsad matnni aniqroq va oson o'qiladigan qilish edi: arab yozuvida bir xil ko'rinishdagi harflar nuqtalar bilan farqlanadi va bu chalkashlikka olib kelishi mumkin.

Yangi yozuvda har bir tovush uchun alohida, bir-biridan aniq farq qiladigan belgi bo'lgan. Bu alifboda ayrim kitoblar ko'chirilgani, jumladan Qur'on nusxasi yozilgani haqida ma'lumot bor. Yozuv keng tarqalmagan, ammo uning o'zi diqqatga sazovor: hukmdor bo'la turib til va yozuv masalalari bilan shug'ullanish kam uchraydigan hol.$$
 WHERE topic_uz = $$Xatti Boburiy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Aruz — arab, fors va turkiy she'riyatda qo'llanadigan vazn tizimi: unda bo'g'inlarning uzun-qisqaligi ma'lum tartibda takrorlanadi.

«Muxtasar» risolamda men aruz qoidalarini turkiy she'riyat misolida tushuntirganman va ba'zi vaznlarni o'zim tartibga solganman. Asarda she'r tuzilishi, qofiya va vazn turlari bayon etilgan. Bu ish shuni ko'rsatadiki, men she'rni ilhomga tayangan mashg'ulot emas, qoidalari o'rganiladigan san'at deb bilganman.$$
 WHERE topic_uz = $$Aruz haqidagi risolam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$She'rlarim g'azal, ruboiy, tuyuq va qit'a shaklida yozilgan; ular devon holida to'plangan.

Mavzular xilma-xil: vatan sog'inchi, do'stlik, sadoqat, hayot va o'z holatim haqidagi o'ylar. Uslubim sodda va samimiy — men murakkab tashbehlardan ko'ra aniq va tushunarli ifodani afzal ko'rganman. Ba'zi she'rlarim «Boburnoma» matni ichida ham uchraydi: voqeani bayon qilgach, o'sha paytdagi kayfiyatimni she'r bilan ifodalaganman. Bugun bu she'rlar maktab darsliklariga kiritilgan.$$
 WHERE topic_uz = $$G'azal va ruboiylarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Onam Qutlug' Nigorxonim Toshkent va Movarounnahr hukmdori Yunusxonning qizi edi.

Otam vafotidan keyin men yosh hukmdor bo'lganimda, onam menga tayanch bo'lgan: u taxt uchun kurash yillarida, uzoq safarlar va och kunlarda ham men bilan birga yurgan. «Boburnoma»da men uning matonati haqida hurmat bilan yozganman. Onam Qobulda vafot etgan. Bu davrda ayollar davlat ishlarida ko'pincha bevosita ishtirok etmasa-da, oila va sulola taqdirida ularning o'rni katta bo'lgan.$$
 WHERE topic_uz = $$Onam Qutlug' Nigorxonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');

UPDATE fact_cards SET detail_uz = $$Men 1530-yilda Agrada vafot etganman, ammo vasiyatimga ko'ra xokim keyinchalik Qobulga — o'zim barpo ettirgan bog'ga ko'chirilgan.

Bu joy bugun «Bog'i Bobur» deb ataladi. Bog' zinapoyali qilib qurilgan: tepadan pastga suv oqadigan ariqlar, mevali daraxtlar va soyabon yo'laklar bor. Bunday bog' uslubi keyinchalik boburiylar me'morligining ajralmas qismiga aylangan — Tojmahal atrofidagi bog' ham shu an'ana davomi. Bog'i Bobur ta'mirlanib, bugun ziyoratgoh va shahar aholisining dam olish maskaniga aylangan.$$
 WHERE topic_uz = $$Qabrim — Bog'i Bobur$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bobur');
