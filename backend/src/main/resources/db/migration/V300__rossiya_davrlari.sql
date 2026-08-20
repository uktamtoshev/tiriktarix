-- Rossiya tarixi: davrlar (country = 'RU').
--
-- MANBA. Davrlarni o'zimiz o'ylab topmadik. Ular ikkita hujjatga tayanadi:
--
--   1) Istoriko-madaniy standart (IKS) — «Rossiya tarixi» o'quv kursini
--      o'qitish kontseptsiyasining ilovasi. Rossiya Ta'lim vazirligi
--      kollegiyasi qarori bilan tasdiqlangan, 23.10.2020, № PK-1vn bayonnoma.
--      To'liq matn: https://base.garant.ru/75023299/
--      IKS ning I–III bo'limlari davr NOMLARINI beradi.
--
--   2) Amaldagi yagona davlat darsligi liniyasi «Rossiya tarixi»
--      (V. R. Medinskiy, A. V. Torkunov tahriri ostida, «Prosveshcheniye»),
--      IKS asosida tuzilgan. U davrlarning YIL CHEGARALARINI beradi:
--        6-sinf  — IX — XVI asr boshi
--        7-sinf  — XVI–XVII asrlar
--        8-sinf  — XVIII — XIX asr boshi
--        9-sinf  — 1825–1914
--        10-sinf — 1914–1945
--        11-sinf — 1945 — XXI asr boshi
--
-- YIL CHEGARALARI HAQIDA. Darslikda 9- va 10-sinf chegarasida 1914-yil
-- IKKALASIDA ham turadi. Ma'lumotlar modelida davrlar bir-birining ustiga
-- chiqmasligi kerak (o'zbek davrlarida ham shunday), shuning uchun chegara
-- 1913/1914 qilib ajratildi. 862-yil — rus davlatchiligi boshlanishining
-- an'anaviy sanasi; darslikda «IX asr» deb beriladi.
--
-- TEKSHIRUV KERAK. Bu skelet — metodist-tarixchi uchun asos, yakuniy haqiqat
-- emas. Rossiya dasturi bilan ishlaydigan tarixchi davr nomlarini va
-- chegaralarni tasdiqlashi shart. `biography_verified` shu sababli false.
--
-- `code` butun jadval bo'yicha UNIQUE — shuning uchun ruscha kodlar o'zbekcha
-- kodlar bilan to'qnashmaydi.

INSERT INTO eras (code, ordinal, country, year_from, year_to,
                  name_ru, name_uz, description_ru, description_uz,
                  biography_verified)
VALUES
  ('rus-drevnyaya', 1, 'RU', 862, 1505,
   'От Руси к Российскому государству',
   'Rusdan Rossiya davlatigacha',
   'IX — начало XVI века: становление государства, крещение Руси, раздробленность, ордынское владычество и объединение земель вокруг Москвы.',
   'IX — XVI asr boshi: davlatning shakllanishi, Rusning nasroniylikni qabul qilishi, tarqoqlik davri, O''rda hukmronligi va yerlarning Moskva atrofida birlashuvi.',
   false),

  ('rus-tsarstvo', 2, 'RU', 1506, 1700,
   'От великого княжества к царству',
   'Buyuk knyazlikdan podsholikkacha',
   'XVI–XVII века: венчание на царство, Смутное время, земские соборы, воссоединение с Украиной и движение на восток.',
   'XVI–XVII asrlar: podsholik tojini kiyish, Notinch davr, zemskiy soborlar, Ukraina bilan qo''shilish va sharqqa yurish.',
   false),

  ('rus-imperiya-18', 3, 'RU', 1701, 1824,
   'От царства к империи',
   'Podsholikdan imperiyagacha',
   'XVIII — начало XIX века: преобразования Петра I, рождение империи, эпоха дворцовых переворотов, Просвещение и война 1812 года.',
   'XVIII — XIX asr boshi: Pyotr I islohotlari, imperiyaning tug''ilishi, saroy to''ntarishlari davri, Ma''rifat va 1812-yilgi urush.',
   false),

  ('rus-imperiya-19', 4, 'RU', 1825, 1913,
   'Российская империя в XIX — начале XX века',
   'Rossiya imperiyasi XIX — XX asr boshida',
   '1825–1914 годы: движение декабристов, отмена крепостного права, великие реформы, промышленный подъём и первая русская революция.',
   '1825–1914-yillar: dekabristlar harakati, krepostnoylikning bekor qilinishi, buyuk islohotlar, sanoat yuksalishi va birinchi rus inqilobi.',
   false),

  ('rus-potryaseniya', 5, 'RU', 1914, 1945,
   'Россия в эпоху великих потрясений и в 1922–1945 годах',
   'Buyuk larzalar davri va 1922–1945-yillar',
   '1914–1945 годы: Первая мировая война, революция 1917 года, Гражданская война, образование СССР, индустриализация и Великая Отечественная война.',
   '1914–1945-yillar: Birinchi jahon urushi, 1917-yil inqilobi, Fuqarolar urushi, SSSRning tashkil topishi, industrlashtirish va Ulug'' Vatan urushi.',
   false),

  ('rus-sssr-sovremennaya', 6, 'RU', 1946, 2020,
   'СССР и современная Россия',
   'SSSR va zamonaviy Rossiya',
   '1945 год — начало XXI века: послевоенное восстановление, оттепель, космос, застой, перестройка, распад СССР и становление новой России.',
   '1945-yil — XXI asr boshi: urushdan keyingi tiklanish, «erish» davri, kosmos, turg''unlik, qayta qurish, SSSRning parchalanishi va yangi Rossiyaning shakllanishi.',
   false);
