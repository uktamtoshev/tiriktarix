-- «Batafsil» matnlarini KENGAYTIRISH — 5-to'plam: Nodira va Uvaysiy.
-- Bu to'plam V70 dagi Anbar Otin bilan bir zanjirni yopadi: Uvaysiy → Nodira →
-- Dilshod otin → Anbar Otin. Matnlarda shu bog'lanish ochiq ko'rsatilgan.
--
-- MANBA. `source` o'zgarmaydi. Solishtirilgan manba: uz.wikipedia.org «Nodira»
-- (otasi Rahmonqulbiy — Olimxonning akasi; o'g'li taxtga chiqqanda 14 yoshda;
-- taxalluslar bo'yicha she'rlar soni: Maknuna 333 g'azal, Nodira 180 she'r,
-- Komila 19 g'azal; jami o'n mingga yaqin misra).

-- ==================================== NODIRA ====================================

UPDATE fact_cards SET detail_uz = $$Otam Rahmonqulbiy Andijon hokimi bo'lgan va u Farg'ona hukmdori Olimxonning akasi edi — ya'ni men hukmron xonadonga mansub qiz edim.

Shu bois menga yaxshi ta'lim berilgan: savod, arab va fors tillari, mumtoz she'riyat. O'sha davrda qizlarning bunday ta'lim olishi faqat badavlat oilalarda mumkin edi.

She'r yozishni yoshligimdan boshlaganman. Keyinchalik uchta taxallus — «Nodira», «Komila» va «Maknuna» bilan yozganman; bir shoirning uchta taxallusi bo'lishi kam uchraydigan hol.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Umarxonni Marg'ilon hokimi etib mening amakim — Farg'ona hukmdori Olimxon tayinlagan edi.

1810-yilda Olimxon vafot etgach, Umarxon Qo'qon taxtiga o'tirgan va men xon xotini bo'lganman. U ham shoir edi: «Amiriy» taxallusi bilan yozgan va saroyiga o'nlab shoirni to'plagan.

Turmushimiz shu bilan alohida: ikkalamiz ham she'r yozardik. Aynan shu narsa Qo'qon saroyining yirik adabiy markazga aylanishiga sabab bo'lgan.$$
 WHERE topic_uz = $$Turmushim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$O'g'lim Muhammad Alixon taxtga chiqqanida atigi o'n to'rt yoshda edi — shuning uchun davlat ishlarining og'irligi menga tushgan.

Men qurilish, savdo va ta'limga e'tibor berganman: madrasalar, masjidlar, karvonsaroylar va bozor rastalari qurdirganman, saroyga shoirlar hamda olimlarni to'plaganman.

Ayol kishining davlatni idora qilishi o'sha davr uchun odatiy hol emas edi. Men bu ishni yigirma yil davomida — 1842-yilgacha bajarganman.$$
 WHERE topic_uz = $$Davlatni boshqarishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Uvaysiy (1779–1845) mendan o'n uch yosh katta edi va u Marg'ilondan — oddiy hunarmand oilasidan chiqqan shoira.

Men uni saroyga taklif qilganman va u menga hamda saroydagi boshqa xotin-qizlarga she'riyatdan dars bergan. Uvaysiy 269 g'azal, 29 muxammas, 55 musaddas va uchta doston yozgan.

Ustoz ham, shogird ham shoira bo'lgan bunday zanjir adabiyotimizda kam uchraydi. U bizdan keyin ham davom etgan: Dilshod otin, undan keyin esa Anbar Otin.$$
 WHERE topic_uz = $$Ustozim Uvaysiy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Qurdirgan madrasalarim orasida Madrasai Chalpak va o'z ismim bilan atalgan Mohlaroyim madrasasi bor.

Madrasa qurish faqat bino tiklash emas: unga vaqf mulki ajratiladi, ya'ni doimiy daromad manbai belgilanadi. Shundagina madrasa hukmdor almashsa ham ishlashda davom etadi va talabalar bilan mudarrislar ta'minlanadi.

Shu bilan birga men bozor rastalari, masjidlar va karvonsaroylar qurdirganman. Karvonsaroy — savdo yo'lidagi to'xtash joyi; u savdoni jonlantiradi va shahar daromadini oshiradi.$$
 WHERE topic_uz = $$Bunyodkorligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Har bir taxallus ostida yozganlarim soni ham har xil: «Maknuna» bilan 333 g'azal, «Nodira» bilan 180 she'r, «Komila» bilan 19 g'azal.

Mumtoz she'riyatda taxallus g'azalning oxirgi baytida keltirilardi — shoir shu tariqa she'r ostiga imzo qo'yardi. Bir shoirning bir necha taxallusi bo'lishi kam uchraydigan hol.

So'zlarning ma'nosi ham bejiz emas: «Nodira» — kamyob, noyob; «Komila» — yetuk; «Maknuna» — yashiringan degani.$$
 WHERE topic_uz = $$Taxalluslarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Umumiy hisobda she'rlarim o'n mingga yaqin misrani tashkil qiladi — bu barcha taxalluslar ostida yozilganlarni qo'shganda.

«Nodira» taxallusi bilan yozilganlari devon holida jamlangan: 136 tasi o'zbek, 44 tasi fors-tojik tilida. «Maknuna» taxallusi ostida esa 333 g'azal bor.

Devon tuzish shoir uchun jiddiy bosqich: tarqoq she'rlar yo'qoladi, devonga kirgani esa ko'chiriladi va saqlanadi. Mening she'rlarim ana shu tartib tufayli bizgacha yetib kelgan.$$
 WHERE topic_uz = $$Devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Saroyimdagi shoiralar davrasida Uvaysiy va Mahzuna kabi ijodkorlar bo'lgan.

Homiylik amalda nimani anglatardi? Shoiraga saroyda joy, ta'minot va vaqt beriladi; uning she'rlari xattotlarga ko'chirtiriladi; she'riy majlislar tashkil qilinadi va u yerda shoiralar bir-biriga javob g'azallari yozadi.

Bunday sharoit bo'lmasa, ayol ijodkorning she'ri uy ichida qolib ketardi. Qo'qon shoiralari maktabi aynan shu qo'llab-quvvatlash tufayli shakllangan.$$
 WHERE topic_uz = $$Shoiralarga homiylik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Buxoro amiri Nasrullo Qo'qonni egallaganida men o'g'lim va yaqinlarim bilan birga qatl etilganman.

Bu hujum Qo'qon xonligi tarixidagi eng og'ir voqealardan biri bo'lgan: shahar talangan, saroy davrasi tarqalgan. Ustozim Uvaysiy ham o'sha yili Qo'qonni tark etib, tug'ilgan shahri Marg'ilonga qaytgan.

Ammo she'rlarim saqlanib qolgan — qo'lyozmalar ko'chirilgani va tarqalgani uchun ularni bir zarbada yo'q qilib bo'lmagan. Bugun g'azallarim darsliklarda o'qitiladi.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Muhammad Alixon — uni «Ma'dalixon» deb ham atashadi — taxtga o'tirganida o'n to'rt yoshda edi.

U yigirma yil hukmronlik qilgan va bu davrda Qo'qon xonligi o'z chegaralarini kengaytirgan. Yosh hukmdor yonida tajribali odam bo'lishi shart edi; bu vazifani men bajarganman.

1842-yilda Buxoro amiri Nasrullo Qo'qonni egallaganda o'g'lim ham, men ham halok bo'lganmiz. Sulolaviy davlatlarda hokimiyat almashinuvi ko'pincha shunday qonli kechgan.$$
 WHERE topic_uz = $$O'g'lim taxtda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Umarxon 1810-yildan 1822-yilgacha Qo'qon xoni bo'lgan va shu bilan birga «Amiriy» taxallusi ostida she'r yozgan; she'rlari devon holida jamlangan.

Uning saroyiga o'nlab shoir to'plangan va Qo'qon aynan shu davrda yirik adabiy markazga aylangan. Saroyda she'riy majlislar o'tkazilar, shoirlar bir-biriga javob g'azallari yozardi.

Hukmdorning shoir bo'lishi tariximizda kam emas: Husayn Boyqaro «Husayniy», Xiva xoni Muhammad Rahimxon «Feruz» taxallusi bilan yozgan. Ammo er-xotinning ikkalasi ham shoir bo'lishi — bu kam uchraydigan hol.$$
 WHERE topic_uz = $$Shoir turmush o'rtog'im$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Nisbat aniq ma'lum: «Nodira» taxallusi ostidagi 180 she'rimning 136 tasi o'zbek, 44 tasi fors-tojik tilida yozilgan.

Qo'qonda va butun Farg'ona vodiysida bu ikki til yonma-yon yashardi. Shoir uchun ikki tilda yozish imkoniyatni kengaytiradi: har tilning o'z ohangi va so'z boyligi bor.

Bu adabiyotimizda uzoq an'ana — Navoiy ham turkiy va forsiy tillarda yozgan. Mendan keyingi Qo'qon shoiralari, jumladan Anbar Otin ham shu yo'ldan borgan.$$
 WHERE topic_uz = $$Ijod tillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$G'azallarim ikki davrga bo'linadi: Umarxon tirikligida yozilganlar va u 1822-yilda vafot etganidan keyin yozilganlar.

Birinchi davrda sevgi, sadoqat va vafo mavzulari ustun. Ikkinchisida esa ayriliq, yolg'izlik va hayotning o'tkinchiligi haqidagi o'ylar kuchayadi — bu she'rlar eng ta'sirchan asarlarim sanaladi.

Mumtoz g'azalda tuyg'u shartli obrazlar orqali beriladi. Ammo ayriliq haqidagi baytlarim ortida haqiqiy yo'qotish turgani sezilib turadi.$$
 WHERE topic_uz = $$She'rlarim mavzulari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Qo'qon adabiy muhiti Umarxon davrida — 1810-yillarda shakllangan.

Saroyda shoirlar bir-biriga javob g'azallari yozardi, she'riy majlislar o'tkazilardi, tazkiralar tuzilardi. Shoiralar davrasi esa alohida bo'lgan: Uvaysiy, Mahzuna va boshqalar.

Bu an'ana bizdan keyin ham davom etgan. XIX asr oxirida Qo'qonda Muqimiy, Furqat va Zavqiy ijod qilgan; shoiralar zanjiri esa Dilshod otin va Anbar Otinga ulangan.$$
 WHERE topic_uz = $$Qo'qon adabiy muhiti$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$Bosmaxona yo'q davrda kitob faqat qo'lda ko'chirilardi — ya'ni har bir nusxa alohida odamning oylab qilgan mehnati edi.

Men xattotlarga qo'lyozmalarni ko'chirtirib, ularni muzahhiblarga bezattirganman: sahifa hoshiyalari naqsh bilan, sarlavhalar zar suvi bilan ishlangan. Bunday kitob juda qimmat turgan.

Homiylik bo'lmasa, bu ish to'xtaydi. Kitobat san'atiga sarflangan mablag' esa bevosita natija beradi: ko'chirilgan kitob asrlar davomida saqlanadi va keyingi avlodlarga yetib boradi.$$
 WHERE topic_uz = $$Kitobat san'atiga homiyligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

UPDATE fact_cards SET detail_uz = $$1842-yildagi voqealardan keyin she'rlarim tarqoq qo'lyozmalarda saqlanib qolgan; ularni yig'ish va nashrga tayyorlash keyingi davr olimlari zimmasiga tushgan.

Bugun g'azallarim maktab darsliklaridan o'rin olgan va qo'shiq bo'lib kuylanadi. O'zbekistonda ko'chalar, maktablar va kutubxonalarga nomim berilgan.

Qo'qondagi Dahmai Shohon maqbaralar majmuasida qabrim bor va u ziyoratgohga aylangan.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'nodira');

-- ==================================== UVAYSIY ====================================

UPDATE fact_cards SET detail_uz = $$Marg'ilonda, hunarmand oilasida tug'ilganman; asl ismim Jahon, shuning uchun meni Jahon Otin deb ham atashadi.

Marg'ilon — Farg'ona vodiysining eng qadimgi shaharlaridan biri, ipakchilik va hunarmandchilik markazi. Men umrimning boshini ham, oxirini ham shu shaharda o'tkazganman.

Tug'ilgan yilim manbalarda ba'zan 1779, ba'zan 1781 deb ko'rsatiladi. Bu o'sha davr uchun odatiy hol: tug'ilish rasmiy qayd etilmagan va sana keyinchalik bilvosita tiklangan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Akam Oxunjon hofiz edi — hofiz, ya'ni Qur'onni yod bilgan va kuy bilan o'qigan kishi; u she'riyatni ham puxta bilardi.

U menga aruz vaznini, qofiya qoidalarini va mumtoz shoirlar ijodini o'rgatgan. O'sha davrda qiz bolaning bunday bilim olishi faqat oila ichida mumkin edi — qizlar uchun rasmiy maktab yo'q edi.

Oilamizning butun muhiti shunday edi: otam Siddiq she'riyat shaydosi, onam Chinnibibi esa otin bo'lib qizlarga saboq berardi.$$
 WHERE topic_uz = $$Ustozim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Xalfa — otinning yordamchisi, ya'ni kichik guruh bilan mashq o'tkazadigan kishi. Men avval shu vazifani bajarganman, keyin onam yonida to'liq maktabdorlikka o'tganman.

Onam Chinnibibi otin edi va maktab bizning uyimizda o'tardi. Qizlarga savod, o'qish-yozuv, mumtoz she'riyat va axloq qoidalari o'rgatilardi.

O'sha davrda Turkistonda qizlar uchun davlat maktabi yo'q edi. Bilim faqat ana shunday uy maktablari orqali berilardi va u onadan qizga, otindan shogirdga o'tardi.$$
 WHERE topic_uz = $$Maktabdorligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Meni saroyga Nodira (1792–1842) taklif qilgan — u Qo'qon xoni Umarxonning xotini va o'zi ham shoira edi. U mendan o'n uch yosh kichik bo'lgan.

Saroyda men unga va boshqa xotin-qizlarga she'riyatdan dars berganman: aruz vazni, qofiya, mumtoz shoirlar ijodi. Shu bilan birga o'zim ham yozishda davom etganman.

Oddiy hunarmand oilasidan chiqqan ayolning saroyda ustoz bo'lishi — bu bilimning kelib chiqishdan ustun kelgan holi. Nodira meni martabam uchun emas, she'rim uchun chaqirgan.$$
 WHERE topic_uz = $$Saroyda ustozligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Chiston — she'r shaklidagi topishmoq: unda narsaning nomi aytilmaydi, faqat belgilari tasvirlanadi va o'quvchi javobni o'zi topadi.

Bu janr shoirdan aniq kuzatuvni talab qiladi: narsani shunday tasvirlash kerakki, javob ham yashirin qolsin, ham topilsin. Chistonlarim devonimga kiritilgan — bu mening ijodimning o'ziga xos jihati.

Bugun chistonlarim maktab darsliklarida beriladi. Ular bolalarga she'r va topishmoq bir joyda bo'la olishini ko'rsatadi.$$
 WHERE topic_uz = $$Chistonlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Bu raqamlar ijodimning hajmini ko'rsatadi. G'azal — mumtoz she'riyatning asosiy janri; muxammas besh misrali, musaddas esa olti misrali band bilan yoziladi.

Bunday hajm bir umrlik muntazam mehnat natijasidir. Men saroyda ustozlik qilib, ayni paytda yozishda ham davom etganman.

Taqqoslash uchun: shogirdim Nodira barcha taxalluslari ostida o'n mingga yaqin misra yozgan. Ya'ni Qo'qon shoiralari kam yozadigan ijodkorlar emas edi.$$
 WHERE topic_uz = $$Ijodim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$«Shahzoda Hasan» va «Shahzoda Husan» — diniy-tarixiy mavzudagi dostonlarim; uchinchisi esa o'z davrimning voqealariga bag'ishlangan.

Doston — yirik hajmli she'riy asar; unda voqea rivoji va qahramonlar bo'ladi. Uni yozish g'azaldan butunlay boshqa mahorat talab qiladi: uzun matnni bir ohangda olib borish va voqeani izchil rivojlantirish kerak.

Ayol shoiraning doston yozishi o'sha davr uchun kam uchraydigan hol edi — bu janr odatda erkak shoirlar ishi hisoblanardi.$$
 WHERE topic_uz = $$Dostonlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Bu ma'lumot Dilshod otinning yozuvlaridan olingan — u Qo'qonlik shoira va o'qituvchi bo'lib, o'z zamondoshlari haqida yozib qoldirgan.

Dilshod otinning yozuvlari bugun tarixchilar uchun muhim manba: men haqimdagi ba'zi ma'lumotlar faqat undan ma'lum. Uning shogirdlaridan biri keyinchalik shoira Anbar Otin bo'lgan.

Konibodom va Xo'jand — Farg'ona vodiysining g'arbidagi shaharlar. O'sha davrda ayol kishining bunday safar qilishi oson emasdi: yo'l uzoq va xavfli edi.$$
 WHERE topic_uz = $$Safarlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$1842-yilda Buxoro amiri Nasrullo Qo'qonni egallagan va shogirdim Nodira o'g'illari bilan birga qatl etilgan. Saroy davrasi tarqalgan.

Shundan keyin men tug'ilgan shahrim Marg'ilonga qaytganman va umrimning oxirigacha shu yerda yashaganman. Saroy homiyligi yo'qolgan bo'lsa-da, yozishdan to'xtamaganman.

Ortimda devon, uchta doston va shogirdlar qolgan. She'rlarim qo'lyozma nusxalar orqali saqlanib, keyingi avlodlarga yetib kelgan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$«Uvaysiy» so'zi mumtoz an'anaga borib taqaladi: u ustozini ko'rmasdan, uning ruhidan ta'lim olgan kishini bildiradi.

Asl ismim Jahon. «Otin» esa taxallus emas — u qizlarga ta'lim beruvchi ayolga beriladigan nom, ya'ni kasb va martaba. Shuning uchun to'liq nomim Jahon Otin Uvaysiy tarzida yoziladi.

Mumtoz she'riyatda taxallus g'azalning oxirgi baytida keltirilardi. Shogirdim Nodira esa uchta taxallus bilan yozgan — bu kam uchraydigan hol.$$
 WHERE topic_uz = $$Taxallusim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Oilamizda ta'lim ham, she'r ham bor edi: otam Siddiq she'riyat shaydosi, onam Chinnibibi otin bo'lib qizlarga saboq berardi.

Akam Oxunjon hofiz menga aruz vaznini va mumtoz shoirlar ijodini o'rgatgan. Men esa o'z navbatimda onam yonida maktabdorlik qilganman — ya'ni kasb ham, ilm ham oila ichida uzatilgan.

Bu bog'lanish oilamizdan tashqariga ham chiqqan: keyinchalik shoira Anbar Otinning otasi Farmonqul mening jiyanim bo'lgan.$$
 WHERE topic_uz = $$Oilam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Devonimda 269 g'azal, 29 muxammas va 55 musaddas jamlangan; ularga murabba' va chistonlar ham qo'shilgan.

Devondagi she'rlar qofiya harfiga qarab joylashtiriladi — bu mumtoz devon tuzilishining qoidasi. Chistonlarning devonga kiritilishi esa mening ijodimning o'ziga xos jihati: bu janr odatda alohida yurardi.

Bosmaxona yo'q davrda devon qo'lda ko'chirilardi. Mening she'rlarim ham aynan shunday — qo'lyozma nusxalar orqali saqlanib, bizgacha yetib kelgan.$$
 WHERE topic_uz = $$Devonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Javobi — anor. Chistonda anorning tashqi ko'rinishi gumbazga o'xshatiladi: uning eshigi ham, tuynugi ham yo'q, ammo ichi to'la dona.

Chistonning kuchi shu yerda: narsaning nomi aytilmaydi, faqat belgilari beriladi. Javobni topgan odam narsaga yangicha qaray boshlaydi — u endi anorni gumbaz sifatida ham ko'radi.

Shoirning ishi ham shunga o'xshaydi: tanish narsani shunday tasvirlash kerakki, o'quvchi uni birinchi marta ko'rgandek bo'lsin.$$
 WHERE topic_uz = $$Anor topishmog'im$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Umarxon 1810-yildan 1822-yilgacha Qo'qon xoni bo'lgan va uning saroyi o'sha davrning eng yirik adabiy markazi edi.

U «Amiriy» taxallusi bilan yozgan, xotini Nodira esa uchta taxallus bilan. Saroyga o'nlab shoir to'plangan, she'riy majlislar o'tkazilgan, tazkiralar tuzilgan.

Men bu davraga chetdan kelganman — oddiy hunarmand oilasidan. Ammo o'sha muhitning ochiqligi tufayli u yerda menga ham o'rin topilgan.$$
 WHERE topic_uz = $$Yashagan davrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$Qo'qon shoiralari maktabi bir necha avlodni qamragan: men, Nodira va Mahzuna — birinchi bo'g'in; keyin Dilshod otin; undan keyin Anbar Otin.

Zanjir ustoz-shogird tartibida uzatilgan: men Nodiraga dars berganman, Dilshod otin bizning izimizdan borgan, Anbar Otin esa Dilshod otindan o'qigan.

Har birimizning ovozimiz boshqacha edi: Nodira — malika va saroy shoirasi, men — saroyga chaqirilgan o'qituvchi, Anbar Otin esa mahallada yashagan otin. Shuning uchun mavzularimiz ham har xil.$$
 WHERE topic_uz = $$Zamondosh shoiralar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');

UPDATE fact_cards SET detail_uz = $$She'rlarim qo'lyozma nusxalarda saqlanib qolgan va ular ustida keyingi davr matnshunoslari ishlagan: eski yozuvni o'qish, nusxalarni solishtirish va nashrga tayyorlash.

Bugun she'rlarim va chistonlarim maktab darsliklaridan o'rin olgan. O'zbekistonda ko'chalar va maktablar nomim bilan atalgan; tug'ilgan shahrim Marg'ilonda xotiram alohida ehtiromda.

Chistonlarim esa alohida hayot kechiradi: ularni javobini bilmagan bola ham qiziqib yechadi. She'r shu tariqa avlodlar orasidan o'tadi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'uvaysiy');
