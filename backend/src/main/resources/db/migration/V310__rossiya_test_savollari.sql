-- V310: Rossiya tarixi uchun test savollari (barcha 9 davr)
-- Avtomatik yig'ilgan: har bir davr uchun taqdim etilgan tasdiqlangan fakt/hero materiali asosida.

-- ===== rus-drevnyaya =====
INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Rivoyatga ko'ra, Ryurik qaysi yilda Novgorodda knyazlik qila boshlagan?$$,
  $$В каком году, согласно летописи, Рюрик пришёл княжить в Новгород?$$,
  $$["882-yilda", "988-yilda", "862-yilda", "1240-yilda"]$$::jsonb,
  $$["882", "988", "862", "1240"]$$::jsonb,
  2,
  $$Rus davlatchiligi boshlanishining rivoyatdagi sanasi — 862-yil, o'shanda Ryurik Novgorodda knyazlik qila boshlagan.$$,
  $$Летописная дата начала русской государственности — 862 год, когда Рюрик пришёл княжить в Новгород.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Olegning 882-yilda Kievni egallashi qanday natijaga olib kelgan?$$,
  $$Каким было главное следствие захвата Олегом Киева в 882 году?$$,
  $$["Novgorod va Kiyev bitta hokimiyat ostida birlashgan", "Rus xristianlikni qabul qilgan", "birinchi qonunlar to'plami tuzilgan", "Oltin O'rdaga qaramlik tugagan"]$$::jsonb,
  $$["Новгород и Киев оказались под одной властью", "Русь приняла христианство", "было составлено первое законодательство", "закончилась ордынская зависимость"]$$::jsonb,
  0,
  $$Oleg Kievni egallab, shimol va janubni — Novgorod va Kiyevni — bitta hokimiyat ostida birlashtirgan.$$,
  $$Захватив Киев, Олег объединил север и юг: Новгород и Киев оказались под одной властью.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Qaysi shahar ham Olegning hokimiyatni egallashi, ham Rus xristianlashtirilishi bilan bog'liq?$$,
  $$Какой город связан и с захватом власти Олегом, и с Крещением Руси?$$,
  $$["Novgorod", "Moskva", "Tver", "Kiyev"]$$::jsonb,
  $$["Новгород", "Москва", "Тверь", "Киев"]$$::jsonb,
  3,
  $$Ham Olegning hokimiyatni egallashi (882), ham Rus xristianlashtirilishi (988) Kiyevda sodir bo'lgan.$$,
  $$И захват власти Олегом (882), и Крещение Руси (988) произошли в Киеве.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$988-yilgi xristianlashtirishdan keyin Rusda nima rivojlana boshlagan?$$,
  $$Что начало развиваться на Руси после Крещения в 988 году?$$,
  $$["O'rda hukmronligi", "xristian madaniyati: yozuv, kitoblar, tosh ibodatxonalar", "knyazlar o'rtasidagi nizolar", "yerlarning Moskva atrofida birlashishi"]$$::jsonb,
  $$["ордынское владычество", "христианская культура: письменность, книги, каменные храмы", "княжеские усобицы", "объединение земель вокруг Москвы"]$$::jsonb,
  1,
  $$Rus xristianlashtirilishi bilan xristian madaniyati — yozuv, kitoblar, tosh ibodatxonalar — rivojlana boshlagan.$$,
  $$С Крещения Руси начинается христианская культура: письменность, книги, каменные храмы.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Aleksandr Yaroslavich shved otryadini qayerda tor-mor qilgan?$$,
  $$Где произошла битва, в которой Александр Ярославич разбил шведский отряд?$$,
  $$["Ijora daryosi og'zida", "Chud ko'lida", "Kulikovo maydonida", "Ugra daryosida"]$$::jsonb,
  $$["в устье реки Ижоры", "на Чудском озере", "на Куликовом поле", "на реке Угре"]$$::jsonb,
  0,
  $$1240-yildagi Neva jangi Ijora daryosi og'zida bo'lib o'tgan.$$,
  $$Невская битва 1240 года произошла в устье реки Ижоры.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1242-yilgi Muz jangi qaysi qo'shinning sharqqa siljishini to'xtatgan?$$,
  $$Продвижение какого войска на восток остановило Ледовое побоище 1242 года?$$,
  $$["Ahmadxon qo'shini", "Mamay qo'shini", "Livoniya ordeni", "shved otryadi"]$$::jsonb,
  $$["хана Ахмата", "Мамая", "Ливонского ордена", "шведского отряда"]$$::jsonb,
  2,
  $$Chud ko'li muzidagi jang Livoniya ordenining sharqqa siljishini to'xtatgan.$$,
  $$Битва на льду Чудского озера остановила продвижение Ливонского ордена на восток.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Kulikovo jangi qaysi yilda va qayerda bo'lib o'tgan?$$,
  $$В каком году и где произошла Куликовская битва?$$,
  $$["1242-yil, Chud ko'li", "1380-yil, Kulikovo maydoni", "1480-yil, Ugra daryosi", "988-yil, Kiyev"]$$::jsonb,
  $$["1242 год, Чудское озеро", "1380 год, Куликово поле", "1480 год, река Угра", "988 год, Киев"]$$::jsonb,
  1,
  $$Kulikovo jangi 1380-yilda Kulikovo maydonida bo'lib o'tgan.$$,
  $$Куликовская битва произошла в 1380 году на Куликовом поле.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Kulikovo jangida kimning qo'shini yengilgan?$$,
  $$Войско какого правителя было побеждено в Куликовской битве?$$,
  $$["Ahmadxonning", "Livoniya ordenining", "shvedlarning", "Mamayning"]$$::jsonb,
  $$["хана Ахмата", "Ливонского ордена", "шведов", "Мамая"]$$::jsonb,
  3,
  $$Dmitriy Donskoy boshchiligidagi birlashgan rus polklari Mamay qo'shinini yengan.$$,
  $$Объединённые русские полки под началом Дмитрия Донского победили войско Мамая.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Ugra daryosidagi 'turib qolish' voqeasi qaysi yilda va qayerda bo'lgan?$$,
  $$В каком году и где произошло Стояние на Угре?$$,
  $$["1480-yil, Ugra daryosi", "1380-yil, Kulikovo maydoni", "1242-yil, Chud ko'li", "862-yil, Novgorod"]$$::jsonb,
  $$["1480 год, река Угра", "1380 год, Куликово поле", "1242 год, Чудское озеро", "862 год, Новгород"]$$::jsonb,
  0,
  $$Ugra daryosidagi 'turib qolish' voqeasi 1480-yilda shu daryo bo'yida sodir bo'lgan.$$,
  $$Стояние на Угре произошло в 1480 году на реке Угре.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1480-yildagi Ugra voqeasi qanday yakunlangan?$$,
  $$Чем закончилось Стояние на Угре в 1480 году?$$,
  $$["katta jang bo'lib, Rus mag'lub bo'lgan", "O'rdaga qaramlik boshlangan", "qo'shinlar jangsiz tarqalib ketgan, O'rdaga qaramlik tugagan", "Ivan III va Ahmadxon o'rtasida ittifoq tuzilgan"]$$::jsonb,
  $$["произошло крупное сражение, Русь потерпела поражение", "началась ордынская зависимость", "войска разошлись без сражения, ордынская зависимость закончилась", "был подписан союз между Иваном III и ханом Ахматом"]$$::jsonb,
  2,
  $$Ivan III va Ahmadxon qo'shinlari jangsiz tarqalib ketgan, shu bilan O'rdaga qaramlik tugagan.$$,
  $$Войска Ивана III и хана Ахмата разошлись без сражения, и на этом ордынская зависимость закончилась.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$«Rusdan Rossiya davlatiga» davri qaysi asrlarni qamrab oladi?$$,
  $$Какой период охватывает эпоха «От Руси к Российскому государству»?$$,
  $$["XIII—XV asrlar", "IX asrdan XVI asr boshigacha", "XI—XVII asrlar", "VIII—XII asrlar"]$$::jsonb,
  $$["XIII—XV века", "IX — начало XVI века", "XI—XVII века", "VIII—XII века"]$$::jsonb,
  1,
  $$Bu davr IX asrdan XVI asr boshigacha (862–1505-yillar) davrni qamrab oladi.$$,
  $$Эпоха охватывает период с IX века по начало XVI века (862–1505 годы).$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1240-yilgi Neva jangida kim ustidan g'alaba qozonilgan?$$,
  $$Против кого была одержана победа в Невской битве 1240 года?$$,
  $$["Livoniya ordeni ustidan", "Mamay qo'shini ustidan", "Ahmadxon ustidan", "shved otryadi ustidan"]$$::jsonb,
  $$["Ливонского ордена", "войска Мамая", "хана Ахмата", "шведского отряда"]$$::jsonb,
  3,
  $$Aleksandr Yaroslavich Neva jangida shved otryadini tor-mor qilgan, shu g'alaba uchun unga 'Nevskiy' laqabi berilgan.$$,
  $$Александр Ярославич разбил шведский отряд в Невской битве, за что получил прозвище Невский.$$
FROM eras e WHERE e.code = 'rus-drevnyaya';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Malika Olga eri Igor halok bo'lgandan keyin nimani joriy qilgan?$$,
  $$Что установила княгиня Ольга после гибели мужа Игоря?$$,
  $$["soliq yig'ish tartibi — uroklar va pogostlar", "«Rus Pravdasi» qonunlar to'plami", "Moskvadagi oq toshli Kreml", "Mamay qo'shini ustidan g'alaba"]$$::jsonb,
  $$["порядок сбора дани — уроки и погосты", "свод законов «Русская Правда»", "белокаменный Кремль в Москве", "победу над войском Мамая"]$$::jsonb,
  0,
  $$Olga birinchi bo'lib soliq yig'ish tartibini — uroklar va pogostlarni — joriy qilgan.$$,
  $$Ольга установила первый порядок сбора дани — уроки и погосты.$$
FROM heroes h WHERE h.slug = 'knyaginya-olga';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Malika Olga rus hukmdorlari orasida nimasi bilan ajralib turadi?$$,
  $$Чем княгиня Ольга отличилась среди русских правителей?$$,
  $$["birinchi yozma qonunlarni tuzgan", "birinchi tosh ibodatxona qurgan", "xristianlikni birinchi qabul qilgan", "birinchi O'rda qo'shinini tor-mor qilgan"]$$::jsonb,
  $$["первой составила письменные законы", "первой построила каменный храм", "первой приняла христианство", "первой разбила ордынское войско"]$$::jsonb,
  2,
  $$Olga rus hukmdorlari orasida xristianlikni birinchi bo'lib qabul qilgan.$$,
  $$Ольга первой из русских правителей приняла христианство.$$
FROM heroes h WHERE h.slug = 'knyaginya-olga';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Knyaz Vladimir Svyatoslavich 988-yilda nima qilgan?$$,
  $$Что сделал князь Владимир Святославич в 988 году?$$,
  $$["«Rus Pravdasi»ni tuzgan", "xristianlikni qabul qilib, Rusni xristianlashtirgan", "hozirgi Moskva Kremlini qurgan", "Troitsa monastiriga asos solgan"]$$::jsonb,
  $$["составил «Русскую Правду»", "принял христианство и крестил Русь", "построил нынешний Московский Кремль", "основал Троицкий монастырь"]$$::jsonb,
  1,
  $$988-yilda Vladimir Svyatoslavich xristianlikni qabul qilib, Rusni xristianlashtirgan.$$,
  $$В 988 году Владимир Святославич принял христианство и крестил Русь.$$
FROM heroes h WHERE h.slug = 'vladimir-svyatoy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yaroslav Mudriy davrida nima tuzilgan?$$,
  $$Что было составлено при князе Ярославе Мудром?$$,
  $$["«Uch dengiz osha safar» qaydlari", "bolalarga «Nasihat»", "birinchi soliq yig'ish tartibi", "«Rus Pravdasi» — Rusning birinchi qonunlar to'plami"]$$::jsonb,
  $$["«Хожение за три моря»", "«Поучение» детям", "первый порядок сбора дани", "«Русская Правда» — первый свод законов Руси"]$$::jsonb,
  3,
  $$Yaroslav Mudriy davrida Rusning birinchi qonunlar to'plami — «Rus Pravdasi» — tuzilgan.$$,
  $$При Ярославе Мудром была составлена «Русская Правда» — первый свод законов Руси.$$
FROM heroes h WHERE h.slug = 'yaroslav-mudryy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Vladimir Monomax knyazlar o'rtasidagi nizolarni to'xtatish uchun nima qilgan?$$,
  $$Что сделал Владимир Мономах, пытаясь остановить княжеские усобицы?$$,
  $$["Lyubechda knyazlar qurultoyini chaqirgan", "Kulikovo maydonida Mamay qo'shinini tor-mor qilgan", "xristianlikni qabul qilgan", "oq toshli Kremlni qurgan"]$$::jsonb,
  $$["созвал съезд князей в Любече", "разбил войско Мамая на Куликовом поле", "принял христианство", "построил белокаменный Кремль"]$$::jsonb,
  0,
  $$Vladimir Monomax nizolarni to'xtatishga harakat qilib, Lyubechda knyazlar qurultoyini chaqirgan.$$,
  $$Владимир Мономах созвал съезд князей в Любече, пытаясь остановить усобицы.$$
FROM heroes h WHERE h.slug = 'vladimir-monomah';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Yaroslavichga nima uchun «Nevskiy» laqabi berilgan?$$,
  $$За что Александр Ярославич получил прозвище «Невский»?$$,
  $$["Chud ko'lidagi g'alabasi uchun", "Mamay ustidan qozongan g'alabasi uchun", "Ijora og'zida shvedlar ustidan qozongan g'alabasi uchun", "Troitsa monastirini asos solgani uchun"]$$::jsonb,
  $$["за победу на Чудском озере", "за победу над Мамаем", "за победу над шведским отрядом в устье Ижоры", "за основание Троицкого монастыря"]$$::jsonb,
  2,
  $$1240-yilda Ijora og'zida shvedlar ustidan qozongan g'alabasi uchun unga «Nevskiy» laqabi berilgan.$$,
  $$За победу над шведским отрядом в устье Ижоры в 1240 году его прозвали Невским.$$
FROM heroes h WHERE h.slug = 'aleksandr-nevskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Nevskiy O'rda bilan munosabatlarda qanday yo'lni tanlagan?$$,
  $$Какой путь выбрал Александр Невский в отношениях с Ордой?$$,
  $$["ochiq urush yo'lini", "muzokaralar yo'lini", "har qanday aloqani rad etishni", "Moskvaga qarshi ittifoqni"]$$::jsonb,
  $$["путь открытой войны", "путь переговоров", "полный отказ от контактов", "союз против Москвы"]$$::jsonb,
  1,
  $$Aleksandr Nevskiy ochiq urush emas, O'rda bilan muzokaralar yo'lini tanlagan.$$,
  $$Александр Невский выбрал путь переговоров с Ордой, а не открытой войны.$$
FROM heroes h WHERE h.slug = 'aleksandr-nevskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Sergiy Radonejskiy Kulikovo jangidan oldin nima qilgan?$$,
  $$Что сделал Сергий Радонежский перед Куликовской битвой?$$,
  $$["rus polklarini o'zi boshqargan", "«Rus Pravdasi»ni tuzgan", "Rus nomidan xristianlikni qabul qilgan", "Dmitriy Donskoyga duo bergan"]$$::jsonb,
  $$["лично возглавил русские полки", "составил «Русскую Правду»", "принял христианство за Русь", "благословил Дмитрия Донского"]$$::jsonb,
  3,
  $$Troitsa monastirini asos solgan va knyazlarni yarashtirgan Sergiy Radonejskiy Kulikovo jangidan oldin Dmitriy Donskoyga duo bergan.$$,
  $$Сергий Радонежский, который основал Троицкий монастырь и мирил князей, благословил Дмитрия Донского перед Куликовской битвой.$$
FROM heroes h WHERE h.slug = 'sergiy-radonezhskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Dmitriy Donskoy 1380-yilda nima qilgan?$$,
  $$Что совершил Дмитрий Донской в 1380 году?$$,
  $$["rus polklarini Kulikovo maydoniga olib borib, Mamayni yengan", "O'rdaga qaramlikka barham bergan", "Rusni xristianlashtirgan", "Kiyevni egallagan"]$$::jsonb,
  $$["привёл русские полки на Куликово поле и победил Мамая", "покончил с ордынской зависимостью", "крестил Русь", "захватил Киев"]$$::jsonb,
  0,
  $$1380-yilda Dmitriy Donskoy rus polklarini Kulikovo maydoniga olib borib, Mamay qo'shinini yengan.$$,
  $$В 1380 году Дмитрий Донской привёл русские полки на Куликово поле и победил войско Мамая.$$
FROM heroes h WHERE h.slug = 'dmitriy-donskoy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Dmitriy Donskoy davrida Moskvada nima qurilgan?$$,
  $$Что было построено в Москве при Дмитрии Донском?$$,
  $$["hozirgi Moskva Kremli", "Troitsa monastiri", "oq toshli Kreml", "Rusning birinchi tosh ibodatxonalari"]$$::jsonb,
  $$["нынешний Московский Кремль", "Троицкий монастырь", "белокаменный Кремль", "первые каменные храмы Руси"]$$::jsonb,
  2,
  $$Dmitriy Donskoy davrida Moskvada oq toshli Kreml barpo etilgan.$$,
  $$При Дмитрии Донском в Москве встал белокаменный Кремль.$$
FROM heroes h WHERE h.slug = 'dmitriy-donskoy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Andrey Rublyov nimasi bilan mashhur?$$,
  $$Чем известен Андрей Рублёв?$$,
  $$["«Rus Pravdasi» tuzuvchisi", "eng buyuk ikonachi, «Troitsa» asari muallifi", "Troitsa monastiri asoschisi", "«Uch dengiz osha safar» muallifi"]$$::jsonb,
  $$["составитель «Русской Правды»", "величайший иконописец, автор «Троицы»", "основатель Троицкого монастыря", "автор «Хожения за три моря»"]$$::jsonb,
  1,
  $$Andrey Rublyov — Qadimgi Rusning eng buyuk ikonachisi, uning «Troitsa» asari rus ikonachiligining choʻqqisi hisoblanadi.$$,
  $$Андрей Рублёв — величайший иконописец Древней Руси, его «Троица» — вершина русской иконописи.$$
FROM heroes h WHERE h.slug = 'andrey-rublev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Tverlik savdogar Afanasiy Nikitin nimasi bilan mashhur bo'lgan?$$,
  $$Чем прославился тверской купец Афанасий Никитин?$$,
  $$["Kulikovo maydonida rus polklarini boshqargan", "Rusni xristianlashtirgan", "Moskva Kremlini qurgan", "Vasko da Gamadan 30 yil oldin Hindistonga yetib borgan"]$$::jsonb,
  $$["возглавил русские полки на Куликовом поле", "крестил Русь", "построил Московский Кремль", "дошёл до Индии за 30 лет до Васко да Гамы"]$$::jsonb,
  3,
  $$Afanasiy Nikitin Vasko da Gamadan 30 yil oldin Hindistonga yetib borgan va «Uch dengiz osha safar» qaydlarini qoldirgan.$$,
  $$Афанасий Никитин дошёл до Индии за 30 лет до Васко да Гамы и оставил записки «Хожение за три моря».$$
FROM heroes h WHERE h.slug = 'afanasiy-nikitin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ivan III davrida nima qurilgan?$$,
  $$Что было построено при Иване III?$$,
  $$["hozirgi Moskva Kremli", "oq toshli Kreml", "Troitsa monastiri", "Rusning birinchi tosh ibodatxonalari"]$$::jsonb,
  $$["нынешний Московский Кремль", "белокаменный Кремль", "Троицкий монастырь", "первые каменные храмы Руси"]$$::jsonb,
  0,
  $$Ivan III davrida hozirgi Moskva Kremli qurilgan.$$,
  $$При Иване III построен нынешний Московский Кремль.$$
FROM heroes h WHERE h.slug = 'ivan-3';

-- ===== rus-tsarstvo =====
INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ivan IV qaysi yilda podshohlikka toj kiydi?$$,
  $$В каком году Иван IV венчался на царство?$$,
  $$["1547", "1564", "1612", "1648"]$$::jsonb,
  $$["1547", "1564", "1612", "1648"]$$::jsonb,
  0,
  $$Ivan IV 1547-yilda Moskvada podshohlikka toj kiydi — rus hukmdorlari orasida birinchi bo'lib «podshoh» unvonini oldi.$$,
  $$Иван IV венчался на царство в 1547 году в Москве — первым из русских правителей принял царский титул.$$
FROM heroes h WHERE h.slug = 'ivan-groznyy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ivan IVning 1547-yilgi toj kiyish marosimi nimasi bilan tarixiy ahamiyatga ega bo'ldi?$$,
  $$Чем было примечательно венчание Ивана IV на царство в 1547 году?$$,
  $$["U rus hukmdorlari orasida birinchi bo'lib podshoh unvonini oldi", "U G'alayonlar davrini tugatdi", "U birinchi bosma kitobni chiqardi", "U Sibirni davlatga qo'shib oldi"]$$::jsonb,
  $$["Он первым из русских правителей принял царский титул", "Он завершил Смутное время", "Он выпустил первую печатную книгу", "Он присоединил Сибирь к государству"]$$::jsonb,
  0,
  $$Ivan IV 1547-yilda toj kiyib, rus hukmdorlari orasida birinchi bo'lib podshoh unvonini qabul qildi.$$,
  $$Иван IV первым из русских правителей принял царский титул, венчавшись на царство в 1547 году.$$
FROM heroes h WHERE h.slug = 'ivan-groznyy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Quyidagilardan qaysi biri Ivan IV hukmronligi davrida sodir bo'lmagan?$$,
  $$Какое из этих событий НЕ происходило при правлении Ивана IV?$$,
  $$["Qozonning bosib olinishi", "Astraxanning bosib olinishi", "Birinchi Zemsky sobor chaqirilishi", "Minin va Pojarskiy tomonidan Moskvaning G'alayonlar davridan ozod qilinishi"]$$::jsonb,
  $$["Взятие Казани", "Взятие Астрахани", "Созыв первого Земского собора", "Освобождение Москвы от Смуты Мининым и Пожарским"]$$::jsonb,
  3,
  $$Minin va Pojarskiy Moskvani 1612-yilda, Ivan IV vafotidan (1584) keyin ozod qilishgan; uning davrida esa Qozon, Astraxan bosib olingan va birinchi Zemsky sobor chaqirilgan.$$,
  $$Минин и Пожарский освободили Москву в 1612 году, уже после смерти Ивана IV (1584); при нём же были взяты Казань и Астрахань и созван первый Земский собор.$$
FROM heroes h WHERE h.slug = 'ivan-groznyy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ivan Fyodorov 1564-yilda qanday kitob chop etdi?$$,
  $$Какую книгу выпустил Иван Фёдоров в 1564 году?$$,
  $$["«Apostol»", "Alifbo (bukvar)", "Sudebnik", "Domostroy"]$$::jsonb,
  $$["«Апостол»", "Букварь", "Судебник", "Домострой"]$$::jsonb,
  0,
  $$Ivan Fyodorov 1564-yilda «Apostol»ni chop etdi — bu Rusda sanasi aniq belgilangan birinchi bosma kitob edi.$$,
  $$В 1564 году Иван Фёдоров выпустил «Апостол» — первую на Руси точно датированную печатную книгу.$$
FROM heroes h WHERE h.slug = 'ivan-fedorov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ivan Fyodorov chop etgan «Apostol» kitobining ahamiyati nimada?$$,
  $$Чем важна книга «Апостол», выпущенная Иваном Фёдоровым?$$,
  $$["Bu Rusda sanasi aniq ko'rsatilgan birinchi bosma kitob", "Bu Rusning birinchi qonunlar to'plami", "Bu Moskva knyazligining birinchi yilnomasi", "Bu Injilning rus tiliga birinchi tarjimasi"]$$::jsonb,
  $$["Это первая точно датированная печатная книга на Руси", "Это первый свод законов Руси", "Это первая летопись Московского княжества", "Это первый перевод Библии на русский язык"]$$::jsonb,
  0,
  $$«Apostol» (1564-yil) — Rusda sanasi aniq ko'rsatilgan birinchi bosma kitob hisoblanadi.$$,
  $$«Апостол» (1564) — первая на Руси точно датированная печатная книга.$$
FROM heroes h WHERE h.slug = 'ivan-fedorov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ivan Fyodorov «Apostol»dan keyin yana nima nashr etdi?$$,
  $$Что ещё издал Иван Фёдоров позже, после «Апостола»?$$,
  $$["Birinchi rus alifbo kitobini (bukvar)", "Birinchi gazetani", "Birinchi geografiya darsligini", "Birinchi qonunlar to'plamini"]$$::jsonb,
  $$["Первый русский букварь", "Первую газету", "Первый учебник географии", "Первый сборник законов"]$$::jsonb,
  0,
  $$Keyinchalik Ivan Fyodorov birinchi rus alifbo kitobi (bukvar)ni nashr etdi.$$,
  $$Позже Иван Фёдоров издал первый русский букварь.$$
FROM heroes h WHERE h.slug = 'ivan-fedorov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yermak Timofeyevich kim bo'lgan?$$,
  $$Кем был Ермак Тимофеевич?$$,
  $$["Kazak atamani", "Nijniy Novgorod oqsoqoli", "Moskvalik podshoh voyevodasi", "Birinchi kitob bosuvchi"]$$::jsonb,
  $$["Казачий атаман", "Нижегородский староста", "Царский воевода из Москвы", "Первопечатник"]$$::jsonb,
  0,
  $$Yermak Timofeyevich — Ural ortiga yurish boshlagan kazak atamani edi.$$,
  $$Ермак Тимофеевич — казачий атаман, начавший поход за Урал.$$
FROM heroes h WHERE h.slug = 'ermak';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yermakning Ural ortiga yurishi qanday natijaga olib keldi?$$,
  $$Что стало результатом похода Ермака за Урал?$$,
  $$["Sibirning Rus davlatiga qo'shilishi boshlandi", "Ukraina bilan qayta birlashish boshlandi", "G'alayonlar davri tugadi", "Rusda kitob bosish yo'lga qo'yildi"]$$::jsonb,
  $$["Началось присоединение Сибири к Русскому государству", "Началось воссоединение с Украиной", "Завершилось Смутное время", "Была основана печать книг на Руси"]$$::jsonb,
  0,
  $$Yermakning yurishidan boshlab Sibir Rus davlatiga qo'shila boshlagan.$$,
  $$С похода Ермака начинается присоединение Сибири к Русскому государству.$$
FROM heroes h WHERE h.slug = 'ermak';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Kuzma Minin kim bo'lgan va u 1611-yilda nima qilgan?$$,
  $$Кем был Кузьма Минин и что он сделал в 1611 году?$$,
  $$["Nijniy Novgorod oqsoqoli bo'lib, Moskvani ozod qilish uchun mablag' va odam yig'ishga chaqirgan", "Sibirga yurish boshlagan kazak atamani", "Podshohlikka toj kiygan podshoh", "Birinchi kitobni chop etgan bosmachi"]$$::jsonb,
  $$["Нижегородский староста, призвавший собрать средства и людей для освобождения Москвы", "Казачий атаман, начавший поход в Сибирь", "Царь, венчавшийся на царство", "Первопечатник, выпустивший первую книгу"]$$::jsonb,
  0,
  $$Nijniy Novgorod oqsoqoli Kuzma Minin 1611-yilda Moskvani ozod qilish uchun mablag' va odam to'plashga chaqirdi — shu tariqa Ikkinchi xalq lashkari (opolcheniye) tashkil topdi.$$,
  $$Кузьма Минин, нижегородский староста, в 1611 году призвал собрать средства и людей на освобождение Москвы — так родилось Второе ополчение.$$
FROM heroes h WHERE h.slug = 'kuzma-minin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Dmitriy Pojarskiy 1612-yilda nima qildi?$$,
  $$Что сделал Дмитрий Пожарский в 1612 году?$$,
  $$["Ikkinchi xalq lashkari qo'shinini boshqarib, Minin bilan birga Moskvani ozod qildi", "Podshohlikka toj kiydi", "Osiyo va Amerika o'rtasidagi bo'g'ozdan o'tdi", "Birinchi bosma kitobni chiqardi"]$$::jsonb,
  $$["Возглавил войско Второго ополчения и вместе с Мининым освободил Москву", "Венчался на царство", "Прошёл проливом между Азией и Америкой", "Выпустил первую печатную книгу"]$$::jsonb,
  0,
  $$Dmitriy Pojarskiy Ikkinchi xalq lashkari qo'shinini boshqargan va Minin bilan birgalikda 1612-yilda Moskvani ozod qilib, G'alayonlar davriga barham bergan.$$,
  $$Дмитрий Пожарский возглавил войско Второго ополчения и вместе с Мининым освободил Москву в 1612 году, положив конец Смутному времени.$$
FROM heroes h WHERE h.slug = 'dmitriy-pozharskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Semyon Dejnyov 1648-yilda nimani amalga oshirdi?$$,
  $$Что совершил Семён Дежнёв в 1648 году?$$,
  $$["Osiyo va Amerika o'rtasidagi bo'g'ozdan o'tdi", "Moskvani bosqinchilardan ozod qildi", "Qozonni Rus davlatiga qo'shib oldi", "Birinchi bosma kitobni chiqardi"]$$::jsonb,
  $$["Прошёл проливом между Азией и Америкой", "Освободил Москву от интервентов", "Присоединил Казань к Русскому государству", "Выпустил первую печатную книгу"]$$::jsonb,
  0,
  $$Semyon Dejnyov 1648-yilda Osiyo va Amerika o'rtasidagi bo'g'ozdan o'tgan — bu Bering'dan 80 yil oldin sodir bo'lgan.$$,
  $$В 1648 году Семён Дежнёв прошёл проливом между Азией и Америкой, за 80 лет до Беринга.$$
FROM heroes h WHERE h.slug = 'semen-dezhnev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Semyon Dejnyovning o'z kashfiyoti haqidagi hisoboti taqdiri qanday bo'lgan?$$,
  $$Что произошло с отчётом Семёна Дежнёва о его открытии?$$,
  $$["U deyarli yuz yil arxivda noma'lum holda yotgan", "U darhol birinchi bosma kitob sifatida chop etilgan", "U Zemsky soborga taqdim etilgan", "U G'alayonlar davrida yo'q qilingan"]$$::jsonb,
  $$["Он почти сто лет пролежал в архиве, оставаясь неизвестным", "Его сразу опубликовали как первую печатную книгу", "Его представили Земскому собору", "Он был уничтожен во время Смуты"]$$::jsonb,
  0,
  $$Dejnyovning kashfiyoti haqidagi hisoboti deyarli yuz yil davomida arxivda noma'lum holda yotgan.$$,
  $$Отчёт Дежнёва о его открытии пролежал в архиве почти сто лет, прежде чем стал известен.$$
FROM heroes h WHERE h.slug = 'semen-dezhnev';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Ivan IV qaysi shaharda podshohlikka toj kiydi?$$,
  $$В каком городе Иван IV венчался на царство?$$,
  $$["Moskva", "Nijniy Novgorod", "Qozon", "Astraxan"]$$::jsonb,
  $$["Москва", "Нижний Новгород", "Казань", "Астрахань"]$$::jsonb,
  0,
  $$Ivan IVning podshohlikka toj kiyish marosimi 1547-yilda Moskvada bo'lib o'tgan.$$,
  $$Венчание Ивана IV на царство состоялось в 1547 году в Москве.$$
FROM eras e WHERE e.code = 'rus-tsarstvo';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Birinchi va Ikkinchi xalq lashkarlari Moskvani ozod qilish uchun qaysi yillarda harakat qilgan?$$,
  $$В какие годы Первое и Второе ополчения действовали, чтобы освободить Москву?$$,
  $$["1611–1612", "1547–1564", "1564–1611", "1648–1650"]$$::jsonb,
  $$["1611–1612", "1547–1564", "1564–1611", "1648–1650"]$$::jsonb,
  0,
  $$Birinchi va Ikkinchi xalq lashkarlari 1611–1612-yillarda to'planib, Moskvani ozod qilgan.$$,
  $$Первое и Второе ополчения собирались и освобождали Москву в 1611–1612 годах.$$
FROM eras e WHERE e.code = 'rus-tsarstvo';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$"Birinchi va Ikkinchi xalq lashkarlari" (1611–1612) voqeasi nimani tasvirlaydi?$$,
  $$Что описывает событие «Первое и Второе ополчения» (1611–1612)?$$,
  $$["Shaharlar xalq lashkari to'playdi va Moskvani ozod qiladi", "Ivan IV podshohlikka toj kiyadi", "Ivan Fyodorov birinchi kitobni bosib chiqaradi", "Dejnyov Sibirning shimoli-sharqidagi bo'g'ozdan o'tadi"]$$::jsonb,
  $$["Города собирают ополчение и освобождают Москву", "Иван IV венчается на царство", "Иван Фёдоров печатает первую книгу", "Дежнёв проходит проливом на северо-востоке Сибири"]$$::jsonb,
  0,
  $$Bu voqea davomida shaharlar xalq lashkarini to'playdi, u Moskvani ozod qiladi va G'alayonlar davri tugashga yuz tutadi.$$,
  $$В ходе события города собирают ополчение, которое освобождает Москву, и Смутное время идёт к концу.$$
FROM eras e WHERE e.code = 'rus-tsarstvo';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1611–1612-yillardagi xalq lashkarlari harakati tufayli rus tarixining qaysi davri yakunlandi?$$,
  $$Какой период русской истории завершился благодаря действиям ополчений в 1611–1612 годах?$$,
  $$["G'alayonlar davri", "Ivan Grozniy hukmronligi", "Sibirga yurish", "Sibirning shimoli-sharqini o'zlashtirish"]$$::jsonb,
  $$["Смутное время", "Правление Ивана Грозного", "Поход в Сибирь", "Освоение северо-востока Сибири"]$$::jsonb,
  0,
  $$Xalq lashkarlari Moskvani ozod qilgach, G'alayonlar davri o'z yakuniga yetgan.$$,
  $$Благодаря освобождению Москвы ополчениями Смутное время подошло к концу.$$
FROM eras e WHERE e.code = 'rus-tsarstvo';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Semyon Dejnyovning 1648-yilgi yurishi qaysi mintaqada bo'lib o'tgan?$$,
  $$В каком регионе проходил поход Семёна Дежнёва в 1648 году?$$,
  $$["Sibirning shimoli-sharqi", "Volga bo'yi", "Moskva markazi", "Ukrainaning janubi"]$$::jsonb,
  $$["Северо-восток Сибири", "Поволжье", "Центральная Москва", "Юг Украины"]$$::jsonb,
  0,
  $$Semyon Dejnyovning 1648-yilgi yurishi Sibirning shimoli-sharqida bo'lib o'tgan.$$,
  $$Поход Семёна Дежнёва в 1648 году проходил на северо-востоке Сибири.$$
FROM eras e WHERE e.code = 'rus-tsarstvo';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Quyidagilardan qaysi biri "XVI–XVII asrlarda Rossiya" davri tavsifida tilga olinmagan?$$,
  $$Что из перечисленного НЕ упоминается в описании эпохи «Россия в XVI–XVII веках»?$$,
  $$["Polsha bilan birlashish", "G'alayonlar davri", "Zemsky soborlar", "Sharqqa siljish"]$$::jsonb,
  $$["Объединение с Польшей", "Смутное время", "Земские соборы", "Движение на восток"]$$::jsonb,
  0,
  $$Davr tavsifida podshohlikka toj kiyish, G'alayonlar davri, Zemsky soborlar, Ukraina bilan qayta birlashish va sharqqa siljish tilga olingan — Polsha bilan birlashish haqida gap yo'q.$$,
  $$Описание эпохи включает венчание на царство, Смутное время, земские соборы, воссоединение с Украиной и движение на восток — объединение с Польшей не упоминается.$$
FROM eras e WHERE e.code = 'rus-tsarstvo';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$To'rtta voqeadan qaysi biri vaqt jihatidan boshqalaridan oldinroq sodir bo'lgan?$$,
  $$Какое из четырёх событий произошло раньше остальных по времени?$$,
  $$["Ivan IVning podshohlikka toj kiyishi (1547)", "Birinchi bosma kitob (1564)", "Xalq lashkarlari tomonidan Moskvaning ozod qilinishi (1611–1612)", "Semyon Dejnyov yurishi (1648)"]$$::jsonb,
  $$["Венчание Ивана IV на царство (1547)", "Первая печатная книга (1564)", "Освобождение Москвы ополчениями (1611–1612)", "Поход Семёна Дежнёва (1648)"]$$::jsonb,
  0,
  $$Sanab o'tilgan voqealar ichida Ivan IVning 1547-yilgi toj kiyishi barchasidan oldinroq sodir bo'lgan.$$,
  $$Среди перечисленных событий венчание Ивана IV в 1547 году произошло раньше всех остальных.$$
FROM eras e WHERE e.code = 'rus-tsarstvo';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$To'rtta voqeadan qaysi biri vaqt jihatidan boshqalaridan keyinroq sodir bo'lgan?$$,
  $$Какое из четырёх событий произошло позже остальных по времени?$$,
  $$["Semyon Dejnyov yurishi (1648)", "Ivan IVning podshohlikka toj kiyishi (1547)", "Birinchi bosma kitob (1564)", "Xalq lashkarlari tomonidan Moskvaning ozod qilinishi (1611–1612)"]$$::jsonb,
  $$["Поход Семёна Дежнёва (1648)", "Венчание Ивана IV на царство (1547)", "Первая печатная книга (1564)", "Освобождение Москвы ополчениями (1611–1612)"]$$::jsonb,
  0,
  $$Sanab o'tilgan voqealar ichida Semyon Dejnyovning 1648-yilgi yurishi barchasidan keyinroq sodir bo'lgan.$$,
  $$Среди перечисленных событий поход Семёна Дежнёва в 1648 году произошёл позже всех остальных.$$
FROM eras e WHERE e.code = 'rus-tsarstvo';

-- ===== rus-imperiya-18 =====
INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Shimoliy urush (1700–1721) davomida Rossiya qaysi davlatga qarshi jang qilgan?$$,
  $$Против какого государства Россия вела Северную войну (1700–1721)?$$,
  $$["Shvetsiya", "Fransiya", "Usmonli imperiyasi (Turkiya)", "Polsha"]$$::jsonb,
  $$["Швеция", "Франция", "Османская империя (Турция)", "Польша"]$$::jsonb,
  0,
  $$Shimoliy urush aynan Shvetsiya bilan 21 yil davom etgan bo'lib, Rossiya bu urushda Boltiq dengiziga chiqish yo'lini qo'lga kiritmoqchi edi.$$,
  $$Северная война длилась 21 год именно со Швецией за выход к Балтийскому морю.$$
FROM eras e WHERE e.code = 'rus-imperiya-18';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Shimoliy urush jami necha yil davom etgan?$$,
  $$Сколько лет продолжалась Северная война?$$,
  $$["9 yil", "21 yil", "34 yil", "15 yil"]$$::jsonb,
  $$["9 лет", "21 год", "34 года", "15 лет"]$$::jsonb,
  1,
  $$Urush 1700–1721 yillar oralig'ida, ya'ni jami 21 yil davom etgan.$$,
  $$Война шла с 1700 по 1721 год, то есть 21 год.$$
FROM eras e WHERE e.code = 'rus-imperiya-18';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Shimoliy urushning asosiy maqsadi nima bo'lgan?$$,
  $$Какова была главная цель Северной войны?$$,
  $$["Boltiq dengiziga chiqish", "Qora dengizga chiqish", "Sibirni bosib olish", "Yevropa bilan savdo ittifoqi tuzish"]$$::jsonb,
  $$["Выход к Балтийскому морю", "Выход к Чёрному морю", "Завоевание Сибири", "Торговый союз с Европой"]$$::jsonb,
  0,
  $$Rossiya yigirma yillik urushni aynan Boltiq dengiziga chiqish uchun olib borgan.$$,
  $$Россия вела двадцатилетнюю войну со Швецией именно за выход к Балтийскому морю.$$
FROM eras e WHERE e.code = 'rus-imperiya-18';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Poltava jangi qaysi yili bo'lib o'tgan?$$,
  $$В каком году произошла Полтавская битва?$$,
  $$["1703", "1709", "1721", "1700"]$$::jsonb,
  $$["1703", "1709", "1721", "1700"]$$::jsonb,
  1,
  $$Poltava jangi 1709-yilda bo'lib o'tgan va Shimoliy urushning yakunini hal qilgan.$$,
  $$Полтавская битва произошла в 1709 году и решила исход Северной войны.$$
FROM eras e WHERE e.code = 'rus-imperiya-18';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Poltava jangida qaysi qo'shin tor-mor etilgan?$$,
  $$Чья армия была разгромлена в Полтавской битве?$$,
  $$["Karl XII qo'shini", "Usmonli qo'shini", "Fransiya qo'shini", "Pyotr I qo'shini"]$$::jsonb,
  $$["Армия Карла XII", "Османская армия", "Французская армия", "Армия Петра I"]$$::jsonb,
  0,
  $$Poltava jangida shved qiroli Karl XII qo'shini tor-mor etilgan.$$,
  $$В Полтавской битве была разгромлена армия шведского короля Карла XII.$$
FROM eras e WHERE e.code = 'rus-imperiya-18';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Sankt-Peterburg qayerda bunyod etilgan?$$,
  $$Где был основан Санкт-Петербург?$$,
  $$["Volga daryosi bo'yida", "Neva daryosining og'zida", "Qora dengiz sohilida", "Ural tog'lari etagida"]$$::jsonb,
  $$["На берегу Волги", "В устье Невы", "На побережье Чёрного моря", "У подножия Уральских гор"]$$::jsonb,
  1,
  $$Shahar 1703-yilda Neva daryosining og'zida qurila boshlangan.$$,
  $$Город был заложен в устье Невы в 1703 году.$$
FROM eras e WHERE e.code = 'rus-imperiya-18';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Sankt-Peterburg asos solingandan necha yil o'tib poytaxtga aylangan?$$,
  $$Через сколько лет после основания Санкт-Петербург стал столицей?$$,
  $$["3 yil", "9 yil", "21 yil", "34 yil"]$$::jsonb,
  $$["3 года", "9 лет", "21 год", "34 года"]$$::jsonb,
  1,
  $$Material bo'yicha shahar asos solingandan to'qqiz yil o'tib poytaxtga aylangan.$$,
  $$Согласно материалу, город стал столицей через девять лет после основания.$$
FROM eras e WHERE e.code = 'rus-imperiya-18';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Rossiya qaysi sulhdan keyin imperiya deb e'lon qilingan?$$,
  $$После какого мирного договора Россия была провозглашена империей?$$,
  $$["Nishtadt sulhi", "Parij sulhi", "Vestfaliya sulhi", "Karlovits sulhi"]$$::jsonb,
  $$["Ништадтский мир", "Парижский мир", "Вестфальский мир", "Карловицкий мир"]$$::jsonb,
  0,
  $$1721-yilda Nishtadt sulhi imzolangandan so'ng Rossiya imperiya deb e'lon qilingan.$$,
  $$В 1721 году после Ништадтского мира Россия была провозглашена империей.$$
FROM eras e WHERE e.code = 'rus-imperiya-18';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Pyotr I o'tkazgan islohotlar nimadan iborat bo'lgan?$$,
  $$Чем известны преобразования Петра I?$$,
  $$["Armiya va flotni tubdan isloh qilgan", "Faqat cherkovni isloh qilgan", "Savdo bojlarini bekor qilgan", "Poytaxtni Kievga ko'chirgan"]$$::jsonb,
  $$["Коренной реформой армии и флота", "Только реформой церкви", "Отменой торговых пошлин", "Переносом столицы в Киев"]$$::jsonb,
  0,
  $$Pyotr I o'z islohotlarida avvalambor armiya va flotni tubdan qayta qurgan.$$,
  $$Пётр I преобразовал армию и флот, что стало основой его реформ.$$
FROM heroes h WHERE h.slug = 'petr-1';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Pyotr I 1721-yilda qanday unvonni qabul qilgan?$$,
  $$Какой титул принял Пётр I в 1721 году?$$,
  $$["Qirol", "Imperator", "Sulton", "Xon"]$$::jsonb,
  $$["Король", "Император", "Султан", "Хан"]$$::jsonb,
  1,
  $$Nishtadt sulhidan keyin Pyotr I imperator unvonini qabul qilgan.$$,
  $$После Ништадтского мира Пётр I принял титул императора.$$
FROM heroes h WHERE h.slug = 'petr-1';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$1703-yilda Sankt-Peterburgga kim asos solgan?$$,
  $$Кто в 1703 году основал Санкт-Петербург?$$,
  $$["Pyotr I", "Yekaterina II", "Suvorov", "Lomonosov"]$$::jsonb,
  $$["Пётр I", "Екатерина II", "Суворов", "Ломоносов"]$$::jsonb,
  0,
  $$Sankt-Peterburgga 1703-yilda aynan Pyotr I asos solgan.$$,
  $$Санкт-Петербург был основан Петром I в 1703 году.$$
FROM heroes h WHERE h.slug = 'petr-1';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yosh Mixail Lomonosov o'qish uchun Moskvaga qanday yetib borgan?$$,
  $$Как юный Михаил Ломоносов добрался до Москвы учиться?$$,
  $$["Otda", "Kemada", "Piyoda", "Aravada"]$$::jsonb,
  $$["На лошади", "На корабле", "Пешком", "На телеге"]$$::jsonb,
  2,
  $$Pomor oilasida tug'ilgan Lomonosov o'qish uchun Moskvaga piyoda yurib borgan.$$,
  $$Ломоносов, сын помора, пришёл учиться в Москву пешком.$$
FROM heroes h WHERE h.slug = 'lomonosov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Lomonosovning g'oyasi bilan qaysi oliy o'quv yurti tashkil etilgan?$$,
  $$Какой университет был основан по замыслу Ломоносова?$$,
  $$["Sankt-Peterburg universiteti", "Moskva universiteti", "Qozon universiteti", "Tomsk universiteti"]$$::jsonb,
  $$["Санкт-Петербургский университет", "Московский университет", "Казанский университет", "Томский университет"]$$::jsonb,
  1,
  $$Lomonosovning g'oyasi asosida Moskva universiteti tashkil etilgan.$$,
  $$По замыслу Ломоносова был основан Московский университет.$$
FROM heroes h WHERE h.slug = 'lomonosov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yekaterina II taxtda necha yil hukmronlik qilgan?$$,
  $$Сколько лет правила Екатерина II?$$,
  $$["34 yil", "21 yil", "9 yil", "15 yil"]$$::jsonb,
  $$["34 года", "21 год", "9 лет", "15 лет"]$$::jsonb,
  0,
  $$Yekaterina II taxtda 34 yil o'tirgan.$$,
  $$Екатерина II правила 34 года.$$
FROM heroes h WHERE h.slug = 'ekaterina-2';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yekaterina II qanday komissiya chaqirgan?$$,
  $$Какую комиссию созвала Екатерина II?$$,
  $$["Ulojennaya komissiyasi (qonunlar komissiyasi)", "Harbiy kengash", "Sanoat kengashi", "Diniy kengash"]$$::jsonb,
  $$["Уложенную комиссию", "Военный совет", "Промышленный совет", "Духовный совет"]$$::jsonb,
  0,
  $$Yekaterina II qonunlarni tartibga solish uchun Ulojennaya komissiyasini chaqirgan.$$,
  $$Екатерина II созвала Уложенную комиссию.$$
FROM heroes h WHERE h.slug = 'ekaterina-2';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yekaterina II davrida Rossiya qaysi dengizga chiqish imkoniyatiga ega bo'lgan?$$,
  $$К какому морю вышла Россия при Екатерине II?$$,
  $$["Boltiq dengizi", "Qora dengiz", "O'rta yer dengizi", "Kaspiy dengizi"]$$::jsonb,
  $$["Балтийское море", "Чёрное море", "Средиземное море", "Каспийское море"]$$::jsonb,
  1,
  $$Yekaterina II davrida Rossiya Qora dengizga chiqish imkoniyatiga ega bo'lgan.$$,
  $$При Екатерине II Россия вышла к Чёрному морю.$$
FROM heroes h WHERE h.slug = 'ekaterina-2';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Suvorov haqida qaysi fakt to'g'ri?$$,
  $$Какой факт верен об Александре Суворове?$$,
  $$["U hech qaysi jangda mag'lub bo'lmagan", "U faqat dengiz janglarida qatnashgan", "U imperator bo'lgan", "U faqat mudofaa janglarida qatnashgan"]$$::jsonb,
  $$["Он не проиграл ни одного сражения", "Он участвовал только в морских сражениях", "Он был императором", "Он участвовал только в оборонительных боях"]$$::jsonb,
  0,
  $$Suvorov butun harbiy faoliyati davomida bironta ham jangda mag'lubiyatga uchramagan.$$,
  $$Суворов не проиграл ни одного сражения за свою военную карьеру.$$
FROM heroes h WHERE h.slug = 'suvorov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Suvorov qaysi qal'ani qo'lga kiritgan?$$,
  $$Какую крепость взял Суворов?$$,
  $$["Izmail", "Qozon", "Ochakov", "Qrim"]$$::jsonb,
  $$["Измаил", "Казань", "Очаков", "Крым"]$$::jsonb,
  0,
  $$Suvorov mashhur Izmail qal'asini qo'lga kiritgan.$$,
  $$Суворов взял крепость Измаил.$$
FROM heroes h WHERE h.slug = 'suvorov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ivan Kulibin qanday noyob buyum yasagan?$$,
  $$Какой необычный предмет создал Иван Кулибин?$$,
  $$["Ichida teatri bo'lgan tuxumsimon soat", "Bug' mashinasi", "Teleskop", "Samolyot maketi"]$$::jsonb,
  $$["Часы-яйцо с театром внутри", "Паровую машину", "Телескоп", "Макет самолёта"]$$::jsonb,
  0,
  $$Kulibin ichida kichik teatri bo'lgan ajoyib tuxumsimon soat yasagan.$$,
  $$Кулибин создал часы-яйцо с театром внутри.$$
FROM heroes h WHERE h.slug = 'kulibin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Kulibin qaysi daryo ustidan bir yoyli ko'prik loyihasini taklif qilgan?$$,
  $$Через какую реку Кулибин предложил проект одноарочного моста?$$,
  $$["Volga", "Neva", "Don", "Amudaryo"]$$::jsonb,
  $$["Волга", "Нева", "Дон", "Амударья"]$$::jsonb,
  1,
  $$Kulibin Neva daryosi ustidan bir yoyli ko'prik qurish loyihasini taklif qilgan.$$,
  $$Кулибин разработал проект одноарочного моста через Неву.$$
FROM heroes h WHERE h.slug = 'kulibin';

-- ===== rus-imperiya-19 =====
INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Napoleon Rossiyaga bostirib kirgan Vatan urushi qaysi yilda boshlangan?$$,
  $$В каком году началась Отечественная война — нашествие Наполеона на Россию?$$,
  $$["1801-yilda", "1812-yilda", "1861-yilda", "1895-yilda"]$$::jsonb,
  $$["1801", "1812", "1861", "1895"]$$::jsonb,
  1,
  $$Vatan urushi 1812-yilda bo'lgan — Neman daryosidan boshlanib, frantsuz armiyasining haydab chiqarilishi bilan tugagan.$$,
  $$Отечественная война произошла в 1812 году — от вторжения через Неман до изгнания французской армии.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1812-yilda Napoleon armiyasining bostirib kirishi qayerdan boshlangan?$$,
  $$Откуда началось нашествие армии Наполеона на Россию в 1812 году?$$,
  $$["Neman daryosidan", "Volga daryosidan", "Don daryosidan", "Kavkazdan"]$$::jsonb,
  $$["От Немана", "От Волги", "От Дона", "От Кавказа"]$$::jsonb,
  0,
  $$Manbaga ko'ra, bosqin 'Nemandan Moskvagacha' davom etgan.$$,
  $$Согласно материалу, нашествие шло 'от Немана до Москвы'.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1812-yilgi urush davomida qanday yirik jang bo'lib o'tgan?$$,
  $$Какое крупное сражение произошло в ходе войны 1812 года?$$,
  $$["Borodino jangi", "Poltava jangi", "Kulikovo jangi", "Muz ustidagi jang"]$$::jsonb,
  $$["Бородинское сражение", "Полтавская битва", "Куликовская битва", "Ледовое побоище"]$$::jsonb,
  0,
  $$Manbada 1812-yilgi urush voqealari orasida Borodino jangi tilga olingan.$$,
  $$Среди событий войны 1812 года материал называет Бородинское сражение.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1812-yilgi urush chog'ida Moskva bilan nima sodir bo'lgan?$$,
  $$Что произошло с Москвой во время войны 1812 года?$$,
  $$["U tashlab ketilgan va yong'in bo'lgan", "U yangi poytaxtga aylantirilgan", "U bombardimon bilan butunlay vayron qilingan", "Unda Napoleon bilan sulh imzolangan"]$$::jsonb,
  $$["Она была оставлена и сгорела", "Она стала новой столицей", "Она была полностью разрушена бомбардировками", "В ней подписали мир с Наполеоном"]$$::jsonb,
  0,
  $$Manbada 'Moskvaning tashlab ketilishi va yong'ini' voqeasi qayd etilgan.$$,
  $$В материале указано 'оставление и пожар Москвы'.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1812-yilgi Vatan urushi nima bilan yakunlangan?$$,
  $$Чем завершилась Отечественная война 1812 года?$$,
  $$["Frantsuz armiyasi Rossiyadan haydab chiqarilgan", "Fransiya Rossiyaga qo'shib olingan", "Moskva butunlay yo'qotilgan", "Napoleon bilan ittifoq tuzilgan"]$$::jsonb,
  $$["Изгнанием французской армии из России", "Присоединением Франции к России", "Потерей Москвы навсегда", "Заключением союза с Наполеоном"]$$::jsonb,
  0,
  $$Manbaga ko'ra, urush frantsuz armiyasining Rossiyadan haydab chiqarilishi bilan tugagan.$$,
  $$По материалу, война завершилась изгнанием французской армии из России.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Rossiya imperiyasida krepostnoylik qaysi yilda bekor qilingan?$$,
  $$В каком году было отменено крепостное право в Российской империи?$$,
  $$["1812-yilda", "1855-yilda", "1861-yilda", "1905-yilda"]$$::jsonb,
  $$["1812", "1855", "1861", "1905"]$$::jsonb,
  2,
  $$Krepostnoylik 1861-yilda Rossiya imperiyasida bekor qilingan.$$,
  $$Крепостное право было отменено в 1861 году в Российской империи.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1861-yilda krepostnoylik bekor qilinishi natijasida dehqonlar nimaga ega bo'lgan?$$,
  $$Что получили крестьяне в результате отмены крепостного права в 1861 году?$$,
  $$["Shaxsiy erkinlikka", "Bepul va darhol yerga", "Saylovlarda ovoz berish huquqiga", "Zodagonlik unvoniga"]$$::jsonb,
  $$["Личную свободу", "Землю бесплатно и сразу", "Право голоса на выборах", "Дворянский титул"]$$::jsonb,
  0,
  $$Manbada aytilishicha, dehqonlar shaxsiy erkinlikka ega bo'lgan.$$,
  $$Согласно материалу, крестьяне получают личную свободу.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Aleksandr II ning buyuk islohotlari nimadan boshlangan?$$,
  $$С чего начались великие реформы Александра II?$$,
  $$["Krepostnoylikning bekor qilinishidan", "1812-yilgi urushdagi g'alabadan", "Yasnaya Polyanadagi maktab ochilishidan", "Radio ixtiro qilinishidan"]$$::jsonb,
  $$["С отмены крепостного права", "С победы в войне 1812 года", "С открытия школы в Ясной Поляне", "С изобретения радио"]$$::jsonb,
  0,
  $$Manbada aytilishicha, aynan krepostnoylikning bekor qilinishidan Aleksandr II ning buyuk islohotlari boshlangan.$$,
  $$Материал указывает, что именно с отмены крепостного права начинаются великие реформы Александра II.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Ushbu davr tavsifida krepostnoylik bekor qilinishi va buyuk islohotlar bilan bir qatorda qanday harakat tilga olingan?$$,
  $$Какое движение упоминается в описании эпохи наряду с отменой крепостного права и великими реформами?$$,
  $$["Dekabristlar harakati", "Terrorchi narodniklar harakati", "Kasaba uyushmalari harakati", "G'arbchilar va slavyanchilar harakati"]$$::jsonb,
  $$["Движение декабристов", "Движение народников-террористов", "Профсоюзное движение", "Движение западников и славянофилов"]$$::jsonb,
  0,
  $$Davr tavsifida dekabristlar harakati, krepostnoylikning bekor qilinishi, buyuk islohotlar va sanoat ko'tarilishi bir qatorda sanab o'tilgan.$$,
  $$В описании эпохи наряду с отменой крепостного права и великими реформами упомянуто движение декабристов.$$
FROM eras e WHERE e.code = 'rus-imperiya-19';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$1812-yilgi Vatan urushida rus armiyasining bosh qo'mondoni kim bo'lgan?$$,
  $$Кто был главнокомандующим русской армией в Отечественной войне 1812 года?$$,
  $$["Mixail Kutuzov", "Aleksandr Popov", "Pyotr Chaykovskiy", "Nikolay Pirogov"]$$::jsonb,
  $$["Михаил Кутузов", "Александр Попов", "Пётр Чайковский", "Николай Пирогов"]$$::jsonb,
  0,
  $$Mixail Kutuzov 1812-yilgi Vatan urushida bosh qo'mondon bo'lgan.$$,
  $$Михаил Кутузов был главнокомандующим в Отечественной войне 1812 года.$$
FROM heroes h WHERE h.slug = 'kutuzov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Kutuzov nima uchun Moskvani frantsuzlarga tashlab ketgan?$$,
  $$Почему Кутузов оставил Москву французам?$$,
  $$["Armiyani saqlab qolish uchun", "Borodino jangida yutqazgani uchun", "Napoleon buyrug'i bilan", "Fransiya bilan ittifoq tuzish uchun"]$$::jsonb,
  $$["Чтобы сохранить армию", "Потому что проиграл Бородинское сражение", "По приказу императора Наполеона", "Чтобы заключить союз с Францией"]$$::jsonb,
  0,
  $$Kutuzov Moskvani aynan armiyani saqlab qolish maqsadida tashlab ketgan.$$,
  $$Кутузов оставил Москву ради сохранения армии.$$
FROM heroes h WHERE h.slug = 'kutuzov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ivan Kruzenshtern 1803–1806-yillarda nimani amalga oshirgan?$$,
  $$Что совершил Иван Крузенштерн в 1803–1806 годах?$$,
  $$["Birinchi rus dunyo aylanma sayohatiga rahbarlik qilgan", "Davriy qonunni kashf etgan", "Radiopriyomnik ixtiro qilgan", "Harbiy dala jarrohligiga asos solgan"]$$::jsonb,
  $$["Возглавил первое русское кругосветное плавание", "Открыл периодический закон", "Изобрёл радиоприёмник", "Основал военно-полевую хирургию"]$$::jsonb,
  0,
  $$Kruzenshtern 1803–1806-yillarda birinchi rus dunyo aylanma sayohatiga rahbarlik qilib, «Janubiy dengiz atlasi»ni tuzgan.$$,
  $$Крузенштерн в 1803–1806 годах возглавил первое русское кругосветное плавание и составил «Атлас Южного моря».$$
FROM heroes h WHERE h.slug = 'kruzenshtern';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Pushkin rus madaniyati tarixida kim sifatida tan olingan?$$,
  $$Кем считается Александр Пушкин в истории русской культуры?$$,
  $$["Zamonaviy rus adabiy tilining yaratuvchisi sifatida", "Harbiy dala jarrohligi asoschisi sifatida", "Birinchi rus dunyo aylanma dengizchisi sifatida", "Davriy jadval muallifi sifatida"]$$::jsonb,
  $$["Создателем современного русского литературного языка", "Основателем военно-полевой хирургии", "Первым русским кругосветным мореплавателем", "Автором периодической таблицы"]$$::jsonb,
  0,
  $$Manbada Pushkin zamonaviy rus adabiy tilining yaratuvchisi sifatida ta'riflangan.$$,
  $$Материал называет Пушкина создателем современного русского литературного языка.$$
FROM heroes h WHERE h.slug = 'pushkin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Pushkin qaysi asarni yozgan?$$,
  $$Какое произведение написал Александр Пушкин?$$,
  $$["«Yevgeniy Onegin»", "«Urush va tinchlik»", "«O'lik jonlar»", "«Gilos bog'i»"]$$::jsonb,
  $$["«Евгений Онегин»", "«Война и мир»", "«Мёртвые души»", "«Вишнёвый сад»"]$$::jsonb,
  0,
  $$Pushkin «Yevgeniy Onegin», «Mis chavandoz», ertaklar va «Kapitanning qizi»ni yozgan; qolgan asarlar boshqa mualliflarniki.$$,
  $$Пушкин написал «Евгения Онегина», «Медного всадника», сказки и «Капитанскую дочку»; остальные произведения принадлежат другим авторам.$$
FROM heroes h WHERE h.slug = 'pushkin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Nikolay Gogol qaysi asarni yozgan?$$,
  $$Какое произведение написал Николай Гоголь?$$,
  $$["«Revizor»", "«Yevgeniy Onegin»", "«Anna Karenina»", "«Jinoyat va jazo»"]$$::jsonb,
  $$["«Ревизор»", "«Евгений Онегин»", "«Анна Каренина»", "«Преступление и наказание»"]$$::jsonb,
  0,
  $$Gogol «Dikanka yaqinidagi xutorda kechlar», «Revizor» va «O'lik jonlar»ni yozgan.$$,
  $$Гоголь написал «Вечера на хуторе близ Диканьки», «Ревизора» и «Мёртвые души».$$
FROM heroes h WHERE h.slug = 'gogol';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Nikolay Pirogov qaysi tibbiyot sohasiga asos solgan?$$,
  $$Основателем какой области медицины считается Николай Пирогов?$$,
  $$["Harbiy dala jarrohligiga", "Psixiatriyaga", "Stomatologiyaga", "Oftalmologiyaga"]$$::jsonb,
  $$["Военно-полевой хирургии", "Психиатрии", "Стоматологии", "Офтальмологии"]$$::jsonb,
  0,
  $$Pirogov harbiy dala jarrohligiga asos solgan.$$,
  $$Пирогов является основателем военно-полевой хирургии.$$
FROM heroes h WHERE h.slug = 'pirogov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Nikolay Pirogov urushda birinchi bo'lib nimalarni qo'llagan?$$,
  $$Что первым применил Николай Пирогов на войне?$$,
  $$["Narkoz va gips bog'lamni", "Radiopriyomnikni", "Kimyoviy elementlar davriy jadvalini", "Janubiy dengiz atlasini"]$$::jsonb,
  $$["Наркоз и гипсовую повязку", "Радиоприёмник", "Периодическую таблицу элементов", "Атлас Южного моря"]$$::jsonb,
  0,
  $$Pirogov urushda birinchi bo'lib narkoz va gips bog'lamni qo'llagan, shuningdek yaradorlarni saralashni joriy qilgan.$$,
  $$Пирогов первым применил наркоз и гипсовую повязку на войне, а также ввёл сортировку раненых.$$
FROM heroes h WHERE h.slug = 'pirogov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Mixail Lermontov 26 yoshida qanday vafot etgan?$$,
  $$Как погиб Михаил Лермонтов в 26 лет?$$,
  $$["Duelda", "Borodino jangida", "Katorgada", "Dunyo aylanma sayohati chog'ida"]$$::jsonb,
  $$["На дуэли", "В Бородинском сражении", "На каторге", "Во время кругосветного плавания"]$$::jsonb,
  0,
  $$Manbaga ko'ra, Lermontov 26 yoshida duelda halok bo'lgan.$$,
  $$Согласно материалу, Лермонтов погиб на дуэли в 26 лет.$$
FROM heroes h WHERE h.slug = 'lermontov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Fyodor Dostoyevskiy qaysi asarni yozgan?$$,
  $$Какое произведение написал Фёдор Достоевский?$$,
  $$["«Jinoyat va jazo»", "«O'lik jonlar»", "«Urush va tinchlik»", "«Gilos bog'i»"]$$::jsonb,
  $$["«Преступление и наказание»", "«Мёртвые души»", "«Война и мир»", "«Вишнёвый сад»"]$$::jsonb,
  0,
  $$Dostoyevskiy «Jinoyat va jazo» va «Aka-uka Karamazovlar»ni yozgan, katorgani boshidan kechirgan.$$,
  $$Достоевский написал «Преступление и наказание» и «Братьев Карамазовых», пройдя каторгу.$$
FROM heroes h WHERE h.slug = 'dostoevskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Lev Tolstoy qaysi asarni yozgan?$$,
  $$Какое произведение написал Лев Толстой?$$,
  $$["«Urush va tinchlik»", "«Revizor»", "«Aka-uka Karamazovlar»", "«Borodino»"]$$::jsonb,
  $$["«Война и мир»", "«Ревизор»", "«Братья Карамазовы»", "«Бородино»"]$$::jsonb,
  0,
  $$Tolstoy «Urush va tinchlik» va «Anna Karenina» asarlarining muallifi.$$,
  $$Толстой — автор «Войны и мира» и «Анны Карениной».$$
FROM heroes h WHERE h.slug = 'tolstoy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Lev Tolstoy Yasnaya Polyanada nima qilgan?$$,
  $$Что сделал Лев Толстой в Ясной Поляне?$$,
  $$["Dehqon bolalari uchun maktab ochib, unga o'zi alifbe yozgan", "Rossiyadagi birinchi kasalxonani tashkil etgan", "Birinchi radiopriyomnikni yasagan", "Muzey uchun rasmlar to'plamini yig'gan"]$$::jsonb,
  $$["Открыл школу для крестьянских детей и написал для неё азбуку", "Основал первую в России больницу", "Построил первый радиоприёмник", "Собрал коллекцию картин для музея"]$$::jsonb,
  0,
  $$Tolstoy Yasnaya Polyanada dehqon bolalari uchun maktab ochib, unga o'zi alifbe yozgan.$$,
  $$Толстой открыл в Ясной Поляне школу для крестьянских детей и сам написал для неё азбуку.$$
FROM heroes h WHERE h.slug = 'tolstoy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Dmitriy Mendeleyev nimani kashf etgan?$$,
  $$Что открыл Дмитрий Менделеев?$$,
  $$["Davriy qonunni va elementlar jadvalini tuzgan", "Birinchi radiopriyomnikni", "Urushda narkoz qo'llash usulini", "Janubiy dengiz atlasini"]$$::jsonb,
  $$["Периодический закон и составил таблицу элементов", "Первый радиоприёмник", "Способ применения наркоза на войне", "Атлас Южного моря"]$$::jsonb,
  0,
  $$Mendeleyev davriy qonunni ochib, kimyoviy elementlar jadvalini tuzgan.$$,
  $$Менделеев открыл периодический закон и составил таблицу элементов.$$
FROM heroes h WHERE h.slug = 'mendeleev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Mendeleyev nima uchun jadvalida bo'sh katakchalar qoldirgan?$$,
  $$Почему Менделеев оставил в своей таблице пустые клетки?$$,
  $$["Hali topilmagan, keyinchalik topilgan elementlar uchun", "Hisob-kitobda xato qilgani uchun", "Undan oldin kashf etilgan elementlar uchun", "Jadval simmetrik ko'rinishi uchun"]$$::jsonb,
  $$["Для ещё не найденных элементов, которые позже нашлись", "Потому что ошибся в расчётах", "Для элементов, открытых до него", "Чтобы таблица выглядела симметрично"]$$::jsonb,
  0,
  $$Mendeleyev hali kashf etilmagan moddalar uchun jadvalda bo'sh joy qoldirgan, va keyinchalik ular topilgan.$$,
  $$Менделеев оставил в таблице пустые клетки для ещё не найденных веществ — и они нашлись.$$
FROM heroes h WHERE h.slug = 'mendeleev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Pyotr Chaykovskiy qaysi asarni yaratgan?$$,
  $$Какое произведение написал Пётр Чайковский?$$,
  $$["«Oqqush ko'li»", "«Volgadagi bo'g'ma tortuvchilar»", "«Dikanka yaqinidagi xutorda kechlar»", "«Mtsyri»"]$$::jsonb,
  $$["«Лебединое озеро»", "«Бурлаки на Волге»", "«Вечера на хуторе близ Диканьки»", "«Мцыри»"]$$::jsonb,
  0,
  $$Chaykovskiy «Oqqush ko'li», «Yong'oqchaka» va Birinchi fortepiano kontsertining muallifi.$$,
  $$Чайковский — автор «Лебединого озера», «Щелкунчика» и Первого концерта для фортепиано.$$
FROM heroes h WHERE h.slug = 'chaykovskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ilya Repin qaysi rasmni chizgan?$$,
  $$Какую картину написал Илья Репин?$$,
  $$["«Volgadagi bo'g'ma tortuvchilar»", "«Oqqush ko'li»", "«Mis chavandoz»", "«Zamonamiz qahramoni»"]$$::jsonb,
  $$["«Бурлаки на Волге»", "«Лебединое озеро»", "«Медный всадник»", "«Герой нашего времени»"]$$::jsonb,
  0,
  $$Repin «Volgadagi bo'g'ma tortuvchilar» va «Zaporojtsy» rasmlarini chizgan.$$,
  $$Репин написал «Бурлаков на Волге» и «Запорожцев».$$
FROM heroes h WHERE h.slug = 'repin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Popov 1895-yilda nimani namoyish etgan?$$,
  $$Что показал Александр Попов в 1895 году?$$,
  $$["Elektromagnit to'lqinlarni qabul qiluvchi asbobni", "Kimyoviy elementlar davriy jadvalini", "Birinchi gips bog'lamni", "Janubiy dengiz atlasini"]$$::jsonb,
  $$["Прибор для приёма электромагнитных волн", "Периодическую таблицу элементов", "Первую гипсовую повязку", "Атлас Южного моря"]$$::jsonb,
  0,
  $$Popov 1895-yilda elektromagnit to'lqinlarni qabul qiluvchi asbobni — dunyodagi birinchi radiopriyomniklardan birini namoyish etgan.$$,
  $$В 1895 году Попов показал прибор для приёма электромагнитных волн — один из первых радиоприёмников в мире.$$
FROM heroes h WHERE h.slug = 'popov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Anton Chexov kasbi bo'yicha kim bo'lgan?$$,
  $$Кем по образованию был Антон Чехов?$$,
  $$["Shifokor", "Yurist", "Muhandis", "Harbiy ofitser"]$$::jsonb,
  $$["Врачом", "Юристом", "Инженером", "Военным офицером"]$$::jsonb,
  0,
  $$Chexov врач bo'lib tahsil olgan va qisqa hikoya ustasi sifatida tanilgan.$$,
  $$Чехов был врачом по образованию и стал мастером короткого рассказа.$$
FROM heroes h WHERE h.slug = 'chehov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Anton Chexov Saxalinga borib nima qilgan?$$,
  $$Что сделал Антон Чехов, съездив на Сахалин?$$,
  $$["Katorgadagilarning hayotini tasvirlagan", "U yerda maktab ochgan", "Dehqonlar uchun kasalxona qurgan", "Opera yozgan"]$$::jsonb,
  $$["Описал жизнь каторжан", "Открыл там школу", "Построил больницу для крестьян", "Написал оперу"]$$::jsonb,
  0,
  $$Chexov Saxalinga sayohat qilib, u yerdagi katorgadagilarning hayotini tasvirlab yozgan.$$,
  $$Чехов съездил на Сахалин и описал жизнь каторжан.$$
FROM heroes h WHERE h.slug = 'chehov';

-- ===== rus-potryaseniya =====
INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Birinchi jahon urushi qaysi yillarda bo'lib o'tgan (material bo'yicha)?$$,
  $$В какие годы проходила Первая мировая война (согласно материалу)?$$,
  $$["1905–1914", "1914–1918", "1917–1922", "1918–1922"]$$::jsonb,
  $$["1905–1914", "1914–1918", "1917–1922", "1918–1922"]$$::jsonb,
  1,
  $$Material bo'yicha Birinchi jahon urushi 1914–1918-yillarda bo'lib o'tgan.$$,
  $$Согласно материалу, Первая мировая война проходила в 1914–1918 годах.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Rossiya Birinchi jahon urushida qaysi frontda jang qilgan?$$,
  $$На каком фронте воевала Россия в Первой мировой войне?$$,
  $$["G'arbiy front", "Sharqiy front", "Janubiy front", "Kavkaz fronti"]$$::jsonb,
  $$["Западный фронт", "Восточный фронт", "Южный фронт", "Кавказский фронт"]$$::jsonb,
  1,
  $$Material bo'yicha voqea Sharqiy frontda ro'y bergan.$$,
  $$Согласно материалу, событие происходило на Восточном фронте.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1917-yilgi inqilob qayerda sodir bo'lgan?$$,
  $$Где произошла революция 1917 года?$$,
  $$["Moskva", "Petrograd", "Kiev", "Minsk"]$$::jsonb,
  $$["Москва", "Петроград", "Киев", "Минск"]$$::jsonb,
  1,
  $$Material bo'yicha 1917-yilgi inqilob Petrogradda sodir bo'lgan.$$,
  $$Согласно материалу, революция 1917 года произошла в Петрограде.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1917-yilgi inqilob natijasida nima yuz berdi?$$,
  $$Что произошло в результате революции 1917 года?$$,
  $$["Nikolay II taxtdan voz kechdi va monarxiya barham topdi", "Rossiya respublika sifatida qayta tashkil topib, imperator taxtda qoldi", "Davlat dumasi birinchi marta chaqirildi", "Rossiya urushdan g'olib chiqdi"]$$::jsonb,
  $$["Николай II отрёкся от престола, и монархия прекратила существование", "Россия была реорганизована в республику, но император остался на престоле", "Государственная дума была созвана впервые", "Россия вышла из войны победителем"]$$::jsonb,
  0,
  $$Material bo'yicha 1917-yilgi inqilob natijasida Nikolay II taxtdan voz kechgan, monarxiya tugagan va hokimiyat bolsheviklar qo'liga o'tgan.$$,
  $$Согласно материалу, в результате революции 1917 года Николай II отрёкся от престола, монархия прекратила существование, а к власти пришли большевики.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$SSSR qaysi yilda tashkil topgan?$$,
  $$В каком году образовался СССР?$$,
  $$["1917", "1918", "1922", "1926"]$$::jsonb,
  $$["1917", "1918", "1922", "1926"]$$::jsonb,
  2,
  $$Material bo'yicha SSSR 1922-yilda tashkil topgan.$$,
  $$Согласно материалу, СССР образовался в 1922 году.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$SSSR qaysi shaharda tashkil topgan (material bo'yicha)?$$,
  $$В каком городе был образован СССР (согласно материалу)?$$,
  $$["Petrograd", "Moskva", "Kiev", "Toshkent"]$$::jsonb,
  $$["Петроград", "Москва", "Киев", "Ташкент"]$$::jsonb,
  1,
  $$Material bo'yicha SSSR Moskvada tashkil topgan.$$,
  $$Согласно материалу, СССР был образован в Москве.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1922-yilgi voqea natijasida nima yuz berdi?$$,
  $$Что произошло в результате события 1922 года?$$,
  $$["Respublikalar birlashib Sovet Sotsialistik Respublikalari Ittifoqini tashkil etdi", "Rossiya imperiyasi qayta tiklandi", "Davlat dumasi tarqatib yuborildi", "Birinchi jahon urushi boshlandi"]$$::jsonb,
  $$["Республики объединились в Союз Советских Социалистических Республик", "Была восстановлена Российская империя", "Государственная дума была распущена", "Началась Первая мировая война"]$$::jsonb,
  0,
  $$Material bo'yicha 1922-yilda respublikalar birlashib SSSRni tashkil etgan.$$,
  $$Согласно материалу, в 1922 году республики объединились в Союз Советских Социалистических Республик.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1914–1922-yillar davri (rus-potryaseniya) qanday voqealarni o'z ichiga oladi?$$,
  $$Какие события охватывает период 1914–1922 годов (rus-potryaseniya)?$$,
  $$["Birinchi jahon urushi, 1917-yilgi inqilob, Fuqarolar urushi va SSSR tashkil topishi", "Faqat Birinchi jahon urushi", "Faqat 1917-yilgi inqilob va SSSR tashkil topishi", "Ikkinchi jahon urushi va SSSR tashkil topishi"]$$::jsonb,
  $$["Первая мировая война, революция 1917 года, Гражданская война и образование СССР", "Только Первая мировая война", "Только революция 1917 года и образование СССР", "Вторая мировая война и образование СССР"]$$::jsonb,
  0,
  $$Material bo'yicha bu davr Birinchi jahon urushi, 1917-yilgi inqilob, Fuqarolar urushi va SSSR tashkil topishini qamrab oladi.$$,
  $$Согласно материалу, этот период охватывает Первую мировую войну, революцию 1917 года, Гражданскую войну и образование СССР.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Material bo'yicha Birinchi jahon urushi davrida jamiyatga qanday ta'sir ko'rsatdi?$$,
  $$Как, согласно материалу, Первая мировая война повлияла на общество?$$,
  $$["Front, orqa va jamiyat qaytarilmas tarzda o'zgardi", "Jamiyat hech qanday o'zgarishsiz qoldi", "Faqat armiya tarkibi o'zgardi", "Faqat iqtisodiyot o'zgardi"]$$::jsonb,
  $$["Фронт, тыл и общество изменились необратимо", "Общество осталось без изменений", "Изменился только состав армии", "Изменилась только экономика"]$$::jsonb,
  0,
  $$Material bo'yicha urush davrida front, orqa va jamiyat qaytarilmas tarzda o'zgargan.$$,
  $$Согласно материалу, во время войны фронт, тыл и общество изменились необратимо.$$
FROM eras e WHERE e.code = 'rus-potryaseniya';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$1916-yilda bir nechta yo'nalishda zarba berishga tayyorlangan mashhur hujumni kim boshqargan?$$,
  $$Кто в 1916 году провёл наступление, подготовленное сразу на нескольких участках?$$,
  $$["Aleksey Brusilov", "Nikolay II", "Georgiy Jukov", "Mixail Kutuzov"]$$::jsonb,
  $$["Алексей Брусилов", "Николай II", "Георгий Жуков", "Михаил Кутузов"]$$::jsonb,
  0,
  $$Material bo'yicha 1916-yilda Aleksey Brusilov bir nechta yo'nalishda zarba berish tamoyiliga asoslangan hujumni o'tkazgan.$$,
  $$Согласно материалу, в 1916 году Алексей Брусилов провёл наступление, подготовленное сразу на нескольких участках.$$
FROM heroes h WHERE h.slug = 'brusilov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Brusilov o'tkazgan hujum tarixga nima sifatida kirgan?$$,
  $$Чем вошло в историю наступление, проведённое Брусиловым?$$,
  $$["Bir nechta yo'nalishda zarba berishni tayyorlashning namunasi sifatida", "Faqat mudofaa mustahkamlash usuli sifatida", "Dengiz floti operatsiyasi sifatida", "Diplomatik muzokaralar sifatida"]$$::jsonb,
  $$["Как образец подготовки удара сразу на нескольких участках", "Как способ укрепления обороны", "Как операция военно-морского флота", "Как дипломатические переговоры"]$$::jsonb,
  0,
  $$Material bo'yicha bu hujum bir nechta yo'nalishda zarba berishni tayyorlashning namunasi sifatida tarixga kirgan.$$,
  $$Согласно материалу, это наступление вошло в историю как образец подготовки удара сразу на нескольких участках.$$
FROM heroes h WHERE h.slug = 'brusilov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksey Brusilov qaysi yillarda yashagan?$$,
  $$В какие годы жил Алексей Брусилов?$$,
  $$["1853–1926", "1868–1918", "1861–1917", "1870–1930"]$$::jsonb,
  $$["1853–1926", "1868–1918", "1861–1917", "1870–1930"]$$::jsonb,
  0,
  $$Material bo'yicha Aleksey Brusilov 1853–1926-yillarda yashagan.$$,
  $$Согласно материалу, Алексей Брусилов жил в 1853–1926 годах.$$
FROM heroes h WHERE h.slug = 'brusilov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Nikolay II qaysi yildan boshlab hukmronlik qilgan?$$,
  $$С какого года правил Николай II?$$,
  $$["1881", "1894", "1905", "1914"]$$::jsonb,
  $$["1881", "1894", "1905", "1914"]$$::jsonb,
  1,
  $$Material bo'yicha Nikolay II 1894-yildan boshlab hukmronlik qilgan.$$,
  $$Согласно материалу, Николай II правил с 1894 года.$$
FROM heroes h WHERE h.slug = 'nikolay-2';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Nikolay II qaysi yilda taxtdan voz kechgan?$$,
  $$В каком году Николай II отрёкся от престола?$$,
  $$["1914", "1916", "1917", "1922"]$$::jsonb,
  $$["1914", "1916", "1917", "1922"]$$::jsonb,
  2,
  $$Material bo'yicha Nikolay II 1917-yilda taxtdan voz kechgan.$$,
  $$Согласно материалу, Николай II отрёкся от престола в 1917 году.$$
FROM heroes h WHERE h.slug = 'nikolay-2';

-- ===== rus-sssr-20-30 =====
INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Vladimir Vernadskiy qanday ta'limot yaratdi?$$,
  $$Какое учение создал Владимир Вернадский?$$,
  $$["Biosfera haqidagi ta'limotni", "Kimyoviy elementlarning davriy qonunini", "Organizmlarning hujayra tuzilishi haqidagi nazariyani", "Tabiiy tanlanish orqali evolyutsiya nazariyasini"]$$::jsonb,
  $$["Учение о биосфере", "Периодический закон химических элементов", "Клеточную теорию строения организмов", "Теорию эволюции путём естественного отбора"]$$::jsonb,
  0,
  $$Vernadskiy biosfera haqidagi ta'limotni yaratgan — tirik moddalar sayyora qiyofasini o'zgartiradi, degan g'oyani ilgari surgan.$$,
  $$Вернадский создал учение о биосфере — о том, что живое вещество меняет облик планеты.$$
FROM heroes h WHERE h.slug = 'vernadskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Vladimir Vernadskiy fanga qanday tushunchani kiritdi?$$,
  $$Какое понятие ввёл в науку Владимир Вернадский?$$,
  $$["Noosfera", "Biom", "Ekotizim", "Atmosfera"]$$::jsonb,
  $$["Ноосферу", "Биом", "Экосистему", "Атмосферу"]$$::jsonb,
  0,
  $$Vernadskiy ilmiy muomalaga «noosfera» tushunchasini kiritgan.$$,
  $$Вернадский ввёл в науку понятие ноосферы.$$
FROM heroes h WHERE h.slug = 'vernadskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aviakonstruktor Andrey Tupolev nechta samolyot turini yaratgan?$$,
  $$Сколько типов самолётов создал авиаконструктор Андрей Туполев?$$,
  $$["Yuzdan ortiq", "O'ntachaga yaqin", "Aynan ellikta", "Mingdan ortiq"]$$::jsonb,
  $$["Более ста", "Около десяти", "Ровно пятьдесят", "Более тысячи"]$$::jsonb,
  0,
  $$Tupolev o'z faoliyati davomida yuzdan ortiq samolyot turini yaratgan.$$,
  $$Туполев создал более ста типов самолётов за свою карьеру.$$
FROM heroes h WHERE h.slug = 'tupolev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Valeriy Chkalov Shimoliy qutb orqali qanday samolyotda uchgan?$$,
  $$На самолёте какой марки Валерий Чкалов перелетел через Северный полюс?$$,
  $$["ANT-25", "I-16", "Po-2", "Il-2"]$$::jsonb,
  $$["АНТ-25", "И-16", "По-2", "Ил-2"]$$::jsonb,
  0,
  $$Chkalov Andrey Tupolev yaratgan ANT-25 samolyotida uchgan.$$,
  $$Чкалов совершил перелёт на самолёте АНТ-25, созданном Андреем Туполевым.$$
FROM heroes h WHERE h.slug = 'tupolev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$«Ishchi va kolxozchi ayol» haykalining muallifi kim?$$,
  $$Кто является автором скульптуры «Рабочий и колхозница»?$$,
  $$["Vera Muhina", "Mixail Sholoxov", "Sergey Eyzenshteyn", "Pyotr Kapitsa"]$$::jsonb,
  $$["Вера Мухина", "Михаил Шолохов", "Сергей Эйзенштейн", "Пётр Капица"]$$::jsonb,
  0,
  $$Mashhur «Ishchi va kolxozchi ayol» haykalini Vera Muhina yaratgan.$$,
  $$Автор знаменитой скульптуры «Рабочий и колхозница» — Вера Мухина.$$
FROM heroes h WHERE h.slug = 'muhina';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Vera Muhinaning «Ishchi va kolxozchi ayol» haykali 1937-yilda qayerda namoyish etilgan?$$,
  $$Где была показана скульптура Веры Мухиной «Рабочий и колхозница» в 1937 году?$$,
  $$["Parijdagi Butunjahon ko'rgazmasida", "Berlin Olimpiya o'yinlarida", "Nyu-Yorkdagi ko'rgazmada", "Venetsiya biennalesida"]$$::jsonb,
  $$["На Всемирной выставке в Париже", "На Олимпийских играх в Берлине", "На выставке в Нью-Йорке", "На Венецианской биеннале"]$$::jsonb,
  0,
  $$Haykal 1937-yilda Parijda o'tkazilgan Butunjahon ko'rgazmasida namoyish etilgan.$$,
  $$Скульптура была показана на Всемирной выставке в Париже в 1937 году.$$
FROM heroes h WHERE h.slug = 'muhina';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Fizik Pyotr Kapitsa nimani kashf etgan?$$,
  $$Что открыл физик Пётр Капица?$$,
  $$["Suyuq geliyning o'ta oquvchanligini", "Radioaktivlikni", "Atom yadrosining tuzilishini", "Elektromagnit induksiyani"]$$::jsonb,
  $$["Сверхтекучесть жидкого гелия", "Радиоактивность", "Строение атомного ядра", "Электромагнитную индукцию"]$$::jsonb,
  0,
  $$Kapitsa suyuq geliyning o'ta oquvchanlik hodisasini kashf etgan.$$,
  $$Капица открыл явление сверхтекучести жидкого гелия.$$
FROM heroes h WHERE h.slug = 'kapitsa';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Pyotr Kapitsa Kembrijdan qaytgach Moskvada qaysi institutni tashkil etgan?$$,
  $$Какой институт основал Пётр Капица в Москве, вернувшись из Кембриджа?$$,
  $$["Fizik muammolar institutini", "Atom energiyasi institutini", "Fizika-texnika institutini", "Kosmik tadqiqotlar institutini"]$$::jsonb,
  $$["Институт физических проблем", "Институт атомной энергии", "Физико-технический институт", "Институт космических исследований"]$$::jsonb,
  0,
  $$Kapitsa avval Kembrijda ishlagan, so'ng Moskvada Fizik muammolar institutiga asos solgan.$$,
  $$Капица работал в Кембридже, затем основал в Москве Институт физических проблем.$$
FROM heroes h WHERE h.slug = 'kapitsa';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Rejissyor Sergey Eyzenshteyn qaysi filmni suratga olgan?$$,
  $$Какой фильм снял режиссёр Сергей Эйзенштейн?$$,
  $$["«Potyomkin zirhli kreyseri»", "«Chapayev»", "«Volga-Volga»", "«Sirk»"]$$::jsonb,
  $$["«Броненосец „Потёмкин“»", "«Чапаев»", "«Волга-Волга»", "«Цирк»"]$$::jsonb,
  0,
  $$Eyzenshteyn «Potyomkin zirhli kreyseri» va «Aleksandr Nevskiy» filmlarini suratga olgan.$$,
  $$Эйзенштейн снял фильм «Броненосец „Потёмкин“», а также «Александра Невского».$$
FROM heroes h WHERE h.slug = 'eyzenshteyn';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Sergey Eyzenshteyn butun dunyoda o'rganiladigan qanday nazariyani ishlab chiqqan?$$,
  $$Какую теорию разработал Сергей Эйзенштейн, изучаемую во всём мире?$$,
  $$["Montaj nazariyasini", "Kinoda rang nazariyasini", "Ovozli kino nazariyasini", "Aktyorlik improvizatsiyasi nazariyasini"]$$::jsonb,
  $$["Теорию монтажа", "Теорию цвета в кино", "Теорию звукового кино", "Теорию актёрской импровизации"]$$::jsonb,
  0,
  $$Eyzenshteyn butun dunyoda o'rganiladigan montaj nazariyasini yaratgan.$$,
  $$Эйзенштейн разработал теорию монтажа, которую изучают во всём мире.$$
FROM heroes h WHERE h.slug = 'eyzenshteyn';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Uchuvchi Valeriy Chkalov 1937-yilda qanday muvaffaqiyatga erishgan?$$,
  $$Что совершил лётчик Валерий Чкалов в 1937 году?$$,
  $$["Moskvadan Shimoliy qutb orqali Amerikaga to'xtovsiz uchishni", "Dunyo bo'ylab birinchi aylanma parvozni", "Stratosferaga birinchi parvozni", "Moskvadan Parijga parvozni"]$$::jsonb,
  $$["Беспосадочный перелёт из Москвы через Северный полюс в Америку", "Первый полёт вокруг света", "Первый полёт в стратосферу", "Перелёт из Москвы в Париж"]$$::jsonb,
  0,
  $$1937-yilda Chkalov Moskvadan Shimoliy qutb orqali Amerikaga to'xtovsiz uchib o'tgan.$$,
  $$В 1937 году Чкалов совершил беспосадочный перелёт из Москвы через Северный полюс в Америку.$$
FROM heroes h WHERE h.slug = 'chkalov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Valeriy Chkalov qaysi yilda vafot etgan?$$,
  $$В каком году не стало Валерия Чкалова?$$,
  $$["1938-yilda", "1945-yilda", "1953-yilda", "1972-yilda"]$$::jsonb,
  $$["1938", "1945", "1953", "1972"]$$::jsonb,
  0,
  $$Valeriy Chkalov 1904-yilda tug'ilib, 1938-yilda vafot etgan.$$,
  $$Валерий Чкалов родился в 1904 году и умер в 1938 году.$$
FROM heroes h WHERE h.slug = 'chkalov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Mixail Sholoxovning «Tinch Don» romani nima haqida?$$,
  $$О чём роман Михаила Шолохова «Тихий Дон»?$$,
  $$["Urush va inqilob yillarida Don kazaklari hayoti haqida", "Zavod ishchilari hayoti haqida", "Shimolni o'zlashtirish haqida", "1905-yilgi Peterburg inqilobi haqida"]$$::jsonb,
  $$["О донском казачестве в годы войны и революции", "О жизни рабочих на заводе", "О покорении Севера", "О революции 1905 года в Петербурге"]$$::jsonb,
  0,
  $$«Tinch Don» romani urush va inqilob davridagi Don kazaklari hayotiga bag'ishlangan.$$,
  $$«Тихий Дон» — роман о донском казачестве в годы войны и революции.$$
FROM heroes h WHERE h.slug = 'sholohov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Mixail Sholoxov qanday mukofotga sazovor bo'lgan?$$,
  $$Какой награды был удостоен Михаил Шолохов?$$,
  $$["Adabiyot bo'yicha Nobel mukofotiga", "Tinchlik bo'yicha Nobel mukofotiga", "Pulitser mukofotiga", "Xalqaro Lenin mukofotiga"]$$::jsonb,
  $$["Нобелевской премии по литературе", "Нобелевской премии мира", "Пулитцеровской премии", "Международной премии Ленина"]$$::jsonb,
  0,
  $$Sholoxov adabiyot bo'yicha Nobel mukofoti laureati bo'lgan.$$,
  $$Шолохов — лауреат Нобелевской премии по литературе.$$
FROM heroes h WHERE h.slug = 'sholohov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksey Staxanov 1935-yilda nima qilgan?$$,
  $$Что сделал Алексей Стаханов в 1935 году?$$,
  $$["Bir smenada rekord miqdorda ko'mir qazib olgan", "Donbassda birinchi konni qurgan", "Yangi turdagi qazish moloti ixtiro qilgan", "Konchilar kasaba uyushmasiga rahbarlik qilgan"]$$::jsonb,
  $$["Добыл рекордное количество угля за смену", "Построил первую шахту в Донбассе", "Изобрёл новый вид отбойного молотка", "Возглавил профсоюз шахтёров"]$$::jsonb,
  0,
  $$1935-yilda Staxanov bir smenada rekord miqdorda ko'mir qazib olgan.$$,
  $$В 1935 году Стаханов за одну смену добыл рекордное количество угля.$$
FROM heroes h WHERE h.slug = 'stahanov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksey Staxanov nomi bilan atalgan, normadan ortiq ishlab chiqarish harakati qanday nomlangan?$$,
  $$Как называется движение за перевыполнение норм, названное в честь Алексея Стаханова?$$,
  $$["Staxanovchilik harakati", "Zarbdorlik harakati", "Sotsialistik musobaqa", "Novatorlar harakati"]$$::jsonb,
  $$["Стахановское движение", "Ударное движение", "Социалистическое соревнование", "Движение новаторов"]$$::jsonb,
  0,
  $$Staxanovning nomi ishlab chiqarish normalarini oshirib bajarish harakatiga — staxanovchilik harakatiga nom bergan.$$,
  $$Имя Стаханова дало название целому движению за перевыполнение производственных норм — стахановскому движению.$$
FROM heroes h WHERE h.slug = 'stahanov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$SSSRning 1920-30-yillar tarixida sanoatning jadal rivojlanishini anglatuvchi atama qanday nomlanadi?$$,
  $$Какой термин из истории СССР 1920-х-1930-х годов обозначает бурное развитие промышленности?$$,
  $$["Industrlashtirish", "Kollektivlashtirish", "NEP", "Madaniy inqilob"]$$::jsonb,
  $$["Индустриализация", "Коллективизация", "Нэп", "Культурная революция"]$$::jsonb,
  0,
  $$Industrlashtirish — SSSRda 1920-30-yillarda sanoatning rivojlantirilishini anglatuvchi atama.$$,
  $$Индустриализация — это термин, обозначающий развитие промышленности в СССР в 1920-1930-е годы.$$
FROM eras e WHERE e.code = 'rus-sssr-20-30';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$SSSRda 1920-30-yillarda ta'lim va madaniyat sohasidagi o'zgarishlarni anglatuvchi atama qanday nomlanadi?$$,
  $$Какой термин обозначает изменения в сфере образования и культуры в СССР 1920-х-1930-х годов?$$,
  $$["Madaniy inqilob", "Industrlashtirish", "Kollektivlashtirish", "NEP"]$$::jsonb,
  $$["Культурная революция", "Индустриализация", "Коллективизация", "Нэп"]$$::jsonb,
  0,
  $$Madaniy inqilob — bu davrda SSSRda ta'lim va madaniyat sohasidagi o'zgarishlarni anglatuvchi atama.$$,
  $$Культурная революция — термин, связанный с изменениями в образовании и культуре СССР этого периода.$$
FROM eras e WHERE e.code = 'rus-sssr-20-30';

-- ===== rus-vov =====
INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Moskva uchun jang qayerda bo'lib o'tgan?$$,
  $$В каком регионе проходила Битва за Москву?$$,
  $$["Stalingrad", "Berlin", "Podmoskovye (Moskva atrofi)", "Leningrad"]$$::jsonb,
  $$["Сталинград", "Берлин", "Подмосковье", "Ленинград"]$$::jsonb,
  2,
  $$Moskva uchun jang aynan Podmoskovyeda, ya'ni Moskva atrofida bo'lib o'tgan va u yerda nemis hujumi to'xtatilgan.$$,
  $$Битва за Москву проходила в Подмосковье, где немецкое наступление на столицу было остановлено.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1941-yil dekabrida Moskva yaqinida nima sodir bo'lgan?$$,
  $$Что произошло под Москвой в декабре 1941 года?$$,
  $$["Stalingrad mudofaasi boshlangan", "Sovet qo'shinlarining qarshi hujumi boshlangan", "Germaniyaning taslim bo'lishi haqida hujjat imzolangan", "G'alaba Paradi bo'lib o'tgan"]$$::jsonb,
  $$["Началась оборона Сталинграда", "Началось советское контрнаступление", "Подписана капитуляция Германии", "Прошёл Парад Победы"]$$::jsonb,
  1,
  $$Nemis hujumi to'xtatilgach, 1941-yil dekabrida Moskva yaqinida sovet qo'shinlarining qarshi hujumi boshlangan.$$,
  $$После остановки немецкого наступления в декабре 1941 года под Москвой началось советское контрнаступление.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Moskva uchun jang qaysi yilda bo'lgan?$$,
  $$В каком году проходила Битва за Москву?$$,
  $$["1943", "1945", "1939", "1941"]$$::jsonb,
  $$["1943", "1945", "1939", "1941"]$$::jsonb,
  3,
  $$Moskva uchun jang 1941-yilda bo'lib o'tgan.$$,
  $$Битва за Москву проходила в 1941 году.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Stalingrad jangi qaysi yillarni o'z ichiga oladi?$$,
  $$Какие годы охватывает Сталинградская битва?$$,
  $$["1942–1943", "1941", "1943–1944", "1944–1945"]$$::jsonb,
  $$["1942–1943", "1941", "1943–1944", "1944–1945"]$$::jsonb,
  0,
  $$Stalingrad jangi 1942–1943-yillarda bo'lib o'tgan.$$,
  $$Сталинградская битва проходила в 1942–1943 годах.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Stalingrad mudofaasi natijasida nemis guruhlashuvi qanday ahvolga tushgan?$$,
  $$Чем закончилась оборона Сталинграда для немецкой группировки?$$,
  $$["U shaharni egallagan", "U yo'qotishlarsiz chekingan", "U o'rab olingan (qamalga tushgan)", "U boshqa armiya bilan birlashgan"]$$::jsonb,
  $$["Она захватила город", "Она отступила без потерь", "Она была окружена", "Она объединилась с другой армией"]$$::jsonb,
  2,
  $$Stalingradni mudofaa qilish davomida nemis guruhlashuvi o'rab olingan (qamalga olingan).$$,
  $$В ходе обороны города немецкая группировка под Сталинградом была окружена.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Stalingrad jangi nimaning boshlanishi bo'lgan?$$,
  $$Началом чего стала Сталинградская битва?$$,
  $$["Nemislarning birinchi hujumining", "Urushdagi tub burilishning", "Urushning tugashining", "Moskva mudofaasining"]$$::jsonb,
  $$["Первого наступления немцев", "Коренного перелома в войне", "Окончания войны", "Обороны Москвы"]$$::jsonb,
  1,
  $$Stalingrad jangi urushdagi tub burilishning boshlanishi bo'lgan.$$,
  $$Сталинградская битва стала началом коренного перелома в войне.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Germaniyaning taslim bo'lish hujjati qachon imzolangan?$$,
  $$Когда была подписана капитуляция Германии?$$,
  $$["1945-yil 8-may", "1945-yil 24-iyun", "1945-yil 9-may", "1945-yil 2-sentabr"]$$::jsonb,
  $$["8 мая 1945 года", "24 июня 1945 года", "9 мая 1945 года", "2 сентября 1945 года"]$$::jsonb,
  0,
  $$Germaniyaning taslim bo'lishi haqidagi hujjat 1945-yil 8-mayda imzolangan.$$,
  $$8 мая 1945 года была подписана капитуляция Германии.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$G'alaba Paradi Qizil maydonda qachon bo'lib o'tgan?$$,
  $$Когда прошёл Парад Победы на Красной площади?$$,
  $$["1945-yil 8-may", "1945-yil 9-may", "1945-yil 1-may", "1945-yil 24-iyun"]$$::jsonb,
  $$["8 мая 1945 года", "9 мая 1945 года", "1 мая 1945 года", "24 июня 1945 года"]$$::jsonb,
  3,
  $$G'alaba Paradi Qizil maydonda 1945-yil 24-iyunda o'tkazilgan.$$,
  $$24 июня 1945 года на Красной площади прошёл Парад Победы.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$G'alaba voqealari — taslim bo'lish hujjatini imzolash va Parad — qayerda o'tkazilgan?$$,
  $$Где происходили события Победы — подписание капитуляции и Парад Победы?$$,
  $$["Stalingrad va Leningradda", "Berlin va Moskvada", "Faqat Berlinda", "Faqat Moskvada"]$$::jsonb,
  $$["В Сталинграде и Ленинграде", "В Берлине и Москве", "Только в Берлине", "Только в Москве"]$$::jsonb,
  1,
  $$Taslim bo'lish hujjati Berlinda imzolangan, G'alaba Paradi esa Moskvada o'tkazilgan.$$,
  $$Капитуляция была подписана в Берлине, а Парад Победы прошёл в Москве.$$
FROM eras e WHERE e.code = 'rus-vov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Georgiy Jukov qaysi shaharlar yaqinida qo'shinlarga qo'mondonlik qilgan?$$,
  $$Под какими городами Георгий Жуков командовал войсками?$$,
  $$["Kursk va Berlin yaqinida", "Faqat Moskva yaqinida", "Moskva, Leningrad va Stalingrad yaqinida", "Minsk va Kiev yaqinida"]$$::jsonb,
  $$["Под Курском и Берлином", "Только под Москвой", "Под Москвой, Ленинградом и Сталинградом", "Под Минском и Киевом"]$$::jsonb,
  2,
  $$Georgiy Jukov Moskva, Leningrad va Stalingrad yaqinida qo'shinlarga qo'mondonlik qilgan.$$,
  $$Георгий Жуков командовал войсками под Москвой, Ленинградом и Сталинградом.$$
FROM heroes h WHERE h.slug = 'zhukov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Georgiy Jukov 1945-yil 8-mayda nima qilgan?$$,
  $$Что сделал Георгий Жуков 8 мая 1945 года?$$,
  $$["G'alaba Paradiga qo'mondonlik qilgan", "Germaniyaning taslim bo'lishini qabul qilgan", "Stalingrad mudofaasini boshlagan", "Berlinni yolg'iz ozod qilgan"]$$::jsonb,
  $$["Командовал Парадом Победы", "Принял капитуляцию Германии", "Начал оборону Сталинграда", "Освободил Берлин в одиночку"]$$::jsonb,
  1,
  $$8-may 1945-yilda Georgiy Jukov Germaniyaning taslim bo'lishini qabul qilgan.$$,
  $$8 мая 1945 года Георгий Жуков принял капитуляцию Германии.$$
FROM heroes h WHERE h.slug = 'zhukov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Georgiy Jukovning yashagan yillari qaysi?$$,
  $$Какие годы жизни Георгия Жукова?$$,
  $$["1896–1968", "1900–1974", "1890–1965", "1896–1974"]$$::jsonb,
  $$["1896–1968", "1900–1974", "1890–1965", "1896–1974"]$$::jsonb,
  3,
  $$Georgiy Jukov 1896–1974-yillarda yashagan.$$,
  $$Годы жизни Георгия Жукова — 1896–1974.$$
FROM heroes h WHERE h.slug = 'zhukov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Konstantin Rokossovskiy qaysi frontlarga qo'mondonlik qilgan?$$,
  $$Какими фронтами командовал Константин Рокоссовский?$$,
  $$["Moskva va Leningradda", "Stalingrad, Kursk yoyi va Belorussiyada", "Faqat Berlinda", "Stalingrad va Qrimda"]$$::jsonb,
  $$["Под Москвой и Ленинградом", "Под Сталинградом, на Курской дуге и в Белоруссии", "Только в Берлине", "Под Сталинградом и в Крыму"]$$::jsonb,
  1,
  $$Konstantin Rokossovskiy Stalingrad, Kursk yoyi va Belorussiyada frontlarga qo'mondonlik qilgan.$$,
  $$Константин Рокоссовский командовал фронтами под Сталинградом, на Курской дуге и в Белоруссии.$$
FROM heroes h WHERE h.slug = 'rokossovskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Konstantin Rokossovskiy 1945-yil 24-iyunda nimaga qo'mondonlik qilgan?$$,
  $$Чем командовал Константин Рокоссовский 24 июня 1945 года?$$,
  $$["Stalingrad mudofaasiga", "Moskva yaqinidagi hujumga", "G'alaba Paradiga", "Germaniya taslim bo'lishiga"]$$::jsonb,
  $$["Обороной Сталинграда", "Наступлением под Москвой", "Парадом Победы", "Капитуляцией Германии"]$$::jsonb,
  2,
  $$Konstantin Rokossovskiy 1945-yil 24-iyunda G'alaba Paradiga qo'mondonlik qilgan.$$,
  $$24 июня 1945 года Константин Рокоссовский командовал Парадом Победы.$$
FROM heroes h WHERE h.slug = 'rokossovskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Konstantin Rokossovskiyning yashagan yillari qaysi?$$,
  $$Какие годы жизни Константина Рокоссовского?$$,
  $$["1896–1968", "1896–1974", "1905–1970", "1890–1960"]$$::jsonb,
  $$["1896–1968", "1896–1974", "1905–1970", "1890–1960"]$$::jsonb,
  0,
  $$Konstantin Rokossovskiy 1896–1968-yillarda yashagan.$$,
  $$Годы жизни Константина Рокоссовского — 1896–1968.$$
FROM heroes h WHERE h.slug = 'rokossovskiy';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Ikkala sarkardadan qaysi biri G'alaba Paradiga emas, Germaniyaning taslim bo'lishini qabul qilishga masʼul bo'lgan?$$,
  $$Кто из полководцев принял капитуляцию Германии, а не командовал Парадом Победы?$$,
  $$["Georgiy Jukov", "Konstantin Rokossovskiy", "Ikkalasi birgalikda", "Ularning hech biri"]$$::jsonb,
  $$["Георгий Жуков", "Константин Рокоссовский", "Оба вместе", "Ни один из них"]$$::jsonb,
  0,
  $$Germaniyaning taslim bo'lishini Georgiy Jukov qabul qilgan, G'alaba Paradiga esa Konstantin Rokossovskiy qo'mondonlik qilgan.$$,
  $$Капитуляцию Германии принял Георгий Жуков, а Парадом Победы командовал Константин Рокоссовский.$$
FROM heroes h WHERE h.slug = 'zhukov';

-- ===== rus-sssr-sovremennaya =====
INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Birinchi sun'iy Yer yo'ldoshi qaysi yilda uchirilgan?$$,
  $$В каком году был запущен первый искусственный спутник Земли?$$,
  $$["1955-yil", "1957-yil", "1959-yil", "1961-yil"]$$::jsonb,
  $$["1955 год", "1957 год", "1959 год", "1961 год"]$$::jsonb,
  1,
  $$Birinchi sun'iy Yer yo'ldoshi 1957-yilda Baykonur kosmodromidan uchirilgan.$$,
  $$Первый искусственный спутник Земли был запущен в 1957 году с космодрома Байконур.$$
FROM eras e WHERE e.code = 'rus-sssr-sovremennaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Birinchi sun'iy Yer yo'ldoshi qaysi kosmodromdan uchirilgan?$$,
  $$С какого космодрома был запущен первый искусственный спутник Земли?$$,
  $$["Baykonurdan", "Plesetskdan", "Kapustin Yardan", "Moskvadan"]$$::jsonb,
  $$["Байконур", "Плесецк", "Капустин Яр", "Москва"]$$::jsonb,
  0,
  $$Materialga ko'ra, birinchi sun'iy yo'ldosh Baykonurdan uchirilgan.$$,
  $$Согласно материалу, первый спутник был запущен с Байконура.$$
FROM eras e WHERE e.code = 'rus-sssr-sovremennaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Birinchi sputnik uchirilishi bilan nima boshlangan?$$,
  $$Что началось с запуском первого спутника?$$,
  $$["Sovuq urush", "Kosmik davr", "Qayta qurish (perestroyka)", "Ottepel (yumshash davri)"]$$::jsonb,
  $$["Холодная война", "Космическая эра", "Перестройка", "Оттепель"]$$::jsonb,
  1,
  $$Sputnik uchirilishi bilan kosmik davr boshlangan.$$,
  $$С запуском спутника начинается космическая эра.$$
FROM eras e WHERE e.code = 'rus-sssr-sovremennaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Perestroyka SSSRda qaysi yillarda o'tkazilgan?$$,
  $$В какие годы проходила перестройка в СССР?$$,
  $$["1980–1985-yillar", "1985–1991-yillar", "1991–1995-yillar", "1965–1970-yillar"]$$::jsonb,
  $$["1980–1985 годы", "1985–1991 годы", "1991–1995 годы", "1965–1970 годы"]$$::jsonb,
  1,
  $$Perestroyka 1985–1991-yillarda o'tkazilgan.$$,
  $$Перестройка проходила в 1985–1991 годах.$$
FROM eras e WHERE e.code = 'rus-sssr-sovremennaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Perestroyka nima edi?$$,
  $$Чем являлась перестройка?$$,
  $$["Sovet tizimini yangilashga urinish", "Harbiy operatsiya", "Iqtisodiy bloklash", "Xalqaro shartnoma"]$$::jsonb,
  $$["Попытка обновления советской системы", "Военная операция", "Экономическая блокада", "Международный договор"]$$::jsonb,
  0,
  $$Perestroyka — sovet tizimini yangilashga urinish bo'lib, gласность, iqtisodiy va siyosiy islohotlarni o'z ichiga olgan.$$,
  $$Перестройка была попыткой обновления советской системы: гласность, экономические и политические реформы.$$
FROM eras e WHERE e.code = 'rus-sssr-sovremennaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Perestroyka davrida islohotlar bilan bir qatorda yana nima amalga oshirilgan?$$,
  $$Что проводилось в период перестройки наряду с реформами?$$,
  $$["Oshkoralik (glasnost)", "Kollektivlashtirish", "Industrlashtirish", "Oziq-ovqat rekvizitsiyasi"]$$::jsonb,
  $$["Гласность", "Коллективизация", "Индустриализация", "Продразвёрстка"]$$::jsonb,
  0,
  $$Materialga ko'ra, perestroyka gласность, iqtisodiy va siyosiy islohotlarni o'z ichiga olgan.$$,
  $$Согласно материалу, перестройка включала гласность, экономические и политические реформы.$$
FROM eras e WHERE e.code = 'rus-sssr-sovremennaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$SSSR qaysi yilda parchalanib ketgan?$$,
  $$В каком году произошёл распад СССР?$$,
  $$["1989-yil", "1991-yil", "1993-yil", "1985-yil"]$$::jsonb,
  $$["1989 год", "1991 год", "1993 год", "1985 год"]$$::jsonb,
  1,
  $$SSSR 1991-yilda Moskvada parchalanib ketgan.$$,
  $$Распад СССР произошёл в 1991 году в Москве.$$
FROM eras e WHERE e.code = 'rus-sssr-sovremennaya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$SSSR parchalanishi natijasida nima yuz bergan?$$,
  $$Что произошло в результате распада СССР?$$,
  $$["Ittifoqdosh respublikalar mustaqillik e'lon qilib, markaziy hokimiyat organlari ishlashni to'xtatgan", "SSSRning yangi konstitutsiyasi qabul qilingan", "Ottepel davri boshlangan", "Birinchi sun'iy yo'ldosh uchirilgan"]$$::jsonb,
  $$["Союзные республики объявили независимость, а центральные органы власти прекратили работу", "Была принята новая конституция СССР", "Начался период оттепели", "Был запущен первый искусственный спутник"]$$::jsonb,
  0,
  $$Materialga ko'ra, ittifoqdosh respublikalar mustaqillik e'lon qilib, markaziy hokimiyat organlari ishlashni to'xtatgan.$$,
  $$Согласно материалу, союзные республики объявили независимость, центральные органы власти прекратили работу.$$
FROM eras e WHERE e.code = 'rus-sssr-sovremennaya';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Sovet kosmik dasturining bosh konstruktori kim bo'lgan?$$,
  $$Кто был главным конструктором советской космической программы?$$,
  $$["Sergey Korolyov", "Yuriy Gagarin", "Nikita Xrushchyov", "Leonid Brejnev"]$$::jsonb,
  $$["Сергей Королёв", "Юрий Гагарин", "Никита Хрущёв", "Леонид Брежнев"]$$::jsonb,
  0,
  $$Sergey Korolyov sovet kosmik dasturining bosh konstruktori bo'lgan.$$,
  $$Сергей Королёв был главным конструктором советской космической программы.$$
FROM heroes h WHERE h.slug = 'korolev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Sergey Korolyovning hayot yillari qaysilar?$$,
  $$Каковы годы жизни Сергея Королёва?$$,
  $$["1907–1966-yillar", "1934–1968-yillar", "1917–1953-yillar", "1900–1980-yillar"]$$::jsonb,
  $$["1907–1966 годы", "1934–1968 годы", "1917–1953 годы", "1900–1980 годы"]$$::jsonb,
  0,
  $$Sergey Korolyov 1907–1966-yillarda yashagan.$$,
  $$Сергей Королёв жил в 1907–1966 годах.$$
FROM heroes h WHERE h.slug = 'korolev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Korolyov rahbarligida 1957-yilda nima uchirilgan?$$,
  $$Что было запущено под руководством Королёва в 1957 году?$$,
  $$["Birinchi sun'iy Yer yo'ldoshi", "Gagarin uchgan kema", "Atom stansiyasi", "Qit'alararo harbiy raketa"]$$::jsonb,
  $$["Первый искусственный спутник Земли", "Корабль с Гагариным", "Атомная станция", "Межконтинентальная военная ракета"]$$::jsonb,
  0,
  $$Korolyov rahbarligida 1957-yilda birinchi sun'iy Yer yo'ldoshi uchirilgan.$$,
  $$Под руководством Королёва в 1957 году был запущен первый искусственный спутник Земли.$$
FROM heroes h WHERE h.slug = 'korolev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Korolyov rahbarligida 1961-yilda nima uchirilgan?$$,
  $$Что было запущено под руководством Королёва в 1961 году?$$,
  $$["Gagarin uchgan kema", "Ikkinchi sun'iy yo'ldosh", "Oyga avtomatik stansiya", "«Mir» orbital stansiyasi"]$$::jsonb,
  $$["Корабль с Гагариным", "Второй искусственный спутник", "Автоматическая станция к Луне", "Орбитальная станция «Мир»"]$$::jsonb,
  0,
  $$Korolyov rahbarligida 1961-yilda Gagarin uchgan kema uchirilgan.$$,
  $$Под руководством Королёва в 1961 году был запущен корабль с Гагариным.$$
FROM heroes h WHERE h.slug = 'korolev';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Dunyoda birinchi bo'lib kim kosmosga uchgan?$$,
  $$Кто первым в мире совершил полёт в космос?$$,
  $$["Yuriy Gagarin", "Sergey Korolyov", "German Titov", "Valentina Tereshkova"]$$::jsonb,
  $$["Юрий Гагарин", "Сергей Королёв", "Герман Титов", "Валентина Терешкова"]$$::jsonb,
  0,
  $$1961-yil 12-aprelda Yuriy Gagarin dunyoda birinchi bo'lib kosmosga uchgan.$$,
  $$12 апреля 1961 года Юрий Гагарин первым в мире совершил полёт в космос.$$
FROM heroes h WHERE h.slug = 'gagarin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yuriy Gagarinning kosmosga parvozi qachon sodir bo'lgan?$$,
  $$Когда состоялся полёт Юрия Гагарина в космос?$$,
  $$["1961-yil 12-aprel", "1957-yil 4-oktabr", "1960-yil 1-may", "1965-yil 12-aprel"]$$::jsonb,
  $$["12 апреля 1961 года", "4 октября 1957 года", "1 мая 1960 года", "12 апреля 1965 года"]$$::jsonb,
  0,
  $$Yuriy Gagarinning kosmosga parvozi 1961-yil 12-aprelda bo'lib o'tgan.$$,
  $$Полёт Юрия Гагарина в космос состоялся 12 апреля 1961 года.$$
FROM heroes h WHERE h.slug = 'gagarin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yuriy Gagarinning parvozi qancha vaqt davom etgan?$$,
  $$Сколько длился полёт Юрия Гагарина?$$,
  $$["108 daqiqa", "24 soat", "90 daqiqa", "48 daqiqa"]$$::jsonb,
  $$["108 минут", "24 часа", "90 минут", "48 минут"]$$::jsonb,
  0,
  $$Gagarinning parvozi 108 daqiqa davom etgan.$$,
  $$Полёт Гагарина длился 108 минут.$$
FROM heroes h WHERE h.slug = 'gagarin';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Yuriy Gagarinning hayot yillari qaysilar?$$,
  $$Каковы годы жизни Юрия Гагарина?$$,
  $$["1934–1968-yillar", "1907–1966-yillar", "1961–1991-yillar", "1930–1965-yillar"]$$::jsonb,
  $$["1934–1968 годы", "1907–1966 годы", "1961–1991 годы", "1930–1965 годы"]$$::jsonb,
  0,
  $$Yuriy Gagarin 1934–1968-yillarda yashagan.$$,
  $$Юрий Гагарин жил в 1934–1968 годах.$$
FROM heroes h WHERE h.slug = 'gagarin';

-- ===== rus-federatsiya =====
INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$Rossiya Federatsiyasi Konstitutsiyasi qaysi yilda qabul qilingan?$$,
  $$В каком году была принята Конституция Российской Федерации?$$,
  $$["1991-yil", "1993-yil", "1996-yil", "2000-yil"]$$::jsonb,
  $$["1991", "1993", "1996", "2000"]$$::jsonb,
  1,
  $$Rossiya Federatsiyasi Konstitutsiyasi 1993-yilda umumxalq ovoz berish orqali qabul qilingan.$$,
  $$Конституция Российской Федерации была принята в 1993 году на всенародном голосовании.$$
FROM eras e WHERE e.code = 'rus-federatsiya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1993-yilgi Rossiya Konstitutsiyasi qanday qabul qilingan?$$,
  $$Каким образом была принята Конституция России 1993 года?$$,
  $$["Parlament majlisida", "Umumxalq ovoz berish orqali", "Prezident farmoni bilan", "Oliy sud qarori bilan"]$$::jsonb,
  $$["На заседании парламента", "На всенародном голосовании", "Указом президента", "Решением Верховного суда"]$$::jsonb,
  1,
  $$Konstitutsiya bitta hokimiyat organi qarori bilan emas, balki umumxalq ovoz berish orqali qabul qilingan.$$,
  $$Конституция была принята на всенародном голосовании, а не решением одного органа власти.$$
FROM eras e WHERE e.code = 'rus-federatsiya';

INSERT INTO quiz_questions (era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT e.id, 'RU',
  $$1993-yilgi Konstitutsiya nimalarni belgilaydi?$$,
  $$Что определяет Конституция Российской Федерации 1993 года?$$,
  $$["Faqat mamlakatning tashqi siyosatini", "Hokimiyat tuzilishi va fuqarolar huquqlarini", "Qo'shni davlatlar bilan chegaralarni", "1993-yildagi hukumat tarkibini"]$$::jsonb,
  $$["Только внешнюю политику страны", "Устройство власти и права граждан", "Границы с соседними государствами", "Состав правительства на 1993 год"]$$::jsonb,
  1,
  $$Konstitutsiya yangi Rossiyaning hokimiyat tuzilishi va fuqarolar huquqlarini belgilaydi.$$,
  $$Конституция определяет устройство власти и права граждан новой России.$$
FROM eras e WHERE e.code = 'rus-federatsiya';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Vitaliy Ginzburg kim bo'lgan?$$,
  $$Кем был Виталий Гинзбург?$$,
  $$["Yozuvchi", "Nazariy fizik", "Konstruktor-muhandis", "Kimyogar"]$$::jsonb,
  $$["Писателем", "Физиком-теоретиком", "Инженером-конструктором", "Химиком"]$$::jsonb,
  1,
  $$Vitaliy Ginzburg nazariy fizik bo'lgan.$$,
  $$Виталий Гинзбург — физик-теоретик.$$
FROM heroes h WHERE h.slug = 'ginzburg';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Vitaliy Ginzburg qaysi yilda Nobel mukofoti sovrindori bo'lgan?$$,
  $$В каком году Виталий Гинзбург стал лауреатом Нобелевской премии?$$,
  $$["2000-yil", "2003-yil", "2008-yil", "1991-yil"]$$::jsonb,
  $$["2000", "2003", "2008", "1991"]$$::jsonb,
  1,
  $$Ginzburg 2003-yilda Nobel mukofotiga sazovor bo'lgan.$$,
  $$Гинзбург получил Нобелевскую премию в 2003 году.$$
FROM heroes h WHERE h.slug = 'ginzburg';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Vitaliy Ginzburg Nobel mukofotini nima uchun olgan?$$,
  $$За какие работы Виталий Гинзбург получил Нобелевскую премию?$$,
  $$["O'ta o'tkazuvchanlik nazariyasi bo'yicha ishlari uchun", "Yarimo'tkazgich geterostrukturalarini kashf etgani uchun", "Rossiya tarixi haqidagi romani uchun", "Tibbiyot sohasidagi tadqiqotlari uchun"]$$::jsonb,
  $$["За работы по теории сверхпроводимости", "За открытие полупроводниковых гетероструктур", "За роман об истории России", "За исследования в области медицины"]$$::jsonb,
  0,
  $$Ginzburg 2003-yilda o'ta o'tkazuvchanlik nazariyasi bo'yicha ishlari uchun Nobel mukofotini olgan.$$,
  $$Гинзбург — Нобелевский лауреат 2003 года за работы по теории сверхпроводимости.$$
FROM heroes h WHERE h.slug = 'ginzburg';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Soljenitsin kim bo'lgan?$$,
  $$Кем был Александр Солженицын?$$,
  $$["Fizik", "Yozuvchi", "Davlat arbobi", "Bastakor"]$$::jsonb,
  $$["Физиком", "Писателем", "Государственным деятелем", "Композитором"]$$::jsonb,
  1,
  $$Soljenitsin yozuvchi bo'lgan.$$,
  $$Солженицын — писатель.$$
FROM heroes h WHERE h.slug = 'solzhenitsyn';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Soljenitsin qaysi asarlarning muallifi?$$,
  $$Автором каких произведений является Александр Солженицын?$$,
  $$["«Urush va tinchlik» hamda «Anna Karenina»", "«Ivan Denisovichning bir kuni» va «GULAG arxipelagi»", "«Sokin Don» va «Ko'targan yer»", "«Master va Margarita»"]$$::jsonb,
  $$["«Войны и мира» и «Анны Карениной»", "«Одного дня Ивана Денисовича» и «Архипелага ГУЛАГ»", "«Тихого Дона» и «Поднятой целины»", "«Мастера и Маргариты»"]$$::jsonb,
  1,
  $$Soljenitsin «Ivan Denisovichning bir kuni» va «GULAG arxipelagi» asarlarining muallifidir.$$,
  $$Солженицын — автор «Одного дня Ивана Денисовича» и «Архипелага ГУЛАГ».$$
FROM heroes h WHERE h.slug = 'solzhenitsyn';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Aleksandr Soljenitsin qaysi yilda Rossiyaga qaytgan?$$,
  $$В каком году Александр Солженицын вернулся в Россию?$$,
  $$["1991-yil", "1994-yil", "2000-yil", "2008-yil"]$$::jsonb,
  $$["1991", "1994", "2000", "2008"]$$::jsonb,
  1,
  $$Nobel mukofoti sovrindori bo'lgan Soljenitsin 1994-yilda Rossiyaga qaytib kelgan.$$,
  $$Солженицын, лауреат Нобелевской премии, в 1994 году вернулся в Россию.$$
FROM heroes h WHERE h.slug = 'solzhenitsyn';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Joris Alfyorov kim bo'lgan?$$,
  $$Кем был Жорес Алфёров?$$,
  $$["Yozuvchi", "Fizik", "Tarixchi", "Diplomat"]$$::jsonb,
  $$["Писателем", "Физиком", "Историком", "Дипломатом"]$$::jsonb,
  1,
  $$Joris Alfyorov fizik bo'lgan.$$,
  $$Жорес Алфёров — физик.$$
FROM heroes h WHERE h.slug = 'alferov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Joris Alfyorov qaysi yilda Nobel mukofoti sovrindori bo'lgan?$$,
  $$В каком году Жорес Алфёров стал Нобелевским лауреатом?$$,
  $$["1994-yil", "2000-yil", "2003-yil", "2009-yil"]$$::jsonb,
  $$["1994", "2000", "2003", "2009"]$$::jsonb,
  1,
  $$Alfyorov 2000-yilda Nobel mukofotiga sazovor bo'lgan.$$,
  $$Алфёров получил Нобелевскую премию в 2000 году.$$
FROM heroes h WHERE h.slug = 'alferov';

INSERT INTO quiz_questions (hero_id, era_id, country, question_uz, question_ru, options, options_ru, correct_index, explanation_uz, explanation_ru)
SELECT h.id, h.era_id, 'RU',
  $$Joris Alfyorovning ishlari tufayli lazerlar va optik tolali aloqa nimaga asoslangan?$$,
  $$На чём основаны лазеры и оптоволоконная связь благодаря работам Жореса Алфёрова?$$,
  $$["O'ta o'tkazuvchanlik nazariyasiga", "Yarimo'tkazgich geterostrukturalariga", "Elementar zarralar kvant mexanikasiga", "Nisbiylik nazariyasiga"]$$::jsonb,
  $$["На теории сверхпроводимости", "На полупроводниковых гетероструктурах", "На квантовой механике элементарных частиц", "На теории относительности"]$$::jsonb,
  1,
  $$Alfyorovning yarimo'tkazgich geterostrukturalari bo'yicha ishlari lazerlar va optik tolali aloqa asosida yotadi.$$,
  $$Работы Алфёрова по полупроводниковым гетероструктурам лежат в основе лазеров и оптоволоконной связи.$$
FROM heroes h WHERE h.slug = 'alferov';
