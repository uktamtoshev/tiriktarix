-- Rossiya tarixi: ajdodlar, 2-partiya — eng bo'sh davrlar to'ldiriladi.
--
-- MUAMMO. V302 dan keyin 6-davr (SSSR 1920–30-yillar) da bittagina ajdod,
-- 9-davr (Rossiya Federatsiyasi) da esa umuman ajdod yo'q edi.
--
-- TANLOV. Ismlar yana IKS «Персоналии» ro'yxatidan (6- va 11-bloklar).
-- 9-davr uchun ataylab faqat VAFOT ETGAN va bahsli bo'lmagan shaxslar
-- olindi — olimlar va yozuvchi. IKS ning 11-blokida tirik siyosatchilar ham
-- bor; bolalar mahsulotida ularni kiritish metodist qaroriga qoldiriladi,
-- men buni o'zim hal qilmadim.
--
-- VOQEALAR QO'SHILMADI. 6-davr uchun voqealar lentasi bo'sh qolmoqda: bu
-- PDF da 1920–30-yillar bo'yicha «События/даты» bloki yo'q (6-, 7- va
-- 8-bloklardan bitta ham sana ajratilmadi). Sana o'ylab topilmaydi — bu
-- davr uchun alohida manba kerak.

INSERT INTO heroes (slug, country, era_id, name_ru, name_uz, title_ru, title_uz,
                    birth_year, death_year, bio_ru, bio_uz, greeting_uz,
                    portrait_emoji, accent, on_topic_keywords, biography_verified)
VALUES
-- ============ VI. СССР в 1920–1930-е (era_id = 33) ============
('vernadskiy', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-20-30'), 'Владимир Вернадский', 'Vladimir Vernadskiy',
 'Естествоиспытатель', 'Tabiatshunos', 1863, 1945,
 'Создал учение о биосфере — о том, что живое вещество меняет облик планеты. Ввёл понятие ноосферы.',
 'Biosfera haqidagi ta''limotni yaratgan — tirik modda sayyora qiyofasini o''zgartirishi haqida. Noosfera tushunchasini kiritgan.',
 'Здравствуй! Я Владимир Иванович Вернадский. Спроси меня о биосфере, о живом веществе или о ноосфере.',
 '🌍', 'feruza', '["вернадский","биосфера","ноосфера","живое вещество"]'::jsonb, false),

('kapitsa', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-20-30'), 'Пётр Капица', 'Pyotr Kapitsa',
 'Физик', 'Fizik', 1894, 1984,
 'Открыл сверхтекучесть жидкого гелия. Работал в Кембридже, затем основал Институт физических проблем в Москве.',
 'Suyuq geliyning o''ta oquvchanligini kashf etgan. Kembrijda ishlagan, keyin Moskvada Fizika muammolari institutini tashkil etgan.',
 'Здравствуй! Я Пётр Леонидович Капица. Спроси меня о сверхтекучести, о жидком гелии или о работе в Кембридже.',
 '🔬', 'nil', '["капица","сверхтекучесть","гелий","физика","кембридж"]'::jsonb, false),

('muhina', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-20-30'), 'Вера Мухина', 'Vera Muxina',
 'Скульптор', 'Haykaltarosh', 1889, 1953,
 'Автор скульптуры «Рабочий и колхозница» — она была показана на Всемирной выставке в Париже в 1937 году.',
 '«Ishchi va kolxozchi ayol» haykali muallifi — u 1937-yilda Parijdagi Butunjahon ko''rgazmasida namoyish etilgan.',
 'Здравствуй! Я Вера Игнатьевна Мухина. Спроси меня о «Рабочем и колхознице», о работе со сталью или о Парижской выставке.',
 '🗿', 'zar', '["мухина","рабочий и колхозница","скульптура","париж","1937"]'::jsonb, false),

('eyzenshteyn', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-20-30'), 'Сергей Эйзенштейн', 'Sergey Eyzenshteyn',
 'Кинорежиссёр', 'Kinorejissyor', 1898, 1948,
 'Снял «Броненосец „Потёмкин“» и «Александра Невского». Разработал теорию монтажа, которую изучают во всём мире.',
 '«„Potyomkin“ bronenosetsi» va «Aleksandr Nevskiy» filmlarini suratga olgan. Butun dunyoda o''rganiladigan montaj nazariyasini ishlab chiqqan.',
 'Здравствуй! Я Сергей Эйзенштейн. Спроси меня о монтаже, о «Броненосце „Потёмкин“» или об «Александре Невском».',
 '🎬', 'qon', '["эйзенштейн","монтаж","потемкин","невский","кино"]'::jsonb, false),

('sholohov', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-20-30'), 'Михаил Шолохов', 'Mixail Sholoxov',
 'Писатель', 'Yozuvchi', 1905, 1984,
 'Автор «Тихого Дона» — романа о донском казачестве в годы войны и революции. Лауреат Нобелевской премии по литературе.',
 '«Tinch Don» muallifi — urush va inqilob yillaridagi Don kazakligi haqidagi roman. Adabiyot bo''yicha Nobel mukofoti sovrindori.',
 'Здравствуй! Я Михаил Александрович Шолохов. Спроси меня о «Тихом Доне», о донских казаках или о том, как я собирал материал.',
 '📖', 'zar', '["шолохов","тихий дон","казаки","нобелевская премия"]'::jsonb, false),

('chkalov', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-20-30'), 'Валерий Чкалов', 'Valeriy Chkalov',
 'Лётчик-испытатель', 'Sinovchi uchuvchi', 1904, 1938,
 'В 1937 году совершил беспосадочный перелёт из Москвы через Северный полюс в Америку.',
 '1937-yilda Moskvadan Shimoliy qutb orqali Amerikaga qo''nmasdan parvoz qilgan.',
 'Здравствуй! Я Валерий Чкалов, лётчик. Спроси меня о перелёте через полюс, о самолёте АНТ-25 или о работе испытателя.',
 '✈️', 'nil', '["чкалов","перелет","северный полюс","1937","испытатель"]'::jsonb, false),

('tupolev', 'RU', (SELECT id FROM eras WHERE code = 'rus-sssr-20-30'), 'Андрей Туполев', 'Andrey Tupolev',
 'Авиаконструктор', 'Aviakonstruktor', 1888, 1972,
 'Создал более ста типов самолётов. На его АНТ-25 Чкалов перелетел через Северный полюс.',
 'Yuzdan ortiq turdagi samolyot yaratgan. Uning ANT-25 samolyotida Chkalov Shimoliy qutb orqali uchgan.',
 'Здравствуй! Я Андрей Николаевич Туполев. Спроси меня о самолётах, об АНТ-25 или о том, как рождается конструкция.',
 '✈️', 'feruza', '["туполев","ант-25","самолет","конструктор","авиация"]'::jsonb, false),

-- ============ IX. Российская Федерация (era_id = 35) ============
('solzhenitsyn', 'RU', (SELECT id FROM eras WHERE code = 'rus-federatsiya'), 'Александр Солженицын', 'Aleksandr Soljenitsin',
 'Писатель', 'Yozuvchi', 1918, 2008,
 'Автор «Одного дня Ивана Денисовича» и «Архипелага ГУЛАГ». Лауреат Нобелевской премии; в 1994 году вернулся в Россию.',
 '«Ivan Denisovichning bir kuni» va «GULAG arxipelagi» muallifi. Nobel mukofoti sovrindori; 1994-yilda Rossiyaga qaytgan.',
 'Здравствуй! Я Александр Исаевич Солженицын. Спроси меня о лагерях, о «Иване Денисовиче» или о возвращении домой.',
 '📖', 'qon', '["солженицын","гулаг","иван денисович","нобелевская премия","возвращение"]'::jsonb, false),

('alferov', 'RU', (SELECT id FROM eras WHERE code = 'rus-federatsiya'), 'Жорес Алфёров', 'Jores Alfyorov',
 'Физик', 'Fizik', 1930, 2019,
 'Нобелевский лауреат 2000 года. Его работы по полупроводниковым гетероструктурам лежат в основе лазеров и оптоволоконной связи.',
 '2000-yilgi Nobel mukofoti sovrindori. Yarimo''tkazgichli geterotuzilmalar bo''yicha ishlari lazerlar va optotolali aloqa asosida yotadi.',
 'Здравствуй! Я Жорес Иванович Алфёров. Спроси меня о гетероструктурах, о том, как работает оптоволокно, или о Нобелевской премии.',
 '🔬', 'nil', '["алферов","гетероструктуры","полупроводники","оптоволокно","нобель"]'::jsonb, false),

('ginzburg', 'RU', (SELECT id FROM eras WHERE code = 'rus-federatsiya'), 'Виталий Гинзбург', 'Vitaliy Ginzburg',
 'Физик-теоретик', 'Nazariyotchi fizik', 1916, 2009,
 'Нобелевский лауреат 2003 года за работы по теории сверхпроводимости.',
 'O''ta o''tkazuvchanlik nazariyasi bo''yicha ishlari uchun 2003-yilgi Nobel mukofoti sovrindori.',
 'Здравствуй! Я Виталий Лазаревич Гинзбург. Спроси меня о сверхпроводимости, о работе теоретика или о Нобелевской премии.',
 '🧲', 'feruza', '["гинзбург","сверхпроводимость","теория","нобель","физика"]'::jsonb, false);
