-- «Batafsil» matnlarini KENGAYTIRISH — 6-to'plam: Abulg'ozi Bahodirxon va
-- Zebo G'aniyeva. Qoidalar V70–V74 bilan bir xil.
--
-- MANBA. `source` o'zgarmaydi. Solishtirilgan manbalar:
--   Abulg'ozi — uz.wikipedia.org «Abulgʻozi Bahodirxon» (tug'ilish 25.08.1603
--     Urganch; Taborak qal'asidagi asirlik 1630–1639; «Shajarai tarokima» 1661;
--     «Shajarai turk» to'qqiz bob, 1665-yilda Mahmud ibn Muhammad Zamon
--     Urganjiy yakunlagan; «Manofe' ul-inson» — 120 dan ortiq kasallik).
--   Zebo G'aniyeva — ru.wikipedia.org «Ганиева, Зиба Паша кызы»; UZA.uz.
--
-- IXTILOF (metodist-tarixchi tasdig'i kerak):
--   1) Abulg'ozining taxtga chiqishi — bazada 1645, uz.wikipediyada 1644.
--   2) Zebo G'aniyeva «Tohir va Zuhra»da qaysi rolni o'ynagani: bazada «Xorazm
--      malikasi», rus manbalarida «fors shahinasi». Matnda rol nomi qayta
--      aytilmagan.
--   3) Bazada «tarixchi va sharqshunos olima», rus manbalarida esa filologiya
--      fanlari nomzodi, SSSR FA Sharqshunoslik institutida ilmiy xodim.
--   4) Snayperlik hisobi manbalarda ikki xil (20 ga yaqin — tasdiqlangan davr
--      uchun; 129 — umumiy da'vo). Matnda ikkalasi ham ochiq aytilgan.

-- ============================= ABULG'OZI BAHODIRXON =============================

UPDATE fact_cards SET detail_uz = $$1603-yilning 25-avgustida Urganchda tug'ilganman. Onamning ismi Mehribonu xonim edi.

Otam Arab Muhammadxon Xiva xoni bo'lgan va oilamiz katta edi. Yetti o'g'il o'rtasida taxt uchun kurash muqarrar edi — bu sulolaviy davlatlarning eng zaif joyi.

Bolaligimda menga yaxshi ta'lim berilgan: turkiy, fors va arab tillari, tarix va diniy fanlar. Keyinchalik bu bilim menga taxtdan ham ko'proq foyda keltirgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Taxtga o'tirganimda men qirq yoshdan oshgan, uzoq surgun va asirlikni boshdan kechirgan odam edim.

Yo'lim oson bo'lmagan: 1623-yilda Buxoroga qochib borganman, keyin akam Asfandiyorxon bilan kelishmovchilik tufayli qozoq xoni Esimxon huzuriga o'tganman, so'ng Toshkent hokimi Tursunxon yonida ikki yil turganman.

1630-yilda esa asirga tushib, Isfahon yaqinidagi Taborak qal'asida o'n yil saqlanganman. 1639-yilda qochib qutulganman va shundan keyingina Xorazmga qaytganman.$$
 WHERE topic_uz = $$Taxtga kelishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Hukmronligim yigirma yil davom etgan va uning oxirida men taxtni ixtiyoriy ravishda o'g'lim Anushaxonga topshirganman.

Bu odatiy hol emas: sulolaviy davlatlarda hokimiyat ko'pincha vafot yoki kurash bilan almashardi. Men esa taxtni tirikligimda berib, qolgan vaqtimni yozishga ajratganman.

Aynan shu qaror tufayli «Shajarai turk» dunyoga kelgan: uni men taxtdan ketganimdan keyin yozganman.$$
 WHERE topic_uz = $$Hukmronligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Asar to'qqiz bobdan iborat va unda turkiy xalqlarning nasl-nasabi eng qadimgi zamonlardan boshlab o'z davrimgacha bayon etilgan.

Men uni umrimning oxirgi yillarida, taxtdan ketganimdan keyin yozganman. Kitobda mo'g'ul va turkiy sulolalar, Chingizxon avlodlari, shayboniylar hamda Xorazm tarixi bir tizimga solingan.

Asarning qimmati shundaki, unda faqat kitobiy ma'lumot emas — og'zaki rivoyatlar va men shaxsan ko'rgan voqealar ham bor.$$
 WHERE topic_uz = $$«Shajarai turk»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Asarim Yevropa sharqshunosligiga XVIII asrda kirib borgan va o'shandan beri ilmiy manba sifatida ishlatiladi.

Nima uchun? Chunki unda boshqa hech qayerda saqlanmagan ma'lumot bor: turkiy urug'larning nomlari, ularning kelib chiqishi haqidagi rivoyatlar va XVII asr Xorazm voqealarining guvoh tomonidan bayoni.

Tarixchi uchun bunday manba qimmatli — u voqeaga yaqin turgan odam tomonidan yozilgan. Ayni paytda uni tanqidiy o'qish kerak: men ham o'z sulolam vakili bo'lganman.$$
 WHERE topic_uz = $$Asarim — manba$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Men bir vaqtning o'zida uch ishni bajarganman: davlatni boshqarganman, tarix yozganman va tabobat bilan shug'ullanganman.

Bunday birikma tariximizda kam emas: Ulug'bek astronom, Bobur adib va memuarist, Husayn Boyqaro shoir bo'lgan. Ammo ularning ko'pi she'r yozgan, men esa ilmiy nasr yozganman.

Menda hal qiluvchi omil boshqa edi — uzoq surgun. Isfahonda o'tgan o'n yil davomida men fors tilidagi tarix kitoblarini o'qib chiqqanman; ilmim aynan o'sha yillarda to'plangan.$$
 WHERE topic_uz = $$Xon va olim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Vafotim taxtni o'g'limga topshirganimdan bir yil keyin, aprel oyida yuz bergan.

O'sha paytda «Shajarai turk» tugallanmagan edi. Uni 1665-yilda Mahmud ibn Muhammad Zamon Urganjiy ismli olim yakunlab bergan.

Ortimda uchta asar qolgan: turkiy xalqlar shajarasi, turkmanlar shajarasi va tabobatga oid kitob. Xon sifatida emas, muallif sifatida eslanish — men uchun kutilmagan natija bo'lmagan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$«Shajarai tarokima»ni 1661-yilda — «Shajarai turk»dan bir necha yil avval yozganman.

Unda turkman xalqining kelib chiqishi, urug'lari va shajarasi bayon etilgan. Manba sifatida men Rashididdinning «Jome' ut-tavorix» asaridan va turkmanlar orasida saqlangan og'zaki rivoyatlardan foydalanganman.

Ikkala usulni birga ishlatish muhim edi: yozma manba sanalarni beradi, og'zaki rivoyat esa urug' nomlarini va ularning o'zaro bog'liqligini saqlaydi.$$
 WHERE topic_uz = $$«Shajarai tarokima»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Isfahon yaqinidagi Taborak qal'asida 1630-yildan 1639-yilgacha saqlanganman va 1639-yilda qochib qutulganman.

Bu majburiy to'xtash hayotimdagi eng foydali davr bo'lgan. Qal'ada men fors tilidagi tarix kitoblarini o'qib chiqqanman: Rashididdin, Mirxond va boshqalar.

Agar o'sha o'n yil bo'lmaganida, «Shajarai turk» yozilmagan bo'lardi. Ba'zan hayotdagi eng og'ir davr keyinchalik eng katta natijani beradi.$$
 WHERE topic_uz = $$Isfahondagi yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Uch tilni bilganman: turkiy — ona tilim, fors — tarix va ilm tili, arab — diniy hamda ilmiy asarlar tili.

Bu bilim menga birlamchi manbalarni tarjimasiz o'qish imkonini bergan. Tarixchi uchun bu hal qiluvchi ahamiyatga ega: tarjima orqali o'qigan odam tarjimonning xatosini ham qabul qiladi.

Qizig'i shundaki, uch tilni bilsam ham, asarlarimni faqat sodda turkiy tilda yozganman. Bu ongli tanlov edi.$$
 WHERE topic_uz = $$Tillarni bilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$O'sha davrda adabiy asar chig'atoy tilida — arabcha va forscha so'zlarga to'la, murakkab uslubda yoziladi deb hisoblanardi. Men bu qoidadan voz kechganman.

Asarlarimni Xorazmda gapiriladigan tirik o'zbek tilida yozganman va buni asarning o'zida izohlaganman: kitob hamma tushunadigan bo'lishi kerak.

Natija kutilganidan ham katta bo'ldi. Aynan shu soddalik tufayli «Shajarai turk» keyinchalik Yevropa sharqshunoslari uchun turkiy tilni o'rganishda qulay matn sanalgan.$$
 WHERE topic_uz = $$Sodda tilda yozganim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Shayboniylar — Chingizxonning to'ng'ich o'g'li Jo'chi naslidan; sulolaning nomi ajdodimiz Shayboniy nomidan olingan.

Xonadonda shajara og'zaki yodda saqlanardi: har bir hukmdor o'z ajdodlarini bir necha avlodgacha sanab bera olishi kerak edi. Men bu bilimni bolaligimdan olganman.

Aynan shu tayyorgarlik meni shajara yozishga olib kelgan. Boshqa tarixchi uchun bu tashqi material, men uchun esa o'z oilam tarixi edi.$$
 WHERE topic_uz = $$Nasl-nasabim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Rashididdin (1247–1318) — Eron vaziri va tarixchi; uning «Jome' ut-tavorix» asari mo'g'ul hamda turkiy xalqlar tarixi bo'yicha eng yirik o'rta asr manbasi.

Undan tashqari men Mirxond kabi mualliflarning asarlaridan, xonadonimizda saqlangan hujjatlardan va og'zaki rivoyatlardan foydalanganman.

Manbani solishtirib o'qish tarixchining asosiy ishi: bir voqea turli kitobda turlicha yozilgan bo'lsa, qaysi biri ishonchli ekanini aniqlash kerak. Men buni Isfahon qal'asida o'rganganman.$$
 WHERE topic_uz = $$Foydalangan manbalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Asarni 1665-yilda Mahmud ibn Muhammad Zamon Urganjiy ismli olim yakunlagan — bu men vafot etganimdan bir yil keyin.

Men to'qqiz bobdan iborat rejani tuzib qo'ygan va asosiy qismini yozgan edim; oxirgi bo'lim tugallanmay qolgan.

Bunday davomiylik Xorazm an'anasida bir necha bor takrorlangan: keyinchalik Munisning «Firdavs ul-iqbol» solnomasini ham shogirdi Ogahiy yakunlagan. Boshlangan ishni oxiriga yetkazish kerak degan qarash bu yerda kuchli bo'lgan.$$
 WHERE topic_uz = $$Asarimning yakunlanishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Asarim Yevropaga g'ayrioddiy yo'l bilan yetib borgan. Manbalarga ko'ra, Sibirga surgun qilingan shved harbiy asirlari Tobolskda «Shajarai turk»ning nusxasini topib, uni tarjima qilishga kirishgan.

Shundan keyin asar XVIII asrda Yevropada — avval fransuz, keyin nemis tillarida nashr etilgan, keyinroq esa rus tiliga ham o'girilgan.

Shu tariqa Xivada, sodda o'zbek tilida yozilgan kitob Yevropa sharqshunosligining asosiy manbalaridan biriga aylangan. Kitobining taqdirini muallif oldindan bilmaydi.$$
 WHERE topic_uz = $$Yevropada tarjimalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$«Manofe' ul-inson» — «Insonga foydali narsalar» degani; unda yuz yigirmadan ortiq kasallik va ularni davolash yo'llari tasvirlangan.

Asarda dorivor o'simliklar, dori tayyorlash tartibi va parhez qoidalari bayon etilgan. Bu davrda tabobat asosan Ibn Sino an'anasiga tayanardi.

Tarixchi va tabib bir odam bo'lishi g'alati tuyulmaydi: ikkala ishda ham kuzatish, taqqoslash va yozib qoldirish kerak. Men ikkalasini ham xuddi shu tarzda bajarganman.$$
 WHERE topic_uz = $$Tabobatga oid asarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

UPDATE fact_cards SET detail_uz = $$Bu qarorni men asarimning muqaddimasida ochiq yozganman: o'z xalqim tarixini yozadigan odam topilmadi, shuning uchun bu ishni o'zim bo'ynimga oldim.

Qaror uchun menda hamma narsa bor edi: uch tilni bilardim, Isfahonda o'n yil kitob o'qigandim, shajarani bolaligimdan yod bilardim va taxtdan ketib bo'sh vaqt topgandim.

Natijada tarixni odatdagidek saroy kotibi emas, hukmdorning o'zi yozgan. Bu kam uchraydigan hol va u asarga alohida ohang bergan.$$
 WHERE topic_uz = $$Tarix yozishga kirishganim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abulgozi-bahodirxon');

-- ================================ ZEBO G'ANIYEVA ================================

UPDATE fact_cards SET detail_uz = $$Tug'ilgan kunim 20-avgust. Tug'ilgan joyim haqida esa manbalar bir xil emas: Shamaxi, Chimkent va Guliston nomlari uchraydi.

Otam Pasha G'aniyev ozarbayjon, onam esa o'zbek edi. 1937-yilda onam qatag'onga uchragan va men o'n to'rt yoshimda yolg'iz qolganman.

Shundan keyin Toshkentga kelganman. O'smir qiz uchun bu og'ir davr edi, ammo aynan Toshkent menga kasb va kelajak bergan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Filarmoniya qoshidagi xoreografiya bo'limi professional raqqosa tayyorlardi: u yerda klassik va milliy raqs, sahna harakati hamda musiqa o'rgatilardi.

Raqs mashg'uloti jismoniy tayyorgarlik beradi — nafas nazorati, muvozanat, chidam va tananing to'liq boshqaruvi. O'shanda men buning urushda asqotishini bilmasdim.

Toshkentga kelganimdan uch yil keyin, 1940-yilda Moskvaga o'qishga ketganman. Ya'ni o'n yetti yoshimda men allaqachon poytaxtda talaba edim.$$
 WHERE topic_uz = $$Raqsga oshiqligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$O'qigan joyim — GITIS, ya'ni Moskva davlat teatr san'ati instituti; u Sovet Ittifoqidagi eng nufuzli teatr o'quv yurti edi.

Toshkentdan Moskvaga o'tish katta qadam bo'lgan: yangi til muhiti, yangi maktab, yangi talablar. Men aktyorlik fakultetida o'qib, sahna kasbini jiddiy o'rganganman.

Ammo o'qishimni tugatishga ulgurmaganman: bir yildan keyin urush boshlangan va men frontga ketganman.$$
 WHERE topic_uz = $$Moskvada aktyorlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Ko'ngilli sifatida Qizil Armiya safiga 1941-yil 16-oktabrda — Moskvadagi harbiy komissarlik orqali qo'shilganman.

O'shanda men o'n sakkiz yoshda, teatr instituti talabasi edim. Front esa Moskvaga juda yaqin kelgan va shahar mudofaaga tayyorlanayotgan edi.

1941-yil 7-noyabrda 3-Moskva kommunistik o'qchi diviziyasi tarkibida Qizil maydondagi paradda qatnashganman. O'sha paraddan askarlar to'g'ridan-to'g'ri front chizig'iga jo'natilgan.$$
 WHERE topic_uz = $$Frontga ko'ngilli$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Snayperlik hisobim manbalarda ikki xil keltiriladi: 1942-yilning 12-apreldan 23-mayigacha bo'lgan davr uchun yigirmaga yaqin dushman askari qayd etilgan, ba'zi nashrlarda esa umumiy hisob 129 deb beriladi.

Bir odamning uch ishni — merganlik, aloqachilik va razvedkani birga olib borishi kam uchraydi; bularning har biri alohida tayyorgarlik talab qiladi.

Men Leningrad va Shimoli-G'arbiy frontlarda xizmat qilganman. Razvedkachining asosiy ishi — dushman pozitsiyasi haqidagi ma'lumotni o'z vaqtida yetkazish; jang natijasi ko'pincha shunga bog'liq.$$
 WHERE topic_uz = $$Mohir mergan$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$1942-yil 23-mayda Leningrad viloyatining Molvotitsa tumanidagi Bolshoye Vragovo qishlog'i yaqinidagi jangda og'ir yaralanganman.

Shifoxonada qariyb o'n bir oy yotganman. Bu urushdagi eng uzun to'xtash bo'lgan: jang bir necha soat davom etadi, tuzalish esa oylab cho'ziladi.

Yaradan keyin men frontga qaytmaganman. O'n sakkiz yoshda boshlangan urushim o'n to'qqiz yoshimda tugagan, ammo uning izi butun umrga qolgan.$$
 WHERE topic_uz = $$Yaralanishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Film 1945-yilda ekranga chiqqan; rejissyori Nabi G'aniyev — o'zbek kinosining asoschilaridan biri.

Asar mashhur xalq dostoni asosida suratga olingan va u o'zbek kinosining klassikasi hisoblanadi. Urush endigina tugagan paytda bunday ertaknamo film odamlarga juda kerak edi.

Men uchun bu qaytish edi: frontgacha teatr institutida o'qigandim va sahnani orzu qilgandim. Yaradan keyin o'sha orzuga bir marta bo'lsa-da yetganman.$$
 WHERE topic_uz = $$Kinoda malika roli$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Urushdan keyin ilmga kirishganman va fan nomzodi darajasini olganman.

1955–1956-yillarda Bokudagi oliy partiya maktabida til va adabiyot kafedrasiga rahbarlik qilganman, 1956-yildan esa Moskvadagi Sharqshunoslik institutida ilmiy xodim bo'lib ishlaganman.

Ya'ni hayotimda uch kasb bo'lgan: raqqosa va aktrisa, jangchi, olima. Uchalasi bir-biriga o'xshamaydi, ammo uchalasida ham diqqat va chidam kerak.$$
 WHERE topic_uz = $$Olimalik yo'lim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$«Jonli afsona» degan ta'rif urush yillarida paydo bo'lgan: front gazetalari men haqimda yozgan va suratim matbuotda bosilgan.

O'sha paytda men yigirma yoshga ham to'lmagan qiz edim. Gazetalar yosh jangchilarni ataylab ko'rsatardi — bu boshqalarga ruh berardi.

Bugun O'zbekistonda men haqimda maqolalar chop etiladi, hujjatli filmlar namoyish qilinadi va yoshlar uchun tadbirlar o'tkaziladi. Bu afsona emas: xizmatim harbiy hujjatlarda qayd etilgan.$$
 WHERE topic_uz = $$Jonli afsona$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$3-Moskva kommunistik o'qchi diviziyasi 1941-yil kuzida — front poytaxtga yaqinlashgan paytda ko'ngillilardan tuzilgan.

Men shu diviziya tarkibida 1941-yil 7-noyabrda Qizil maydondagi paradda qatnashganman. Bu oddiy parad emas edi: undan askarlar bevosita jang maydoniga yo'l olgan.

«Moskva mudofaasi uchun» medali bilan taqdirlanganman. Keyinchalik diviziyam bilan birga Leningrad va Shimoli-G'arbiy frontlarga o'tganman.$$
 WHERE topic_uz = $$Moskva himoyasida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Kursda o'q otish texnikasi, masofani baholash, shamol va yorug'likni hisobga olish, niqoblanish hamda sabr o'rgatilardi.

Snayperning ishi ko'p soatlab qimirlamay kutishdan iborat — bu jismoniy va ruhiy chidamni talab qiladi. Bitta noto'g'ri harakat o'z o'rningni oshkor qiladi.

Menga raqs mashg'ulotlaridan qolgan tayyorgarlik yordam bergan: nafas nazorati, muvozanat va tanani to'liq boshqarish. Sahna uchun o'rgangan narsam frontda asqotgan.$$
 WHERE topic_uz = $$Snayperlik kursi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$O'n olti marta front chizig'idan o'tish — bu har safar qaytmaslik ehtimoli bilan yuzma-yuz kelish degani.

Razvedkachining vazifasi dushman qayerda, qancha va qanday qurol bilan turganini aniqlash. Ma'lumot kech yetsa, uning qiymati qolmaydi.

Men snayperlik, aloqachilik va razvedkani birga bajarganman. Aloqachilik ayniqsa muhim edi: razvedkada topilgan ma'lumotni tezda uzatish kerak bo'lardi.$$
 WHERE topic_uz = $$Razvedka topshiriqlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Mukofotlarim to'liq ro'yxati: Qizil Bayroq ordeni, Qizil Yulduz ordeni, «Moskva mudofaasi uchun» medali va 1985-yilda berilgan Vatan urushi 1-darajali ordeni.

Qizil Bayroq ordeni urush davridagi eng yuksak jangovar mukofotlardan biri edi. Oxirgisi esa urush tugaganidan qirq yil keyin, G'alabaning 40 yilligida berilgan.

Ammo mukofotdan muhimroq narsa bor: urushdan tirik qaytish va keyingi hayotni qura olish. Ko'p tengdoshim qaytmadi.$$
 WHERE topic_uz = $$Mukofotlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Front gazetalari men haqimda yozgan va suratim matbuotda bosilgan — shu tariqa nomim butun mamlakatga tanilgan.

Nima uchun aynan men? Sabab ochiq: o'n sakkiz yoshli qiz, teatr instituti talabasi, snayper va razvedkachi. Bunday taqdir gazeta uchun kuchli misol edi.

Matbuot e'tibori og'irlik ham keltiradi: sen endi faqat o'zing uchun emas, o'qiganlar uchun ham javob berasan. Men buni butun urush davomida his qilganman.$$
 WHERE topic_uz = $$Matbuot sahifalarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Urushdan keyin turmush qurganman: turmush o'rtog'im Tofiq Qodirov diplomat bo'lib ishlagan, o'g'lim Marat tug'ilgan.

Moskvadagi Sharqshunoslik institutida ilmiy ish bilan shug'ullanganman va u yerda uzoq yillar xizmat qilganman. Ya'ni urushdan keyingi hayotim tinch va ilmiy bo'lgan.

Vafot etganimda sakson yetti yoshda edim. O'n sakkiz yoshida frontga ketgan qiz uzoq umr ko'rgan — bu ham bir natija.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');

UPDATE fact_cards SET detail_uz = $$Taqdirim hujjatlar bilan tasdiqlangan: harbiy arxivlarda xizmatim, yaralanishim va mukofotlarim qayd etilgan.

Bugun O'zbekistonda men haqimda maqolalar chop etiladi, hujjatli filmlar namoyish qilinadi; hikoyam maktab tadbirlarida so'zlab beriladi. Urushdagi o'zbekistonlik ayollar mavzusida badiiy filmlar ham suratga olingan.

Yodda tutilishi kerak bo'lgan asosiy narsa — men yolg'iz emasdim. Frontga ketgan minglab tengdoshim orasida qaytmaganlari ko'p bo'lgan.$$
 WHERE topic_uz = $$Xotira$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'zebo-ganiyeva');
