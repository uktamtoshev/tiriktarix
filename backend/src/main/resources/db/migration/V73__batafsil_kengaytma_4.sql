-- «Batafsil» matnlarini KENGAYTIRISH — 4-to'plam: Abdulla Oripov va Erkin
-- Vohidov. Qoidalar V70–V72 bilan bir xil.
--
-- MANBA. `source` o'zgarmaydi. Solishtirilgan manbalar:
--   uz.wikipedia.org «Abdulla Oripov» va «Erkin Vohidov».
--
-- IXTILOF (metodist-tarixchi tasdig'i kerak). Abdulla Oripov bo'yicha bazadagi
-- ba'zi sanalar uz.wikipedia bilan mos kelmaydi:
--   «O'zbekiston xalq shoiri» — bazada 1990, vikipediyada 1983;
--   Navoiy nomidagi Davlat mukofoti — bazada 1992, vikipediyada 1994;
--   «Ko'zlarim yo'lingda» — bazada 1966, vikipediyada 1967;
--   «O'zbekiston» to'plami — bazada 1971, vikipediyada 1972.
-- Batafsil matnlarda bu sanalar QAYTA AYTILMAGAN: fakt o'zgartirilmadi, ammo
-- ixtilofli raqam kuchaytirilmadi ham. Metodist qaysi variant to'g'riligini
-- hal qilgach, `fact_uz` ni tuzatish kerak bo'ladi.

-- ================================ ABDULLA ORIPOV ================================

UPDATE fact_cards SET detail_uz = $$Tug'ilgan kunim — 21-mart, ya'ni Navro'z kuni. Qishlog'im Neko'z Qashqadaryo viloyatining Koson tumanida joylashgan.

Tug'ilgan yilim urush boshlangan yil edi va bolaligim og'ir davrga to'g'ri keldi. Qishloq hayoti, dala mehnati va oddiy odamlarning turmushi — bularning barchasi keyinchalik she'rlarimga kirgan.

Maktabni 1958-yilda oltin medal bilan tugatganman. Vatan mavzusi ijodimda markaziy o'rin tutadi va u aynan shu qishloqdan, shu bolalikdan boshlangan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Universitetni imtiyozli diplom bilan tugatganman; yo'nalishim o'zbek filologiyasi, ixtisosligim esa jurnalistika edi.

Talabalik yillarim adabiy muhitga kirishimga yordam bergan: universitetda she'riyat kechalari o'tkazilar, yosh ijodkorlar to'planardi. Ilk she'rlarim aynan shu davrda matbuotda bosilgan.

Jurnalistika ta'limi menga aniq va tushunarli yozishni o'rgatgan — bu she'riyatda ham asqotadi. Bitirganimdan so'ng darhol «Yosh gvardiya» nashriyotiga muharrir bo'lib ishga kirganman.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Madhiya to'g'risidagi qonun 1992-yil 10-dekabrda qabul qilingan — ya'ni matn shu kundan boshlab rasmiy davlat ramzi maqomini olgan.

Madhiya matni yozish alohida mas'uliyat: u qisqa bo'lishi, yodlanishi oson bo'lishi va butun xalq nomidan gapirishi kerak. Unda vatan, mustaqillik va kelajakka ishonch mavzulari jamlangan.

Matn musiqaga solinishi ham hisobga olinadi — har bo'g'in ohangga tushishi lozim. Madhiya rasmiy tadbirlarda, bayramlarda va xalqaro musobaqalarda ijro etiladi; uni mamlakatdagi har bir maktab o'quvchisi biladi.$$
 WHERE topic_uz = $$Davlat madhiyasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$To'plamlarim ro'yxati uzun: sanab o'tilganlardan tashqari «Ruhim», «Xotirot», «Yurtim shamoli», «Hayrat», «Najot qal'asi», «Yillar armoni», «Haj daftari» va boshqalar bor.

Kitob nomlarining o'zi ijodim yo'nalishini ko'rsatadi: ular sodda va samimiy. She'riyatimda ona, vatan, mehr va vijdon mavzulari asosiy o'rin tutadi.

Uslubim tushunarli: men murakkab obrazlardan ko'ra aniq va chuqur ifodani afzal ko'rganman. Aynan shu jihat she'rlarimning keng o'quvchiga yetib borishini ta'minlagan.$$
 WHERE topic_uz = $$She'riy kitoblarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Dostonlarim uchta: «Jannatga yo'l», «Ranjkom» va «Sohibqiron». Ular bir-biridan butunlay farq qiladi — birinchisi falsafiy, ikkinchisi zamonaviy hayot haqida, uchinchisi tarixiy.

Doston — yirik hajmli she'riy asar; unda voqea rivoji va qahramonlar bo'ladi. Doston yozish uzoq mehnat talab qiladi: material o'rganish, tuzilma qurish va uzun matnni bir ohangda olib borish kerak.

«Sohibqiron» Amir Temur haqida bo'lib, u mustaqillik yillarida — tariximizga qayta murojaat qilingan davrda yozilgan. Keyinchalik shu asosda she'riy drama ham yaratganman.$$
 WHERE topic_uz = $$Dostonlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Drama xuddi shu nomdagi dostonim asosida yaratilgan — ya'ni bitta material avval doston, keyin sahna asari bo'lgan.

She'riy drama — nazmda yozilgan sahna asari; unda dialoglar ham she'riy shaklda bo'ladi. Bu janr aktyorlardan alohida mahorat talab qiladi: matn tabiiy eshitilishi, ammo vazn saqlanishi kerak.

Amir Temur siymosiga murojaat mustaqillik davrida tariximizni qayta anglash jarayonining bir qismi edi. Sahna esa she'rga yangi imkoniyat beradi: uni o'qimaydigan odam ham teatrda eshitadi.$$
 WHERE topic_uz = $$Sahna asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Tarjima qilganlarim ro'yxati sanab o'tilganlar bilan tugamaydi: ukrain shoirasi Lesya Ukrainka va qorachoy shoiri Qaysin Quliyev she'rlarini ham o'zbekchaga o'girganman.

«Ilohiy komediya» — jahon adabiyotining eng murakkab asarlaridan biri: u she'riy shaklda, uch qismdan — «Do'zax», «A'rof» va «Jannat»dan iborat va falsafiy mazmunga ega. Uni tarjima qilish yillar davom etgan.

Bunday ishlar o'zbek tilining imkoniyatlarini kengaytiradi: chet el asaridagi murakkab fikrni berish uchun yangi ifodalar izlashga to'g'ri keladi. Tarjimon shu tariqa o'z tilini ham boyitadi.$$
 WHERE topic_uz = $$Tarjimalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$«O'zbekiston Qahramoni» — mamlakatdagi eng yuksak unvon; u alohida xizmatlari uchun beriladi va menga 1998-yilda berilgan.

Bulardan tashqari 1994-yilda «Do'stlik» ordeni bilan, 2015-yilda esa Italiya davlatining «Italiya Yulduzi» ordeni bilan taqdirlanganman — bu chet el e'tirofi edi.

Ammo shoir uchun eng katta baho boshqa: she'rining yodlanishi va odamlar dilida yashashi. Mening ko'p she'rlarim maktabda o'qitiladi va qo'shiq bo'lib kuylanadi.$$
 WHERE topic_uz = $$Unvonlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Alisher Navoiy nomidagi Davlat mukofoti adabiyot va san'at sohasidagi eng nufuzli mukofotlardan biri. U yaratilgan aniq asar uchun beriladi — ya'ni bu umumiy xizmat emas, konkret ishning bahosi.

Hamza nomidagi mukofot esa sovet davrida O'zbekistondagi eng yuqori adabiy mukofot hisoblangan; keyinchalik u bekor qilinib, o'rniga Navoiy nomidagi mukofot asosiy mukofotga aylangan.

Mukofotlar shoir uchun muhim, ammo ular ijodning maqsadi emas — maqsad o'quvchiga yetib borish va uni o'ylantirish.$$
 WHERE topic_uz = $$Mukofotlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Vafotim chet elda — AQShning Xyuston shahrida yuz bergan; men u yerda davolanayotgan edim. Toshkentga olib kelinib, Chig'atoy qabristoniga dafn etilganman.

Ortimda o'nlab she'riy kitob, uchta doston, sahna asarlari va tarjimalar qoldi. Eng muhimi — Davlat madhiyasi matni: u har kuni yangraydi va uni butun mamlakat biladi.

She'rlarim maktab dasturida o'rganiladi, Qashqadaryoda nomim bilan atalgan ijod maktabi ochilgan. Yozuvchilar uyushmasida esa men 2009-yildan umrimning oxirigacha faxriy rais bo'lib turganman.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Ilk kitobim chiqqanda men yigirma to'rt yoshda va universitetni endi tugatgan, nashriyotda ishlayotgan yigit edim.

Ilk kitob shoir uchun muhim bosqich: unda hali yetuk bo'lmagan she'rlar ham bo'ladi, ammo ovoz allaqachon eshitiladi. Kitob nomidagi «mitti yulduz» obrazi kichik narsaning ham yorug'lik bera olishiga ishora qiladi — bu ijodimning umumiy ohangiga mos.

Undan keyin men yarim asrdan ortiq yozganman va o'nlab to'plam chiqarganman. Ammo birinchi kitob alohida o'rin egallaydi: u odamga «men shoirman» deb aytishga huquq beradi.$$
 WHERE topic_uz = $$Ilk kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$She'r sovet davrida, mustaqillikdan yigirma yilcha avval yozilgan — o'sha paytda milliy tuyg'uni ochiq aytish jasorat talab qilardi.

Unda vatanga bo'lgan muhabbat va uning tarixi haqida so'z boradi. She'r keng tarqalgan, yodlangan va qo'shiq qilib kuylangan; xuddi shu nom bilan alohida to'plamim ham chiqqan.

Keyinchalik u mustaqillik davri she'riyatining o'ziga xos muqaddimasi sifatida baholangan. Madhiya matnini yozish menga topshirilishida ham shu she'rning o'rni bo'lgan deb hisoblanadi.$$
 WHERE topic_uz = $$«O'zbekiston» she'rim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Mehnat yo'lim 1963-yilda «Yosh gvardiya» nashriyotidan boshlangan va men u yerda 1967-yilgacha ishlaganman. Keyin «Sharq yulduzi» jurnalida bo'lim boshlig'i, 1983–1985-yillarda esa «Gulxan» jurnalining bosh muharriri bo'lganman.

Muharrir qo'lyozmani o'qiydi, kamchiliklarni ko'rsatadi va kitobni nashrga tayyorlaydi. Bu ish sabr va diqqatni talab qiladi.

Ayni paytda u yosh muallif uchun maktab: sen boshqalarning matnini tahlil qilib, o'z yozishingni ham yaxshilaysan. «Gulxan» bolalar jurnali bo'lgani uchun u menga yana bir narsani o'rgatgan — bolaga tushunarli qilib yozishni.$$
 WHERE topic_uz = $$Muharrirlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Uyushmada men uzoq yillar ishlaganman: avval adabiy maslahatchi va kotib, 1996-yildan 2009-yilgacha rais, so'ng umrimning oxirigacha faxriy rais bo'lib turganman.

Uyushma yozuvchilarni birlashtiradi, nashr ishlarini tashkil qiladi va yosh ijodkorlarni qo'llab-quvvatlaydi. Shu bilan bir vaqtda men 1996–2009-yillarda Mualliflik huquqlarini himoya qilish agentligiga ham rahbarlik qilganman.

Rahbarlik ijodga vaqt qoldirmaydi, ammo u orqali butun adabiy jarayonga ta'sir qilish mumkin. Men yosh iste'dodlarni topish va ularga yo'l ochishga alohida e'tibor berganman — adabiyot avlodlar almashinuvi bilan yashaydi.$$
 WHERE topic_uz = $$Yozuvchilar uyushmasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Mutal Burhonov (1916–2002) — o'zbek professional musiqasining yirik namoyandalaridan biri; madhiya kuyi uning eng mashhur asari bo'lib qolgan.

Madhiya matni va musiqasi bir-biriga to'liq mos bo'lishi kerak: har bir bo'g'in ohangga tushishi, kuchli joylar so'zning ma'nosiga to'g'ri kelishi lozim. Shu bois bunday ish odatda shoir va bastakorning birgalikdagi mehnati bilan yaratiladi.

Madhiya to'g'risidagi qonun 1992-yil 10-dekabrda qabul qilingan. Shundan beri u har kuni radio va televideniyeda yangraydi.$$
 WHERE topic_uz = $$Madhiya musiqasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Tarjima orqali shoirning ovozi o'z tilidan tashqariga chiqadi — men buni ikkala tomondan bilaman, chunki o'zim ham katta tarjimon bo'lganman.

She'r tarjimasi murakkab: unda ma'no bilan birga ohang va tuyg'u ham berilishi kerak, ba'zan tarjimon qofiyani qurbon qilishga majbur bo'ladi. Shu bois yaxshi tarjima ko'pincha shoir tomonidan qilinadi.

She'rlarimdagi mavzular — ona, vatan, vijdon — har qanday xalqqa tushunarli, shu bois ular boshqa tillarda ham yaxshi qabul qilingan.$$
 WHERE topic_uz = $$Jahon tillarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

UPDATE fact_cards SET detail_uz = $$Ijod maktablari O'zbekistonda 2017-yildan boshlab tashkil etilgan; ular iqtidorli bolalarni erta topib, ularga alohida sharoit yaratish uchun ochilgan.

Maktabda o'quvchilar adabiyot va ijod asoslarini o'rganadi, adabiy kechalar hamda tanlovlarda qatnashadi. Bunday maktablarning har biri taniqli ijodkor nomi bilan ataladi.

Meniki Qashqadaryoda — tug'ilgan yurtimda joylashgan. Bundan tashqari ko'chalar, maktablar va kutubxonalar ham mening nomimni yuritadi.$$
 WHERE topic_uz = $$Ijod maktabi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-oripov');

-- ================================ ERKIN VOHIDOV ================================

UPDATE fact_cards SET detail_uz = $$Otam Chuyanboy Vohidov o'qituvchi bo'lgan; u urushdan keyin, men to'qqiz yoshimda vafot etgan. Onam Roziyaxon 1945-yilda meni Toshkentga olib kelgan va ko'p o'tmay o'zi ham vafot etgan.

Farg'ona vodiysi — bog'lar va dehqonchilik o'lkasi; bolaligimning ilk yillari shu yerda o'tgan. Vodiy manzaralari va bolalik xotiralari she'rlarimda ko'p uchraydi.

Toshkentda meni tog'am Karimboy Sohiboyev tarbiyalagan. U huquqshunos bo'lsa-da, adabiyotga qiziqardi va uyida kitob ko'p edi — mening shoir bo'lishimga shu muhit turtki bergan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Universitetni tugatgan yilim men allaqachon bosilib turgan shoir edim: ilk she'rim o'n to'rt yoshimda «Mushtum» jurnalida chop etilgan.

Filologiya — til va adabiyot haqidagi fan. U yerda men adabiyot nazariyasi, tarixi va tilshunoslikni o'rganganman; mumtoz she'riyat va aruz vaznini puxta bilishim shu davrdan.

Universitetni bitirgan yilim ishga ham kirganman — «Yosh gvardiya» nashriyotida muharrir bo'lib. Bir yildan keyin esa birinchi kitobim «Tong nafasi» chiqqan.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Nashriyot ishida men qariyb chorak asr bo'lganman: «Yosh gvardiya»da 1960–1963-yillarda, G'afur G'ulom nomidagi nashriyotda 1963–1970-yillarda bosh muharrir, 1985–1987-yillarda esa direktor bo'lib ishlaganman.

Muharrirning ishi — qo'lyozmani o'qish, kamchiliklarni ko'rsatish va uni nashrga tayyorlash. Bu katta mas'uliyat: muharrir noto'g'ri qaror qilsa, yaxshi kitob chiqmay qolishi mumkin.

Men ko'plab yosh ijodkorning birinchi kitobi chiqishiga yordam berganman. Nashriyotda ishlash menga adabiy jarayonni ichkaridan ko'rish imkonini bergan.$$
 WHERE topic_uz = $$Nashriyotdagi ishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$«Yoshlik» — yosh ijodkorlar uchun maxsus chiqadigan jurnal; men uni boshqargan uch yil adabiy hayotning jonli davri bo'lgan.

Jurnalda yangi she'rlar, hikoyalar va maqolalar bosilardi. Bosh muharrir sifatida men yosh mualliflarni qidirish va qo'llab-quvvatlashga alohida e'tibor berganman — shu jurnal sahifalarida ilk bor bosilgan ko'plab ijodkor keyinchalik tanilgan.

Adabiyotda avlodlar almashinuvi aynan shunday nashrlar orqali kechadi: yosh muallifga birinchi sahifa berilmasa, u ovozini topmaydi.$$
 WHERE topic_uz = $$«Yoshlik» jurnali$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$«Tong nafasi» chiqqanda men yigirma to'rt yoshda edim va universitetni endigina tugatgan, nashriyotda ishlayotgan yigit edim.

Ilk to'plamlarimda yoshlik, sevgi, vatan va hayot haqidagi o'ylar aks etgan. Uslubim boshidanoq sodda va ohangdor bo'lgan — men she'rni murakkablashtirmaslikka, aksincha, chuqur fikrni tushunarli aytishga intilganman.

Aynan shu jihat she'rlarimning keng o'quvchiga yetib borishini ta'minlagan: ular yodlangan, kuyga solingan va qo'shiq bo'lib elga tarqagan.$$
 WHERE topic_uz = $$Ilk kitoblarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Nomdagi «devon» so'zi mumtoz she'riyatga ishora qiladi: devon — shoirning she'rlari qofiya tartibida jamlangan kitob.

Men bu shaklga ataylab murojaat qilganman va zamonaviy she'rlarni mumtoz an'ana ruhida jamlaganman; kitobda g'azal shaklidagi she'rlar ham bor. Universitetda aruz vaznini puxta o'rganganim shu yerda asqotgan.

Bu urinish o'sha davr uchun yangilik edi: eski shakl bilan yangi mazmunni birlashtirish. Keyinchalik bu yo'lni boshqa shoirlar ham davom ettirgan.$$
 WHERE topic_uz = $$«Yoshlik devoni»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Bu kitoblar mening ijodimning yetuk davriga — qirq yoshdan keyingi yillarga to'g'ri keladi.

Yillar o'tishi bilan she'riyatim chuqurlashib borgan: unda inson va olam, tarix va zamon, mas'uliyat va vijdon mavzulari kuchaygan. Yoshlikdagi ochiq quvonch o'rniga o'ylab aytilgan gap kelgan.

«Kelajakka maktub» nomining o'zi yo'nalishni ko'rsatadi — men she'rni bugungi kun bilan cheklanmaydigan, kelajakka qaratilgan gap deb bilganman.$$
 WHERE topic_uz = $$Keyingi kitoblarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$«Oltin devor» komediya bo'lib, unda ochko'zlik va mol-dunyoga hirs kulgi orqali tanqid qilinadi; asar teatrlarda ko'p yillar sahnadan tushmagan.

Sahna asari yozish she'rdan farq qiladi: unda dialog jonli bo'lishi, har bir gap sahnada aytilganda tabiiy eshitilishi kerak. Shoir bu yerda o'z ovozidan voz kechib, qahramonlar ovozi bilan gapiradi.

Teatr menga fikrni keng tomoshabinga yetkazish imkonini bergan. Hajv esa mening qo'limdan keladigan ish edi — «Donishqishloq latifalari» turkumim ham shu yo'nalishda.$$
 WHERE topic_uz = $$Sahna asarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$«O'zbekiston Qahramoni» — mamlakatdagi eng yuksak unvon; u alohida xizmatlari uchun beriladi.

Bulardan tashqari 1983-yilda Hamza nomidagi Davlat mukofotini, 1995-yilda esa «Do'stlik» ordenini olganman. Ya'ni e'tirof sovet davrida boshlanib, mustaqillik yillarida davom etgan.

Ammo shoir uchun eng katta baho — she'rining yodlanishi va kuylanishi. Mening ko'p she'rlarim qo'shiq bo'lib xalq orasida yuradi; «O'zbegim» esa butun bir avlodning qo'shig'iga aylangan.$$
 WHERE topic_uz = $$Unvonlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Vafot etganimda yetmish to'qqiz yoshda edim; oxirgi yillarimgacha yozishdan va jamoat ishidan to'xtamaganman.

Ortimda o'nlab she'riy kitob, dostonlar, sahna asarlari va tarjimalar qoldi. She'rlarim maktab dasturida o'rganiladi, ularga bastalangan qo'shiqlar bugun ham kuylanadi.

Vafotimdan keyin Marg'ilon shahrida nomimdagi ijod maktabi ochilgan — bu iqtidorli bolalarga mo'ljallangan maskan. Toshkentda esa uy-muzeyim faoliyat yuritadi.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Otam Chuyanboy Vohidov o'qituvchi edi va men to'qqiz yoshimda undan judo bo'lganman. Onam Roziyaxon 1945-yilda meni Toshkentga olib kelgan, ammo ko'p o'tmay o'zi ham vafot etgan.

Meni tog'am Karimboy Sohiboyev o'z oilasiga olgan. U huquqshunos bo'lsa-da, adabiyotga qiziqardi va uyida kitob ko'p edi. Tog'am meni o'z farzandidek qabul qilgan va o'qishimga sharoit yaratgan.

Yetimlik og'ir sinov. Ammo bu davr menga bir narsani o'rgatgan: odamlar bir-biriga suyanmasa, hech kim omon qolmaydi. Shu tuyg'u she'rlarimda mehr va insonparvarlik mavzusi bo'lib qaytadi.$$
 WHERE topic_uz = $$Bolaligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$«Faust» tarjimasini 1974-yilda nashr ettirganman — bu ish ustida yillar davomida mehnat qilganman.

«Faust» — jahon adabiyotining eng murakkab asarlaridan biri: u she'riy shaklda yozilgan, hajmi katta va falsafiy mazmunga ega. Gyote uni qariyb butun umri davomida yozgan.

Bunday asarni o'girish o'zbek tilining imkoniyatlarini sinash edi va natija shuni ko'rsatdiki, til jahon klassikasini berishga qodir. Sergey Yesenin she'rlari tarjimasi esa butunlay boshqa vazifa bo'lgan: u yerda falsafa emas, sodda va ohangdor ifodani saqlash kerak edi.$$
 WHERE topic_uz = $$Tarjimalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Dostonni 1980-yilda yozganman va u eng mashhur asarlarimdan biriga aylangan.

Nazrul Islom (1899–1976) — Bangladeshning milliy shoiri; u erk va adolat uchun kurashgan va shu yo'lda qamoqqa olingan. Dostonda shoirning erkin so'zi hech qanday kuch bilan to'xtatib bo'lmasligi g'oyasi ilgari suriladi.

Asar chet el shoiri haqida bo'lsa-da, undagi fikr universal va o'sha davr uchun keskin edi: ijodkorning vijdoni va so'z erkinligi har qanday zamonda muhim. Aynan shu sabab doston keng aks-sado bergan.$$
 WHERE topic_uz = $$«Ruhlar isyoni» dostonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Qasidani 1968-yilda yozganman — mustaqillikdan yigirma uch yil avval, milliy mavzuda ochiq yozish oson bo'lmagan davrda.

Qasida — mumtoz she'riyatdagi ulug'lash janri. She'rda xalqimizning o'tmishi, buyuk ajdodlari va tili haqida so'z boradi. Asar yozilishi bilan katta aks-sado bergan.

She'rga kuy bastalangan va u hofiz Sherali Jo'rayev ijrosida qo'shiq bo'lib keng tarqalgan. Bugun ham u eng mashhur vatanparvarlik qo'shiqlaridan biri — ko'p odam uni she'r sifatida emas, qo'shiq sifatida biladi.$$
 WHERE topic_uz = $$«O'zbegim» qasidam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Hajv men uchun tasodifiy emas: ilk she'rim ham hajviy jurnal — «Mushtum»da bosilgan, o'shanda men o'n to'rt yoshda edim.

«Donishqishloq latifalari» turkumidagi latifalarda xayoliy qishloq aholisining kulgili sarguzashtlari hikoya qilinadi. Kulgi orqali men dangasalik, maqtanchoqlik va o'zini bilimdon ko'rsatish kabi illatlarni tanqid qilganman.

Hajv jiddiy adabiyotdan kam emas: u odamni xafa qilmasdan o'ylashga majbur qiladi. Bu asarlarim radio va sahnada ham ijro etilgan.$$
 WHERE topic_uz = $$Hajviy she'rlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Parlamentda men o'n to'rt yil ishlaganman: 1995–2005-yillarda Oliy Majlisning xalqaro ishlar qo'mitasiga, 2005–2009-yillarda esa Senatning madaniyat masalalari qo'mitasiga raislik qilganman.

Bu vazifalarda men ta'lim, madaniyat va til masalalari bilan shug'ullanganman. Adabiyot va davlat ishini birga olib borish oson emas: ikkalasi ham vaqt va diqqat talab qiladi.

Ammo bu menga so'z bilan aytilgan fikrni amaliy qarorga aylantirish imkonini bergan. O'zbek tiliga davlat tili maqomi berilishi jarayonida ham ziyolilar faol qatnashgan.$$
 WHERE topic_uz = $$Parlamentdagi faoliyatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');

UPDATE fact_cards SET detail_uz = $$Ijod maktablari O'zbekistonda iqtidorli bolalarni erta topib, ularga alohida sharoit yaratish uchun ochilgan; ularning har biri taniqli ijodkor nomi bilan ataladi.

Menikida bolalar she'riyat, adabiyot va ijod asoslarini o'rganadi; adabiy kechalar va tanlovlar o'tkaziladi. Maktab Marg'ilonda — Farg'ona vodiysida, ya'ni men tug'ilib o'sgan o'lkada joylashgan.

Bundan tashqari ko'chalar, maktablar va kutubxonalar mening nomimni yuritadi, Toshkentda uy-muzeyim faoliyat yuritadi.$$
 WHERE topic_uz = $$Nomimdagi ijod maktabi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'erkin-vohidov');
