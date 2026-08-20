-- Tirik tarix: vaqt lentasini kengaytirish (M3) — har bir davrga qo'shimcha voqealar.
-- Barcha sanalar maktab dasturi va manbalarga tayanadi.

-- ============ QADIMGI DAVR ============

INSERT INTO historical_events (era_id, title_uz, year_from, year_to, location_uz, description_uz) VALUES
((SELECT id FROM eras WHERE code = 'qadimgi'),
 $$Teshiktosh: neandertal bolasi topilmasi$$, -100000, -40000, $$Surxondaryo, Boysun$$,
 $$Teshiktosh g'orida qadimgi tosh davri odamlari yashagan. G'ordan topilgan neandertal bolasining dafn etilgan qoldiqlari jahon faniga mashhur kashfiyot bo'ldi.$$),
((SELECT id FROM eras WHERE code = 'qadimgi'),
 $$Sopollitepa va Jarqo'ton — ilk shaharsozlik$$, -2000, -1500, $$Surxondaryo$$,
 $$Bronza davrida Sopollitepa va Jarqo'tonda dehqonchilik, hunarmandchilik va me'morlik rivojlanib, o'lkamizdagi ilk shaharsozlik madaniyati shakllandi.$$),
((SELECT id FROM eras WHERE code = 'qadimgi'),
 $$Ahamoniylar istilosi$$, -540, -330, $$O'rta Osiyo$$,
 $$Fors Ahamoniylar davlati o'lkamizni bosib olib, uni satrapliklarga bo'ldi. Xalq og'ir soliqlar to'lashga majbur bo'lsa-da, erk uchun kurash to'xtamadi.$$),
((SELECT id FROM eras WHERE code = 'qadimgi'),
 $$To'maris va Kir II jangi$$, -530, NULL, $$Massagetlar yurti$$,
 $$Fors shohi Kir II massagetlar yurtiga bostirib kirdi. Malika To'maris boshchiligidagi jangchilar bosqinchi qo'shinni tor-mor etdi.$$),
((SELECT id FROM eras WHERE code = 'qadimgi'),
 $$Shiroq jasorati$$, -519, NULL, $$Qizilqum sahrosi$$,
 $$Sak cho'poni Shiroq Doro I qo'shinini ataylab suvsiz sahroga boshlab borib, vatani uchun jonini fido qildi.$$);

-- ============ ANTIK DAVR ============

INSERT INTO historical_events (era_id, title_uz, year_from, year_to, location_uz, description_uz) VALUES
((SELECT id FROM eras WHERE code = 'antik'),
 $$Yunon-Baqtriya davlati$$, -250, -140, $$Baqtriya$$,
 $$Salavkiylardan ajralib chiqqan Yunon-Baqtriya davlatida yunon va mahalliy madaniyatlar qo'shilib, o'ziga xos ellinizm san'ati vujudga keldi.$$),
((SELECT id FROM eras WHERE code = 'antik'),
 $$Qang' davlatining yuksalishi$$, -300, 400, $$Sirdaryo bo'ylari$$,
 $$Sirdaryoning o'rta oqimida tashkil topgan Qang' (Kanguy) davlati dehqonchilik, chorvachilik va Ipak yo'li savdosi bilan qudratga erishdi.$$),
((SELECT id FROM eras WHERE code = 'antik'),
 $$Dovon davlati va «samoviy arg'umoqlar»$$, -200, -100, $$Farg'ona vodiysi$$,
 $$Farg'onadagi Dovon davlati zotdor arg'umoq otlari bilan shuhrat qozondi — Xitoy imperatorlari bu otlarga ega bo'lish uchun yurishlar uyushtirgan.$$),
((SELECT id FROM eras WHERE code = 'antik'),
 $$Buddizm markazlari gullab-yashnashi$$, 50, 250, $$Termiz atrofi$$,
 $$Kushonlar davrida Fayoztepa va Qoratepa ibodatxonalari qad rostladi — Termiz buddizmning yirik markaziga aylandi.$$),
((SELECT id FROM eras WHERE code = 'antik'),
 $$Eftaliylar davlati$$, 420, 560, $$O'rta Osiyo$$,
 $$Eftaliylar («oq xunlar») kuchli davlat tuzib, Eron va Hindistongacha ta'sir o'tkazdi; so'ng Turk xoqonligi davri boshlandi.$$);

-- ============ ARABLAR DAVRI ============

INSERT INTO historical_events (era_id, title_uz, year_from, year_to, location_uz, description_uz) VALUES
((SELECT id FROM eras WHERE code = 'arab'),
 $$Muqanna qo'zg'oloni$$, 776, 783, $$Movarounnahr$$,
 $$Muqanna boshchiligidagi «oq kiyimlilar» arab xalifaligi zulmiga qarshi qo'zg'oldi. Qo'zg'olon yillar davomida butun o'lkani qamrab oldi.$$),
((SELECT id FROM eras WHERE code = 'arab'),
 $$Imom at-Termiziy faoliyati$$, 824, 892, $$Termiz$$,
 $$Buyuk muhaddis Imom at-Termiziy «Sunani Termiziy» to'plamini tuzib, hadis ilmi rivojiga ulkan hissa qo'shdi.$$),
((SELECT id FROM eras WHERE code = 'arab'),
 $$Somoniylar davlatining yuksalishi$$, 819, 999, $$Buxoro$$,
 $$Somoniylar davrida mahalliy davlatchilik qayta tiklandi. Poytaxt Buxoro Sharqning yirik ilm-fan va madaniyat markaziga aylandi.$$),
((SELECT id FROM eras WHERE code = 'arab'),
 $$Abu Nasr Forobiy — «Ikkinchi muallim»$$, 873, 950, $$Forob — Bag'dod$$,
 $$Forobiy falsafa, mantiq va musiqa ilmini rivojlantirib, «Ikkinchi muallim» nomini oldi. «Fozil odamlar shahri» asari adolatli jamiyat orzusini ifodalaydi.$$),
((SELECT id FROM eras WHERE code = 'arab'),
 $$Beruniy va Ibn Sino — qomusiy olimlar$$, 973, 1048, $$Xorazm — Buxoro$$,
 $$Abu Rayhon Beruniy va Abu Ali ibn Sino jahon faniga ulkan hissa qo'shdi: «Tib qonunlari» 600 yil Yevropada darslik bo'ldi, Beruniy asarlari tarix va geografiyani boyitdi.$$);

-- ============ TEMURIYLAR DAVRI ============

INSERT INTO historical_events (era_id, title_uz, year_from, year_to, location_uz, description_uz) VALUES
((SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Bibixonim jome masjidi qurilishi$$, 1399, 1404, $$Samarqand$$,
 $$Amir Temur Hindiston yurishidan so'ng poytaxtda ulkan jome masjidi qurdirdi — u o'z davrining eng mahobatli inshootlaridan edi.$$),
((SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Ulug'bekning Samarqanddagi hukmronligi$$, 1409, 1449, $$Samarqand$$,
 $$Mirzo Ulug'bek qariyb qirq yil Movarounnahrni boshqardi. Uning davrida Samarqand butun Sharqning ilm-fan poytaxtiga aylandi.$$),
((SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Registonda Ulug'bek madrasasi$$, 1417, 1420, $$Samarqand$$,
 $$Registon maydonida Ulug'bek madrasasi qad rostladi — unda diniy ilmlar bilan birga matematika va astronomiya ham o'qitilgan.$$),
((SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Hirot — Sharq madaniyati poytaxti$$, 1469, 1501, $$Hirot$$,
 $$Husayn Boyqaro davrida Hirotda Navoiy ijod qildi, Behzod miniatyura maktabini yuksaltirdi — shahar Sharq Uyg'onish davrining markaziga aylandi.$$),
((SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Panipat jangi — boburiylar saltanati$$, 1526, NULL, $$Hindiston$$,
 $$Zahiriddin Muhammad Bobur Panipat jangida g'alaba qozonib, Hindistonda uch asrdan ortiq hukm surgan boburiylar saltanatiga asos soldi.$$);

-- ============ XONLIKLAR DAVRI ============

INSERT INTO historical_events (era_id, title_uz, year_from, year_to, location_uz, description_uz) VALUES
((SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Ashtarxoniylar sulolasi$$, 1601, 1756, $$Buxoro$$,
 $$Buxoro taxtiga Ashtarxoniylar (Joniylar) sulolasi o'tirdi. Bu davrda madrasalar qurilishi va kitobat san'ati davom etdi.$$),
((SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Abulg'oziy Bahodirxon hukmronligi$$, 1643, 1663, $$Xiva$$,
 $$Xon va olim Abulg'oziy Bahodirxon «Shajarayi turk» asarini yozib, turkiy xalqlar tarixini o'rganishga bebaho hissa qo'shdi.$$),
((SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Mang'itlar sulolasi — Buxoro amirligi$$, 1756, NULL, $$Buxoro$$,
 $$Buxoroda hokimiyat mang'itlar sulolasiga o'tdi va davlat endi Buxoro amirligi deb atala boshlandi.$$),
((SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Ichan-qal'a ansambllari shakllanishi$$, 1800, 1850, $$Xiva$$,
 $$Xivada Ichan-qal'aning minoralari, madrasalari va saroylari qad rostladi — bu majmua keyinchalik YUNESKO ro'yxatiga birinchi bo'lib kiritildi.$$),
((SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Umarxon va Nodira davri$$, 1810, 1822, $$Qo'qon$$,
 $$Qo'qonda Umarxon (shoir Amiriy) va malika Nodira davrida she'riyat, kitobat va me'morlik gullab-yashnadi.$$);

-- ============ JADIDLAR DAVRI ============

INSERT INTO historical_events (era_id, title_uz, year_from, year_to, location_uz, description_uz) VALUES
((SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Turkiston general-gubernatorligi$$, 1867, NULL, $$Toshkent$$,
 $$Rossiya imperiyasi bosib olingan yerlarda Turkiston general-gubernatorligini tuzdi — o'lka mustamlaka boshqaruviga o'tdi.$$),
((SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Buxoro va Xiva Rossiyaga qaram bo'lishi$$, 1868, 1873, $$Buxoro — Xiva$$,
 $$Buxoro amirligi (1868) va Xiva xonligi (1873) Rossiya imperiyasiga qaram davlatlarga aylantirildi.$$),
((SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Andijon qo'zg'oloni$$, 1898, NULL, $$Andijon$$,
 $$Dukchi Eshon boshchiligidagi qo'zg'olon mustamlaka zulmiga qarshi ko'tarildi va shafqatsiz bostirildi.$$),
((SELECT id FROM eras WHERE code = 'jadidlar'),
 $$«Taraqqiy» — milliy matbuot boshlanishi$$, 1906, NULL, $$Toshkent$$,
 $$Birinchi o'zbek gazetalaridan «Taraqqiy» chiqa boshladi — milliy matbuot xalq ongini uyg'otish quroliga aylandi.$$),
((SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Mardikorlikka qarshi qo'zg'olon$$, 1916, NULL, $$Butun Turkiston$$,
 $$Birinchi jahon urushi davrida front orti ishlariga majburan olish e'lon qilingach, butun o'lkani qamragan xalq qo'zg'oloni ko'tarildi.$$);

-- ============ XX ASR ============

INSERT INTO historical_events (era_id, title_uz, year_from, year_to, location_uz, description_uz) VALUES
((SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Poytaxt Toshkentga ko'chirilishi$$, 1930, NULL, $$Samarqand — Toshkent$$,
 $$O'zbekiston SSR poytaxti Samarqanddan Toshkentga ko'chirildi.$$),
((SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Katta qatag'on$$, 1937, 1938, $$Butun O'zbekiston$$,
 $$Qatag'on yillarida Abdulla Qodiriy, Cho'lpon, Fitrat va minglab yurtdoshlarimiz qurbon bo'ldi. Ularning xotirasi bugun ham ulug'lanadi.$$),
((SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Ikkinchi jahon urushi yillari$$, 1941, 1945, $$O'zbekiston$$,
 $$1,5 milliondan ortiq o'zbekistonlik frontga safarbar etildi; yurtimiz yuzlab zavod va minglab yetim bolalarni bag'riga oldi.$$),
((SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Orol fojiasining boshlanishi$$, 1960, 1987, $$Orolbo'yi$$,
 $$Paxta yakkahokimligi tufayli Amudaryo va Sirdaryo suvlari dalalarga burib yuborildi — Orol dengizi quriy boshladi.$$),
((SELECT id FROM eras WHERE code = 'xx-asr'),
 $$O'zbek tiliga davlat tili maqomi$$, 1989, NULL, $$Toshkent$$,
 $$21-oktabrda o'zbek tiliga davlat tili maqomi berildi — bu mustaqillik yo'lidagi muhim qadam bo'ldi.$$);

-- ============ MUSTAQILLIK DAVRI ============

INSERT INTO historical_events (era_id, title_uz, year_from, year_to, location_uz, description_uz) VALUES
((SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Davlat bayrog'i qabul qilinishi$$, 1991, NULL, $$Toshkent$$,
 $$18-noyabrda mustaqil O'zbekistonning davlat bayrog'i qabul qilindi — ko'k, oq va yashil ranglar yangi davr ramziga aylandi.$$),
((SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$BMTga a'zo bo'lish$$, 1992, NULL, $$Nyu-York$$,
 $$2-martda O'zbekiston Birlashgan Millatlar Tashkilotiga a'zo bo'ldi — jahon hamjamiyati yangi davlatni tan oldi.$$),
((SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Buxoro YUNESKO ro'yxatida$$, 1993, NULL, $$Buxoro$$,
 $$Buxoroning tarixiy markazi YUNESKOning Jahon merosi ro'yxatiga kiritildi.$$),
((SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$«Amir Temur yili»$$, 1996, NULL, $$O'zbekiston$$,
 $$Sohibqiron tavalludining 660 yilligi keng nishonlanib, bobolarimiz merosi qayta qadr topdi.$$),
((SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Samarqand — «Madaniyatlar chorrahasi»$$, 2001, NULL, $$Samarqand$$,
 $$Samarqand YUNESKOning Jahon merosi ro'yxatiga «Madaniyatlar chorrahasi» nomi bilan kiritildi.$$);
