-- Rossiya tarixi: ajdodlar, 1-partiya (country = 'RU').
--
-- MANBA VA TANLOV. Ismlar o'ylab topilmagan. Ular Istoriko-madaniy
-- standartning (IKS) «Персоналии» ro'yxatlaridan olingan — hujjatning
-- PDF nusxasi yuklab olinib, o'n bitta «Персоналии» bloki matndan ajratildi
-- (jami 527 nom). Bu partiyadagi har bir ajdod o'sha ro'yxatda BOR;
-- ro'yxatda yo'q birorta odam qo'shilmadi.
--
-- NEGA HAMMASI EMAS. 527 nom — bu nomzodlar havzasi, ajdodlar ro'yxati emas.
-- Unda chet ellik shaxslar (Chingizxon, Botu, Temur), juftliklar
-- («Борис и Глеб») va kichik amaldorlar ham bor. Bu partiyaga tanlov mezoni:
--   1) IKS ro'yxatida bo'lishi shart;
--   2) tug'ilgan va vafot yili aniq bo'lishi;
--   3) to'qqiz davrning har biri qamrab olinishi;
--   4) hukmdor, olim, yozuvchi, rassom va sayohatchi — o'zbek tarmog'idagi
--      kabi aralash tarkib.
--
-- SANALAR. «Taxminan» belgisi bo'lgan sanalar (Olga, Sergiy Radonejskiy,
-- Rublyov, Yermak, Dejnyov) manbalarda turlicha keltiriladi. Bu yerda eng
-- keng tarqalgan variant olindi; tarixchi ularni aniqlashi kerak.
--
-- TEKSHIRUV KERAK. `biography_verified = false` — bu skelet. Rossiya dasturi
-- bilan ishlaydigan metodist-tarixchi har bir yozuvni tasdiqlashi shart.
--
-- SALOMLASHUV. `greeting_uz` ustuni — ajdodning birinchi shaxsdagi salomi.
-- Rossiya ajdodlari uchun u ruscha yozildi: bu tarmoqni ruszabon bola o'qiydi.
-- Ustun nomi tarixiy sabablarga ko'ra `_uz` bo'lib qolgan.

INSERT INTO heroes (slug, country, era_id, name_ru, name_uz, title_ru, title_uz,
                    birth_year, death_year, bio_ru, bio_uz, greeting_uz,
                    portrait_emoji, accent, on_topic_keywords, biography_verified)
VALUES
-- ===================== I. Древняя Русь (862–1505) =====================
('knyaginya-olga', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Княгиня Ольга', 'Malika Olga',
 'Правительница Руси', 'Rus hukmdori', 920, 969,
 'Правила Русью после гибели мужа Игоря. Установила первый порядок сбора дани — уроки и погосты. Первой из русских правителей приняла христианство.',
 'Eri Igor halok bo''lgach Rusni boshqargan. Soliq yig''ishning birinchi tartibini — «urok» va «pogost» larni joriy qilgan. Rus hukmdorlari orasida birinchi bo''lib nasroniylikni qabul qilgan.',
 'Здравствуй, дитя! Я княгиня Ольга. Спроси меня о том, как я правила Русью, о уроках и погостах или о моём крещении.',
 '👑', 'zar', '["ольга","княгиня","уроки","погосты","крещение"]'::jsonb, false),

('vladimir-svyatoy', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Владимир Святой', 'Vladimir Muqaddas',
 'Креститель Руси', 'Rusni suvga cho''mdirgan knyaz', 960, 1015,
 'Князь киевский. В 988 году принял христианство и крестил Русь — это событие определило культуру страны на века вперёд.',
 'Kiev knyazi. 988-yilda nasroniylikni qabul qilib, Rusni suvga cho''mdirgan — bu voqea mamlakat madaniyatini asrlar davomida belgilab bergan.',
 'Здравствуй! Я князь Владимир. Спроси меня о крещении Руси в 988 году, о выборе веры или о моём княжении в Киеве.',
 '⛪', 'nil', '["владимир","креститель","988","крещение руси","киев"]'::jsonb, false),

('yaroslav-mudryy', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Ярослав Мудрый', 'Yaroslav Donishmand',
 'Князь киевский, законодатель', 'Kiev knyazi, qonunchi', 978, 1054,
 'При нём была составлена «Русская Правда» — первый свод законов Руси. Строил храмы, собирал книги и породнился с королевскими домами Европы.',
 'Uning davrida «Rus Pravdasi» — Rusning birinchi qonunlar to''plami tuzilgan. Ibodatxonalar qurdirgan, kitob to''plagan va Yevropa qirol xonadonlari bilan quda bo''lgan.',
 'Здравствуй! Я Ярослав, прозванный Мудрым. Спроси меня о «Русской Правде», о храмах Киева или о книгах, которые я собирал.',
 '📜', 'zar', '["ярослав","мудрый","русская правда","законы","киев"]'::jsonb, false),

('vladimir-monomah', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Владимир Мономах', 'Vladimir Monomax',
 'Князь киевский', 'Kiev knyazi', 1053, 1125,
 'Пытался остановить княжеские усобицы и созвал съезд в Любече. Написал «Поучение» — наставление детям о том, как жить и править.',
 'Knyazlar o''rtasidagi urushlarni to''xtatishga uringan va Lyubechda qurultoy chaqirgan. «Nasihat» asarini yozgan — bolalariga qanday yashash va boshqarish haqidagi o''git.',
 'Здравствуй! Я Владимир Мономах. Спроси меня о княжеских усобицах, о Любечском съезде или о моём «Поучении» детям.',
 '🛡️', 'qon', '["мономах","поучение","любеч","усобицы"]'::jsonb, false),

('aleksandr-nevskiy', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Александр Невский', 'Aleksandr Nevskiy',
 'Князь новгородский', 'Novgorod knyazi', 1221, 1263,
 'Одержал победы на Неве (1240) и на Чудском озере (1242). Выбрал путь переговоров с Ордой, чтобы сберечь силы северо-западных земель.',
 'Neva (1240) va Chud ko''lida (1242) g''alaba qozongan. Shimoli-g''arbiy yerlar kuchini asrash uchun O''rda bilan muzokara yo''lini tanlagan.',
 'Здравствуй! Я князь Александр. Спроси меня о битве на Неве, о Ледовом побоище или о моих поездках в Орду.',
 '⚔️', 'nil', '["невский","нева","чудское озеро","ледовое побоище","орда"]'::jsonb, false),

('dmitriy-donskoy', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Дмитрий Донской', 'Dmitriy Donskoy',
 'Великий князь московский', 'Moskva buyuk knyazi', 1350, 1389,
 'В 1380 году привёл русские полки на Куликово поле и одержал победу над Мамаем. При нём в Москве встал белокаменный Кремль.',
 '1380-yilda rus polklarini Kulikovo maydoniga boshlab borib, Mamayni yenggan. Uning davrida Moskvada oq toshdan Kreml qad rostlagan.',
 'Здравствуй! Я Дмитрий, прозванный Донским. Спроси меня о Куликовской битве, о белокаменном Кремле или о Сергии Радонежском.',
 '🐎', 'qon', '["донской","куликово","1380","мамай","кремль"]'::jsonb, false),

('sergiy-radonezhskiy', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Сергий Радонежский', 'Sergiy Radonejskiy',
 'Основатель Троицкого монастыря', 'Troitsa monastiri asoschisi', 1314, 1392,
 'Основал Троицкий монастырь под Москвой. Мирил враждующих князей и благословил Дмитрия Донского перед Куликовской битвой.',
 'Moskva yaqinida Troitsa monastirini qurgan. O''zaro urushayotgan knyazlarni yarashtirgan va Kulikovo jangi oldidan Dmitriy Donskoyga fotiha bergan.',
 'Мир тебе! Я Сергий из Радонежа. Спроси меня о Троицком монастыре, о примирении князей или о Куликовской битве.',
 '🕯️', 'feruza', '["сергий","радонежский","троица","монастырь"]'::jsonb, false),

('andrey-rublev', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Андрей Рублёв', 'Andrey Rublyov',
 'Иконописец', 'Ikona rassomi', 1360, 1428,
 'Величайший иконописец Древней Руси. Его «Троица» считается вершиной русской иконописи.',
 'Qadimgi Rusning eng buyuk ikona rassomi. Uning «Uchlik» asari rus ikona san''atining cho''qqisi sanaladi.',
 'Здравствуй! Я Андрей Рублёв, иконописец. Спроси меня о «Троице», о том, как готовят краски, или о моих учителях.',
 '🎨', 'feruza', '["рублев","троица","икона","иконопись"]'::jsonb, false),

('ivan-3', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Иван III', 'Ivan III',
 'Государь всея Руси', 'Butun Rus hukmdori', 1440, 1505,
 'Объединил русские земли вокруг Москвы и в 1480 году покончил с ордынской зависимостью. При нём построен нынешний Московский Кремль.',
 'Rus yerlarini Moskva atrofida birlashtirgan va 1480-yilda O''rdaga qaramlikka barham bergan. Uning davrida bugungi Moskva Kremli qurilgan.',
 'Здравствуй! Я Иван, государь всея Руси. Спроси меня о стоянии на Угре, об объединении земель или о строительстве Кремля.',
 '👑', 'zar', '["иван третий","угра","1480","кремль","объединение"]'::jsonb, false),

('afanasiy-nikitin', 'RU', (SELECT id FROM eras WHERE code = 'rus-drevnyaya'), 'Афанасий Никитин', 'Afanasiy Nikitin',
 'Купец и путешественник', 'Savdogar va sayyoh', 1433, 1475,
 'Тверской купец, дошедший до Индии за тридцать лет до Васко да Гамы. Записки «Хожение за три моря» — первое русское описание Индии.',
 'Tverlik savdogar; Vasko da Gamadan o''ttiz yil avval Hindistonga yetib borgan. «Uch dengiz ortiga sayohat» qaydlari — Hindiston haqidagi birinchi rus tavsifi.',
 'Здравствуй! Я Афанасий Никитин, купец из Твери. Спроси меня о пути в Индию, о трёх морях или о том, что я там увидел.',
 '⛵', 'feruza', '["никитин","хожение","три моря","индия","тверь"]'::jsonb, false),

-- ============== II. От княжества к царству (1506–1700) ==============
('ivan-groznyy', 'RU', (SELECT id FROM eras WHERE code = 'rus-tsarstvo'), 'Иван IV Грозный', 'Ivan IV Grozniy',
 'Первый русский царь', 'Birinchi rus podshosi', 1530, 1584,
 'В 1547 году венчался на царство — первым из русских правителей. При нём взяты Казань и Астрахань, созван первый Земский собор, началась опричнина.',
 '1547-yilda rus hukmdorlari orasida birinchi bo''lib podsholik tojini kiygan. Uning davrida Qozon va Astraxan olingan, birinchi Zemskiy sobor chaqirilgan, oprichnina boshlangan.',
 'Здравствуй! Я царь Иван Васильевич. Спроси меня о венчании на царство, о взятии Казани или о Земском соборе.',
 '👑', 'qon', '["иван грозный","1547","казань","земский собор","опричнина"]'::jsonb, false),

('ermak', 'RU', (SELECT id FROM eras WHERE code = 'rus-tsarstvo'), 'Ермак Тимофеевич', 'Yermak Timofeyevich',
 'Покоритель Сибири', 'Sibirni zabt etgan sarkarda', 1532, 1585,
 'Казачий атаман, начавший поход за Урал. С его похода начинается присоединение Сибири к Русскому государству.',
 'Ural ortiga yurish boshlagan kazak atamani. Uning yurishidan Sibirning Rus davlatiga qo''shilishi boshlangan.',
 'Здравствуй! Я Ермак, атаман казачий. Спроси меня о походе за Урал, о сибирских реках или о хане Кучуме.',
 '⚔️', 'qon', '["ермак","сибирь","урал","казаки","кучум"]'::jsonb, false),

('kuzma-minin', 'RU', (SELECT id FROM eras WHERE code = 'rus-tsarstvo'), 'Кузьма Минин', 'Kuzma Minin',
 'Организатор ополчения', 'Xalq lashkari tashkilotchisi', 1570, 1616,
 'Нижегородский староста. В 1611 году призвал собрать средства и людей на освобождение Москвы — так родилось Второе ополчение.',
 'Nijniy Novgorod oqsoqoli. 1611-yilda Moskvani ozod qilish uchun mablag'' va odam to''plashga chaqirgan — Ikkinchi xalq lashkari shundan tug''ilgan.',
 'Здравствуй! Я Кузьма Минин из Нижнего Новгорода. Спроси меня о том, как собиралось ополчение, или об освобождении Москвы.',
 '🛡️', 'zar', '["минин","ополчение","нижний новгород","смута","1612"]'::jsonb, false),

('dmitriy-pozharskiy', 'RU', (SELECT id FROM eras WHERE code = 'rus-tsarstvo'), 'Дмитрий Пожарский', 'Dmitriy Pojarskiy',
 'Воевода Второго ополчения', 'Ikkinchi lashkar sarkardasi', 1578, 1642,
 'Возглавил войско Второго ополчения и вместе с Мининым освободил Москву в 1612 году, положив конец Смутному времени.',
 'Ikkinchi xalq lashkari qo''shiniga boshchilik qilgan va Minin bilan birga 1612-yilda Moskvani ozod etib, Notinch davrga barham bergan.',
 'Здравствуй! Я князь Дмитрий Пожарский. Спроси меня о походе на Москву, о Смутном времени или о Кузьме Минине.',
 '⚔️', 'qon', '["пожарский","ополчение","1612","москва","смута"]'::jsonb, false),

('ivan-fedorov', 'RU', (SELECT id FROM eras WHERE code = 'rus-tsarstvo'), 'Иван Фёдоров', 'Ivan Fyodorov',
 'Первопечатник', 'Birinchi kitob bosuvchi', 1520, 1583,
 'Выпустил «Апостол» (1564) — первую точно датированную печатную книгу на Руси. Позже издал первый русский букварь.',
 '«Apostol» (1564) — Rusda aniq sanasi ma''lum birinchi bosma kitobni chiqargan. Keyinroq birinchi rus alifbosini nashr etgan.',
 'Здравствуй! Я Иван Фёдоров, печатник. Спроси меня об «Апостоле», о печатном станке или о первом букваре.',
 '📖', 'feruza', '["федоров","апостол","1564","книгопечатание","букварь"]'::jsonb, false),

('semen-dezhnev', 'RU', (SELECT id FROM eras WHERE code = 'rus-tsarstvo'), 'Семён Дежнёв', 'Semyon Dejnyov',
 'Землепроходец', 'Yer kashfiyotchisi', 1605, 1673,
 'В 1648 году прошёл проливом между Азией и Америкой — за восемьдесят лет до Беринга. Его отчёт пролежал в архиве почти сто лет.',
 '1648-yilda Osiyo bilan Amerika orasidagi bo''g''ozdan o''tgan — Beringdan sakson yil avval. Uning hisoboti arxivda qariyb yuz yil yotib qolgan.',
 'Здравствуй! Я Семён Дежнёв, казак. Спроси меня о плавании вокруг Чукотки, о проливе или о моих отписках в Якутск.',
 '⛵', 'nil', '["дежнев","пролив","чукотка","1648","землепроходец"]'::jsonb, false),

-- ============ III. От царства к империи (1701–1800) ============
('petr-1', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-18'), 'Пётр I', 'Pyotr I',
 'Первый российский император', 'Birinchi Rossiya imperatori', 1672, 1725,
 'Преобразовал армию и флот, основал Санкт-Петербург (1703), победил в Северной войне и в 1721 году принял титул императора.',
 'Armiya va flotni qayta qurgan, Sankt-Peterburgni asos solgan (1703), Shimoliy urushda g''alaba qozongan va 1721-yilda imperator unvonini olgan.',
 'Здравствуй! Я Пётр Алексеевич. Спроси меня о строительстве флота, о Санкт-Петербурге или о Северной войне.',
 '⚓', 'nil', '["петр первый","флот","петербург","полтава","северная война"]'::jsonb, false),

('ekaterina-2', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-18'), 'Екатерина II', 'Yekaterina II',
 'Императрица всероссийская', 'Butun Rossiya imperatritsasi', 1729, 1796,
 'Правила тридцать четыре года. Созвала Уложенную комиссию, провела губернскую реформу, при ней Россия вышла к Чёрному морю.',
 'O''ttiz to''rt yil hukmronlik qilgan. Ulojennaya komissiyani chaqirgan, guberniya islohotini o''tkazgan; uning davrida Rossiya Qora dengizga chiqqan.',
 'Здравствуй! Я Екатерина Алексеевна. Спроси меня об Уложенной комиссии, о новых городах или о присоединении Крыма.',
 '👑', 'zar', '["екатерина вторая","уложенная комиссия","крым","губернии"]'::jsonb, false),

('lomonosov', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-18'), 'Михаил Ломоносов', 'Mixail Lomonosov',
 'Учёный-энциклопедист', 'Qomusiy olim', 1711, 1765,
 'Сын помора, пришедший учиться в Москву пешком. Химик, физик, поэт и историк; по его замыслу основан Московский университет.',
 'Pomor o''g''li, Moskvaga piyoda o''qishga kelgan. Kimyogar, fizik, shoir va tarixchi; uning tashabbusi bilan Moskva universiteti tashkil etilgan.',
 'Здравствуй! Я Михаил Ломоносов. Спроси меня о дороге в Москву, о законе сохранения вещества или об университете.',
 '🔬', 'feruza', '["ломоносов","университет","химия","мозаика","помор"]'::jsonb, false),

('suvorov', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-18'), 'Александр Суворов', 'Aleksandr Suvorov',
 'Генералиссимус', 'Generalissimus', 1730, 1800,
 'Не проиграл ни одного сражения. Взял Измаил, перешёл через Альпы и написал «Науку побеждать» — книгу для солдат.',
 'Birorta jangda yengilmagan. Izmailni olgan, Alp tog''laridan oshib o''tgan va askarlar uchun «G''alaba qozonish ilmi» kitobini yozgan.',
 'Здравствуй, богатырь! Я Александр Суворов. Спроси меня об Измаиле, о переходе через Альпы или о «Науке побеждать».',
 '⚔️', 'qon', '["суворов","измаил","альпы","наука побеждать"]'::jsonb, false),

('kulibin', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-18'), 'Иван Кулибин', 'Ivan Kulibin',
 'Механик-изобретатель', 'Mexanik-ixtirochi', 1735, 1818,
 'Самоучка из Нижнего Новгорода. Создал часы-яйцо с театром внутри, проект одноарочного моста через Неву и прожектор с зеркалами.',
 'Nijniy Novgorodlik o''z-o''zini o''qitgan usta. Ichida teatri bor tuxumsimon soat, Neva ustidan bir kamarli ko''prik loyihasi va ko''zgulli projektor yaratgan.',
 'Здравствуй! Я Иван Кулибин, механик. Спроси меня о часах-яйце, о мосте через Неву или о моих фонарях.',
 '⚙️', 'feruza', '["кулибин","часы","мост","изобретатель","механик"]'::jsonb, false),

-- ============ IV. Российская империя (1801–1913) ============
('kutuzov', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Михаил Кутузов', 'Mixail Kutuzov',
 'Полководец', 'Sarkarda', 1745, 1813,
 'Главнокомандующий в Отечественной войне 1812 года. Дал Бородинское сражение, оставил Москву ради сохранения армии и изгнал Наполеона из России.',
 '1812-yilgi Vatan urushida bosh qo''mondon. Borodino jangini bergan, armiyani saqlash uchun Moskvani tashlab chiqqan va Napoleonni Rossiyadan quvib chiqargan.',
 'Здравствуй! Я Михаил Илларионович Кутузов. Спроси меня о Бородине, о совете в Филях или об изгнании Наполеона.',
 '⚔️', 'qon', '["кутузов","1812","бородино","фили","наполеон"]'::jsonb, false),

('pushkin', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Александр Пушкин', 'Aleksandr Pushkin',
 'Поэт', 'Shoir', 1799, 1837,
 'Создатель современного русского литературного языка. Написал «Евгения Онегина», «Медного всадника», сказки и «Капитанскую дочку».',
 'Zamonaviy rus adabiy tilining yaratuvchisi. «Yevgeniy Onegin», «Mis chavandoz», ertaklar va «Kapitan qizi» asarlarini yozgan.',
 'Здравствуй! Я Александр Пушкин. Спроси меня о Лицее, об «Онегине», о сказках или о моей няне.',
 '✒️', 'zar', '["пушкин","онегин","лицей","сказки","поэт"]'::jsonb, false),

('lermontov', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Михаил Лермонтов', 'Mixail Lermontov',
 'Поэт и прозаик', 'Shoir va nosir', 1814, 1841,
 'Автор «Бородина», «Мцыри» и романа «Герой нашего времени». Погиб на дуэли в двадцать шесть лет.',
 '«Borodino», «Mtsiri» va «Zamonamiz qahramoni» romani muallifi. Yigirma olti yoshida duelda halok bo''lgan.',
 'Здравствуй! Я Михаил Лермонтов. Спроси меня о «Бородине», о Кавказе или о «Герое нашего времени».',
 '✒️', 'nil', '["лермонтов","бородино","мцыри","кавказ","дуэль"]'::jsonb, false),

('gogol', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Николай Гоголь', 'Nikolay Gogol',
 'Писатель', 'Yozuvchi', 1809, 1852,
 'Написал «Вечера на хуторе близ Диканьки», «Ревизора» и «Мёртвые души». Соединил смех и печаль так, как до него не умел никто.',
 '«Dikanka yaqinidagi qishloqda oqshomlar», «Revizor» va «O''lik jonlar» asarlarini yozgan. Kulgi bilan g''amni undan avval hech kim uddalay olmagan tarzda birlashtirgan.',
 'Здравствуй! Я Николай Гоголь. Спроси меня о «Ревизоре», о «Мёртвых душах» или о вечерах близ Диканьки.',
 '✒️', 'feruza', '["гоголь","ревизор","мертвые души","диканька"]'::jsonb, false),

('tolstoy', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Лев Толстой', 'Lev Tolstoy',
 'Писатель', 'Yozuvchi', 1828, 1910,
 'Автор «Войны и мира» и «Анны Карениной». Открыл школу для крестьянских детей в Ясной Поляне и сам написал для неё азбуку.',
 '«Urush va tinchlik» hamda «Anna Karenina» muallifi. Yasnaya Polyanada dehqon bolalari uchun maktab ochgan va unga o''zi alifbo yozgan.',
 'Здравствуй! Я Лев Николаевич Толстой. Спроси меня о «Войне и мире», о школе в Ясной Поляне или о моей азбуке.',
 '📚', 'feruza', '["толстой","война и мир","ясная поляна","азбука"]'::jsonb, false),

('dostoevskiy', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Фёдор Достоевский', 'Fyodor Dostoyevskiy',
 'Писатель', 'Yozuvchi', 1821, 1881,
 'Автор «Преступления и наказания» и «Братьев Карамазовых». Прошёл каторгу и писал о совести и выборе человека.',
 '«Jinoyat va jazo» hamda «Aka-uka Karamazovlar» muallifi. Katorgani boshdan kechirgan va inson vijdoni hamda tanlovi haqida yozgan.',
 'Здравствуй! Я Фёдор Достоевский. Спроси меня о моих книгах, о Петербурге или о годах в Сибири.',
 '📖', 'nil', '["достоевский","преступление и наказание","карамазовы","каторга"]'::jsonb, false),

('chehov', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Антон Чехов', 'Anton Chexov',
 'Писатель и врач', 'Yozuvchi va shifokor', 1860, 1904,
 'Врач по образованию. Мастер короткого рассказа и автор «Вишнёвого сада». Съездил на Сахалин и описал жизнь каторжан.',
 'Kasbi shifokor. Qisqa hikoya ustasi va «Gilos bog''i» muallifi. Saxalinga borib, mahbuslar hayotini tasvirlagan.',
 'Здравствуй! Я Антон Павлович Чехов. Спроси меня о моих рассказах, о работе врача или о поездке на Сахалин.',
 '🩺', 'feruza', '["чехов","вишневый сад","сахалин","врач","рассказ"]'::jsonb, false),

('mendeleev', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Дмитрий Менделеев', 'Dmitriy Mendeleyev',
 'Химик', 'Kimyogar', 1834, 1907,
 'Открыл периодический закон и составил таблицу элементов, оставив в ней пустые клетки для ещё не найденных веществ — и они нашлись.',
 'Davriy qonunni kashf etgan va elementlar jadvalini tuzgan; unda hali topilmagan moddalar uchun bo''sh katak qoldirgan — va ular topilgan.',
 'Здравствуй! Я Дмитрий Иванович Менделеев. Спроси меня о периодическом законе, о пустых клетках таблицы или о моих полётах на аэростате.',
 '🧪', 'feruza', '["менделеев","таблица","периодический закон","химия","элементы"]'::jsonb, false),

('pirogov', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Николай Пирогов', 'Nikolay Pirogov',
 'Хирург', 'Jarroh', 1810, 1881,
 'Основатель военно-полевой хирургии. Первым применил наркоз и гипсовую повязку на войне, ввёл сортировку раненых.',
 'Harbiy dala jarrohligining asoschisi. Urushda birinchi bo''lib narkoz va gips bog''lamni qo''llagan, yaradorlarni saralash tartibini joriy etgan.',
 'Здравствуй! Я Николай Иванович Пирогов, хирург. Спроси меня о наркозе, о гипсовой повязке или о работе на войне.',
 '🩺', 'qon', '["пирогов","хирургия","наркоз","гипс","севастополь"]'::jsonb, false),

('chaykovskiy', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Пётр Чайковский', 'Pyotr Chaykovskiy',
 'Композитор', 'Bastakor', 1840, 1893,
 'Автор «Лебединого озера», «Щелкунчика» и Первого концерта для фортепиано. Его музыку играют во всём мире.',
 '«Oqqushlar ko''li», «Yong''oqchaqar» va fortepiano uchun Birinchi kontsert muallifi. Uning musiqasi butun dunyoda ijro etiladi.',
 'Здравствуй! Я Пётр Ильич Чайковский. Спроси меня о «Щелкунчике», о «Лебедином озере» или о том, как рождается мелодия.',
 '🎼', 'feruza', '["чайковский","щелкунчик","лебединое озеро","балет","музыка"]'::jsonb, false),

('repin', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Илья Репин', 'Ilya Repin',
 'Художник', 'Rassom', 1844, 1930,
 'Написал «Бурлаков на Волге» и «Запорожцев». Умел показать характер человека одним взглядом и жестом.',
 '«Volgadagi burlaklar» va «Zaporojliklar» asarlarini yaratgan. Insonning fe''l-atvorini bir qarash va bir harakat bilan ko''rsata olgan.',
 'Здравствуй! Я Илья Репин, художник. Спроси меня о «Бурлаках», о том, как я пишу портрет, или о моих учениках.',
 '🎨', 'zar', '["репин","бурлаки","запорожцы","живопись","портрет"]'::jsonb, false),

('popov', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Александр Попов', 'Aleksandr Popov',
 'Физик, изобретатель радио', 'Fizik, radio ixtirochisi', 1859, 1906,
 'В 1895 году показал прибор для приёма электромагнитных волн — один из первых радиоприёмников в мире.',
 '1895-yilda elektromagnit to''lqinlarni qabul qiluvchi asbobni namoyish etgan — dunyodagi birinchi radiopriyomniklardan biri.',
 'Здравствуй! Я Александр Степанович Попов. Спроси меня о грозоотметчике, о радиоволнах или о первой радиограмме.',
 '📡', 'nil', '["попов","радио","волны","1895","грозоотметчик"]'::jsonb, false),

('kruzenshtern', 'RU', (SELECT id FROM eras WHERE code = 'rus-imperiya-19'), 'Иван Крузенштерн', 'Ivan Kruzenshtern',
 'Мореплаватель', 'Dengizchi', 1770, 1846,
 'Возглавил первое русское кругосветное плавание (1803–1806) и составил «Атлас Южного моря».',
 'Birinchi rus dunyo aylanma safariga (1803–1806) boshchilik qilgan va «Janubiy dengiz atlasi»ni tuzgan.',
 'Здравствуй! Я Иван Фёдорович Крузенштерн. Спроси меня о кругосветном плавании, о «Надежде» или о картах океана.',
 '⛵', 'nil', '["крузенштерн","кругосветное","надежда","атлас","море"]'::jsonb, false),

-- ============ V. Потрясения (1914–1922) ============
('nikolay-2', 'RU', (SELECT id FROM eras WHERE code = 'rus-potryaseniya'), 'Николай II', 'Nikolay II',
 'Последний российский император', 'Rossiyaning so''nggi imperatori', 1868, 1918,
 'Правил с 1894 года. При нём прошли первая русская революция, созыв Государственной думы и Первая мировая война. Отрёкся от престола в 1917 году.',
 '1894-yildan hukmronlik qilgan. Uning davrida birinchi rus inqilobi, Davlat dumasining chaqirilishi va Birinchi jahon urushi bo''lgan. 1917-yilda taxtdan voz kechgan.',
 'Здравствуй! Я император Николай Александрович. Спроси меня о Государственной думе, о войне или об отречении.',
 '👑', 'qon', '["николай второй","дума","отречение","1917","война"]'::jsonb, false),

('brusilov', 'RU', (SELECT id FROM eras WHERE code = 'rus-potryaseniya'), 'Алексей Брусилов', 'Aleksey Brusilov',
 'Генерал', 'General', 1853, 1926,
 'В 1916 году провёл наступление, вошедшее в историю как Брусиловский прорыв — образец подготовки удара сразу на нескольких участках.',
 '1916-yilda tarixga «Brusilov yorib o''tishi» nomi bilan kirgan hujumni o''tkazgan — bir vaqtning o''zida bir necha uchastkada zarba tayyorlashning namunasi.',
 'Здравствуй! Я генерал Брусилов. Спроси меня о прорыве 1916 года, о подготовке наступления или о службе.',
 '⚔️', 'qon', '["брусилов","прорыв","1916","наступление"]'::jsonb, false),

-- ============ VI. СССР в 1920–1930-е (1923–1940) ============
('stahanov', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-20-30'), 'Алексей Стаханов', 'Aleksey Staxanov',
 'Шахтёр', 'Konchi', 1906, 1977,
 'В 1935 году за смену добыл рекордное количество угля. Его имя дало название целому движению за перевыполнение норм.',
 '1935-yilda bir smenada rekord miqdorda ko''mir qazib olgan. Uning nomi me''yorni oshirib bajarish harakatiga nom bergan.',
 'Здравствуй! Я Алексей Стаханов, забойщик. Спроси меня о рекорде в шахте, о работе отбойным молотком или о моей бригаде.',
 '⚙️', 'qon', '["стаханов","шахта","уголь","рекорд","1935"]'::jsonb, false),

-- ============ VII. Великая Отечественная война (1941–1945) ============
('zhukov', 'RU', (SELECT id FROM eras WHERE code = 'rus-vov'), 'Георгий Жуков', 'Georgiy Jukov',
 'Маршал Советского Союза', 'Sovet Ittifoqi marshali', 1896, 1974,
 'Командовал войсками под Москвой, Ленинградом и Сталинградом. 8 мая 1945 года принял капитуляцию Германии.',
 'Moskva, Leningrad va Stalingrad ostidagi qo''shinlarga qo''mondonlik qilgan. 1945-yil 8-mayda Germaniyaning taslim bo''lishini qabul qilgan.',
 'Здравствуй! Я маршал Жуков. Спроси меня о битве за Москву, о Сталинграде или о Дне Победы.',
 '🎖️', 'qon', '["жуков","маршал","москва","сталинград","победа"]'::jsonb, false),

('rokossovskiy', 'RU', (SELECT id FROM eras WHERE code = 'rus-vov'), 'Константин Рокоссовский', 'Konstantin Rokossovskiy',
 'Маршал Советского Союза', 'Sovet Ittifoqi marshali', 1896, 1968,
 'Командовал фронтами под Сталинградом, на Курской дуге и в Белоруссии. Командовал Парадом Победы 24 июня 1945 года.',
 'Stalingrad ostida, Kursk yoyida va Belorussiyada frontlarga qo''mondonlik qilgan. 1945-yil 24-iyunda G''alaba paradiga qo''mondonlik qilgan.',
 'Здравствуй! Я маршал Рокоссовский. Спроси меня о Курской дуге, об операции «Багратион» или о Параде Победы.',
 '🎖️', 'qon', '["рокоссовский","курская дуга","багратион","парад победы"]'::jsonb, false),

-- ============ VIII. СССР (1946–1991) ============
('korolev', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-sovremennaya'), 'Сергей Королёв', 'Sergey Korolyov',
 'Конструктор ракет', 'Raketa konstruktori', 1907, 1966,
 'Главный конструктор советской космической программы. Под его руководством запущены первый спутник (1957) и корабль с Гагариным (1961).',
 'Sovet kosmik dasturining bosh konstruktori. Uning rahbarligida birinchi sun''iy yo''ldosh (1957) va Gagarin uchgan kema (1961) uchirilgan.',
 'Здравствуй! Я Сергей Павлович Королёв. Спроси меня о первом спутнике, о подготовке полёта Гагарина или о ракетах.',
 '🚀', 'nil', '["королев","спутник","ракета","космос","1957"]'::jsonb, false),

('gagarin', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-sovremennaya'), 'Юрий Гагарин', 'Yuriy Gagarin',
 'Первый космонавт', 'Birinchi kosmonavt', 1934, 1968,
 '12 апреля 1961 года первым в мире совершил полёт в космос на корабле «Восток». Полёт длился 108 минут.',
 '1961-yil 12-aprelda dunyoda birinchi bo''lib «Vostok» kemasida kosmosga uchgan. Parvoz 108 daqiqa davom etgan.',
 'Здравствуй! Я Юрий Гагарин. Спроси меня о полёте 12 апреля, о том, что видно из космоса, или о слове «Поехали!».',
 '🚀', 'nil', '["гагарин","космос","восток","1961","поехали"]'::jsonb, false);
