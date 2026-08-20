-- Rossiya tarixi: fakt kartochkalari, 1-partiya (country = 'RU').
--
-- MANBA. Sanalar IKS ning «События/даты» ro'yxatlaridan olingan — o'sha PDF
-- dan, ajdodlar ro'yxati bilan bir vaqtda ajratildi (11 blok, 305 sana).
-- Har bir sanali kartochka o'sha ro'yxatga tayanadi.
--
-- NEGA KARTOCHKA KERAK. Ajdod faqat kartochkalar asosida javob beradi.
-- Kartochkasiz ajdod sahifasi «kartochkalar hali yig'ilmagan» deb turadi —
-- V302 dan keyin barcha 41 ajdod shu holatda edi.
--
-- TUZILISH. `fact_*` — old tomon, qisqa javob birinchi shaxsda.
-- `detail_*` — orqa tomon, kengaytma. O'zbek tarmog'idagi bilan bir xil.
--
-- TEKSHIRUV KERAK. `verified = false`. Metodist-tarixchi tasdig'igacha bu
-- kartochkalar «tekshirilgan» deb ko'rsatilmaydi.

INSERT INTO fact_cards (hero_id, era_id, country, topic_ru, topic_uz,
                        question_ru, question_uz, fact_ru, fact_uz,
                        detail_ru, detail_uz, keywords, source, verified)
SELECT h.id, h.era_id, 'RU', v.topic_ru, v.topic_uz, v.q_ru, v.q_uz,
       v.fact_ru, v.fact_uz, v.detail_ru, v.detail_uz,
       v.kw::jsonb,
       'Историко-культурный стандарт (перечень событий, дат и персоналий)',
       false
FROM (VALUES

-- ===================== Княгиня Ольга =====================
('knyaginya-olga', 'Правление', 'Hukmronlik',
 'Как вы стали править Русью?', 'Rusni qanday boshqara boshladingiz?',
 'После гибели моего мужа князя Игоря я приняла управление Русью, потому что наш сын Святослав был ещё мал.',
 'Erim knyaz Igor halok bo''lgach, Rusni boshqarishni o''z zimmamga oldim, chunki o''g''limiz Svyatoslav hali kichkina edi.',
 'Древляне убили Игоря, когда он пришёл за данью во второй раз. Я осталась с малолетним сыном на руках и с землёй, где каждый мог решить, что власть ослабла.

Мне пришлось показать, что это не так. А затем — сделать так, чтобы подобное не повторилось: беда была не только в древлянах, но и в самом порядке сбора дани.',
 'Drevlyanlar Igorni ikkinchi marta soliq uchun kelganida o''ldirishdi. Men yosh o''g''lim bilan va hokimiyat zaiflashdi deb o''ylash mumkin bo''lgan yurt bilan qoldim.

Buning aksini ko''rsatishim kerak edi. Keyin esa bunday hol takrorlanmasligiga erishish: bало faqat drevlyanlarda emas, soliq yig''ish tartibining o''zida edi.',
 '["ольга","игорь","святослав","древляне","правление"]'),

('knyaginya-olga', 'Уроки и погосты', 'Urok va pogostlar',
 'Что такое уроки и погосты?', 'Urok va pogost nima?',
 'Я установила уроки — точный размер дани, и погосты — постоянные места её сбора. До этого дань собирали как придётся.',
 'Men urokni — soliqning aniq miqdorini va pogostni — uni yig''ishning doimiy joyini belgiladim. Bungacha soliq qanday to''g''ri kelsa shunday yig''ilardi.',
 'Раньше князь с дружиной объезжал земли и брал столько, сколько считал нужным. Это называлось полюдьем — и именно на нём погиб мой муж.

Урок — это норма: сколько платить. Погост — это место и срок: куда и когда привозить. Вместе они превратили сбор дани из набега в порядок. Так на Руси появился первый признак настоящего государства: правило, одинаковое для всех.',
 'Ilgari knyaz drujinasi bilan yerlarni aylanib chiqar va o''zi zarur deb bilgancha olardi. Bu «polyude» deb atalardi — erim aynan shunda halok bo''lgan.

Urok — bu me''yor: qancha to''lash kerak. Pogost — bu joy va muddat: qayerga va qachon keltirish kerak. Ikkalasi birgalikda soliq yig''ishni bosqindan tartibga aylantirdi. Shu tariqa Rusda haqiqiy davlatning birinchi belgisi paydo bo''ldi: hamma uchun bir xil qoida.',
 '["уроки","погосты","дань","полюдье","реформа"]'),

('knyaginya-olga', 'Крещение', 'Suvga cho''mish',
 'Почему вы приняли христианство?', 'Nega nasroniylikni qabul qildingiz?',
 'Я приняла христианство первой из русских правителей — задолго до того, как крестилась вся Русь.',
 'Rus hukmdorlari orasida birinchi bo''lib nasroniylikni qabul qildim — butun Rus suvga cho''mishidan ancha avval.',
 'Крещение я приняла в Константинополе — в столице тогдашнего христианского мира. Для правительницы это был и духовный, и государственный шаг: он менял место Руси среди других держав.

Сын мой Святослав за мной не пошёл: он был воином и остался при вере отцов. А вот внук — Владимир — крестил всю Русь через несколько десятилетий после меня.',
 'Suvga cho''mishni Konstantinopolda — o''sha davr nasroniy dunyosining poytaxtida qabul qildim. Hukmdor uchun bu ham ma''naviy, ham davlat qadami edi: u Rusning boshqa davlatlar orasidagi o''rnini o''zgartirardi.

O''g''lim Svyatoslav ortimdan bormadi: u jangchi edi va ota-bobolar dinida qoldi. Nabiram Vladimir esa mendan bir necha o''n yil keyin butun Rusni suvga cho''mdirdi.',
 '["крещение","константинополь","христианство","владимир"]'),

-- ===================== Владимир Святой =====================
('vladimir-svyatoy', 'Крещение Руси', 'Rusning suvga cho''mishi',
 'Когда произошло крещение Руси?', 'Rus qachon suvga cho''mgan?',
 'Крещение Руси произошло в 988 году. С этого начинается христианская история моей страны.',
 'Rusning suvga cho''mishi 988-yilda bo''lgan. Mamlakatimning nasroniylik tarixi shundan boshlanadi.',
 'Эта дата стоит в каждом учебнике: 988 год. Но за ней — годы выбора. Я посылал людей смотреть, как молятся в разных землях, и слушал послов разных вер.

Вместе с верой на Русь пришли письменность, каменное строительство, книги и связь с Византией — самой богатой державой того времени. Крещение изменило не только храмы, но и то, чем стала русская культура.',
 'Bu sana har bir darslikda turadi: 988-yil. Ammo uning ortida — tanlov yillari. Men odamlarni turli yurtlarda qanday ibodat qilishlarini ko''rish uchun yuborganman va turli din elchilarini tinglaganman.

Din bilan birga Rusga yozuv, tosh binokorlik, kitoblar va o''sha davrning eng boy davlati — Vizantiya bilan aloqa keldi. Suvga cho''mish nafaqat ibodatxonalarni, balki rus madaniyatining o''zini o''zgartirdi.',
 '["988","крещение руси","византия","вера","письменность"]'),

('vladimir-svyatoy', 'Выбор веры', 'Din tanlash',
 'Как вы выбирали веру?', 'Dinni qanday tanlagansiz?',
 'Прежде чем креститься, я отправил послов в разные земли — посмотреть, как там служат Богу.',
 'Suvga cho''mishdan avval turli yurtlarga elchilar yubordim — u yerda Xudoga qanday xizmat qilishlarini ko''rish uchun.',
 'Летопись рассказывает, что послы вернулись из Константинополя поражёнными: они не могли понять, на земле они были или на небе.

Историки спорят, насколько буквально это было. Но сам выбор — не случайность: Византия была ближайшей великой державой, с ней шла торговля по пути «из варяг в греки», и её вера связывала Русь с большим миром.',
 'Solnomada aytilishicha, elchilar Konstantinopoldan hayratda qaytishgan: ular yerda bo''lganmi yoki osmondami — tushunolmagan.

Tarixchilar buning qanchalik so''zma-so''z ekani haqida bahslashadi. Ammo tanlovning o''zi tasodif emas: Vizantiya eng yaqin buyuk davlat edi, u bilan «varyaglardan greklarga» yo''li orqali savdo borardi va uning dini Rusni katta dunyoga bog''lardi.',
 '["выбор веры","послы","византия","летопись"]'),

-- ===================== Ярослав Мудрый =====================
('yaroslav-mudryy', '«Русская Правда»', '«Rus Pravdasi»',
 'Что такое «Русская Правда»?', '«Rus Pravdasi» nima?',
 '«Русская Правда» — первый свод письменных законов Руси, составленный при мне.',
 '«Rus Pravdasi» — mening davrimda tuzilgan, Rusning birinchi yozma qonunlar to''plami.',
 'До неё спорили по обычаю: как деды решали, так и решаем. Обычай хорош, пока все его помнят одинаково, — а помнят по-разному.

Записанный закон убирает этот спор. В «Русской Правде» сказано, что полагается за обиду, за увечье, за кражу. Важно и другое: она постепенно вытесняла кровную месть, заменяя её вирой — денежным взысканием. Это шаг от мести к суду.',
 'Undan avval odat bo''yicha hal qilinardi: bobolarimiz qanday hal qilgan bo''lsa, biz ham shunday. Odat hamma uni bir xil eslaganda yaxshi — eslash esa har xil bo''ladi.

Yozib qo''yilgan qonun bu bahsni yo''qotadi. «Rus Pravdasi»da haqorat, mayib qilish va o''g''rilik uchun nima berilishi aytilgan. Yana bir muhim jihat: u asta-sekin qon qasosini siqib chiqarib, o''rniga «vira» — pul jarimasini qo''ygan. Bu qasosdan sudga qadam.',
 '["русская правда","законы","вира","суд","обычай"]'),

('yaroslav-mudryy', 'Книги и храмы', 'Kitob va ibodatxonalar',
 'Почему вас прозвали Мудрым?', 'Nega sizni Donishmand deb atashgan?',
 'Я собирал книги, ставил храмы и школы. Прозвище пришло позже — от того, что осталось после меня.',
 'Kitob to''pladim, ibodatxona va maktablar qurdirdim. Laqab keyinroq keldi — mendan keyin qolgan narsalar tufayli.',
 'При мне в Киеве встал собор Святой Софии, а при нём — собрание книг, которое считают первой библиотекой на Руси. Книги переводили с греческого, и это было делом дорогим: пергамент стоил как хорошая лошадь.

Мои дочери стали королевами Норвегии, Венгрии и Франции — Русь была державой, с которой роднились. Прозвище «Мудрый» дали мне историки много позже; современники звали иначе.',
 'Mening davrimda Kievda Muqaddas Sofiya sobori qad rostladi, uning qoshida esa Rusdagi birinchi kutubxona deb hisoblanadigan kitoblar to''plami paydo bo''ldi. Kitoblar grek tilidan tarjima qilinardi va bu qimmat ish edi: pergament yaxshi otcha turardi.

Qizlarim Norvegiya, Vengriya va Fransiya malikalari bo''ldi — Rus quda bo''linadigan davlat edi. «Donishmand» laqabini menga ancha keyin tarixchilar bergan; zamondoshlarim boshqacha atardi.',
 '["софия","библиотека","книги","дочери","мудрый"]'),

-- ===================== Александр Невский =====================
('aleksandr-nevskiy', 'Невская битва', 'Neva jangi',
 'Что произошло на Неве в 1240 году?', '1240-yilda Nevada nima bo''lgan?',
 '15 июля 1240 года мы разбили шведский отряд в устье Ижоры, при впадении её в Неву. За эту победу меня прозвали Невским.',
 '1240-yil 15-iyulda Ijoraning Nevaga quyilish joyida shved otryadini tor-mor etdik. Shu g''alaba uchun meni Nevskiy deb atashgan.',
 'Новгород жил торговлей по воде, и устье Невы было воротами этой торговли. Потерять их значило потерять выход к морю.

Мы выступили быстро и малыми силами, не дожидаясь подкреплений, — и ударили внезапно. В таких случаях побеждает не число, а скорость решения.',
 'Novgorod suv orqali savdo bilan yashardi va Neva quyilishi shu savdoning darvozasi edi. Uni yo''qotish dengizga chiqishni yo''qotish degani edi.

Biz tez va oz kuch bilan, yordam kutmasdan chiqdik — va kutilmaganda zarba berdik. Bunday hollarda son emas, qaror tezligi g''alaba qozonadi.',
 '["нева","1240","ижора","шведы","новгород"]'),

('aleksandr-nevskiy', 'Ледовое побоище', 'Muzdagi jang',
 'Что такое Ледовое побоище?', 'Muzdagi jang nima?',
 '5 апреля 1242 года на льду Чудского озера мы разбили войско Ливонского ордена.',
 '1242-yil 5-aprelda Chud ko''li muzida Livon ordeni qo''shinini tor-mor etdik.',
 'Рыцари шли клином — тяжёлой конной колонной, которая пробивает строй насквозь. Против такого удара бесполезно стоять ровной стеной.

Мы позволили клину войти в наш строй и сомкнули крылья с боков. Лёд здесь тоже сыграл роль: тяжёлому всаднику на нём хуже, чем пешему. Битва остановила продвижение ордена на восток.',
 'Ritsarlar xanjar shaklida — safni teshib o''tadigan og''ir otliq ustun bo''lib kelardi. Bunday zarbaga tekis devor bo''lib turishning foydasi yo''q.

Biz xanjarning safimizga kirishiga yo''l qo''ydik va qanotlarni yon tomondan yopdik. Muz ham o''z rolini o''ynadi: og''ir chavandozga unda piyodadan ko''ra qiyinroq. Jang ordenning sharqqa siljishini to''xtatdi.',
 '["ледовое побоище","1242","чудское озеро","ливонский орден","клин"]'),

-- ===================== Дмитрий Донской =====================
('dmitriy-donskoy', 'Куликовская битва', 'Kulikovo jangi',
 'Когда была Куликовская битва?', 'Kulikovo jangi qachon bo''lgan?',
 '8 сентября 1380 года на Куликовом поле мы сошлись с войском Мамая — и одержали победу.',
 '1380-yil 8-sentabrda Kulikovo maydonida Mamay qo''shini bilan to''qnashdik — va g''alaba qozondik.',
 'На поле вышли полки из многих русских земель — и это было главным. До того каждый князь бился за себя.

Исход решил засадный полк, стоявший в дубраве и ударивший в нужную минуту. Ордынская зависимость после Куликова не кончилась — до этого оставалось ещё сто лет. Но стало ясно, что Орду можно побеждать.',
 'Maydonga ko''plab rus yerlaridan polklar chiqdi — asosiysi shu edi. Bungacha har bir knyaz o''zi uchun jang qilardi.

Natijani eman o''rmonida turgan va kerakli daqiqada zarba bergan pistirma polki hal qildi. Kulikovodan keyin O''rdaga qaramlik tugamadi — bunga yana yuz yil bor edi. Ammo O''rdani yengish mumkinligi ayon bo''ldi.',
 '["куликово","1380","мамай","засадный полк","орда"]'),

-- ===================== Иван III =====================
('ivan-3', 'Стояние на Угре', 'Ugradagi turish',
 'Как закончилась зависимость от Орды?', 'O''rdaga qaramlik qanday tugagan?',
 'В 1480 году наши войска и войско хана Ахмата стояли по берегам реки Угры. Хан ушёл, не начав битвы, — и ордынская зависимость кончилась.',
 '1480-yilda qo''shinlarimiz va Ahmadxon qo''shini Ugra daryosining ikki qirg''og''ida turdi. Xon jang boshlamasdan ketdi — va O''rdaga qaramlik tugadi.',
 'Событие, у которого нет батальной картины: две рати стояли друг против друга, пытались перейти реку, не сумели и ждали.

Это редкий случай, когда история поворачивается без сражения. За спиной у меня была уже собранная вокруг Москвы держава, и хан это видел. Иногда исход решает не бой, а то, что накопилось до него.',
 'Jang manzarasi bo''lmagan voqea: ikki qo''shin bir-biriga qarshi turdi, daryodan o''tishga urindi, uddalay olmadi va kutdi.

Bu tarix jangsiz buriladigan kam uchraydigan hol. Ortimda Moskva atrofida allaqachon yig''ilgan davlat bor edi va xon buni ko''rdi. Ba''zan natijani jang emas, undan avval to''plangan narsa hal qiladi.',
 '["угра","1480","ахмат","орда","независимость"]'),

-- ===================== Иван IV Грозный =====================
('ivan-groznyy', 'Венчание на царство', 'Podsholik tojini kiyish',
 'Когда вы приняли царский титул?', 'Podsholik unvonini qachon oldingiz?',
 'В 1547 году я венчался на царство — первым из русских правителей принял титул царя.',
 '1547-yilda podsholik tojini kiydim — rus hukmdorlari orasida birinchi bo''lib podsho unvonini oldim.',
 'До этого правители Руси звались великими князьями. Царь — слово другого веса: так на Руси называли византийского императора и ордынского хана.

Приняв этот титул, я поставил своё государство вровень с ними. Это был не только обряд, но и заявление: Москва больше не улус и не окраина.',
 'Bungacha Rus hukmdorlari buyuk knyaz deb atalardi. Podsho — boshqa vazndagi so''z: Rusda Vizantiya imperatori va O''rda xoni shunday atalardi.

Bu unvonni olib, davlatimni ular bilan bir qatorga qo''ydim. Bu faqat marosim emas, balki bayonot ham edi: Moskva endi ulus ham, chekka ham emas.',
 '["1547","царь","венчание","титул","москва"]'),

('ivan-groznyy', 'Земский собор', 'Zemskiy sobor',
 'Что такое Земский собор?', 'Zemskiy sobor nima?',
 'Земский собор — совет, куда съезжались люди из разных сословий и земель. Первый был созван при мне.',
 'Zemskiy sobor — turli tabaqa va yerlardan odamlar yig''iladigan kengash. Birinchisi mening davrimda chaqirilgan.',
 'Царь правит, но страна велика, и из Кремля не видно, что делается на её краю. Собор давал возможность услышать тех, кто живёт там.

На соборы съезжались бояре, духовенство, служилые люди, позже — посадские и черносошные крестьяне. Решения принимал царь, но выслушав. В Смутное время именно Земский собор изберёт нового царя — значит, этот орган оказался прочнее, чем один правитель.',
 'Podsho boshqaradi, ammo mamlakat katta va Kremldan uning chekkasida nima bo''layotgani ko''rinmaydi. Sobor u yerda yashaydiganlarni eshitish imkonini berardi.

Soborlarga boyarlar, ruhoniylar, xizmat ahli, keyinroq esa posad va qora ekin dehqonlari yig''ilardi. Qarorni podsho qabul qilardi, ammo eshitgach. Notinch davrda aynan Zemskiy sobor yangi podshoni saylaydi — demak, bu organ bitta hukmdordan mustahkamroq bo''lib chiqdi.',
 '["земский собор","сословия","бояре","совет"]'),

-- ===================== Пётр I =====================
('petr-1', 'Основание Петербурга', 'Peterburgga asos solish',
 'Когда основан Санкт-Петербург?', 'Sankt-Peterburg qachon asos solingan?',
 'Санкт-Петербург основан 16 мая 1703 года — на отвоёванной у шведов земле в устье Невы.',
 'Sankt-Peterburg 1703-yil 16-mayda — Neva quyilishida shvedlardan qaytarib olingan yerda asos solingan.',
 'Место было болотистое и неудобное — и выбрано именно поэтому: здесь река выходит в море. Стране нужен был порт, а не удобная площадка.

Город строили тяжело: сваи, насыпи, тысячи работных людей. Через девять лет он стал столицей и оставался ею более двухсот лет. Пётр называл его «окном в Европу» — но окно это прорубали руками.',
 'Joy botqoqli va noqulay edi — aynan shuning uchun tanlangan: bu yerda daryo dengizga chiqadi. Mamlakatga qulay maydon emas, port kerak edi.

Shahar og''ir qurildi: qoziqlar, tuproq uyumlari, minglab ishchi. To''qqiz yildan keyin u poytaxtga aylandi va ikki yuz yildan ortiq shunday qoldi. Pyotr uni «Yevropaga deraza» deb atagan — ammo bu derazani qo''l bilan o''yishgan.',
 '["1703","петербург","нева","порт","окно в европу"]'),

('petr-1', 'Полтавская битва', 'Poltava jangi',
 'Что решила Полтавская битва?', 'Poltava jangi nimani hal qilgan?',
 '27 июня 1709 года под Полтавой мы разбили армию Карла XII. Это решило исход Северной войны.',
 '1709-yil 27-iyunda Poltava ostida Karl XII armiyasini tor-mor etdik. Bu Shimoliy urush taqdirini hal qildi.',
 'Шведская армия считалась лучшей в Европе, и до Полтавы она нас била — под Нарвой в 1700 году разгром был полный.

Девять лет между Нарвой и Полтавой ушли на то, чтобы построить другую армию: свои пушки, свои офицеры, свой устав. Полтава показала, что эти девять лет были потрачены не зря. Северная война закончится Ништадтским миром в 1721 году.',
 'Shved armiyasi Yevropadagi eng yaxshisi hisoblanardi va Poltavagacha u bizni yengardi — 1700-yilda Narva ostida mag''lubiyat to''liq edi.

Narva bilan Poltava orasidagi to''qqiz yil boshqa armiya qurishga ketdi: o''z to''plarimiz, o''z ofitserlarimiz, o''z nizomimiz. Poltava bu to''qqiz yil bekorga ketmaganini ko''rsatdi. Shimoliy urush 1721-yilda Nishtadt sulhi bilan tugaydi.',
 '["полтава","1709","карл двенадцатый","северная война","нарва"]'),

('petr-1', 'Империя', 'Imperiya',
 'Когда Россия стала империей?', 'Rossiya qachon imperiyaga aylangan?',
 'В 1721 году, после Ништадтского мира, Россия была провозглашена империей, а я принял титул императора.',
 '1721-yilda, Nishtadt sulhidan keyin Rossiya imperiya deb e''lon qilindi, men esa imperator unvonini oldim.',
 'Титул не даётся сам по себе — он признаётся другими. К 1721 году за спиной была выигранная война, выход к Балтике, флот и новая столица.

Империя — это не только слово. Это другая система управления: коллегии вместо приказов, Табель о рангах вместо родовитости, Сенат вместо Боярской думы. Страну перестраивали целиком, и далеко не всем это давалось легко.',
 'Unvon o''z-o''zidan berilmaydi — uni boshqalar tan oladi. 1721-yilga kelib ortda yutilgan urush, Boltiqqa chiqish, flot va yangi poytaxt bor edi.

Imperiya — bu faqat so''z emas. Bu boshqa boshqaruv tizimi: prikazlar o''rniga kollegiyalar, nasl-nasab o''rniga Ranglar jadvali, Boyar dumasi o''rniga Senat. Mamlakat butunlay qayta qurildi va bu hammaga ham oson kelmadi.',
 '["1721","империя","ништадтский мир","сенат","табель о рангах"]'),

-- ===================== Ломоносов =====================
('lomonosov', 'Дорога в Москву', 'Moskvaga yo''l',
 'Как вы попали учиться в Москву?', 'Moskvaga o''qishga qanday borgansiz?',
 'Я ушёл из родного села на Севере с рыбным обозом и добирался до Москвы пешком — мне было девятнадцать лет.',
 'Shimoldagi tug''ilgan qishlog''imdan baliq karvoni bilan chiqdim va Moskvagacha piyoda bordim — o''shanda o''n to''qqiz yoshda edim.',
 'Чтобы поступить в Славяно-греко-латинскую академию, мне пришлось назваться сыном дворянина: крестьянских детей туда не брали.

Я сидел в младших классах вместе с мальчишками, которые смеялись над взрослым «болваном», пришедшим учить латынь. Жил на три копейки в день: на копейку хлеба, на копейку кваса, остальное — на бумагу и свечи.',
 'Slavyan-grek-lotin akademiyasiga kirish uchun o''zimni dvoryan o''g''li deb atashimga to''g''ri keldi: dehqon bolalarini u yerga olishmasdi.

Lotin tilini o''rganishga kelgan katta yoshli «gо''l» ustidan kulgan bolalar bilan birga quyi sinflarda o''tirdim. Kuniga uch tiyinga yashardim: bir tiyinga non, bir tiyinga kvas, qolgani — qog''oz va shamga.',
 '["ломоносов","академия","москва","обоз","учеба"]'),

('lomonosov', 'Университет', 'Universitet',
 'Как появился Московский университет?', 'Moskva universiteti qanday paydo bo''lgan?',
 'Московский университет открылся по проекту, который я составил вместе с Иваном Шуваловым.',
 'Moskva universiteti men Ivan Shuvalov bilan birga tuzgan loyiha asosida ochilgan.',
 'Я настаивал на главном: учиться должны все, кто способен, а не только дворяне. И преподавать надо по-русски, а не только на латыни.

В университете открыли три факультета — философский, юридический и медицинский. Богословского не было, и это тоже было решением: университет задумывался как светский. Сегодня он носит моё имя.',
 'Men asosiy narsada turib oldim: faqat dvoryanlar emas, qobiliyatli hamma o''qishi kerak. Va faqat lotinchada emas, rus tilida dars berish kerak.

Universitetda uchta fakultet ochildi — falsafa, huquq va tibbiyot. Ilohiyot fakulteti yo''q edi va bu ham qaror edi: universitet dunyoviy sifatida o''ylangan. Bugun u mening nomimni yuritadi.',
 '["университет","шувалов","факультеты","образование"]'),

-- ===================== Пушкин =====================
('pushkin', 'Лицей', 'Litsey',
 'Что дал вам Лицей?', 'Litsey sizga nima berdi?',
 'В Царскосельском лицее я провёл шесть лет и там впервые понял, что буду поэтом.',
 'Tsarskoye Selo litseyida olti yil o''tkazdim va u yerda birinchi marta shoir bo''lishimni angladim.',
 'Лицей открыли для мальчиков, которых готовили к государственной службе. Нас было тридцать человек, и мы прожили эти годы вместе, почти не выезжая.

Там я прочёл свои стихи Державину — старому поэту, уходящей эпохе. Там же появились друзья на всю жизнь: Пущин, Дельвиг, Кюхельбекер. Лицейскую годовщину, 19 октября, мы отмечали потом всю жизнь.',
 'Litsey davlat xizmatiga tayyorlanadigan o''g''il bolalar uchun ochilgan. Bizni o''ttiz kishi edik va bu yillarni deyarli chiqmasdan birga o''tkazdik.

U yerda she''rlarimni Derjavinga — keksa shoirga, ketayotgan davrga o''qib berdim. O''sha yerda umrbod do''stlar paydo bo''ldi: Pushchin, Delvig, Kyuxelbeker. Litsey yilligini, 19-oktabrni keyin butun umr nishonladik.',
 '["лицей","царское село","державин","пущин","19 октября"]'),

('pushkin', 'Няня', 'Enaga',
 'Кто рассказывал вам сказки?', 'Sizga ertaklarni kim aytib bergan?',
 'Сказки мне рассказывала няня Арина Родионовна. Многое из её слов потом легло в мои стихи.',
 'Ertaklarni menga enagam Arina Rodionovna aytib berardi. Uning so''zlaridan ko''pi keyin she''rlarimga kirdi.',
 'В ссылке в Михайловском я жил почти безвыездно, и вечера мы коротали вдвоём. Она говорила складно, как говорят те, кто держит язык от старших.

Я записывал за ней — не для красоты, а чтобы не забыть оборот. Народная речь дала моим сказкам то, чего не даёт книжный язык: они звучат так, будто их не сочинили, а вспомнили.',
 'Mixaylovskoyedagi surgunda deyarli chiqmasdan yashadim va oqshomlarni ikkalamiz o''tkazardik. U kattalardan til olganlar kabi ravon gapirardi.

Men uning ortidan yozib borardim — go''zallik uchun emas, iborani unutmaslik uchun. Xalq nutqi ertaklarimga kitobiy til bermaydigan narsani berdi: ular to''qilgandek emas, eslangandek yangraydi.',
 '["няня","арина родионовна","михайловское","сказки","народная речь"]'),

-- ===================== Менделеев =====================
('mendeleev', 'Периодический закон', 'Davriy qonun',
 'В чём суть периодического закона?', 'Davriy qonunning mohiyati nimada?',
 'Свойства элементов повторяются периодически, если расставить элементы по возрастанию атомного веса.',
 'Agar elementlarni atom og''irligi ortishi bo''yicha tersak, ularning xossalari davriy takrorlanadi.',
 'До меня элементы знали по отдельности — как разрозненный список. Я искал, что их связывает, и нашёл: повторяемость.

Это значило, что элементы — не случайный набор, а система. А у системы есть места, которые обязаны быть заняты, даже если мы ещё ничего в них не положили.',
 'Mendan avval elementlarni alohida-alohida bilishardi — tarqoq ro''yxat kabi. Men ularni nima bog''lashini izladim va topdim: takrorlanuvchanlik.

Bu elementlar tasodifiy to''plam emas, tizim ekanini bildirardi. Tizimda esa hali hech narsa qo''ymagan bo''lsak ham, band bo''lishi shart bo''lgan joylar bo''ladi.',
 '["периодический закон","элементы","атомный вес","система"]'),

('mendeleev', 'Пустые клетки', 'Bo''sh kataklar',
 'Зачем в таблице были пустые клетки?', 'Jadvalda nega bo''sh kataklar bo''lgan?',
 'Я оставил в таблице пустые места для элементов, которые ещё не были открыты, и предсказал их свойства.',
 'Jadvalda hali kashf etilmagan elementlar uchun bo''sh joy qoldirdim va ularning xossalarini oldindan aytdim.',
 'Это была самая рискованная часть работы. Одно дело — упорядочить известное. Другое — сказать: здесь должен быть элемент, вот его примерный вес и вот как он себя поведёт.

Через несколько лет нашли галлий, затем скандий и германий — и свойства совпали с предсказанными. Именно это превратило таблицу из удобного списка в закон: закон умеет предсказывать.',
 'Bu ishning eng tavakkalli qismi edi. Ma''lumni tartibga solish — bir gap. «Bu yerda element bo''lishi kerak, taxminiy og''irligi shu va o''zini shunday tutadi» deyish — boshqa gap.

Bir necha yildan keyin galliy, keyin skandiy va germaniy topildi — xossalari oldindan aytilganiga to''g''ri keldi. Aynan shu jadvalni qulay ro''yxatdan qonunga aylantirdi: qonun oldindan ayta oladi.',
 '["пустые клетки","галлий","скандий","германий","предсказание"]'),

-- ===================== Гагарин =====================
('gagarin', 'Первый полёт', 'Birinchi parvoz',
 'Когда вы полетели в космос?', 'Kosmosga qachon uchgansiz?',
 '12 апреля 1961 года я поднялся в космос на корабле «Восток». Полёт длился 108 минут — один виток вокруг Земли.',
 '1961-yil 12-aprelda «Vostok» kemasida kosmosga ko''tarildim. Parvoz 108 daqiqa davom etdi — Yer atrofida bir aylanish.',
 'До меня туда не летал никто, и никто не знал наверняка, что будет с человеком в невесомости. Врачи спорили, сможет ли он вообще сохранить рассудок.

Поэтому управление кораблём было автоматическим, а код для ручного режима лежал в запечатанном конверте. Проверять пришлось собой — это и называется первым полётом.',
 'Mendan avval u yerga hech kim uchmagan va vaznsizlikda odam bilan nima bo''lishini hech kim aniq bilmasdi. Shifokorlar u umuman aqlini saqlay oladimi, deb bahslashardi.

Shuning uchun kemani boshqarish avtomatik edi, qo''lda boshqarish kodi esa muhrlangan konvertda yotardi. Tekshirishga o''zim bilan to''g''ri keldi — birinchi parvoz shu degani.',
 '["12 апреля","1961","восток","108 минут","невесомость"]'),

('gagarin', '«Поехали!»', '«Ketdik!»',
 'Почему вы сказали «Поехали!»?', 'Nega «Ketdik!» degansiz?',
 'Это слово вырвалось само, при старте. Оно не было записано ни в какой инструкции.',
 'Bu so''z start paytida o''z-o''zidan chiqib ketdi. U hech qanday yo''riqnomada yozilmagandi.',
 'Так говорили шофёры и лётчики — обычное слово, с которым трогаются с места. Ничего торжественного в нём нет.

Может быть, поэтому оно и запомнилось. Событие было небывалым, а слово — совершенно простым, человеческим. Люди запоминают именно такие несовпадения.',
 'Shofyorlar va uchuvchilar shunday aytardi — joyidan qo''zg''alayotganda aytiladigan oddiy so''z. Unda hech qanday tantanavorlik yo''q.

Ehtimol shuning uchun ham esda qolgan. Voqea misli ko''rilmagan, so''z esa mutlaqo oddiy, insoniy edi. Odamlar aynan shunday nomuvofiqlikni eslab qoladi.',
 '["поехали","старт","байконур","слово"]')

) AS v(slug, topic_ru, topic_uz, q_ru, q_uz, fact_ru, fact_uz, detail_ru, detail_uz, kw)
JOIN heroes h ON h.slug = v.slug AND h.country = 'RU';
