-- Rossiya tarixi: voqealar lentasi (country = 'RU').
--
-- MANBA. Har bir sana IKS ning «События/даты» ro'yxatidan olingan (o'sha PDF,
-- 11 blok, 305 sana — `docs/iks_sanalar.json`). Ro'yxatda yo'q voqea
-- qo'shilmadi.
--
-- NEGA MUHIM. Voqealar lentasi davrlar bilan ajdodlarni bog'laydi: bola
-- «Voqealar» sahifasida davrni tanlab, o'sha zamonda nima bo'lganini ko'radi.
-- V300–V304 dan keyin RU lentasi butunlay bo'sh edi.

INSERT INTO historical_events (era_id, country, year_from, year_to,
                               title_ru, title_uz, description_ru, description_uz,
                               location_ru, location_uz)
SELECT e.id, 'RU', v.y_from, v.y_to, v.t_ru, v.t_uz, v.d_ru, v.d_uz, v.loc_ru, v.loc_uz
FROM (VALUES

('rus-drevnyaya', 862, NULL, '«Призвание» Рюрика', 'Ryurikning «chorlanishi»',
 'Летописная дата начала русской государственности: Рюрик приходит княжить в Новгород.',
 'Rus davlatchiligi boshlanishining solnomadagi sanasi: Ryurik Novgorodga knyazlik qilish uchun keladi.',
 'Новгород', 'Novgorod'),

('rus-drevnyaya', 882, NULL, 'Захват Олегом Киева', 'Olegning Kievni egallashi',
 'Олег объединяет север и юг: Новгород и Киев оказываются под одной властью.',
 'Oleg shimol va janubni birlashtiradi: Novgorod va Kiev bir hokimiyat ostiga o''tadi.',
 'Киев', 'Kiev'),

('rus-drevnyaya', 988, NULL, 'Крещение Руси', 'Rusning suvga cho''mishi',
 'Владимир Святославич принимает христианство. С этого начинается христианская культура Руси: письменность, книги, каменные храмы.',
 'Vladimir Svyatoslavich nasroniylikni qabul qiladi. Rusning nasroniy madaniyati shundan boshlanadi: yozuv, kitoblar, tosh ibodatxonalar.',
 'Киев', 'Kiev'),

('rus-drevnyaya', 1240, NULL, 'Невская битва', 'Neva jangi',
 'Александр Ярославич разбивает шведский отряд в устье Ижоры. За эту победу его прозовут Невским.',
 'Aleksandr Yaroslavich Ijora quyilishida shved otryadini tor-mor etadi. Shu g''alaba uchun uni Nevskiy deb ataydilar.',
 'Устье Ижоры', 'Ijora quyilishi'),

('rus-drevnyaya', 1242, NULL, 'Ледовое побоище', 'Muzdagi jang',
 'Битва на льду Чудского озера останавливает продвижение Ливонского ордена на восток.',
 'Chud ko''li muzidagi jang Livon ordenining sharqqa siljishini to''xtatadi.',
 'Чудское озеро', 'Chud ko''li'),

('rus-drevnyaya', 1380, NULL, 'Куликовская битва', 'Kulikovo jangi',
 'Объединённые русские полки под началом Дмитрия Донского побеждают войско Мамая.',
 'Dmitriy Donskoy boshchiligidagi birlashgan rus polklari Mamay qo''shinini yengadi.',
 'Куликово поле', 'Kulikovo maydoni'),

('rus-drevnyaya', 1480, NULL, 'Стояние на Угре', 'Ugradagi turish',
 'Войска Ивана III и хана Ахмата расходятся без сражения. Ордынская зависимость заканчивается.',
 'Ivan III va Ahmadxon qo''shinlari jangsiz tarqaladi. O''rdaga qaramlik tugaydi.',
 'Река Угра', 'Ugra daryosi'),

('rus-tsarstvo', 1547, NULL, 'Венчание Ивана IV на царство', 'Ivan IV ning podsholik tojini kiyishi',
 'Иван IV первым из русских правителей принимает царский титул.',
 'Ivan IV rus hukmdorlari orasida birinchi bo''lib podsho unvonini oladi.',
 'Москва', 'Moskva'),

('rus-tsarstvo', 1564, NULL, 'Первая печатная книга', 'Birinchi bosma kitob',
 'Иван Фёдоров выпускает «Апостол» — первую на Руси точно датированную печатную книгу.',
 'Ivan Fyodorov «Apostol»ni chiqaradi — Rusda aniq sanasi ma''lum birinchi bosma kitob.',
 'Москва', 'Moskva'),

('rus-tsarstvo', 1611, 1612, 'Первое и Второе ополчения', 'Birinchi va Ikkinchi xalq lashkarlari',
 'Города собирают ополчение и освобождают Москву. Смутное время идёт к концу.',
 'Shaharlar lashkar to''plab, Moskvani ozod qiladi. Notinch davr nihoyasiga yaqinlashadi.',
 'Нижний Новгород — Москва', 'Nijniy Novgorod — Moskva'),

('rus-tsarstvo', 1648, NULL, 'Поход Семёна Дежнёва', 'Semyon Dejnyov yurishi',
 'Дежнёв проходит проливом между Азией и Америкой — за восемьдесят лет до Беринга.',
 'Dejnyov Osiyo bilan Amerika orasidagi bo''g''ozdan o''tadi — Beringdan sakson yil avval.',
 'Северо-восток Сибири', 'Sibirning shimoli-sharqi'),

('rus-imperiya-18', 1700, 1721, 'Северная война', 'Shimoliy urush',
 'Двадцатилетняя война со Швецией за выход к Балтийскому морю.',
 'Boltiq dengiziga chiqish uchun Shvetsiya bilan yigirma yillik urush.',
 'Балтика', 'Boltiq'),

('rus-imperiya-18', 1703, NULL, 'Основание Санкт-Петербурга', 'Sankt-Peterburgga asos solinishi',
 'В устье Невы закладывается город, который через девять лет станет столицей.',
 'Neva quyilishida shahar qo''yiladi; to''qqiz yildan keyin u poytaxtga aylanadi.',
 'Устье Невы', 'Neva quyilishi'),

('rus-imperiya-18', 1709, NULL, 'Полтавская битва', 'Poltava jangi',
 'Разгром армии Карла XII решает исход Северной войны.',
 'Karl XII armiyasining tor-mor etilishi Shimoliy urush taqdirini hal qiladi.',
 'Полтава', 'Poltava'),

('rus-imperiya-18', 1721, NULL, 'Провозглашение империи', 'Imperiyaning e''lon qilinishi',
 'После Ништадтского мира Россия провозглашается империей, Пётр I принимает титул императора.',
 'Nishtadt sulhidan keyin Rossiya imperiya deb e''lon qilinadi, Pyotr I imperator unvonini oladi.',
 'Санкт-Петербург', 'Sankt-Peterburg'),

('rus-imperiya-19', 1812, NULL, 'Отечественная война', 'Vatan urushi',
 'Нашествие Наполеона, Бородинское сражение, оставление и пожар Москвы, изгнание французской армии.',
 'Napoleon bosqini, Borodino jangi, Moskvaning tashlab ketilishi va yong''ini, fransuz armiyasining quvib chiqarilishi.',
 'От Немана до Москвы', 'Nemandan Moskvagacha'),

('rus-imperiya-19', 1861, NULL, 'Отмена крепостного права', 'Krepostnoylikning bekor qilinishi',
 'Крестьяне получают личную свободу. С этого начинаются великие реформы Александра II.',
 'Dehqonlar shaxsiy erkinlikka ega bo''ladi. Aleksandr II ning buyuk islohotlari shundan boshlanadi.',
 'Российская империя', 'Rossiya imperiyasi'),

('rus-potryaseniya', 1914, 1918, 'Первая мировая война', 'Birinchi jahon urushi',
 'Россия вступает в мировую войну. Фронт, тыл и общество меняются необратимо.',
 'Rossiya jahon urushiga kiradi. Front, front orti va jamiyat qaytarib bo''lmas darajada o''zgaradi.',
 'Восточный фронт', 'Sharqiy front'),

('rus-potryaseniya', 1917, NULL, 'Революция 1917 года', '1917-yil inqilobi',
 'Отречение Николая II, конец монархии и приход к власти большевиков.',
 'Nikolay II ning taxtdan voz kechishi, monarxiyaning tugashi va bolsheviklarning hokimiyatga kelishi.',
 'Петроград', 'Petrograd'),

('rus-potryaseniya', 1922, NULL, 'Образование СССР', 'SSSRning tashkil topishi',
 'Республики объединяются в Союз Советских Социалистических Республик.',
 'Respublikalar Sovet Sotsialistik Respublikalari Ittifoqiga birlashadi.',
 'Москва', 'Moskva'),

('rus-vov', 1941, NULL, 'Битва за Москву', 'Moskva uchun jang',
 'Немецкое наступление на столицу остановлено, в декабре начинается контрнаступление.',
 'Poytaxtga nemis hujumi to''xtatiladi, dekabrda qarshi hujum boshlanadi.',
 'Подмосковье', 'Moskva atrofi'),

('rus-vov', 1942, 1943, 'Сталинградская битва', 'Stalingrad jangi',
 'Оборона города и окружение немецкой группировки. Начало коренного перелома в войне.',
 'Shahar mudofaasi va nemis guruhining qurshovga olinishi. Urushdagi tub burilish boshlanishi.',
 'Сталинград', 'Stalingrad'),

('rus-vov', 1945, NULL, 'Победа', 'G''alaba',
 '8 мая подписана капитуляция Германии. 24 июня на Красной площади проходит Парад Победы.',
 '8-mayda Germaniyaning taslim bo''lishi imzolanadi. 24-iyunda Qizil maydonda G''alaba paradi bo''lib o''tadi.',
 'Берлин — Москва', 'Berlin — Moskva'),

('rus-sssr-sovremennaya', 1957, NULL, 'Первый искусственный спутник', 'Birinchi sun''iy yo''ldosh',
 'СССР запускает первый в мире искусственный спутник Земли. Начинается космическая эра.',
 'SSSR dunyodagi birinchi sun''iy Yer yo''ldoshini uchiradi. Kosmik davr boshlanadi.',
 'Байконур', 'Baykonur'),

('rus-sssr-sovremennaya', 1961, NULL, 'Полёт Юрия Гагарина', 'Yuriy Gagarin parvozi',
 '12 апреля Юрий Гагарин первым в мире совершает полёт в космос. Полёт длится 108 минут.',
 '12-aprelda Yuriy Gagarin dunyoda birinchi bo''lib kosmosga uchadi. Parvoz 108 daqiqa davom etadi.',
 'Байконур', 'Baykonur'),

('rus-sssr-sovremennaya', 1985, 1991, 'Перестройка', 'Qayta qurish',
 'Попытка обновления советской системы: гласность, экономические и политические реформы.',
 'Sovet tizimini yangilashga urinish: oshkoralik, iqtisodiy va siyosiy islohotlar.',
 'СССР', 'SSSR'),

('rus-sssr-sovremennaya', 1991, NULL, 'Распад СССР', 'SSSRning parchalanishi',
 'Союзные республики объявляют независимость, центральные органы власти прекращают работу.',
 'Ittifoqdosh respublikalar mustaqillikni e''lon qiladi, markaziy hokimiyat organlari faoliyatini to''xtatadi.',
 'Москва', 'Moskva'),

('rus-federatsiya', 1993, NULL, 'Конституция Российской Федерации', 'Rossiya Federatsiyasi Konstitutsiyasi',
 'Принята на всенародном голосовании. Определяет устройство власти и права граждан новой России.',
 'Umumxalq ovoz berishida qabul qilinadi. Yangi Rossiyada hokimiyat tuzilishi va fuqarolar huquqlarini belgilaydi.',
 'Москва', 'Moskva')

) AS v(era_code, y_from, y_to, t_ru, t_uz, d_ru, d_uz, loc_ru, loc_uz)
JOIN eras e ON e.code = v.era_code AND e.country = 'RU';
