-- Rossiya tarixi: fakt kartochkalari, 2-partiya.
-- V303 da kartochkasiz qolgan 29 ajdodning har biriga kamida bittadan.
-- Sanalar IKS ning «События/даты» ro'yxatidan. `verified = false`.

INSERT INTO fact_cards (hero_id, era_id, country, topic_ru, topic_uz,
                        question_ru, question_uz, fact_ru, fact_uz,
                        detail_ru, detail_uz, keywords, source, verified)
SELECT h.id, h.era_id, 'RU', v.topic_ru, v.topic_uz, v.q_ru, v.q_uz,
       v.fact_ru, v.fact_uz, v.detail_ru, v.detail_uz, v.kw::jsonb,
       'Историко-культурный стандарт (перечень событий, дат и персоналий)', false
FROM (VALUES

('vladimir-monomah', 'Любечский съезд', 'Lyubech qurultoyi',
 'Зачем вы собрали князей в Любече?', 'Nega knyazlarni Lyubechga yig''gansiz?',
 'В Любече мы договорились: «каждый да держит отчину свою» — чтобы прекратить войны между княжествами.',
 'Lyubechda kelishdik: «har kim o''z otasidan qolgan yerini tutsin» — knyazliklar o''rtasidagi urushlarni to''xtatish uchun.',
 'Мы делили Русь по старому обычаю — по старшинству, и каждый передел означал новую усобицу. Половцы этим пользовались: приходили, когда князья были заняты друг другом.

Решение выглядело простым: пусть каждый владеет землёй отца и не тянется к чужой. Съезд не остановил усобицы навсегда, но впервые князья сами признали общее правило.',
 'Rusni eski odat bo''yicha — kattalik tartibida bo''lardik va har bir qayta taqsimlash yangi urush degani edi. Qipchoqlar bundan foydalanardi: knyazlar bir-biri bilan band bo''lganda kelardi.

Yechim oddiy ko''rinardi: har kim otasining yerini tutsin va o''zganikiga qo''l cho''zmasin. Qurultoy urushlarni butunlay to''xtatmadi, ammo knyazlar birinchi marta umumiy qoidani o''zlari tan olishdi.',
 '["любеч","съезд","отчина","усобицы","половцы"]'),

('sergiy-radonezhskiy', 'Троицкий монастырь', 'Troitsa monastiri',
 'Как вы основали монастырь?', 'Monastirni qanday qurgansiz?',
 'Мы с братом ушли в лес и поставили келью с малой церковью. Люди приходили сами — так вырос монастырь.',
 'Akam bilan o''rmonga chiqib, kichik cherkovli hujra qurdik. Odamlar o''zlari kelaverdi — monastir shunday o''sdi.',
 'Сначала нас было двое, потом брат ушёл — ему было тяжело. Я остался один среди леса, и это были самые трудные годы.

Постепенно вокруг стали селиться другие. Я не звал их: правило было простое — каждый работает своими руками. Из этой лесной кельи вырос монастырь, а из монастыря — десятки других: мои ученики уходили и ставили новые обители по всему северу.',
 'Avval ikkitamiz edik, keyin akam ketdi — unga og''ir bo''ldi. Men o''rmon o''rtasida yolg''iz qoldim va bu eng qiyin yillar edi.

Asta-sekin atrofga boshqalar joylasha boshladi. Men ularni chaqirmadim: qoida oddiy edi — har kim o''z qo''li bilan ishlaydi. Shu o''rmon hujrasidan monastir, monastirdan esa o''nlab boshqalari o''sdi: shogirdlarim ketib, butun shimol bo''ylab yangi maskanlar qurdi.',
 '["троица","монастырь","лес","келья","ученики"]'),

('andrey-rublev', '«Троица»', '«Uchlik»',
 'Чем особенна ваша «Троица»?', '«Uchlik»ingiz nimasi bilan alohida?',
 'В «Троице» три ангела сидят вокруг чаши, и между ними нет спора — только согласие. Я писал её для Троицкого собора.',
 '«Uchlik»da uch farishta kosa atrofida o''tiradi va ular orasida bahs yo''q — faqat hamjihatlik. Uni Troitsa sobori uchun yozganman.',
 'Время было тяжёлое: усобицы, набеги, разорение. Икону я писал «в похвалу Сергию» — тому, кто мирил князей.

Поэтому в ней нет действия и нет главного: три фигуры равны, склонены друг к другу и образуют круг. Тот, кто смотрит, оказывается внутри этого круга. Согласие здесь не нарисовано словами — оно построено линией.',
 'Davr og''ir edi: o''zaro urushlar, bosqinlar, vayronagarchilik. Ikonani «Sergiyga hamd aytib» yozganman — knyazlarni yarashtirgan kishiga.

Shuning uchun unda harakat ham, asosiy figura ham yo''q: uch figura teng, bir-biriga engashgan va doira hosil qiladi. Qaragan odam shu doiraning ichida qoladi. Hamjihatlik bu yerda so''z bilan chizilmagan — u chiziq bilan qurilgan.',
 '["троица","икона","сергий","круг","согласие"]'),

('afanasiy-nikitin', 'Хожение за три моря', 'Uch dengiz ortiga sayohat',
 'Что такое «Хожение за три моря»?', '«Uch dengiz ortiga sayohat» nima?',
 'Это мои записки о пути в Индию. Я вышел из Твери по торговым делам, а вернулся через шесть лет.',
 'Bu Hindistonga borgan yo''lim haqidagi qaydlarim. Tverdan savdo ishi bilan chiqib, olti yildan keyin qaytdim.',
 'Всё пошло не по плану сразу: у Астрахани нас ограбили, товар пропал, возвращаться было не с чем и незачем. Я пошёл дальше — через Персию в Индию.

Я писал не для славы, а для себя: что почём, как одеваются, чем торгуют, во что верят. Именно поэтому записки и ценны — в них нет украшательства. До Индии я добрался за тридцать лет до Васко да Гамы, но домой не дошёл: умер под Смоленском.',
 'Hammasi darrov rejadan chiqdi: Astraxan yonida bizni taladilar, mol yo''qoldi, qaytishga na imkon, na ma''no qoldi. Men oldinga yurdim — Fors orqali Hindistonga.

Shuhrat uchun emas, o''zim uchun yozdim: narxlar qanday, qanday kiyinishadi, nima savdo qilishadi, nimaga ishonishadi. Aynan shuning uchun qaydlar qimmatli — ularda bezash yo''q. Hindistonga Vasko da Gamadan o''ttiz yil avval yetib bordim, ammo uyga yetmadim: Smolensk yonida vafot etdim.',
 '["хожение","три моря","индия","тверь","записки"]'),

('ermak', 'Поход за Урал', 'Ural ortiga yurish',
 'Зачем вы пошли за Урал?', 'Nega Ural ortiga borgansiz?',
 'Мы пошли за Каменный пояс — за Урал — и разбили войско хана Кучума. С этого началось присоединение Сибири.',
 'Tosh kamar ortiga — Ural ortiga bordik va Kuchumxon qo''shinini tor-mor etdik. Sibirning qo''shilishi shundan boshlandi.',
 'Нас было немного — несколько сотен казаков. Но у нас были пищали, а против них конница выходила плохо.

Шли по рекам: реки в Сибири — единственные дороги. Зимовали, теряли людей, снова шли. Я до конца похода не дожил — утонул в Иртыше. Но путь был проложен, и следом пошли другие.',
 'Bizni ko''p emas edik — bir necha yuz kazak. Ammo bizda pishchallar bor edi, ularga qarshi otliq qo''shin yomon chiqardi.

Daryolar bo''ylab yurdik: Sibirda daryolar yagona yo''l. Qishladik, odam yo''qotdik, yana yurdik. Men yurish oxirini ko''rmadim — Irtishda cho''kdim. Ammo yo''l ochilgandi va ortimdan boshqalar bordi.',
 '["ермак","урал","кучум","сибирь","иртыш"]'),

('ivan-fedorov', '«Апостол»', '«Apostol»',
 'Какую книгу вы напечатали первой?', 'Birinchi bo''lib qaysi kitobni bosgansiz?',
 'В 1564 году мы выпустили «Апостол» — первую на Руси точно датированную печатную книгу.',
 '1564-yilda «Apostol»ni chiqardik — Rusda aniq sanasi ma''lum birinchi bosma kitob.',
 'До печати книгу переписывали от руки: месяцы работы на один экземпляр, и в каждом списке — свои ошибки.

Печатный станок давал другое: сто одинаковых книг без единого расхождения. Мы работали над «Апостолом» почти год — набирали буквы, подбирали краску, выверяли текст. Позже я издал и первый букварь: печать нужна была не только церкви, но и школе.',
 'Bosmadan avval kitob qo''lda ko''chirilardi: bitta nusxa uchun oylab mehnat va har bir ko''chirmada o''z xatosi.

Bosma dastgoh boshqa narsa berardi: bir-biridan farqsiz yuzta kitob. «Apostol» ustida qariyb bir yil ishladik — harf terdik, bo''yoq tanladik, matnni sinchikladik. Keyinroq birinchi alifboni ham chiqardim: bosma faqat cherkovga emas, maktabga ham kerak edi.',
 '["апостол","1564","печать","станок","букварь"]'),

('kuzma-minin', 'Сбор ополчения', 'Lashkar to''plash',
 'Как собирали Второе ополчение?', 'Ikkinchi lashkar qanday to''plangan?',
 'Я обратился к нижегородцам: отдать часть имущества на войско. Собирали деньги, оружие и людей всем городом.',
 'Nijniy Novgorodliklarga murojaat qildim: mol-mulkning bir qismini qo''shinga berish kerak. Pul, qurol va odamni butun shahar bo''lib to''pladik.',
 'Москва была занята, царя не было, каждый город жил сам по себе. Ждать было некого — приходилось начинать самим.

Деньги собирали не по доброй воле одной: постановили брать долю с имущества, а с несогласных — принудительно. Это было жёстко, но иначе войско не собрать. Воеводой позвали князя Пожарского: нужен был человек с военным именем и чистой репутацией.',
 'Moskva band edi, podsho yo''q edi, har bir shahar o''zicha yashardi. Kutadigan kim yo''q edi — o''zimiz boshlashga to''g''ri keldi.

Pulni faqat xohish bilan to''plamadik: mol-mulkdan ulush olish, rozi bo''lmaganlardan majburan olish qaror qilindi. Bu qattiq edi, ammo aks holda qo''shin yig''ilmasdi. Sarkarda etib knyaz Pojarskiyni chaqirdik: harbiy nomi va toza obro''si bor odam kerak edi.',
 '["ополчение","нижний новгород","сбор","1611","пожарский"]'),

('dmitriy-pozharskiy', 'Освобождение Москвы', 'Moskvaning ozod etilishi',
 'Когда вы освободили Москву?', 'Moskvani qachon ozod qilgansiz?',
 'В 1612 году ополчение вошло в Москву. Смутное время после этого пошло на убыль.',
 '1612-yilda lashkar Moskvaga kirdi. Notinch davr shundan keyin so''na boshladi.',
 'Мы шли не прямо: сначала на Ярославль, где стояли четыре месяца — собирали силы, устраивали управление, чеканили монету. Ополчение стало похоже на государство раньше, чем взяло столицу.

В Москве бои шли за Китай-город и Кремль. После освобождения созвали Земский собор, и он избрал царя — Михаила Романова. Так закончилась Смута: не победой одного, а общим решением.',
 'To''g''ri bormadik: avval Yaroslavlga, u yerda to''rt oy turdik — kuch to''pladik, boshqaruv o''rnatdik, tanga zarb qildik. Lashkar poytaxtni olishdan avval davlatga o''xshab qoldi.

Moskvada janglar Kitay-gorod va Kreml uchun bordi. Ozod etilgach, Zemskiy sobor chaqirildi va u podshoni sayladi — Mixail Romanovni. Notinch davr shunday tugadi: bittasining g''alabasi bilan emas, umumiy qaror bilan.',
 '["1612","москва","ярославль","земский собор","романов"]'),

('semen-dezhnev', 'Пролив', 'Bo''g''oz',
 'Что вы открыли в 1648 году?', '1648-yilda nimani kashf etgansiz?',
 'В 1648 году мы обошли морем крайний восточный мыс Азии и прошли проливом между Азией и Америкой.',
 '1648-yilda dengiz orqali Osiyoning eng sharqiy burnini aylanib o''tdik va Osiyo bilan Amerika orasidagi bo''g''ozdan o''tdik.',
 'Вышли на кочах — небольших судах, приспособленных ко льдам. Из семи судов до конца дошло одно.

Мы не знали, что делаем открытие: искали моржовый зуб и новые земли для ясака. Отписку я послал в Якутск, и она пролежала в архиве почти сто лет. Пролив нашли заново — и назвали именем Беринга, который прошёл его через восемьдесят лет после нас.',
 'Kochlarda — muzga moslashgan kichik kemalarda chiqdik. Yettita kemadan oxirigacha bittasi yetib bordi.

Kashfiyot qilayotganimizni bilmasdik: morj tishi va yasak uchun yangi yerlar izlardik. Hisobotni Yakutskka yubordim va u arxivda qariyb yuz yil yotdi. Bo''g''ozni qaytadan topishdi — va bizdan sakson yil keyin o''tgan Bering nomi bilan atashdi.',
 '["1648","пролив","коч","якутск","беринг"]'),

('ekaterina-2', 'Уложенная комиссия', 'Ulojennaya komissiya',
 'Зачем вы созвали Уложенную комиссию?', 'Nega Ulojennaya komissiyani chaqirgansiz?',
 'Я созвала выборных от разных сословий, чтобы составить новый свод законов взамен старого Уложения 1649 года.',
 'Turli tabaqalardan saylanganlarni chaqirdim — 1649-yilgi eski Uloje o''rniga yangi qonunlar to''plamini tuzish uchun.',
 'Я написала для комиссии «Наказ» — большое сочинение о том, каким должен быть закон. Многое взяла у европейских мыслителей.

Депутаты съехались со всей империи и привезли наказы с мест: чего просят крестьяне, купцы, казаки, народы Поволжья. Свод законов так и не составили — сословия не сошлись. Но эти наказы остались: они показывают страну изнутри, глазами тех, кто в ней жил.',
 'Komissiya uchun «Nakaz» yozdim — qonun qanday bo''lishi kerakligi haqida katta asar. Ko''p narsani Yevropa mutafakkirlaridan oldim.

Deputatlar butun imperiyadan yig''ilib, joylardan nakazlar keltirdi: dehqonlar, savdogarlar, kazaklar, Volgabo''yi xalqlari nima so''raydi. Qonunlar to''plami tuzilmay qoldi — tabaqalar kelisha olmadi. Ammo o''sha nakazlar qoldi: ular mamlakatni ichkaridan, unda yashaganlar ko''zi bilan ko''rsatadi.',
 '["уложенная комиссия","наказ","сословия","законы","депутаты"]'),

('suvorov', 'Наука побеждать', 'G''alaba qozonish ilmi',
 'О чём ваша «Наука побеждать»?', '«G''alaba qozonish ilmi» nima haqida?',
 'Это книга для солдата, написанная простыми словами: глазомер, быстрота, натиск — вот три моих правила.',
 'Bu askar uchun oddiy so''zlar bilan yozilgan kitob: ko''zlash, tezlik, hujum — mana mening uch qoidam.',
 'Уставы того времени писались для офицеров, тяжёлым языком. Солдат их не читал и не понимал.

Я писал так, чтобы запоминалось с голоса: короткими фразами, почти поговорками. «Пуля дура, штык молодец», «Тяжело в ученье — легко в походе». За этим стоит мысль: солдат должен понимать замысел, а не только выполнять команду. Понимающий солдат воюет лучше.',
 'O''sha davr nizomlari ofitserlar uchun, og''ir til bilan yozilardi. Askar ularni o''qimasdi va tushunmasdi.

Men ovozdan yodda qoladigan qilib yozdim: qisqa jumlalar, deyarli maqollar bilan. «O''q ahmoq, nayza yigit», «O''qishda qiyin — yurishda oson». Buning ortida bir fikr bor: askar faqat buyruqni bajarmasdan, niyatni tushunishi kerak. Tushungan askar yaxshiroq jang qiladi.',
 '["наука побеждать","глазомер","быстрота","натиск","солдат"]'),

('kulibin', 'Часы-яйцо', 'Tuxumsimon soat',
 'Что за часы вы сделали?', 'Qanday soat yasagansiz?',
 'Я сделал часы величиной с гусиное яйцо. Каждый час в них открывались дверцы, и крошечные фигурки разыгрывали сценку под музыку.',
 'G''oz tuxumi kattaligidagi soat yasadim. Har soatda unda eshikchalar ochilib, mayda figurkalar musiqa ostida sahna ko''rsatardi.',
 'Внутри было больше четырёхсот деталей, и все я выточил сам. Механизм играл музыку и приводил в движение фигурки — театр размером с ладонь.

Я поднёс часы императрице, и меня взяли заведовать мастерскими Академии наук. Но самые мои большие замыслы так и остались на бумаге: одноарочный мост через Неву, самоходное судно, прожектор. Модели хвалили, строить не спешили.',
 'Ichida to''rt yuzdan ortiq detal bor edi va hammasini o''zim yasadim. Mexanizm musiqa chalar va figurkalarni harakatga keltirardi — kaft kattaligidagi teatr.

Soatni imperatritsaga taqdim etdim va meni Fanlar akademiyasi ustaxonalariga boshliq qilishdi. Ammo eng katta niyatlarim qog''ozda qolib ketdi: Neva ustidan bir kamarli ko''prik, o''zi yuruvchi kema, projektor. Modellarni maqtashardi, qurishga shoshilishmasdi.',
 '["часы","яйцо","механизм","академия","мост"]'),

('kruzenshtern', 'Кругосветное плавание', 'Dunyo aylanma safari',
 'Куда шло ваше кругосветное плавание?', 'Dunyo aylanma safaringiz qayerga borgan?',
 'В 1803–1806 годах два корабля, «Надежда» и «Нева», обошли вокруг света — это было первое русское кругосветное плавание.',
 '1803–1806-yillarda «Nadejda» va «Neva» kemalari dunyo bo''ylab aylanib chiqdi — bu birinchi rus dunyo aylanma safari edi.',
 'Задача была не только пройти: надо было наладить связь с Русской Америкой, доставить посольство в Японию и описать берега.

Мы вели съёмку, измеряли глубины и температуру воды на разных уровнях — до нас так почти не делали. Из плавания вышли «Атлас Южного моря» и целое поколение моряков: с этого похода русский флот начал ходить в океан, а не только вдоль берега.',
 'Vazifa faqat o''tish emas edi: Rus Amerikasi bilan aloqa o''rnatish, Yaponiyaga elchilikni yetkazish va qirg''oqlarni tasvirlash kerak edi.

Suratga oldik, chuqurlikni va turli sathdagi suv haroratini o''lchadik — bizdan avval bunday deyarli qilinmagan. Safardan «Janubiy dengiz atlasi» va butun bir dengizchilar avlodi chiqdi: shu yurishdan rus floti qirg''oq bo''ylab emas, okeanga chiqa boshladi.',
 '["1803","надежда","нева","кругосветное","атлас"]'),

('kutuzov', 'Бородино', 'Borodino',
 'Что было при Бородине?', 'Borodinoda nima bo''lgan?',
 'В 1812 году под Бородином мы дали Наполеону генеральное сражение. Обе армии понесли огромные потери.',
 '1812-yilda Borodino ostida Napoleonga umumiy jang berdik. Ikkala armiya ham ulkan talafot ko''rdi.',
 'Наполеон искал одного большого сражения: он умел их выигрывать и этим кончал войны. Уклоняться дальше было нельзя — за спиной Москва.

Мы стояли весь день и не были разбиты. Но и разбить французов не смогли. После Бородина я собрал совет в Филях и решил оставить Москву: «С потерей Москвы не потеряна Россия». Армию сохранили — и через месяц Наполеон уходил из сожжённого города.',
 'Napoleon bitta katta jang izlardi: u ularni yutishni bilardi va shu bilan urushlarni tugatardi. Boshqa qochib bo''lmasdi — ortda Moskva.

Kun bo''yi turdik va tor-mor etilmadik. Ammo fransuzlarni ham yenga olmadik. Borodinodan keyin Filida kengash yig''ib, Moskvani tashlab chiqishga qaror qildim: «Moskva yo''qolgani bilan Rossiya yo''qolmaydi». Armiya saqlandi — va bir oydan keyin Napoleon yondirilgan shahardan chiqib ketdi.',
 '["бородино","1812","наполеон","фили","москва"]'),

('lermontov', '«Бородино»', '«Borodino»',
 'О чём ваше «Бородино»?', '«Borodino»ngiz nima haqida?',
 'Это рассказ старого солдата о Бородинском сражении — не полководца, а простого артиллериста.',
 'Bu Borodino jangi haqida keksa askarning hikoyasi — sarkardaning emas, oddiy to''pchining.',
 'Я родился через два года после войны и знал её по рассказам. Стихотворение написал к двадцатипятилетию битвы.

Главный ход здесь — голос. Говорит не автор, а участник, и говорит по-солдатски: «Уж мы пойдём ломить стеною». Из-за этого война видна не сверху, с карты, а изнутри, с батареи. «Скажи-ка, дядя, ведь недаром…» — эту строку в России знают все.',
 'Men urushdan ikki yil keyin tug''ilganman va uni hikoyalardan bilardim. She''rni jangning yigirma besh yilligiga yozdim.

Bu yerdagi asosiy usul — ovoz. Muallif emas, ishtirokchi gapiradi va askarcha gapiradi. Shu sababli urush yuqoridan, xaritadan emas, ichkaridan, batareyadan ko''rinadi. «Ayt-chi, amaki, bekorga emasmi…» — bu satrni Rossiyada hamma biladi.',
 '["бородино","солдат","1812","стихотворение","голос"]'),

('gogol', '«Ревизор»', '«Revizor»',
 'О чём «Ревизор»?', '«Revizor» nima haqida?',
 'В уездный город приезжает пустой человек, которого принимают за ревизора, — и весь город начинает перед ним стелиться.',
 'Uyezd shahriga bo''sh bir odam keladi, uni revizor deb o''ylashadi — va butun shahar uning oldida yerga yotadi.',
 'Смешное здесь в том, что Хлестаков никого не обманывает специально. Его принимают за важное лицо, и он просто не спорит.

Обман держится не на нём, а на страхе чиновников: каждому есть что скрывать. Поэтому финальная немая сцена страшнее смешного — приехал настоящий ревизор. Я говорил, что в пьесе есть одно честное лицо — смех.',
 'Kulgili tomoni shundaki, Xlestakov hech kimni ataylab aldamaydi. Uni katta shaxs deb o''ylashadi, u esa shunchaki bahslashmaydi.

Aldov unga emas, amaldorlarning qo''rquviga tayanadi: har birining yashiradigan narsasi bor. Shuning uchun oxirgi soqov sahna kulgilidan qo''rqinchliroq — haqiqiy revizor keldi. Men pyesada bitta halol yuz bor deganman — u kulgi.',
 '["ревизор","хлестаков","чиновники","немая сцена","смех"]'),

('tolstoy', 'Школа в Ясной Поляне', 'Yasnaya Polyanadagi maktab',
 'Зачем вы открыли школу?', 'Nega maktab ochgansiz?',
 'Я открыл в Ясной Поляне школу для крестьянских детей и сам в ней преподавал.',
 'Yasnaya Polyanada dehqon bolalari uchun maktab ochdim va o''zim dars berdim.',
 'В школе не было отметок, наказаний и обязательных уроков: ребёнок приходил, когда хотел, и уходил, когда хотел. Многие считали это баловством.

Но дети приходили. Я писал для них азбуку и короткие рассказы — те самые, простые, где каждое слово понятно семилетнему. Работа над этой азбукой была мне дороже, чем иные романы: научить читать труднее, чем написать книгу для тех, кто уже умеет.',
 'Maktabda baho ham, jazo ham, majburiy dars ham yo''q edi: bola xohlaganda kelar, xohlaganda ketardi. Ko''pchilik buni erkalik deb bildi.

Ammo bolalar kelaverdi. Ular uchun alifbo va qisqa hikoyalar yozdim — o''sha oddiy, har bir so''zi yetti yoshli bolaga tushunarli hikoyalar. Bu alifbo ustidagi ish menga ba''zi romanlardan qimmatroq edi: o''qishni o''rgatish, o''qishni biladiganlar uchun kitob yozishdan qiyinroq.',
 '["ясная поляна","школа","азбука","крестьянские дети","рассказы"]'),

('dostoevskiy', 'Каторга', 'Katorga',
 'Что дала вам каторга?', 'Katorga sizga nima berdi?',
 'Четыре года в Омском остроге я прожил среди людей, каких прежде не видел. Это изменило всё, что я потом писал.',
 'Omsk qamoqxonasida to''rt yil ilgari ko''rmagan odamlar orasida yashadim. Bu keyin yozganlarimning barchasini o''zgartirdi.',
 'Меня приговорили к расстрелу и объявили помилование, когда я уже стоял на эшафоте. Такое не проходит бесследно.

На каторге я оказался рядом с убийцами и ворами — и увидел, что человек не делится на злодеев и праведников. В одном и том же человеке помещается и то, и другое. Об этом все мои книги: не о преступлении, а о том, что происходит в душе до и после него.',
 'Meni otishga hukm qilishdi va men allaqachon dor oldida turganimda avf e''lon qilishdi. Bunday narsa izsiz o''tmaydi.

Katorgada qotil va o''g''rilar yonida bo''ldim — va inson yovuzlar hamda solihlarga bo''linmasligini ko''rdim. Bitta odamning o''zida ikkalasi ham sig''adi. Barcha kitoblarim shu haqda: jinoyat haqida emas, undan avval va keyin qalbda nima bo''lishi haqida.',
 '["каторга","омск","эшафот","преступление","душа"]'),

('chehov', 'Сахалин', 'Saxalin',
 'Зачем вы поехали на Сахалин?', 'Nega Saxalinga borgansiz?',
 'Я поехал на Сахалин, чтобы своими глазами увидеть каторгу, и переписал там почти всё население — около десяти тысяч карточек.',
 'Katorgani o''z ko''zim bilan ko''rish uchun Saxalinga bordim va u yerda deyarli butun aholini ro''yxatga oldim — qariyb o''n ming kartochka.',
 'Дорога заняла почти три месяца — железной дороги туда ещё не было. Я был болен, и все отговаривали.

Я обошёл избы и тюрьмы и заполнял карточку на каждого: возраст, занятие, за что осуждён, грамотен ли. Из этого вышла книга «Остров Сахалин» — не роман, а исследование. После неё на каторгу обратили внимание, и кое-что там изменили. Писатель иногда должен считать, а не сочинять.',
 'Yo''l qariyb uch oy oldi — u yerga temir yo''l hali yo''q edi. Kasal edim va hamma qaytarardi.

Kulba va qamoqxonalarni aylanib, har bir odamga kartochka to''ldirdim: yoshi, kasbi, nima uchun hukm qilingani, savodlimi. Bundan «Saxalin oroli» kitobi chiqdi — roman emas, tadqiqot. Undan keyin katorgaga e''tibor qaratildi va u yerda ba''zi narsalar o''zgardi. Yozuvchi ba''zan to''qimasdan, sanashi kerak.',
 '["сахалин","каторга","карточки","перепись","остров сахалин"]'),

('pirogov', 'Наркоз и гипс', 'Narkoz va gips',
 'Что вы применили первым на войне?', 'Urushda birinchi bo''lib nimani qo''llagansiz?',
 'Я первым в мире стал оперировать под наркозом в полевых условиях и первым применил гипсовую повязку на войне.',
 'Dala sharoitida narkoz ostida operatsiya qilgan dunyodagi birinchi odamman va urushda gips bog''lamni birinchi qo''llaganman.',
 'До наркоза раненого держали несколько человек, и хирург работал на скорость. Боль убивала не реже раны.

Гипс дал другое: перелом переставал требовать немедленной ампутации — кость можно было сохранить. И третье, что я ввёл, не связано с инструментами: сортировка. Раненых стали делить по тяжести, чтобы помощь шла в верном порядке. Это правило работает в медицине катастроф до сих пор.',
 'Narkozdan avval yaradorni bir necha kishi ushlab turar, jarroh esa tezlikka ishlardi. Og''riq yaradan kam o''ldirmasdi.

Gips boshqa narsa berdi: singan suyak endi darhol amputatsiyani talab qilmasdi — suyakni saqlash mumkin edi. Uchinchi joriy qilganim asboblarga bog''liq emas: saralash. Yaradorlarni og''irligiga qarab ajratishdi, toki yordam to''g''ri tartibda borsin. Bu qoida falokat tibbiyotida hozirgacha ishlaydi.',
 '["наркоз","гипс","сортировка","хирургия","севастополь"]'),

('chaykovskiy', '«Щелкунчик»', '«Yong''oqchaqar»',
 'Как появился «Щелкунчик»?', '«Yong''oqchaqar» qanday paydo bo''lgan?',
 '«Щелкунчик» — балет по сказке Гофмана: девочке дарят игрушку, и ночью она оживает.',
 '«Yong''oqchaqar» — Hofman ertagi asosidagi balet: qizchaga o''yinchoq sovg''a qilishadi va u kechasi jonlanadi.',
 'В музыке мне важнее всего было передать, что чудо происходит буднично: ёлка растёт, мыши приходят, а дом остаётся тем же домом.

Для «Танца феи Драже» я взял челесту — инструмент, только что появившийся во Франции. Её звук похож на стеклянные колокольчики. Я вёз её тайно, чтобы никто не использовал раньше меня. «Щелкунчика» теперь играют под Новый год по всему миру.',
 'Musiqada men uchun eng muhimi mo''jiza kundalik tarzda sodir bo''lishini yetkazish edi: archa o''sadi, sichqonlar keladi, uy esa o''sha uyligicha qoladi.

«Draje parisi raqsi» uchun chelesta oldim — Fransiyada endigina paydo bo''lgan asbob. Uning tovushi shisha qo''ng''iroqchalarga o''xshaydi. Uni yashirincha olib keldim, toki mendan avval hech kim ishlatmasin. «Yong''oqchaqar»ni endi butun dunyoda Yangi yil oldidan ijro etishadi.',
 '["щелкунчик","гофман","челеста","балет","новый год"]'),

('repin', '«Бурлаки на Волге»', '«Volgadagi burlaklar»',
 'Как вы писали «Бурлаков»?', '«Burlaklar»ni qanday yozgansiz?',
 'Я увидел бурлаков на Неве, а писать поехал на Волгу — прожил там два лета и написал каждого с натуры.',
 'Burlaklarni Nevada ko''rdim, yozish uchun esa Volgaga bordim — u yerda ikki yoz yashadim va har birini naturadan yozdim.',
 'Меня поразил контраст: нарядная публика на берегу — и люди в лямках. Но картина не о контрасте.

Я жил с ними, знал их по именам и писал не «бурлаков вообще», а Канина, попа-расстригу, идущего первым. Каждый там — отдельный человек с отдельным лицом. Именно поэтому картина не превратилась в плакат о тяжёлой доле: плакату не нужны имена, а живописи нужны.',
 'Meni qarama-qarshilik hayratga soldi: qirg''oqdagi bezangan jamoat — va tasmadagi odamlar. Ammo asar qarama-qarshilik haqida emas.

Men ular bilan yashadim, ismlarini bilardim va «umuman burlaklarni» emas, birinchi bo''lib ketayotgan Kaninni — ruhoniylikdan chiqarilgan odamni yozdim. U yerdagi har biri alohida yuzli alohida odam. Aynan shuning uchun asar og''ir qismat haqidagi plakatga aylanmadi: plakatga ism kerak emas, tasvirga esa kerak.',
 '["бурлаки","волга","канин","натура","живопись"]'),

('popov', 'Первый радиоприёмник', 'Birinchi radiopriyomnik',
 'Что вы показали в 1895 году?', '1895-yilda nimani ko''rsatgansiz?',
 'В 1895 году я показал прибор, принимавший электромагнитные волны, — он отмечал далёкие грозовые разряды.',
 '1895-yilda elektromagnit to''lqinlarni qabul qiladigan asbobni ko''rsatdim — u uzoqdagi momaqaldiroq razryadlarini qayd etardi.',
 'Прибор назвали грозоотметчиком: он звонил, когда где-то далеко била молния. Молния — это тоже радиоволна, только очень мощная.

Отсюда был один шаг до передачи сигнала нарочно. Через год мы передали первую радиограмму — два слова, «Генрих Герц», имя учёного, открывшего эти волны. Кто первым изобрёл радио, спорят до сих пор: Маркони получил патент, но мой прибор был показан раньше.',
 'Asbobni «momaqaldiroq qayd etkich» deb atashdi: uzoqda chaqmoq urganda u jiringlardi. Chaqmoq ham radio to''lqin, faqat juda kuchli.

Bu yerdan ataylab signal uzatishgacha bir qadam qolgandi. Bir yildan keyin birinchi radiogrammani uzatdik — ikki so''z, «Genrix Gerts», bu to''lqinlarni kashf etgan olimning nomi. Radioni birinchi kim ixtiro qilgani haqida hozirgacha bahslashadi: Markoni patent oldi, ammo mening asbobim avvalroq ko''rsatilgan.',
 '["1895","грозоотметчик","радиоволны","герц","маркони"]'),

('nikolay-2', 'Отречение', 'Taxtdan voz kechish',
 'Почему вы отреклись от престола?', 'Nega taxtdan voz kechgansiz?',
 'В 1917 году, во время войны и волнений в столице, я подписал отречение от престола.',
 '1917-yilda, urush va poytaxtdagi tartibsizliklar paytida taxtdan voz kechish hujjatini imzoladim.',
 'В Петрограде начались перебои с хлебом, забастовки, а затем и солдатские выступления. Войска, посланные навести порядок, переходили на сторону восставших.

Командующие фронтами один за другим высказались за отречение. Я отрёкся за себя и за сына. Так закончилось правление династии, которая была на престоле триста четыре года.',
 'Petrogradda non bilan uzilishlar, ish tashlashlar, keyin esa askarlar chiqishlari boshlandi. Tartib o''rnatish uchun yuborilgan qo''shinlar qo''zg''olonchilar tomoniga o''tardi.

Front qo''mondonlari birin-ketin taxtdan voz kechish tarafida gapirdi. Men o''zim va o''g''lim uchun voz kechdim. Uch yuz to''rt yil taxtda bo''lgan sulola hukmronligi shunday tugadi.',
 '["1917","отречение","петроград","романовы","февраль"]'),

('brusilov', 'Брусиловский прорыв', 'Brusilov yorib o''tishi',
 'Что такое Брусиловский прорыв?', 'Brusilov yorib o''tishi nima?',
 'В 1916 году мы наступали не в одном месте, а сразу на нескольких участках фронта. Противник не смог понять, где главный удар.',
 '1916-yilda bitta joyda emas, frontning bir necha uchastkasida bir vaqtda hujum qildik. Dushman asosiy zarba qayerdaligini tushuna olmadi.',
 'Обычно наступление готовили в одном месте, и по этой подготовке противник заранее видел, куда подтягивать резервы.

Мы подготовили сразу несколько ударов — плацдармы рыли по всему фронту. Резервы врага оказались растянуты и не успели никуда. Приём вошёл в учебники: наступление, где нет одного главного направления, а есть несколько настоящих.',
 'Odatda hujum bitta joyda tayyorlanardi va shu tayyorgarlikdan dushman zaxiralarni qayerga tortishni oldindan ko''rardi.

Biz bir vaqtda bir necha zarba tayyorladik — plasdarmlarni butun front bo''ylab qazidik. Dushman zaxiralari cho''zilib ketdi va hech qayerga ulgurmadi. Bu usul darsliklarga kirdi: bitta asosiy yo''nalish bo''lmagan, bir nechta haqiqiy yo''nalish bo''lgan hujum.',
 '["1916","прорыв","фронт","резервы","наступление"]'),

('stahanov', 'Рекорд в шахте', 'Konda rekord',
 'Как вы поставили рекорд?', 'Rekordni qanday o''rnatgansiz?',
 'В 1935 году за одну смену я нарубил угля намного больше нормы. Секрет был в разделении труда.',
 '1935-yilda bir smenada me''yordan ancha ko''p ko''mir qazidim. Sir mehnat taqsimotida edi.',
 'Раньше забойщик сам рубил уголь и сам ставил крепь — то есть половину смены не рубил вовсе.

Мы разделили работу: я работал отбойным молотком, а крепильщики шли следом. Простая мысль, но она дала рост в несколько раз. Дальше моё имя стало названием целого движения, и это было уже не про меня: нормы начали поднимать всем, а угнаться за рекордом мог не каждый.',
 'Ilgari qazuvchi o''zi ko''mir qazir va o''zi tirgak qo''yardi — ya''ni smenaning yarmida umuman qazimasdi.

Ishni bo''ldik: men otboyniy bolg''a bilan ishladim, tirgakchilar esa ortimdan yurdi. Oddiy fikr, ammo u bir necha barobar o''sish berdi. Keyin nomim butun bir harakatning nomiga aylandi va bu endi men haqimda emasdi: me''yorlarni hammaga ko''tara boshlashdi, rekordga esa har kim yeta olmasdi.',
 '["1935","рекорд","отбойный молоток","крепильщик","движение"]'),

('zhukov', 'Битва за Москву', 'Moskva uchun jang',
 'Что решалось под Москвой?', 'Moskva ostida nima hal bo''lgan?',
 'Под Москвой в 1941 году впервые за войну немецкое наступление было остановлено, а затем отброшено.',
 '1941-yilda Moskva ostida urush davomida birinchi marta nemis hujumi to''xtatildi, keyin esa orqaga uloqtirildi.',
 'К октябрю фронт подошёл к столице почти вплотную. Резервов почти не было, и каждую дивизию приходилось считать.

Мы держали оборону, пока подходили сибирские части, и в декабре перешли в контрнаступление. Это был первый случай, когда немецкая армия отступала. До победы оставалось ещё три с половиной года, но миф о непобедимости кончился под Москвой.',
 'Oktabrga kelib front poytaxtga deyarli yaqinlashdi. Zaxira deyarli yo''q edi va har bir diviziyani sanashga to''g''ri kelardi.

Sibir qismlari yetib kelguncha mudofaani ushlab turdik va dekabrda qarshi hujumga o''tdik. Bu nemis armiyasining chekingan birinchi holi edi. G''alabaga yana uch yarim yil bor edi, ammo yengilmaslik afsonasi Moskva ostida tugadi.',
 '["москва","1941","оборона","контрнаступление","сибирские дивизии"]'),

('rokossovskiy', 'Парад Победы', 'G''alaba paradi',
 'Кто командовал Парадом Победы?', 'G''alaba paradiga kim qo''mondonlik qilgan?',
 'Парадом Победы 24 июня 1945 года на Красной площади командовал я, а принимал парад маршал Жуков.',
 '1945-yil 24-iyunda Qizil maydondagi G''alaba paradiga men qo''mondonlik qildim, paradni esa marshal Jukov qabul qildi.',
 'Шёл дождь, и парад не отменили. По площади прошли сводные полки всех фронтов — от каждого выбирали тех, кто дошёл.

В конце к Мавзолею бросили двести знамён разбитых немецких частей. До этого я командовал фронтами под Сталинградом, на Курской дуге и в операции «Багратион», освободившей Белоруссию. Парад был точкой, поставленной после четырёх лет.',
 'Yomg''ir yog''ardi va parad bekor qilinmadi. Maydondan barcha frontlarning yig''ma polklari o''tdi — har biridan yetib kelganlar tanlangandi.

Oxirida Mavzoley oldiga tor-mor etilgan nemis qismlarining ikki yuz bayrog''i tashlandi. Bungacha men Stalingrad ostida, Kursk yoyida va Belorussiyani ozod qilgan «Bagration» operatsiyasida frontlarga qo''mondonlik qilganman. Parad to''rt yildan keyin qo''yilgan nuqta edi.',
 '["парад победы","1945","красная площадь","жуков","багратион"]'),

('korolev', 'Первый спутник', 'Birinchi sun''iy yo''ldosh',
 'Что было запущено в 1957 году?', '1957-yilda nima uchirilgan?',
 'В 1957 году мы запустили первый в мире искусственный спутник Земли. Он весил около восьмидесяти трёх килограммов и передавал простой сигнал.',
 '1957-yilda dunyodagi birinchi sun''iy Yer yo''ldoshini uchirdik. U qariyb sakson uch kilogramm kelardi va oddiy signal uzatardi.',
 'Спутник умел немного: подавал сигнал «бип-бип», который мог поймать любой радиолюбитель. В этом и был замысел — чтобы услышали все.

Сложным было не устройство спутника, а ракета: чтобы вывести груз на орбиту, нужна скорость около восьми километров в секунду. Ракета, поднявшая спутник, стала основой для той, что через четыре года подняла Гагарина.',
 'Yo''ldosh ko''p narsani uddalamasdi: har qanday radiohavaskor tuta oladigan «bip-bip» signalini berardi. Niyat ham shunda edi — hamma eshitsin.

Murakkabi yo''ldoshning tuzilishi emas, raketa edi: yukni orbitaga chiqarish uchun sekundiga sakkiz kilometrga yaqin tezlik kerak. Yo''ldoshni ko''targan raketa to''rt yildan keyin Gagarinni ko''targan raketaga asos bo''ldi.',
 '["1957","спутник","орбита","ракета","бип-бип"]')

) AS v(slug, topic_ru, topic_uz, q_ru, q_uz, fact_ru, fact_uz, detail_ru, detail_uz, kw)
JOIN heroes h ON h.slug = v.slug AND h.country = 'RU';
