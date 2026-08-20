-- Rossiya tarixi: fakt kartochkalari, 3-partiya — V306 dagi o'nta yangi ajdod.
-- Har biriga bittadan kartochka: kartochkasiz ajdod sahifasi bo'sh turadi.
-- `verified = false`.

INSERT INTO fact_cards (hero_id, era_id, country, topic_ru, topic_uz,
                        question_ru, question_uz, fact_ru, fact_uz,
                        detail_ru, detail_uz, keywords, source, verified)
SELECT h.id, h.era_id, 'RU', v.topic_ru, v.topic_uz, v.q_ru, v.q_uz,
       v.fact_ru, v.fact_uz, v.detail_ru, v.detail_uz, v.kw::jsonb,
       'Историко-культурный стандарт (перечень персоналий)', false
FROM (VALUES

('vernadskiy', 'Биосфера', 'Biosfera',
 'Что такое биосфера?', 'Biosfera nima?',
 'Биосфера — это оболочка Земли, где есть жизнь. Живое вещество не просто живёт на планете: оно её переделывает.',
 'Biosfera — Yerning hayot bor qobig''i. Tirik modda shunchaki sayyorada yashamaydi: u uni qayta yaratadi.',
 'Кислород в воздухе — работа растений. Известняк, мел, залежи угля и нефти — тоже следы жизни, накопленные за миллионы лет.

Отсюда следует неожиданное: живое вещество по силе сравнимо с геологическими процессами. А если так, то и человек, который научился двигать горы и менять реки, стал геологической силой. Эту мысль я назвал ноосферой — сферой разума.',
 'Havodagi kislorod — o''simliklarning ishi. Ohaktosh, bo''r, ko''mir va neft konlari ham millionlab yillar davomida to''plangan hayot izlari.

Bundan kutilmagan xulosa chiqadi: tirik modda kuchi bo''yicha geologik jarayonlarga tenglashadi. Agar shunday bo''lsa, tog''larni surish va daryolarni o''zgartirishni o''rgangan inson ham geologik kuchga aylangan. Bu fikrni men noosfera — aql sohasi deb atadim.',
 '["биосфера","живое вещество","ноосфера","кислород","геология"]'),

('kapitsa', 'Сверхтекучесть', 'O''ta oquvchanlik',
 'Что такое сверхтекучесть?', 'O''ta oquvchanlik nima?',
 'При охлаждении почти до абсолютного нуля жидкий гелий теряет вязкость: он течёт совсем без трения.',
 'Mutlaq nolga yaqin sovutilganda suyuq geliy qovushqoqligini yo''qotadi: u umuman ishqalanishsiz oqadi.',
 'Обычная жидкость трётся о стенки и о саму себя — поэтому она замедляется. Гелий при температуре около двух градусов выше абсолютного нуля перестаёт это делать.

Он протекает сквозь щели, куда не проходит ни один газ, и сам выползает по стенке из сосуда. Это не фокус, а квантовое поведение — обычно оно заметно только у отдельных частиц, а здесь его видно глазом.',
 'Oddiy suyuqlik devorga va o''ziga ishqalanadi — shuning uchun sekinlashadi. Geliy mutlaq noldan ikki daraja yuqori haroratda buni to''xtatadi.

U hech qanday gaz o''tolmaydigan tirqishlardan oqib o''tadi va idishdan devor bo''ylab o''zi chiqib ketadi. Bu hiyla emas, kvant xatti-harakati — odatda u faqat alohida zarrachalarda sezilarli, bu yerda esa ko''z bilan ko''rinadi.',
 '["сверхтекучесть","гелий","абсолютный ноль","вязкость","квант"]'),

('muhina', '«Рабочий и колхозница»', '«Ishchi va kolxozchi ayol»',
 'Как создавалась ваша знаменитая скульптура?', 'Mashhur haykalingiz qanday yaratilgan?',
 'Скульптуру сделали из тонких листов нержавеющей стали и собрали на каркасе — прежде так монументы не строили.',
 'Haykal zanglamas po''latning yupqa varaqlaridan yasalib, karkasga yig''ilgan — bungacha monumentlar bunday qurilmasdi.',
 'Обычно монумент отливают из бронзы, и он тяжёл. Нам нужно было другое: фигуры должны были выглядеть летящими, а не стоящими.

Сталь позволила это: оболочка тонкая, вес небольшой, а на солнце она светится. В Париже скульптуру собирали заново — её везли разобранной, в вагонах. Шарф, летящий за фигурами, спорил с законами равновесия, и его пришлось отдельно рассчитывать.',
 'Odatda monument bronzadan quyiladi va u og''ir bo''ladi. Bizga boshqa narsa kerak edi: figuralar turgandek emas, uchayotgandek ko''rinishi lozim edi.

Po''lat bunga imkon berdi: qobiq yupqa, og''irlik kam, quyoshda esa u yaltiraydi. Parijda haykal qaytadan yig''ildi — u qismlarga ajratilgan holda vagonlarda olib borilgandi. Figuralar ortidan uchayotgan sharf muvozanat qonunlari bilan bahslashardi va uni alohida hisoblashga to''g''ri keldi.',
 '["рабочий и колхозница","сталь","париж","1937","каркас"]'),

('eyzenshteyn', 'Монтаж', 'Montaj',
 'Что такое монтаж?', 'Montaj nima?',
 'Монтаж — это соединение кадров. Два кадра рядом дают смысл, которого нет ни в одном из них по отдельности.',
 'Montaj — kadrlarni ulash. Yonma-yon turgan ikki kadr har birida alohida bo''lmagan ma''noni beradi.',
 'Покажите лицо человека, а следом тарелку супа — зритель прочтёт голод. Поставьте после того же лица гроб — прочтёт горе. Лицо не менялось: менялось соседство.

Значит, смысл рождается не внутри кадра, а между кадрами — в склейке. На этом построена сцена на одесской лестнице в «Броненосце „Потёмкин“»: коляска, сапоги, лица — короткие куски, из которых складывается ужас.',
 'Odamning yuzini, ketidan bir tovoq shorvani ko''rsating — tomoshabin ochlikni o''qiydi. O''sha yuzdan keyin tobut qo''ying — qayg''uni o''qiydi. Yuz o''zgarmadi: qo''shnichilik o''zgardi.

Demak, ma''no kadr ichida emas, kadrlar orasida — ulanish joyida tug''iladi. «„Potyomkin“ bronenosetsi»dagi Odessa zinapoyasi sahnasi shunga qurilgan: aravacha, etiklar, yuzlar — qisqa parchalar, ulardan dahshat yig''iladi.',
 '["монтаж","кадр","потемкин","одесская лестница","смысл"]'),

('sholohov', '«Тихий Дон»', '«Tinch Don»',
 'О чём «Тихий Дон»?', '«Tinch Don» nima haqida?',
 'Это роман о донских казаках в годы Первой мировой, революции и Гражданской войны — о том, как история ломает обычную семью.',
 'Bu Birinchi jahon urushi, inqilob va Fuqarolar urushi yillaridagi Don kazaklari haqidagi roman — tarix oddiy oilani qanday sindirishi haqida.',
 'Главный герой Григорий Мелехов мечется между красными и белыми и не находит своей стороны. Для книги того времени это необычно: обычно герой выбирает и оказывается прав.

Я писал роман почти пятнадцать лет и знал этот быт изнутри — сам с Дона. Гражданская война в книге показана не как противостояние правых и виноватых, а как беда, которая проходит через один хутор и одну семью.',
 'Bosh qahramon Grigoriy Melexov qizillar bilan oqlar orasida sarson bo''ladi va o''z tomonini topolmaydi. O''sha davr kitobi uchun bu g''ayrioddiy: odatda qahramon tanlaydi va haq bo''lib chiqadi.

Romanni qariyb o''n besh yil yozdim va bu turmushni ichkaridan bilardim — o''zim Dondanman. Kitobda Fuqarolar urushi haqlar bilan aybdorlar to''qnashuvi sifatida emas, bitta xutor va bitta oiladan o''tadigan balo sifatida ko''rsatilgan.',
 '["тихий дон","мелехов","казаки","гражданская война","дон"]'),

('chkalov', 'Перелёт через полюс', 'Qutb orqali parvoz',
 'Как проходил ваш перелёт в Америку?', 'Amerikaga parvozingiz qanday o''tgan?',
 'В 1937 году мы летели из Москвы через Северный полюс в Америку без посадки — больше шестидесяти часов в воздухе.',
 '1937-yilda Moskvadan Shimoliy qutb orqali Amerikaga qo''nmasdan uchdik — havoda oltmish soatdan ortiq.',
 'Через полюс никто не летал: там нет ориентиров, компас работает плохо, а погоду предсказать невозможно.

В кабине было холодно, кислорода не хватало, крыло обледеневало. Мы менялись за штурвалом втроём. Сели в Ванкувере, в штате Вашингтон, — маршрут, который до нас считали невозможным, оказался кратчайшей дорогой между континентами.',
 'Qutb orqali hech kim uchmagandi: u yerda mo''ljal yo''q, kompas yomon ishlaydi, ob-havoni oldindan aytib bo''lmaydi.

Kabinada sovuq edi, kislorod yetishmasdi, qanot muzlardi. Rulda uchovlashib almashdik. Vashington shtatidagi Vankuverga qo''ndik — bizgacha imkonsiz deb hisoblangan yo''nalish qit''alar orasidagi eng qisqa yo''l bo''lib chiqdi.',
 '["чкалов","полюс","1937","ант-25","ванкувер"]'),

('tupolev', 'Как делают самолёт', 'Samolyot qanday yasaladi',
 'Что самое трудное в конструкции самолёта?', 'Samolyot konstruksiyasida eng qiyini nima?',
 'Самое трудное — вес. Каждый лишний килограмм надо поднять, а значит, потратить на него топливо и мощность.',
 'Eng qiyini — og''irlik. Har bir ortiqcha kilogrammni ko''tarish kerak, demak unga yoqilg''i va quvvat sarflanadi.',
 'Конструктор всё время выбирает между прочностью и лёгкостью. Сделаешь крыло крепче — станет тяжелее; облегчишь — может не выдержать.

Поэтому в авиации так важен расчёт: не «на глаз, покрепче», а точно на пределе. Мой АНТ-25 строился ради одного — дальности. У него было очень длинное узкое крыло и почти всё внутреннее пространство под топливо. На нём Чкалов и перелетел через полюс.',
 'Konstruktor doim mustahkamlik bilan yengillik orasida tanlaydi. Qanotni mustahkamroq qilsang — og''irlashadi; yengillashtirsang — chiday olmasligi mumkin.

Shuning uchun aviatsiyada hisob juda muhim: «chamalab, mustahkamroq» emas, aniq chegarada. Mening ANT-25 im bitta narsa uchun qurilgan — uzoqqa uchish uchun. Uning juda uzun tor qanoti bor edi va deyarli butun ichki bo''shliq yoqilg''i uchun edi. Unda Chkalov qutb orqali uchgan.',
 '["туполев","вес","крыло","ант-25","дальность"]'),

('solzhenitsyn', '«Один день Ивана Денисовича»', '«Ivan Denisovichning bir kuni»',
 'О чём «Один день Ивана Денисовича»?', '«Ivan Denisovichning bir kuni» nima haqida?',
 'Это рассказ об одном обычном дне заключённого в лагере — от подъёма до отбоя.',
 'Bu lagerdagi mahbusning bitta oddiy kuni haqidagi hikoya — turishdan yotishgacha.',
 'Я сам провёл в лагерях восемь лет и писал о том, что видел. Но выбрал не самый страшный день, а рядовой — и в этом сила.

Читатель видит не ужас крупными мазками, а мелочи: как согреть руки, как сберечь пайку, как не попасть в карцер. Именно из этих мелочей и складывается понимание. Повесть напечатали в 1962 году, и она стала первым в стране открытым разговором о лагерях.',
 'Men o''zim lagerlarda sakkiz yil o''tkazdim va ko''rganlarim haqida yozdim. Ammo eng dahshatli kunni emas, oddiy kunni tanladim — kuch ham shunda.

O''quvchi dahshatni yirik chizgilarda emas, mayda-chuydalarda ko''radi: qo''lni qanday isitish, non ulushini qanday saqlash, kartserga qanday tushmaslik. Aynan shu mayda-chuydalardan tushunish yig''iladi. Qissa 1962-yilda bosildi va mamlakatda lagerlar haqidagi birinchi ochiq suhbat bo''ldi.',
 '["иван денисович","лагерь","1962","гулаг","повесть"]'),

('alferov', 'Гетероструктуры', 'Geterotuzilmalar',
 'Что такое гетероструктуры?', 'Geterotuzilmalar nima?',
 'Это «бутерброд» из разных полупроводников, сложенных вместе. На их границе можно удерживать электроны и свет там, где нужно.',
 'Bu birga qo''yilgan turli yarimo''tkazgichlardan iborat «buterbrod». Ularning chegarasida elektron va yorug''likni kerakli joyda ushlab turish mumkin.',
 'В обычном полупроводнике электроны разбегаются, и энергия тратится впустую. Если сложить слои разных материалов, на границе получается ловушка: частицы собираются в тонком слое.

Отсюда — лазеры, которые работают при комнатной температуре и не требуют охлаждения. Такой лазер стоит в каждом проигрывателе дисков и на каждом конце оптоволоконной линии. Интернет, по которому ты читаешь эту карточку, идёт через них.',
 'Oddiy yarimo''tkazgichda elektronlar tarqalib ketadi va energiya behuda sarflanadi. Turli materiallar qatlamini qo''ysang, chegarada tuzoq hosil bo''ladi: zarrachalar yupqa qatlamda to''planadi.

Bundan xona haroratida ishlaydigan va sovutish talab qilmaydigan lazerlar chiqadi. Bunday lazer har bir disk pleyerida va optotolali liniyaning har uchida turadi. Sen bu kartochkani o''qiyotgan internet ular orqali keladi.',
 '["гетероструктуры","полупроводник","лазер","оптоволокно","электроны"]'),

('ginzburg', 'Сверхпроводимость', 'O''ta o''tkazuvchanlik',
 'Что такое сверхпроводимость?', 'O''ta o''tkazuvchanlik nima?',
 'При сильном охлаждении некоторые металлы перестают сопротивляться току: ток течёт по ним без потерь.',
 'Kuchli sovutilganda ba''zi metallar tokka qarshilik ko''rsatishni to''xtatadi: tok ular bo''ylab yo''qotishsiz oqadi.',
 'Обычный провод греется — это и есть потеря энергии на сопротивление. В сверхпроводнике сопротивление равно нулю: пущенный по кольцу ток может течь годами сам по себе.

Мы с Львом Ландау построили теорию, которая описывает это поведение. Сверхпроводящие магниты сегодня стоят в томографах и в ускорителях частиц. Главная задача, которую физика пока не решила, — получить сверхпроводимость при обычной температуре.',
 'Oddiy sim qiziydi — bu qarshilikka energiya yo''qotilishi. O''ta o''tkazgichda qarshilik nolga teng: halqa bo''ylab yuborilgan tok yillab o''z-o''zidan oqishi mumkin.

Lev Landau bilan bu xatti-harakatni tavsiflaydigan nazariyani qurdik. O''ta o''tkazuvchi magnitlar bugun tomograflarda va zarracha tezlatkichlarida turadi. Fizika hali hal qilmagan asosiy vazifa — oddiy haroratda o''ta o''tkazuvchanlikka erishish.',
 '["сверхпроводимость","сопротивление","ландау","томограф","магнит"]')

) AS v(slug, topic_ru, topic_uz, q_ru, q_uz, fact_ru, fact_uz, detail_ru, detail_uz, kw)
JOIN heroes h ON h.slug = v.slug AND h.country = 'RU';
