-- «Batafsil» matnlari — Abdulla Qodiriy, Cho'lpon, Fitrat va Behbudiy.
--
-- Qatag'on mavzusi bolalarga mos ohangda beriladi: xolis, tafsilotsiz,
-- xotira va oqlanish haqidagi ma'lumot bilan yakunlanadi.

-- ============================= ABDULLA QODIRIY =============================

UPDATE fact_cards SET detail_uz = $$Toshkentning eski shahar qismida, oddiy bog'bon oilasida dunyoga kelganman. Otam Qodirboboning bog'i bo'lgan va bolaligim shu bog'da o'tgan.

Oilamiz badavlat emasdi, shuning uchun men yoshligimdan ishlaganman: savdo do'konida kotiblik qilganman. Uyimizda kitob ko'p bo'lmasa-da, otam va bobolarimdan eshitgan eski hikoyalar menda tarixga qiziqish uyg'otgan. Keyinchalik aynan o'sha hikoyalar «O'tkan kunlar» romanining ilhom manbaiga aylandi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$Roman 1920-yillarda bo'lib-bo'lib nashr etilgan va o'zbek adabiyotidagi birinchi roman sanaladi.

Voqealar XIX asr o'rtasida — xonliklar davrida kechadi. Asarning markazida Otabek va Kumush qissasi turadi, ammo roman faqat sevgi haqida emas: unda o'sha davr jamiyati, tarqoqlik va uning oqibatlari ko'rsatilgan. Men romanni yozishdan avval tarixiy hujjatlar va kishilar xotirasini o'rganganman. Kitob o'nlab marta qayta nashr etilgan, ko'plab tillarga tarjima qilingan va bugun maktab dasturiga kiritilgan.$$
 WHERE topic_uz = $$«O'tkan kunlar»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$Ikkinchi romanim 1920-yillar oxirida yozilgan. Voqealar Qo'qon xonligida, Xudoyorxon saroyida kechadi.

Bosh qahramon — bilimga chanqoq yigit Anvar; u saroyda mirzalik qiladi, ammo adolatsizlikka ko'nikolmaydi. Roman nomidagi «mehrob» — masjiddagi muqaddas joy, «chayon» esa xavf ramzi: sarlavhaning o'zi eng kutilmagan joyda xavf borligiga ishora qiladi. Asarda saroy hayoti va o'sha davr odamlarining taqdiri ishonarli tasvirlangan.$$
 WHERE topic_uz = $$«Mehrobdan chayon»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$«Julqunboy» — mening hajviy asarlarim uchun tanlagan taxallusim. Bu nom o'ynoqi va yengil ohangga ega.

Taxallus ostida men gazeta va jurnallarda kulgili hikoyalar, felyeton va hajviy maqolalar e'lon qilganman. Ularda poraxo'rlik, dangasalik, ikkiyuzlamachilik va savodsizlik masxara qilingan. Hajv menga jiddiy gapni yengil yo'l bilan aytish imkonini bergan — kulgi ba'zan uzun nasihatdan ko'ra ko'proq ta'sir qiladi.$$
 WHERE topic_uz = $$Julqunboy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$1937–1938-yillarda qatag'on siyosati eng kuchli tus olgan va uning qurbonlari orasida ko'plab yozuvchi, olim hamda o'qituvchilar bo'lgan.

Men 1938-yilda hayotdan ko'z yumdim; shu yili Cho'lpon va Fitrat ham qatag'on qurboni bo'lgan. Asarlarim uzoq yillar taqiq ostida qoldi va nashr etilmadi. 1956-yilda nomim rasman oqlandi, kitoblarim yana chop etila boshladi. Bugun 31-avgust — Qatag'on qurbonlarini yod etish kuni; Toshkentdagi Shahidlar xotirasi majmuasi shu davr qurbonlariga bag'ishlangan.$$
 WHERE topic_uz = $$Qatag'on$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$Ta'limim uch bosqichda o'tgan: avval eski usuldagi maktab, so'ng rus-tuzem maktabi, keyin madrasa.

Rus-tuzem maktablari mustamlaka davrida ochilgan aralash maktablar bo'lib, ularda ham mahalliy, ham rus tilida dars berilgan. Shu tufayli men rus tilini o'rganganman va rus hamda jahon adabiyotini asl nusxada o'qish imkoniga ega bo'lganman. Har xil maktabda o'qish menga turli qarashlarni solishtirish imkonini bergan — bu keyinchalik ijodimga foyda qilgan.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$Ilk asarlarim men yigirma yoshga to'lar-to'lmas e'lon qilingan.

«Baxtsiz kuyov» dramasida eski urf-odatlar va noto'g'ri tartiblar tufayli buzilgan taqdir tasvirlangan. Shu davrda «Juvonboz» hikoyam va bir necha she'rim ham bosilgan. Bu asarlar hali yetuk emasdi, ammo ularda keyingi ijodimning mavzulari — adolat, bilim va oddiy odam taqdiri allaqachon ko'rinadi. Har bir yozuvchi shunday ilk qadamlardan boshlaydi.$$
 WHERE topic_uz = $$Ilk asarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$«Uloqda» hikoyasi ko'pkari — otliqlar o'yini tomoshasiga borgan bola nigohi orqali yozilgan.

Hikoyada tomoshaning shiddati, otlarning chopishi, olomon shovqini va bolaning hayajoni jonli tasvirlangan. Men bolalikdagi taassurotlarni yaxshi eslardim va ularni yozishda foydalanganman. Bu hikoya til jihatidan ham qiziq: unda xalq tilining jonli iboralari ko'p. Ko'pkari bugun ham O'zbekistonda saqlanib qolgan an'anaviy o'yinlardan biri.$$
 WHERE topic_uz = $$«Uloqda» hikoyam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$1924-yilda Moskvaga borib, adabiyot va jurnalistika bo'yicha tayyorlov institutida o'qiganman.

U yerda jahon adabiyoti namunalarini, roman qurilishini va tahrir ishini o'rganganman. Moskvada o'qish menga o'zbek adabiyotini boshqa xalqlar adabiyoti bilan solishtirish imkonini bergan. Aynan shu davrda «O'tkan kunlar» ustidagi ish davom etgan. O'qish uzoq davom etmadi, ammo undan olgan bilim ijodimga sezilarli ta'sir ko'rsatdi.$$
 WHERE topic_uz = $$Moskvada tahsilim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$«Mushtum» — o'zbek tilidagi hajviy jurnal; uning nomi «musht» so'zidan olingan.

Men jurnalning dastlabki yillaridagi eng faol mualliflaridan bo'lganman: unda felyeton, hajviy hikoya va suhbatlar e'lon qilganman. Jurnal savodsizlik, poraxo'rlik va byurokratiyani kulgi orqali tanqid qilardi; unda rasmlar va karikaturalar ham chop etilgan. «Mushtum» uzoq yillar chiqib turgan va o'zbek jurnalistikasi tarixida alohida o'rin egallaydi.$$
 WHERE topic_uz = $$«Mushtum» jurnali$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$Kalvak Mahzum va Toshpo'lat tajang — mening hajviy asarlarimdagi eng mashhur qahramonlar.

Kalvak Mahzum — eskicha qarashlarga qattiq yopishib olgan, o'zini bilimdon deb hisoblaydigan kishi; uning kundaligi shaklidagi hikoyalarda o'sha davr jamiyati kulgili tarzda ko'rsatilgan. Toshpo'lat tajang esa har narsaga e'tiroz bildiradigan, tez jahli chiqadigan odam. Bu obrazlar shu qadar tanish tuyulganki, ularning nomlari xalq tilida umumiy ma'noda ishlatiladigan bo'lib qolgan.$$
 WHERE topic_uz = $$Hajviy qahramonlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$«Obid ketmon» qissasi 1930-yillarda — qishloq xo'jaligida katta o'zgarishlar davrida yozilgan.

Asar qahramoni Obid — mehnatkash dehqon; uning laqabi ketmon bilan bog'liq, chunki u tinmay yer chopadi. Qissada dehqonning mehnati, yer bilan bog'liq turmushi va o'sha davr o'zgarishlari tasvirlangan. Asar til jihatidan sodda va jonli: unda dehqonlar nutqi, maqollar va xalq iboralari ko'p. Bu mening so'nggi yirik asarlarimdan biri bo'ldi.$$
 WHERE topic_uz = $$«Obid ketmon»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$Oqlash — nohaq ayblangan kishining aybsizligini rasman e'tirof etish.

1956-yilda nomim oqlandi va shundan keyin asarlarim yana nashr etila boshladi. «O'tkan kunlar» va «Mehrobdan chayon» qayta chop etilib, katta nusxada tarqaldi, maktab va oliygoh dasturlariga kiritildi. Ular haqida ilmiy ishlar yozildi. Bu voqea shuni ko'rsatadiki, haqiqiy adabiyot vaqt sinovidan o'tadi va xalqqa qaytadi.$$
 WHERE topic_uz = $$Oqlanishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$«O'tkan kunlar» romanim asosida badiiy film suratga olingan va u o'zbek kinosining klassikasiga aylangan.

Filmda Otabek va Kumush qiyofalari, xonliklar davri manzaralari, o'sha davr kiyimlari va odatlari jonlantirilgan. Kino tufayli roman bilan tanish bo'lmagan odamlar ham asar bilan tanishdi. Keyinchalik roman asosida teatr sahnasida spektakllar ham qo'yilgan. Kitobning kinoga va sahnaga ko'chishi uning nechog'lik keng sevilganini ko'rsatadi.$$
 WHERE topic_uz = $$Romanim kinoda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

UPDATE fact_cards SET detail_uz = $$Toshkentdagi eng katta istirohat bog'laridan biri mening nomim bilan ataladi; unda menga haykal o'rnatilgan.

Mustaqillik yillarida ijodim davlat darajasida yuksak baholandi va menga Alisher Navoiy nomidagi Davlat mukofoti berildi. Ko'plab maktab, ko'cha va kutubxonalar mening nomimni yuritadi. Asarlarim qayta-qayta nashr etilib, maktab dasturidan mustahkam o'rin olgan. Bu — yozuvchi uchun eng katta e'tirof: kitobning o'qilishda davom etishi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-qodiriy');

-- ================================ CHO'LPON ================================

UPDATE fact_cards SET detail_uz = $$Andijon Farg'ona vodiysidagi yirik shaharlardan biri. Men shu yerda, savdogar oilasida tug'ilganman.

Asl ismim — Abdulhamid Sulaymon o'g'li. Bolaligim vodiyning bog'lari va ariqlari orasida o'tgan; tabiat manzaralari keyinchalik she'rlarimda ko'p uchraydi. Oilamizda kitobga hurmat bo'lgan, otam o'zi ham she'r yozib turardi — shu muhit menda adabiyotga muhabbat uyg'otgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Avval madrasada — an'anaviy ta'lim maskanida, keyin rus tipidagi maktabda o'qiganman.

Madrasada arab tili, mumtoz adabiyot va diniy fanlarni o'rganganman; rus maktabida esa dunyoviy fanlar, geografiya va rus tili o'qitilgan. Ikki xil ta'lim menga ikki dunyoni ko'rish imkonini bergan: bir tomondan Sharq mumtoz she'riyati, ikkinchi tomondan Yevropa adabiyoti. Keyinchalik men rus tili orqali jahon adabiyoti bilan tanishdim va tarjimalar qildim.$$
 WHERE topic_uz = $$O'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$«Cho'lpon» — tong oldidan osmonda yorqin ko'rinadigan yulduzning nomi (uni Zuhra yulduzi ham deyishadi).

Taxallusni men bejiz tanlamaganman: cho'lpon yulduzi tun tugab, tong otishidan darak beradi. Bu mening she'riyatimning bosh mavzusi — uyg'onish va yangilanish umidi bilan bog'liq. Shuning uchun ilk she'riy to'plamim ham «Uyg'onish» deb nomlangan. Taxallus o'z egasining maqsadini shu qadar aniq ifodalagan hollar kam uchraydi.$$
 WHERE topic_uz = $$Taxallusim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$She'rlarim to'rt asosiy to'plamda jamlangan: «Uyg'onish», «Buloqlar», «Tong sirlari» va «Soz».

To'plam nomlarining o'zi mening ijodim yo'nalishini ko'rsatadi: uyg'onish, tiniq buloq, tong — bularning barchasi yangilanish va umid ramzlari. She'rlarimda vatan, erk, tabiat go'zalligi va inson qadri haqida yozganman. Uslubim o'sha davr uchun yangi edi: men mumtoz aruz bilan bir qatorda erkin vazndan ham foydalanganman va xalq tiliga yaqin, sodda ifodani afzal ko'rganman.$$
 WHERE topic_uz = $$She'riy to'plamlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$«Kecha va kunduz» — mening eng yirik nasriy asarim. U roman shaklida yozilgan.

Asar markazida oddiy qishloq qizi Zebining taqdiri turadi. Uning hikoyasi orqali men mustamlaka davridagi jamiyat, huquqsizlik va odamlarning ojiz holatini ko'rsatganman. Roman nomidagi «kecha va kunduz» qarama-qarshilikni bildiradi: zulmat va yorug'lik, eski va yangi. Asar til jihatidan boy va tasviri jonli; bugun u o'zbek nasrining eng yaxshi namunalaridan biri hisoblanadi va maktabda o'qitiladi.$$
 WHERE topic_uz = $$«Kecha va kunduz»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Hikoyalarimda men oddiy odamlarning kundalik hayoti va ichki kechinmalarini tasvirlashga harakat qilganman.

«Novvoy qiz» hikoyasida non yopib kun kechiradigan qizning mehnati va orzulari, «Oydin kechalarda»da tabiat manzarasi bilan qahramon kayfiyati birga berilgan, «Qor qo'ynida lola» esa og'ir sharoitda ham umid yashashi haqida. Hikoyalarim qisqa, ammo ularda tasvir kuchli: men bir necha jumla bilan manzara chizishga intilganman. Bu uslub she'riyatdan nasrga o'tgan tajribamning natijasi.$$
 WHERE topic_uz = $$Hikoyalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Men she'r va nasrdan tashqari sahna asarlari ham yozganman — o'sha davrda teatr xalqqa yetib borishning eng ta'sirchan yo'llaridan biri edi.

«Yorqinoy», «O'ldiruvchi» va «Cho'pon sevgisi» kabi asarlarim sahnaga qo'yilgan. Ularda eski tartiblar, ayollarning huquqsizligi va yangi hayotga intilish mavzulari ko'tarilgan. Teatr uchun yozish alohida mahorat talab qiladi: matn sahnada aytilishi va tomoshabinga darhol yetib borishi kerak. Men shu tajribani keyinchalik nasr ustidagi ishimda ham qo'llaganman.$$
 WHERE topic_uz = $$Dramalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Men Abdulla Qodiriy va Abdurauf Fitrat bilan bir davrda ijod qilganman; uchalamiz yangi o'zbek adabiyotining asoschilari sanaladi.

Har birimizning yo'limiz boshqacha edi: Qodiriy romanchilikka asos soldi, Fitrat ilmiy va dramatik asarlar yaratdi, men esa she'riyatga yangi ohang olib kirdim. Biz bir-birimizning asarlarimizni o'qir, adabiy majlislarda uchrashardik. Uchalamiz ham 1938-yilda qatag'on qurboni bo'ldik va uzoq yillar nomlarimiz tilga olinmadi. Bugun uchalamizning asarlarimiz ham maktabda birga o'qitiladi.$$
 WHERE topic_uz = $$Zamondoshlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$1937–1938-yillarda ko'plab yozuvchi, olim va o'qituvchilar nohaq ayblanib, qatag'on qurboni bo'lgan. Men ham shular orasida edim.

Asarlarim o'nlab yillar davomida taqiq ostida qoldi: ular kutubxonalardan olib qo'yildi, nomim darsliklarda tilga olinmadi. 1956-yilda nomim oqlandi, asarlarim esa 1980-yillar oxiridan boshlab keng nashr etila boshladi. Bugun 31-avgust — Qatag'on qurbonlarini yod etish kunida shu davrda hayotdan ko'z yumganlar xotirlanadi.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Asarlarim uzoq vaqt nashr etilmagan bo'lsa-da, ular yo'qolmadi: qo'lyozmalar va eski nashrlar odamlar tomonidan saqlab qolindi.

1980-yillar oxiridan boshlab she'r va romanlarim qayta chop etila boshladi, ular haqida ilmiy ishlar yozildi. Bugun asarlarim maktab va oliygoh dasturlarida o'qitiladi, she'rlarimga qo'shiqlar bastalangan. Ijodim mustaqillik yillarida Alisher Navoiy nomidagi Davlat mukofoti bilan taqdirlangan.$$
 WHERE topic_uz = $$Merosim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Ilk she'r va maqolalarim jadidlar chiqargan «Sadoi Turkiston» gazetasida bosilgan — o'shanda men o'n yetti yoshda edim.

Bu gazeta Toshkentda chiqib, xalqni ma'rifatga chaqirardi. Yosh muallif uchun bunday nashrda bosilish katta voqea edi: bu uning ovozi eshitila boshlaganini bildirardi. Shu davrdan boshlab men muntazam yozdim va matbuot bilan aloqani uzmadim. Jadid nashrlari yangi avlod yozuvchilarining maydonga chiqishida katta rol o'ynagan.$$
 WHERE topic_uz = $$Ilk matbuot chiqishlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Tarjima — bir xalq adabiyotini boshqasiga olib o'tish; bu ijoddan kam bo'lmagan mehnat talab qiladi.

Men Shekspirning «Hamlet» fojiasini o'zbek tiliga o'girganman — bu asar o'sha davrda o'zbek sahnasi uchun yangilik edi. Bundan tashqari rus adabiyotidan namunalar tarjima qilganman. Tarjima ustida ishlash menga o'z tilimning imkoniyatlarini kengaytirishga yordam bergan: chet el asaridagi murakkab fikrni o'zbekcha aniq ifodalash uchun yangi ifodalar izlashga to'g'ri kelgan.$$
 WHERE topic_uz = $$Tarjimalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$1920-yillarning o'rtalarida Moskvada yashab, u yerdagi o'zbek drama studiyasida ishlaganman.

Studiyada yosh o'zbek aktyorlari tayyorlanardi; men ular uchun matnlar yozganman va tarjimalar qilganman. Moskvada men rus va jahon teatri bilan yaqindan tanishdim, sahna san'atining yangi usullarini ko'rdim. Bu tajriba keyinchalik o'z dramalarim va tarjimalarimda asqotdi. O'sha yillarda tayyorlangan aktyorlar keyinchalik o'zbek teatrining taniqli namoyandalari bo'lib yetishdi.$$
 WHERE topic_uz = $$Moskvadagi yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Otam Sulaymonqul savdo bilan shug'ullangan, ammo adabiyotga qiziqishi kuchli edi va o'zi ham she'rlar yozib turardi.

Uyimizda mumtoz shoirlarning devonlari bo'lgan; otam ularni ovoz chiqarib o'qib berardi. Aynan shu kechalar menda she'riyatga muhabbat uyg'otgan. Otam mening yozishimga qarshilik qilmagan, aksincha qo'llab-quvvatlagan. Bolalikda oilada ko'rilgan namuna ko'pincha butun umrga yo'l ko'rsatadi.$$
 WHERE topic_uz = $$Otam haqida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$1956-yilda nomim rasman oqlandi — ya'ni ayblovlar asossiz deb topildi.

Ammo asarlarim darhol qaytmadi: ular faqat 1980-yillarning oxiridan boshlab keng nashr etila boshladi. Shu davrda adabiyotshunoslar ijodimni qayta o'rgandi, qo'lyozmalarim to'plandi va nashrga tayyorlandi. Kitoblarim chiqqach, ular tez tarqaldi — o'quvchi uzoq yillar davomida taqiqlangan adabiyotni bilishga qiziqardi.$$
 WHERE topic_uz = $$Oqlanishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Alisher Navoiy nomidagi O'zbekiston Respublikasi Davlat mukofoti — mamlakatdagi adabiyot va san'at sohasidagi eng nufuzli mukofotlardan biri.

Mustaqillikning ilk yillarida ijodim shu mukofot bilan taqdirlandi. Bu mukofot faqat menga emas, butun bir avlodga — qatag'on qurboni bo'lgan va uzoq yillar nomi tilga olinmagan adiblarga berilgan e'tirof edi. Shu bilan adabiyot tarixidagi bo'shliq to'ldirildi.$$
 WHERE topic_uz = $$Davlat mukofoti$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Toshkentdagi bolalar va o'smirlar adabiyotini nashr etadigan nashriyot mening nomimni yuritadi.

Bu nashriyot ertaklar, she'riy to'plamlar, o'quv qo'llanmalari va jahon bolalar adabiyoti tarjimalarini chop etadi. Nomning tanlanishi ramziy: «Cho'lpon» — tong yulduzi, bolalik esa insonning tongi. Bundan tashqari Andijonda va boshqa shaharlarda ko'chalar, maktablar hamda kutubxonalar mening nomim bilan ataladi.$$
 WHERE topic_uz = $$Nomimdagi nashriyot$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- =============================== FITRAT ===============================

UPDATE fact_cards SET detail_uz = $$Buxoro o'sha davrda amirlik poytaxti bo'lib, shaharda yuzlab madrasa ishlagan, ammo ta'lim eski usulda olib borilardi.

Men ziyoli oilada tug'ilganman va dastlabki bilimni Buxoroda olganman. Yoshligimdan shahardagi tartiblar, savodsizlik va qoloqlik meni o'ylantirgan. Keyinchalik Istanbulga o'qishga borganimda, boshqa mamlakatlar tajribasini ko'rib, bu fikrlarim yanada mustahkamlandi va men islohot g'oyalarini yozishga kirishdim.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$1909–1913-yillarda Istanbul dorilfununida (universitetida) o'qiganman. O'sha yillarda Istanbul yangi g'oyalar markazlaridan biri edi.

«Fitrat» taxallusi arabcha «fitrat» so'zidan olingan bo'lib, «tabiat», «yaratilish» ma'nolarini bildiradi. Istanbulda men Buxorodan borgan boshqa yoshlar bilan birga jamiyat tuzganmiz va ona yurtimizda ta'limni isloh qilish yo'llarini muhokama qilganmiz. Shu yillarda ilk asarlarim yozilgan va chop etilgan.$$
 WHERE topic_uz = $$Taxallusim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$«Sayha» — «Chorlov», ya'ni «hayqiriq» degani. Bu mening ilk she'riy to'plamim bo'lib, fors tilida yozilgan.

To'plamdagi she'rlarda vatan taqdiri, xalqning ahvoli va uyg'onish zarurati haqida yozilgan. Ohang keskin: men she'rni bezak uchun emas, fikrni yetkazish uchun vosita deb bilganman. Bu asar Istanbulda nashr etilgan va Buxorodagi yosh ziyolilar orasida qo'ldan qo'lga o'tib o'qilgan.$$
 WHERE topic_uz = $$«Sayha»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$«Munozara» asari suhbat — bahs shaklida yozilgan: unda buxorolik mudarris bilan yevropalik sayyoh o'zaro savol-javob qiladi.

Bahs davomida ta'lim, fan, savdo va shahar hayoti masalalari ko'tariladi. Bunday shakl tanlanishi bejiz emas: bahsda fikr o'z-o'zidan tug'iladi va o'quvchi xulosani o'zi chiqaradi. Asar fors tilida yozilib, keyin o'zbek tiliga tarjima qilingan va Turkistonda keng tarqalgan. U jadidchilik harakatining dasturiy asarlaridan biri sanaladi.$$
 WHERE topic_uz = $$«Munozara»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$Dramalarimda men asosan tarixiy mavzularga murojaat qilganman — chunki o'tmish orqali bugungi kun haqida gapirish mumkin edi.

«Temur sag'anasi»da buyuk o'tmish va uni eslash mavzusi, «Abulfayzxon»da hokimiyat uchun kurash va uning oqibatlari, «O'g'izxon»da esa qadimgi turkiy tarix ko'tarilgan. Asarlarim teatr sahnasida qo'yilgan. Drama menga fikrni jonli suhbat va harakat orqali yetkazish imkonini bergan — bu savodsizlik keng tarqalgan davrda ayniqsa muhim edi.$$
 WHERE topic_uz = $$Dramalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$Men faqat yozuvchi emas, olim ham bo'lganman: adabiyotshunoslik va tilshunoslik bo'yicha ilmiy ishlar yozganman.

«Adabiyot qoidalari» asarida she'r va nasr nazariyasi tushuntirilgan, «Eski o'zbek adabiyoti namunalari»da esa qadimgi yozma yodgorliklar to'plangan. Men eski qo'lyozmalarni izlab topib, ularni o'rganganman va shu bilan o'zbek adabiyoti tarixini tizimga solishga harakat qilganman. Bu ishlar o'zbek adabiyotshunosligining ilk poydevorini qo'ygan.$$
 WHERE topic_uz = $$Til ilmim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$Professor — oliy o'quv yurtidagi eng yuqori ilmiy-pedagogik unvon. Men o'zbek olimlari orasida birinchilardan bo'lib bu unvonga sazovor bo'lganman.

Toshkent va Samarqanddagi oliygohlarda dars berganman, talabalarga adabiyot tarixi va nazariyasidan saboq o'tganman. Shogirdlarim keyinchalik o'zbek adabiyotshunosligini rivojlantirgan. Unvonning o'zi muhim emas — muhimi shundaki, o'sha davrda milliy kadrlar tayyorlash yo'lga qo'yilgan va men shu ishning ishtirokchisi bo'lganman.$$
 WHERE topic_uz = $$Professor unvoni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$1921-yilda Sharq musiqa maktabini tashkil etganman. Maqsad — xalq musiqasini yo'qolib ketishdan saqlash edi.

O'sha davrda maqom kuylari faqat ustozdan shogirdga og'zaki o'tardi; agar zanjir uzilsa, kuy butunlay yo'qolishi mumkin edi. Maktabda men bilimdon sozandalarni to'plab, Shashmaqom kuylarini notaga yozdirishni tashkil qildim. Shu tariqa kuylar qog'ozda saqlanib qoldi. Bugun Shashmaqom YUNESKOning nomoddiy madaniy meros ro'yxatiga kiritilgan.$$
 WHERE topic_uz = $$Musiqa maktabim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$«O'zbek klassik musiqasi va uning tarixi» risolasi milliy musiqamiz haqidagi ilk ilmiy ishlardan biri.

Unda men maqom tizimining tuzilishi, kuylarning kelib chiqishi va musiqa asboblarimiz haqida yozganman. Ishda tarixiy manbalarga — Forobiy va boshqa olimlarning musiqa haqidagi asarlariga tayanganman. Risola musiqashunoslik uchun asos bo'lgan: undan keyin bu sohada tadqiqotlar davom etgan. Musiqa haqida ilmiy yozish uni saqlashning bir yo'lidir.$$
 WHERE topic_uz = $$Musiqa kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$1938-yil 4-oktabrda men Abdulla Qodiriy va Cho'lpon bilan birga hayotdan ko'z yumdim.

Uchalamiz yangi o'zbek adabiyotining asoschilari edik va bir kunda qatag'on qurboni bo'ldik. Asarlarimiz o'nlab yillar taqiq ostida qoldi, nomlarimiz darsliklarda tilga olinmadi. Keyinchalik nomlarimiz oqlandi va meros qaytarildi. Bugun 31-avgustda — Qatag'on qurbonlarini yod etish kunida shu davrda halok bo'lganlar xotirlanadi.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$«Bayonoti sayyohi hindi» — «Hind sayyohining bayonoti» degani. Asar fors tilida yozilgan.

Unda Buxoroga kelgan xayoliy hind sayyohi ko'rganlarini bayon qiladi: maktablar, savdo, boshqaruv, shahar tartibi. Chetdan qarash usuli bejiz tanlanmagan — o'z kamchiligini tashqi ko'z bilan ko'rish osonroq. Asar Buxorodagi ahvolni tanqid qilgani uchun katta shov-shuvga sabab bo'lgan va jadidlar orasida keng o'qilgan.$$
 WHERE topic_uz = $$«Hind sayyohi»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$«Chig'atoy gurungi» — Toshkentda tuzilgan ilmiy-adabiy jamiyat; «gurung» so'zi suhbat, davra degani.

Jamiyat a'zolari eski yozma yodgorliklarni to'plash, o'zbek tilining imlosi va atamalarini tartibga solish, adabiy meros ustida ishlash bilan shug'ullangan. Bu davrada yosh yozuvchilar va olimlar tarbiyalangan. Jamiyat uzoq faoliyat yuritmagan bo'lsa-da, uning ishi o'zbek tilshunosligi va adabiyotshunosligining shakllanishiga sezilarli ta'sir ko'rsatgan.$$
 WHERE topic_uz = $$Chig'atoy gurungi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$Buxoro Xalq Sovet Respublikasi 1920-yillarda amirlik o'rniga tuzilgan davlat edi; men u yerda maorif noziri (vaziri) bo'lib ishlaganman.

Bu lavozimda men maktablar ochilishiga, darsliklar tayyorlanishiga va o'qituvchilar tayyorlashga rahbarlik qildim. Eng muhim ishlarimdan biri — iqtidorli yoshlarni chet elga, jumladan Germaniyaga o'qishga yuborish bo'ldi. Maqsad aniq edi: o'z mutaxassislarimizni tayyorlash. Bu yoshlarning ko'pchiligi keyinchalik turli sohalarda ishlagan.$$
 WHERE topic_uz = $$Maorif nozirligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$«Adabiyot qoidalari» — adabiyot nazariyasiga bag'ishlangan darslik.

Unda she'r tuzilishi, vazn va qofiya, badiiy tasvir vositalari, nasr turlari izchil tushuntirilgan; har qoida uchun o'zbek adabiyotidan misollar keltirilgan. Bu ish muhim edi, chunki o'sha davrgacha o'zbek tilida bunday tizimli darslik yo'q edi va adabiyot nazariyasi asosan arab hamda fors manbalari orqali o'rganilardi. Kitob oliygoh va maktablarda uzoq yillar qo'llanma bo'lgan.$$
 WHERE topic_uz = $$«Adabiyot qoidalari»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$Men eski qo'lyozmalarni izlab topish va ularni nashrga tayyorlash bilan shug'ullanganman.

«O'zbek adabiyoti namunalari» majmuasida qadimgi davrlardan boshlab yozilgan asarlardan parchalar to'plangan va ular haqida izohlar berilgan. Bu ish tarixiy ahamiyatga ega: qo'lyozmalar yo'qolib ketishi mumkin edi, nashr esa ularni saqlab qoladi. Shu tariqa o'zbek adabiyoti tarixi bir butun ko'rinishga keltirilgan — undan avval bu meros tarqoq holda edi.$$
 WHERE topic_uz = $$Adabiyot tarixim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$Ilk asarlarimni fors tilida yozganman — bu til Buxoroda ilm va adabiyot tili edi. Keyinroq o'zbek tilida yozishga o'tdim.

Arab va turk tillarini ham bilardim: arab tili ilmiy manbalar uchun, turk tili esa Istanbuldagi tahsilim tufayli kerak bo'lgan. Ko'p til bilish menga turli manbalarni asl nusxada o'qish imkonini bergan. Shu bilan birga men ona tilida yozishni asosiy vazifa deb bilganman: xalqqa yetib borish uchun uning tilida gapirish kerak.$$
 WHERE topic_uz = $$Ikki tilda ijodim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

UPDATE fact_cards SET detail_uz = $$Vafotimdan yillar o'tib nomim oqlandi va asarlarim o'quvchiga qaytarildi.

Mustaqillik yillarida ijodim qayta o'rganildi: asarlarim to'plam holida nashr etildi, ular haqida ilmiy ishlar yozildi, hayotim maktab darsliklariga kiritildi. Buxoro va Toshkentda ko'chalar hamda ta'lim muassasalari mening nomimni yuritadi. Jadidlar merosi bugun millat uyg'onishi tarixining muhim qismi sifatida o'rganiladi.$$
 WHERE topic_uz = $$Oqlanishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat');

-- =========================== MAHMUDXO'JA BEHBUDIY ===========================

UPDATE fact_cards SET detail_uz = $$Samarqand qadimiy shahar bo'lib, o'sha davrda Turkistonning yirik markazlaridan biri edi. Men shu yerda, din olimlari oilasida tug'ilganman.

Oilamizda ilmga hurmat kuchli bo'lgan. Men dastlabki ta'limni uyda va madrasada olganman, arab tilini chuqur o'rganganman. Yoshligimda shahar hayotini, maktablardagi tartibni va odamlarning ahvolini kuzatganman — keyinchalik butun faoliyatim shu kuzatuvlardan tug'ilgan xulosalarga asoslandi.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Arab tilini bilganim menga diniy va ilmiy manbalarni asl nusxada o'qish imkonini bergan.

1902-yilda haj safariga borganman. Safar davomida Misr, Turkiya va boshqa mamlakatlarda bo'lib, u yerdagi maktablar, matbuot va kutubxonalarni ko'rganman. Bu safar mening qarashlarimni o'zgartirdi: boshqa musulmon mamlakatlarida ta'lim yangi usulda olib borilayotganini, gazeta va jurnallar chiqayotganini ko'rdim. Qaytgach, qozi va mufti lavozimlarida ishlaganman — bu menga xalq muammolarini yaqindan bilish imkonini bergan.$$
 WHERE topic_uz = $$Ilm yo'lim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Qozon, Ufa va Orenburg o'sha davrda tatar ziyolilarining markazlari edi: u yerda yangi usul maktablari ishlar, gazeta va kitoblar chop etilardi.

Men bu shaharlarga borib, maktablar bilan tanishganman, ziyolilar bilan uchrashganman va nashriyot ishini o'rganganman. Ismoil Gaspirali chiqargan «Tarjimon» gazetasi g'oyalari menga kuchli ta'sir ko'rsatgan. Ko'rgan-bilganlarimni Turkistonga olib kelib, shu asosda maktab, gazeta va nashriyot ishini yo'lga qo'yganman. Safar — o'rganishning eng tez yo'li ekaniga men ishonganman.$$
 WHERE topic_uz = $$Safarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Men 1901-yildan boshlab muntazam maqola yozganman; ular «Taraqqiy», «Shuhrat», «Turon» va boshqa nashrlarda bosilgan.

Maqolalarimda ta'lim, huquq, savdo, sog'liq va shahar hayoti masalalari ko'tarilgan. Men murakkab gaplardan qochib, sodda va aniq yozishga harakat qilganman — maqsad ziyolilarni emas, oddiy o'quvchini ishontirish edi. Matbuot o'sha davr uchun eng ta'sirchan vosita bo'lgan: gazeta bir kunda minglab odamga yetib borardi.$$
 WHERE topic_uz = $$Maqolalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$1913-yilda ona shahrimda «Samarqand» gazetasini va «Oyina» jurnalini ta'sis etganman.

«Oyina» jurnali o'zbek va fors tillarida chiqib, unda ta'lim, tarix, geografiya, huquq va dunyo yangiliklari yoritilgan; jurnal Turkistondan tashqarida ham tarqalgan. «Samarqand» gazetasi esa shahar va viloyat hayotini yoritgan. Nashrlarni chiqarish oson bo'lmagan: mablag' yetishmasdi, ma'muriyat esa nazorat o'rnatgandi. Shunga qaramay bu nashrlar milliy matbuotimizning poydevorini qo'ygan.$$
 WHERE topic_uz = $$Gazeta va jurnalim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Yangi usul maktablari uchun darslik kerak edi — eski kitoblar bu maktablarning dasturiga to'g'ri kelmasdi. Shuning uchun men o'zim darslik yozganman.

«Qisqacha umumiy jug'rofiya» kitobida dunyo mamlakatlari, qit'alar va tabiat haqida ma'lumot berilgan; bu o'zbek tilidagi ilk geografiya darsliklaridan biri. «Bolalar uchun kitob» boshlang'ich sinf o'quvchilariga mo'ljallangan. Darsliklarim sodda tilda, rasm va misollar bilan yozilgan — bolaga tushunarli bo'lishi men uchun asosiy mezon edi.$$
 WHERE topic_uz = $$Darsliklarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$«Padarkush» — «ota qotili» degani. Bu asar yangi o'zbek adabiyotidagi ilk drama sanaladi.

Syujet oddiy va ta'sirchan: ilm olmagan, tarbiyasiz o'sgan o'g'il oxir-oqibat o'z oilasi boshiga kulfat keltiradi. Asarning ostki ma'nosi aniq: bolani o'qitmaslik butun oila va millat uchun xavf. Men uni ataylab sodda tilda yozganman, chunki maqsad adabiy mahorat ko'rsatish emas, fikrni yetkazish edi. Asar 1913-yilda kitob holida chop etilgan.$$
 WHERE topic_uz = $$«Padarkush» dramasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Spektakl 1914-yil 25-yanvarda Samarqandda sahnaga qo'yilgan — bu o'zbek teatri tarixidagi muhim sanalardan biri.

Keyin asar Buxoro, Toshkent, Qo'qon va boshqa shaharlarda ham ko'rsatilgan. Tomoshalar katta qiziqish uyg'otgan: teatr o'sha davr uchun yangilik edi va savodsiz odam ham sahnadagi voqeani tushunardi. Spektakldan tushgan mablag' ko'pincha maktablar va kambag'al o'quvchilar uchun sarflangan. Shu tariqa teatr ma'rifat vositasiga aylangan.$$
 WHERE topic_uz = $$«Padarkush» sahnada$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Yangi usul maktablarida bolalar tovushlarni birlashtirib o'qishni o'rganardi va bir necha oyda savod chiqarardi — eski usulda bunga yillar ketardi.

Men bunday maktablar ochilishini qo'llab-quvvatlaganman, ular uchun o'quv dasturi tuzganman va darslik yozganman. Dasturga o'qish-yozish, hisob, geografiya, tarix va tabiat fanlari kiritilgan. Maktablarga qarshilik ham bo'lgan, ammo natija ko'ringach, ularning soni ortib borgan. Ta'limni o'zgartirish — jadidchilikning eng asosiy ishi edi.$$
 WHERE topic_uz = $$Yangi maktab$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$1919-yilda men Qarshi shahrida hayotdan ko'z yumdim; o'shanda qirq to'rt yoshda edim.

Umrimning oxirgi yillari beqaror davrga to'g'ri keldi: Turkiston muxtoriyati tugatilgan, o'lkada tartibsizlik hukm surardi. Shunga qaramay men ish va safarlarni to'xtatmadim. Mustaqillik yillarida xotiram tiklandi: Qarshida yodgorlik o'rnatildi, asarlarim qayta nashr etildi. Bugun men jadidchilik harakatining yo'lboshchisi sifatida eslanaman.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Jadidlar — «jadid» (yangi) so'zidan; ular millatni ma'rifat orqali uyg'otishni maqsad qilgan ziyolilar edi.

Men bu harakatning Turkistondagi yetakchilaridan biri bo'lganman: maktablar ochilishiga bosh-qosh bo'lganman, gazeta va jurnal chiqarganman, darslik va drama yozganman, yoshlarni chet elga o'qishga yuborishni tashkil qilganman. Atrofimda Toshkentdan Munavvarqori va Avloniy, Buxorodan Fitrat kabi safdoshlar bor edi. Bizning yo'limiz kurash emas, ta'lim edi.$$
 WHERE topic_uz = $$Jadidlar yo'lboshchisi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Samarqandda kutubxona ochganman va o'z nashriyotimda kitoblar chop ettirganman.

Kutubxonada gazeta, jurnal va kitoblar bo'lgan; unga kirish hamma uchun ochiq edi — bu o'sha davrda muhim ish edi, chunki kitob qimmat va kam edi. Nashriyotimda darsliklar, «Padarkush» dramasi va boshqa kitoblar bosilgan. Bundan tashqari men kambag'al oilalar bolalarini o'qitish uchun mablag' yig'ish bilan shug'ullanganman. Ma'rifat faqat so'z bilan emas, amaliy ish bilan tarqaladi deb bilardim.$$
 WHERE topic_uz = $$Kutubxonam va nashriyotim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$«Haq olinur, berilmas!» — bu so'zlarim maqolalarimda va nutqlarimda takrorlangan.

Ma'nosi shuki, huquq va erkni hech kim sovg'a qilmaydi: ularga munosib bo'lish va harakat qilish kerak. Men buni birinchi navbatda ta'lim bilan bog'lardim — bilimsiz xalq o'z haqini talab qila olmaydi. Bu ibora jadidchilik harakatining shiorlaridan biriga aylangan va bugun ham ko'p tilga olinadi.$$
 WHERE topic_uz = $$Mashhur shiorim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$«Ikki emas, to'rt til lozim» maqolasida men yoshlarni bir necha tilni o'rganishga chaqirganman.

Fikrimcha, turkiy til — ona tili, fors tili — mumtoz adabiyot tili, arab tili — ilm va diniy manbalar tili, rus tili esa zamonaviy fan va dunyo bilan aloqa tili edi. Har biri o'z eshigini ochadi. Bu qarash o'sha davr uchun keng va jasoratli edi: ba'zilar chet tilini o'rganishni keraksiz deb hisoblardi. Bugun ham til bilish insonning imkoniyatini kengaytirishi o'zgarmagan haqiqat.$$
 WHERE topic_uz = $$To'rt til lozim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$1917-yil noyabrda Qo'qonda Turkiston muxtoriyati e'lon qilingan — bu xalqimizning o'z davlatchiligini tiklash yo'lidagi ilk urinishi edi.

Men uning tuzilishida faol qatnashganman: qurultoyda ishtirok etib, hujjatlar tayyorlashda va tashkiliy ishlarda yordam berganman. Muxtoriyat barcha millatlar huquqini teng deb belgilagan, maktab va matbuot ishlarini yo'lga qo'yishni rejalashtirgan edi. Ammo u atigi bir necha oy yashadi. Shunga qaramay bu tajriba tarixda qoldi va mustaqillik yillarida qayta o'rganildi.$$
 WHERE topic_uz = $$Turkiston muxtoriyati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$O'tgan asrda Qarshi shahri bir necha yil davomida mening nomim bilan «Behbudiy» deb atalgan.

Keyinchalik shaharga eski nomi qaytarilgan. Ammo xotira saqlanib qoldi: Qarshi shahrida menga yodgorlik o'rnatilgan, ko'chalar va ta'lim muassasalari nomimni yuritadi. Shaharga nom berish — jamiyat kimni qadrlashini ko'rsatadigan belgi; nom o'zgarsa ham, odamlar xotirasidagi iz qoladi.$$
 WHERE topic_uz = $$Shahar nomimda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');

UPDATE fact_cards SET detail_uz = $$Bugun yurtimizdagi ko'plab ko'cha, maktab va kutubxonalar mening nomim bilan ataladi.

Samarqandda uy-muzeyim ishlaydi, Qarshida yodgorlik majmuasi bor. Asarlarim — «Padarkush», maqolalarim va darsliklarim qayta nashr etilgan, ular haqida ilmiy ishlar yozilgan. Jadidlar merosi mustaqillik yillarida davlat darajasida o'rganilmoqda va yosh avlodga ma'rifat yo'lidagi jasorat namunasi sifatida ko'rsatilmoqda.$$
 WHERE topic_uz = $$Xotiram bugun$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');
