-- «Batafsil» matnlarini KENGAYTIRISH — 16-to'plam: Halima Nosirova va
-- Dilbar Abdurahmonova. Ikkalasi ham Alisher Navoiy nomidagi teatr bilan
-- bog'liq va V84 dagi Tamaraxonim — Mukarrama zanjirini davom ettiradi.
--
-- MANBA. V79–V84 qoidasi saqlanadi: TASHQI manba ishlatilmagan. Matnlar
-- bazadagi tekshirilgan kartochkalardan yig'ilgan — shu qahramonning boshqa
-- kartochkalari, Tamaraxonim va Mukarrama Turg'unboyeva kartochkalari
-- (Usta Olim Komilov, front brigadalari, Navoiy teatri), hamda atama izohlari
-- (partiya, dirijyor, repertuar, studiya).
-- Yangi sana, ism yoki raqam qo'shilmagan.

-- ================================ HALIMA NOSIROVA ================================

UPDATE fact_cards SET detail_uz = $$Qo'qon yaqinidagi qishloqda tug'ilganman — ya'ni opera sahnasiga men poytaxtdan emas, qishloqdan kelganman.

Qo'qon o'sha davrda ham adabiy va musiqiy an'analari kuchli shahar edi. Bolalikda eshitilgan xalq kuylari keyinchalik ijodimning asosiga aylangan.

Tug'ilgan yilim raqqosa Mukarrama Turg'unboyevanikiga to'g'ri keladi. Ya'ni biz bir avlodmiz: o'zbek professional sahna san'ati bizning yoshligimizda shakllangan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Xotin-qizlar bilim yurtlari o'sha davrda qizlar uchun asosiy ta'lim yo'li bo'lgan; havaskorlik to'garagi esa ko'p san'atkorning birinchi sahnasi bo'lib xizmat qilgan.

Boku o'sha paytda musiqali teatr an'anasi kuchli shahar edi. Bir guruh yosh o'zbek san'atkorining u yerga yuborilishi maqsadli qadam bo'lgan: mamlakatda hali o'z opera maktabi yo'q edi.

Ya'ni birinchi avlod chetda o'qib, keyin o'z maktabini yaratgan. Bizdan keyingilar esa allaqachon Toshkentda tahsil olgan.$$
 WHERE topic_uz = $$O'qish yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Studiya maxsus ochilgan edi: uning vazifasi o'zbek opera teatri uchun kadr tayyorlash bo'lgan.

Opera boshqa maktab talab qiladi: unda ovoz mikrofonsiz, butun zalga yetib borishi kerak; nafas, tovush chiqarish va notani o'qish alohida o'rgatiladi.

Xalq ashulasidan opera vokaliga o'tish oson emas — bu ikki xil ovoz maktabi. Men ikkalasini ham egallashga harakat qilganman va keyinchalik shu qorishma mening uslubimga aylangan.$$
 WHERE topic_uz = $$Moskvadagi opera studiyasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Besh yuz marta ijro etish — bu bir rolni butun bir avlod tomoshabinlariga ko'rsatish degani.

Bunday takror ijrochidan alohida kuch talab qiladi: har safar rolni yangidan yashash kerak, aks holda tomoshabin sun'iylikni darhol sezadi.

Qizig'i shundaki, spektakl nomi mening ismim bilan bir xil. Shu bois ko'p tomoshabin uchun «Halima» rol emas, mening o'zim bo'lib qolgan.$$
 WHERE topic_uz = $$«Halima» spektakli$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Birinchi milliy opera premyerasida qatnashish — san'at tarixida bir marta bo'ladigan hodisa.

Opera murakkab janr: unda musiqa, drama, vokal, orkestr va sahna bezagi birlashadi. Uni yaratish uchun bastakor, libretto muallifi, dirijyor, rejissyor va tayyorgarligi bor xonandalar kerak.

Shu yildan boshlab butun ijodiy hayotim shu teatr bilan bog'langan. Keyingi avlodda xuddi shu sahnada Dilbar Abdurahmonova dirijyorlik qilgan.$$
 WHERE topic_uz = $$Birinchi o'zbek operasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Ro'yxatning o'zi diqqatga sazovor: unda ham o'zbek, ham jahon operalari bor.

«Karmen» — jahon klassikasi; «Layli va Majnun» va «Ulug'bek» esa milliy asarlar. Ikkala yo'nalishda ham kuylash xonandadan turli uslubni talab qiladi: talaffuz, ohang va sahna xatti-harakati boshqacha bo'ladi.

Bu keng qamrov o'sha avlod uchun zarur edi. Teatr endigina shakllanayotgan paytda har bir yakkaxon xonanda butun repertuarni ko'tarishga majbur bo'lardi.$$
 WHERE topic_uz = $$Mashhur rollarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$«Ushshoq», «Chorgoh» va «Bayot» — maqom yo'llari bilan bog'liq mumtoz ashulalar; ular og'zaki an'anada ustozdan shogirdga uzatilgan.

Bunday ashulani o'rganish uchun nota yetarli emas: unda ohangning nozik burilishlari va nafas olish joylari faqat ustozni tinglab o'zlashtiriladi.

Ustozlarim orasida Usta Olim Komilov ham bor. U raqqosa Tamaraxonim va Mukarrama Turg'unboyevaning ham ustozi bo'lgan — ya'ni bizning avlodimiz bir manbadan suv ichgan.$$
 WHERE topic_uz = $$Xalq ashulalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Front brigadasi — jang maydoniga yaqin joyda konsert beradigan kichik va tez ko'chuvchi jamoa.

Bunday chiqishning sharoiti sahnadan butunlay farq qiladi: zal yo'q, yorug'lik yo'q, ba'zan orkestr ham yo'q — faqat ovoz va tinglovchi qoladi.

Bu ishda o'zbek san'atkorlari birga qatnashgan: Tamaraxonim ham shu brigadalarda bo'lgan. Umumiy hisobda frontlarda o'ttiz besh mingdan ortiq konsert berilgan.$$
 WHERE topic_uz = $$Urush yillarida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Kino va opera ikki xil kasb: kinoda ovoz mikrofonga aytiladi va harakat kichik bo'ladi, operada esa hamma narsa butun zalga hisoblanadi.

Chet eldagi chiqishlar esa boshqa vazifani bajargan. Bu yo'lni bizning san'atimizda Tamaraxonim ochgan, men esa opera va xalq ashulasi bilan davom ettirganman.

Chet el matbuotidagi taqrizlar qimmatli: ular bizning san'atimiz o'sha davrda tashqaridan qanday ko'ringanini ko'rsatadi.$$
 WHERE topic_uz = $$Kino va jahon sahnalari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Xotira kitobining nomi — «Men o'zbek qiziman» — mening butun ijodiy yo'limning qisqa ta'rifi.

Bunday kitob san'atkor uchun alohida ahamiyatga ega: sahna ishi vaqtinchalik, u faqat guvohlar xotirasida qoladi. Yozilgan kitob esa saqlanadi.

Nomim bilan yosh opera ijrochilarining xalqaro tanlovi atalishi eng ma'noli davomiylik: u har yili yangi ovozlarni topadi va ularga sahna beradi.$$
 WHERE topic_uz = $$Unvonlarim va kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Musiqali drama teatri opera teatridan farq qiladi: unda so'z va qo'shiq aralash keladi, opera esa boshidan oxirigacha kuylanadi.

Shu bois musiqali drama yosh san'atkor uchun qulay maktab bo'lgan: u yerda ham aktyorlik, ham vokal mashq qilinardi.

Aynan shu teatrda men «Halima» spektaklidagi bosh rolni ijro etganman. Operaga o'tishim esa keyinroq — birinchi o'zbek operasi sahnaga qo'yilgan yili bo'lgan.$$
 WHERE topic_uz = $$Ilk sahna yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Yakkaxon xonanda — teatrdagi asosiy partiyalarni ijro etuvchi san'atkor; uning zimmasida spektaklning og'irligi turadi.

Bu ish muntazam mashqni talab qiladi: ovoz asbob kabi doimiy sozlanishi kerak va bir necha kun tanaffus ham sezilib qoladi.

Teatr men uchun butun umrga uy bo'lgan. Xuddi shunday hikoya boshqa san'atkorlarda ham takrorlangan: Dilbar Abdurahmonova ham deyarli butun ijodiy hayotini shu teatrda o'tkazgan.$$
 WHERE topic_uz = $$Navoiy teatrida$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$«Layli va Majnun» — Sharq adabiyotining eng mashhur syujetlaridan biri; uni Alisher Navoiy ham «Xamsa» tarkibida qayta ishlagan.

Ya'ni opera sahnasida mumtoz adabiyot yangi shakl olgan. Bu o'zbek operasi uchun tabiiy yo'l bo'lgan: yangi janr uchun material xalqqa tanish syujetlardan olingan.

Bosh partiyani ijro etish esa alohida mas'uliyat: tomoshabin qahramonni allaqachon biladi va uni o'zicha tasavvur qiladi.$$
 WHERE topic_uz = $$Layli partiyam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$«Gulsara» musiqali drama janrida yaratilgan — ya'ni unda so'z va qo'shiq navbatlashib keladi.

Bunday asarda ijrochidan ikki mahorat talab qilinadi: aktyorlik va vokal. Bir sahnada gapirib, keyingisida kuylash kerak bo'ladi.

Bu asar mening repertuarimdagi eng mashhur ishlardan biri bo'lgan va u keyinchalik boshqa ijrochilar uchun ham o'lchov bo'lib qolgan.$$
 WHERE topic_uz = $$«Gulsara»da rolim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$«Ijro maktabi» degani muayyan uslub: ovozni qanday chiqarish, so'zni qanday talaffuz qilish va milliy ohangni opera vokaliga qanday singdirish.

Mening maktabimning o'zagi shunda edi: xalq ashulasi an'anasini opera talablari bilan birlashtirish. Bu ikki tizim bir-biriga oson qo'shilmaydi.

«Birinchi yulduz» ta'rifi esa vaqt bilan bog'liq: men birinchi o'zbek operasi premyerasida qatnashganman va shu janrda birinchilardan bo'lib nom qozonganman.$$
 WHERE topic_uz = $$Opera maktabim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$Ikki kasbning birlashuvi mening avlodim uchun odatiy hol edi: teatr endigina shakllanayotgan paytda tor ixtisoslashuvga imkon yo'q edi.

Xuddi shunday holat boshqa sohalarda ham ko'rinadi: Tamaraxonim bir vaqtning o'zida xonanda, raqqosa va aktrisa bo'lgan.

Keyingi avlodda ixtisoslashuv paydo bo'lgan — har kim o'z sohasida chuqurlashgan. Bu san'atning yetuklik belgisi hisoblanadi.$$
 WHERE topic_uz = $$Xonanda va aktrisa$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

UPDATE fact_cards SET detail_uz = $$To'qson yil — bu bir necha davrni ko'rish demak: men o'zbek opera teatri tug'ilishidan tortib uning yetuk maktabga aylanishigacha bo'lgan yo'lni ko'rganman.

Sahnaga yoshligimda chiqqanman va umrimning katta qismini shu ishga bag'ishlaganman.

Qo'shiqlarning bugungacha yangrashi esa yozib olish tufayli: ovoz yozuvi san'atkorning ovozini o'zidan keyin ham saqlab qoladi. Bir asr avvalgi ijro bugun ham eshitilishi mumkin.$$
 WHERE topic_uz = $$Uzoq umrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'halima-nosirova');

-- ============================= DILBAR ABDURAHMONOVA =============================

UPDATE fact_cards SET detail_uz = $$Otam G'ulom Abdurahmonov opera teatrining yetakchi xonandalaridan biri bo'lgan — ya'ni men opera sahnasini bolaligimdan bilardim.

Musiqa oilasida o'sish katta afzallik beradi: bola erta yoshdan asboblarni ko'radi, mashqni eshitadi va bularning barchasi unga tabiiy tuyuladi.

Keyinchalik men otam ishlagan teatrga qaytganman — avval orkestrga skripkachi, so'ng dirijyorlik pultiga. Bir teatrda ikki avlod ishlagan.$$
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Musiqa va matematika maktablarida bir vaqtda o'qish g'ayrioddiy tuyulishi mumkin, ammo bu ikki soha bir-biriga yaqin.

Musiqada hisob doim bor: o'lchov, ritm, tempning nisbati, partituradagi ovozlar tuzilishi — bularning barchasi aniq tartibga bo'ysunadi.

Dirijyor uchun esa bu ayniqsa muhim: u bir vaqtning o'zida o'nlab partiyani eshitishi va ularning o'zaro nisbatini ushlab turishi kerak.$$
 WHERE topic_uz = $$Skripka darslari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Ikki diplom ketma-ket olingan: avval skripka, bir yildan keyin dirijyorlik.

Bu tartib mantiqiy. Dirijyor bo'lish uchun avval orkestrni ichkaridan bilish kerak: sozanda nima his qilishini, qo'l ishorasi qanday tushunilishini faqat o'zi chalgan odam biladi.

Muxtor Ashrafiy bastakor ham, dirijyor ham bo'lgan. Bunday ustozdan saboq olish alohida imkoniyat: u asarni ham yaratuvchi, ham ijro etuvchi tomondan ko'rsata olardi.$$
 WHERE topic_uz = $$Ashrafiy shogirdi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Talabalik chog'imda orkestrda ishlash men uchun eng yaxshi maktab bo'lgan: men repertuarni ijrochi sifatida o'rganganman.

Orkestrda o'tirgan sozanda dirijyorni boshqacha ko'radi: uning har bir ishorasi qanday ishlashini va qaysi paytda aniqlik yetishmasligini his qiladi.

Moskvadagi festivalda esa men talaba bo'lsam-da, dirijyor sifatida qatnashganman. Bunday tajriba yosh musiqachi uchun kam nasib etadi.$$
 WHERE topic_uz = $$Orkestrda skripkachi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Dirijyorlik uzoq vaqt erkaklar kasbi hisoblangan va nafaqat bizda — jahon sahnalarida ham ayol dirijyorlar kam edi.

Sabab kasbning tabiatida: dirijyor o'nlab tajribali sozandani boshqaradi va ular uning obro'sini tan olishi kerak. Yosh ayol uchun bu qo'shimcha sinov bo'lgan.

Shu bois «birinchi» so'zi bu yerda faqat sana emas — u yo'lni ochish degani. Mendan keyin bu kasbda ayolning turishi odatiy holga aylangan.$$
 WHERE topic_uz = $$Birinchi ayol dirijyor$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Bosh dirijyor va badiiy rahbar bir vaqtning o'zida ikki ishni bajaradi: u spektakllarni boshqaradi va teatrning umumiy yo'nalishini belgilaydi.

Badiiy rahbarning qarori uzoq muddatga ta'sir qiladi: qaysi asar qo'yiladi, kim yakkaxon bo'ladi, yosh ijrochilar qanday o'sadi — bularning barchasi shu lavozimda hal bo'ladi.

Bu vazifada men o'n olti yil ishlaganman. Bunday muddat teatrda butun bir avlod ijrochilarini tarbiyalash uchun yetarli.$$
 WHERE topic_uz = $$Bosh dirijyor$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$«Tanovar» — o'zbek musiqasining eng qadimgi kuylaridan biri; xuddi shu kuy asosidagi raqs bilan raqqosa Mukarrama Turg'unboyeva mashhur bo'lgan.

Ya'ni bir kuy uch shaklda yashagan: xalq ashulasi, sahna raqsi va balet. Bu milliy materialning turli janrlarda ishlashini ko'rsatadi.

Oltmishdan ortiq opera va balet esa repertuarning hajmini bildiradi: har bir spektakl uchun partitura o'rganiladi, mashqlar o'tkaziladi va ijrochilar bilan alohida ishlanadi.$$
 WHERE topic_uz = $$«Tanovar» va mukofot$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Unvonlar ketma-ketligi ijodiy yo'lni ko'rsatadi: avval respublika darajasidagi e'tirof, keyin butun ittifoq miqyosidagi unvon.

Mustaqillik yillaridagi ordenlar esa boshqa narsani bildiradi: mening ishim yangi davrda ham davom etgan va u yerda ham qadrlangan.

Ya'ni ijodim ikki davrni qamragan. San'atkor uchun bu jiddiy sinov: davr o'zgarganda ishning qiymati saqlanadimi?$$
 WHERE topic_uz = $$Unvonlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Konservatoriyada dars berish sahnadagi ishdan farq qiladi: bu yerda natija darhol emas, yillar o'tib ko'rinadi.

Opera san'ati faqat ovoz emas: unda sahna harakati, matnni tushunish, orkestr bilan ishlash va rolni tayyorlash ham bor. Bularning barchasi alohida o'rgatiladi.

Ustozlik bizning san'atimizda an'anaga aylangan. Undan avvalgi avlodda Tamaraxonim va Mukarrama Turg'unboyeva ham shogird tayyorlagan.$$
 WHERE topic_uz = $$Ustozlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Umrimning oxirigacha men musiqa bilan bog'liq bo'lganman: teatrdagi ishdan keyin ham konservatoriyada dars berishda davom etganman.

Ortimda oltmishdan ortiq spektakl, shogirdlar va bir ochiq yo'l qolgan: endi ayolning dirijyorlik pultida turishi hech kimni hayratga solmaydi.

Butun ijodiy hayotim bitta teatr bilan bog'liq bo'lgan. Bunday sadoqat kam uchraydi va u ijodkorni jamoaning bir qismiga aylantiradi.$$
 WHERE topic_uz = $$Umrim yakuni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Oilamiz Toshkentga ko'chgan va butun bolaligim shu shaharda o'tgan.

Toshkent o'sha yillarda musiqiy ta'lim markaziga aylanayotgan edi: bu yerda musiqa maktabi, konservatoriya va opera teatri bir shaharda joylashgan.

Shu bois yo'lim uzluksiz bo'lgan: musiqa maktabi, konservatoriya, teatr orkestri va nihoyat dirijyorlik pulti. Bularning barchasi bir shaharda.$$
 WHERE topic_uz = $$Bolaligim Toshkentda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Konservatoriya — musiqa bo'yicha oliy o'quv yurti; unga kirish uchun avval musiqa maktabini tugatish kerak bo'ladi.

Ikki yo'nalishda o'qish esa qo'shimcha yuk: skripka bo'yicha kunlik mashq, dirijyorlik bo'yicha esa partituralarni o'rganish talab qilinardi.

Ammo bu mehnat bekorga ketmagan. Skripka menga orkestrni ichkaridan tanitgan, dirijyorlik esa uni tashqaridan boshqarishni o'rgatgan.$$
 WHERE topic_uz = $$Konservatoriyada o'qishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Bu teatr mamlakatimizning bosh opera va balet sahnasi; unda birinchi o'zbek operasi ham qo'yilgan.

Mendan avval bu sahnada Halima Nosirova yakkaxon xonanda bo'lib kuylagan, Tamaraxonim raqs truppasini boshqargan, Mukarrama Turg'unboyeva esa baletmeyster sifatida ishlagan.

Ya'ni bir bino bir necha avlodni bir-biriga ulab turgan. Teatrning kuchi shunda: u odamlar almashsa ham an'anani saqlaydi.$$
 WHERE topic_uz = $$Mening teatrim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Yarim asr bir jamoada ishlash — bu teatrni ichkaridan to'liq bilish degani.

Yo'lim orkestr ichidan boshlangan va dirijyorlik pultida davom etgan. Bu tartib menga sozandalar bilan til topishda yordam bergan: men ularning ishini o'z tajribamdan bilardim.

Bunday uzoq ish davomida teatr ham o'zgargan: repertuar kengaygan, yangi avlod kelgan. Men bu o'zgarishlarning ichida bo'lganman.$$
 WHERE topic_uz = $$Yarim asrlik xizmatim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Oltmishdan ortiq spektakl — bu har bir asar uchun alohida tayyorgarlik degani.

Dirijyorning ishi konsertdan avval boshlanadi: u partiturani o'rganadi, temp va ovoz muvozanatini belgilaydi, orkestr hamda xonandalar bilan alohida mashq o'tkazadi.

Sahnadagi ijro esa shu ishning natijasi. Tomoshabin faqat oxirgi bosqichni ko'radi — undan oldingi haftalab mehnat ko'rinmay qoladi.$$
 WHERE topic_uz = $$Boshqargan spektakllarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Repertuarning ikki qismga bo'linishi teatrning vazifasini ko'rsatadi: u ham jahon klassikasini olib kirishi, ham o'z bastakorlarini qo'llab-quvvatlashi kerak.

Milliy asarni sahnaga qo'yish qiyinroq: unga an'ana yo'q, uni birinchi bo'lib talqin qilish kerak. Klassik asarda esa avvalgi ijrolar tajribasi mavjud.

Aynan shu ikki yo'nalishning birga borishi milliy opera maktabini shakllantiradi. Bir tomoni bo'lmasa, teatr yo taqlidchi, yo yopiq bo'lib qoladi.$$
 WHERE topic_uz = $$Repertuarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');

UPDATE fact_cards SET detail_uz = $$Dirijyorning qo'lida asbob yo'q — uning asbobi butun orkestr.

Ish tayoqcha bilan tugamaydi: dirijyor tempni belgilaydi, ovozlar muvozanatini ushlab turadi, kirish joylarini ko'rsatadi va asarning umumiy talqinini beradi. Bir asarni ikki dirijyor butunlay boshqacha ijro etishi mumkin.

Operada esa vazifa yanada murakkab: orkestr, xonandalar va xor bir vaqtda ushlab turilishi kerak, sahnadagi ijrochi esa dirijyorni faqat qisman ko'radi.$$
 WHERE topic_uz = $$Dirijyor kasbi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'dilbar-abdurahmonova');
