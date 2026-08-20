-- «Batafsil» matnlarini KENGAYTIRISH — 17-to'plam: G'afur G'ulom va
-- Ozod Sharafiddinov. Ikkalasi ham adabiyot va ilm chegarasida ishlagan:
-- biri shoir-akademik, ikkinchisi munaqqid-professor.
--
-- MANBA. V79–V85 qoidasi saqlanadi: TASHQI manba ishlatilmagan. Matnlar
-- bazadagi tekshirilgan kartochkalardan yig'ilgan — shu qahramonning boshqa
-- kartochkalari, Oybek (akademiklik, tarjima), Erkin Vohidov va Abdulla Oripov
-- («Mushtum», ijod maktablari), Cho'lpon kartochkalari, hamda atama izohlari
-- (munaqqid, esse, qissa, dotsent).
-- Yangi sana, ism yoki raqam qo'shilmagan.

-- ================================= G'AFUR G'ULOM =================================

UPDATE fact_cards SET detail_uz = $$Toshkentda, oddiy oilada tug'ilganman va bolaligim eski shahar mahallalarida o'tgan.

O'sha hayot — ko'chalar, bozorlar, hunarmandlar va oddiy odamlar — keyinchalik «Shum bola» qissamga to'g'ridan-to'g'ri kirgan. Ya'ni bolaligim menda xotira emas, adabiy material bo'lib qolgan.

Tug'ilgan yilim shoir Oybeknikiga yaqin. Biz bir avlodmiz: yigitlik chog'imizda o'zbek zamonaviy adabiyoti endigina shakllanayotgan edi va uni shakllantirish bizning zimmamizga tushgan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$«Shum bola» — qissa, ya'ni romandan kichik, hikoyadan katta nasriy asar.

Uning kuchi tilida: voqea bolaning o'z og'zidan hikoya qilinadi va shu bois matn jonli, kulgili hamda samimiy chiqadi. Bunday hikoya usuli o'sha davr o'zbek nasrida yangilik edi.

Asar bugun ham eng ko'p o'qiladigan kitoblardan biri. U bir necha bor kinoga olingan va sahnalashtirilgan — ya'ni qissa o'z muallifidan uzoqroq yashab kelmoqda.$$
 WHERE topic_uz = $$«Shum bola»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Ikkala to'plam ham ijodimning dastlabki davriga tegishli: o'shanda men o'ttiz yoshga ham to'lmagandim.

Kitob nomlaridagi ohang o'sha davr she'riyatiga xos: qisqa, kuchli va harakatga chorlovchi.

Bu bosqichdan keyin men nasrga o'tganman: «Netay», «Yodgor» va «Shum bola» keyingi yillarda yozilgan. Ya'ni she'rdan nasrga o'tish menda ham, Oybekda ham deyarli bir vaqtda yuz bergan.$$
 WHERE topic_uz = $$She'riy to'plamlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Uch she'r uch xil mavzuni ochadi: tabiat va ijod, kundalik nonning qadri, tug'ilgan shahar.

«Non» she'ri alohida o'rin tutadi. Non bizning madaniyatimizda oddiy oziq emas — u mehnat, to'kinlik va hurmat ramzi. Shu bois bu mavzu she'riyatimizda tez-tez uchraydi.

«Toshkent» esa shahar haqidagi she'r. Men shu shaharda tug'ilganman va u haqda nasrda ham, nazmda ham yozganman.$$
 WHERE topic_uz = $$Mashhur she'rlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Ikkala qissa ham ijtimoiy mavzuda: ularda oddiy odamlarning taqdiri va og'ir hayoti tasvirlanadi.

«Yodgor» «Shum bola» bilan bir yilda yozilgan — ya'ni men bir vaqtning o'zida ikki xil ohangda ishlaganman: biri kulgili, ikkinchisi jiddiy.

Bunday keng qamrov mening ijodimga xos. Men hajv ham yozganman, lirik she'r ham, jiddiy nasr ham — janr menga chegara qo'ymagan.$$
 WHERE topic_uz = $$Qissalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Bu hikoya umrimning oxirgi yillarida — «Shum bola»dan qariyb o'ttiz yil keyin yozilgan.

Nomidagi «o'g'rigina» so'zi erkalash shaklida aytilgan: bu tanbeh emas, mehr bilan aytilgan gap. O'zbek tilida bunday shakl keng ishlatiladi va u matnga alohida ohang beradi.

Bolalar mavzusi butun ijodimda takrorlanadi. Buning shaxsiy sababi bor: men o'zim yetim o'sganman va bolalar uyida tarbiyachi bo'lib ishlaganman.$$
 WHERE topic_uz = $$«Mening o'g'rigina bolam»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Akademik bo'lganimda qirq yoshda edim.

Yozuvchining akademik bo'lishi kam uchraydi: akademiya odatda olimlarni saylaydi. Menda esa ilmiy ish ham bo'lgan — men adabiyotshunoslik va folklor bo'yicha maqolalar yozganman.

Qizig'i shundaki, xuddi shu yili Oybek ham akademik bo'lgan. Ya'ni bir avlodning ikki yozuvchisi bir vaqtda ilmiy unvon olgan — bu o'sha davrda adabiyot bilan ilm qanchalik yaqin turganini ko'rsatadi.$$
 WHERE topic_uz = $$Akademiklik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Ikki maqolaning mavzusi ijodimning ikki ildizini ko'rsatadi: xalq og'zaki ijodi va mumtoz adabiyot.

Folklorga murojaat bejiz emas: «Shum bola» qissasining tili va hazil ohangi aynan xalq hikoyachiligidan olingan.

Navoiy haqidagi maqola esa boshqa yo'nalish. Bu mavzu bizning adabiyotshunosligimizda markaziy o'rin tutadi — Oybek ham Navoiy haqida ham doston, ham roman yozgan.$$
 WHERE topic_uz = $$Ilmiy ishlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Shekspir tarjimasi o'zbek tili uchun jiddiy sinov bo'lgan: uning matni she'riy, obrazlarga boy va uzun monologlardan iborat.

Bunday asarni o'girish uchun tarjimon shoir bo'lishi kerak. Aks holda matn ma'nosini saqlaydi, ammo ohangini yo'qotadi.

Bizning avlodimiz jahon klassikasini o'zbekchaga olib kirish ishini o'z zimmasiga olgan: Oybek Pushkin va Lermontovni, keyingi avlodda Erkin Vohidov Gyoteni, Abdulla Oripov esa Danteni tarjima qilgan.$$
 WHERE topic_uz = $$Tarjimalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Ijodiy yo'lim 1923-yildagi ilk she'rimdan boshlangan — ya'ni u qariyb qirq uch yil davom etgan.

Ortimda she'riy to'plamlar, qissalar, hikoyalar, ilmiy maqolalar va tarjimalar qolgan. Bunday keng qamrov o'sha avlodning umumiy xususiyati edi.

Mustaqillik yillarida orden bilan taqdirlanishim esa boshqa narsani ko'rsatadi: asarlarim yangi davrda ham o'qilishda davom etgan.$$
 WHERE topic_uz = $$Umrimning oxiri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Yetimlik mening ijodimning eng chuqur ildizi bo'lgan: u nafaqat mavzu, balki butun qarashimni belgilagan.

Shu tajriba tufayli men bolalar uyida tarbiyachi bo'lib ishlaganman — ya'ni yetim bolalar bilan ish menda kitobiy emas, amaliy bo'lgan.

Urush yillarida yozilgan «Sen yetim emassan» she'ri ham shu tajribadan chiqqan. Bunday she'rni faqat o'zi boshdan kechirgan odam yoza oladi.$$
 WHERE topic_uz = $$Yetim o'sganim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Harf teruvchi — bosmaxonada matnni harflardan yig'adigan ishchi; o'sha davrda har bir harf alohida qo'yilardi.

Bu kasb men uchun tasodifiy bo'lmagan maktab bo'lgan: harf teruvchi kun bo'yi matn bilan ishlaydi va u so'zning tuzilishini juda yaqindan ko'radi.

Keyingi ikki kasbim ham keyingi ijodimga ta'sir qilgan: o'qituvchilik menga tinglovchini his qilishni, bolalar uyidagi tarbiyachilik esa bolaning dunyosini o'rgatgan.$$
 WHERE topic_uz = $$Ilk kasblarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Ilk she'rim bosilganda men yigirma yoshda edim.

She'r nomi savol shaklida qo'yilgan — bu yosh shoir uchun tabiiy: u dunyoga savol bilan qaraydi va javobni she'rda izlaydi.

Shu yildan boshlab men umrimning oxirigacha yozganman. Adabiyotga kirish uchun bitta bosilgan she'r yetarli bo'ladi — undan keyingisi mehnatga bog'liq.$$
 WHERE topic_uz = $$Ilk she'rim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$She'r urush yillarida yozilgan va u o'sha davrning eng ta'sirchan asarlaridan biriga aylangan.

Uning mavzusi aniq: urushda yetim qolgan bolani boshqa oila o'z bag'riga oladi. O'sha yillarda bu she'riy obraz emas, kundalik voqelik edi.

Men bu mavzuni ichkaridan bilardim: o'zim yetim o'sganman va bolalar uyida ishlaganman. Shu bois she'rda ta'rif emas, o'z tajribam turadi.$$
 WHERE topic_uz = $$«Sen yetim emassan» she'ri$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$«Mushtum» — hajviy jurnal; unda kulgi orqali kamchilik va illatlar tanqid qilinardi.

Hajv jiddiy adabiyotdan kam emas: u odamni xafa qilmasdan o'ylashga majbur qiladi. Ammo u nozik ish — chegara buzilsa, kulgi haqoratga aylanadi.

Bu jurnal bizning adabiyotimizda ko'p ijodkorning maktabi bo'lgan: keyingi avlodda Erkin Vohidovning ilk she'ri ham aynan shu jurnalda bosilgan.$$
 WHERE topic_uz = $$«Mushtum» jurnalida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Unvon menga ijodiy yo'lim boshlanganidan qirq yil o'tib berilgan.

«Xalq shoiri» unvoni uzoq yillik mehnat va xalq e'tirofi uchun beriladi — ya'ni u bitta asar uchun emas, butun yo'l uchun.

Ammo shoir uchun asosiy baho boshqa: she'rining yodlanishi va kitobining o'qilishi. Mening «Shum bola» qissam bugun ham eng ko'p o'qiladigan asarlar qatorida.$$
 WHERE topic_uz = $$Xalq shoiri unvonim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

UPDATE fact_cards SET detail_uz = $$Nashriyotga yozuvchi nomining berilishi alohida ma'noga ega: bu nom har bir chiqqan kitob muqovasida takrorlanadi.

Metro bekati esa boshqa turdagi xotira — u har kuni minglab odamning og'zida aytiladi.

Uy-muzeyda qo'lyozmalarim, kutubxonam va shaxsiy buyumlarim saqlanadi. Qo'lyozma alohida qimmatga ega: unda o'chirilgan jumlalar ko'rinadi va u kitob qanday yaratilganini ko'rsatadi.$$
 WHERE topic_uz = $$Nomimdagi joylar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'gafur-gulom');

-- =============================== OZOD SHARAFIDDINOV ===============================

UPDATE fact_cards SET detail_uz = $$Qo'qon yaqinidagi qishloqda tug'ilganman — ya'ni ilm yo'liga men poytaxtdan emas, viloyatdan kelganman.

Qo'qon adabiy an'analari kuchli shahar: bu yerda Uvaysiy, Nodira, Anbar Otin, Muqimiy va Furqat ijod qilgan. Bunday muhitda o'sish adabiyotga bo'lgan qiziqishni tabiiy holga aylantiradi.

Xuddi shu yaqin atrofda xonanda Halima Nosirova ham tug'ilgan. Farg'ona vodiysi bizning madaniyatimizga ko'p iste'dod bergan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Ilmiy yo'lim bosqichma-bosqich borgan: avval diplom, uch yildan keyin fan nomzodi, keyin uzoq mehnatdan so'ng professor.

Bu tartib odatiy, ammo oraliqlar diqqatga sazovor: nomzodlikdan professorlikkacha yigirma besh yil o'tgan. Ya'ni unvon tez emas, ish bilan kelgan.

Filologiya — til va adabiyot haqidagi fan. Munaqqid uchun bu zarur asos: asarni baholash uchun avval uni tahlil qila bilish kerak.$$
 WHERE topic_uz = $$Ilm yo'lim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Qirq yil bir fakultetda ishlash — bu bir necha avlod talabani ko'rish degani.

Dotsentdan professorgacha bo'lgan yo'l ham shu davrda bosib o'tilgan: ya'ni men bir joyda o'sganman va ketmaganman.

Ustozning ishi kitob yozishdan farq qiladi: kitob bir marta chiqadi, dars esa har yili takrorlanadi va har safar yangi tinglovchiga aytiladi. Munaqqid uchun bu foydali — auditoriya fikrni darhol sinaydi.$$
 WHERE topic_uz = $$Qirq yillik ustozlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Kitob nomining o'zi mening usulimni bildiradi: zamon, qalb va she'riyat — uchalasi bir-biriga bog'liq deb qaraladi.

«Badiiylik mezoni» degani she'rni mazmuni uchun emas, san'at sifati uchun baholash. Bu o'sha davr uchun jasoratli yondashuv edi.

Keyingi kitoblarim ham shu yo'lda davom etgan. Munaqqid uchun kitob to'plami muhim: tarqoq maqolalar unutiladi, kitobga jamlangani esa qoladi va o'rganiladi.$$
 WHERE topic_uz = $$Ilk mashhur kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Cho'lpon qatag'on yillarida yo'q qilingan va uning asarlari o'nlab yil davomida taqiqda turgan — ya'ni butun bir avlod uni o'qimasdan o'sgan.

Bunday shoirni qaytarish uchun ikki ish kerak bo'lgan: matnlarni topib nashrga tayyorlash va ularni tushuntirib berish. Ikkinchisi munaqqidning ishi.

Kitobning nomi ham ma'noli: «anglash» — ya'ni shunchaki o'qish emas, tushunish. Taqiqdan keyin qaytgan shoirni o'quvchi darhol tushunmaydi, unga yo'l ko'rsatish kerak.$$
 WHERE topic_uz = $$Cho'lponni anglash$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Tolstoy va Koelo bir-biridan bir asr va butun bir dunyoqarash bilan ajralib turadi — bu tanlovning kengligini ko'rsatadi.

Munaqqid uchun tarjima tabiiy ish: u asarni tahlil qilib o'rgangan, demak uni boshqa tilga o'girishga ham tayyor.

Bizning adabiyotimizda bu an'ana kuchli: G'afur G'ulom Shekspirni, Oybek Pushkinni, Erkin Vohidov Gyoteni, Abdulla Oripov Danteni tarjima qilgan. Tarjima orqali til boyiydi.$$
 WHERE topic_uz = $$Tarjimonligim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$«Jahon adabiyoti» jurnalining vazifasi nomidan ko'rinib turibdi: unda chet el adabiyotining tarjimalari va ular haqidagi maqolalar chop etiladi.

Bu ish menga yaqin edi: men o'zim ham tarjimon bo'lganman va o'zbek adabiyotini jahon adabiyoti bilan bog'lab o'rganishni yoqlaganman.

Bosh muharrirlik ilmiy ishga vaqt qoldirmaydi, ammo u boshqa imkoniyat beradi: sen bir kitob emas, butun bir oqimni shakllantirasan.$$
 WHERE topic_uz = $$«Jahon adabiyoti» jurnali$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Darslik yozish alohida mahorat talab qiladi: unda fikr qisqa, aniq va talabaga tushunarli bo'lishi kerak.

Adabiyot tarixi darsligi esa yanada murakkab: unda yuzlab muallif va asar tanlanadi, tartibga solinadi va baholanadi. Har bir tanlov munozarali bo'lishi mumkin.

Darslikning ta'siri kitobnikidan kengroq: uni har yili minglab talaba o'qiydi va ular adabiyotni aynan shu tartibda ko'radi.$$
 WHERE topic_uz = $$Darslik muallifi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$«O'zbekiston Qahramoni» — mamlakatdagi eng yuksak unvon.

Uning munaqqidga berilishi alohida ahamiyatga ega: bu kasb ko'pincha ko'rinmay qoladi. Shoir she'r yozadi va uni hamma biladi, munaqqid esa boshqalarning asarini tushuntiradi.

Menga bu unvon ilmiy yo'lim boshlanganidan yarim asr o'tib berilgan. Ya'ni u bir ish uchun emas, butun umr uchun.$$
 WHERE topic_uz = $$O'zbekiston Qahramoni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Umrimning oxirigacha men jurnalni boshqarganman va yozishda davom etganman.

Ortimda o'nlab ilmiy kitob, yuzlab maqola, darsliklar va tarjimalar qolgan.

Eng muhimi esa shogirdlar: qirq yillik ustozlik davomida men tayyorlagan mutaxassislar bugun ham ishlamoqda. Adabiyotshunosning merosi shunday o'lchanadi — u yozgan kitoblar va u o'stirgan odamlar bilan.$$
 WHERE topic_uz = $$Umrim yakuni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Munaqqidning ishi maqtash yoki tanqid qilish emas — u asarni tushuntirish va uning o'rnini belgilashdan iborat.

Buning uchun ikki narsa kerak: keng bilim va xolislik. Munaqqid o'z didini emas, asarning haqiqiy sifatini ko'rsatishi lozim.

Bu kasb yozuvchi bilan o'quvchi o'rtasida turadi. Yaxshi maqola o'quvchiga asarni ochib beradi — u endi kitobni boshqacha o'qiy boshlaydi.$$
 WHERE topic_uz = $$Munaqqidlik kasbim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$She'riyatni tanlashimning sababi bor: she'r adabiyotdagi eng nozik janr va unda har bir so'z hisobga olinadi.

Shu bois she'rni tahlil qilish qiyin: unda syujet yo'q, uni qayta hikoya qilib bo'lmaydi. Munaqqid vazn, obraz, ohang va so'z tanlovini ko'ra bilishi kerak.

«Yaxshi she'r qanday bo'lishi» degan savol esa mening asosiy mavzuim edi. Bu savolga bir marta javob berib bo'lmaydi — har avlod unga qaytadan javob izlaydi.$$
 WHERE topic_uz = $$She'riyat — bosh mavzuim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Yosh shoir uchun birinchi jiddiy maqola kitobdan kam ahamiyatli emas: u shoirni adabiy jarayonga kiritadi.

Erkin Vohidov ham, Abdulla Oripov ham keyinchalik «O'zbekiston Qahramoni» unvonini olgan va xalq shoiri bo'lgan. Ammo har bir shoirning boshida uni birinchi bo'lib sezgan odam turadi.

Munaqqid uchun bu eng qiyin ish: yosh muallifning kelajagini uning dastlabki she'rlaridan ko'ra bilish kerak. Bu yerda xato qilish oson.$$
 WHERE topic_uz = $$Yosh shoirlarga ko'magim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Maqolalarni kitobga jamlash munaqqid uchun zarur ish: jurnalda bosilgan maqola bir mavsumda unutiladi, kitobdagisi esa qoladi.

Kitob nomlari qarashimni bildiradi: «Talant — xalq mulki» degani iste'dod shaxsiy emas, u butun xalqqa tegishli degan fikr.

Bunday to'plamlarning yana bir foydasi bor: ularda munaqqidning yillar davomida qarashi qanday o'zgargani ko'rinadi. Bu adabiy jarayonning tarixi ham hisoblanadi.$$
 WHERE topic_uz = $$Maqola to'plamlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Kitobning nomi mening kasbimning mohiyatini bildiradi: ijodni anglash oson emas, bu mashaqqatli ish.

Unga maqolalar bilan birga esselar ham kirgan. Esse — erkin shakldagi asar: unda muallif fikrini qat'iy ilmiy qolipsiz, ochiq bayon qiladi.

Bunday yakuniy kitob umr yakuni kabi: unda eng yaxshi deb bilgan ishlaringni o'zing tanlaysan. Bu tanlovning o'zi ham muallif haqida ko'p narsa aytadi.$$
 WHERE topic_uz = $$«Ijodni anglash mashaqqati»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$«Alkimyogar» — zamonaviy jahon adabiyotidagi eng ko'p o'qilgan kitoblardan biri; u sodda tilda yozilgan falsafiy qissa.

Bunday asarni tarjima qilish aldamchi darajada qiyin: matn oddiy ko'rinadi, ammo undagi ohang va ma'no qatlamlarini saqlash kerak.

Tanlovim ham ma'noli: men klassikani ham (Tolstoy), zamonaviy adabiyotni ham o'girganman. Munaqqid uchun bu tabiiy — u adabiyotni butun holida ko'radi.$$
 WHERE topic_uz = $$«Alkimyogar» tarjimam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');

UPDATE fact_cards SET detail_uz = $$Umrimning oxirgi yillarida og'ir kasallik meni harakatdan cheklagan, ammo ishdan cheklamagan.

Nogironlik aravachasida o'tirib ham men «Jahon adabiyoti» jurnalini boshqarganman, tarjima qilganman va maqolalar yozganman. Aynan shu davrda «Ijodni anglash mashaqqati» kitobim e'lon qilingan.

Aqliy mehnatning bir afzalligi shunda: u tananing holatiga kamroq bog'liq. Qalam ushlash yoki fikrni aytib turish imkoni bo'lsa, ish davom etadi.$$
 WHERE topic_uz = $$Matonatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ozod-sharafiddinov');
