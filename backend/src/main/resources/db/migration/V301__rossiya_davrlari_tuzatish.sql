-- Rossiya davrlari: IKS ning haqiqiy tuzilishiga keltirish (V300 tuzatiladi).
--
-- NEGA TUZATISH KERAK. V300 oltita davr yaratgan edi. U «IKS da faqat uchta
-- bo'lim bor, keyin sinflar bo'yicha» degan xulosaga tayangandi. Bu xulosa
-- NOTO'G'RI edi: u hujjatning o'zidan emas, uni qayta hikoya qilgan vositadan
-- olingandi.
--
-- Endi hujjat matni to'g'ridan-to'g'ri olindi (garant.ru sahifasi yuklab,
-- windows-1251 dan o'girilib, teglardan tozalandi). Matnda davrlar ro'yxati
-- so'zma-so'z shunday berilgan:
--
--   «В стандарте определены основные разделы (периоды) отечественной истории:
--    I. От Руси к Российскому государству; II. Россия в XVI-XVII вв.: от
--    Великого княжества к царству; III. Россия в конце XVII-XVIII вв.: от
--    царства к империи; IV. Российская империя в XIX - начале XX в.;
--    V. Россия во время Первой мировой войны и Великой Российской революции.
--    (1914-1922 гг.); VI. Советский Союз в 1920-е - 1930-е гг.;
--    VII. Великая Отечественная война 1941-1945 гг.; VIII. СССР в 1945-1991 гг.;
--    IX. Российская Федерация c 1991 - до современности.»
--
-- Ya'ni TO'QQIZ davr, oltita emas. V300 dagi 5- va 6-davrlar IKS ning V–IX
-- bo'limlarini siqib qo'ygan edi.
--
-- YIL CHEGARALARI. IKS ning o'zida chegaralar bir-birining ustiga chiqadi
-- (VIII — 1945–1991, IX — 1991 dan). Ma'lumotlar modelida bu mumkin emas,
-- shuning uchun chegaralar bir yilga surildi. Har bir surish quyida ko'rinadi.
--
-- DARSLIK BILAN FARQ. Davlat darsligi jildlari boshqacha bo'linadi (8-sinf
-- XVIII — XIX asr boshi, 9-sinf 1825–1914). Bu yerda IKS ustun qo'yildi:
-- standart — asosiy hujjat, darslik esa uning amaliy tatbiqi.
--
-- Bu ham skelet: `biography_verified` hamon false, tarixchi tasdig'i kerak.

-- 1–2: nomlar IKS bilan mos, faqat yozilishi aniqlashtirildi.
UPDATE eras SET name_ru = 'От Руси к Российскому государству'
 WHERE country = 'RU' AND code = 'rus-drevnyaya';

UPDATE eras SET name_ru = 'Россия в XVI–XVII веках: от Великого княжества к царству'
 WHERE country = 'RU' AND code = 'rus-tsarstvo';

-- 3: IKS «в конце XVII-XVIII вв.» — chegara 1824 emas, 1800.
UPDATE eras
   SET name_ru = 'Россия в конце XVII–XVIII веках: от царства к империи',
       year_to = 1800
 WHERE country = 'RU' AND code = 'rus-imperiya-18';

-- 4: IKS «XIX - начале XX в.» — boshlanish 1825 emas, 1801.
UPDATE eras
   SET name_ru = 'Российская империя в XIX — начале XX века',
       name_uz = 'Rossiya imperiyasi XIX — XX asr boshida',
       year_from = 1801,
       description_ru = 'XIX — начало XX века: движение декабристов, отмена крепостного права, великие реформы, промышленный подъём и первая русская революция.',
       description_uz = 'XIX — XX asr boshi: dekabristlar harakati, krepostnoylikning bekor qilinishi, buyuk islohotlar, sanoat yuksalishi va birinchi rus inqilobi.'
 WHERE country = 'RU' AND code = 'rus-imperiya-19';

-- 5: endi faqat 1914–1922 (IKS V), 1945 gacha emas.
UPDATE eras
   SET name_ru = 'Россия во время Первой мировой войны и Великой Российской революции',
       name_uz = 'Birinchi jahon urushi va Buyuk Rossiya inqilobi davri',
       year_from = 1914,
       year_to = 1922,
       description_ru = '1914–1922 годы: Первая мировая война, революция 1917 года, Гражданская война и образование СССР.',
       description_uz = '1914–1922-yillar: Birinchi jahon urushi, 1917-yil inqilobi, Fuqarolar urushi va SSSRning tashkil topishi.'
 WHERE country = 'RU' AND code = 'rus-potryaseniya';

-- 6-o'rin bo'shatiladi: eski 6-davr 8-o'ringa ko'chadi (IKS VIII).
UPDATE eras
   SET ordinal = 8,
       name_ru = 'СССР в 1945–1991 годах',
       name_uz = 'SSSR 1945–1991-yillarda',
       year_from = 1946,
       year_to = 1991,
       description_ru = '1945–1991 годы: послевоенное восстановление, оттепель, космос, эпоха стабильности и нарастания кризиса, перестройка и распад СССР.',
       description_uz = '1945–1991-yillar: urushdan keyingi tiklanish, «erish» davri, kosmos, barqarorlik va inqiroz kuchayishi davri, qayta qurish va SSSRning parchalanishi.'
 WHERE country = 'RU' AND code = 'rus-sssr-sovremennaya';

-- Yangi: IKS VI, VII va IX.
INSERT INTO eras (code, ordinal, country, year_from, year_to,
                  name_ru, name_uz, description_ru, description_uz,
                  biography_verified)
VALUES
  ('rus-sssr-20-30', 6, 'RU', 1923, 1940,
   'Советский Союз в 1920-е — 1930-е годы',
   'Sovet Ittifoqi 1920–1930-yillarda',
   '1920-е — 1930-е годы: нэп, образование и укрепление СССР, индустриализация, коллективизация, культурная революция и массовые репрессии.',
   '1920–1930-yillar: NEP, SSSRning tashkil topishi va mustahkamlanishi, industrlashtirish, kollektivlashtirish, madaniy inqilob va ommaviy qatag''onlar.',
   false),

  ('rus-vov', 7, 'RU', 1941, 1945,
   'Великая Отечественная война 1941–1945 годов',
   'Ulug'' Vatan urushi 1941–1945-yillar',
   '1941–1945 годы: оборона и коренной перелом, тыл и оккупация, освобождение и Победа.',
   '1941–1945-yillar: mudofaa va tub burilish, front orti va istilo, ozod etish hamda G''alaba.',
   false),

  ('rus-federatsiya', 9, 'RU', 1992, 2020,
   'Российская Федерация с 1991 года до современности',
   'Rossiya Federatsiyasi 1991-yildan hozirgacha',
   'С 1991 года: становление новой государственности, рыночные реформы, Конституция 1993 года и место России в современном мире.',
   '1991-yildan: yangi davlatchilikning shakllanishi, bozor islohotlari, 1993-yilgi Konstitutsiya va Rossiyaning bugungi dunyodagi o''rni.',
   false);
