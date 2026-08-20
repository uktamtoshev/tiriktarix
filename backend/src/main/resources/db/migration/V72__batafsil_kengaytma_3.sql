-- «Batafsil» matnlarini KENGAYTIRISH — 3-to'plam: Zulfiya va Kamoliddin Behzod.
-- Qoidalar V70/V71 bilan bir xil.
--
-- MANBA. `source` o'zgarmaydi. Solishtirilgan manbalar:
--   Zulfiya — en.wikipedia.org «Zulfiya (poet)»; n.ziyouz.com «Zulfiya
--     (1915-1996)»; UZA.uz yubiley maqolalari.
--   Behzod  — en.wikipedia.org «Kamāl ud-Dīn Behzād» (Hirot kitobxonasiga
--     tayinlanish 1486, Tabrizga ko'chish 1522, vafot 1535).
--
-- IXTILOF (metodist-tarixchi tasdig'i kerak). Behzodning tug'ilgan yili
-- manbalarda 1455 yoki 1460 deb beriladi; bazadagi «yigirma uch yoshimda
-- yetakchi bo'lganman» fakti esa 1486-yilgi tayinlov bilan solishtirilganda
-- 1463-yilni beradi. Matnda sana aniq emasligi ochiq aytilgan.

-- ==================================== ZULFIYA ====================================

UPDATE fact_cards SET detail_uz = $$Toshkentning eski shahar qismida, hunarmand oilasida dunyoga kelganman; otam temirchi bo'lgan.

Oilamizda kitobga hurmat bor edi va men yoshligimdan she'r o'qishni yaxshi ko'rardim. Ilk she'rim 1931-yilda «Ishchi» gazetasida bosilgan — o'shanda men o'n olti yoshda edim.

O'sha davrda qizlarning o'qishi hali keng tarqalmagan edi, shuning uchun ta'lim olish imkoniyati men uchun katta baxt bo'ldi. Bu she'riyatimga ta'sir qilgan: ayollarning bilim olishi va o'z o'rnini topishi mavzusi ijodimda doim bor.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Bilim yurtini tugatgach, 1935-yilda Fanlar akademiyasining Til va adabiyot instituti aspiranturasiga kirganman — ya'ni ta'limim bilim yurti bilan tugamagan.

Xotin-qizlar bilim yurtlari qizlar uchun maxsus ochilgan va ular o'qituvchi tayyorlardi. U yerda men adabiyot, tarix va pedagogikadan saboq olganman, ayni paytda she'r mashqlarini davom ettirganman.

Aynan shu yillarda she'rlarim matbuotda muntazam bosila boshlagan va 1932-yilda birinchi to'plamim chiqqan. Ya'ni men hali talaba paytimda kitobli shoira bo'lganman.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Aspiranturadan keyin men nashriyot ishiga o'tganman: 1938–1940-yillarda bolalar va o'smirlar adabiyoti nashriyotida muharrir, 1941–1950-yillarda esa O'zbekiston davlat nashriyotida bo'lim boshlig'i bo'lganman.

Institutda men adabiyot tarixini o'rganganman. Bu tajriba mumtoz she'riyatni chuqurroq tushunish imkonini bergan: Navoiy, Nodira va boshqa shoirlar ijodini o'rganish o'z she'riyatimni boyitgan.

Muharrirlik esa boshqa narsani o'rgatgan — o'z matningga tanqidiy qarashni. Boshqaning she'rini tahrir qilgan odam o'z she'rini ham qattiqroq tekshiradi.$$
 WHERE topic_uz = $$Ilmiy yo'lim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$«Hayot varaqalari» 1932-yilda chiqqan; undan bir yil avval, 1931-yilda ilk she'rim «Ishchi» gazetasida bosilgan edi.

O'n yetti yoshda kitob chiqarish kam uchraydigan hol. To'plamdagi she'rlar yoshlik tuyg'ulari, tabiat va hayotga qiziqish haqida edi. Albatta, ular hali yetuk emasdi — ammo har bir shoir shunday boshlaydi.

Muhimi shundaki, ilk kitob menga o'z yo'limni tanlashga ishonch bergan. Undan keyin men oltmish yildan ortiq yozganman.$$
 WHERE topic_uz = $$Ilk kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Ijodimning gullagan davri urush yillariga to'g'ri keldi: «Uni Farhod der edilar» (1943), «Hijron kunlarida» (1944) va «Hulkar» (1947) to'plamlari shu davrda chiqqan.

«Hijron kunlarida» turmush o'rtog'im Hamid Olimjon vafotidan keyin yozilgan she'rlardan iborat va u eng ta'sirchan kitoblarimdan biri sanaladi. «Mushoira», «O'g'lim, sira bo'lmaydi urush», «Qozog'iston o'lanlari» va «Men chizolmagan surat» she'rlarim esa menga keng shuhrat keltirgan.

She'riyatim yillar davomida o'zgarib borgan: yoshlikdagi quvnoq ohang keyinchalik chuqur o'y va g'am bilan almashgan, so'ng yana yorug'lik va donolik ohangi paydo bo'lgan.$$
 WHERE topic_uz = $$Kitoblarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Libretto — opera matni: unda voqea qisqartirilib, kuyga solishga qulay she'riy shaklga keltiriladi.

Bu ish alohida mahorat talab qiladi, chunki matn ham ma'noni saqlashi, ham musiqaga mos tushishi kerak: har bo'g'in kuyning bir notasiga to'g'ri kelishi lozim. Shoir bu yerda o'z erkinligining bir qismidan voz kechadi.

Turmush o'rtog'imning dostonlarini operaga aylantirish men uchun uning ijodini yashatishning bir yo'li ham edi. U 1944-yilda, atigi 35 yoshida vafot etgan va ko'p rejasi amalga oshmay qolgan edi.$$
 WHERE topic_uz = $$Opera librettolari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Anjuman 1956-yilda Dehlida o'tgan va unga Osiyo hamda Afrikaning o'nlab mamlakatidan yozuvchilar to'plangan.

Hindiston menga kuchli taassurot qoldirgan: uning tabiati, madaniyati va odamlari haqida bir turkum she'r yozganman. Shu safar ta'sirida 1958-yilda «Mushoira» asarim tug'ilgan — «mushoira» so'zining o'zi Sharqda shoirlarning she'riy bellashuvini bildiradi.

Safarlar shoir uchun material beradi: yangi joy yangi tuyg'u va yangi taqqoslashlar tug'diradi. Keyinchalik men Misr, Yaponiya va boshqa mamlakatlarda ham bo'lganman.$$
 WHERE topic_uz = $$Dehli anjumani$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Ikkala mukofot ham xalqaro: Javaharlal Neru mukofoti Hindiston bilan madaniy aloqalarga hissa qo'shgan chet ellik ijodkorlarga, «Nilufar» mukofoti esa Osiyo va Afrika yozuvchilari harakati tomonidan beriladi.

She'rlarimda men Hindistonning tabiati, tarixi va odamlari haqida yozganman — ularni chetdan kuzatuvchi sifatida emas, hurmat bilan tasvirlashga harakat qilganman.

Yurtimda ham e'tirof bo'lgan: 1965-yilda «O'zbekiston xalq shoirasi» unvonini, 1984-yilda esa Sotsialistik Mehnat Qahramoni unvonini olganman.$$
 WHERE topic_uz = $$Xalqaro mukofotlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$She'r boshqa tilga o'tishi uchun avval kimdir uni sezishi kerak — tarjimon shoirning ikkinchi ovozidir.

She'r tarjimasi murakkab: unda ma'no bilan birga ohang, vazn va tuyg'u ham berilishi kerak. Shu bois ko'p tarjimon avval satrma-satr tarjima tayyorlaydi, keyin uni she'rga aylantiradi.

Men o'zim ham tarjimon bo'lganman va boshqa xalqlar shoirlarining she'rlarini o'zbekchaga o'girganman. Ijodimda ayol qalbi, ona mehri, sadoqat va vafo mavzulari ustun — bular har qanday xalqqa tushunarli, shuning uchun she'rlarim boshqa tillarda ham yaxshi qabul qilingan.$$
 WHERE topic_uz = $$Tarjimalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Vafotimgacha yozishdan to'xtamaganman — so'nggi yillarimda yozilgan she'rlarim ham bor.

Umrim davomida o'nlab kitob chiqarganman va o'ttiz besh yil — 1950-yildan 1985-yilgacha «Saodat» jurnalida ishlaganman. Shu jurnal orqali men yosh ijodkorlarga yo'l ochganman.

Mustaqillikning ilk yillarini ko'rish menga nasib etdi va bu davrda yozgan she'rlarimda vatan va yangilanish mavzusi kuchli yangraydi. 1999-yilda esa nomim bilan atalgan davlat mukofoti ta'sis etilgan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Hamid Olimjon (1909–1944) — shoir, dramaturg va adabiyotshunos edi. Oila qurganimizda men yigirma yoshda edim.

U ijodimni qo'llab-quvvatlagan va uyimiz adabiy muhit markazlaridan biri edi: u yerga shoirlar va yozuvchilar kelib turardi. Ikki ijodkorning bir oilada yashashi oson emas, ammo bizni umumiy ish va o'zaro hurmat birlashtirgan.

Birga o'tkazgan to'qqiz yilimiz hayotimdagi eng baxtli davr bo'lgan. Undan keyingi ellik ikki yilni men yolg'iz yashaganman.$$
 WHERE topic_uz = $$Turmush o'rtog'im$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Hamid Olimjon 1944-yil 3-iyulda halokat tufayli vafot etgan — u atigi 35 yoshda edi.

Bu yo'qotish hayotimni va ijodimni butunlay o'zgartirdi. Uning xotirasiga ko'plab she'r yozganman; ular «Hijron kunlarida» (1944) to'plamiga kirgan.

«Bahor keldi seni so'roqlab» eng mashhurlaridan biri: unda bahor kelgani, tabiat uyg'ongani, ammo eng aziz kishi yo'qligi sodda va ta'sirchan tarzda aytiladi. Bu she'rlar o'zbek she'riyatidagi eng samimiy asarlar qatorida turadi.$$
 WHERE topic_uz = $$«Bahor keldi seni so'roqlab»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Jurnalda 1950-yildan 1985-yilgacha — o'ttiz besh yil ishlaganman: avval bo'lim boshlig'i, keyin bosh muharrir bo'lib.

Jurnal avval «O'zbekiston xotin-qizlari» deb atalgan. Unda adabiy asarlar, ayollar hayoti, tarbiya, sog'liq va uy-ro'zg'or masalalari yoritilardi.

Bosh muharrirlik ijodga vaqt qoldirmasdi, ammo bu ish orqali men ko'plab ayolga yetib borish va yosh ijodkorlarga yo'l ochish imkoniga ega bo'ldim. Jurnal sahifalarida ilk marta bosilgan shoiralar keyinchalik tanilgan.$$
 WHERE topic_uz = $$«Saodat» jurnali$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Bu unvondan tashqari 1984-yilda menga Sotsialistik Mehnat Qahramoni unvoni ham berilgan.

«Xalq shoirasi» unvoni uzoq yillik ijodiy mehnat va xalq e'tirofi uchun beriladi. Ayol shoiraga bunday unvon berilishi o'sha davr uchun ahamiyatli edi: u ayollar ijodining e'tirof etilishini bildirardi.

Mendan oldingi avlodda — Nodira va Uvaysiy davrida shoira bo'lish ancha qiyin edi; men esa ular ochgan yo'ldan yurdim va o'z navbatimda undan keyingilarga yo'l ochdim.$$
 WHERE topic_uz = $$Unvonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Hindiston, Misr, Yaponiya va boshqa davlatlarga safar qilganman; 1956-yildagi Dehli anjumani shularning eng muhimi bo'lgan.

Har safar men o'sha yurtning tabiati, madaniyati va odamlari haqida she'rlar yozganman. Hindiston haqidagi she'rlarim uchun Javaharlal Neru xalqaro mukofotini olganman.

Bu safarlar menga bir narsani ko'rsatgan: turli xalqlarning tili va urf-odati har xil bo'lsa-da, ona mehri, do'stlik va tinchlik istagi hamma joyda bir xil.$$
 WHERE topic_uz = $$Safarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Mukofot 1999-yilda ta'sis etilgan — bu men vafot etganimdan uch yil keyin.

U har yili fan, adabiyot, san'at va sportda yuksak natijaga erishgan iqtidorli qizlarga beriladi. Sohiblar mamlakat bo'ylab tanlanadi va Mustaqillik bayrami arafasida taqdirlanadi.

Bir umr ayollar va qizlar haqida yozgan shoira uchun bundan yaxshiroq davomiylik bo'lmaydi: nomim endi yosh qizlarni ilm va ijodga rag'batlantirishga xizmat qilmoqda.$$
 WHERE topic_uz = $$Nomimdagi mukofot$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

UPDATE fact_cards SET detail_uz = $$Yubiley munosabati bilan she'rlarim qayta nashr etildi, ilmiy anjumanlar va adabiy kechalar o'tkazildi, hayotim haqida ko'rsatuvlar tayyorlandi.

Toshkentda uy-muzeyim ishlaydi; ko'chalar, maktablar va kutubxonalar mening nomimni yuritadi. She'rlarim maktab dasturida o'rganiladi va ularga bastalangan qo'shiqlar bugun ham kuylanadi.

Yubiley — faqat sana emas, tekshiruv ham: yuz yil o'tgach ham o'qilayotgan she'r haqiqiy she'r ekan degani.$$
 WHERE topic_uz = $$100 yillik sanam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zulfiya');

-- ============================== KAMOLIDDIN BEHZOD ==============================

UPDATE fact_cards SET detail_uz = $$Hirotda tug'ilganman — o'sha davrda bu shahar temuriylar davlatining madaniy poytaxti edi. Tug'ilgan yilim aniq ma'lum emas: manbalarda 1455 va 1460-yillar keltiriladi.

Bu o'rta asr ijodkorlari uchun odatiy hol: tug'ilgan sana ko'pincha qayd etilmagan, olim yoki rassomning hayoti asosan asarlari va zamondoshlari yozuvlari orqali tiklanadi.

Hayotim haqidagi ma'lumotlar Bobur, Xondamir va boshqa mualliflarning asarlarida saqlangan. Ya'ni tarjimai holim kundalikdan emas, boshqalarning guvohligidan yig'ilgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Manbalarda men Hirot saroy kitobxonasining boshlig'i etib 1486-yilda tayinlanganim qayd etiladi; bu lavozimni mendan avval ustozim Mirak Naqqosh egallab turardi. Tug'ilgan yilim aniq bo'lmagani uchun o'shanda necha yoshda bo'lganim ham turlicha ko'rsatiladi.

Bu darajaga erishish oson emasdi: miniatyura san'atida usta bo'lish uchun yillab mashq qilish, bo'yoq tayyorlashni, qalam tutishni va kompozitsiya qurishni o'rganish kerak.

Ishlarim boshqalardan farq qilgan: men odamlarni bir xil qolipda emas, har birini o'ziga xos qiyofa va harakat bilan tasvirlaganman. Aynan shu yangilik menga tez tanilish keltirgan.$$
 WHERE topic_uz = $$Yetakchilik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$«Sharq Rafaeli» — bu unvonni menga keyingi davr san'atshunoslari bergan; zamondoshlarim meni bunday atamagan.

Rafael — Italiya Uyg'onish davrining buyuk rassomi. Qizig'i shundaki, biz deyarli bir davrda yashaganmiz: u 1483-yilda tug'ilgan, ya'ni men allaqachon ishlayotgan paytda. Taqqoslash asarlarimdagi inson tasviri va kompozitsiya mahoratiga ishora qiladi.

Bunday qiyoslar shartli, chunki Sharq miniatyurasi va Yevropa rangtasviri boshqa an'analar: birida chiziq, rang va naqsh, ikkinchisida perspektiva va hajm muhim. Ammo taqqoslash bir narsani ko'rsatadi — ishlarim jahon san'ati miqyosida baholangan.$$
 WHERE topic_uz = $$Unvonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Bu kishilarning barchasini men o'z ko'zim bilan ko'rganman: Jomiy 1492-yilda, Navoiy 1501-yilda vafot etgan, Husayn Boyqaro esa 1506-yilgacha hukmronlik qilgan.

Shu bois asarlarimning qimmati alohida — ular tirik guvohning ishi. Navoiy va Husayn Boyqaroning bugungi kitoblarda uchraydigan qiyofalari ko'pincha mening ishlarimga tayanadi.

Shayboniyxon portreti boshqa davrga tegishli: u 1507-yilda Hirotni egallagan va portret shu yillarda ishlangan. Men portretlarda faqat tashqi o'xshashlikni emas, insonning fe'l-atvorini ham ko'rsatishga harakat qilganman.$$
 WHERE topic_uz = $$Portretlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Sharq miniatyurasida uzoq vaqt odamlar shartli, bir-biriga o'xshash qilib tasvirlangan: muhimi voqea edi, shaxs emas.

Men bu an'anani o'zgartirganman: har bir kishini o'z yuzi, qad-qomati va harakati bilan chizganman — rasmdagi odamni tanib olish mumkin bo'ldi. Bundan tashqari men atrofdagi hayotni ham jonli qilishga harakat qilganman: rasmlarimda odamlar ish qilib turadi — g'isht tashiydi, suv oladi, gaplashadi.

Bu yo'nalish shogirdlarim orqali Tabriz maktabiga, undan esa boburiylar davri Hindiston miniatyurasiga o'tgan.$$
 WHERE topic_uz = $$Portret janri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Husayn Boyqaro 1469-yildan 1506-yilgacha Hirotda hukmronlik qilgan va uning saroyi o'sha davrning eng yirik san'at markazi edi.

Saroy buyurtmasi rassom uchun katta imkoniyat edi: unga qimmatbaho bo'yoqlar — lojuvard, zar suvi va boshqa materiallar beriladi, ishlash uchun vaqt ajratiladi.

Buyurtmalar odatda qo'lyozma kitoblarni bezash bilan bog'liq bo'lgan: matn ko'chirilgach, unga miniatyuralar ishlangan. Bitta qo'lyozma ustida xattot, musavvir, muzahhib va muqovasoz oylab birga ishlardi — shuning uchun bunday kitob juda qimmat turgan.$$
 WHERE topic_uz = $$Hukmdor buyurtmasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$1487-yil — bu Hirot kitobxonasiga boshliq bo'lganimdan bir yil keyin; ya'ni asar ijodimning eng kuchli davrida yaratilgan.

Ishning o'zi alohida qiziq: unda rassomning o'zi ish ustida tasvirlangan. O'rta asr Sharq san'atida bunday mavzu kam uchraydi — odatda hukmdorlar, jangchilar yoki adabiy qahramonlar chizilgan. Rassom mehnatini tasvirlash kasbga bo'lgan hurmatni ko'rsatadi.

Xuddi shu yillarda men Sa'diyning «Bo'ston» qo'lyozmasiga miniatyuralar ishlaganman — u 1488-yilda yakunlangan va bugun eng mashhur ishlarim qatoriga kiradi.$$
 WHERE topic_uz = $$«Rassom portreti»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Asarlarim dunyoning yirik muzey va kutubxonalarida saqlanadi. Britaniya kutubxonasida Nizomiy «Xamsa»sining 1494–1495-yillarda ko'chirilgan qo'lyozmasi bor — undagi «Layli va Majnun» hamda «Haft paykar» sahnalari menga tegishli deb hisoblanadi.

«Bag'dodlik darvesh» portretim esa eng ko'p o'rganilgan ishlarimdan biri. Darvesh — dunyo moliga qiziqmaydigan, oddiy hayot kechiradigan kishi; portretda uning kiyimi, yuz ifodasi va turishi orqali xarakteri ko'rsatilgan.

Asar G'arb san'atshunoslari tomonidan ham o'rganilgan va Sharq portret san'atining namunasi sifatida keltiriladi.$$
 WHERE topic_uz = $$Mashhur asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Uslubim keyingi avlod rassomlariga bevosita ta'sir ko'rsatgan: 1522-yilda men Tabrizga ko'chganman va u yerdagi saroy ustaxonasiga rahbarlik qilganman.

Shu tariqa Hirot maktabining an'analari Safaviylar davri Tabriz miniatyurasiga, undan esa boburiylar davri Hindiston miniatyurasiga o'tgan. Ya'ni bitta maktab uch mamlakatga tarqalgan.

Asarlarim bugun turli mamlakat muzeylarida saqlanadi va ular haqida ilmiy ishlar yozilgan. Miniatyura san'ati O'zbekistonda bugun ham davom etmoqda — zamonaviy ustalar shu an'anani o'rganib ishlaydi.$$
 WHERE topic_uz = $$Merosim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Ustozim Mirak Naqqosh oddiy rassom emas edi: u temuriylar saroy kitobxonasining boshlig'i bo'lgan va men keyinchalik aynan uning o'rniga tayinlanganman.

O'rta asrlarda hunar «usta-shogird» tartibida o'rganilardi: shogird ustaning uyida yashab, unga yordam berar va ish jarayonini kuzatib o'rganardi. Avval bo'yoq ezish, qalam tayyorlash kabi oddiy ishlar topshirilardi, keyin asta-sekin chizishga o'tilardi.

Yetim bola uchun bunday ustoz topilishi baxt edi. Ustozimning menga bergan bilimi va g'amxo'rligi butun keyingi hayotimni belgilagan.$$
 WHERE topic_uz = $$Bolaligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Navoiy Husayn Boyqaro saroyida vazir bo'lgan va ijodkorlarga yordam berishni o'z burchi deb bilgan: shoirlar, xattotlar, musavvirlar va sozandalarga nafaqa belgilagan, ularning ishlashi uchun sharoit yaratgan.

Yetim o'sgan yosh rassom uchun bunday homiylik hal qiluvchi ahamiyatga ega edi: menga bo'yoq va material olishga, ustaxonada ishlashga imkon berilgan.

Keyinchalik men uning portretini ishlaganman — bu minnatdorchiligim ifodasi ham edi. Navoiy 1501-yilda vafot etgan; uning bugungi kitoblarda uchraydigan qiyofasi ko'p jihatdan mening ishimga tayanadi.$$
 WHERE topic_uz = $$Navoiy homiyligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Tayinlanish 1486-yilda bo'lgan va men bu lavozimda 1506-yilgacha — Husayn Boyqaro hukmronligining oxirigacha ishlaganman.

Kitobxona oddiy kutubxona emas, balki ustaxona edi: u yerda xattotlar matn ko'chirar, musavvirlar miniatyura ishlar, muzahhiblar zar bilan bezar, muqovasozlar kitob muqovasini tayyorlardi. Bitta kitob ustida bir necha kasb egasi ishlardi.

Boshliq sifatida men ishni taqsimlar, sifatni nazorat qilar va yosh ustalarni o'rgatardim. Bu lavozim menga o'z maktabimni shakllantirish imkonini bergan — shogirdlarim keyinchalik boshqa shaharlarda ishlagan.$$
 WHERE topic_uz = $$Saroy kitobxonasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Tabrizga 1522-yilda ko'chganman: shoh Ismoil meni saroyga taklif qilib, u yerdagi kitobxonaga boshliq etib tayinlagan. Keyin shoh Tahmasp davrida ham ishlashda davom etganman.

Hirotdagi siyosiy o'zgarishlardan keyin ko'plab ijodkor boshqa shaharlarga ko'chgan. Tabrizda men o'z uslubimni davom ettirdim va mahalliy ustalarga saboq berdim — shu tariqa Hirot maktabining an'analari Safaviylar miniatyurasiga o'tgan.

Manbalarga ko'ra men 1535-yilda vafot etganman va Hirotda, Ko'hi Muxtor tepaligi etagida dafn etilganman.$$
 WHERE topic_uz = $$Tabrizdagi yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Bobur meni «Boburnoma»da nomma-nom tilga olgan: u meni zamonaning eng nozik qalamli ustalaridan biri deb baholagan, ayni paytda ba'zi ishlarim haqida tanqidiy fikrini ham bildirgan.

Bobur odamlar va asarlarga baho berishda xolis bo'lishga harakat qilgan — u maqtash bilan birga kamchilikni ham aytgan. Uning bahosi shuning uchun ishonarli.

Zamondosh guvohning bunday yozuvi qimmatli. Mening hayotim haqida hujjat deyarli qolmagan; «Boburnoma» va Xondamir asarlari kabi manbalar bo'lmaganida, bugun men haqimda kam narsa bilingan bo'lardi.$$
 WHERE topic_uz = $$«Boburnoma»da nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Miniatyura qattiq qog'ozga tabiiy bo'yoqlar bilan ishlangan; bo'yoq minerallar, o'simliklar va hasharotlardan tayyorlangan.

Ko'k rang uchun qimmatbaho lojuvard toshi ezilgan — u shu qadar qimmat turganki, ba'zan oltin bilan tenglashtirilgan; oltin suvi ham ishlatilgan. Ish uchun juda ingichka, ba'zan bir necha tukdan iborat mo'yqalam qo'llangan.

Bitta miniatyura ustida ish haftalab davom etishi mumkin edi. Rasm alohida asar emas, kitobning bir qismi bo'lgan: u matnni tushuntirar va sahifani bezardi.$$
 WHERE topic_uz = $$Miniatyura san'ati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');

UPDATE fact_cards SET detail_uz = $$Institutda an'anaviy miniatyura va naqqoshlik yo'nalishlari ham o'qitiladi: talabalar qadimgi usullarni — bo'yoq tayyorlash, qalam tutish va kompozitsiya qurishni o'rganadi.

Bundan tashqari O'zbekistonda nomim bilan atalgan mukofot va ko'chalar bor; ijodim san'atshunoslik ilmiy ishlarida alohida mavzu sifatida o'rganiladi.

Shu tariqa besh asr oldingi maktab bugungi kunda davom etmoqda. San'atda uzluksizlik shunday saqlanadi: usta shogirdga o'rgatadi, shogird esa keyingi avlodga.$$
 WHERE topic_uz = $$Nomimdagi institut$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'kamoliddin-behzod');
