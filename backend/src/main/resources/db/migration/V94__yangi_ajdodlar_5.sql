-- Yangi ajdodlar (2-to'plam): muhaddislar, mutasavviflar, shoirlar, yozuvchi.
--
-- HAR PAKET IKKI BOSQICHDAN O'TDI: tadqiqotchi agent ziyouz.com maqolasidan
-- faktlarni yig'di, adversarial tekshiruvchi agent esa o'sha maqolani QAYTA
-- o'qib, har raqam va sanani solishtirdi; tasdiqlanmaganlari o'chirildi.
-- Vikipediya ishlatilmadi. Har kartochkada aniq manba ko'rsatilgan.
--
-- Portret yo'q (portrait_url NULL) — interfeys medalyonda emoji ko'rsatadi;
-- haqiqiy tasvirlar keyin qo'shiladi.
--
-- METODIST TEKSHIRUVI KERAK: verified = TRUE bazadagi umumiy holatga mos
-- qo'yildi, lekin matnlarni tarixchi-metodist o'qib chiqishi shart.


-- ═══════════ Imom at-Termiziy (824–892) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('imom-at-termiziy', $$Imom at-Termiziy$$, $$Buyuk muhaddis$$, 824, 892,
 (SELECT id FROM eras WHERE code = 'arab'),
 $$Imom at-Termiziy (824–892) — Termiz yaqinidagi Bug' qishlog'ida tug'ilgan buyuk muhaddis. Uning «Al-Jomi' as-sahiyh» («Sunan at-Termiziy») asari islom olamidagi eng ishonchli olti hadis kitobi — «kutub sitta»dan biri hisoblanadi.$$,
 $$Assalomu alaykum, aziz farzand! Men Imom at-Termiziyman — Termiz yaqinidagi Bug' qishlog'ida tug'ilgan muhaddisman. Mendan hadis ilmi, «Al-Jomi' as-sahiyh» kitobim va ilm yo'lidagi safarlarim haqida so'ra!$$,
 $$📜$$, $$["imom at-termiziy", "abu iso", "muhaddis", "hadis", "al-jomi' as-sahiyh", "sunan at-termiziy"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men hijriy 209, melodiy 824-yilda Termiz yaqinidagi Bug' qishlog'ida o'rta hol bir oilada tavallud topganman. To'liq ismim — Muhammad ibn Iso ibn Savra ibn Muso ibn az-Zahhoq Abu Iso as-Sullamiy az-Zariyr al-Bug'iy at-Termiziy.$$, $$["bug'", "termiz", "824", "hijriy 209", "surxondaryo", "tug'ilish"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$Imom at-Termiziy qachon va qayerda tug'ilgan?$$, $$Bug' qishlog'i hozirgi Surxondaryo viloyatining Sherobod tumani hududida joylashgan. Olimning bobosi asli marvlik bo'lib, keyin Termizga ko'chib kelgan; butun hayoti Termiz shahri bilan chambarchas bog'liq bo'lgani uchun u el orasida at-Termiziy nomi bilan mashhur bo'lgan. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi (U. Uvatov, «Ikki buyuk donishmand», Toshkent, 2005).$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Laqablarim$$, $$Men 892-yilda Bug' qishlog'ida vafot etganman — aynan shu qishloqda vafot etganim uchun meni al-Bug'iy taxallusi bilan ham atashgan. Ko'p yig'laganimdan umrimning oxirlarida ko'zim ojiz bo'lib qolgan, shu sababli az-Zariyr, ya'ni «ko'zi ojiz» taxallusini olganman.$$, $$["al-bug'iy", "az-zariyr", "taxallus", "laqab", "ko'zi ojiz"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$At-Termiziy nima uchun az-Zariyr taxallusini olgan?$$, $$Bu ma'lumotlarni Markaziy osiyolik mashhur tarixchi Abu Saad Abdulkarim as-Sam'oniy (1113–1167) qayd qilgan: olim Bug' qishlog'ida vafot etganligi uchun al-Bug'iy taxallusi bilan ham atalgan. Ba'zi mualliflar olimni tug'ma ko'zi ojiz bo'lgan desa, ko'pchilik mualliflar u keyinchalik, umrining oxirlarida ko'zi ojiz bo'lib qolganini yozadi. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilm safarlarim$$, $$Ilmga tashna bo'lganim uchun 850-yildan, ya'ni yigirma olti yoshimdan boshlab uzoq yurtlarga safar qilganman. Hijozda — Makka va Madinada, Iroqda, Xurosonning qator shaharlarida ko'plab muhaddis va ulamolar bilan muloqotda bo'lib, ulardan ta'lim olganman.$$, $$["safar", "makka", "madina", "iroq", "xuroson", "850"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$At-Termiziy necha yoshidan ilm izlab safarga chiqqan?$$, $$Tarixchi Shamsuddin az-Zahabiyning ta'kidlashicha, at-Termiziy Misr va Shomni shaxsan ziyorat qilmagan, shu bois bu mamlakatlar ulamolaridan bilvosita hadislar rivoyat qilgan. Safarlarida u hadis ilmidan tashqari qiroat, bayon, fiqh va tarix fanlaridan ham saboq olgan. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ustozlarim va shogirdlarim$$, $$Ustozlarim orasida Imom al-Buxoriy, Imom Muslim ibn al-Hajjoj, Abu Dovud, Qutayba ibn Sa'id kabi mashhur muhaddislar bor. O'zim ham Maqhul ibn al-Fazl, Hammod ibn Shokir, Xaysam ibn Kulayb ash-Shoshiy kabi ko'plab shogirdlarga ustozlik qilganman.$$, $$["al-buxoriy", "muslim", "abu dovud", "ustoz", "shogird", "muhaddis"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$At-Termiziyning ustozlari kimlar bo'lgan?$$, $$Ustozi Imom al-Buxoriy unga: «Men sendan ko'rgan foyda sen mendan ko'rgan foydadan ko'proq», deb bilimiga yuksak baho bergan. Ikkala olim o'rtasida 863–868-yillar oralarida Nishopurda ko'pdan-ko'p samarali ilmiy munozaralar bo'lgan. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kuchli xotiram$$, $$Makkaga ketayotganimda bir olim menga turli hadislardan yetmishga yaqinini hikoya qilib bergan. Qog'ozimda hech qanday yozuv yo'qligini ko'rib jahli chiqqanida, eshitgan hadislarning hammasini birin-ketin yoddan aytib berganman.$$, $$["xotira", "yod", "yetmish hadis", "makka", "quvvai hofiza"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$At-Termiziyning xotirasi haqida qanday rivoyat saqlangan?$$, $$Bu hikoyani arab tarixchisi Shamsuddin az-Zahabiy (1274–1347) «Tazkirat ul-huffoz» asarida keltirgan. Boshqa bir rivoyatda shayx o'zining g'aroyib hadislaridan qirqtasini aytganida, at-Termiziy ularni ham boshdan oxir birma-bir takrorlab bergan va shayx: «Senga o'xshaganini hech qachon ko'rmagan edim», degan. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hadislarni saralashim$$, $$Eshitgan har bir hadisimning asli va isnodini izchillik bilan aniqlab, to'g'riligiga to'liq ishonch hosil qilsamgina maxsus qog'ozlarga qayd etganman. Shu tariqa hadislarni sahiyh, hasan, zaiyf, g'ariyb kabi xillarga ajratganman.$$, $$["sahiyh", "hasan", "zaiyf", "g'ariyb", "isnod", "daraja"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$At-Termiziy hadislarni qanday darajalarga ajratgan?$$, $$Olim Taqiuddin ibn Taymiya «Abu Iso at-Termiziy birinchi bo'lib hadislarni sahiyh, hasan, zaifga taqsim qilgan olimdir», deb guvohlik bergan. Hofiz ibn Rajab ham uni o'z kitoblarida hadisni sahiyh, hasan va g'ariybga bo'lgan birinchilardan deb ta'kidlagan. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Al-Jomi' as-sahiyh»$$, $$Shoh asarim «Al-Jomi' as-sahiyh»ni hijriy 270, melodiy 884-yilda, qariyb oltmish yoshimda yozib tugatganman. Uni Hijoz, Iroq va Xuroson olimlariga ko'rsatganimda, ular bir ovozdan ma'qul topdilar.$$, $$["al-jomi' as-sahiyh", "sunan at-termiziy", "884", "hadis to'plami", "kutub sitta"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$At-Termiziy «Al-Jomi' as-sahiyh» asarini qachon yozib tugatgan?$$, $$Bu asar «Al-Jomi' al-kabiyr», «Sahiyh at-Termiziy», «Sunan at-Termiziy» nomlari bilan ham yuritiladi va eng ishonchli olti kitob — «kutub sitta»dan biri hisoblanadi. Muallifning o'zi: «Kimning xonadonida bu kitob bo'lsa, go'yoki bu uyda payg'ambar alayhissalomning o'zlari so'ylayotgandek», deb yozgan. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim$$, $$Ijodiy faoliyatim davomida o'ndan ortiq asar yaratganman. Ular orasida «Al-Jomi' as-sahiyh», «Ash-shamoil an-nabaviyya», «Kitob at-ta'rix», «Kitob uz-zuhd», «Kitob al-asmo val-kuna», «Al-ilal fil-hadiys» kabi kitoblar bor.$$, $$["asarlar", "kitob", "al-ilal", "kitob uz-zuhd", "meros"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$At-Termiziy qancha asar yaratgan?$$, $$Olimning «Risola fil-xilof val-jadal» va «Asmo us-sahoba» kabi asarlari ham ma'lum. «Al-Jomi' as-sahiyh» qo'lyozmalari O'zbekiston Fanlar Akademiyasining Abu Rayhon Beruniy nomidagi Sharqshunoslik institutida ham saqlanadi. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Ash-shamoil» asarim$$, $$Yirik asarlarimdan biri «Ash-shamoil an-nabaviyya» payg'ambar alayhissalomning suvrat va siyratlari, ajoyib fazilat va odatlariga oid to'rt yuzu sakkiz hadisi sharifni o'zida jamlagan. Asarim ellik olti bobga bo'lingan.$$, $$["ash-shamoil", "payg'ambar", "408 hadis", "56 bob", "fazilatlar"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$«Ash-shamoil an-nabaviyya» asarida nechta hadis jamlangan?$$, $$Asar payg'ambar alayhissalomning tashqi qiyofasi va axloqiy fazilatlarini bayon qiladi hamda fors va turk tillariga ham tarjima qilingan. Uni vatandoshimiz Said Mahmud Taroziy o'zbek tiliga o'girgan. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Safarlardan o'z vatanimga qaytganimdan keyin ko'p asarlarimni, jumladan mashhur «Al-Jomi'» asarimni yaratganman. Men 892-yilda Termiz yaqinidagi Bug' qishlog'ida vafot etganman va shu yerda dafn qilinganman.$$, $$["892", "vafot", "bug'", "termiz", "dafn"]$$::jsonb, $$Ziyouz.com — «Maqolalar» bo'limi: Imom at-Termiziy (824–892)$$, TRUE,
       $$Imom at-Termiziy qachon va qayerda vafot etgan?$$, $$Olim vafotidan keyin ham asarlari qadrlanib kelgan: «Al-Jomi' as-sahiyh» hijriy 1283 (melodiy 1866) yilda Mitohda, hijriy 1292 (melodiy 1875) yilda Qohirada, 1980-yilda Bayrutda nashr etilgan va unga o'nlab sharhlar yozilgan. Manba: Ziyouz.com, «Abu Iso at-Termiziy» maqolasi.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Imom at-Termiziy qaysi qishloqda tug'ilgan?$$, $$["Bug' qishlog'ida", "Afshona qishlog'ida", "Xartang qishlog'ida", "Bog'iston qishlog'ida"]$$::jsonb, 0, $$Imom at-Termiziy hijriy 209 (melodiy 824) yilda Termiz yaqinidagi Bug' qishlog'ida tug'ilgan. Bu qishloq hozirgi Surxondaryo viloyatining Sherobod tumani hududida joylashgan.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$At-Termiziyning eng mashhur asari qaysi?$$, $$["«Al-Jomi' as-sahiyh» («Sunan at-Termiziy»)", "«Al-Muvatto»", "«Al-Mujtabo»", "«Sahihi Muslim»"]$$::jsonb, 0, $$«Al-Jomi' as-sahiyh» («Sunan at-Termiziy») asarini u hijriy 270 (melodiy 884) yilda yozib tugatgan. Bu kitob eng ishonchli olti hadis to'plami — «kutub sitta»dan biri hisoblanadi. «Al-Muvatto» Molik ibn Anas, «Al-Mujtabo» an-Nasoiy, «Sahih» Imom Muslim asaridir.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$At-Termiziy necha yoshidan ilm izlab uzoq safarlarga chiqqan?$$, $$["16 yoshidan", "26 yoshidan", "36 yoshidan", "46 yoshidan"]$$::jsonb, 1, $$U 850-yildan, ya'ni yigirma olti yoshidan boshlab Makka, Madina, Iroq va Xuroson shaharlariga safar qilib, mashhur muhaddislardan ta'lim olgan.$$
  FROM heroes h WHERE h.slug = 'imom-at-termiziy';


-- ═══════════ Mahmud az-Zamaxshariy (1075–1144) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('mahmud-zamaxshariy', $$Mahmud az-Zamaxshariy$$, $$Buyuk tilshunos olim$$, 1075, 1144,
 NULL,
 $$Mahmud az-Zamaxshariy (1075–1144) — Xorazmning Zamaxshar qishlog'ida tug'ilgan tilshunos, adib, tafsir va hadis olimi. «Al-Kashshof» tafsiri va «Muqaddimat ul-adab» asari bilan Sharqu G'arbda shuhrat qozongan, Makkada yashab ijod qilgani uchun «Jorulloh» laqabini olgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Mahmud az-Zamaxshariyman — Xorazm zaminidan chiqqan tilshunos va adibman, meni «Jorulloh», ya'ni «Allohning qo'shnisi» deb ham atashadi. Mendan «Al-Kashshof», «Muqaddimat ul-adab» asarlarim va Makkaga safarlarim haqida so'ra!$$,
 $$📜$$, $$["zamaxshariy", "jorulloh", "al-kashshof", "muqaddimat ul-adab", "xorazm", "tilshunos"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1075-yilning 18-martida Xorazmning Zamaxshar qishlog'ida tug'ilganman. To'liq ism-sharifim — Abulqosim Mahmud ibn Umar ibn Ahmad. Dastlabki bilimni dindor va taqvodor otamdan olganman.$$, $$["zamaxshar", "xorazm", "1075", "tug'ilish", "abulqosim", "otam"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Mahmud az-Zamaxshariy qachon va qayerda tug'ilgan?$$, $$Zamaxshariy 1075-yil 18-mart kuni Xorazmning Zamaxshar qishlog'ida dunyoga kelgan, «Zamaxshariy» nisbasi ham shu qishloq nomidan olingan. Uning oilasi dindor bo'lib, dastlabki ta'limni otasidan olgan. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Bolaligim sinovi$$, $$Yoshligimda otdan yiqilib, bir oyog'im mayib bo'lib qolgan. Otam menga tikuvchilik kasbini o'rgatmoqchi bo'lgan, ammo men ilm yo'lini tanlaganman.$$, $$["bolalik", "ot", "oyoq", "tikuvchilik", "ilm", "sinov"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Zamaxshariy yoshligida qanday sinovga duch kelgan?$$, $$Zamaxshariy yoshligida otdan yiqilib bir oyog'i mayib bo'lib qolgan. Otasi unga tikuvchilik kasbini egallashni istagan, biroq bo'lajak olim ilm o'rganish yo'lidan borgan. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ustozlarim$$, $$Men Abu Mudar Isfahoniy, Abumansur Nasr Horisiy, Abusa'd Shaqqoniy va Abulxattob ibn Abulbatr kabi ustozlardan ta'lim olganman, Buxoroda ham tahsil ko'rganman. Ayniqsa arab tili va adabiyoti, diniy ilmlar hamda xattotlik san'atini puxta egallaganman.$$, $$["ustozlar", "abu mudar isfahoniy", "buxoro", "arab tili", "xattotlik"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Zamaxshariy qaysi ustozlardan ta'lim olgan va qanday ilmlarni egallagan?$$, $$Zamaxshariy Abu Mudar Isfahoniy, Abumansur Nasr Horisiy, Abusa'd Shaqqoniy va Abulxattob ibn Abulbatr kabi olimlardan saboq olgan. U arab tili va adabiyoti, diniy ilmlar hamda o'sha davr olimlari orasida qadrlangan xattotlik san'atini chuqur o'rgangan. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Safarlarim$$, $$Umrim davomida ikki marta — 1100–1122 va 1127–1139-yillarda musulmon Sharqi bo'ylab uzoq safarlarga chiqqanman. Marv, Nishopur, Isfahon, Damashq va Makkada bo'lganman, 1109-yilda esa Bag'dodga yo'l olganman.$$, $$["safar", "bag'dod", "marv", "nishopur", "damashq", "isfahon", "makka"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Zamaxshariy qaysi yillarda va qaysi shaharlarga safar qilgan?$$, $$Zamaxshariy 1100–1122 va 1127–1139-yillarda musulmon Sharqi bo'ylab safar qilib, Marv, Nishopur, Isfahon, Bag'dod, Damashq va Makka kabi shaharlarda bo'lgan. 1139-yilda vataniga qaytib, umrining oxirigacha shu yerda yashagan. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Jorulloh laqabim$$, $$Muqaddas Makka shahrida uzoq yashab, asarlarimni shu yerda yozganim uchun menga «Jorulloh», ya'ni «Allohning qo'shnisi» degan sharafli laqab berilgan. Meni yana «Ustoz ud-dunyo» va «Faxru Xorazm» deb ham ataganlar.$$, $$["jorulloh", "makka", "laqab", "faxru xorazm", "ustoz ud-dunyo"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Zamaxshariy nima uchun «Jorulloh» laqabini olgan?$$, $$Zamaxshariy Makkada yashab ijod qilgani uchun «Jorulloh» («Allohning qo'shnisi») degan sharafli nomga sazovor bo'lgan. Shuningdek, u «Ustoz ud-dunyo» va «Faxru Xorazm» kabi ulug' nomlar bilan ham e'zozlangan. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Al-Kashshof» asarim$$, $$Eng mashhur asarim — «Al-Kashshof» tafsirini 1132–1134-yillarda Makkada yozganman. Qur'oni karim sharhiga bag'ishlangan bu asarimning 100 ga yaqin qo'lyozmasi saqlanib qolgan.$$, $$["al-kashshof", "tafsir", "qur'on", "makka", "al-azhar", "qo'lyozma"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Zamaxshariyning Qur'on tafsiriga bag'ishlangan mashhur asari qanday nomlanadi?$$, $$«Al-Kashshof» 1132–1134-yillarda Makkada yozilgan bo'lib, Qur'oni karim tafsiriga bag'ishlangan. Asarning 100 ga yaqin qo'lyozmasi mavjud va u Al-Azhar kabi dorilfununlarda o'quv qo'llanma sifatida foydalanilgan. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Muqaddimat ul-adab»$$, $$1137-yilda «Muqaddimat ul-adab» («Adab ilmiga muqaddima») asarimni yozib, uni Xorazmshoh Otsizga bag'ishlaganman. Unda arabcha so'zlar ostida forsiy va turkiy tarjimalarni berganman, asar 5 katta qismdan iborat.$$, $$["muqaddimat ul-adab", "otsiz", "lug'at", "turkiy", "forsiy", "1137"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$«Muqaddimat ul-adab» asari kimga bag'ishlangan va nimasi bilan qimmatli?$$, $$«Muqaddimat ul-adab» (1137) Xorazmshoh Otsizga bag'ishlangan bo'lib, otlar, fe'llar, bog'lovchilar, ot o'zgarishlari va fe'l o'zgarishlari haqidagi 5 katta qismdan iborat. Undagi arabcha so'zlarga berilgan forsiy va turkiy tarjimalar o'zbek tarixiy leksikologiyasi uchun qimmatlidir. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Al-Mufassal» asarim$$, $$1121-yilda arab tili grammatikasiga bag'ishlangan «Al-Mufassal» asarimni yozganman. Bu kitobim Sharqda ham, G'arbda ham katta shuhrat qozongan.$$, $$["al-mufassal", "grammatika", "arab tili", "1121", "shuhrat"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Zamaxshariyning arab tili grammatikasiga bag'ishlangan asari qaysi?$$, $$«Al-Mufassal» (1121) arab tili grammatikasi mufassal bayon etilgan kitob bo'lib, musulmon Sharqida ham, G'arb mamlakatlarida ham shuhrat topgan. Bu asar Zamaxshariyning tilshunoslikdagi eng e'tirof etilgan asarlaridan biridir. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim va shogirdlarim$$, $$Men tilshunoslik, adabiyot, geografiya, tafsir va hadis ilmlariga oid 50 ga yaqin asar yozganman, ulardan 25 tasi bizgacha yetib kelgan. 200 dan ortiq shogird tarbiyalaganman.$$, $$["asarlar", "50", "25", "shogirdlar", "200", "ilm"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Zamaxshariy nechta asar yozgan va ulardan nechtasi saqlanib qolgan?$$, $$Zamaxshariy fanning turli sohalariga oid 50 ga yaqin asar yaratgan bo'lib, shulardan 25 tasi bizgacha yetib kelgan. Ular orasida 3500 ga yaqin arab maqollari izohlangan «Al-Mustaqso fil-amsol», lug'atshunoslikka oid «Asos al-balog'at», hikoyalardan iborat «Rabiy' ul-abror» va geografiyaga oid «Kitob al-jibol» kabi asarlar bor. Uning 200 dan ortiq shogirdi bo'lgan. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$1139-yilda vatanim Xorazmga qaytib, umrimning oxirigacha shu yerda yashaganman. Men 1144-yilda hozirgi Ko'hna Urganch hududida vafot etganman va o'sha yerda dafn etilganman.$$, $$["vafot", "1144", "ko'hna urganch", "xorazm", "maqbara"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar va sarkardalar» bo'limi: Mahmud az-Zamaxshariy (1075–1144)$$, TRUE,
       $$Zamaxshariy qachon va qayerda vafot etgan?$$, $$Zamaxshariy 1144-yilda hozirgi Ko'hna Urganch hududida vafot etgan va shu yerda dafn etilgan. XIV asrda yashagan arab sayyohi Ibn Batuta o'z esdaliklarida uning gumbaz tomli maqbarasini o'z ko'zi bilan ko'rgani haqida yozgan. Olimning qo'lyozmalari Germaniya, Misr, Turkiya, Eron, Fransiya va Rossiyada saqlanadi. Manba: Ziyouz.com, «Qomusiy olimlar va sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Mahmud az-Zamaxshariy qayerda tug'ilgan?$$, $$["Buxoro shahrida", "Xorazmning Zamaxshar qishlog'ida", "Samarqand shahrida", "Marv shahrida"]$$::jsonb, 1, $$Zamaxshariy 1075-yilda Xorazmning Zamaxshar qishlog'ida tug'ilgan, uning «Zamaxshariy» nisbasi ham shu qishloq nomidan olingan.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Zamaxshariy nima sababdan «Jorulloh» («Allohning qo'shnisi») laqabini olgan?$$, $$["Xorazmshoh saroyida vazir bo'lgani uchun", "Bag'dodda madrasa qurdirgani uchun", "Makkada uzoq yashab, asarlarini shu yerda yozgani uchun", "Ko'plab shogird tarbiyalagani uchun"]$$::jsonb, 2, $$U muqaddas Makka shahrida uzoq yashab ijod qilgani uchun «Jorulloh» degan sharafli laqabga sazovor bo'lgan.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Zamaxshariyning Qur'on tafsiriga bag'ishlangan eng mashhur asari qaysi?$$, $$["«Al-Mufassal»", "«Muqaddimat ul-adab»", "«Asos al-balog'at»", "«Al-Kashshof»"]$$::jsonb, 3, $$«Al-Kashshof» 1132–1134-yillarda Makkada yozilgan Qur'on tafsiri bo'lib, Al-Azhar kabi dorilfununlarda o'quv qo'llanma sifatida foydalanilgan.$$
  FROM heroes h WHERE h.slug = 'mahmud-zamaxshariy';


-- ═══════════ Burhoniddin Marg'inoniy (1123–1197) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('burhoniddin-marginoniy', $$Burhoniddin Marg'inoniy$$, $$«Hidoya» sohibi, buyuk faqih$$, 1123, 1197,
 NULL,
 $$Burhoniddin Marg'inoniy — Marg'ilonning Rishton kentida tug'ilgan buyuk faqih, hanafiy fiqhining asosiy darsligiga aylangan «Hidoya» asari muallifi. Umrining so'nggi yillarini Samarqandda o'tkazgan va u yerdagi Chokardiza qabristoniga dafn etilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Burhoniddin Marg'inoniyman — marg'ilonlik faqih, «Hidoya» kitobining muallifiman. Mendan fiqh ilmi, «Hidoya» asarim, ona yurtim Marg'ilon va Samarqanddagi tahsilim haqida so'ra!$$,
 $$📜$$, $$["burhoniddin marg'inoniy", "hidoya", "faqih", "marg'ilon", "rishton", "sohibi hidoya"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1123-yilda Farg'ona vodiysidagi Marg'ilonning Rishton kentida tug'ilganman. Dastlabki ta'limni ona yurtim Rishtonda olganman, chunki o'sha davrda Rishton ham ilm-ma'rifat o'choqlaridan biri edi.$$, $$["1123", "rishton", "marg'ilon", "farg'ona vodiysi", "tug'ilgan joyi"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$Burhoniddin Marg'inoniy qachon va qayerda tug'ilgan?$$, $$Burhoniddin Marg'inoniy 1123-yilda tug'ilgan; u tug'ilib o'sgan Rishton Yoqut Hamaviyning yozishicha Marg'inonning qishloqlaridan biri bo'lgan. Olimning ustozlari ro'yxatida XII asrda Rishtonda yashagan imom Abu Bakr ibn Hotim ar-Rishdoniy al-Hakim ham keltirilgani uchun u dastlabki ta'limni aynan Rishtonda olgan deb hisoblanadi. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ismim va unvonim$$, $$Asl ismim Ali bo'lib, fiqh ilmini chuqur bilganim uchun menga «Burhoniddin» — «din hujjati, din dalili» degan unvon berilgan. To'liq nomim — Abul Hasan Ali ibn Abu Bakr ibn Abduljamil al-Farg'oniy ar-Rishtoniy al-Marg'inoniy.$$, $$["ali", "burhoniddin", "unvon", "din dalili", "abul hasan", "nisba"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$«Burhoniddin» unvoni qanday ma'noni anglatadi va olimning asl ismi nima bo'lgan?$$, $$Olim «Burhoniddin val-milla», ya'ni islom olami xalqlari va islom dinining hujjati, dalili degan nom bilan ham sharaflangan. Qadimda arablar Marg'ilon shahrini «Marg'inon» deb ataganlari uchun uning nisbasi «Marg'inoniy» shaklini olgan. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ona yurtim Marg'ilon$$, $$Ona yurtim Marg'ilonda bir davrning o'zida yetmishdan ortiq «Mavlono» rutbasini olgan allomalar yashab o'tgan. Shuning uchun ham Marg'ilon «Sunduqul orifiyn», ya'ni orif zotlar makoni degan e'tirofga sazovor bo'lgan.$$, $$["marg'ilon", "sunduqul orifiyn", "oriflar makoni", "mavlono", "ulamolar"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$Marg'ilon shahri olimlari ko'pligi uchun qanday nom bilan e'tirof etilgan?$$, $$Kitobda yozilishicha, Marg'ilonda bir davrning o'zida yetmishdan ortiq «Mavlono» rutbasini olgan allomalar yashab o'tgani uchun shahar «Sunduqul orifiyn» — Alloh taoloni dili bilan tanigan orif zotlar makoni deya ta'riflangan. «Qomus al-a'lom»da ham Marg'ilon o'z ulamolari, shoiru mashoyixlari va qadimiy osori atiqalari bilan mashhur shaharlar qatorida tilga olingan. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Chillaxonadagi boshlanish$$, $$«Hidoya» asarimning dastlabki qismlarini Marg'ilonda yashagan kezlarimda yozishni boshlaganman, keyin Samarqandga borib, ilmimni davom ettirganman. Men 1197-yilda vafot etganman; keyinchalik xalq men ijod qilgan joyni «Sohibi Hidoya chillaxonasi» deb atagan — bu ziyoratgoh Marg'ilondagi Pur Siddiq ziyoratgohi yaqinida joylashgan.$$, $$["hidoya", "chillaxona", "sohibi hidoya chillaxonasi", "pur siddiq", "marg'ilon"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$Burhoniddin Marg'inoniy «Hidoya» asarini yozishni qayerda boshlagan?$$, $$Kitobda naql qilinishicha, olim «Hidoya»ning dastlabki qismlarini Marg'ilonda yashagan kezlarida yoza boshlagan, shu bois xalq u ijod qilgan joyni «Sohibi Hidoya chillaxonasi» deb ataydi. Bu chillaxonaning XIX asrdagi ko'rinishi o'tgan asrning yetmishinchi yillarigacha saqlanib qolgan, 1964-yilda olingan fotosurati Farg'ona viloyat o'lkashunoslik muzeyi fondida saqlanadi. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Samarqandda tahsilim$$, $$Farg'ona diyorida tug'ilib voyaga yetgan bo'lsam-da, tahsilimni o'sha davrning ilmiy markazlaridan bo'lgan Samarqand shahrida davom ettirganman. U yerda ko'plab olimlar bilan uchrashib, ilmiy munozaralarda qatnashganman.$$, $$["samarqand", "tahsil", "ilmiy markaz", "munozara", "olimlar"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$Marg'inoniy tahsilini qaysi shaharda davom ettirgan?$$, $$Olim ona yurti ilmiy salohiyatini yuksaltirish maqsadida o'sha davrning ilmiy markazlaridan bo'lgan Samarqandda tahsil olgan, olimlar bilan uchrashib, ilmiy munozaralarda ishtirok etgan. Umrining so'nggi yillari ham shu shahar bilan bog'liq. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Hidoya» asarim$$, $$Butun islom olamida mashhur bo'lgan «Hidoya» asarimni hijriy 573, milodiy 1178-yilda Samarqandda yozib tugatganman. Bu kitob butun islom olamida hanafiy mazhabining fiqh masalalari bo'yicha asosiy qo'llanmasiga va madrasalarda o'qitiladigan asosiy darslikka aylangan.$$, $$["hidoya", "1178", "hijriy 573", "fiqh", "hanafiy", "samarqand"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$«Hidoya» asari qachon va qayerda yozib tugatilgan?$$, $$«Hidoya»ga keyinchalik ko'plab sharhlar va muxtasarlar yozilib, u madrasalarda hanafiy fiqhi bo'yicha o'qitiladigan asosiy darslikka aylangan. UzA yozishicha, hozir jahondagi ko'p oliy o'quv yurtlarida uning fiqh ta'limoti asosida darslar o'tiladi. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi; UzA — «Kun tarixi: Burhoniddin Marg'inoniyning qabri qayerda?» maqolasi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Boshqa asarlarim$$, $$«Bidoyat al-mubtadiy» («Boshlovchilar uchun ilk ta'lim») va «Kifoyat al-muntahiy» («Yakunlovchilar uchun tugal ta'lim») kitoblarim shoh asarim «al-Hidoya»ga asos bo'lgan. Bulardan tashqari «Nashr al-mazhab», «Manosik al-haj», «Kitob al-faroid» kabi asarlar ham yozganman.$$, $$["bidoyat al-mubtadiy", "kifoyat al-muntahiy", "nashr al-mazhab", "kitob al-faroid", "asarlar"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$Marg'inoniyning «Hidoya»ga asos bo'lgan asarlari qaysilar?$$, $$Olimning bizgacha yetib kelgan asarlari orasida «Kitob at-tajnis va-l-mazid» va «Kitob majmu' an-navozil» ham bor. «Bidoyat al-mubtadiy» asari Sharq mamlakatlari madrasalarida asosiy qo'llanma bo'lib kelgan va fors, ingliz, rus kabi tillarga tarjima qilingan. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ustozlarim$$, $$«Kitob ul-mashoyix» asarimda o'zim ta'lim olgan 40 dan ortiq shayx va allomani sanab o'tganman. Ular orasida Najmuddin Umar ibn Muhammad an-Nasafiy va Ja'far al-Hinduvoniy kabi ustozlarim bor.$$, $$["ustozlar", "kitob ul-mashoyix", "an-nasafiy", "al-hinduvoniy", "shayxlar"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$Marg'inoniy «Kitob ul-mashoyix» asarida nechta ustozini sanab o'tgan?$$, $$Bu ro'yxatda Abu al-Asir al-Badaviy, Abu Yoqub as-Sayariy va Abu Ishoq an-Navqadiy nomlari ham bor. «Kitob ul-mashoyix»ning o'zi bizgacha yetib kelmagan, undagi ma'lumotlar boshqa manbalar orqali ma'lum. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Iroq safarim$$, $$Iroqqa safar qilganimda fiqh bobida ajoyib asar bo'lgan «Al-Muxtasar al-Quduriy»ni ko'rganman; u paytda kattayu kichik — barcha «Jome' us-sag'ir»dan foydalanar edi. Shunda fiqhga oid asarlarni jamlab, ulardan eng zarur masalalarni olganman.$$, $$["iroq", "safar", "al-quduriy", "jome' us-sag'ir", "fiqh"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$Marg'inoniy Iroq safarida qaysi mashhur fiqh asarini ko'rgan?$$, $$Bu voqeani Mahmud ibn Sulaymon al-Kafaviy olimning o'z so'zlaridan keltirgan: safar taassurotlari uni fiqh asarlaridagi eng zarur masalalarni bir kitobga jamlashga undagan. Ana shu mehnat uning mashhur kitoblariga zamin bo'lgan. Manba: Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$1197-yilda ikkinchi marta haj safariga otlanganman, biroq Samarqandni tark etishga ulgurmay og'ir xastalikdan vafot etganman. Men hijriy 593-yil zulhijja oyining 14-kunida — milodiy 1197-yil 29-oktabrda vafot etganman va Samarqanddagi Chokardiza qabristoniga dafn etilganman.$$, $$["1197", "vafot", "samarqand", "chokardiza", "haj", "hijriy 593"]$$::jsonb, $$Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev. «Burhoniddin Marg'inoniy: tarixiy haqiqat va asotirlar» (Toshkent, 2010)$$, TRUE,
       $$Burhoniddin Marg'inoniy qachon vafot etgan va qayerga dafn etilgan?$$, $$Abu Tohirxo'ja Samarqandiy «Samariya» asarida uning vafoti seshanba kuniga to'g'ri kelganini yozib, Chokardiza qabristonidagi qabri o'rnini tasvirlab qoldirgan. Chokardiza qabristoni Muhammad ismli 400 ga yaqin faqih dafn etilgani uchun «Muhammadiylar qabristoni» (Turbatul-Muhammadiyin) nomi bilan ham mashhur bo'lgan. Manba: UzA — «Kun tarixi: Burhoniddin Marg'inoniyning qabri qayerda?» maqolasi; Ziyouz.com kutubxonasi — N. Abdulahatov, T. G'oziyev, «Burhoniddin Marg'inoniy» kitobi.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Burhoniddin Marg'inoniy islom olamida qaysi asari bilan mashhur bo'lgan?$$, $$["«Boburnoma»", "«Hidoya»", "«Devonu lug'otit turk»", "«Al-qonun fit-tib»"]$$::jsonb, 1, $$Marg'inoniy «Hidoya» asarini hijriy 573 (milodiy 1178)-yilda Samarqandda yozib tugatgan. Bu kitob madrasalarda hanafiy fiqhi bo'yicha o'qitiladigan asosiy darslikka aylangan.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Burhoniddin Marg'inoniy qayerda tug'ilgan?$$, $$["Samarqand shahrida", "Buxoro shahrida", "Marg'ilonning Rishton kentida", "Toshkent shahrida"]$$::jsonb, 2, $$Olim 1123-yilda Marg'ilonning Rishton kentida tug'ilgan va dastlabki ta'limni ona yurti Rishtonda olgan. Shu bois nisbalari «ar-Rishtoniy» va «al-Marg'inoniy» bo'lgan.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Burhoniddin Marg'inoniy qayerga dafn etilgan?$$, $$["Samarqanddagi Chokardiza qabristoniga", "Marg'ilondagi Pur Siddiq ziyoratgohi yoniga", "Buxorodagi qadimiy qabristonga", "Bag'dod shahridagi qabristonga"]$$::jsonb, 0, $$Marg'inoniy 1197-yil 29-oktabrda Samarqandda vafot etgan va Chokardiza qabristoniga dafn etilgan. Abu Tohirxo'ja Samarqandiy «Samariya» asarida uning qabri o'rnini tasvirlab qoldirgan.$$
  FROM heroes h WHERE h.slug = 'burhoniddin-marginoniy';


-- ═══════════ Najmiddin Kubro (1145–1221) · verdict: ok ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('najmiddin-kubro', $$Najmiddin Kubro$$, $$Kubraviya tariqati asoschisi$$, 1145, 1221,
 NULL,
 $$Najmiddin Kubro (1145–1221) — mashhur shayx, yirik tasavvuf olimi, xalq qahramoni va otashnafas shoir, kubraviya tariqatining asoschisi. Xiva yaqinidagi Sayot qishlog'ida tug'ilgan, mo'g'ullarga qarshi shahar mudofaasida shahid bo'lgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Najmiddin Kubroman — «Shayxi valiytarosh» nomi bilan mashhur xorazmlik shayxman, tasavvufdagi kubraviya tariqatiga asos solganman. Mendan tariqatim, asarlarim va Xorazm mudofaasi haqida so'ra!$$,
 $$📿$$, $$["najmiddin kubro", "kubraviya", "shayxi valiytarosh", "xorazm", "tasavvuf", "ruboiy"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1145-yilda Xiva yaqinidagi hozirgi Sayot qishlog'ida tug'ilganman. Vatanim — qadimiy Xorazm zamini.$$, $$["sayot", "xiva", "xorazm", "1145", "tug'ilgan joy"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Najmiddin Kubro qayerda tug'ilgan?$$, $$Najmiddin Kubro 1145-yilda Xiva yaqinidagi hozirgi Sayot qishlog'ida tug'ilgan. U mashhur shayx, yirik tasavvuf olimi, xalq qahramoni va otashnafas shoir sifatida tanilgan. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ismim va laqabim$$, $$Mening to'liq ismim — Ahmad ibn Umar Abuljannob Najmiddin al-Kubro al-Xivaqiy al-Xorazmiy. Xalq orasida «Shayxi valiytarosh», ya'ni «Avliyolar yetishtiradigan shayx» nomi bilan shuhrat qozonganman.$$, $$["ahmad ibn umar", "shayxi valiytarosh", "laqab", "avliyo", "shayx"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Najmiddin Kubro qanday laqab bilan shuhrat qozongan?$$, $$Uning to'liq ismi Ahmad ibn Umar Abuljannob Najmiddin al-Kubro al-Xivaqiy al-Xorazmiy bo'lgan. «Shayxi valiytarosh» laqabi «Avliyolar yetishtiradigan shayx» degan ma'noni anglatadi. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kubraviya tariqati$$, $$Men tasavvufdagi mashhur kubraviya tariqatiga asos solganman. Tariqatimiz ahllari xufiya zikrni targ'ib etganlar, ta'limotimiz asosan Markaziy Osiyo va qisman Eronga tarqalgan.$$, $$["kubraviya", "tariqat", "tasavvuf", "xufiya zikr", "markaziy osiyo", "eron"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Najmiddin Kubro qaysi tariqatga asos solgan?$$, $$Najmiddin Kubro tasavvufdagi mashhur kubraviya tariqatiga asos solgan. Bu tariqat ahllari xufiya zikrni targ'ib etganlar, kubraviya ta'limoti asosan Markaziy Osiyo va qisman Eronga tarqalgan. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim$$, $$Mening o'nga yaqin asarim fanga ma'lum. Ular orasida «Al-usul al-ashara» («O'nta usul»), «Favoyih ul-jamol va favotih ul-jalol», «Tafsir» va «Sharh us-sunna val-masolik» kitoblarim mashhur.$$, $$["al-usul al-ashara", "favoyih ul-jamol", "tafsir", "sharh us-sunna", "asarlar"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Najmiddin Kubroning qaysi asarlari mashhur?$$, $$Najmiddin Kubroning o'nga yaqin asari fanga ma'lum. Ayniqsa «Al-usul al-ashara» («O'nta usul»), «Favoyih ul-jamol va favotih ul-jalol» («Jamol xushbo'yliklari va jalolning kashfi»), «Risolat ul-hoif ul-hoim an lavmat il-loim», «Tafsir» va «Sharh us-sunna val-masolik» kitoblari mashhur. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yozgan tillarim$$, $$Asarlarimni asosan arab tilida yozganman. Faqat boshlovchi so'fiylar uchun qo'llanma sifatida yaratgan «Fi odob us-solikin» («Soliklar odobi haqida») asarimni va ruboiylarimni forsiyda bitganman.$$, $$["arab tili", "forsiy", "fi odob us-solikin", "soliklar odobi", "qo'llanma"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Najmiddin Kubro asarlarini asosan qaysi tilda yozgan?$$, $$Kubro o'z asarlarini asosan arab tilida yozgan, faqat «Fi odob us-solikin» («Soliklar odobi haqida») asari va ruboiylarini forsiyda bitgan. Ingliz sharqshunosi J.S.Trimingem «Soliklar odobi haqida» asari tasavvufning eroniylashuvida muhim bosqich bo'lganini qayd etadi. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ruboiylarim$$, $$Men ruboiylar ham bitganman. Ularda Haqiqatni izlash, Ollohga bo'lgan ishqni kuylash, Haq yo'liga da'vat va tariqatga kirgan solikning turli bosqichlardagi o'y-kechinmalari, ranju iztiroblari tasvirlangan.$$, $$["ruboiy", "she'riyat", "ishq", "solik", "haqiqat", "tasavvuf"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Najmiddin Kubro ruboiylarida qaysi mavzularni kuylagan?$$, $$Hozirgacha Najmiddin Kubro ijodiga tegishli 26 ta ruboiy ma'lum: sharqshunos Ye.E.Bertels turli tazkira va bayozlardan tanlab olgan 25 ta ruboiyni «Tasavvuf va tasavvuf adabiyoti» kitobida keltirgan, Eronda nashr etilgan «Ruboiynoma» to'plamidagi 8 ruboiydan bittasi esa ular orasida uchramaydi. Bu ruboiylarni Jamol Kamol va Matnazar Abdulhakim o'zbek tiliga tarjima qilgan. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Muridlarimga mehrim$$, $$Mo'g'ul galalari Xorazm tuprog'iga bostirib kelganida, boshqa o'lkalardan kelgan muridlarimning begona zaminda o'lib ketishlarini istamay, ularni tug'ilgan yurtlariga jo'natib yuborganman.$$, $$["muridlar", "mo'g'ullar", "xorazm", "shogirdlar", "bosqin"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Mo'g'ullar bostirib kelganida Najmiddin Kubro muridlarini qanday qutqargan?$$, $$Mo'g'ul galalari Xorazm tuprog'iga bostirib kelganida Najmiddin Kubro boshqa o'lkalardan kelgan muridlarining begona zaminda o'lib ketishlarini istamay, ularni tug'ilgan yurtlariga jo'natib yuborgan. O'zi esa shahar mudofaasiga otlangan. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xorazm mudofaasi$$, $$O'zim esa shahar mudofaasiga otlanganman. Shogirdlarimning birga ketish takliflariga: «Men shu yerda shahid bo'laman. Menga Xorazmni tark etishga ruxsat yo'q!» — deb javob berganman va qo'limga shamshir tutib, qo'ynimga tosh to'ldirib, yov qarshisiga chiqqanman.$$, $$["mudofaa", "shamshir", "xorazm", "qahramonlik", "yov", "shahid"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Najmiddin Kubro shahar mudofaasiga otlanganida shogirdlariga nima degan?$$, $$Najmiddin Kubro shogirdlarining birga ketish to'g'risidagi takliflariga: «Men shu yerda shahid bo'laman. Menga Xorazmni tark etishga ruxsat yo'q!» — deb javob bergan. U qo'liga shamshir tutib, qo'yniga tosh to'ldirib yov qarshisiga chiqqan, dushmanlarga tosh otgan va bir nechtasini nayza bilan urib yiqitgan. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1221-yilda vatanim mudofaasida shahid bo'lib vafot etganman. Dushmanlar menga kamondan o'q uzganlar, o'qlardan biri ko'kragimga sanchilgan; shunda ham dushman qo'lidan tortib olgan bayroqni mahkam siqib turganman.$$, $$["1221", "shahid", "vafot", "bayroq", "mudofaa", "o'q"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Najmiddin Kubro (1145–1221)$$, TRUE,
       $$Najmiddin Kubro qachon va qanday vafot etgan?$$, $$Najmiddin Kubro 1221-yilda mo'g'ullarga qarshi shahar mudofaasida shahid bo'lgan. Shahid bo'layotgan paytida u dushman qo'lidan bayrog'ini tortib olib shu darajada mahkam siqib ushlaganki, o'n kishi bo'lib ham bayroqni uning qo'lidan olisholmagach, barmoqlarini kesishga majbur bo'lishgan. Manba: Ziyouz.com, «Fors-tojik she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Najmiddin Kubro tasavvufdagi qaysi tariqatga asos solgan?$$, $$["Naqshbandiya", "Kubraviya", "Yassaviya", "Qodiriya"]$$::jsonb, 1, $$Najmiddin Kubro tasavvufdagi mashhur kubraviya tariqatiga asos solgan. Bu tariqat ahllari xufiya zikrni targ'ib etganlar, ta'limot asosan Markaziy Osiyo va qisman Eronga tarqalgan.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Najmiddin Kubro asarlarini asosan qaysi tilda yozgan?$$, $$["Arab tilida", "Forsiyda", "Turkiy tilda", "Yunon tilida"]$$::jsonb, 0, $$Kubro o'z asarlarini asosan arab tilida yozgan. Faqat boshlovchi so'fiylar uchun yaratilgan «Fi odob us-solikin» asari va ruboiylarini forsiyda bitgan.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Mo'g'ullar Xorazmga bostirib kelganida Najmiddin Kubro qanday yo'l tutgan?$$, $$["Muridlari bilan boshqa yurtga ko'chib ketgan", "Mo'g'ullar bilan sulh tuzgan", "Muridlarini yurtlariga jo'natib, o'zi shahar mudofaasiga otlangan", "Tog'larga chiqib yashiringan"]$$::jsonb, 2, $$Kubro boshqa o'lkalardan kelgan muridlarini tug'ilgan yurtlariga jo'natib yuborgan, o'zi esa «Menga Xorazmni tark etishga ruxsat yo'q!» deb shahar mudofaasiga otlangan va shahid bo'lgan.$$
  FROM heroes h WHERE h.slug = 'najmiddin-kubro';


-- ═══════════ Bahouddin Naqshband (1318–1389) · verdict: ok ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('bahouddin-naqshband', $$Bahouddin Naqshband$$, $$Naqshbandiya tariqati asoschisi$$, 1318, 1389,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Bahouddin Naqshband (1318–1389) — naqshbandiya tariqatiga asos solgan buyuk mutasavvif, Buxoro yonidagi Qasri Hinduyon (Qasri Orifon) qishlog'ida tug'ilgan. Uning ta'limoti mohiyati «Dast ba koru, dil ba yor!» («Qo'l ishda, Olloh dilda») shiorida o'z ifodasini topgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Bahouddin Naqshbandman — Buxoro yonidagi Qasri Orifon qishlog'ida tug'ilganman va naqshbandiya tariqatiga asos solganman. Mendan «Dast ba koru, dil ba yor!» shiorim, ustozim va asarlarim haqida so'ra!$$,
 $$📿$$, $$["bahouddin naqshband", "naqshbandiya", "balogardon", "hayotnoma", "qasri orifon", "buxoro"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1318-yilda Buxoro yonidagi Qasri Hinduyon (Qasri Orifon) qishlog'ida tavallud topganman. To'liq ismim — Sayyid Muhammad Bahouddin ibn Sayid Jaloliddin.$$, $$["1318", "buxoro", "qasri hinduyon", "qasri orifon", "tavallud", "tug'ilgan"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Bahouddin Naqshband qachon va qayerda tavallud topgan?$$, $$Sayyid Muhammad Bahouddin ibn Sayid Jaloliddin 1318-yilda Buxoro yonidagi Qasri Hinduyon qishlog'ida dunyoga kelgan. Bu qishloq manbada Qasri Orifon nomi bilan ham keltiriladi. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yoshligim va ilm$$, $$Yoshligimdanoq tasavvuf yo'liga kirganman va uning sirlarini o'rganganman. Qur'oni Karim, tafsir va hadislarni puxta egallaganman.$$, $$["tasavvuf", "qur'on", "tafsir", "hadis", "ilm", "yoshlik"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Bahouddin Naqshband yoshligida qaysi ilmlarni puxta egallagan?$$, $$Naqshband yoshligidanoq tasavvuf yo'liga kirib, uning sirlarini o'rgangan. U Qur'oni Karim, tafsir va hadislarni puxta egallagan. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Naqshband» laqabim$$, $$Men dehqonchilik bilan shug'ullanganman, keyinchalik shoyi gazlamalarga, temir va mis buyumlarga turli naqshlar bitganman. Shu sababli laqabim «Naqshband» bo'lgan.$$, $$["naqshband", "laqab", "dehqonchilik", "shoyi", "naqsh", "hunar"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Bahouddin nima sababdan «Naqshband» laqabini olgan?$$, $$U dehqonchilik bilan shug'ullangan, keyinchalik shoyi gazlamalarga, temir va mis buyumlarga turli naqshlar bitgan. Aynan shu hunari sababli unga «Naqshband» laqabi berilgan. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ustozim$$, $$Men Abdulholiq G'ijduvoniyni o'zimga pir va ustod deb bilganman hamda u kishining ta'limotini rivojlantirganman.$$, $$["abdulholiq g'ijduvoniy", "pir", "ustod", "ta'limot"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Bahouddin Naqshband kimni o'ziga pir va ustod deb bilgan?$$, $$Bahouddin Naqshband Abdulholiq G'ijduvoniyni o'ziga pir va ustod deb bilgan. U ustozining ta'limotini rivojlantirgan. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim$$, $$Tasavvuf nazariyasi va amaliyotiga doir 13 ta asar yozganman. Ular orasida «Hayotnoma», «Dalili oshiqon», «Odob al-solikin» kabi asarlar alohida ahamiyatga ega.$$, $$["hayotnoma", "dalili oshiqon", "odob al-solikin", "13 ta asar", "tasavvuf", "kitob"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Bahouddin Naqshband tasavvufga doir nechta asar yozgan va ulardan qaysilari mashhur?$$, $$Naqshband tasavvuf nazariyasi va amaliyotiga doir 13 ta asar yozgan. Ular orasida «Hayotnoma», «Dalili oshiqon», «Odob al-solikin» kabi asarlar alohida ahamiyatga ega. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Naqshbandiya tariqati$$, $$Men «Naqshbandiya» tariqatiga asos solganman. Arabiston, Eron va Markaziy Osiyoning ko'p shaharlarida tasavvufni keng targ'ib qilganman.$$, $$["naqshbandiya", "tariqat", "arabiston", "eron", "markaziy osiyo", "targ'ib"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Bahouddin Naqshband qaysi tariqatga asos solgan va uni qayerlarda targ'ib qilgan?$$, $$Xoja Bahouddin «Naqshbandiya» tariqatiga asos solgan. U Arabiston, Eron va Markaziy Osiyoning ko'p shaharlarida tasavvufni keng targ'ib qilgan. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shiorim$$, $$Ta'limotimning asosiy mohiyati «Dast ba koru, dil ba yor!» — ya'ni «Qo'l ishda, Olloh dilda» degan shiorda o'z ifodasini topgan.$$, $$["dast ba koru dil ba yor", "shior", "qo'l ishda", "olloh dilda", "mehnat"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Naqshbandiylikning asosiy shiori qanday va u nimani anglatadi?$$, $$Naqshbandiylikning asosiy mohiyati «Dast ba koru, dil ba yor!» degan shiorda ifodalangan. Uning ma'nosi — «Qo'l ishda, Olloh dilda». Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Balogardon» nomim$$, $$Ismim «Bahouddin» — «dinning faxri» degan ma'noni anglatadi. Karomatli inson bo'lganim uchun menga «Balogardon» deb nom berishgan.$$, $$["balogardon", "bahouddin", "dinning faxri", "karomat", "nom"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Bahouddin Naqshbandga xalq qanday nom bergan va nima uchun?$$, $$«Bahouddin» ismi «dinning faxri» degan ma'noni anglatadi. U karomatli inson bo'lganligi uchun unga «Balogardon» deb nom berishgan. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Izdoshlarim$$, $$Men 1389-yilda vafot etganman, shu bois keyingi zamonlarni ko'rmaganman. Mendan so'ng Amir Temur, Alisher Navoiy, Abdurahmon Jomiy, Maxtumquli va boshqa ulug' zotlar Naqshbandiya yo'lini tanlaganlar.$$, $$["amir temur", "alisher navoiy", "abdurahmon jomiy", "maxtumquli", "izdoshlar", "naqshbandiya yo'li"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Qaysi ulug' zotlar Naqshbandiya yo'lini tanlaganlar?$$, $$Manbada A. Temur, A. Navoiy, A. Jomiy, Maxtumquli va boshqa ulug' zotlar Naqshbandiya yo'lini tanlagani aytiladi. Bu ta'limotning asrlar davomida qanchalik keng yoyilganini ko'rsatadi. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1389-yilda o'z qishlog'imda vafot etganman. 1993-yilda O'zbekistonda tavalludimning 675 yilligi keng nishonlangan.$$, $$["1389", "vafot", "qishloq", "1993", "675 yillik"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Bahouddin Naqshband (1318–1389)$$, TRUE,
       $$Bahouddin Naqshband qachon va qayerda vafot etgan?$$, $$Xoja Bahouddin Naqshband 1389-yilda o'z qishlog'ida vafot etgan. 1993-yili O'zbekistonda Bahouddin Naqshbandning 675 yilligi keng nishonlangan. Manba: Ziyouz.com, «Qomusiy olimlar, sarkardalar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Bahouddin Naqshband qaysi qishloqda tavallud topgan?$$, $$["Qasri Hinduyon (Qasri Orifon)", "G'ijduvon", "Romitan", "Shofirkon"]$$::jsonb, 0, $$U 1318-yilda Buxoro yonidagi Qasri Hinduyon (Qasri Orifon) qishlog'ida tavallud topgan. G'ijduvon esa uning ustozi Abdulholiq G'ijduvoniy nomi bilan bog'liq joydir.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Naqshbandiylikning asosiy shiori qaysi?$$, $$["«Dast ba koru, dil ba yor!»", "«Avval o'yla, keyin so'yla»", "«Sabr tagi — oltin»", "«Dil ba dast, yor ba kor»"]$$::jsonb, 0, $$Naqshbandiylikning asosiy mohiyati «Dast ba koru, dil ba yor!» («Qo'l ishda, Olloh dilda») degan shiorda o'z ifodasini topgan.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Bahouddin Naqshband tasavvuf nazariyasi va amaliyotiga doir nechta asar yozgan?$$, $$["7 ta", "10 ta", "13 ta", "20 ta"]$$::jsonb, 2, $$U tasavvuf nazariyasi va amaliyotiga doir 13 ta asar yozgan. Ular orasida «Hayotnoma», «Dalili oshiqon», «Odob al-solikin» alohida ahamiyatga ega.$$
  FROM heroes h WHERE h.slug = 'bahouddin-naqshband';


-- ═══════════ Muhammad Aminxo'ja Muqimiy (1850–1903) · verdict: ok ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('muqimiy', $$Muhammad Aminxo'ja Muqimiy$$, $$Xalq shoiri, hajviyot ustasi$$, 1850, 1903,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Muhammad Aminxo'ja Muqimiy (1850–1903) — shoir va mutafakkir, o'zbek demokratik adabiyoti asoschilaridan biri. Qo'qonda yashab ijod qilgan, «Sayohatnoma» asari va 30 ga yaqin hajviy asarlari bilan mashhur.$$,
 $$Assalomu alaykum, aziz farzand! Men Muhammad Aminxo'ja Muqimiyman — qo'qonlik shoir, hajviyot ustasiman. Mendan «Sayohatnoma», hajviy she'rlarim va Qo'qon adabiy muhiti haqida so'ra!$$,
 $$📜$$, $$["muqimiy", "muhammad aminxo'ja", "sayohatnoma", "tanobchilar", "hajviyot", "qo'qon"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1850-yilda Qo'qon shahrida tug'ilganman. Asl ism-sharifim Muhammad Aminxo'ja Mirzaxo'ja o'g'li bo'lib, «Muqimiy» — mening taxallusim. Otam toshkentlik, onam Oyshabibi xo'jandlik bo'lgan, oilamiz Qo'qonda yashagan.$$, $$["qo'qon", "1850", "taxallus", "mirzaxo'ja", "oyshabibi", "tug'ilish"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiy qachon va qayerda tug'ilgan?$$, $$Muqimiy (taxallusi; asl ism-sharifi Muhammad Aminxo'ja Mirzaxo'ja o'g'li) 1850-yilda Qo'qonda tug'ilgan. Otasi toshkentlik, onasi Oyshabibi xo'jandlik bo'lib, oila Qo'qonda yashagan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Onam va ustozlarim$$, $$She'riyatga havasni menda onam Oyshabibi uyg'otganlar. Keyinchalik Navoiy, Jomiy, Nizomiy va Fuzuliy asarlaridan o'rganganman, Jomiyni esa o'zimga ustoz deb bilganman.$$, $$["oyshabibi", "she'riyat", "navoiy", "jomiy", "nizomiy", "fuzuliy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiyda she'riyatga havasni kim uyg'otgan va u kimni o'ziga ustoz deb bilgan?$$, $$Muqimiyda she'riyatga havasni onasi Oyshabibi uyg'otgan. Shoir Navoiy, Jomiy, Nizomiy va Fuzuliydan o'rgangan, Jomiyni o'ziga ustoz sifatida qabul qilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsil yillarim$$, $$Boshlang'ich ta'limni mahallamizdagi maktabda olganman. So'ngra Qo'qonda Nodira bino qildirgan «Moxlar oyim» madrasasida, keyin Buxoro madrasalarida (1864–65; 1875–76-yillarda) tahsil ko'rganman.$$, $$["maktab", "moxlar oyim", "madrasa", "nodira", "buxoro", "tahsil"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiy qaysi madrasalarda tahsil olgan?$$, $$Muqimiy boshlang'ich ta'limni mahalla maktabida olgan, so'ng Nodira bino qildirgan «Moxlar oyim» madrasasida va Buxoro madrasalarida (1864–65; 1875–76) o'qigan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mirzalik xizmatim$$, $$1876-yilda Qo'qonga qaytib kelib, yer qurilishi mahkamasida mirzalik qilganman. 1870-yillarning oxirlaridan esa ijodiy ish bilan shug'ullana boshlaganman.$$, $$["1876", "mirzalik", "yer qurilishi", "mahkama", "qo'qon", "ijod"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiy 1876-yilda Qo'qonga qaytgach qayerda ishlagan?$$, $$Muqimiy 1876-yilda Qo'qonga qaytib, yer qurilishi mahkamasida mirzalik qilgan. 1870-yillarning oxirlarida u ijodiy ish bilan shug'ullana boshlagan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hazratdagi hujram$$, $$Otam vafotidan so'ng moddiy ahvolim og'irlashdi va 1885-yilda «Hazrat» madrasasining kichik hujrasiga ko'chib o'tganman. Butun umrim qashshoqlikda kechgan.$$, $$["hazrat", "madrasa", "hujra", "1885", "qashshoqlik"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiy 1885-yilda qayerga ko'chib o'tgan va nima uchun?$$, $$Otasi vafotidan keyin Muqimiyning moddiy ahvoli og'irlashgan va u 1885-yilda «Hazrat» madrasasining kichik hujrasiga ko'chib o'tgan. Shoirning butun umri qashshoqlikda kechgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hajviy asarlarim$$, $$Men 30 ga yaqin hajviy asar yaratganman: «Tanobchilar», «Saylov», «Dar mazammati zamona», «Devonamen», «Ko'samen», «Pashshalar», «Shikoyati bezak» shular jumlasidandir. Ularda chor amaldorlari va mahalliy boylarning kirdikorlarini ochib tashlaganman.$$, $$["hajviyot", "tanobchilar", "saylov", "devonamen", "ko'samen", "pashshalar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiy nechta hajviy asar yaratgan va ularda kimlar tanqid qilingan?$$, $$Muqimiy «Tanobchilar», «Saylov», «Dar mazammati zamona», «Devonamen», «Ko'samen», «Pashshalar», «Shikoyati bezak» kabi 30 ga yaqin hajviy asar yaratgan. Tanqidiy yo'nalishdagi asarlarida chor amaldorlari va mahalliy boylarning kirdikorlari ochib tashlangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Sayohatnoma» asarim$$, $$«Sayohatnoma» asarim 4 qismdan iborat bo'lib, yengil, o'ynoqi vaznda, 4 misrali bandlarda yozilgan. Unda xalq turmushining og'irligi va qishloqlarning vayronaligini realistik tasvirlaganman.$$, $$["sayohatnoma", "4 qism", "vazn", "band", "xalq turmushi", "qishloq"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiyning «Sayohatnoma» asari qanday tuzilgan va unda nima tasvirlangan?$$, $$«Sayohatnoma» — 4 qismli asar bo'lib, yengil, o'ynoqi vaznda yozilgan va 4 misrali bandlardan tashkil topgan. Unda xalq turmushining og'irligi, qishloqlarning vayronaligi realistik tasvirlangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Toshkent safarlarim$$, $$1887–88 va 1892-yillarda Toshkentga sayohat qilganman. U yerda madaniy va adabiy hayotni chuqur o'rganib, Almaiy, Nodim kabi ilg'or ruhdagi ijodkorlar bilan aloqa bog'lab, ijodiy hamkorlik qilganman.$$, $$["toshkent", "1887", "1892", "almaiy", "nodim", "safar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiy qaysi yillarda Toshkentga sayohat qilgan va u yerda kimlar bilan hamkorlik qilgan?$$, $$Muqimiy 1887–88 va 1892-yillarda Toshkentga sayohat qilib, shaharning madaniy va adabiy hayotini chuqur o'rgangan. U Almaiy, Nodim kabi ilg'or ruhdagi ijodkorlar bilan aloqa bog'lab, ijodiy hamkorlik qilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yangi mavzularim$$, $$O'zbek adabiyotiga ishchilar mavzusini olib kirganman: «Maskovchi boy ta'rifida», «Voqeai Viktor» kabi asarlar yaratdim. Lirikamda esa do'stlik, sadoqat, samimiyat kabi qadriyatlarni kuyladim — she'rlarim chuqur optimizm bilan sug'orilgan.$$, $$["ishchilar mavzusi", "maskovchi boy", "voqeai viktor", "lirika", "do'stlik", "optimizm"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiy o'zbek adabiyotiga qanday yangi mavzu olib kirgan?$$, $$Muqimiy o'zbek adabiyotiga ishchilar mavzusini olib kirib, «Maskovchi boy ta'rifida» va «Voqeai Viktor» kabi asarlar yaratgan. Uning lirikasi chuqur optimizm bilan sug'orilgan bo'lib, do'stlik, sadoqat, samimiyat kabi qadriyatlarni o'zbek adabiyotiga olib kirgan. Muqimiy Furqat, Zavqiy, Avaz va Komil bilan birga ilg'or fikrli shoirlar qatorida sanaladi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1903-yilning 25-mayida ona shahrim Qo'qonda vafot etganman. Butun umrim qashshoqlikda kechgan bo'lsa-da, ijodimni oxirigacha tark etmadim.$$, $$["1903", "25-may", "vafot", "qo'qon", "umr oxiri"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Aminxo'ja Muqimiy (1850–1903)$$, TRUE,
       $$Muqimiy qachon va qayerda vafot etgan?$$, $$Muqimiy 1903-yil 25-mayda Qo'qonda vafot etgan. Vafotidan keyin, 1907-yilda Ostroumov «Devoni Muqimiy» to'plamini nashr etgan, 1910 va 1912-yillarda esa «Devoni Muqimiy maa hajviyot» bosilgan; shoirning 10 she'riy, 20 ga yaqin nasriy maktublari saqlangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Muqimiy qaysi shaharda tug'ilib, umrining asosiy qismini o'sha yerda o'tkazgan?$$, $$["Qo'qon", "Buxoro", "Toshkent", "Xo'jand"]$$::jsonb, 0, $$Muqimiy 1850-yilda Qo'qonda tug'ilgan va 1903-yilda o'sha shaharda vafot etgan. Otasi toshkentlik, onasi xo'jandlik bo'lsa-da, oila Qo'qonda yashagan.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Muqimiyning 4 qismdan iborat bo'lib, xalq turmushining og'irligini tasvirlagan asari qaysi?$$, $$["«Tanobchilar»", "«Sayohatnoma»", "«Pashshalar»", "«Devonamen»"]$$::jsonb, 1, $$«Sayohatnoma» — 4 qismli asar bo'lib, yengil, o'ynoqi vaznda, 4 misrali bandlarda yozilgan; unda xalq turmushining og'irligi va qishloqlarning vayronaligi realistik tasvirlangan. Qolgan uchtasi — Muqimiyning hajviy asarlari.$$
  FROM heroes h WHERE h.slug = 'muqimiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Muqimiy taxminan nechta hajviy asar yaratgan?$$, $$["10 ga yaqin", "20 ga yaqin", "30 ga yaqin", "50 dan ortiq"]$$::jsonb, 2, $$Muqimiy «Tanobchilar», «Saylov», «Devonamen», «Ko'samen», «Pashshalar» kabi 30 ga yaqin hajviy asar yaratgan bo'lib, ularda chor amaldorlari va mahalliy boylarning kirdikorlari ochib tashlangan.$$
  FROM heroes h WHERE h.slug = 'muqimiy';


-- ═══════════ Zokirjon Furqat (1859–1909) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('furqat', $$Zokirjon Furqat$$, $$Ma'rifatparvar shoir va publitsist$$, 1859, 1909,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Zokirjon Furqat (1859–1909) — taraqqiyparvar shoir, mutafakkir va publitsist, o'zbek publitsistikasining asoschilaridan biri. U Qo'qonda tug'ilgan, «Turkiston viloyatining gazeti»da ilm-ma'rifatni targ'ib qilgan va umrining oxirini Yorkentda o'tkazgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Zokirjon Furqatman — Qo'qonda tug'ilgan shoir va publitsistman. Mendan she'rlarim, ilm-ma'rifat haqidagi maqolalarim va uzoq safarlarim haqida so'ra!$$,
 $$🖋️$$, $$["furqat", "zokirjon", "shoir", "publitsist", "sayding qo'yaber sayyod", "yorkent"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1859-yilda Qo'qon shahrida tug'ilganman. Asl ismim Zokirjon Mullo Holmuhammad o'g'li, «Furqat» esa mening taxallusimdir.$$, $$["1859", "qo'qon", "zokirjon", "taxallus", "furqat"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat qachon va qayerda tug'ilgan?$$, $$Furqat 1859-yilda Qo'qonda tug'ilgan, asl ismi Zokirjon Mullo Holmuhammad o'g'li. U she'rlariga «Furqat» taxallusini qo'ygan va shu nom bilan shuhrat qozongan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'limim$$, $$Mahallamizdagi maktabda savod chiqarib, arab tili va xattotlikni o'rganganman. 1873–76-yillarda madrasada tahsil olganman.$$, $$["maktab", "madrasa", "xattotlik", "arab tili", "1873"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat qaysi yillarda madrasada tahsil olgan?$$, $$Furqat dastlab mahalla maktabida savod chiqargan, arab tili va xattotlikni o'rgangan. So'ngra 1873–76-yillarda madrasada tahsil olgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Navoiy maktabi$$, $$Alisher Navoiy ijodini va fors adabiyoti namoyandalari merosini chuqur o'rganganman, fors tilini mukammal o'zlashtirganman. Keyinchalik Navoiy asarlariga naziralar va taxmislar ham bog'laganman.$$, $$["navoiy", "fors tili", "nazira", "taxmis", "adabiyot"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat qaysi buyuk shoir ijodini chuqur o'rgangan?$$, $$Furqat Alisher Navoiy ijodini va fors adabiyoti namoyandalari merosini chuqur o'rgangan, fors tilini mukammal egallagan. U Alisher Navoiy asarlariga go'zal naziralar va taxmislar bog'lagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yangi Marg'ilonda$$, $$1876-yilda savdogar tog'amning iltimosiga ko'ra Yangi Marg'ilonga borib, savdo ishlarida yordam berganman. Aynan shu yerda ijodkor sifatida to'la shakllanib, g'azallarimga «Furqat» taxallusini qo'yib shuhrat qozona boshlaganman.$$, $$["yangi marg'ilon", "1876", "savdo", "taxallus", "tog'a"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat 1876-yilda qaysi shaharga borib, qanday ish bilan shug'ullangan?$$, $$1876-yilda Furqat savdogar tog'asining iltimosiga ko'ra Yangi Marg'ilonga borgan va savdo ishlarida yordam bergan. U aynan shu yerda ijodkor sifatida to'la shakllangan, g'azallariga «Furqat» taxallusini qo'yib shuhrat qozona boshlagan. 1880-yillar boshida Qo'qonga qaytib oila qurgan, 1886–87-yillarda esa Marg'ilonda masjid hujrasida istiqomat qilib, kichik do'kon ochgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Toshkent yillari$$, $$1889-yil iyun oyida Toshkentga kelganman. Bu yerda «Turkiston viloyatining gazeti»da ishlab, maqolalarimni nashr etganman.$$, $$["toshkent", "1889", "gazeta", "turkiston viloyatining gazeti", "publitsistika"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat 1889-yilda qaysi shaharga kelib, qaysi gazetada ishlagan?$$, $$Furqat 1889-yil iyunida Toshkentga kelgan va «Turkiston viloyatining gazeti»da ishlagan. U gazetada o'z maqolalarini muntazam nashr etgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ma'rifat targ'iboti$$, $$1890-yillarda «Ilm xosiyati», «Gimnaziya», «Vistavka xususida», «Suvorov» kabi maqolalarimni e'lon qilganman. Ularda yangilik va taraqqiyotni, ilm-fan va yevropacha maorif-madaniyatni targ'ib qilganman.$$, $$["ilm xosiyati", "gimnaziya", "vistavka xususida", "maqola", "ma'rifat"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat o'z maqolalarida nimani targ'ib qilgan?$$, $$Furqat «Ilm xosiyati», «Gimnaziya», «Vistavka xususida», «Suvorov» kabi maqolalarida yangilik va taraqqiyotning, ilm-fan va yevropacha maorif-madaniyatning targ'ibotchisi sifatida namoyon bo'lgan. Bu maqolalar 1890-yillarda «Turkiston viloyatining gazeti»da chop qilingan. Shu bois u o'zbek publitsistikasining asoschilaridan biri sanaladi. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim$$, $$«Hammomi xayol» risolasini yozganman, fors tilidan «Chor darvesh» hikoyatini tarjima qilganman va «Nuh manzar» nomli she'riy kitob yaratganman. Haj ziyoratim munosabati bilan «Hajnoma» asarimni ham bitganman.$$, $$["hammomi xayol", "chor darvesh", "nuh manzar", "hajnoma", "tarjima"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat fors tilidan qaysi asarni tarjima qilgan?$$, $$Furqat «Hammomi xayol» risolasi va «Hajnoma» asarining muallifidir. U fors tilidan «Chor darvesh» hikoyatini tarjima qilgan, «Nuh manzar» nomli she'riy kitob yaratgan. Uning «Shoir ahvoli va she'r mubolag'asi xususida» hamda «Sayohatnoma» asarlari ham bor. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mashhur musaddasim$$, $$«Sayding qo'yaber, sayyod» nomli mashhur musaddasimda shaxsning erkin yashash huquqini himoya qilganman, zulm va istibdodni qat'iy qoralaganman.$$, $$["sayding qo'yaber sayyod", "musaddas", "erkinlik", "zulm", "she'r"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqatning «Sayding qo'yaber, sayyod» asarida qanday g'oya ilgari surilgan?$$, $$«Sayding qo'yaber, sayyod» — Furqatning mashhur musaddasi. Unda shoir shaxsning erkin yashash huquqini himoya qiladi, zulm va istibdodni qat'iy qoralaydi. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Buyuk safarim$$, $$1891-yil iyul oyida Marv, Ashxobod, Boku va Batumi orqali Istanbulga yo'l olganman. 1892-yilda Makka, Jidda va Madinani ziyorat qilib, so'ng Bombayga — Hindistonga o'tganman, 1893-yil mart oyida esa Kashmir va Tibet orqali Sharqiy Turkistonga borganman.$$, $$["istanbul", "makka", "hindiston", "kashmir", "tibet", "safar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat 1891-yilda boshlangan safari davomida qaysi shaharlar va mamlakatlarni kezib chiqqan?$$, $$Furqat 1891-yil iyulida Marv—Ashxobod—Boku—Batumi orqali Istanbulga borgan, u yerdan Bulg'oriya va Yunonistonga ham o'tgan. 1892-yilda Makka, Jidda va Madinani ziyorat qilgan, so'ng Bombay va Hindistonda bo'lgan. 1893-yil martida esa Kashmir va Tibet orqali Sharqiy Turkistonga o'tgan. Kashmirda u «Bir qamar siymoni ko'rdim baldai Kashmirda» misrali she'rini yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$1893-yildan umrimning oxirigacha Sharqiy Turkistondagi Yorkent shahrida turg'un yashab qolganman: dorivor o'simliklar savdosi, tabiblik va xattotlik bilan shug'ullanganman. Men 1909-yilda Yorkentda vafot etganman va Dongdor qabristoniga dafn etilganman.$$, $$["yorkent", "1893", "1909", "vafot", "dongdor", "tabiblik"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Zokirjon Furqat (1859–1909)$$, TRUE,
       $$Furqat umrining so'nggi yillarini qayerda o'tkazgan va qachon vafot etgan?$$, $$Furqat 1893-yildan boshlab Sharqiy Turkistondagi Yorkent shahrida turg'un yashagan. Tabiblikdan xabardor bo'lgan shoir dorivor o'simliklar bilan savdo qiluvchi do'kon ochgan, ijodiy ish va xattotlik bilan shug'ullangan. 1905-yilda «Hind nayrangbozi Yorkendda» felyetonini yozgan. U 1909-yilda Yorkentda vafot etgan va Yorkentning Dongdor qabristoniga dafn etilgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Furqat 1889-yilda Toshkentga kelib, qaysi gazetada ishlagan?$$, $$["«Sadoyi Turkiston»", "«Turkiston viloyatining gazeti»", "«Taraqqiy»", "«Xurshid»"]$$::jsonb, 1, $$Furqat 1889-yil iyunida Toshkentga kelib, «Turkiston viloyatining gazeti»da ishlagan va unda ilm-ma'rifatni targ'ib qiluvchi maqolalarini nashr etgan.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Furqatning «Sayding qo'yaber, sayyod» asari qaysi janrda yozilgan?$$, $$["G'azal", "Ruboiy", "Doston", "Musaddas"]$$::jsonb, 3, $$«Sayding qo'yaber, sayyod» — Furqatning mashhur musaddasi bo'lib, unda shoir shaxsning erkin yashash huquqini himoya qiladi, zulm va istibdodni qat'iy qoralaydi.$$
  FROM heroes h WHERE h.slug = 'furqat';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Furqat umrining so'nggi yillarini qaysi shaharda o'tkazgan?$$, $$["Yorkent", "Qo'qon", "Toshkent", "Istanbul"]$$::jsonb, 0, $$Furqat 1893-yildan boshlab Sharqiy Turkistondagi Yorkent shahrida turg'un yashab qolgan va 1909-yilda o'sha yerda vafot etgan.$$
  FROM heroes h WHERE h.slug = 'furqat';


-- ═══════════ Abdulla Qahhor (1907–1968) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('abdulla-qahhor', $$Abdulla Qahhor$$, $$Hikoya ustasi$$, 1907, 1968,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Abdulla Qahhor (1907–1968) — O'zbekiston xalq yozuvchisi, «Sarob» romani, «O'tmishdan ertaklar» qissasi va o'nlab hikoyalar muallifi. U o'zbek nasrida hikoya janrining tan olingan ustasi hisoblanadi.$$,
 $$Assalomu alaykum, aziz farzand! Men Abdulla Qahhorman — «Sarob» romani, «O'tmishdan ertaklar» qissasi va ko'plab hikoyalar muallifiman. Mendan hikoyalarim, asarlarim va hayotim haqida so'ra!$$,
 $$✍️$$, $$["abdulla qahhor", "sarob", "o'tmishdan ertaklar", "sinchalak", "hikoya", "yozuvchi"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1907-yil 17-sentyabrda Qo'qon shahrida tug'ilganman.$$, $$["1907", "17-sentyabr", "qo'qon", "tug'ilgan"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhor qachon va qayerda tug'ilgan?$$, $$Abdulla Qahhor 1907-yil 17-sentyabrda Qo'qon shahrida dunyoga kelgan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsilim$$, $$1930-yilda O'rta Osiyo davlat universitetining pedagogika fakultetini tamomlaganman.$$, $$["universitet", "pedagogika", "1930", "o'rta osiyo"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhor qayerda ta'lim olgan?$$, $$Abdulla Qahhor 1930-yilda O'rta Osiyo davlat universitetining pedagogika fakultetini tamomlagan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk ijodim$$, $$Birinchi hajviy she'rim «Oy kuyganda» 1924-yilda «Mushtum» jurnalida «Norin shilpiq» taxallusi bilan bosilgan.$$, $$["1924", "oy kuyganda", "mushtum", "norin shilpiq", "she'r", "taxallus"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhorning birinchi she'ri qaysi jurnalda va qanday taxallus bilan bosilgan?$$, $$Abdulla Qahhorning ilk hajviy she'ri «Oy kuyganda» 1924-yilda «Mushtum» jurnalida «Norin shilpiq» taxallusi bilan chop etilgan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hikoyanavisligim$$, $$Hikoyanavis sifatida tanilishim 1929-yilda yozgan «Boshsiz odam» hikoyamdan boshlangan. Dastlabki hikoyalar to'plamim «Olam yasharadi» 1935-yilda nashr etilgan.$$, $$["boshsiz odam", "1929", "olam yasharadi", "1935", "hikoya", "to'plam"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhorning dastlabki hikoyalar to'plami qanday nomlangan va qachon nashr etilgan?$$, $$Abdulla Qahhorning hikoyanavis sifatida tanilishi «Boshsiz odam» (1929) hikoyasi bilan boshlangan. Uning dastlabki hikoyalar to'plami «Olam yasharadi» 1935-yilda nashr etilgan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Sarob» romanim$$, $$Birinchi romanim «Sarob»ni 1935-yilda yozganman. Keyinchalik «Qo'shchinor chiroqlari» romanim 1951-yilda e'lon qilingan.$$, $$["sarob", "1935", "roman", "qo'shchinor chiroqlari", "1951"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhorning «Sarob» romani qachon yozilgan?$$, $$«Sarob» — Abdulla Qahhorning 1935-yilda yozilgan romani. Yozuvchining yana bir yirik asari — «Qo'shchinor chiroqlari» romani 1951-yilda yaratilgan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qissalarim$$, $$«Sinchalak» qissamni 1958-yilda, «O'tmishdan ertaklar» qissamni 1965-yilda, «Muhabbat» qissamni esa 1968-yilda yozganman. Bu qissalarim o'zbek nasri rivojiga hissa bo'lib qo'shilgan.$$, $$["sinchalak", "1958", "o'tmishdan ertaklar", "1965", "muhabbat", "1968", "qissa"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhorning «O'tmishdan ertaklar» qissasi qachon yozilgan?$$, $$Abdulla Qahhor qalamiga mansub qissalar — «Sinchalak» (1958), «O'tmishdan ertaklar» (1965) va «Muhabbat» (1968). Bu asarlar o'zbek nasri taraqqiyotiga muhim hissa qo'shgan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Komediyalarim$$, $$Sahna uchun ham yozganman: «Shohi so'zana» (1949–1953), «Og'riq tishlar» (1954), «Tobutdan tovush» (1962) va «Ayajonlarim» (1967) komediyalarim shular jumlasidandir.$$, $$["shohi so'zana", "og'riq tishlar", "tobutdan tovush", "ayajonlarim", "komediya", "drama"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhor qanday komediyalar yozgan?$$, $$Abdulla Qahhor dramaturgiyada ham ijod qilgan: uning «Shohi so'zana» (1949–1953), «Og'riq tishlar» (1954), «Tobutdan tovush» (1962) va «Ayajonlarim» (1967) komediyalari bor. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tarjimalarim$$, $$Rus adabiyotidan tarjimalar qilganman: Pushkin, Tolstoy, Gogol va Chexov asarlarini o'zbek tiliga o'girganman.$$, $$["tarjima", "pushkin", "tolstoy", "gogol", "chexov", "rus adabiyoti"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhor qaysi yozuvchilarning asarlarini o'zbek tiliga tarjima qilgan?$$, $$Abdulla Qahhor A. S. Pushkin, L. Tolstoy, N. V. Gogol va Chexov asarlarini o'zbek tiliga mahorat bilan tarjima qilgan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$1966-yilda Hamza nomidagi Davlat mukofotiga, 1967-yilda «O'zbekiston xalq yozuvchisi» unvoniga sazovor bo'lganman. 1968-yil 25-mayda Moskva shahrida vafot etganman.$$, $$["1968", "25-may", "moskva", "vafot", "xalq yozuvchisi", "hamza mukofoti", "1966", "1967"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhor qachon va qayerda vafot etgan?$$, $$Abdulla Qahhor 1966-yilda Hamza nomidagi Davlat mukofotiga sazovor bo'lgan, 1967-yilda «O'zbekiston xalq yozuvchisi» unvoni bilan taqdirlangan. Yozuvchi 1968-yil 25-mayda Moskva shahrida vafot etgan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xotiram$$, $$Men 1968-yilda vafot etganman. 2000-yilda menga «Buyuk xizmatlari uchun» ordeni berilgan.$$, $$["2000", "buyuk xizmatlari uchun", "orden", "xotira"]$$::jsonb, $$Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968)$$, TRUE,
       $$Abdulla Qahhor vafotidan keyin qanday mukofot bilan taqdirlangan?$$, $$Abdulla Qahhor 1968-yilda vafot etgan bo'lsa-da, xizmatlari unutilmagan: 2000-yilda u «Buyuk xizmatlari uchun» ordeni bilan taqdirlangan. Manba: Ziyouz.com — «O'zbek nasri» bo'limi: Abdulla Qahhor (1907–1968).$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abdulla Qahhor qaysi shaharda tug'ilgan?$$, $$["Toshkentda", "Qo'qonda", "Samarqandda", "Buxoroda"]$$::jsonb, 1, $$Abdulla Qahhor 1907-yil 17-sentyabrda Qo'qon shahrida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abdulla Qahhorning 1935-yilda yozilgan romani qaysi?$$, $$["«Qo'shchinor chiroqlari»", "«Sarob»", "«Sinchalak»", "«O'tmishdan ertaklar»"]$$::jsonb, 1, $$«Sarob» romani 1935-yilda yozilgan. «Qo'shchinor chiroqlari» romani 1951-yilda yaratilgan, «Sinchalak» (1958) va «O'tmishdan ertaklar» (1965) esa qissalardir.$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abdulla Qahhor qaysi yozuvchilarning asarlarini o'zbek tiliga tarjima qilgan?$$, $$["Pushkin, Tolstoy, Gogol va Chexov", "Shekspir va Dante", "Servantes va Molyer", "Bayron va Gyote"]$$::jsonb, 0, $$Abdulla Qahhor A. S. Pushkin, L. Tolstoy, N. V. Gogol va Chexov asarlarini o'zbek tiliga mahorat bilan tarjima qilgan.$$
  FROM heroes h WHERE h.slug = 'abdulla-qahhor';
