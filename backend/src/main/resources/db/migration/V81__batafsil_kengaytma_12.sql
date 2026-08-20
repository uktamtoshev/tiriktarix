-- «Batafsil» matnlarini KENGAYTIRISH — 12-to'plam: To'maris va Shiroq.
-- Ikkalasi ham Ahamoniylar bosqiniga qarshi qarshilik hikoyasi: biri
-- Kir II davri, ikkinchisi Doro I davri.
--
-- MANBA. V79/V80 qoidasi saqlanadi: TASHQI manba ishlatilmagan. Matnlar
-- bazadagi tekshirilgan kartochkalardan yig'ilgan — shu qahramonning boshqa
-- kartochkalari, Halima Xudoyberdiyeva («To'marisning aytgani»), Saroymulkxonim
-- va Gavharshod begim, Spitamen kartochkalari, hamda atama izohlari.
-- Yangi sana, ism yoki raqam qo'shilmagan.
--
-- ALOHIDA E'TIBOR. Ikkala qahramonning kartochkalarida ham «rivoyatga ko'ra»
-- degan ogohlantirish bor. Batafsil matnlarda bu chegara yanada aniqroq
-- qilingan: qayerda dalil, qayerda rivoyat ekani har bir kartochkada aytiladi —
-- loyihaning M1 qoidasiga muvofiq.

-- ==================================== TO'MARIS ====================================

UPDATE fact_cards SET detail_uz = $$Massagetlar — qadimgi ko'chmanchi xalq; ular saklar bilan qarindosh bo'lgan va Turon zaminining g'arbiy qismida yashagan.

Men haqimdagi ma'lumotning deyarli barchasi bitta manbadan — yunon tarixchisi Gerodotning asaridan olingan. O'z xalqimizda o'sha davr yozuvi saqlanmagan.

Shu bois men haqimdagi hikoya dalil va rivoyat aralashmasidan iborat. Buni ochiq aytish kerak: Gerodotning o'zi ham ba'zi joylarda «aytishlaricha» deb yozgan.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Amudaryo bo'ylari va Qizilqum — bu ikki xil muhit: daryo bo'yida o'tloq va suv, sahroda esa faqat quduqlar.

Ko'chmanchi xalq uchun bunday tuzilma qulay edi: yilning bir qismini bir joyda, ikkinchi qismini boshqa joyda o'tkazish mumkin bo'lgan. Chorva o't va suv ortidan yuradi, odam esa chorva ortidan.

Erkin ko'chmanchi degani boshqaruv yo'q degani emas. Bizda qabilalar ittifoqi va yagona hukmdor bo'lgan — bosqinchiga qarshi birgalikda chiqish uchun bu shart edi.$$
 WHERE topic_uz = $$Xalqim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Ayolning hukmdor bo'lishi bizning xalqimizda g'ayrioddiy hol emasdi: massagetlarda ayollar ham ot minib, qurol ko'tarishni bilardi.

Shu bois xalqim meni qo'llab-quvvatlagan. Boshqa ko'p xalqda bunday holatda hokimiyat erkak qarindoshga o'tardi.

Rivoyat bo'lgani uchun tafsilotlar aniq emas. Ammo natija ma'lum: bosqin boshlanganda qo'shinni men boshqarganman va muzokarani ham men olib borganman.$$
 WHERE topic_uz = $$Malika bo'lishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Kir II o'sha davrning eng kuchli hukmdori edi: u Midiya, Lidiya va Bobilni bo'ysundirib, ulkan saltanat qurgan.

Bizning yurtimiz uning ro'yxatidagi navbatdagi o'lka bo'lishi kerak edi. Shimoliy chegara har qanday saltanat uchun bezovta joy: dasht xalqlari bo'ysunmaydi va ular hujum qilishi mumkin.

Ammo dashtda urush boshqacha kechadi. Katta qo'shin uchun bu yerda asosiy dushman jangchi emas — masofa, suvsizlik va ta'minot yo'lining uzunligi.$$
 WHERE topic_uz = $$Kir II bosqini$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Taklif oddiy edi: qo'shiningni olib ortga qayt — biz sizga tegmaymiz.

Bunday taklif zaiflik belgisi emas. Aksincha, u hisobga asoslangan: urushning narxi ikkala tomon uchun ham og'ir bo'lishini men bilardim.

Kir II rad javobini bergan. Ko'p g'alaba qozongan hukmdor uchun bu odatiy hol: uzoq yillik yutuqlar odamda o'z kuchiga ortiqcha ishonch uyg'otadi.$$
 WHERE topic_uz = $$Tinchlik taklifim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Gerodot mendan keyingi avlodga mansub yunon tarixchisi; uni «tarix otasi» deb atashadi, chunki u voqealarni tizimga solib yozgan birinchi mualliflardan biri.

U bizni o'z ko'zi bilan ko'rmagan — yozganlari safarda eshitgan hikoyalari va boshqalardan olgan ma'lumotlariga tayanadi.

Shuning uchun uning matnini ehtiyot bilan o'qish kerak. Ammo boshqa manba yo'q: Gerodot bo'lmaganida na mening nomim, na xalqimning nomi saqlanmagan bo'lardi.$$
 WHERE topic_uz = $$Gerodot guvohligi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Gerodot bu jangni o'z asarida alohida ajratib ko'rsatgan — u yozgan barcha janglar ichida eng dahshatlisi deb.

Uning tavsifiga ko'ra jang uzoq davom etgan va odatdagi tartibda kechmagan: avval uzoqdan kamon otishilgan, keyin yaqin jang boshlangan.

Natija bosqinchi uchun kutilmagan bo'lgan: dasht xalqi ulkan saltanat qo'shinini yenga olgan. Bu voqea qadimgi dunyoda keng tarqalgan va uzoq eslangan.$$
 WHERE topic_uz = $$Buyuk jang$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Hukmdorning jang maydonida halok bo'lishi qadimgi dunyoda kam uchraydigan hol edi: shoh odatda qo'shin ortida turardi.

Kir II uchun bu yurish oxirgisi bo'lgan. U ko'p mamlakatni bo'ysundirgan, ammo shimoliy dasht uni to'xtatgan.

Undan keyin saltanat yana kuchaygan va keyingi shohlar bu tomonga qayta yurish qilgan. Cho'pon Shiroq haqidagi rivoyat aynan shunday keyingi yurishlardan biriga — Doro I zamoniga tegishli.$$
 WHERE topic_uz = $$Bosqin yakuni$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Nomim ikki yo'l bilan yashab kelmoqda: qadimgi yunon matni orqali va bugungi adabiyot orqali.

Zamonaviy shoiralarimizdan Halima Xudoyberdiyeva jasur ayollarga bag'ishlangan «To'marisning aytgani» kitobini yozgan. Ya'ni mening obrazim bugungi she'riyatda ham ishlaydi.

Bundan tashqari nomim maktab darsliklarida, san'at asarlarida va ko'chalar nomida uchraydi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Midiya, Lidiya va Bobil — o'sha davrning uchta yirik davlati; ularning har birini bo'ysundirish alohida yurishni talab qilgan.

Shu bois Kir II ning nomi qadimgi dunyoda hurmat va qo'rquv bilan tilga olinardi. Uning qo'shini son jihatidan biznikidan ancha katta edi.

Ammo saltanat qanchalik katta bo'lsa, uning chegarasi shunchalik uzun bo'ladi. Uzun chegarani himoya qilish esa doimiy urush degani.$$
 WHERE topic_uz = $$Kir II saltanati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Bronza va oltinning ishlatilishi hunarimiz darajasini ko'rsatadi: birinchisi qurol uchun, ikkinchisi bezak uchun.

Nayza, kamon va oybolta — otliq jangchi uchun tanlangan qurollar: ular yengil va ot ustida ishlatishga qulay. Og'ir qurol chavandozga to'g'ri kelmaydi.

Bunday buyumlar bugungi qazishmalarda ham uchraydi va ular Gerodotning tavsifini tasdiqlaydi. Ya'ni bu joyda yozma manba bilan arxeologiya bir-biriga mos keladi.$$
 WHERE topic_uz = $$Qurol-yarog'imiz$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Bu odat xo'jaligimizdan kelib chiqqan: ko'chmanchi hayotda ayol ham ot minadi, chorvani boqadi va zarur bo'lsa uni himoya qiladi.

O'troq xalqlarda mehnat boshqacha taqsimlangan va u yerda ayol jangchi kam uchraydi. Shu bois yunon mualliflari bizni hayrat bilan tasvirlagan.

Aynan shu odat mening hukmdor bo'lishimni tabiiy holga aylantirgan: xalq ayoldan buyruq olishga ko'nikkan edi.$$
 WHERE topic_uz = $$Xalqimda ayollar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Gerodotning yozishicha, o'g'lim qo'shinning bir qismiga boshchilik qilgan — ya'ni u shunchaki shahzoda emas, sarkarda edi.

Uni ochiq jangda yengishmagan, hiyla bilan qo'lga olishgan. Bu tafsilot muhim: rivoyatda dushmanning yutug'i mardlik bilan emas, ayyorlik bilan qo'lga kiritilgani ta'kidlanadi.

Shundan keyin urush men uchun boshqacha ma'no kasb etgan: bosqinchiga qarshi kurash oiladagi yo'qotish bilan qo'shilib ketgan.$$
 WHERE topic_uz = $$O'g'lim Sparangiz$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Quyoshni muqaddas bilish ko'chmanchi xalqlar orasida keng tarqalgan edi: dashtda hayot bevosita quyosh va fasllarga bog'liq.

Eng chopqir otni unga atash esa e'tiqodning naqadar jiddiy ekanini ko'rsatadi: ot ko'chmanchi uchun eng qimmatli mulk hisoblangan.

Bunday tafsilotlar Gerodot uchun ham qiziq bo'lgan. Uning asari faqat urushlar tarixi emas — u xalqlarning turmushi, e'tiqodi va odatlarini ham yozib qoldirgan.$$
 WHERE topic_uz = $$Quyoshga e'tiqod$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Tariximizda mendan keyin ham davlat ishida katta ta'sirga ega ayollar bo'lgan: temuriylar davrida Saroymulkxonim va Gavharshod begim shundaylar qatoriga kiradi.

Ammo mening o'rnim boshqacha: men nomi saqlanib qolgan eng qadimgi ayol hukmdorman va qo'shinni bevosita o'zim boshqarganman.

Bu ikki narsani bildiradi: birinchidan, yurtimizda ayol hokimiyati yangi hodisa emas; ikkinchidan, bu haqdagi xotira ikki yarim ming yil davomida saqlangan.$$
 WHERE topic_uz = $$Ilk ayol hukmdor$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

UPDATE fact_cards SET detail_uz = $$Ismning bolaga berilishi — xotiraning eng tirik shakli: u kitobda emas, odamlarning kundalik hayotida yashaydi.

Bundan tashqari nomim adabiyot va san'atda ishlatiladi: she'riy kitoblar, sahna asarlari va tasviriy san'atda mening obrazim uchraydi.

Ikki yarim ming yil oldingi voqeadan bugungi qizning ismigacha bo'lgan yo'l uzun. Uni bitta yunon kitobi va xalq xotirasi bosib o'tgan.$$
 WHERE topic_uz = $$Ismim bugun$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'tomaris');

-- ===================================== SHIROQ =====================================

UPDATE fact_cards SET detail_uz = $$Men hukmdor ham, sarkarda ham emasman — oddiy cho'ponman. Rivoyatimning asosiy ma'nosi shu: vatanni himoya qilish uchun unvon shart emas.

Cho'pon dashtni boshqacha biladi: qaysi so'qmoq qayerga olib boradi, qayerda quduq bor, qaysi joyda suv umuman yo'q. Bu bilim mening yagona qurolim bo'lgan.

Aynan shu bilim rejamning asosiga aylangan. Men dushmanni jangda emas, sahroda yengganman.$$
 WHERE topic_uz = $$Kimman?$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Behistun qoyatosh bitiklari — Ahamoniylar shohi buyrug'i bilan qoyaga o'yib yozilgan matn; unda saltanatga bo'ysunuvchi xalqlar sanab o'tilgan.

Bizni u yerda «uchi o'tkir kuloh kiyib yuruvchi» xalq deb ta'riflashgan. Bosh kiyim shu qadar o'ziga xos bo'lganki, u xalqning belgisiga aylangan.

Bu bitiklar tariximiz uchun qimmatli: ular qarshi tomon buyrug'i bilan yozilgan bo'lsa-da, o'sha davrda tuzilgan birlamchi hujjat hisoblanadi.$$
 WHERE topic_uz = $$Xalqim — saklar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Doro I — Kir II dan keyingi avlodning shohi; ya'ni forslar yurtimizga bir marta emas, qayta-qayta yurish qilgan.

Undan avval Kir II massagetlar ustiga yurgan va o'sha yurishda halok bo'lgan. Doro I esa saklarga qarshi chiqqan.

Bu takroriylik bir narsani ko'rsatadi: dasht chegarasi saltanat uchun hal qilinmagan masala bo'lib qolgan. Har bir yangi shoh uni qaytadan hal qilishga urinardi.$$
 WHERE topic_uz = $$Doro I yurishi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Reja oddiy va shafqatsiz edi: men o'zimni dushman tomoniga o'tgandek ko'rsatib, ularning ishonchiga kirishim kerak edi.

Bunday reja uchun ikki narsa zarur: dushman senga ishonishi va sen o'z odamlaringga tushuntirmasdan ketishing. Ikkalasi ham og'ir.

Rivoyatda men forslar qoshiga o'zim borganim aytiladi — ya'ni bu majburlash emas, ixtiyoriy qadam bo'lgan. Butun reja aynan shu qadamdan boshlangan.$$
 WHERE topic_uz = $$Rejam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$So'qmoqni faqat men bilardim — bu rejaning ishlashi uchun shart edi. Agar dushmanda mahalliy yo'lboshchi bo'lganida, aldov birinchi kuniyoq ochilardi.

Katta qo'shin uchun suvsiz cho'l eng xavfli joy: odam va ot kuniga ko'p suv talab qiladi, o'zi bilan olingan zaxira esa tez tugaydi.

Ochiq jangda men bu qo'shinga qarshi hech narsa qila olmasdim. Sahroda esa kuchlar tenglashgan — u yerda qurol emas, suv hal qiladi.$$
 WHERE topic_uz = $$Sahroga yo'l$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Yetti kun — qo'shin uchun qaytish imkoni yo'qolgan muddat. Birinchi kunlarda ortga qaytish mumkin edi, keyin esa yo'q: orqada ham suvsiz yo'l qolgan.

Aldanganini sezgan dushman uchun eng og'ir savol shu bo'lgan: oldinga yurishmi yoki ortga qaytish? Ikkala yo'l ham xavfli edi.

Men esa har kuni ular bilan birga yurganman — bu rejaning eng og'ir qismi bo'lgan. Yolg'onni yetti kun davomida ushlab turish jangdan qiyinroq.$$
 WHERE topic_uz = $$Yetti kunlik yo'l$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Rejam boshidanoq mening omon qolishimni nazarda tutmagan: aldov ochilgach, dushman meni tirik qoldirmasligi aniq edi.

Ya'ni men jangga emas, ongli ravishda o'limga borganman. Bu rivoyatimning eng muhim jihati.

Bunday tanlov faqat urushda uchramaydi. Uning ma'nosi kengroq: odam o'zidan katta narsa uchun o'zini qurbon qilishi mumkin.$$
 WHERE topic_uz = $$Fidoyilik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Natija shunda: butun bir yurish bitta odam tufayli barbod bo'lgan.

Bu qadimgi urushlarda kam uchraydigan hol. Odatda yurishning taqdirini qo'shin soni, qurol va sarkardaning mahorati hal qilardi. Bu safar esa yerni bilish hal qilgan.

Shu bois rivoyat asrlar davomida saqlangan: unda kuchsizning kuchlini yengish yo'li ko'rsatilgan.$$
 WHERE topic_uz = $$Natija$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Poliyen mendan qariyb yetti asr keyin yashagan muallif; u harbiy hiylalar to'plamini tuzgan va rivoyatimni shu kitobga kiritgan.

Ya'ni u meni ko'rmagan va voqeani og'zaki saqlangan sak rivoyatlaridan olgan. Yetti asr davomida hikoya og'izdan og'izga o'tgan.

Shuning uchun bu tarixiy hujjat emas, rivoyat. Ammo rivoyatning saqlanishi ham dalil: xalq eslab qolgan voqea uning uchun muhim bo'lgan.$$
 WHERE topic_uz = $$Rivoyat manbasi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Misrdan Hind daryosigacha — bu masofa o'sha davr uchun deyarli butun ma'lum dunyoni qamragan.

Bunday saltanatni boshqarish uchun yo'llar, chopar xizmati va viloyat hokimlari tizimi kerak bo'lgan; Ahamoniylarda bularning barchasi bo'lgan.

Ammo shimoliy dasht bu tizimga sig'magan. Ko'chmanchi xalqni bo'ysundirish qiyin: uning shahri yo'q, poytaxti yo'q — egallab olinadigan markaz yo'q.$$
 WHERE topic_uz = $$Ahamoniylar saltanati$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Uch nom uch guruhni bildiradi va ular bir-biridan joylashuvi hamda kiyimi bilan farq qilgan.

Bu nomlar bizga fors manbalaridan yetib kelgan: saltanat o'ziga qo'shni xalqlarni ro'yxatga olar va har biriga alohida nom berardi.

Ya'ni «saklar» — bitta qabila emas, qarindosh qabilalar guruhi. Bosqin xavfi paydo bo'lganda ular birlashgan; tinch davrda esa har biri o'z hayotini yashagan.$$
 WHERE topic_uz = $$Sak urug'lari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Sirdaryo bo'ylari, Orol atroflari va tog' etaklari — bu uch xil muhit va ular bir-birini to'ldiradi.

Ko'chmanchi xo'jalik aynan shunga tayanadi: yozda tog' yaylovlariga chiqiladi, qishda daryo bo'yiga tushiladi. Chorva yil davomida o't topadi.

Bu yerlar bizni himoya ham qilgan. Bosqinchi uchun bunday keng va bo'sh o'lkada dushmanni topishning o'zi muammo edi.$$
 WHERE topic_uz = $$Yashagan yerlarimiz$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Ot ko'chmanchi uchun shunchaki ulov emas: usiz na chorva boqib bo'ladi, na uzoq masofani bosib o'tish mumkin.

Shu bois bola erta yoshdan ot minishni o'rgangan. Kamondan ot ustida turib otish esa alohida mahorat — u yillar davomida mashq qilishni talab qiladi.

Aynan shu mahorat sak va massaget qo'shinlarini kuchli qilgan: otliq kamonchi uzoqdan zarba berib, yaqinlashmasdan chekina olardi.$$
 WHERE topic_uz = $$Chavandozlik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Gerodot massagetlar malikasi To'maris haqida ham yozgan muallif — ya'ni bitta kitobda yurtimizning ikki xalqi haqida ma'lumot bor.

Uning tavsifi ehtiyotkorlikni talab qiladi: u bizni o'z ko'zi bilan ko'rmagan va yunon o'quvchisi uchun yozgan.

Shunga qaramay yozganlari qimmatli. Boshqa manba deyarli yo'q: qadimgi dasht xalqlari o'z tarixini yozmagan, ular og'zaki xotiraga tayangan.$$
 WHERE topic_uz = $$Gerodot yozganlari$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Hikoyam darslikka aynan rivoyat sifatida kiritilgan — matnda bu ochiq aytiladi.

Bu to'g'ri yondashuv: bolaga faqat voqeani emas, ma'lumot qayerdan kelganini ham aytish kerak. Shunda u dalil bilan rivoyatni ajratishni o'rganadi.

Rivoyatning darslikdagi o'rni esa boshqa narsa uchun: u odamning tanlovi haqidagi hikoya, bunday hikoya esa har qanday davrda tushunarli bo'ladi.$$
 WHERE topic_uz = $$Darsliklarda o'rnim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');

UPDATE fact_cards SET detail_uz = $$Ming yillar davomida saqlanish uchun rivoyat oddiy va kuchli bo'lishi kerak. Meniki shunday: bir cho'pon, bir yolg'on va yetti kunlik yo'l.

Nomim bugun sadoqat va fidoyilik ramzi sifatida ishlatiladi: u maktab darsliklarida hamda adabiyotda uchraydi.

Qizig'i shundaki, men haqimda hech qanday hujjat yo'q — na qabr, na yozuv, na tanga. Faqat hikoya qolgan. Ba'zan hikoyaning o'zi eng mustahkam yodgorlik bo'lib chiqadi.$$
 WHERE topic_uz = $$Xotiram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'shiroq');
