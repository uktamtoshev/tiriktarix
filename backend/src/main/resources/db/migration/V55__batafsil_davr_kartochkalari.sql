-- «Batafsil» matnlari — DAVR kartochkalari (8 davr × 8 karta).
--
-- Har matn kartochkadagi faktni kengaytiradi: aniq sana va joy, kim topgan,
-- nima uchun muhim. Faqat tekshirilgan, keng ma'lum ma'lumot; rivoyat bo'lsa
-- matnda «rivoyatlarga ko'ra» deb aytiladi. Ohang bolalar uchun: qon va
-- shafqatsizlik yo'q, og'ir voqealar xolis tilda beriladi.
--
-- Kartochkalar id bo'yicha emas, (mavzu + davr) juftligi bo'yicha topiladi —
-- id lar bazani qayta yig'ganda o'zgarishi mumkin (V32, V49 dagi kabi).

-- ============================ QADIMGI DAVR ============================

UPDATE fact_cards SET detail_uz = $$Selung'ur g'ori Farg'ona vodiysining So'x tumanida joylashgan. Undan topilgan tosh qurollar va odam suyaklari O'rta Osiyodagi eng qadimgi manzilgohlardan biri ekanini ko'rsatadi.

Teshiktosh g'ori esa Surxondaryodagi Boysun tog'larida. 1938-yilda arxeolog A. P. Okladnikov u yerdan sakkiz-to'qqiz yoshli neandertal bolaning qoldiqlarini topgan. Bola atrofiga tog' echkisining shoxlari terib qo'yilgan edi — bu odamzodning eng qadimgi dafn marosimlaridan biri sanaladi va shu bois kashfiyot butun dunyoga mashhur bo'lgan.$$
 WHERE topic_uz = $$Eng qadimgi manzilgohlar$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'qadimgi');

UPDATE fact_cards SET detail_uz = $$«Avesto» bir kitob emas, balki kitoblar to'plami: uning tarkibida Yasna (ibodat matnlari), Yashtlar (madhiyalar), Videvdat (qonun-qoidalar) va Visparad bo'limlari bor. Eng qadimiy qismi — Zardushtning o'zi aytgan deb hisoblanadigan «Gohlar» (Gatalar).

Kitob avvalgi ko'rinishida to'liq saqlanmagan: bugungacha yetib kelgani qadimgi matnning bir qismi. Shunga qaramay «Avesto» yurtimiz hududidagi eng qadimgi yozma yodgorlik sanaladi va unda o'sha davr odamlarining hayoti, dehqonchiligi, shaharlari haqida ma'lumot bor. 2001-yilda YUNESKO qaroriga muvofiq «Avesto»ning 2700 yilligi xalqaro miqyosda nishonlangan.$$
 WHERE topic_uz = $$«Avesto»$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'qadimgi');

UPDATE fact_cards SET detail_uz = $$Bu uch davlat bir-biridan daryolar va vohalar bilan ajralib turgan. Baqtriyaning markazi Balx shahri bo'lgan, So'g'diyonaning yirik shaharlari — Samarqand (Marokanda) va Buxoro, Xorazmning markazi esa Amudaryoning quyi oqimida edi.

Mil. avv. VI asrda bu yerlarni Ahamoniylar (fors) saltanati bosib olib, o'z satrapliklariga — viloyatlariga aylantirgan. Shunga qaramay mahalliy xalq o'z tili, dini va an'analarini saqlab qolgan. Bu davlatlar haqidagi ma'lumotlar «Avesto», yunon tarixchilari asarlari va arxeologik qazishmalar orqali bizgacha yetib kelgan.$$
 WHERE topic_uz = $$Ilk davlatlar$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'qadimgi');

UPDATE fact_cards SET detail_uz = $$Massagetlar Orol dengizi va Amudaryoning quyi oqimidagi dashtlarda yashagan ko'chmanchi qabilalar ittifoqi edi. To'maris ular boshida turgan malika.

Bu voqeani bizgacha yunon tarixchisi Gerodot o'zining «Tarix» asarida yetkazgan — shuning uchun tafsilotlar ayrim manbalarda turlicha bayon etiladi. Aniq bilinadigani: mil. avv. 530-yil atrofida bo'lgan jangda o'sha davrning eng kuchli hukmdorlaridan biri — fors shohi Kir II mag'lub bo'lgan va halok bo'lgan. To'maris nomi bugungi O'zbekistonda vatanparvarlik va ona yurtni himoya qilish ramzi sifatida ulug'lanadi.$$
 WHERE topic_uz = $$To'maris jasorati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'qadimgi');

UPDATE fact_cards SET detail_uz = $$Saklar — yurtimizning dasht va tog' hududlarida yashagan qadimgi qabilalar. Ular mohir chavandoz va kamonchi bo'lgan.

Shiroq haqidagi hikoyani antik muallif Polien saqlab qolgan. Unga ko'ra, cho'pon Shiroq o'zini dushman tomoniga o'tgan yo'lboshchi qilib ko'rsatgan va Doro I ning qo'shinini suvsiz sahroga boshlab kirib, ularni holdan toydirgan. Shiroq bu yo'lda o'z hayotidan kechgan. Uning nomi ham To'maris singari xalq xotirasida vatanga sadoqat timsoli bo'lib qolgan.$$
 WHERE topic_uz = $$Shiroq jasorati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'qadimgi');

UPDATE fact_cards SET detail_uz = $$Sopollitepa va Jarqo'ton yodgorliklarini o'zbek arxeologi Ahmadali Asqarov boshchiligidagi ekspeditsiya o'rgangan.

Sopollitepa to'g'ri to'rtburchak shaklidagi mustahkam devor bilan o'ralgan qishloq bo'lib, ichida uy-joylar rejali joylashtirilgan. Jarqo'tonda esa ibodatxona qoldiqlari topilgan. Bu yerlardan bug'doy va arpa donlari, kulolchilik charxida yasalgan idishlar, bronza qurollar va zargarlik buyumlari chiqqan. Ular yurtimizda dehqonchilik va shaharsozlik madaniyati necha ming yillik ekanini ko'rsatadi.$$
 WHERE topic_uz = $$Bronza davri madaniyati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'qadimgi');

UPDATE fact_cards SET detail_uz = $$Zardushtiylikda olamni yaratuvchi ezgulik xudosi Ahura Mazda deb ataladi. Din ta'limotining o'zagi — uch qoida: ezgu fikr, ezgu so'z va ezgu amal.

Olov ezgulikning ramzi hisoblangani uchun ibodatxonalarda muqaddas olov o'chirilmay saqlangan; bunday ibodatxonalar otashkada deb atalgan. Suv, tuproq va havoni ifloslantirish esa gunoh sanalgan — bu qadimgi tabiatni asrash qoidalari edi. Zardushtiylik Ahamoniylar davrida keng tarqalgan, bahorgi tengkunlikda nishonlanadigan Navro'z bayrami esa shu qadimgi an'anadan bugungi kunimizga yetib kelgan.$$
 WHERE topic_uz = $$Zardushtiylik dini$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'qadimgi');

UPDATE fact_cards SET detail_uz = $$Bu qal'alarni XX asrda arxeolog S. P. Tolstov boshchiligidagi Xorazm ekspeditsiyasi o'rgangan.

Tuproqqal'a — qadimgi Xorazm hukmdorlarining qarorgohi bo'lgan ulkan majmua: uning saroy xonalaridan devoriy suratlar va haykal parchalari topilgan. Ayozqal'a va Jonbosqal'a esa mudofaa qal'alari bo'lib, ularning qalin devorlarida kamondan otish uchun tuynuklar qoldirilgan. Qal'alar atrofidagi ekinzorlarga suv uzun kanallar orqali kelgan — cho'l o'rtasida hayot aynan shu sug'orish inshootlari hisobiga bo'lgan.$$
 WHERE topic_uz = $$Qadimgi Xorazm qal'alari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'qadimgi');

-- ============================= ANTIK DAVR =============================

UPDATE fact_cards SET detail_uz = $$Iskandar Maqduniy Ahamoniylar saltanatini tor-mor etgach, mil. avv. 329-yilda Amudaryodan o'tib, So'g'diyona va Baqtriyaga kirib keldi.

Uni bu yerda uzoq davom etgan qarshilik kutgan edi: So'g'd sarkardasi Spitamen mahalliy jangchilarni birlashtirib, uch yil davomida (mil. avv. 329–327) bosqinchilarga kutilmagan zarbalar bergan. Iskandar Marokanda (hozirgi Samarqand) atrofidagi urushlarda katta qiyinchilikka duch kelgan. Keyinchalik u mahalliy zodagon qizi Roksanaga uylanib, xalq bilan yarashishga harakat qilgan. Bu davr yunon va mahalliy madaniyatlarning uzoq davom etgan uchrashuvini boshlab bergan.$$
 WHERE topic_uz = $$Iskandar yurishi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'antik');

UPDATE fact_cards SET detail_uz = $$Yunon-Baqtriya davlati Iskandar saltanati parchalangach, hokim Diodot o'zini mustaqil deb e'lon qilishi bilan vujudga kelgan.

Bu davlatning eng mashhur shaharlaridan biri — Amudaryo bo'yidagi Oyxonim. Undan yunon uslubidagi teatr, gimnaziya va ustunli saroy qoldiqlari topilgan. Yunon-Baqtriya tangalarida hukmdor tasviri va yunon yozuvi bo'lgan; ular bugun ham muzeylarda saqlanadi. Yunon me'morligi va haykaltaroshligi mahalliy an'analar bilan qo'shilib, keyinchalik butun mintaqa san'atiga ta'sir ko'rsatgan.$$
 WHERE topic_uz = $$Yunon-Baqtriya davlati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'antik');

UPDATE fact_cards SET detail_uz = $$Qang' davlati haqidagi ma'lumotlar asosan Xitoy yilnomalarida saqlangan — ularda u «Kangyuy» deb nomlangan.

Davlat hududi Sirdaryoning o'rta oqimidan Toshkent vohasigacha cho'zilgan. Aholining bir qismi shahar va qishloqlarda dehqonchilik bilan, boshqa qismi dashtlarda chorvachilik bilan shug'ullangan. Qang' Buyuk ipak yo'lining muhim qismini nazorat qilgani uchun savdodan katta daromad olgan. Toshkent vohasidagi qadimgi shahar qoldiqlari va topilgan tangalar shu davlat tarixidan darak beradi.$$
 WHERE topic_uz = $$Qang' davlati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'antik');

UPDATE fact_cards SET detail_uz = $$Xitoy manbalarida Dovon «Davan» deb yozilgan. Bu davlat Farg'ona vodiysining unumdor yerlarida joylashib, dehqonchilik va uzumchilik bilan mashhur bo'lgan.

Uning eng katta boyligi — baland bo'yli, chidamli otlar edi. Xitoyliklar ularni «samoviy otlar» deb atagan va bu otlarni qo'lga kiritish uchun mil. avv. II asr oxirida uzoq harbiy yurishlar uyushtirgan. Aynan shu otlar tufayli Xitoy elchisi Chjan Szyan yurtimizga kelgan va shu safar Buyuk ipak yo'lining ochilishiga turtki bo'lgan.$$
 WHERE topic_uz = $$Dovon davlati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'antik');

UPDATE fact_cards SET detail_uz = $$Kushon saltanati hozirgi O'zbekiston janubidan Hindiston shimoligacha cho'zilgan ulkan davlat edi. Uning eng qudratli hukmdori Kanishka sanaladi.

Kushonlar oltin va mis tangalar zarb qilgan; ularda hukmdor tasviri va turli xalqlarning xudolari aks etgan — bu davlatda turli dinlar yonma-yon yashaganini ko'rsatadi. Termiz atrofidagi Fayoztepa va Qoratepa budda ibodatxonalari, Dalvarzintepa shahri qoldiqlari shu davrga oid. Fayoztepadan topilgan budda haykali bugun O'zbekiston Davlat tarixi muzeyida saqlanadi.$$
 WHERE topic_uz = $$Kushon saltanati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'antik');

UPDATE fact_cards SET detail_uz = $$«Buyuk ipak yo'li» nomi keyinroq — XIX asrda nemis olimi Ferdinand Rixtgofen tomonidan berilgan. Yo'lning ochilishiga esa mil. avv. II asrda Xitoy elchisi Chjan Szyanning G'arbga safari turtki bo'lgan.

Bu bitta yo'l emas, balki karvon yo'llari to'ri edi. Karvonlar bir uchidan ikkinchisiga to'liq bormas, tovarlar shahardan shaharga qo'ldan qo'lga o'tardi. Ipak bilan birga qog'oz yasash sirlari, yangi ekinlar, musiqa asboblari va ilmiy bilimlar ham tarqalgan. Samarqand, Buxoro va Termiz shu savdo tufayli yirik shaharlarga aylangan.$$
 WHERE topic_uz = $$Buyuk ipak yo'li$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'antik');

UPDATE fact_cards SET detail_uz = $$So'g'diylar Zarafshon vodiysida yashagan; ularning savdo mahoratini qo'shni xalqlar alohida ta'kidlagan.

Ular Ipak yo'li bo'ylab O'rta Osiyodan Xitoygacha savdo manzilgohlari — koloniyalar tashkil etgan. So'g'd tili bir necha asr davomida yo'lning xalqaro muomala tili bo'lgan, so'g'd yozuvi esa keyinchalik boshqa xalqlar yozuvlariga asos bergan. Samarqand yaqinidagi Mug' tog'idan topilgan hujjatlar to'plami so'g'd tilida yozilgan bo'lib, o'sha davr hayoti haqida bevosita ma'lumot beradi.$$
 WHERE topic_uz = $$So'g'd savdogarlari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'antik');

UPDATE fact_cards SET detail_uz = $$Afrosiyob tepaligi hozirgi Samarqand shahrining shimolida joylashgan. Qadimgi shahar shu yerda bo'lgan.

1965-yilda bu yerda hukmdor saroyi topilib, uning devorlaridagi rangli suratlar butun dunyoni hayratga solgan. Suratlarda hukmdor Varxuman huzuriga kelgan turli mamlakat elchilari — ularning kiyimlari, sochlari, sovg'alari batafsil tasvirlangan. Bu suratlar VII asrga oid bo'lib, o'sha davr odamlari qanday kiyinganini va Samarqand qanchalik keng aloqalarga ega bo'lganini ko'rsatadi. Bugun ular Afrosiyob muzeyida saqlanadi.$$
 WHERE topic_uz = $$Afrosiyob$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'antik');

-- ============================ ARABLAR DAVRI ============================

UPDATE fact_cards SET detail_uz = $$Qutayba ibn Muslim 705-yilda Xuroson hokimi etib tayinlangan va shundan so'ng Movarounnahrga yurishlar boshlangan.

712-yilda Xorazm va Samarqand bo'ysundirilgan. Istilo og'ir kechgan: shaharlar qarshilik ko'rsatgan, ko'p qadimiy yodgorliklar yo'q qilingan. Abu Rayhon Beruniy keyinchalik xorazm yozuvidagi kitoblar va o'sha yozuvni biladigan olimlar yo'qotilgani haqida achinib yozgan.

Shu bilan birga yangi davr boshlangan: islom dini, arab yozuvi va arab tili kirib kelgan. Oradan bir necha o'n yil o'tib, aynan shu til orqali yurtimiz olimlari butun dunyoga tanildi.$$
 WHERE topic_uz = $$Arablar istilosi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'arab');

UPDATE fact_cards SET detail_uz = $$Qo'zg'olon yetakchisining asl ismi Hoshim ibn Hakim bo'lgan. «Muqanna» — laqab bo'lib, «niqob yopingan» degan ma'noni bildiradi.

Qo'zg'olonchilar oq kiyim kiygani uchun xalq ularni «oq kiyimlilar» deb atagan. Harakat Marv atrofida boshlanib, Movarounnahrning katta qismiga — Samarqand, Buxoro va Kesh atroflariga yoyilgan. Xalifalik qo'shini uni bostirish uchun bir necha bor yurish qilishga majbur bo'lgan. Qo'zg'olon o'n yildan ortiq davom etgani uning qanchalik keng qo'llab-quvvatlanganini ko'rsatadi.$$
 WHERE topic_uz = $$Muqanna qo'zg'oloni$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'arab');

UPDATE fact_cards SET detail_uz = $$«Bayt ul-hikma» — xalifa Ma'mun davrida Bag'dodda tashkil etilgan ilm markazi: u ayni paytda kutubxona, tarjima maktabi va rasadxona vazifasini bajargan.

Muhammad al-Xorazmiy shu yerda ishlab, «Al-kitob al-muxtasar fi hisob al-jabr va-l-muqobala» asarini yozgan. Kitob nomidagi «al-jabr» so'zidan «algebra» fani nomi kelib chiqqan. Olimning o'z nomi esa lotinchada «Algoritmi» tarzida yozilgan va bugungi «algoritm» atamasiga aylangan — kompyuterlar aynan algoritmlar asosida ishlaydi.$$
 WHERE topic_uz = $$Bayt ul-hikma va olimlarimiz$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'arab');

UPDATE fact_cards SET detail_uz = $$Al-Farg'oniyning astronomiyaga oid kitobi lotin tiliga tarjima qilinib, Yevropa universitetlarida asrlar davomida o'qitilgan. Uni u yerda «Alfraganus» deb bilishgan.

Misrda u Nil daryosi suvining sathini o'lchaydigan inshoot — nilometr qurilishini boshqargan. Bu asbob daryo suvi qancha ko'tarilganini aniqlab berardi: undan hosil qanday bo'lishini oldindan bilish uchun foydalanilgan. Farg'onaning Quva shahrida olim nomiga haykal o'rnatilgan, 1998-yilda esa uning 1200 yilligi xalqaro miqyosda nishonlangan.$$
 WHERE topic_uz = $$Ahmad al-Farg'oniy$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'arab');

UPDATE fact_cards SET detail_uz = $$Hadis — Muhammad payg'ambarning so'zlari va ish-harakatlari haqidagi rivoyatlar. Ularni to'plash va ishonchlisini ajratish alohida ilm bo'lgan.

Imom al-Buxoriy (810–870) shu maqsadda ko'plab shaharlarga safar qilib, minglab hadisni yig'gan va ularning eng ishonchlilarini «Al-jome as-sahih» to'plamiga kiritgan. Uning tanlash mezonlari nihoyatda qat'iy bo'lgan. Imom at-Termiziy esa «Sunan» to'plamini yaratgan. Al-Buxoriy Samarqand yaqinidagi Xartang qishlog'ida dafn etilgan; u yerdagi yodgorlik majmuasi bugun ziyoratgohga aylangan.$$
 WHERE topic_uz = $$Hadis ilmi sultonlari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'arab');

UPDATE fact_cards SET detail_uz = $$Somoniylar davlati IX asr oxirida mustaqil bo'lib, X asr oxirigacha hukm surgan. Uning asoschisi Ismoil Somoniy (892–907) adolatli hukmdor sifatida xalq xotirasida qolgan.

Poytaxt Buxoroda kutubxonalar, madrasalar va shifoxonalar ishlagan; shahar «Buxoroyi sharif» nomi bilan mashhur bo'lgan. Aynan shu yerdagi kutubxonada yosh Ibn Sino o'qib, bilim olgan. Ismoil Somoniy maqbarasi — pishiq g'ishtdan naqsh solib qurilgan noyob bino — bugun ham Buxoroda saqlanib turibdi va O'rta Osiyodagi eng qadimgi maqbaralardan biri sanaladi.$$
 WHERE topic_uz = $$Somoniylar davlati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'arab');

UPDATE fact_cards SET detail_uz = $$Ibn Sinoning «Tib qonunlari» besh kitobdan iborat bo'lib, unda kasalliklarning belgilari, dorilar va davolash usullari tartib bilan bayon etilgan. Asar lotin tiliga tarjima qilinib, Yevropa tibbiyot maktablarida bir necha asr davomida asosiy darslik bo'lgan.

Abu Rayhon Beruniy «Hindiston» asarida bu mamlakat aholisining tili, dini, urf-odatlari va ilmini xolis tasvirlagan — u ma'lumotlarni o'zi borib to'plagan. «Qadimgi xalqlardan qolgan yodgorliklar» kitobida esa turli xalqlarning taqvimlari va bayramlarini solishtirgan. Bu ikki olim bir davrda yashab, o'zaro xat orqali ilmiy bahs ham yuritgan.$$
 WHERE topic_uz = $$Ibn Sino va Beruniy$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'arab');

UPDATE fact_cards SET detail_uz = $$Forobiy hozirgi Qozog'iston hududidagi O'tror (Forob) shahrida tug'ilgan, umrining katta qismini Bag'dod, Halab va Damashqda o'tkazgan.

Uni «Ikkinchi muallim» deb atashgan: birinchi muallim yunon faylasufi Arastu hisoblangan, Forobiy esa uning asarlarini sharhlab, falsafani rivojlantirgan. U mantiq, tabiiyot, til va musiqa bo'yicha 160 dan ortiq asar yozgan. «Kitob ul-musiqi al-kabir» («Musiqa haqida katta kitob») asarida musiqa nazariyasini ilmiy asosda bayon etgan. «Fozil odamlar shahri»da esa odamlar bir-biriga yordam beradigan, bilim va adolat ustuvor bo'lgan jamiyatni tasvirlagan.$$
 WHERE topic_uz = $$Abu Nasr Forobiy$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'arab');

-- =========================== TEMURIYLAR DAVRI ===========================

UPDATE fact_cards SET detail_uz = $$1370-yilda Balxda o'tkazilgan qurultoyda Amir Temur oliy hokimiyatni qo'lga oldi va tarqoq bekliklarni yagona davlatga birlashtirdi.

Davlat boshqaruvi tartibli tuzilgan edi: har viloyatga hokim tayinlangan, soliq miqdori belgilangan, qonun buzganlar javobgar bo'lgan. «Temur tuzuklari» asarida davlatni boshqarish, qo'shinni tashkil etish va maslahatchilar bilan ishlash qoidalari yozib qoldirilgan. «Kuch — adolatda» shiori esa Amir Temur muhriga bitilgan va uning boshqaruv tamoyilini ifodalagan.$$
 WHERE topic_uz = $$Markazlashgan davlat$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'temuriylar');

UPDATE fact_cards SET detail_uz = $$Amir Temur zabt etilgan mamlakatlardan mohir hunarmand, me'mor va naqqoshlarni Samarqandga taklif qilgan — shu bois shahar me'morligida turli o'lkalar an'analari birlashgan.

Bibixonim jome masjidi XIV asr oxirida qurilib, o'z davrining eng ulkan binolaridan bo'lgan. Go'ri Amir maqbarasi — sohibqiron va uning avlodlari dafn etilgan joy; uning ko'k gumbazi Samarqand ramziga aylangan. Shohi Zinda esa bir necha asr davomida qurilgan maqbaralar ko'chasi. Shahrisabzdagi Oqsaroy shu qadar ulkan bo'lganki, uning faqat darvoza minoralari saqlanib qolgan.$$
 WHERE topic_uz = $$Poytaxt Samarqand$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'temuriylar');

UPDATE fact_cards SET detail_uz = $$Rasadxonaning asosiy asbobi — yer ostiga o'rnatilgan ulkan yoysimon sekstant edi. Uning radiusi qariyb 40 metrni tashkil etgan; asbob qancha katta bo'lsa, o'lchov shuncha aniq chiqqan.

Ulug'bek va uning shogirdlari (ular orasida Ali Qushchi va G'iyosiddin Koshiy bor edi) yulduzlarni ko'p yillar davomida kuzatib, «Ziji jadidi Ko'ragoniy» jadvalini tuzgan. Undagi yulduzlar o'rni teleskopsiz erishilgan eng aniq natijalardan sanaladi. Rasadxona keyinchalik vayron bo'lgan va uzoq vaqt izsiz qolgan; 1908-yilda arxeolog V. L. Vyatkin uning o'rnini topib, yer ostidagi sekstant qismini ochgan.$$
 WHERE topic_uz = $$Ulug'bek rasadxonasi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'temuriylar');

UPDATE fact_cards SET detail_uz = $$Ulug'bek qurdirgan uchta madrasa — Samarqand Registonidagi, Buxorodagi va G'ijduvondagi binolar. Ular orasida eng mashhuri Registondagi madrasa bo'lib, u maydonning butun me'moriy ansambliga asos bo'lgan.

Bu madrasalarda faqat diniy fanlar emas, matematika, astronomiya va geometriya ham o'qitilgan; Ulug'bekning o'zi ham dars bergani haqida ma'lumotlar bor. Buxoro madrasasi darvozasidagi «Bilim olish har bir muslim va muslima uchun farzdir» degan yozuv o'sha davrda qizlarning ham o'qishi qo'llab-quvvatlanganini ko'rsatadi.$$
 WHERE topic_uz = $$Ulug'bek madrasalari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'temuriylar');

UPDATE fact_cards SET detail_uz = $$Navoiy davrida ilm va adabiyotda asosan fors tili qo'llanardi; turkiy til «she'r uchun qo'pol» deb hisoblanardi. Navoiy buni asarlari bilan rad etgan.

«Xamsa» — beshta yirik dostondan iborat to'plam bo'lib, shoir uni turkiy tilda yaratgan. «Xazoyin ul-maoniy» esa umr davomida yozilgan she'rlarni to'rt devonga jamlagan. «Muhokamat ul-lug'atayn» («Ikki til muhokamasi») asarida Navoiy turkiy tilning so'z boyligini fors tili bilan qiyoslab, o'z fikrini misollar bilan isbotlagan. Uning bu ishi ona tilimiz taraqqiyotidagi burilish nuqtasi bo'lgan.$$
 WHERE topic_uz = $$Navoiy va ona tili$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'temuriylar');

UPDATE fact_cards SET detail_uz = $$Husayn Boyqaro Hirotda hukmronlik qilgan va o'zi ham «Husayniy» taxallusi bilan she'rlar yozgan. Uning davrida shahar shoirlar, xattotlar, musavvirlar va olimlarni o'ziga tortgan.

Alisher Navoiy bu yerda davlat lavozimida ishlab, o'z mablag'iga madrasa, shifoxona, ko'prik va karvonsaroylar qurdirgan. Kamoliddin Behzod esa miniatyura san'atini yangi darajaga ko'targan: uning suratlarida odamlarning yuz ifodasi va harakati jonli tasvirlangan. Hirot xattotlik maktabi ham shu davrda shakllangan.$$
 WHERE topic_uz = $$Hirot madaniy markazi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'temuriylar');

UPDATE fact_cards SET detail_uz = $$«Uyg'onish» (Renessans) so'zi ilm, san'at va adabiyot bir vaqtning o'zida gurkirab rivojlangan davrni bildiradi. Temuriylar davri Sharqda ana shunday davr bo'lgan.

Astronomiyada Ulug'bek maktabi, matematikada G'iyosiddin Koshiy, adabiyotda Navoiy, tasviriy san'atda Behzod, tarixda Sharafiddin Ali Yazdiy ijod qilgan. Me'morlikda koshinkorlik — rangli sirlangan g'ishtlar bilan bezash san'ati yuksak cho'qqiga chiqqan. Bu davr yutuqlari keyinchalik butun mintaqa va undan tashqaridagi madaniyatga ta'sir ko'rsatgan.$$
 WHERE topic_uz = $$Sharq Uyg'onish davri$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'temuriylar');

UPDATE fact_cards SET detail_uz = $$Bobur Farg'ona vodiysida tug'ilib, yoshligida Andijon hukmdori bo'lgan. Keyinchalik u Kobulga, so'ngra Hindistonga borib, u yerda yangi saltanatga asos solgan.

«Boburnoma» — uning o'z hayoti haqidagi kundaligi. Unda shaharlar, tabiat, mevalar, odamlarning odatlari shu qadar aniq tasvirlanganki, kitob bugun tarixchilar uchun muhim manba sanaladi va ko'plab tillarga tarjima qilingan. Bobur asos solgan sulola davrida Hindistonda Tojmahal, Qizil qal'a kabi mashhur binolar qurilgan.$$
 WHERE topic_uz = $$Bobur va boburiylar$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'temuriylar');

-- =========================== XONLIKLAR DAVRI ===========================

UPDATE fact_cards SET detail_uz = $$Muhammad Shayboniyxon dashtdan kelgan o'zbek qabilalari boshida turgan. U qisqa vaqt ichida Samarqand, Buxoro va Xurosonni egallagan.

Shayboniylar davrida poytaxt avval Samarqand, keyinroq Buxoro bo'lgan. Bu davrda ham qurilish davom etgan: Buxoroda madrasalar, savdo gumbazlari va hammomlar qad rostlagan. Shayboniyxonning o'zi she'r yozgan va olimlarni qo'llab-quvvatlagan. Sulola XVI asr oxirigacha hukmronlik qilib, keyin o'rnini boshqa sulolalar egallagan.$$
 WHERE topic_uz = $$Shayboniylar davri$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xonliklar');

UPDATE fact_cards SET detail_uz = $$Buxoro amirligi Zarafshon vodiysi va janubiy hududlarni, Xiva xonligi Xorazm vohasini, Qo'qon xonligi esa Farg'ona vodiysi va Toshkent atrofini egallagan.

Har uch davlatda hunarmandchilik va savdo rivojlangan, madrasalar ishlagan, shoir va olimlar ijod qilgan. Ammo ular o'rtasidagi tez-tez takrorlangan urushlar kuchni yeb bitirgan va yagona qarshilik ko'rsatish imkonini yo'qotgan. XIX asr o'rtalarida Rossiya imperiyasi yurish boshlaganda, bu tarqoqlik og'ir oqibatlarga olib kelgan.$$
 WHERE topic_uz = $$Uch davlat$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xonliklar');

UPDATE fact_cards SET detail_uz = $$Abulg'oziy Bahodirxon Xiva taxtiga o'tirgunga qadar uzoq yillar safarda va surgunda bo'lgan; shu yillarda u ko'p kitob o'qib, bilim to'plagan.

«Shajarayi turk» asarida turkiy xalqlarning kelib chiqishi, urug'lari va tarixi bayon etilgan. «Shajarayi tarokima» esa turkmanlar tarixiga bag'ishlangan. U asarlarini sodda, xalq tushunadigan tilda yozishga harakat qilgan. Bu kitoblar keyinchalik Yevropa tillariga ham tarjima qilinib, sharqshunos olimlar uchun muhim manbaga aylangan.$$
 WHERE topic_uz = $$Xon-tarixchi Abulg'oziy$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xonliklar');

UPDATE fact_cards SET detail_uz = $$«Ichan-qal'a» — «ichki qal'a» degani: Xivaning baland devor bilan o'ralgan tarixiy markazi shunday ataladi.

Uning ichida madrasalar, masjidlar, minoralar va xon saroyi — Tosh hovli joylashgan. Kalta minor minorasi ko'k koshinlari bilan ajralib turadi; u rejaga ko'ra ancha baland bo'lishi kerak edi, ammo qurilish tugallanmagan. Islomxo'ja minorasi esa Xivaning eng baland minorasi. Ichan-qal'a 1990-yilda O'zbekistondagi obidalar orasida birinchi bo'lib YUNESKOning Jahon merosi ro'yxatiga kiritilgan.$$
 WHERE topic_uz = $$Ichan-qal'a$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xonliklar');

UPDATE fact_cards SET detail_uz = $$Buxoro shahri asrlar davomida qurilgani uchun uning me'morligida turli davrlar izi saqlangan.

Kalon minorasi XII asrda qurilgan bo'lib, balandligi 45 metrdan ortiq; u shaharning eng qadimgi va mashhur belgisi. Labi hovuz ansambli — hovuz atrofidagi madrasa va xonaqodan iborat majmua, shahar hayotining markazi bo'lgan. Chor minor binosi to'rtta gumbazli minorasi bilan ajralib turadi. Savdo gumbazlari esa har biri o'z kasbiga mo'ljallangan bozorlar edi: zargarlar, telpakdo'zlar va sarroflar alohida gumbazlarda ishlagan.$$
 WHERE topic_uz = $$Buxoro me'morligi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xonliklar');

UPDATE fact_cards SET detail_uz = $$Bu davr adabiyotida xalqning turmushi, adolat va ma'rifat mavzulari kuchli yangragan.

Boborahim Mashrab she'rlarida soddalik va samimiylik bilan haqiqatni aytgan, shu bois uning g'azallari xalq orasida keng tarqalgan. Xorazmda Munis Xorazmiy va uning jiyani Ogahiy nafaqat shoir, balki tarixchi va tarjimon ham bo'lgan: ular xonlik tarixini yozib qoldirgan va fors tilidan o'nlab kitob tarjima qilgan. Qo'qonda Amiriy (xon Umarxonning taxallusi) saroyida shoirlar davrasi shakllangan, Furqat esa keyinroq ma'rifat g'oyalarini kuylagan.$$
 WHERE topic_uz = $$Mumtoz adabiyot$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xonliklar');

UPDATE fact_cards SET detail_uz = $$O'sha davrda ayollarning ijod qilishi oson bo'lmagan, shu bois bu shoiralarning merosi alohida qadrlanadi.

Nodira (asl ismi Mohlaroyim) Qo'qon xoni Umarxonning rafiqasi bo'lgan. U she'rlarini o'zbek va fors tillarida yozgan, saroyda shoirlar va olimlarga homiylik qilgan, madrasa va karvonsaroylar qurdirgan. Uvaysiy (Jahonotin) Marg'ilonda tug'ilib, Nodira taklifi bilan Qo'qonga kelgan va u yerda qizlarga saboq bergan. Ikkalasining g'azallari bugungi o'zbek mumtoz adabiyoti darsliklaridan joy olgan.$$
 WHERE topic_uz = $$Shoiralar$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xonliklar');

UPDATE fact_cards SET detail_uz = $$Har shaharning o'z hunari bo'lgan va usta o'z sirlarini shogirdiga o'rgatgan — bu «usta-shogird» an'anasi deb ataladi.

Marg'ilonda ipakdan atlas va adras to'qilgan; naqshlar ipni bo'yashdan oldin bog'lash usuli bilan hosil qilingan. Rishton kulollari mahalliy qizil loy va ishqor sirdan foydalanib, ko'k-feruza rangli idishlar yaratgan. Buxoro zardo'zlari oltin va kumush ip bilan to'n hamda telpaklarga naqsh tikkan. Bu hunarlar bugun ham davom etmoqda va ularning ba'zilari YUNESKOning nomoddiy meros ro'yxatiga kiritilgan.$$
 WHERE topic_uz = $$Hunarmandchilik va savdo$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xonliklar');

-- =========================== JADIDLAR DAVRI ===========================

UPDATE fact_cards SET detail_uz = $$Rossiya imperiyasining O'rta Osiyoga yurishi XIX asr o'rtalarida boshlangan. 1865-yilda Toshkent, keyingi yillarda Samarqand va boshqa shaharlar bosib olingan.

1867-yilda Turkiston general-gubernatorligi tuzilib, markazi Toshkent bo'ldi. Buxoro amirligi va Xiva xonligi butunlay tugatilmagan, lekin ular Rossiyaga qaram davlatlarga aylantirilgan. Yangi tartib bilan birga temir yo'l, telegraf va zavodlar kirib kelgan, ammo o'lka xom ashyo — asosan paxta yetkazib beruvchi hududga aylantirilgan. Aynan shu sharoit millat ziyolilarini yechim izlashga undagan.$$
 WHERE topic_uz = $$Rossiya istilosi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'jadidlar');

UPDATE fact_cards SET detail_uz = $$Jadidlar qurol bilan emas, bilim bilan kurashishni tanlagan. Ularning fikricha, millat orqada qolganining sababi — savodsizlik va eskirgan ta'lim.

Harakatga Qrimda «Tarjimon» gazetasini chiqargan Ismoil Gaspirali (Gasprinskiy) g'oyalari kuchli ta'sir ko'rsatgan. Jadidlar uch yo'nalishda ish olib borgan: yangi usul maktablari ochish, gazeta va jurnal chiqarish, teatr orqali xalqni uyg'otish. Ular yosh iste'dodlarni chet elga — Istanbul, Qozon va Germaniyaga o'qishga yuborgan. Bu harakat butun Turkiston bo'ylab tarqalgan.$$
 WHERE topic_uz = $$Jadidchilik harakati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'jadidlar');

UPDATE fact_cards SET detail_uz = $$Eski maktablarda bolalar harflarni yodlab, savod chiqarish uchun bir necha yil sarflardi. Yangi usul («usuli savtiya») tovushlarni birlashtirib o'qishga o'rgatgan — shuning uchun natija tez chiqqan.

Bunday maktablarda parta, doska, xarita va darsliklar bo'lgan; bolalar sinflarga bo'lingan, dars jadval asosida o'tilgan. O'qish, yozish va hisobdan tashqari jug'rofiya, tarix va tabiat fanlari o'rgatilgan. Jadidlar bu maktablar uchun maxsus darsliklar yozgan. Mustamlaka ma'muriyati va ba'zi eski tartib tarafdorlari bu maktablarga qarshilik ko'rsatgan, shunga qaramay ular soni yildan yilga ortib borgan.$$
 WHERE topic_uz = $$Yangi usul maktablari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'jadidlar');

UPDATE fact_cards SET detail_uz = $$Mahmudxo'ja Behbudiy Samarqandda tug'ilgan; u ko'p mamlakatlarga safar qilib, u yerdagi maktab va matbuot tajribasini o'rgangan.

«Padarkush» dramasi ilm olmagan bolaning oilasi boshiga solgan kulfati haqida bo'lib, u birinchi o'zbek dramasi sanaladi va sahnaga qo'yilgan. Behbudiy «Oyina» jurnalini chiqarib, unda ta'lim, huquq va dunyo yangiliklari haqida yozgan. U darsliklar tuzgan va kambag'al oilalar bolalarini o'qitish uchun mablag' yig'gan. «Haq olinur, berilmas!» degan so'zlari uning e'tiqodini ifodalaydi.$$
 WHERE topic_uz = $$Mahmudxo'ja Behbudiy$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'jadidlar');

UPDATE fact_cards SET detail_uz = $$Munavvarqori Abdurashidxonov Toshkentda yangi usul maktabini ochib, keyin butun shahar bo'ylab maktablar tarmog'ini yaratgan. U yozgan «Adibi avval» va «Adibi soniy» darsliklari bo'yicha minglab bola savod chiqargan.

Abdulla Avloniy ham o'qituvchi, ham shoir, ham jurnalist bo'lgan. Uning «Turkiy guliston yoxud axloq» kitobi bolalarga halollik, mehnatsevarlik va vatanparvarlikni o'rgatadi; unda «Tarbiya biz uchun yo mavt, yo hayot, yo najot, yo halokat masalasidir» degan mashhur so'zlar bor. Avloniy teatr truppasi tuzib, sahna orqali ham ma'rifat tarqatgan.$$
 WHERE topic_uz = $$Munavvarqori va Avloniy$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'jadidlar');

UPDATE fact_cards SET detail_uz = $$Gazeta o'sha davr uchun eng tez axborot vositasi edi: u xalqqa dunyoda nima bo'layotganini yetkazardi.

«Taraqqiy» gazetasi 1906-yilda chiqa boshlagan, ammo ma'muriyat uni tez orada yopgan — jadid nashrlarining ko'pchiligi shunday taqdirga uchragan. «Sadoi Turkiston» Toshkentda, «Samarqand» gazetasi va «Oyina» jurnali Samarqandda nashr etilgan. Ularda maktab, savdo, dehqonchilik va huquq haqida maqolalar, she'r va hikoyalar bosilgan. Bu nashrlar o'zbek jurnalistikasi va publitsistikasining boshlanishi bo'ldi.$$
 WHERE topic_uz = $$Milliy matbuot$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'jadidlar');

UPDATE fact_cards SET detail_uz = $$Abdurauf Fitrat Buxoroda tug'ilib, Istanbulda o'qigan. «Munozara» asari ikki kishining bahsi shaklida yozilgan bo'lib, unda ta'limni isloh qilish zarurligi asoslab berilgan. U tilshunoslik, adabiyotshunoslik va musiqa tarixi bo'yicha ham ilmiy ishlar yozgan.

Abdulhamid Cho'lpon she'riyatga yangi ohang olib kirgan: uning she'rlari erk, uyg'onish va insonning qadr-qimmati haqida. «Kecha va kunduz» romanida esa oddiy ayolning taqdiri orqali butun bir davr manzarasi chizilgan. Ikkala adib ham yangi o'zbek adabiyotining asoschilari sanaladi.$$
 WHERE topic_uz = $$Fitrat va Cho'lpon$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'jadidlar');

UPDATE fact_cards SET detail_uz = $$Jadidlarning ko'pchiligi keyinchalik qatag'on qurbonlari bo'ldi: 1937–1938-yillarda Behbudiy izidan borgan avlod — Fitrat, Cho'lpon, Qodiriy va ularning safdoshlari yo'q qilindi.

Uzoq yillar davomida ularning nomi va asarlari taqiq ostida qoldi. Mustaqillikdan keyin jadidlar merosi qayta o'rganilib, ularning kitoblari nashr etildi, nomlari ko'chalar, maktablar va mukofotlarga berildi. Bugun jadidlar millat ravnaqi uchun ma'rifat yo'lini tanlagan ziyolilar timsoli sifatida ulug'lanadi.$$
 WHERE topic_uz = $$Jadidlar merosi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'jadidlar');

-- ================================ XX ASR ================================

UPDATE fact_cards SET detail_uz = $$Turkiston muxtoriyati 1917-yil noyabr oyida Qo'qonda o'tkazilgan o'lka musulmonlarining qurultoyida e'lon qilingan. Uni Mustafa Cho'qay boshchiligidagi hukumat boshqargan.

Muxtoriyat o'z bayrog'i va hukumatini tuzib, aholining barcha millatlari huquqini teng deb belgilagan, maktab va matbuot ishlarini yo'lga qo'ymoqchi bo'lgan. Ammo unda na qo'shin, na mablag' bor edi. 1918-yil fevral oyida u sovet qo'shinlari tomonidan tugatildi, Qo'qon shahri esa katta talafot ko'rdi. Qisqa umriga qaramay, muxtoriyat XX asrda o'z davlatchiligimizni tiklashga qilingan birinchi urinish sifatida tarixda qoldi.$$
 WHERE topic_uz = $$Turkiston muxtoriyati$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xx-asr');

UPDATE fact_cards SET detail_uz = $$1924-yilda sovet hukumati O'rta Osiyoni milliy belgilar asosida yangi respublikalarga bo'lib chiqdi — bu «milliy-hududiy chegaralanish» deb ataladi.

Shu asosda O'zbekiston SSR tashkil etildi. Chegaralar chizilishida ba'zi hududlar va shaharlar taqdiri bahsli bo'lib qolgan, bu esa keyingi davrlarda ham o'z ta'sirini ko'rsatgan. Poytaxt dastlab Samarqand bo'lgan, 1930-yilda esa Toshkentga ko'chirilgan. Respublika tarkibida qishloq xo'jaligi, sanoat va ta'lim tizimi sovet andozasi bo'yicha qayta qurilgan.$$
 WHERE topic_uz = $$O'zbekiston SSR$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xx-asr');

UPDATE fact_cards SET detail_uz = $$Qatag'on — aybsiz odamlarni ta'qib qilish va jazolash siyosati. 1937–1938-yillarda u eng kuchli tus olgan.

Ayblovlar ko'pincha uydirma bo'lgan: yozuvchi, olim, o'qituvchi, din arboblari va oddiy dehqonlar «xalq dushmani» deb e'lon qilingan. Abdulla Qodiriy, Cho'lpon va Fitrat 1938-yilda hayotdan ko'z yumdi; ularning asarlari o'nlab yillar davomida taqiqlangan. Ko'p oila a'zolari surgun qilingan.

Mustaqillikdan keyin bu odamlarning nomi oqlandi. Toshkentdagi Shahidlar xotirasi majmuasi ular xotirasiga bag'ishlangan; 31-avgust — Qatag'on qurbonlarini yod etish kuni.$$
 WHERE topic_uz = $$Qatag'on qurbonlari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xx-asr');

UPDATE fact_cards SET detail_uz = $$Urush yillarida O'zbekiston front ortidagi muhim tayanchga aylandi.

Yurtimizga Rossiya va Ukrainadan yuzlab zavod ko'chirib keltirilib, qisqa muddatda ishga tushirildi; ular front uchun mahsulot ishlab chiqardi. Dehqonlar paxta va don yetishtirdi, ayollar va o'smirlar erkaklar o'rniga ishga chiqdi.

Bosib olingan hududlardan minglab yetim bola O'zbekistonga olib kelindi va o'zbek oilalari ularni farzandlikka oldi. Toshkentlik temirchi Shomahmudov oilasi 15 nafar bolani o'z bag'riga olgan; bu voqea xalqimiz mehr-oqibatining ramziga aylangan va ular xotirasiga Toshkentda haykal o'rnatilgan.$$
 WHERE topic_uz = $$Urush yillarida O'zbekiston$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xx-asr');

UPDATE fact_cards SET detail_uz = $$«Yakkahokimlik» — bitta ekinning boshqalarni siqib chiqarishi. Paxta maydonlari kengaygani sayin bog'lar, poliz va boshoqli ekinlar uchun yer qolmagan.

Paxtani sug'orish uchun Amudaryo va Sirdaryo suvi katta kanallar orqali dalalarga burib yuborilgan. Natijada 1960-yillardan boshlab Orol dengiziga suv kelishi keskin kamayib, dengiz chekina boshlagan. Sohilda qolgan kemalar, sho'r qumga aylangan tub va yo'qolgan baliqchilik — bu fojianing ko'zga ko'rinadigan belgilari. Bugun Orol bo'yida qumga o'simlik ekish va aholi salomatligini qo'llab-quvvatlash bo'yicha xalqaro loyihalar amalga oshirilmoqda.$$
 WHERE topic_uz = $$Paxta yakkahokimligi va Orol$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xx-asr');

UPDATE fact_cards SET detail_uz = $$1966-yil 26-aprel kuni erta tongda Toshkent markazida kuchli yer silkinishi ro'y berdi. Zilzila o'chog'i shahar ostida, yer yuzasiga yaqin joyda bo'lgani uchun vayronagarchilik katta bo'ldi.

Yuz minglab kishi uy-joysiz qoldi, shaharning eski qismidagi loy uylar ayniqsa ko'p shikastlandi. Butun mamlakatdan quruvchilar kelib, Toshkentni qayta tikladi: yangi turar-joy mavzelari, keng ko'chalar va zilzilaga chidamli binolar qurildi. Toshkent metropoliteni ham shu yillardan keyin barpo etilgan. Zilzila xotirasiga shahar markazida «Mardlik» yodgorligi o'rnatilgan.$$
 WHERE topic_uz = $$Toshkent zilzilasi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xx-asr');

UPDATE fact_cards SET detail_uz = $$Qatag'on va urush sinovlariga qaramay, XX asrda o'zbek adabiyoti va san'ati o'sishda davom etdi.

Oybek «Navoiy» romanida buyuk shoir siymosini yaratdi; bu asar ko'p tillarga tarjima qilingan. G'afur G'ulomning «Shum bola» qissasi bolalik, hazil va hayot saboqlari haqida bo'lib, bugun ham sevib o'qiladi. Zulfiya she'riyati mehr, sadoqat va ayol qalbi haqida. Abdulla Qahhor hikoyalari, Said Ahmad asarlari, teatr va kino ham shu davrda rivojlandi. Musiqa va raqs san'atida Halima Nosirova, Tamaraxonim va Mukarrama Turg'unboyeva nomlari mashhur bo'ldi.$$
 WHERE topic_uz = $$XX asr adabiyoti$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xx-asr');

UPDATE fact_cards SET detail_uz = $$1980-yillar oxirida jamiyatda ochiq gapirish imkoniyati paydo bo'ldi va milliy o'zlikni tiklash haqidagi talablar kuchaydi.

1989-yil 21-oktabrda «Davlat tili haqida»gi qonun qabul qilinib, o'zbek tiliga davlat tili maqomi berildi. Shu sababli 21-oktabr bugun O'zbek tili bayrami sifatida nishonlanadi. Shu yillarda qatag'on qurbonlarining nomlari tiklana boshlandi, taqiqlangan asarlar nashr etildi, Navro'z bayrami qaytadan keng nishonlanadigan bo'ldi. Bularning barchasi 1991-yil 31-avgustdagi mustaqillik e'loniga olib borgan yo'lning bosqichlari edi.$$
 WHERE topic_uz = $$Mustaqillik sari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'xx-asr');

-- =========================== MUSTAQILLIK DAVRI ===========================

UPDATE fact_cards SET detail_uz = $$1991-yil 31-avgustda O'zbekiston Oliy Kengashining navbatdan tashqari sessiyasida davlat mustaqilligi to'g'risidagi bayonot qabul qilindi.

Shu kuni «O'zbekiston Respublikasi» nomi rasman tasdiqlangan. 1-sentabr Mustaqillik kuni deb belgilanib, har yili tantanali nishonlanadi. Mustaqillik e'loni bilan mamlakat o'z qonunlarini qabul qilish, o'z pulini chiqarish, boshqa davlatlar bilan bevosita aloqa o'rnatish huquqiga ega bo'ldi. 1991-yil dekabrda o'tkazilgan umumxalq referendumida fuqarolar mustaqillikni qo'llab-quvvatladi.$$
 WHERE topic_uz = $$Mustaqillik e'loni$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'mustaqillik');

UPDATE fact_cards SET detail_uz = $$Konstitutsiya — davlatning asosiy qonuni: unda boshqaruv tuzilishi va fuqarolarning huquqlari belgilanadi. Boshqa barcha qonunlar unga zid bo'lmasligi kerak.

O'zbekiston Konstitutsiyasi 1992-yil 8-dekabrda qabul qilingan, shu kun Konstitutsiya kuni sifatida nishonlanadi. Unda inson huquq va erkinliklari oliy qadriyat deb e'lon qilingan, ta'lim olish huquqi kafolatlangan, davlat hokimiyati qonun chiqaruvchi, ijro etuvchi va sud hokimiyatiga bo'lingan. Hujjatga keyinchalik o'zgartirishlar kiritilgan; 2023-yilda yangilangan tahriri umumxalq referendumida qabul qilindi.$$
 WHERE topic_uz = $$Konstitutsiya$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'mustaqillik');

UPDATE fact_cards SET detail_uz = $$Har bir mustaqil davlatning uchta asosiy ramzi bo'ladi: bayroq, gerb va madhiya. O'zbekiston ularni mustaqillikning dastlabki oylarida qabul qilgan.

Gerb markazida qanotlarini yozgan Humo qushi tasvirlangan — u xalq tasavvurida baxt va erkinlik ramzi. Gerbda bug'doy boshoqlari va paxta ko'saklari, quyosh nurlari, tog'lar va daryolar aks etgan; yuqorisida sakkiz qirrali yulduz turadi. Madhiya matnini shoir Abdulla Oripov yozgan, musiqasi esa bastakor Mutal Burhonovga tegishli. Davlat ramzlariga hurmat Konstitutsiyada belgilab qo'yilgan.$$
 WHERE topic_uz = $$Davlat ramzlari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'mustaqillik');

UPDATE fact_cards SET detail_uz = $$Bayroqdagi har bir belgi o'z ma'nosiga ega va bu ma'nolar qonunda belgilab qo'yilgan.

Ko'k rang — musaffo osmon va hayot manbai bo'lgan suv ramzi; u qadimda bu hududda hukm surgan davlatlar bayroqlari rangiga ham ishora qiladi. Oq — tinchlik, poklik va ezgu niyat. Yashil — tabiat va yangilanish. Ranglarni ajratib turgan ingichka qizil chiziqlar tirik organizmdagi hayot kuchini bildiradi.

Yarim oy yangi tug'ilgan mustaqil davlat ramzi, o'n ikkita yulduz esa yil davomidagi o'n ikki oy va qadimgi taqvim an'analari bilan bog'liq.$$
 WHERE topic_uz = $$Bayroq ranglari$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'mustaqillik');

UPDATE fact_cards SET detail_uz = $$Birlashgan Millatlar Tashkiloti (BMT) — dunyo davlatlarining tinchlik va hamkorlik uchun tuzilgan eng yirik tashkiloti.

O'zbekiston 1992-yil 2-martda unga a'zo bo'ldi va shu bilan xalqaro maydonga chiqdi. Bugun mamlakatimiz YUNESKO, Jahon sog'liqni saqlash tashkiloti kabi ko'plab xalqaro tuzilmalar bilan hamkorlik qiladi. Toshkentda o'nlab davlatning elchixonasi ishlaydi, O'zbekiston sportchilari Olimpiada o'yinlarida qatnashadi. Xalqaro tashkilotlar bilan hamkorlik ta'lim, tibbiyot va tabiatni asrash loyihalarini amalga oshirishga yordam beradi.$$
 WHERE topic_uz = $$Jahon hamjamiyatida$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'mustaqillik');

UPDATE fact_cards SET detail_uz = $$Milliy valyuta — davlat mustaqilligining muhim belgilaridan biri: o'z puli bo'lgan davlat iqtisodini o'zi boshqaradi.

O'zbekistonda 1994-yil 1-iyulda so'm muomalaga kiritildi. Pul birligining nomi tarixiy: «so'm» so'zi qadimda quyma metall pulni bildirgan. So'm banknotalari va tangalarida yurtimizning tarixiy obidalari, ramzlari va buyuk siymolari tasvirlangan. Milliy valyutaning joriy etilishi mamlakatning o'z bank tizimi va moliya siyosatini shakllantirish imkonini bergan.$$
 WHERE topic_uz = $$Milliy valyuta$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'mustaqillik');

UPDATE fact_cards SET detail_uz = $$Sovet davrida ko'plab milliy an'analar va tarixiy shaxslar haqida ochiq gapirish qiyin edi. Mustaqillik bu holatni o'zgartirdi.

Navro'z 1990-yildan boshlab rasmiy bayram sifatida keng nishonlanadigan bo'ldi. Amir Temur merosi qayta o'rganildi: 1996-yil «Amir Temur yili» deb e'lon qilinib, sohibqironning 660 yilligi xalqaro miqyosda nishonlandi, Toshkentda Amir Temur nomidagi Davlat muzeyi ochildi. Mirzo Ulug'bek, Alisher Navoiy, Bobur va jadidlar merosiga bag'ishlangan yubileylar o'tkazildi, ularning asarlari qayta nashr etildi va nomlari ko'chalar, universitetlar hamda mukofotlarga berildi.$$
 WHERE topic_uz = $$Qadriyatlar tiklanishi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'mustaqillik');

UPDATE fact_cards SET detail_uz = $$YUNESKOning Jahon merosi ro'yxatiga butun insoniyat uchun alohida ahamiyatga ega obidalar kiritiladi. Ro'yxatga kiritilgan yodgorlik xalqaro miqyosda muhofaza qilinadi.

O'zbekistondan birinchi bo'lib 1990-yilda Xivaning Ichan-qal'a majmuasi kiritilgan. Keyin Buxoroning tarixiy markazi, Shahrisabzning tarixiy markazi va Samarqand — «Madaniyatlar chorrahasi» qo'shildi. Ro'yxatga faqat binolar emas, nomoddiy meros — Navro'z bayrami, Shashmaqom musiqasi, Boysun madaniy makoni kabi an'analar ham kiritilgan. Bu obidalarni asrab-avaylash bugungi avlod zimmasidagi mas'uliyatdir.$$
 WHERE topic_uz = $$Jahon merosi$$ AND hero_id IS NULL
   AND era_id = (SELECT id FROM eras WHERE code = 'mustaqillik');
