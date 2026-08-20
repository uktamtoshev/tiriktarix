-- «Batafsil» matnlarini KENGAYTIRISH — 7-to'plam: Bumin xoqon va Istami xoqon.
-- Ikkalasi bitta davlatning ikki qanoti — matnlar bir-biriga bog'langan.
--
-- MANBA. `source` o'zgarmaydi. Solishtirilgan manbalar:
--   en.wikipedia.org «Bumin Qaghan» (asl ism Ashina Bumin/Tumen; otasi Ashina
--     Tuvu; javjavan hukmdori Anaguyning «temirchi qul» haqorati; 551-yilda
--     G'arbiy Vey malikasi Chanle; 552-yil g'alaba va «Elxoqon» unvoni; vorislar
--     Issiq xoqon 552–553 va Muqan xoqon 553–572).
--   en.wikipedia.org «Istämi» (yabg'u; eftallarga qarshi urush; Maniax
--     elchiligi 568; Zemarx safari 569; vafoti 576; o'g'li Tardu).
--
-- IZOH. «Temirchilik hunari» kartochkasi endi xoqonlik tuzilishining sababi
-- bilan bog'landi: Anaguyning haqorati aynan shu hunarga tegishli bo'lgan.

-- ================================== BUMIN XOQON ==================================

UPDATE fact_cards SET detail_uz = $$Asl ismim — Ashina Bumin; xitoy yilnomalarida u «Tumen» shaklida yozilgan. Otamning ismi Ashina Tuvu edi va men uning to'ng'ich o'g'li bo'lganman.

Xoqonlikni tuzishimdan avval biz mustaqil emas edik: turkiy qabilalar javjavanlar xoqonligiga bo'ysunar va ularga temir hamda qurol yetkazib berardi.

552-yilda men javjavanlarni yengib, o'zimni xoqon deb e'lon qilganman. Turk xoqonligi shu tariqa qaram qabiladan mustaqil davlatga aylangan.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Birlashtirish bir necha bosqichda kechgan. 546-yilda men javjavanlarga qarshi qo'zg'algan tele qabilalarini yengib, ularni o'z qo'l ostimga olganman.

Manbalarda bu qabilalarning soni 50 mingga yaqin xonadon deb ko'rsatiladi. Bir zarbada shuncha odamning qo'shilishi kuchimni tubdan o'zgartirgan va menga javjavanlar bilan teng gaplashish imkonini bergan.

Davlat qurish faqat jang emas: qabilalarni bir boshqaruvga bo'ysundirish, unvonlar tizimini yaratish va chegaralarni belgilash kerak bo'lgan. Bularning barchasi bir necha yil ichida bajarilgan.$$
 WHERE topic_uz = $$Qabilalar birlashuvi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Xoqon deb e'lon qilinishim javjavanlar ustidan qozonilgan g'alabadan keyin bo'lgan: 552-yilning boshida ularning hukmdori Anaguy qo'shini tor-mor etilgan.

O'shanda men «Elxoqon» unvonini olganman. Bu shunchaki nom emas edi — u endi turklar hech kimga bo'ysunmaydigan mustaqil davlat ekanini bildirardi.

Ammo men bu g'alabadan uzoq bahramand bo'lmaganman: xuddi shu 552-yilda vafot etganman. Davlatni esa o'g'illarim davom ettirgan.$$
 WHERE topic_uz = $$552-yil$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$«Xoqon» — turkiy davlatlardagi eng oliy unvon; undan pastda «yabg'u», «shad» va «tegin» kabi darajalar turgan.

Unvonlar tizimi davlat tuzilishini ko'rsatadi: xoqon butun davlatni boshqaradi, yabg'u alohida qanotni idora qiladi, tegin esa xoqon urug'idan bo'lgan shahzoda. Ukam Istami g'arbiy qanotni yabg'u sifatida boshqargan.

Bu tizim keyingi turkiy davlatlarda ham saqlanib qolgan va «xoqon» so'zi asrlar davomida oliy hukmdor ma'nosida ishlatilgan.$$
 WHERE topic_uz = $$Xoqon unvoni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Markazimiz Oltoy va O'tukan o'lkasi bo'lgan. O'tukan turkiylar uchun oddiy joy emas — u muqaddas markaz hisoblangan va keyingi bitiktoshlarda ham shunday tilga olinadi.

Markazni to'g'ri tanlash davlat uchun muhim: u yaylovlarga, savdo yo'llariga va temir konlariga yaqin bo'lishi kerak. Oltoy tog'lari aynan shunday joy edi.

Davlat kengaygach, uni bir markazdan boshqarish qiyinlashgan. Shuning uchun xoqonlik ikki qanotga bo'lingan: sharqiy qanotni men va vorislarim, g'arbiy qanotni ukam Istami boshqargan.$$
 WHERE topic_uz = $$Davlat markazi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Kengayish tezligi hayratlanarli: 552-yilda tuzilgan davlat uch yil ichida g'arbda Sirdaryo va Orol dengizi bo'ylariga yetib borgan.

Buning sababi tuzilishda: ikki qanotli boshqaruv bir vaqtning o'zida ikki tomonga harakat qilish imkonini bergan. Sharqda Xitoy chegaralari, g'arbda esa O'rta Osiyo yo'nalishi bo'yicha ish olib borilgan.

Yigirma yil ichida xoqonlik Xitoy chegaralaridan Qora dengizgacha cho'zilgan. Bu o'sha davrning eng katta davlatlaridan biri edi.$$
 WHERE topic_uz = $$Davlatning kengayishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Istami mening ukam edi. Bo'linish tasodifiy emas: davlat juda katta bo'lgani uchun uni bir joydan boshqarib bo'lmasdi.

Uning eng katta yutug'i — 563–567-yillarda eftallar davlatining tugatilishi. Shundan keyin Amudaryo Turk xoqonligi bilan Eron o'rtasidagi chegara bo'lib qolgan.

Istami mustaqil siyosat ham yuritgan: u Vizantiyaga elchilar yuborgan va ipak savdosi bo'yicha muzokara olib borgan. Ya'ni yabg'u shunchaki qo'mondon emas, o'z qanotining hukmdori edi.$$
 WHERE topic_uz = $$Istami va g'arbiy yurishlar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Bo'linish 580-yillar oxirida rasmiylashgan: Sharqiy turk xoqonligi va G'arbiy turk xoqonligi alohida davlatlar sifatida ish yurita boshlagan.

Sabab tushunarli — masofa juda katta edi va ikki qanotning manfaatlari boshqacha bo'lgan. Sharqiy qanot uchun asosiy qo'shni Xitoy, g'arbiy qanot uchun esa Eron va Vizantiya edi.

Shunga qaramay ikkala davlat ham ashina urug'i tomonidan boshqarilgan va o'zini men asos solgan xoqonlikning davomchisi deb bilgan.$$
 WHERE topic_uz = $$Xoqonlik taqdiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Xitoy yilnomalarida nafaqat mening nomim, balki elchiliklar, urushlar va sovg'alar ham sanalar bilan qayd etilgan.

Nima uchun ular shunchalik aniq? Chunki Xitoyda tarix yozish davlat ishi bo'lgan: har bir sulola o'zidan oldingisining rasmiy tarixini tuzardi va bunga qo'shni xalqlar haqidagi bo'limlar ham kirardi.

Shu bois bugungi tarixchi bir voqeani uch tomondan — xitoy yilnomalari, turkiy bitiktoshlar va Vizantiya yozuvlaridan solishtirib o'qiy oladi. Uch manba bir joyda mos kelsa, ma'lumot ishonchli hisoblanadi.$$
 WHERE topic_uz = $$Xitoy manbalaridagi nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Ashina — Turk xoqonligining hukmron urug'i; xoqon faqat shu urug'dan bo'lardi va bu qoida ikki asr davomida saqlangan.

Urug'ning nomi keyingi davlatlarda ham qolgan: G'arbiy turk xoqonligi hukmdorlari ham o'zini ashina naslidan deb bilgan.

Men Ashina Tuvuning to'ng'ich o'g'li bo'lganman. Ukam Istami ham shu urug'dan — shuning uchun unga yabg'u darajasi berilgan: bu unvonga faqat xoqon urug'iga qarindosh kishi ko'tarilardi.$$
 WHERE topic_uz = $$Ashina urug'i$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Bu hunar tariximizda alohida o'rin tutadi va u xoqonlik tuzilishiga bevosita sabab bo'lgan.

Javjavanlar hukmdori Anaguy men undan qiz so'raganimda rad javobini bergan va manbalarga ko'ra meni «temirchi qul» deb atagan. Bu haqorat aloqalarni uzishga va urushga olib kelgan.

Ya'ni bizni kamsitgan narsa aslida kuchimiz edi. Oltoyda temir qazib olish va undan qurol yasash turkiylarga harbiy ustunlik bergan — javjavanlar buni kech tushungan.$$
 WHERE topic_uz = $$Temirchilik hunari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Bu voqea xoqonlik tuzilishidan olti yil avval bo'lgan. Tele qabilalari javjavanlarga qarshi qo'zg'algan edi va men ularni yo'lda to'xtatib, o'z tomonimga o'tkazganman.

Manbalarda bu qabilalarning soni 50 mingga yaqin xonadon deb ko'rsatiladi. Bir zarbada shuncha odamning qo'shilishi kuchimni tubdan o'zgartirgan.

Qizig'i shundaki, men buni javjavanlar foydasiga qilganman va evaziga ulardan hurmat kutganman. Ammo hurmat o'rniga haqorat olganman — voqealar shundan keyin tez rivojlangan.$$
 WHERE topic_uz = $$Tele qabilalari ustidan g'alabam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Ittifoq 551-yilda mustahkamlangan: G'arbiy Vey hukmdori menga Chanle ismli malikani xotinlikka bergan.

Bu javjavanlarga qarshi urushdan bir yil avval bo'lgan va tasodif emas edi. G'arbiy Vey ham javjavanlardan bezor edi; ikkala tomon uchun umumiy raqib bor edi.

Sulolaviy nikoh o'sha davrning oddiy siyosiy vositasi bo'lgan: u ittifoqni shartnomadan ko'ra mustahkamroq bog'lardi. Bir yildan keyin men javjavanlarni yengib, xoqon deb e'lon qilinganman.$$
 WHERE topic_uz = $$Vey davlati bilan ittifoq$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$O'rxun bitiktoshlari VIII asrda — mendan qariyb ikki asr keyin o'yib yozilgan. Ular O'rxun daryosi bo'yida topilgan va qadimgi turkiy alifboda bitilgan.

«Kultegin» va «Bilga xoqon» bitiklari men hamda ukam Istami nomidan boshlanadi: matnda ikkalamiz turk xalqining davlatini qurgan ajdodlar sifatida tilga olinamiz.

Bu juda muhim: bitiktosh — turkiylarning O'ZI yozgan manba. Xitoy yilnomasi bizni chetdan ko'radi, bitiktosh esa turk xalqi o'z tarixini qanday tushunganini ko'rsatadi.$$
 WHERE topic_uz = $$O'rxun bitiklarida nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

UPDATE fact_cards SET detail_uz = $$Mendan keyin taxtga avval o'g'lim Issiq xoqon o'tirgan, ammo u bir yilcha hukmronlik qilgan. Undan keyin taxt ikkinchi o'g'lim Muqan xoqonga o'tgan.

Muqan xoqon 553-yildan 572-yilgacha — qariyb yigirma yil hukmronlik qilgan va aynan uning davrida xoqonlik eng yuksak nuqtasiga chiqqan: javjavanlar butunlay tugatilgan, sharqda va shimolda yangi yerlar qo'shilgan.

Shu vaqt ichida g'arbiy qanotda ukam Istami ishlagan. Ikki qanot birga harakat qilgani uchun davlat bir avlod ichida qit'a miqyosidagi kuchga aylangan.$$
 WHERE topic_uz = $$Vorislarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'bumin-xoqon');

-- ================================= ISTAMI XOQON =================================

UPDATE fact_cards SET detail_uz = $$Bo'linish 552-yilda, davlat tuzilgan paytdanoq belgilangan: akam sharqiy qanotni, men g'arbiy qanotni oldim.

Bu bo'linish nizo emas, boshqaruv usuli edi — masofa juda katta bo'lgani uchun bir markazdan idora qilib bo'lmasdi.

Yigirma yildan ortiq vaqt ichida men eftallar davlatini tugatganman, Amudaryogacha bo'lgan yerlarni qo'shganman va Vizantiya bilan bevosita diplomatik aloqa o'rnatganman.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$«Yabg'u» — xoqondan keyingi ikkinchi daraja; u alohida qanotni mustaqil boshqarish huquqini berardi.

Menga «Yabg'u xoqon» unvoni berilgani esa maqomimning yanada yuqori ekanini bildiradi: men shunchaki qo'mondon emas, o'z qanotimning hukmdori bo'lganman. Elchilarni o'zim qabul qilardim va shartnomalarni o'zim tuzardim.

Bu darajaga faqat ashina urug'iga qon-qarindosh kishilar ko'tarilardi. Men Bumin xoqonning ukasi bo'lganim uchun bu shart bajarilgan.$$
 WHERE topic_uz = $$Unvonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Yettisuv — bugungi Qozog'iston janubi va Qirg'iziston hududidagi o'lka; nomi «yetti suv», ya'ni yetti daryo degani.

Bu yo'nalish g'arbga harakatning birinchi bosqichi bo'lgan. Yettisuv va Sharqiy Turkiston keyinchalik G'arbiy turk xoqonligining o'zagiga aylangan; xoqonlar qarorgohi ham shu o'lkada joylashgan.

Bu yerlar strategik jihatdan muhim edi: Buyuk ipak yo'lining shimoliy tarmog'i aynan shu hududdan o'tardi.$$
 WHERE topic_uz = $$Sharqiy o'lkalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Uch yil ichida bunday masofani bosib o'tish o'sha davr uchun g'ayrioddiy tezlik edi.

Sababi qo'shin tuzilishida: turkiy qo'shin otliqlardan iborat bo'lib, og'ir yuksiz va tez harakat qilardi; har jangchida bir necha ot bo'lar va ular navbatma-navbat minilardi.

Sirdaryo va Orol bo'ylariga chiqish bizni yangi qo'shnilar — eftallar bilan yuzma-yuz qo'ygan. Keyingi o'n yil aynan shu davlat bilan kurashga sarflangan.$$
 WHERE topic_uz = $$Keng o'lkalar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Xusrav I Anushervon 531-yildan 579-yilgacha Eronni boshqargan va u sosoniylar davlatining eng kuchli shohlaridan biri hisoblanadi.

Ittifoq ikkala tomon uchun ham foydali edi: eftallar davlati Eronni janubdan, bizni esa janubi-g'arbdan siqib turardi. Umumiy raqib ikki davlatni birlashtirgan.

Ammo eftallar yengilgach, ittifoq buzilgan: endi biz bir-birimizga chegaradosh edik va ipak savdosi ustidan nizo boshlangan. Kechagi ittifoqchi ertangi raqibga aylangan.$$
 WHERE topic_uz = $$Eron bilan ittifoq$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Yurish rejalashtirilgan edi: biz shimoldan, eronliklar esa janubdan bir vaqtda hujum qilganmiz. Eftallar ikki front o'rtasida qolgan.

Choch (bugungi Toshkent), Samarqand, Kesh va Naxshab — Movarounnahrning eng yirik shaharlari; ularning qo'ldan ketishi eftallar uchun hal qiluvchi zarba bo'lgan.

Manbalarda hal qiluvchi jang sakkiz kun davom etgani qayd etilgan. Bu juda uzoq muddat: o'rta asr janglari odatda bir kun ichida hal bo'lardi.$$
 WHERE topic_uz = $$Eftallarga qarshi yurish$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Eftallar bir asrdan ortiq vaqt davomida Movarounnahr va Afg'oniston hududlarida hukmronlik qilgan kuchli davlat edi; ular Eronni bir necha bor mag'lub etgan.

Urushdan keyin bu davlat butunlay barham topgan va uning yerlari ikki g'olib o'rtasida bo'lingan: shimoli bizga, janubi Eronga o'tgan.

Bizning ulushimiz Amudaryoning o'ng sohilidan Kaspiy dengizigacha cho'zilgan. Shu tariqa Turk xoqonligi Movarounnahrning egasiga aylangan.$$
 WHERE topic_uz = $$Eftallar davlati yakuni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Ipak savdosi shunchaki tijorat emas edi — u davlat daromadining asosiy manbalaridan biri bo'lgan.

Xoqonlik Ipak yo'lining katta qismini nazorat qila boshlagach, savdo bizning qo'limizga o'tgan. Sug'diylar — Samarqand va Buxoro savdogarlari bu ishning ustalari edi va ular bizning ittifoqchimizga aylangan.

Ammo bir to'siq bor edi: Eron o'z hududidan ipak o'tkazishni istamasdi, chunki vositachilikdan foyda ko'rardi. Aynan shu sabab meni Vizantiya bilan bevosita aloqa izlashga majbur qilgan.$$
 WHERE topic_uz = $$Ipak yo'li savdosi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Akam javjavanlar hukmdori Anaguyni yengib, o'zini xoqon deb e'lon qilgan va shu yiliyoq vafot etgan.

Ya'ni u yaratgan davlatni ko'rishga deyarli ulgurmagan. Kengaytirish ishi vorislariga qolgan: sharqda o'g'li Muqan xoqonga, g'arbda esa menga.

Biz ikkalamiz — men va Muqan xoqon — bir avlod ichida davlatni Xitoy chegaralaridan Qora dengizgacha yetkazganmiz. Akam qo'ygan poydevor shunday mustahkam bo'lgan.$$
 WHERE topic_uz = $$Akam Bumin xoqon$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Elchilikni boshqargan Maniax sug'diy savdogar edi — ya'ni men diplomatik topshiriqni harbiyga emas, savdo ishini biladigan odamga berganman.

Maqsad aniq edi: Eronni chetlab o'tib, ipakni Vizantiyaga bevosita sotish. Yo'l Kaspiy va Kavkaz orqali o'tgan va u juda uzoq hamda xavfli bo'lgan.

Elchilarim Konstantinopolda imperator II Yustin huzurida qabul qilingan. Muzokara natija bergan: ikki davlat o'rtasida savdo va harbiy hamkorlik haqida kelishuv tuzilgan.$$
 WHERE topic_uz = $$Vizantiyaga elchilik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Zemarx boshchiligidagi elchilar 569-yilda yo'lga chiqib, Oltoydagi qarorgohimga yetib kelgan.

Zemarx o'z safari haqida batafsil yozib qoldirgan va uning yozuvlari Vizantiya tarixchilari asarlarida saqlangan. Unda qarorgohimning ko'rinishi, oltin bilan bezatilgan taxt va qabul marosimi tasvirlangan.

Bu bizning tariximiz uchun noyob hujjat: uni turk emas, chet ellik guvoh yozgan. Shu bois u bizni tashqaridan qanday ko'rinishimizni ko'rsatadi.$$
 WHERE topic_uz = $$Vizantiya elchisi mehmonimda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Chegara tabiiy belgi bo'yicha o'tkazilgan: Amudaryo katta va kechib o'tish qiyin daryo bo'lgani uchun u ikki davlatni ishonchli ajratardi.

Ammo bu chegara tinch bo'lmagan. Eftallar yo'q bo'lgach, biz bilan Eron o'rtasida umumiy raqib qolmagan va ittifoq tez orada raqobatga aylangan.

Shu bois men Vizantiya bilan aloqa o'rnatganman: Eronga bosim o'tkazish uchun uning g'arbdagi raqibi kerak edi. Bu o'sha davrning katta diplomatik o'yini bo'lgan.$$
 WHERE topic_uz = $$Amudaryo — chegara$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$«Kultegin» bitigi VIII asrda — mendan qariyb ikki asr keyin o'yib yozilgan.

Bitikning boshlanish qismida akam Bumin va men turk xalqining davlatini qurgan ajdodlar sifatida birga tilga olinamiz. Ya'ni ikki asr o'tgach ham nomimiz unutilmagan.

Bu manbaning qimmati alohida: uni turkiylarning o'zi, o'z tilida va o'z alifbosida yozgan. Xitoy yilnomasi bizni chetdan ko'radi, bitiktosh esa turk xalqi o'z tarixini qanday tushunganini ko'rsatadi.$$
 WHERE topic_uz = $$Bitiktoshlarda nomim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$Manbalarga ko'ra men 576-yilda vafot etganman va g'arbiy qanot o'g'lim Tarduga o'tgan.

Tardu otasiga qaraganda mustaqilroq siyosat yuritgan: u sharqiy qanotdan butunlay ajralishga intilgan. Aynan uning davrida xoqonlikning ikkiga bo'linishi amalda yakunlangan.

Shu tariqa g'arbiy qanot alohida davlatga — G'arbiy turk xoqonligiga aylangan. Uning markazi Yettisuv bo'lgan va u Movarounnahr ustidan hukmronlik qilgan.$$
 WHERE topic_uz = $$O'g'lim Tardu$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');

UPDATE fact_cards SET detail_uz = $$VI asr — Turk xoqonligining tug'ilgan va eng tez kengaygan davri: 552-yilda tuzilgan davlat yigirma yil ichida Xitoy chegaralaridan Qora dengizgacha cho'zilgan.

O'sha davrda dunyoning bu qismida to'rtta katta kuch bor edi: Turk xoqonligi, Eron, Vizantiya va Xitoy. Bizning davlatimiz ular orasida eng yosh, ammo eng tez o'sgani bo'lgan.

Aynan shu davrda turkiy xalqlar tarixida birinchi marta «Turk» nomi davlat nomi sifatida ishlatilgan. Bu nom keyingi barcha turkiy davlatlar uchun asos bo'lib qolgan.$$
 WHERE topic_uz = $$Yashagan davrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'istami-xoqon');
