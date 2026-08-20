-- Yangi ajdodlar (3-to'lqin): motuidiylik asoschisidan XX asr yozuvchilarigacha.
--
-- Har paket ikki bosqichdan o'tdi: tadqiqotchi agent ziyouz.com maqolasidan
-- faktlarni yig'di, adversarial tekshiruvchi o'sha maqolani qayta o'qib har
-- raqamni solishtirdi, yakuniy kritik esa butun to'plamni tekshirdi.
-- Kalit so'zlar darhol dvigatel konvensiyasida (o'zak holida) yozilgan.
-- Vikipediya ishlatilmadi. METODIST TEKSHIRUVI SHART.


-- ═══════════ Abu Mansur al-Moturidiy (870–946) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('abu-mansur-moturidiy', $$Abu Mansur al-Moturidiy$$, $$Samarqandlik buyuk alloma$$, 870, 946,
 (SELECT id FROM eras WHERE code = 'arab'),
 $$Abu Mansur al-Moturidiy (870–946) — Samarqandda yashab ijod etgan buyuk alloma. U podshoh Nasr saroyida ilohiy bilimlar bilan shug'ullangan, Samarqanddagi katta Jome' masjidida imom-xatib bo'lgan va «Kitob at-tavhid» kabi asarlar yozgan. Alloma Samarqanddagi Chokardiza qabristoniga dafn etilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Abu Mansur al-Moturidiyman — Samarqandda yashab o'tgan allomaman. Mendan hayotim, asarlarim va faoliyatim haqida so'ra!$$,
 $$📿$$, $$["moturid", "samarqand", "alloma", "tavhid", "imom"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 870-yilda tavallud topganman. To'liq ismim Abu Mansur Muhammad ibn Mahmud al-Hanafiy al-Moturidiy as-Samarqandiydir. Nomimdagi «al-Moturidiy» men yashagan Moturid qishlog'i nomi bilan bog'liq.$$, $$["tugil", "tavallud", "moturid", "qishloq", "870", "ism"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Abu Mansur al-Moturidiy$$, TRUE,
       $$Abu Mansur al-Moturidiy qachon tavallud topgan?$$, $$Alloma 870-yilda tavallud topgan. Uning to'liq ismi Abu Mansur Muhammad ibn Mahmud al-Hanafiy al-Moturidiy as-Samarqandiy bo'lib, «al-Moturidiy» nisbasi u yashagan Moturid qishlog'i nomi bilan bog'liq. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'abu-mansur-moturidiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Kitob at-tavhid» asarim$$, $$Men «Kitob at-tavhid» nomli asar yozganman. Bu kitobim tavhid, ya'ni Allohning yagonaligi haqidagi ilmga bag'ishlangan.$$, $$["asar", "kitob", "yoz", "tavhid"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Abu Mansur al-Moturidiy$$, TRUE,
       $$Moturidiyning tavhid ilmiga bag'ishlangan mashhur asari qanday nomlanadi?$$, $$«Kitob at-tavhid» Moturidiyning mashhur asarlaridan biri bo'lib, Ziyouz maqolasida uning asarlari ro'yxatida keltiriladi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'abu-mansur-moturidiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Boshqa asarlarim$$, $$Men bir qancha asarlar yaratganman. Ular orasida «Kitob al-usul», «Shariat asoslari sarasi», «Dialektika haqida kitob» va «Pandnoma» ham bor.$$, $$["asar", "kitob", "yoz", "usul", "pandnoma", "dialektika", "shariat"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Abu Mansur al-Moturidiy$$, TRUE,
       $$Moturidiy «Kitob at-tavhid»dan tashqari yana qanday asarlar yozgan?$$, $$Ziyouz maqolasida allomaning «Kitob al-usul», «Kitob tavhid», «Shariat asoslari sarasi», «Dialektika haqida kitob» va «Pandnoma» asarlari sanaladi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'abu-mansur-moturidiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Saroy va qishloq$$, $$Avvallari Samarqandda podshoh Nasr saroyida ilohiy bilimlar bilan shug'ullanganman. Ismoil Somoniy Samarqandni bosib olgach, saroydan ketib, Moturid qishlog'ida yashaganman; u meni saroyga taklif qilganida rad etganman.$$, $$["saroy", "nasr", "somoniy", "qishloq", "moturid"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Abu Mansur al-Moturidiy$$, TRUE,
       $$Nima sababdan Moturidiy saroyni tark etib, Moturid qishlog'ida yashagan?$$, $$Ziyouz maqolasiga ko'ra, Samarqand Ismoil Somoniy tomonidan bosib olingach, alloma podshoh Nasr saroyini tark etib Moturid qishlog'ida yashagan. Ismoil Somoniyning saroyga taklifini u rad etgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'abu-mansur-moturidiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Imom-xatiblik faoliyatim$$, $$Samarqanddagi katta Jome' masjidida imom-xatib bo'lganman va o'z bog'imda mehnat qilganman. Juda ko'p shogirdlar yetishtirganman.$$, $$["imom", "xatib", "masjid", "shogird", "jome", "bog"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Abu Mansur al-Moturidiy$$, TRUE,
       $$Moturidiy Samarqandda qanday vazifada xizmat qilgan va yana nima bilan shug'ullangan?$$, $$Alloma Samarqanddagi katta Jome' masjidida imom-xatiblik qilgan va o'z bog'ida ishlagan. U juda ko'p shogirdlar yetishtirgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'abu-mansur-moturidiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 946-yilda, hijriy hisobda 335-yilda vafot etganman. Meni Samarqanddagi Chokardiza qabristoniga dafn etishgan.$$, $$["vafot", "qabr", "dafn", "chokardiza", "chokar", "946"]$$::jsonb, $$Ziyouz.com — «Qomusiy olimlar, sarkardalar» bo'limi: Abu Mansur al-Moturidiy$$, TRUE,
       $$Moturidiy qachon vafot etgan va qayerga dafn etilgan?$$, $$Ziyouz maqolasiga ko'ra alloma 946-yilda (hijriy 335-yil) vafot etgan. Qabri Samarqanddagi Chokardiza qabristonida joylashgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'abu-mansur-moturidiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Abu Mansur al-Moturidiy qaysi yilda tavallud topgan?$$, $$["870", "946", "810", "900"]$$::jsonb, 0, $$Ziyouz maqolasiga ko'ra, alloma 870-yilda tavallud topgan; u 946-yilda vafot etgan.$$
  FROM heroes h WHERE h.slug = 'abu-mansur-moturidiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Al-Moturidiy Samarqanddagi qaysi qabristonga dafn etilgan?$$, $$["Shohizinda", "Chokardiza", "Chorbakr", "Shayx Zayniddin"]$$::jsonb, 1, $$Manbaga ko'ra, alloma vafotidan so'ng Samarqanddagi Chokardiza qabristoniga dafn etilgan.$$
  FROM heroes h WHERE h.slug = 'abu-mansur-moturidiy';


-- ═══════════ Ahmad Yassaviy (1093–1166) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('ahmad-yassaviy', $$Ahmad Yassaviy$$, $$Mutasavvif shoir, murshid$$, 1093, 1166,
 NULL,
 $$Ahmad Yassaviy — «Sulton ul-orifin» nomi bilan ulug'langan mutasavvif shoir va yangi tariqatga asos solgan murshid. Uning hikmatlari murid va izdoshlari tomonidan «Devoni hikmat» nomi bilan tartib berilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Ahmad Yassaviyman — hikmatlar aytgan mutasavvif shoirman. Mendan hikmatlarim, ustozlarim va tariqatim haqida so'ra!$$,
 $$📿$$, $$["yassaviy", "hikmat", "tasavvuf", "tariqat", "devon", "yassi"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men Yassi yaqinidagi Sayram shahrida tavallud topganman. Otam — Shayx Ibrohim, onam — Muso shayxning qizi Oysha xotun edilar.$$, $$["tugil", "tavallud", "sayram", "yassi", "ota", "ona"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ahmad Yassaviy$$, TRUE,
       $$Ahmad Yassaviy qayerda tug'ilgan va uning ota-onasi kim bo'lgan?$$, $$Ahmad Yassaviy Yassi yaqinidagi Sayram shahrida, taxminan XI asrning ikkinchi yarmida tavallud topgan. Otasi Shayx Ibrohim javonmardlik tariqatiga mansub nufuzli zotlardan bo'lgan, onasi Oysha xotun Muso shayxning qizi edi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Bolaligim va opam$$, $$Onam men tug'ilgach ko'p o'tmay vafot etgan, yetti yoshimda otamdan ham judo bo'lganman. Tarbiyam bilan opam Gavhar Shahnoz shug'ullangan va u bilan birga Yassi shahriga ko'chib borganman.$$, $$["bolalik", "opa", "gavhar", "yetim", "yassi"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ahmad Yassaviy$$, TRUE,
       $$Ahmad Yassaviyning tarbiyasi bilan kim shug'ullangan?$$, $$Onasi Oysha xotun erta vafot etgan, yetti yoshida otasidan ham ajralgan. Yosh Ahmadning tarbiyasi bilan opasi Gavhar Shahnoz shug'ullangan va ular birga Yassi shahriga ko'chib borishgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ustozlarim$$, $$Yetti yoshimda Yassida ilk ustozim Arslon bob bilan uchrashib, undan ta'lim olganman. Keyin ilm markazi bo'lgan Buxoroga borib, Shayx Yusuf Hamadoniyga murid tushganman.$$, $$["ustoz", "arslon", "hamadon", "buxor", "murid", "talim"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ahmad Yassaviy$$, TRUE,
       $$Ahmad Yassaviyning ustozlari kimlar bo'lgan?$$, $$Ilk ustozi Arslon bob bo'lgan — Yassaviy u bilan yetti yoshida uchrashib, undan tahsil olgan. Keyinchalik Buxoroga borib, Shayx Yusuf Hamadoniyga murid tushgan; u yerda Xoja Abduxoliq G'ijduvoniy, Abdulloh Barqiy va Xoja Hasan Andoqiy bilan birga tahsil olgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tariqatim$$, $$Buxorodan Yassiga qaytib kelib, yangi bir tariqatga asos solgan murshid sifatida shuhrat topganman. Maqsadim turkiy xalqlarni islomga yanada kengroq jalb qilish edi.$$, $$["tariqat", "yassaviya", "murshid", "tasavvuf", "islom"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ahmad Yassaviy$$, TRUE,
       $$Ahmad Yassaviy Yassiga qaytgach nima sifatida shuhrat topgan?$$, $$Yassaviy Buxorodan Yassiga qaytib kelib, yangi bir tariqatga asos solgan murshid sifatida shuhrat topgan. U turkiy xalqlarni islomga yanada kengroq jalb qilishga intilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Devoni hikmat» asarim$$, $$Men she'rlarimda ilohiy ishq va oshiqlik, ma'rifat hamda oriflik saodatini kuylaganman. Hikmatlarimni muridlarim va izdoshlarim to'plab, «Devoni hikmat» devonini tartib berganlar.$$, $$["asar", "kitob", "yoz", "hikmat", "devon", "sher"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ahmad Yassaviy$$, TRUE,
       $$«Devoni hikmat» asari qanday yuzaga kelgan?$$, $$Yassaviyning o'zi «Devoni hikmat» nomi bilan biron bir kitob yaratmagan — bu nodir asarni uning murid va izdoshlari tartib bergan. Devonda ilohiy ishq va oshiqlik, ma'rifat va oriflik saodati samimiy va ta'sirli ohanglarda yoritilgan; unga izdoshlarining ijod namunalari ham kiritilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riyatim va maqsadim$$, $$Turkiy xalqlarni islomga yanada kengroq jalb qilish va tasavvuf g'oyalarini omma ko'ngliga chuqur singdirish maqsadida she'riyatdan foydalanganman. Hikmatlarimni oddiy xalqqa tushunarli tilda aytganman.$$, $$["turkiy", "tasavvuf", "xalq", "islom", "sheriyat", "sher", "marif"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ahmad Yassaviy$$, TRUE,
       $$Ahmad Yassaviy she'riyatdan qanday maqsadda foydalangan?$$, $$Manbada qayd etilishicha, Yassaviy turkiy xalqlarni islomga yanada kengroq jalb qilish va tasavvuf g'oyalarini omma ko'ngliga chuqur singdirish maqsadida she'riyatdan ham foydalangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yer osti hujram$$, $$Oltmish uch yoshga yetganimda yer osti hujrasiga kirganman va umrimni riyozat hamda ibodatga bag'ishlaganman. Bu haqda hikmatimda «Oltmish uchda yer ostiga kirdim mano» deganman.$$, $$["chilla", "hujra", "oltmish", "riyozat", "xilvat"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ahmad Yassaviy$$, TRUE,
       $$Ahmad Yassaviy necha yoshida yer osti hujrasiga kirgan?$$, $$Yassaviy 63 yoshida yer osti hujrasiga (xilvatga) kirib, qattiq riyozat va ibodat bilan mashg'ul bo'lgan. Buni o'z hikmatida «Oltmish uchda yer ostiga kirdim mano» deya bitgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1166-yilda vafot etganman. Jasadim voyaga yetgan shahrim — ko'hna Yassiga dafn etilgan.$$, $$["vafot", "dafn", "yassi", "qabr", "oxir"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ahmad Yassaviy$$, TRUE,
       $$Ahmad Yassaviy qachon vafot etgan va qayerga dafn etilgan?$$, $$Ko'pchilik tadqiqotchilar Yassaviyning vafot tarixini 1166–67-yillar deb qayd etishgan. U «Sulton ul-orifin» kamolotiga guvoh bo'lgan ko'hna Yassi shahriga dafn etilgan; bugungi kunda u yerda Yassaviy nomidagi universitet mavjud. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ahmad Yassaviy qaysi shaharda tavallud topgan?$$, $$["Buxoro", "Samarqand", "Sayram", "Toshkent"]$$::jsonb, 2, $$Ahmad Yassaviy Yassi yaqinidagi Sayram shahrida tavallud topgan, keyinchalik opasi bilan Yassi shahriga ko'chib borgan.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ahmad Yassaviyning hikmatlari jamlangan asar qanday nomlanadi?$$, $$["«Xamsa»", "«Devoni hikmat»", "«Boburnoma»", "«Qutadg'u bilig»"]$$::jsonb, 1, $$Yassaviyning hikmatlari murid va izdoshlari tomonidan to'planib, «Devoni hikmat» nomi bilan tartib berilgan.$$
  FROM heroes h WHERE h.slug = 'ahmad-yassaviy';


-- ═══════════ Pahlavon Mahmud (1247–1326) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('pahlavon-mahmud', $$Pahlavon Mahmud$$, $$Shoir, faylasuf va pahlavon$$, 1247, 1326,
 NULL,
 $$Pahlavon Mahmud (1247–1326) — falsafiy ruboiylari bilan «Xorazm Xayyomi» nomini olgan shoir, yengilmas kurash pahlavoni va po'stindo'z hunarmand. U Xivadagi futuvvatchilar jamoasining boshlig'i, javonmardlar peshvosi bo'lgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Pahlavon Mahmudman — falsafiy ruboiylarim uchun «Xorazm Xayyomi» deb atalgan shoir, yengilmas pahlavon va po'stindo'z hunarmandman. Mendan ruboiylarim, kurash g'alabalarim va javonmardlik haqida so'ra!$$,
 $$🤼$$, $$["ruboi", "kurash", "pahlavon", "xiva", "shoir", "postin"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1247-yilda tavallud topganman. Butun umrim qadimiy Xiva shahri bilan bog'liq — shu yerda hunar qilganman, ijod etganman va javonmardlarga boshchilik qilganman.$$, $$["tugil", "tavallud", "qachon", "1247"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Pahlavon Mahmud$$, TRUE,
       $$Pahlavon Mahmud qaysi yilda tug'ilgan?$$, $$Pahlavon Mahmud 1247-yilda tug'ilgan. Uning hayoti va faoliyati Xiva shahri bilan bog'liq bo'lib, u yerda hunarmandlik va ijod bilan shug'ullangan, futuvvatchilar jamoasiga boshchilik qilgan. Manba: Ziyouz.com, «Pahlavon Mahmud (1247–1326)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xorazm Xayyomi$$, $$Mazmunan boy va teran, shaklan pishiq va go'zal falsafiy ruboiylar bitganman. Shu ruboiylarim tufayli meni «Xorazm Xayyomi» deb atashgan.$$, $$["ruboi", "xayyom", "sher", "asar", "yoz", "nom"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Pahlavon Mahmud$$, TRUE,
       $$Pahlavon Mahmud falsafiy ruboiylari tufayli qanday nom bilan shuhrat qozongan?$$, $$Mazmunan boy va teran, shaklan pishiq falsafiy ruboiylari tufayli Pahlavon Mahmud «Xorazm Xayyomi» nomi bilan shuhrat qozongan. Olim N. Komilov uning ruboiylarini to'rt guruhga ajratgan: zamona ahlidan nolish, tariqat suluki, vahdati vujud falsafasi va ilohiy ishq mavzulari. Manba: Ziyouz.com, «Pahlavon Mahmud (1247–1326)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kurash maydonida$$, $$Eron, Hindiston va boshqa Sharq mamlakatlarida kurash musobaqalarida qatnashib, har safar g'alaba qozonganman. Bir umr kuragim yerga tegmagan — mamlakatning birinchi polvoni, pahlavonlar peshvosi bo'lganman.$$, $$["kurash", "polvon", "eron", "hindiston", "galaba"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Pahlavon Mahmud$$, TRUE,
       $$Pahlavon Mahmud qaysi mamlakatlarda kurash musobaqalarida qatnashib, doim g'olib chiqqan?$$, $$Pahlavon Mahmud Eron, Hindiston va boshqa Sharq mamlakatlarida kurash musobaqalarida ishtirok etib, har doim g'alaba qozongan. Bir umr kuragi yerga tegmagan — u mamlakatning birinchi polvoni va pahlavonlar peshvosi hisoblangan. Manba: Ziyouz.com, «Pahlavon Mahmud (1247–1326)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Po'stindo'z hunarim$$, $$Men po'stindo'zlik hunari bilan shug'ullanganman, o'z do'konimda mehnat qilganman. Bu do'kon menga shu qadar aziz ediki, vasiyatimda meni uning yoniga dafn etishlarini so'raganman.$$, $$["postin", "hunar", "dokon", "kasb"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Pahlavon Mahmud$$, TRUE,
       $$Pahlavon Mahmud qanday hunar bilan shug'ullangan?$$, $$Pahlavon Mahmud po'stindo'zlik hunari bilan shug'ullangan. Vasiyatiga ko'ra shogirdlari uni o'zining po'stindo'zlik do'koni atrofiga dafn etganlar. Manba: Ziyouz.com, «Pahlavon Mahmud (1247–1326)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarlarim$$, $$Ko'plab ruboiylar bitganman, din nazariyasi, falsafa va mantiqqa doir risolalar yozganman. Manbalarda mening «Kanz ul-haqoyiq», ya'ni «Haqiqatlar xazinasi» nomli masnaviym borligi ham aytiladi.$$, $$["asar", "kitob", "yoz", "kanz", "masnaviy", "risola"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Pahlavon Mahmud$$, TRUE,
       $$Pahlavon Mahmudning qaysi masnaviysi ko'pgina manbalarda tilga olinadi?$$, $$Ko'pgina manbalarda Pahlavon Mahmudning «Kanz ul-haqoyiq» («Haqiqatlar xazinasi») nomli masnaviysi borligi aytiladi; 1967-yilda eronlik olim Said Muhammad Ali Safir bu asarni Mahmud Shabustariyga nisbat berib nashr ettirgan. Pahlavon Mahmud din nazariyasi, falsafa va mantiqqa doir bir necha risolalar ham yozgan, ammo bu risolalar hozirgacha topilmagan. Manba: Ziyouz.com, «Pahlavon Mahmud (1247–1326)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Javonmardlar peshvosi$$, $$Men Xivadagi futuvvatchilar jamoasining boshlig'i, javonmardlar peshvosi bo'lganman. Ruboiylarimda javonmardlikka doir qoidalarni bayon etganman — maqsadimiz yovuzlikka qarshi turib, hamma yerda ezgulikni himoya qilish edi.$$, $$["futuvvat", "javonmard", "ezgulik", "mard", "pir", "saxovat"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Pahlavon Mahmud$$, TRUE,
       $$Pahlavon Mahmud Xivada qanday jamoaga boshchilik qilgan?$$, $$Pahlavon Mahmud Xivadagi futuvvatchilar jamoasining boshlig'i, javonmardlar peshvosi bo'lgan. Javonmardlarning shiori dunyodagi yovuzlikning barcha ko'rinishlariga qarshi hamisha, hamma yerda ezgulikni himoya qilish, targ'ib etish va qo'llab-quvvatlash bo'lgan; u mardlik va saxovatning eng oliy namunalarini ko'rsatib, boshqalarga ibrat bo'lgan. Manba: Ziyouz.com, «Pahlavon Mahmud (1247–1326)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1326-yilda vafot etganman. Vasiyatimga ko'ra shogirdlarim meni o'z po'stindo'zlik do'konim atrofiga dafn etganlar.$$, $$["vafot", "dafn", "maqbara", "1326", "olam"]$$::jsonb, $$Ziyouz.com — «Fors-tojik she'riyati» bo'limi: Pahlavon Mahmud$$, TRUE,
       $$Pahlavon Mahmud qaysi yilda vafot etgan va qayerga dafn etilgan?$$, $$Pahlavon Mahmud 1326-yilda vafot etgan. Vasiyatiga ko'ra shogirdlari uni o'zining po'stindo'zlik do'koni atrofiga dafn etganlar; keyinchalik qabri ustiga maqbara tiklangan, uning poyiga Qo'ng'irot urug'idan bo'lgan Xiva xonlari ko'milgan. Maqbara devorlariga shoir ruboiylari darj etilgan bo'lib, uni dunyoning turli burchaklaridan kelgan ziyoratchilar ziyorat qiladilar. Manba: Ziyouz.com, «Pahlavon Mahmud (1247–1326)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Pahlavon Mahmud falsafiy ruboiylari tufayli qanday nom bilan shuhrat qozongan?$$, $$["Xorazm Xayyomi", "Sharq Firdavsiysi", "Xiva Sa'diysi", "Buxoro Bedili"]$$::jsonb, 0, $$Mazmunan boy va teran, shaklan pishiq falsafiy ruboiylari tufayli Pahlavon Mahmud «Xorazm Xayyomi» nomi bilan shuhrat qozongan.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Pahlavon Mahmud qanday hunar bilan shug'ullangan?$$, $$["Kulolchilik", "Zargarlik", "Po'stindo'zlik", "Temirchilik"]$$::jsonb, 2, $$Pahlavon Mahmud po'stindo'zlik hunari bilan shug'ullangan; vasiyatiga ko'ra shogirdlari uni o'z po'stindo'zlik do'koni atrofiga dafn etganlar.$$
  FROM heroes h WHERE h.slug = 'pahlavon-mahmud';


-- ═══════════ Xoja Ahror Valiy (1404–1490) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('xoja-ahror-valiy', $$Xoja Ahror Valiy$$, $$Naqshbandiya tariqati murshidi$$, 1404, 1490,
 (SELECT id FROM eras WHERE code = 'temuriylar'),
 $$Xoja Ahror Valiy (1404–1490) — naqshbandiya tariqatining yirik murshidi. Shosh (hozirgi Toshkent) yaqinidagi Bog'iston qishlog'ida tug'ilgan, Samarqandda faoliyat yuritib, 20 dan ortiq madrasa va xonaqoh qurdirgan hamda boyligini xalq manfaati yo'lida sarflagan.$$,
 $$Assalomu alaykum, aziz farzand! Men Xoja Ahror Valiyman. Mendan naqshbandiya tariqati, madrasalarim va xayr-saxovat ishlarim haqida so'ra!$$,
 $$📿$$, $$["ahror", "xoja", "naqshband", "madras", "vaqf", "samarq"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1404-yilda Shosh, ya'ni hozirgi Toshkent yaqinidagi Bog'iston qishlog'ida tug'ilganman. Bobokalonim Xoja Muhammad Nomiy Bag'doddan kelib, Shoshda o'rnashib qolgan ekan.$$, $$["tugil", "tavallud", "bogis", "shosh", "toshk", "1404"]$$::jsonb, $$Ziyouz.com — «Qiziqarli ma'lumotlar» bo'limi: Yetti xazina (Xoja Ahror Valiy haqida)$$, TRUE,
       $$Xoja Ahror Valiy qachon va qayerda tug'ilgan?$$, $$Xoja Ahror Valiy 1404-yilda (hijriy 806-yil) Shosh — hozirgi Toshkent yaqinidagi Bog'iston qishlog'ida tavallud topgan. Uning bobokaloni Xoja Muhammad Nomiy asli Bag'doddan bo'lib, olim Qaffol Shoshiy tufayli Shoshga kelib o'rnashgan. Manba: UzA (uza.uz), «Xoja Ahror Valiy Chag'oniyonda» maqolasi.$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ismim va unvonim$$, $$Asl ismim Nosiriddin Ubaydulloh ibn Mahmud Shoshiydir. El meni hurmat bilan «Xoja Ahrori Valiy» deb atagan.$$, $$["ism", "nom", "ubayd", "nosir", "ahror", "unvon"]$$::jsonb, $$Ziyouz.com — «Qiziqarli ma'lumotlar» bo'limi: Yetti xazina (Xoja Ahror Valiy haqida)$$, TRUE,
       $$Xoja Ahror Valiyning asl ismi nima bo'lgan?$$, $$Xoja Ahror Valiyning asl ismi Nosiriddin Ubaydulloh ibn Mahmud Shoshiy bo'lgan. U jamiyatning ko'p qatlamlari orasida shuhrat qozonib, «Xoja Ahrori Valiy» unvoni bilan mashhur bo'lgan. Manba: Ziyouz.com, tasavvufga oid manbalar.$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilm yo'lim$$, $$Dastlab Toshkentda o'qidim, so'ng Samarqand madrasalarida tahsil oldim. 1428-yilda Hirotga borib, ulug' shayxlar suhbatida bo'ldim, keyin Yoqub Charxiy huzurida naqshbandiya tariqati asoslarini o'rgandim.$$, $$["ilm", "ustoz", "tahsil", "hirot", "charxiy", "madras"]$$::jsonb, $$Ziyouz.com — «Qiziqarli ma'lumotlar» bo'limi: Yetti xazina (Xoja Ahror Valiy haqida)$$, TRUE,
       $$Xoja Ahror Valiy qayerlarda tahsil olgan va ustozi kim bo'lgan?$$, $$Xoja Ahror dastlab Toshkentda, so'ng Samarqand madrasalarida o'qigan. 1428-yilda Hirotga borib, Bahouddin Umar va Zayniddin Xavofiy kabi shayxlar suhbatida bo'lgan, keyin Chag'oniyonda yashagan Yoqub Charxiydan naqshbandiya tariqati asoslarini o'rgangan. Manba: UzA (uza.uz), «Xoja Ahror Valiy Chag'oniyonda» maqolasi.$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Naqshbandiya tariqati$$, $$XV asrda Movarounnahrda naqshbandiya tariqatini yuksak darajaga ko'targanman. 1451-yilda Samarqandga ko'chib borib, umrimning oxirigacha shu yerda faoliyat yuritdim.$$, $$["naqshband", "tariqat", "murshid", "shayx", "samarq", "movaroun"]$$::jsonb, $$Ziyouz.com — «Qiziqarli ma'lumotlar» bo'limi: Yetti xazina (Xoja Ahror Valiy haqida)$$, TRUE,
       $$Xoja Ahror Valiy qaysi tariqatga rahnamolik qilgan va qaysi shaharda faoliyat yuritgan?$$, $$Xoja Ahror Valiy XV asrda Movarounnahrda naqshbandiya tariqatini yuksak darajaga ko'targan murshid hisoblanadi. U 1451-yilda Samarqandga ko'chib o'tib, shu yerda tariqatga rahnamolik qilgan. Manba: UzA (uza.uz), «Xoja Ahror Valiy Chag'oniyonda» maqolasi.$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Madrasalarim va vaqflarim$$, $$Samarqandda madrasa qurdirib, 1470-yil 25-yanvarda unga katta vaqf mulklari ajratganman. Umrim davomida 20 dan ortiq madrasa va xonaqoh bino qildirdim, vaqfnoma daftarimda 254 ta mol-mulk qayd etilgan.$$, $$["madras", "xonaqoh", "vaqf", "qurdir", "1470", "samarq"]$$::jsonb, $$Ziyouz.com — «Qiziqarli ma'lumotlar» bo'limi: Yetti xazina (Xoja Ahror Valiy haqida)$$, TRUE,
       $$Xoja Ahror Valiy qancha madrasa va xonaqoh qurdirgan?$$, $$Xoja Ahror Valiy Samarqandda madrasa qurdirgan va 1470-yil 25-yanvarda (hijriy 874-yil rajab oyida) unga katta vaqf mulklari ajratgan. U jami 20 dan ortiq madrasa va xonaqoh qurdirgan, vaqfnoma daftarida 254 ta mol-mulk qayd etilgan. Manba: Ziyouz.com, «Qiziqarli ma'lumotlar» bo'limi; B. Valixo'jayev, «Buyuk ma'naviy murshid — Xoja Ahror Valiy».$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xayr-saxovatim$$, $$Ko'p yerlarga ega bo'lsam-da, o'zimni faqir hisoblardim, chunki barcha boyligimni xalq manfaati yo'lida sarflaganman. Shahar aholisining soliq masalasini hal qilish uchun 250 ming dinor to'laganman, toshkentliklarga 70 ming dinor tuhfa qilganman.$$, $$["xayr", "saxovat", "dinor", "soliq", "boylik", "faqir"]$$::jsonb, $$Ziyouz.com — «Qiziqarli ma'lumotlar» bo'limi: Yetti xazina (Xoja Ahror Valiy haqida)$$, TRUE,
       $$Xoja Ahror Valiy xalq uchun qanday xayriya ishlarini qilgan?$$, $$Xoja Ahror Valiy ko'p yerlarga ega bo'lsa-da, o'zini faqir hisoblagan, chunki boyligini boshqalarning manfaati yo'lida sarflagan. U shahar aholisining soliq masalasini hal qilish uchun 250 ming dinor to'lagan, toshkentliklarga 70 ming dinor tuhfa qilgan. Manba: Ziyouz.com, «Qiziqarli ma'lumotlar» bo'limi.$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asarim$$, $$Tasavvufga oid «Risolai volidiyya» nomli asar yozganman.$$, $$["asar", "kitob", "yoz", "risola", "volid"]$$::jsonb, $$Ziyouz.com — «Qiziqarli ma'lumotlar» bo'limi: Yetti xazina (Xoja Ahror Valiy haqida)$$, TRUE,
       $$Xoja Ahror Valiy qanday asar yozgan?$$, $$Xoja Ahror Valiy qalamiga mansub «Risolai volidiyya» asari tasavvufga oid muhim manba hisoblanadi. Bu risola Ziyouz.com kutubxonasida alohida kitob sifatida e'lon qilingan. Manba: Ziyouz.com kutubxonasi, «Xoja Ahror Valiy. Risolai volidiyya».$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1490-yilda vafot etganman. Umrimning so'nggi yillarini Samarqandda o'tkazganman.$$, $$["vafot", "umr", "oxir", "1490", "olam"]$$::jsonb, $$Ziyouz.com — «Qiziqarli ma'lumotlar» bo'limi: Yetti xazina (Xoja Ahror Valiy haqida)$$, TRUE,
       $$Xoja Ahror Valiy qachon vafot etgan?$$, $$Xoja Ahror Valiy hijriy 895, ya'ni milodiy 1490-yilda vafot etgan. U umrining so'nggi davrini Samarqandda o'tkazgan. Manba: Ziyouz.com kutubxonasi, B. Valixo'jayev, «Buyuk ma'naviy murshid — Xoja Ahror Valiy».$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Xoja Ahror Valiy qachon va qayerda tug'ilgan?$$, $$["1441-yilda Hirotda", "1404-yilda Buxoroda", "1404-yilda Shosh yaqinidagi Bog'iston qishlog'ida", "1390-yilda Samarqandda"]$$::jsonb, 2, $$Xoja Ahror Valiy 1404-yilda Shosh — hozirgi Toshkent yaqinidagi Bog'iston qishlog'ida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Xoja Ahror Valiy qancha madrasa va xonaqoh qurdirgan?$$, $$["5 ta", "10 ta", "Faqat bitta madrasa", "20 dan ortiq"]$$::jsonb, 3, $$Xoja Ahror Valiy 20 dan ortiq madrasa va xonaqoh qurdirgan, vaqfnoma daftarida esa 254 ta mol-mulk qayd etilgan.$$
  FROM heroes h WHERE h.slug = 'xoja-ahror-valiy';


-- ═══════════ So'fi Olloyor (1644–1724) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('sofi-olloyor', $$So'fi Olloyor$$, $$Mutasavvif shoir$$, 1644, 1724,
 (SELECT id FROM eras WHERE code = 'xonliklar'),
 $$So'fi Olloyor — mutasavvif shoir, «Sabot ul-ojizin» va «Maslak ul-muttaqin» asarlarining muallifi. U Kattaqo'rg'on bekligining Minglar qishlog'ida tug'ilib, Buxoroda ta'lim olgan va tasavvuf yo'lida valiulloh darajasiga yetishgan.$$,
 $$Assalomu alaykum, aziz farzand! Men So'fi Olloyorman — «Sabot ul-ojizin» kitobini yozgan mutasavvif shoirman. Mendan hayotim, asarlarim va tasavvuf yo'lim haqida so'ra!$$,
 $$📿$$, $$["olloyor", "sofi", "sabot", "tasavvuf", "shoir", "maslak"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1644-yilda Kattaqo'rg'on bekligiga qarashli Minglar qishlog'ida tavallud topganman.$$, $$["tugil", "tavallud", "1644", "kattaqorgon", "kattaq", "mingla"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: So'fi Olloyor$$, TRUE,
       $$So'fi Olloyor qachon va qayerda tug'ilgan?$$, $$So'fi Olloyor 1644-yilda Kattaqo'rg'on bekligining Minglar qishlog'ida dunyoga kelgan. U dastlabki ta'limni shayxlar maktabida olgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'lim olishim$$, $$Men shayxlar maktabida va Buxorodagi jo'ybor shayxlari dargohida ta'lim olganman. Arab va fors tillarini puxta o'rganganman.$$, $$["talim", "buxor", "joybor", "maktab", "arab", "fors"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: So'fi Olloyor$$, TRUE,
       $$So'fi Olloyor qayerda ta'lim olgan?$$, $$U shayxlar maktabida va Buxorodagi jo'ybor shayxlari dargohida o'qigan. Shu davrda arab hamda fors tillarini o'rgangan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Boj mahkamasida xizmatim$$, $$Buxoro xoni Abdulazizxon meni boj mahkamasiga to'ra etib tayinlagan. Ammo men bu lavozimdan tezda iste'fo berganman.$$, $$["boj", "mahkam", "abdulaziz", "xon", "tora", "istefo"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: So'fi Olloyor$$, TRUE,
       $$So'fi Olloyorni boj mahkamasiga to'ra etib kim tayinlagan?$$, $$Buxoro xoni Abdulazizxon uni boj mahkamasiga to'ra etib tayinlagan. Biroq u bu rasmiy lavozimdan tez orada iste'fo berib, tasavvuf yo'lini tanlagan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tasavvuf yo'lim$$, $$Mansabni tark etib, o'z davrining mashhur shayxi Navro'zga shogird tushganman. Tasavvuf yo'lida kamolotga intilib, valiulloh bo'lib yetishganman.$$, $$["tasavvuf", "shayx", "navroz", "shogird", "valiul", "sofi"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: So'fi Olloyor$$, TRUE,
       $$So'fi Olloyor mansabni tark etib, kimga shogird tushgan?$$, $$U boj mahkamasidagi lavozimidan iste'fo berib, o'z davrining mashhur shayxi Navro'zga shogird tushgan. Tariqat talablarini bajarib shayxlik martabasiga ko'tarilgan va valiulloh bo'lib yetishgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Sabot ul-ojizin» asarim$$, $$Do'stu yaqinlarim iltimosiga ko'ra turkiy tilda «Sabot ul-ojizin», ya'ni «Ojizlar saboti» kitobini yozganman. Uni «Maslak ul-muttaqin» asarimni birmuncha qisqartirib, o'zbek tilida nazmda bitganman.$$, $$["asar", "kitob", "yoz", "sabot", "ojizin", "turkiy"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: So'fi Olloyor$$, TRUE,
       $$So'fi Olloyor turkiy tilda qaysi mashhur asarini yozgan?$$, $$«Sabot ul-ojizin» (Ojizlar saboti) do'stu yaqinlari iltimosiga ko'ra «Maslak ul-muttaqin»ni birmuncha qisqartirib, o'zbek tilida nazmda bitilgan asardir. Axloqiy-ta'limiy ahamiyati tufayli u maktab va madrasalarda asosiy darsliklar qatorida o'qitilib kelgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Forsiy asarlarim$$, $$Fors tilida «Maslak ul-muttaqin» (Taqvodorlar maslagi) kitobini yozganman — u 12 ming bayt va 135 bobdan iborat. Yana «Murod ul-orifin» va «Mahzan ul-mute'in» asarlarini ham yaratganman.$$, $$["asar", "kitob", "yoz", "maslak", "muttaqin", "fors"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: So'fi Olloyor$$, TRUE,
       $$So'fi Olloyorning fors tilidagi eng yirik asari qaysi va u nechta baytdan iborat?$$, $$«Maslak ul-muttaqin» fors tilida yozilgan bo'lib, 12 ming bayt va 135 bobdan iborat. Shoir fors tilida yana «Murod ul-orifin» va «Mahzan ul-mute'in» asarlarini yaratgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Boshqa turkiy asarlarim$$, $$Turkiy tilda «Favz un-najot» (Najot tantanasi) kitobini va «Mevalar munozarasi» manzumasini ham yozganman.$$, $$["asar", "kitob", "yoz", "favz", "najot", "meval"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: So'fi Olloyor$$, TRUE,
       $$So'fi Olloyor turkiy tilda yana qanday asarlar yaratgan?$$, $$«Sabot ul-ojizin»dan tashqari u turkiy tilda «Favz un-najot» (Najot tantanasi) masnaviysini va «Mevalar munozarasi» manzumasini yozgan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1724-yilda Denovda vafot etganman. Vafotimdan keyin asarlarim Turkistondan tashqari Qashqardan tortib Volga va Ural bo'ylari, Astraxan, Bulg'or va Orenburg o'lkalarida ham keng tarqalgan.$$, $$["vafot", "1724", "denov", "umr", "oxir"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: So'fi Olloyor$$, TRUE,
       $$So'fi Olloyor qachon va qayerda vafot etgan?$$, $$So'fi Olloyor 1724-yilda Denovda vafot etgan. XIX asr oxirlarida uning asarlari Toshkent, Qozon, Boku va Istanbul shaharlarida toshbosma usulida bir necha bor nashr etilgan va ko'plab xorijiy tillarga tarjima qilingan. Manba: Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$So'fi Olloyorning turkiy tilda yozilgan va madrasalarda darslik bo'lgan mashhur asari qaysi?$$, $$["«Sabot ul-ojizin»", "«Maslak ul-muttaqin»", "«Murod ul-orifin»", "«Mahzan ul-mute'in»"]$$::jsonb, 0, $$«Sabot ul-ojizin» (Ojizlar saboti) turkiy tilda yozilgan bo'lib, maktab va madrasalarda asosiy darsliklar qatorida o'qitilgan. Qolgan uch asar fors tilida bitilgan.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$So'fi Olloyor qachon va qayerda tug'ilgan?$$, $$["1644-yilda Minglar qishlog'ida", "1724-yilda Denovda", "1644-yilda Buxoroda", "1724-yilda Toshkentda"]$$::jsonb, 0, $$So'fi Olloyor 1644-yilda Kattaqo'rg'on bekligiga qarashli Minglar qishlog'ida tug'ilgan. Denov esa u 1724-yilda vafot etgan shahardir.$$
  FROM heroes h WHERE h.slug = 'sofi-olloyor';


-- ═══════════ Turdi Farog'iy (1600–1700) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
-- Kritik agent: tug'ilgan yil manbada yo'q (faqat «XVII asr») — NULL
VALUES ('turdi-farogiy', $$Turdi Farog'iy$$, $$Mumtoz hajviyot shoiri$$, NULL, 1700,
 (SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Turdi Farog'iy XVII asrda Buxoroda tug'ilgan o'zbek mumtoz shoiri bo'lib, o'zbek va fors tillarida ijod qilgan. 1691-yilgi Subhonqulixon haqidagi mashhur hajviyasi bilan o'zbek hajviyotini Alisher Navoiydan keyin yangi bosqichga ko'targan va 1699/1700-yillarda Xo'jandda vafot etgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Turdi Farog'iyman — XVII asrda yashagan shoirman, she'rlarimda beklarni ittifoq va tenglikka chaqirganman. Mendan hayotim, she'rlarim va hajviyalarim haqida so'ra!$$,
 $$📜$$, $$["turdi", "farog", "shoir", "hajv", "buxoro", "sher"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men XVII asrda Buxoro shahrida tavallud topganman, tug'ilgan yilim aniq ma'lum emas. Asl ismim Turdi bo'lib, forscha-tojikcha she'rlarimda Farog'iy taxallusini qo'llaganman.$$, $$["tugil", "tavallud", "buxoro", "farog", "taxallus"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Turdi Farog'iy$$, TRUE,
       $$Turdi Farog'iy qayerda va qachon tug'ilgan?$$, $$Turdi XVII asrda Buxoroda tug'ilgan, aniq tug'ilgan yili ma'lum emas. Forscha-tojikcha she'rlarida u Farog'iy taxallusini ishlatgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Madrasada tahsilim$$, $$Men Buxoro madrasalarida tahsil olganman. She'rlarimni ham o'zbek, ham fors tillarida bemalol yozganman.$$, $$["madras", "tahsil", "oqi", "fors", "til"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Turdi Farog'iy$$, TRUE,
       $$Turdi qayerda ta'lim olgan va qaysi tillarda ijod qilgan?$$, $$Turdi Buxoro madrasalarida o'qigan. U o'zbek va fors tillarining har ikkalasida ham yetuk she'rlar yozgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yuz urug'i va saroy$$, $$Men yuz urug'idanman. Abdulazizxon davrida saroy amaldorlaridan, yuz urug'ining ko'zga ko'ringan siyosiy arboblaridan bo'lganman. Subhonqulixon taxtga chiqqach, saroydan chetlashtirilganman.$$, $$["yuz", "urug", "saroy", "abdulaziz", "subhonquli", "amaldor"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Turdi Farog'iy$$, TRUE,
       $$Turdi qaysi urug'dan bo'lgan va kimning davrida saroyda xizmat qilgan?$$, $$Turdi yuz urug'ining ko'zga ko'ringan siyosiy arboblaridan bo'lib, Abdulazizxon davrida saroy amaldori edi. Subhonqulixon hokimiyatga kelgach, u saroydan chetlashtirilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xalq qo'zg'oloni$$, $$1685-86-yillarda ashtarxoniylarga qarshi ko'tarilgan xalq qo'zg'olonida faol qatnashganman. Qo'zg'olon bostirilgach, avval Jizzaxga, so'ng Xo'jandga ketishga majbur bo'lganman.$$, $$["qozgolon", "ashtarxoniy", "jizzax", "xojand", "1685"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Turdi Farog'iy$$, TRUE,
       $$Turdi qaysi qo'zg'olonda qatnashgan va keyin qayerlarga ketgan?$$, $$Turdi 1685-86-yillarda ashtarxoniylarga qarshi xalq qo'zg'olonida faol ishtirok etgan. Qo'zg'olon bostirilgandan keyin u Jizzaxga, so'ngra Xo'jandga borgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riy merosim$$, $$Bizgacha 18 she'rim yetib kelgan: 12 g'azal, 5 muxammas va bitta fard — jami 434 misra. G'azallarimni juda ixcham, 3-5 baytli qilib yozganman.$$, $$["asar", "kitob", "yoz", "gazal", "muxammas", "sher"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Turdi Farog'iy$$, TRUE,
       $$Turdidan qancha she'riy meros qolgan?$$, $$Turdining bizgacha 18 she'ri yetib kelgan: 12 g'azal, 5 muxammas va bitta fard, jami 434 misra. Uning g'azallari boshqa shoirlarnikidan nihoyatda ixchamligi, ya'ni 3-5 baytdan iboratligi bilan ajralib turadi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mashhur hajviyam$$, $$1691-yilda Subhonqulixon haqida 165 misralik mashhur hajviyamni yozganman. Unda xonni va uning tuzumini keskin hajv qilganman.$$, $$["hajv", "subhonquli", "asar", "yoz", "kitob", "1691"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Turdi Farog'iy$$, TRUE,
       $$Turdi 1691-yilda kim haqida hajviya yozgan?$$, $$Turdi 1691-yilda Subhonqulixon haqida 165 misralik hajviya yaratgan. Bu asari bilan u o'zbek hajviyotini Alisher Navoiydan keyin yangi bosqichga ko'targan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Beklarga murojaatim$$, $$«Tor ko'ngullik beklar» deb boshlanuvchi she'rimda beklarga murojaat qilib, ularni keng fe'lli bo'lishga, o'zaro ittifoqqa va bir-birini urug'chilik belgilariga qarab kamsitmaslikka chaqirganman.$$, $$["bek", "ittifoq", "tenglik", "urug", "sher", "yoz", "asar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Turdi Farog'iy$$, TRUE,
       $$Turdi qaysi she'rida beklarni ittifoq va tenglikka chaqirgan?$$, $$«Tor ko'ngullik beklar, manman demang, kenglik qiling» deb boshlanuvchi g'azalida Turdi beklarni kenglikka, o'zaro ittifoqqa va tenglikka chaqiradi. Unda «To'qson ikki bovli o'zbek yurtidur, tenglik qiling» degan misra bor. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Qo'zg'olon bostirilgach, umrimning so'nggi yillarini Xo'jandda muhtojlik va ma'naviy tushkunlikda o'tkazganman. Men 1699/1700-yilda Xo'jandda vafot etganman.$$, $$["vafot", "xojand", "qashshoq", "muhtoj", "oxir", "1700"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Turdi Farog'iy$$, TRUE,
       $$Turdi Farog'iy qachon va qayerda vafot etgan?$$, $$Turdi 1699/1700-yillarda Xo'jand shahrida vafot etgan. Uning she'rlarini keyinchalik A. Majidiy topgan va ular 1924-25-yillarda nashr etilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Turdi Farog'iy 1691-yilda kim haqida mashhur hajviya yozgan?$$, $$["Abdulazizxon", "Subhonqulixon", "Amir Temur", "Ubaydullaxon"]$$::jsonb, 1, $$Turdi 1691-yilda Subhonqulixon haqida 165 misralik hajviya yozgan. Bu asari bilan u o'zbek hajviyotini Alisher Navoiydan keyin yangi bosqichga ko'targan.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Turdi Farog'iy qaysi urug'ning ko'zga ko'ringan siyosiy arbobi bo'lgan?$$, $$["Ming urug'i", "Qo'ng'irot urug'i", "Yuz urug'i", "Barlos urug'i"]$$::jsonb, 2, $$Turdi yuz urug'idan bo'lib, Abdulazizxon davrida saroy amaldorlaridan va yuz urug'ining ko'zga ko'ringan siyosiy arboblaridan edi.$$
  FROM heroes h WHERE h.slug = 'turdi-farogiy';


-- ═══════════ Muhammad Sharif Gulxaniy (1780–1825) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
-- Kritik agent: tug'ilgan yil manbada yo'q (taxminan XVIII asr oxiri) — NULL
VALUES ('gulxaniy', $$Muhammad Sharif Gulxaniy$$, $$Shoir va masalnavis$$, NULL, 1825,
 (SELECT id FROM eras WHERE code = 'xonliklar'),
 $$Muhammad Sharif Gulxaniy (taxminan XVIII asr oxiri — XIX asrning 20-yillari) — o'zbek va tojik tillarida ijod qilgan shoir, mashhur «Zarbulmasal» asarining muallifi. U Namangan va Qo'qonda yashab, Qo'qon xonlari Amir Olimxon va Amir Umarxon saroyida xizmat qilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Muhammad Sharif Gulxaniyman — «Zarbulmasal» asarini yozgan shoir va masalnavisman. Mendan hayotim, Qo'qon xonligi saroyi va «Zarbulmasal» asarim haqida so'ra!$$,
 $$🦉$$, $$["gulxaniy", "zarbulmasal", "zarbu", "masal", "shoir", "qoqon"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men taxminan XVIII asrning oxirida Qo'qonda tug'ilganman. Asl ismim Muhammad Sharif bo'lib, Gulxaniy — mening taxallusim.$$, $$["tugil", "tavallud", "qoqon", "taxallus", "ism"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Sharif Gulxaniy$$, TRUE,
       $$Gulxaniy qachon va qayerda tug'ilgan?$$, $$Gulxaniy taxminan XVIII asrning oxirida Qo'qonda tug'ilgan deb taxmin qilinadi. Uning asl ismi Muhammad Sharif, Gulxaniy esa taxallusidir. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Taxallusim sababi$$, $$Yoshligimda hammomda o't yoquvchi — go'lax bo'lib ishlaganman. «Gulxaniy» taxallusim ana shu gulxan yonidagi mehnatimdan kelib chiqqan.$$, $$["taxallus", "golax", "hammom", "gulxan", "olov"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Sharif Gulxaniy$$, TRUE,
       $$Gulxaniy taxallusi qayerdan kelib chiqqan?$$, $$Gulxaniy Namangan va Qo'qonda yashagan, bir muddat hammomda o't yoquvchi — go'lax vazifasida ishlagan. «Gulxaniy» taxallusi ana shu kasbi bilan bog'liq. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xon saroyidagi xizmatim$$, $$1801-yildan 1810-yilgacha Qo'qon xoni Amir Olimxon navkarlari safida xizmat qilganman. Olimxon vafotidan so'ng Amir Umarxon (Amiriy) meni saroy shoirlari davrasiga jalb etgan.$$, $$["navkar", "olimxon", "umarxon", "saroy", "xon", "xizmat"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Sharif Gulxaniy$$, TRUE,
       $$Gulxaniy Qo'qon xonlari saroyida qanday xizmat qilgan?$$, $$Gulxaniy 1801–1810-yillarda Qo'qon xoni Amir Olimxon navkarlari safida xizmatda bo'lgan. Olimxon vafotidan so'ng Amir Umarxon (Amiriy) uni saroy shoirlari davrasiga jalb etgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Zarbulmasal» asarim$$, $$Eng mashhur asarim — nasrda yozilgan «Zarbulmasal»dir. Unda 400 ga yaqin xalq maqolini, saj — qofiyali nasrni, masal va rivoyatlarni ishlatganman.$$, $$["zarbulmasal", "zarbu", "asar", "kitob", "yoz", "maqol"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Sharif Gulxaniy$$, TRUE,
       $$Gulxaniyning «Zarbulmasal» asari nimasi bilan mashhur?$$, $$«Zarbulmasal» o'zbek mumtoz adabiyotining va butun Sharq adabiyotining nodir namunasi hisoblanadi. Gulxaniy unda 400 ga yaqin xalq maqoli, saj (qofiyali nasr), masal va rivoyatlardan samarali foydalangan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yapaloqqush va Boyo'g'li$$, $$«Zarbulmasal»da Yapaloqqush bilan Boyo'g'lining quda-anda bo'lishi sarguzashtlarini majoziy, o'tkir hajviya tarzida tasvirlaganman. Qushlar timsolida davrimning ijtimoiy hayotini tanqid qilganman.$$, $$["yapaloq", "boyogli", "qush", "hajv", "masal", "asar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Sharif Gulxaniy$$, TRUE,
       $$«Zarbulmasal»da qaysi qushlarning sarguzashtlari tasvirlangan?$$, $$Asarda Yapaloqqush bilan Boyo'g'lining quda-anda bo'lishi sarguzashtlari majoziy, o'tkir hajviya tarzida tasvirlangan bo'lib, Gulxaniy qushlarning o'zaro munosabatlari asosida o'z davri ijtimoiy hayotining tanqidiy manzarasini yaratgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'rlarim va tillarim$$, $$Men o'zbek va tojik tillarida ijod qilganman. G'azallarimda muhabbat, hijron, bahor va real hayot manzaralarini kuylaganman; «Barmog'im», «Lola ko'ksidek bag'rim» kabi she'rlarim saqlanib qolgan.$$, $$["sher", "gazal", "yoz", "asar", "tojik", "kitob"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Sharif Gulxaniy$$, TRUE,
       $$Gulxaniy qaysi tillarda va qanday she'rlar yozgan?$$, $$Gulxaniy o'zbek va tojik tillarida ijod qilgan; undan bir qancha g'azal va hajviy she'rlar saqlanib qolgan. «Barmog'im», «Lola ko'ksidek bag'rim» kabi she'rlarida bahor va real hayot manzaralari aks etgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tazkiralardagi nomim$$, $$Zamondoshim Fazliy Namangoniy «Majmuai shoiron» tazkirasida men haqimda ma'lumotlar keltirgan.$$, $$["tazkira", "fazliy", "majmua", "shoir", "vozeh"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Sharif Gulxaniy$$, TRUE,
       $$Gulxaniy haqidagi ma'lumotlar qaysi tazkiralarda saqlangan?$$, $$Gulxaniy haqidagi ayrim ma'lumotlar Fazliy Namangoniyning «Majmuai shoiron» va Qori Rahmatulloh Vozehning «Tuhfat ul-ahbob» tazkiralarida keltirilgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Umrimning so'nggi yillari haqida manbalarda aniq ma'lumot saqlanmagan. Men taxminan XIX asrning 20-yillarida vafot etganman.$$, $$["vafot", "umr", "oxir"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Muhammad Sharif Gulxaniy$$, TRUE,
       $$Gulxaniy qachon vafot etgan?$$, $$Gulxaniyning vafot sanasi aniq ma'lum emas; manbalarda u taxminan XIX asrning 20-yillarida vafot etgan deb ko'rsatiladi. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Gulxaniyning «Zarbulmasal» asarida qaysi ikki qushning quda-anda bo'lishi tasvirlangan?$$, $$["Yapaloqqush bilan Boyo'g'li", "Bulbul bilan To'ti", "Hudhud bilan Kaklik", "Burgut bilan Qarg'a"]$$::jsonb, 0, $$«Zarbulmasal»da Yapaloqqush bilan Boyo'g'lining quda-anda bo'lishi sarguzashtlari majoziy, o'tkir hajviya tarzida tasvirlangan.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Gulxaniy 1801–1810-yillarda qaysi Qo'qon xonining navkarlari safida xizmat qilgan?$$, $$["Amir Umarxon", "Amir Olimxon", "Muhammad Alixon", "Xudoyorxon"]$$::jsonb, 1, $$Gulxaniy 1801–1810-yillarda Qo'qon xoni Amir Olimxon navkarlari safida xizmatda bo'lgan; keyinchalik Amir Umarxon uni saroy shoirlari davrasiga jalb etgan.$$
  FROM heroes h WHERE h.slug = 'gulxaniy';


-- ═══════════ Komil Xorazmiy (1825–1899) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('komil-xorazmiy', $$Komil Xorazmiy$$, $$Shoir, xattot va musiqashunos$$, 1825, 1899,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Komil Xorazmiy (1825-1899) — Xivada yashab ijod etgan shoir, xattot, tarjimon va musiqashunos. U o'zbek kuylarini yozib olish uchun «Tanbur chizig'i» nota tizimini joriy qilgan hamda Xiva xoni saroyida mirzaboshi va devonbegi lavozimlarida xizmat qilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Komil Xorazmiyman — Xiva shoiri, xattot va musiqashunosman. Mendan tanbur chizig'i notasi, she'rlarim va Xiva saroyidagi xizmatim haqida so'ra!$$,
 $$🪕$$, $$["xiva", "tanbur", "maqom", "mirza", "sher", "shoir"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1825-yilda Xiva shahrida tavallud topganman. Asl ismim Pahlavon Muhammadniyoz Abdulla Oxund o'g'li bo'lib, «Komil» — mening adabiy taxallusim.$$, $$["tugil", "tavallud", "1825", "xiva", "ism", "taxallus"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Komil Xorazmiy$$, TRUE,
       $$Komil Xorazmiy qachon va qayerda tug'ilgan, uning asl ismi nima bo'lgan?$$, $$Komil Xorazmiy 1825-yilda Xivada tug'ilgan. Uning asl ismi Pahlavon Muhammadniyoz Abdulla Oxund o'g'li bo'lib, «Komil» adabiy taxallusidir. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilm o'rganishim$$, $$Men Xiva madrasasida tahsil olganman. Arab va fors tillarini mukammal o'rganganman.$$, $$["madras", "tahsil", "arab", "fors", "ilm"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Komil Xorazmiy$$, TRUE,
       $$Komil Xorazmiy qayerda o'qigan va qaysi tillarni mukammal bilgan?$$, $$Komil Xorazmiy Xiva madrasasida tahsil olgan. U arab va fors tillarini mukammal egallagan edi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Saroy xizmatim$$, $$Xiva xoni Sayd Muhammadxon saroyida kotib bo'lib ishlaganman. Muhammad Rahim II meni mirzaboshi etib tayinlagan, 1873-1880-yillarda esa devonbegi lavozimida xizmat qilganman.$$, $$["mirza", "kotib", "devonbegi", "saroy", "xon", "lavozim"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Komil Xorazmiy$$, TRUE,
       $$Komil Xorazmiy Xiva xonlari saroyida qaysi lavozimlarda xizmat qilgan?$$, $$U Sayd Muhammadxon saroyida kotib bo'lgan, keyin Muhammad Rahim II uni mirzaboshi etib tayinlagan. 1873-1880-yillarda devonbegi, 1880-yildan yana mirzaboshi lavozimida ishlagan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Gandimiyon shartnomasi$$, $$1873-yilda Rossiya bilan Xiva xonligi o'rtasida tuzilgan Gandimiyon sulh shartnomasi mening qo'lim bilan yozilgan.$$, $$["gandimiyon", "gandi", "shartnoma", "sulh", "rossiya"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Komil Xorazmiy$$, TRUE,
       $$1873-yilgi Gandimiyon sulh shartnomasi kimning qo'li bilan yozilgan?$$, $$Rossiya va Xiva xonligi o'rtasidagi Gandimiyon sulh shartnomasi 1873-yilda Komil Xorazmiyning qo'li bilan yozilgan. Bu uning saroydagi mirzaboshi vazifasi bilan bog'liq edi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tanbur chizig'i notasi$$, $$O'zbek kuylarini yozib olish uchun «Tanbur chizig'i» deb atalgan nota tizimini joriy qilganman va bu notada «Rost» maqomining bosh qismini yozganman. Keyinchalik o'g'lim Mirzo Muhammadrasul Xorazm maqomlarining qolgan qismlarini notaga tushirgan.$$, $$["tanbur", "nota", "maqom", "chizi", "kuy", "rost"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Komil Xorazmiy$$, TRUE,
       $$Komil Xorazmiy o'zbek kuylarini yozib olish uchun qanday nota tizimini joriy qilgan?$$, $$Komil Xorazmiy «Tanbur chizig'i» nota tizimini joriy qilib, bu notada «Rost» maqomining bosh qismini yozgan. Xorazm «Shashmaqom»ining qolgan qismlarini notaga tushirishni uning o'g'li Mirzo Muhammadrasul davom ettirgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Devonim va she'rlarim$$, $$Devonimga g'azal, qasida va boshqa janrlarda yozilgan 8000 misradan ortiq she'rlarim jamlangan. Ularda insoniy fazilatlarni ulug'laganman, johillikni qoralaganman.$$, $$["devon", "sher", "gazal", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Komil Xorazmiy$$, TRUE,
       $$Komil Xorazmiy devonida qancha misra she'r jamlangan va ularda qanday mavzular kuylangan?$$, $$Komil Xorazmiy devonida g'azal, ruboiy, qasida va boshqa janrlarda 8000 misradan ortiq she'r jamlangan. Ularda insoniy fazilatlar ulug'lanadi, johillik qoralanadi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tarjima va nashr ishlarim$$, $$1865-yilda «Mahbub ul-qulub», 1869-1870-yillarda esa «Latoyif at-tavoyif» asarlarini fors tilidan o'zbek tiliga tarjima qilganman. 1880-1881-yillarda Xorazmda birinchi bo'lib bosmaxona tashkil etganman va Alisher Navoiy «Xamsa»sining Xorazmdagi birinchi toshbosma nashriga so'zboshi yozganman.$$, $$["tarjima", "asar", "kitob", "yoz", "bosma", "xamsa"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Komil Xorazmiy$$, TRUE,
       $$Komil Xorazmiy qaysi asarlarni o'zbek tiliga tarjima qilgan va Xorazmdagi birinchi bosmaxonaga qanday aloqasi bor?$$, $$U 1865-yilda «Mahbub ul-qulub», 1869-1870-yillarda «Latoyif at-tavoyif» asarlarini fors tilidan o'zbek tiliga tarjima qilgan. 1880-1881-yillarda Xorazmda birinchi bo'lib bosmaxona tashkil etgan va Navoiy «Xamsa»sining Xorazmdagi birinchi toshbosma nashriga so'zboshi yozgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1899-yilda vafot etganman. Butun umrim Xiva she'riyati, xattotligi va musiqasi rivojiga xizmat qilishga bag'ishlangan.$$, $$["vafot", "oxir", "1899", "umr"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Komil Xorazmiy$$, TRUE,
       $$Komil Xorazmiy qachon vafot etgan?$$, $$Komil Xorazmiy 1899-yilda vafot etgan. Uning qo'lyozmalari O'zbekiston Fanlar akademiyasi Sharqshunoslik instituti fondida saqlanadi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Komil Xorazmiy o'zbek kuylarini yozib olish uchun qanday nota tizimini joriy qilgan?$$, $$["Tanbur chizig'i", "Dutor chizig'i", "Nay chizig'i", "G'ijjak chizig'i"]$$::jsonb, 0, $$Komil Xorazmiy o'zbek kuylarini yozib olish uchun «Tanbur chizig'i» deb atalgan nota tizimini joriy qilgan va bu notada «Rost» maqomining bosh qismini yozgan.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$1873-yilda Rossiya bilan Xiva xonligi o'rtasidagi Gandimiyon sulh shartnomasi kimning qo'li bilan yozilgan?$$, $$["Ogahiy", "Komil Xorazmiy", "Munis Xorazmiy", "Feruz"]$$::jsonb, 1, $$Gandimiyon sulh shartnomasi 1873-yilda saroy mirzaboshisi Komil Xorazmiyning qo'li bilan yozilgan.$$
  FROM heroes h WHERE h.slug = 'komil-xorazmiy';


-- ═══════════ Berdaq (1827–1900) · verdict: ok ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('berdaq', $$Berdaq$$, $$Qoraqalpoq mumtoz shoiri$$, 1827, 1900,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Berdaq (1827-1900) — qoraqalpoq mumtoz adabiyotining yirik vakili, shoir va dostonchi. U «Shajara», «Xorazm», «Aydosbiy» kabi dostonlar hamda xalq dardini kuylagan ko'plab she'rlar muallifi.$$,
 $$Assalomu alaykum, aziz farzand! Men qoraqalpoq shoiri Berdaqman. Mendan do'mbiram, «Shajara» dostonim va she'rlarim haqida so'ra!$$,
 $$🪕$$, $$["berdaq", "shajara", "doston", "qoraqalpoq", "sher", "dombira"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Mening tug'ilishim$$, $$Men 1827-yilda Qoraqalpog'istonning Mo'ynoq rayonida, baliqchi oilasida tug'ilganman.$$, $$["tugil", "tavallud", "moynoq", "baliq", "oila", "1827"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Berdaq$$, TRUE,
       $$Berdaq qachon va qayerda tug'ilgan?$$, $$Berdaq 1827-yilda Qoraqalpog'istonning Mo'ynoq rayonida dunyoga kelgan. U baliqchi oilasida ulg'aygan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'berdaq';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Asl ismim$$, $$Mening asl ismim Berdimurod, otamning ismi Qarg'aboy. El orasida Berdaq nomi bilan tanilganman.$$, $$["ism", "nom", "berdimurod", "qargaboy", "taxallus"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Berdaq$$, TRUE,
       $$Berdaqning asl ismi nima bo'lgan?$$, $$Shoirning asl ismi Berdimurod Qarg'aboy o'g'li bo'lgan. U xalq orasida Berdaq nomi bilan mashhur bo'lgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'berdaq';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Maktab va madrasa$$, $$Avval ovul maktabida o'qiganman, so'ng madrasada tahsil olganman. Ammo madrasadagi o'qishni oxiriga yetkaza olmay, uni tashlab ketishga majbur bo'lganman.$$, $$["madras", "maktab", "oqi", "talim", "tahsil"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Berdaq$$, TRUE,
       $$Berdaq qayerda ta'lim olgan?$$, $$Berdaq avval ovul maktabida o'qigan, keyin madrasada tahsil olgan. Biroq madrasadagi o'qishni oxiriga yetkaza olmay, uni tashlab ketishga majbur bo'lgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'berdaq';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Do'mbira va ijodim$$, $$18-19 yoshlarimdan do'mbira chertib she'r aytishni boshlaganman. 25 yoshimda esa xalq orasida iste'dodli shoir sifatida tanilganman.$$, $$["dombira", "sher", "ijod", "yosh", "chert"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Berdaq$$, TRUE,
       $$Berdaqning ijodi qanday boshlangan?$$, $$Berdaqning ijodi 18-19 yoshlaridan do'mbira chertib she'r aytishdan boshlangan. U 25 yoshida xalq orasida iste'dodli shoir sifatida tan olingan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'berdaq';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yozgan dostonlarim$$, $$Men «Shajara», «Xorazm», «Amongeldi», «Aydosbiy» va «Ahmoq podsho» dostonlarini yozganman.$$, $$["shajara", "doston", "asar", "kitob", "yoz", "xorazm"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Berdaq$$, TRUE,
       $$Berdaq qaysi dostonlarning muallifi?$$, $$Berdaq «Shajara», «Xorazm», «Amongeldi», «Aydosbiy» va «Ahmoq podsho» dostonlarining muallifidir. Bu dostonlar qoraqalpoq mumtoz adabiyotining namunalari hisoblanadi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'berdaq';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'rlarim va mavzularim$$, $$«Xalq uchun», «Soliq», «Yoz kelurmi», «Bo'lgan emas», «Yaxshiroq» kabi she'rlar yozganman. Ularda xalq hayotini, zulm va adolatsizlikni, soliqlarning og'irligini kuylaganman.$$, $$["sher", "asar", "kitob", "yoz", "xalq", "soliq"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Berdaq$$, TRUE,
       $$Berdaq qanday she'rlar yozgan va ularda qaysi mavzularni yoritgan?$$, $$Berdaq «Xalq uchun», «Soliq», «Yoz kelurmi», «Bo'lgan emas», «Yaxshiroq» kabi she'rlar yozgan. Ularda xalq hayoti, adolatsizlik va soliqlarning og'irligi asosiy mavzular bo'lgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'berdaq';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1900-yilda vafot etganman. Vafotimdan so'ng, 1961-yilda she'rlarim to'plami o'zbek tilida nashr etilgan.$$, $$["vafot", "olim", "oxir", "nashr", "toplam"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Berdaq$$, TRUE,
       $$Berdaq qachon vafot etgan va she'rlari qachon o'zbek tilida nashr etilgan?$$, $$Berdaq 1900-yilda vafot etgan. 1961-yilda uning she'rlar to'plami o'zbek tilida bosilib chiqqan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'berdaq';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Berdaq qayerda va qanday oilada tug'ilgan?$$, $$["Mo'ynoqda, baliqchi oilasida", "Xivada, hunarmand oilasida", "Buxoroda, savdogar oilasida", "Toshkentda, dehqon oilasida"]$$::jsonb, 0, $$Berdaq 1827-yilda Qoraqalpog'istonning Mo'ynoq rayonida, baliqchi oilasida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'berdaq';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Quyidagi dostonlardan qaysi biri Berdaq qalamiga mansub?$$, $$["«Shajara»", "«Alpomish»", "«Layli va Majnun»", "«Farhod va Shirin»"]$$::jsonb, 0, $$Berdaq «Shajara», «Xorazm», «Amongeldi», «Aydosbiy» va «Ahmoq podsho» dostonlarining muallifidir.$$
  FROM heroes h WHERE h.slug = 'berdaq';


-- ═══════════ Ajiniyoz Qusiboy o'g'li (1824–1878) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('ajiniyoz', $$Ajiniyoz Qusiboy o'g'li$$, $$Qoraqalpoq mumtoz shoiri$$, 1824, 1878,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Ajiniyoz Qusiboy o'g'li (1824–1878) — qoraqalpoq xalqining shoiri. U she'rlarida o'zini «Zevar» nomi bilan tilga olgan. «Ellarim bordir» va «Bo'lur» she'rlari mashhur bo'lib, tanlangan asarlari qoraqalpoq tilida bir necha marta nashr etilgan.$$,
 $$Assalomu alaykum, aziz farzand! Men qoraqalpoq shoiri Ajiniyoz Qusiboy o'g'liman. Mendan she'rlarim, taxallusim va qoraqalpoq she'riyati haqida so'ra!$$,
 $$🖋️$$, $$["ajiniyoz", "qoraqalpoq", "shoir", "zevar", "moynoq", "sher"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1824-yilda Mo'ynoq tumanida tug'ilganman. Bolaligimdan qoraqalpoq elining qo'shiqlari va she'riyati qurshovida ulg'ayganman.$$, $$["tugil", "tavallud", "moynoq", "qachon", "qayer"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ajiniyoz (1824–1878)$$, TRUE,
       $$Ajiniyoz qachon va qayerda tug'ilgan?$$, $$Ajiniyoz 1824-yilda Mo'ynoq tumanida tug'ilgan. U XIX asr qoraqalpoq she'riyatining yirik vakillaridan biridir. Manba: Ziyouz.com, «Qoraqalpoq she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ajiniyoz';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Otam va ismim$$, $$Otamning ismi Qusiboy bo'lgan. Shuning uchun meni to'liq qilib Ajiniyoz Qusiboy o'g'li deb atashadi.$$, $$["ota", "qusiboy", "qusib", "oila", "ism"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ajiniyoz (1824–1878)$$, TRUE,
       $$Ajiniyozning otasi kim bo'lgan?$$, $$Shoirning to'liq ismi Ajiniyoz Qusiboy o'g'li. Otasining ismi Qusiboy bo'lgan. Manba: Ziyouz.com, «Qoraqalpoq she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ajiniyoz';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Taxallusim$$, $$She'rlarimni «Zevar» taxallusi bilan yozganman. «Qalpoqning kamina Zevari bordir» deb she'rimda o'zimni shu nom bilan tilga olganman.$$, $$["taxallus", "zevar", "nom", "laqab"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ajiniyoz (1824–1878)$$, TRUE,
       $$Ajiniyoz qaysi taxallus bilan ijod qilgan?$$, $$Ajiniyoz she'rlarida o'zini «Zevar» deb ataydi: «Qalpoqning kamina Zevari bordir», «G'arib Zevar har kun yig'lar» misralari bunga dalil. Manba: Ziyouz.com, «Qoraqalpoq she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ajiniyoz';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'rlarim$$, $$«Ellarim bordir» va «Bo'lur» degan she'rlar yozganman. Ularda ona yurtimga va xalqimga bo'lgan mehrimni kuylaganman.$$, $$["asar", "kitob", "yoz", "sher", "ellarim", "bolur"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ajiniyoz (1824–1878)$$, TRUE,
       $$Ajiniyoz qanday she'rlar yozgan?$$, $$«Ellarim bordir» va «Bo'lur» she'rlari Ziyouz portalida berilgan; «Bo'lur» she'rini qoraqalpoq tilidan Rustam Musurmon tarjima qilgan. Shoirning «Tanlangan asarlar»i qoraqalpoq tilida 1960, 1965, 1975, 1988 va 1994-yillarda nashr etilgan. Manba: Ziyouz.com, «Qoraqalpoq she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ajiniyoz';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qoraqalpoq she'riyati$$, $$Men qoraqalpoq xalqining shoiriman. Umrim davomida xalqim uchun she'rlar yozganman.$$, $$["adabiyot", "qoraqalpoq", "shoir", "mumtoz", "ijod", "xalq"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ajiniyoz (1824–1878)$$, TRUE,
       $$Ajiniyoz qaysi xalqning shoiri?$$, $$Ziyouz portalida Ajiniyoz «Qoraqalpoq xalqining shoiri» deb ta'riflanadi. Uning tanlangan asarlari qoraqalpoq tilida bir necha bor nashr etilgan. Manba: Ziyouz.com, «Qoraqalpoq she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ajiniyoz';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1878-yilda vafot etganman. She'rlarim esa xalqim qalbida yashab qoldi.$$, $$["vafot", "olim", "oxir", "umr"]$$::jsonb, $$Ziyouz.com — «Qoraqalpoq she'riyati» bo'limi: Ajiniyoz (1824–1878)$$, TRUE,
       $$Ajiniyoz qachon vafot etgan?$$, $$Ajiniyoz 1878-yilda vafot etgan. Uning she'riy merosi qoraqalpoq adabiyotining oltin fondiga kiradi. Manba: Ziyouz.com, «Qoraqalpoq she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'ajiniyoz';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ajiniyoz qaysi taxallus bilan she'rlar yozgan?$$, $$["Zevar", "Feruz", "Ogahiy", "Berdaq"]$$::jsonb, 0, $$Ajiniyoz she'rlarini «Zevar» taxallusi bilan yozgan.$$
  FROM heroes h WHERE h.slug = 'ajiniyoz';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Ajiniyoz qachon va qayerda tug'ilgan?$$, $$["1824-yilda Mo'ynoqda", "1809-yilda Xivada", "1827-yilda Nukusda", "1841-yilda Chimboyda"]$$::jsonb, 0, $$Ajiniyoz 1824-yilda Mo'ynoq tumanida tug'ilgan va 1878-yilda vafot etgan.$$
  FROM heroes h WHERE h.slug = 'ajiniyoz';


-- ═══════════ Ubaydulla Zavqiy (1853–1921) · verdict: ok ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('zavqiy', $$Ubaydulla Zavqiy$$, $$Qo'qonlik hajvchi shoir$$, 1853, 1921,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Zavqiy (asl ism-sharifi Ubaydullo Solih o'g'li) — Qo'qonda yashab ijod etgan o'zbek hajvchi shoiri. U maxsido'zlik hunari bilan shug'ullangan, she'rlarida ijtimoiy tengsizlik va adolatsizlikni fosh etgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Qo'qonlik hajvchi shoir Ubaydulla Zavqiyman. Mendan hajviy she'rlarim, kosiblik hunarim va Qo'qon adabiy muhiti haqida so'ra!$$,
 $$🎭$$, $$["zavqiy", "hajv", "shoir", "qoqon", "maxsi", "sher"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1853-yilda Qo'qon shahrida tug'ilganman. Asl ism-sharifim Ubaydullo Solih o'g'li, «Zavqiy» esa mening adabiy taxallusimdir.$$, $$["tugil", "tavallud", "qoqon", "taxallus", "ism"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ubaydulla Zavqiy$$, TRUE,
       $$Zavqiy qachon va qayerda tug'ilgan?$$, $$Zavqiy (asl ism-sharifi Ubaydullo Solih o'g'li) 1853-yilda Qo'qon shahrida tug'ilgan. «Zavqiy» — uning adabiy taxallusi. Manba: Ziyouz.com, «Zavqiy (1853-1921)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Madrasadagi tahsilim$$, $$1870–1874-yillarda Qo'qondagi «Madrasai oliy» va «Madrasai chalpak» madrasalarida tahsil olganman.$$, $$["madras", "tahsil", "oqi", "oliy", "chalpak"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ubaydulla Zavqiy$$, TRUE,
       $$Zavqiy qaysi madrasalarda tahsil olgan?$$, $$Zavqiy 1870–1874-yillarda Qo'qondagi «Madrasai oliy» va «Madrasai chalpak» madrasalarida o'qigan. Tahsil unga mumtoz adabiyot an'analarini chuqur o'rganish imkonini bergan. Manba: Ziyouz.com, «Zavqiy (1853-1921)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Kosiblik hunarim$$, $$Men kosib bo'lganman — maxsido'zlik bilan shug'ullanganman. Ma'lum muddat mirzalik ham qilganman.$$, $$["maxsi", "kosib", "hunar", "mirza", "kasb"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ubaydulla Zavqiy$$, TRUE,
       $$Zavqiy qanday hunar bilan shug'ullangan?$$, $$Zavqiy maxsido'zlik, ya'ni kosiblik hunari bilan shug'ullangan. Bundan tashqari, ma'lum muddat mirzalik (kotiblik) ham qilgan. Manba: Ziyouz.com, «Zavqiy (1853-1921)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Safarlarim va ziyoratim$$, $$Xo'jand, Samarqand, Buxoro, Toshkent, O'sh, Andijon va Marg'ilon shaharlarida bo'lganman. 1900-yilda tog'am Muhammad Siddiq bilan Madinani ziyorat qilganman, 1903-yilda esa Qo'qonga qaytganman.$$, $$["safar", "madina", "ziyorat", "toga", "shahar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ubaydulla Zavqiy$$, TRUE,
       $$Zavqiy 1900-yilda kim bilan qayerni ziyorat qilgan?$$, $$Zavqiy Xo'jand, Samarqand, Buxoro, Toshkent, O'sh, Andijon, Marg'ilon shaharlarida bo'lgan. 1900-yilda tog'asi Muhammad Siddiq bilan Madinani ziyorat qilgan va 1903-yilda Qo'qonga qaytgan. Manba: Ziyouz.com, «Zavqiy (1853-1921)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Adabiy do'stlarim$$, $$Qo'qon adabiy muhitida Muqimiy, Furqat, Nodim va Rojiy kabi shoirlar bilan ijodiy hamkorlik qilganman. Mumtoz o'zbek adabiyoti an'analarini davom ettirganman.$$, $$["muqimiy", "furqat", "adabiy", "dost", "hamkor", "muhit"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ubaydulla Zavqiy$$, TRUE,
       $$Zavqiy qaysi shoirlar bilan ijodiy hamkorlik qilgan?$$, $$Zavqiy Qo'qon adabiy muhitining Muqimiy, Furqat, Nodim, Rojiy kabi namoyandalari bilan ijodiy hamkorlik qilgan. U mumtoz o'zbek adabiyoti an'analarini davom ettirgan. Manba: Ziyouz.com, «Zavqiy (1853-1921)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hajviy she'rlarim$$, $$Men «Kajdor zamona», «Ajab zamona», «Abdurahmon shayton» kabi hajviy she'rlar yozganman. Ularda mustamlaka tuzumidagi ijtimoiy tengsizlik, adolatsizlik va nopok amaldorlarning kirdikorlarini fosh etganman.$$, $$["asar", "kitob", "yoz", "hajv", "sher", "zamona"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ubaydulla Zavqiy$$, TRUE,
       $$Zavqiy hajviy she'rlarida nimalarni fosh etgan?$$, $$Zavqiyning «Kajdor zamona», «Ajab zamona», «Abdurahmon shayton» kabi she'rlarida mustamlaka tuzumidagi ijtimoiy tengsizlik, adolatsizlik va chor ma'muriyati himoyasidagi nopok amaldorlarning kirdikorlari fosh etiladi. Manba: Ziyouz.com, «Zavqiy (1853-1921)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Xalq dardi haqidagi asarlarim$$, $$«Voqeai qozi saylov» (1909–1910) va «Qahatchilik» (1916) asarlarimni yozganman. Ularda ijtimoiy adolatsizlikni fosh etganman va xalqning zulmga qarshi namoyishlarini aks ettirganman.$$, $$["asar", "kitob", "yoz", "qahat", "saylov", "adolat"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ubaydulla Zavqiy$$, TRUE,
       $$Zavqiyning qaysi asarlarida xalqning zulmga qarshi namoyishlari aks ettirilgan?$$, $$Zavqiyning «Voqeai qozi saylov» (1909–10) va «Qahatchilik» (1916) asarlarida ijtimoiy adolatsizlik fosh etiladi, xalqning zulmga qarshi namoyishlari aks ettiriladi. Manba: Ziyouz.com, «Zavqiy (1853-1921)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1921-yilda ona shahrim Qo'qonda vafot etganman. She'rlarim turli bayoz, majmua, vaqtli matbuot hamda og'zaki manbalar orqali keyingi avlodlarga yetib borgan.$$, $$["vafot", "oxir", "bayoz", "matbuot", "qoqon"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Ubaydulla Zavqiy$$, TRUE,
       $$Zavqiy qachon va qayerda vafot etgan?$$, $$Zavqiy 1921-yilda Qo'qonda vafot etgan. Uning she'rlari turli bayoz, majmua, vaqtli matbuot hamda og'zaki manbalar orqali bizgacha yetib kelgan; keyinchalik Qo'qon shahridagi bir mahalla, qishloq, maktab va ko'chaga Zavqiy nomi berilgan. Manba: Ziyouz.com, «Zavqiy (1853-1921)» maqolasi.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Zavqiy qanday hunar bilan shug'ullangan?$$, $$["Zargarlik", "Maxsido'zlik", "Duradgorlik", "Kulolchilik"]$$::jsonb, 1, $$Zavqiy kosib bo'lgan — u maxsido'zlik hunari bilan shug'ullangan, ma'lum muddat mirzalik ham qilgan.$$
  FROM heroes h WHERE h.slug = 'zavqiy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Zavqiy 1900-yilda tog'asi Muhammad Siddiq bilan qayerni ziyorat qilgan?$$, $$["Buxoroni", "Toshkentni", "Madinani", "Samarqandni"]$$::jsonb, 2, $$Zavqiy 1900-yilda tog'asi Muhammad Siddiq bilan Madinani ziyorat qilgan va 1903-yilda Qo'qonga qaytgan.$$
  FROM heroes h WHERE h.slug = 'zavqiy';


-- ═══════════ Avaz O'tar (1884–1919) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('avaz-otar', $$Avaz O'tar$$, $$Xorazmlik ma'rifatparvar shoir$$, 1884, 1919,
 (SELECT id FROM eras WHERE code = 'jadidlar'),
 $$Avaz O'tar (1884–1919) — Xivada tug'ilib ijod qilgan o'zbek shoiri. She'rlarida erk, ozodlik va ma'rifat g'oyalarini kuylagan, undan «Saodat ul-iqbol» va «Devoni Avaz» devonlari yetib kelgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Avaz O'tarman — Xiva shahrida tug'ilgan shoirman. Mendan she'rlarim, «Saodat ul-iqbol» devonim, erk va ma'rifat haqidagi orzularim haqida so'ra!$$,
 $$📜$$, $$["shoir", "sher", "devon", "xiva", "erk", "marifat"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1884-yil 15-avgustda qadimiy Xiva shahrida tug'ilganman. Otam Polvonniyoz el orasida O'tar nomi bilan tanilgan, shu bois meni Avaz O'tar o'g'li deb atashadi.$$, $$["tugil", "tavallud", "xiva", "1884", "ota", "polvonniyoz"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Avaz O'tar$$, TRUE,
       $$Avaz O'tar qachon va qayerda tug'ilgan?$$, $$Avaz O'tar 1884-yil 15-avgustda Xivada tug'ilgan. Otasi Polvonniyoz O'tar nomi bilan mashhur bo'lgan. Manba: Ziyouz.com, «O'zbek mumtoz adabiyoti» bo'limi.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ta'lim yo'lim$$, $$Dastlab maktabda o'qiganman, so'ng Xivadagi Inoqiy madrasasida tahsil olganman. 18 yoshimdayoq el orasida shoir sifatida tanilganman.$$, $$["madras", "inoqiy", "maktab", "oqi", "talim", "tahsil"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Avaz O'tar$$, TRUE,
       $$Avaz O'tar qaysi madrasada tahsil olgan va necha yoshida shoir sifatida tanilgan?$$, $$U avval maktabda, keyin Xivadagi Inoqiy madrasasida o'qigan. 18 yoshida xalq orasida shoir sifatida tanilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Feruz saroyida$$, $$Xiva xoni Muhammad Rahim Soniy — Feruz iste'dodimga e'tibor berib, meni saroyga taklif qilgan va Tabibiyni menga ustoz tayin etgan. Ammo saroy hayoti bilan chiqisholmay, uni tark etganman.$$, $$["feruz", "saroy", "tabibiy", "ustoz", "xon"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Avaz O'tar$$, TRUE,
       $$Qaysi xon Avaz O'tarni saroyga taklif qilib, unga Tabibiyni ustoz tayin etgan?$$, $$Xiva xoni Muhammad Rahim Soniy (Feruz) yosh shoirning iste'dodini qadrlab, uni saroyga chorlagan va Tabibiyni ustoz etib tayinlagan. Biroq Avaz saroy hayotiga ko'nikolmay, uni tark etgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Devonlarim$$, $$She'rlarim «Saodat ul-iqbol» va «Devoni Avaz» nomli devonlarga jamlangan. Men g'azal, qit'a va ruboiy janrlarida ko'plab asar yozganman.$$, $$["asar", "kitob", "yoz", "devon", "saodat", "gazal"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Avaz O'tar$$, TRUE,
       $$Avaz O'tarning qaysi ikki devoni bizgacha yetib kelgan?$$, $$Avaz O'tarning «Saodat ul-iqbol» va «Devoni Avaz» devonlari saqlanib qolgan. Qo'lyozma nusxalari O'zbekiston Fanlar akademiyasi Sharqshunoslik institutida saqlanadi. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Erk va ma'rifat$$, $$20-asr boshida she'rlarimda erkparvarlik, ozodlik va ma'rifatparvarlik g'oyalarini kuylaganman. «Millat», «Hurriyat», «Xalq», «Zamon» kabi she'rlarimda xalqimning dardini aytganman.$$, $$["erk", "hurriyat", "millat", "marifat", "ozod", "xalq"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Avaz O'tar$$, TRUE,
       $$Avaz O'tar she'rlarida qanday g'oyalarni ilgari surgan?$$, $$XX asr boshida uning ijodida erkparvarlik, ozodlik va ma'rifatparvarlik g'oyalari yetakchi o'rin tutgan. «Millat», «Hurriyat», «Topar erkan, qachon», «Xalq», «Zamon» she'rlari shular jumlasidan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Maktab» she'rim$$, $$Men yoshlarning o'qishini, ilm olishini orzu qilganman. «Maktab» she'rimda maktab millatni obod etishini, yoshlarimiz o'qib ko'ngli shod bo'lishini yozganman.$$, $$["maktab", "ilm", "yosh", "oqi", "sher", "yoz", "asar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Avaz O'tar$$, TRUE,
       $$Avaz O'tar «Maktab» she'rida nimani orzu qilgan?$$, $$«Maktab» she'rida shoir maktab millatni obod etishini va yoshlar o'qib bilim olishini orzu qilgan. Bu she'r uning ma'rifatparvarlik qarashlarining yorqin namunasidir. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Hajv va jurnallar$$, $$Zamonamdagi illatlar ustidan kulib, «Faloniy» turkumida hajviy she'rlar yozganman. Ayrim she'rlarim «Oyina», «Vaqt» va «Mulla Nasriddin» jurnallarida bosilgan.$$, $$["hajv", "faloniy", "jurnal", "oyina", "yoz", "asar"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Avaz O'tar$$, TRUE,
       $$Avaz O'tarning hajviy she'rlar turkumi qanday nomlangan?$$, $$Uning «Faloniy» nomli hajviy she'rlar turkumi bo'lgan. She'rlari «Oyina», «Vaqt», «Mulla Nasriddin» jurnallarida ham bosilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1919-yilda ona shahrim Xivada vafot etganman. Qisqa umr ko'rgan bo'lsam-da, erk va ma'rifat haqidagi she'rlarimni xalqimga qoldirganman.$$, $$["vafot", "olim", "1919", "xiva", "umr"]$$::jsonb, $$Ziyouz.com — «O'zbek mumtoz adabiyoti» bo'limi: Avaz O'tar$$, TRUE,
       $$Avaz O'tar qachon va qayerda vafot etgan?$$, $$Avaz O'tar 1919-yilda Xivada vafot etgan. Keyinchalik respublikada maktablar, ko'chalar va xiyobonlarga uning nomi berilgan, Xivada uy-muzeyi tashkil etilib, haykali o'rnatilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Avaz O'tarning bizgacha yetib kelgan devonlaridan biri qaysi?$$, $$["«Xamsa»", "«Saodat ul-iqbol»", "«Boburnoma»", "«Lison ut-tayr»"]$$::jsonb, 1, $$Avaz O'tarning «Saodat ul-iqbol» va «Devoni Avaz» devonlari saqlanib qolgan. «Xamsa» va «Lison ut-tayr» — Alisher Navoiy, «Boburnoma» — Bobur asaridir.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Qaysi Xiva xoni Avaz O'tarni saroyga taklif qilib, Tabibiyni unga ustoz tayin etgan?$$, $$["Amir Temur", "Muhammad Rahim Soniy (Feruz)", "Abdullaxon", "Mirzo Ulug'bek"]$$::jsonb, 1, $$Xiva xoni Muhammad Rahim Soniy — Feruz Avazning iste'dodini qadrlab, uni saroyga taklif qilgan va Tabibiyni ustoz etib tayinlagan. Biroq shoir saroy hayotiga ko'nikolmay, uni tark etgan.$$
  FROM heroes h WHERE h.slug = 'avaz-otar';


-- ═══════════ Hamid Olimjon (1909–1944) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('hamid-olimjon', $$Hamid Olimjon$$, $$O'zbek shoiri va dramaturgi$$, 1909, 1944,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Hamid Olimjon — Jizzaxda tug'ilgan atoqli o'zbek shoiri, dramaturgi va olimi. U «Zaynab va Omon», «Oygul va Baxtiyor», «Semurg'» dostonlari hamda ko'plab she'riy to'plamlar muallifi.$$,
 $$Assalomu alaykum, aziz farzand! Men shoir Hamid Olimjonman. Mendan she'rlarim, dostonlarim va hayotim haqida so'ra!$$,
 $$✍️$$, $$["hamid", "olimjon", "shoir", "doston", "jizzax", "zaynab"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim va bolaligim$$, $$Men 1909-yil 12-dekabrda Jizzax shahrida tug'ilganman. Boshlang'ich ta'limni Narimonov nomidagi maktabda olganman.$$, $$["tugil", "tavallud", "jizzax", "1909", "maktab"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Hamid Olimjon$$, TRUE,
       $$Hamid Olimjon qachon va qayerda tug'ilgan?$$, $$Hamid Olimjon 1909-yil 12-dekabrda Jizzax shahrida dunyoga kelgan. U dastlab Narimonov nomidagi boshlang'ich maktabda o'qigan. Manba: Ziyouz.com$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsil yillarim$$, $$Men 1923–1926-yillarda Samarqand pedagogika bilim yurtida o'qiganman. So'ngra 1926–1931-yillarda Pedakademiyada tahsil olganman.$$, $$["oqi", "tahsil", "samarqand", "pedakademiya", "talim"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Hamid Olimjon$$, TRUE,
       $$Hamid Olimjon qayerlarda tahsil olgan?$$, $$Hamid Olimjon 1923–1926-yillarda Samarqand pedagogika bilim yurtida, 1926–1931-yillarda esa Pedakademiyada o'qigan. Manba: Ziyouz.com$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riy to'plamlarim$$, $$Ilk she'rlarim 1926-yildan «Zarafshon» gazetasida chiqa boshlagan, 1927-yildan shu gazetada ishlaganman. 1929-yilda birinchi she'riy to'plamim — «Ko'klam» nashr etilgan. Keyin «Daryo kechasi» (1936), «O'lka» (1939) va «Baxt» (1940) to'plamlarimni yozganman.$$, $$["sher", "toplam", "koklam", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Hamid Olimjon$$, TRUE,
       $$Hamid Olimjonning ilk she'riy to'plami qanday nomlanadi va qachon chiqqan?$$, $$Hamid Olimjonning ilk she'riy to'plami «Ko'klam» 1929-yilda nashr etilgan. Uning «Olov sochlar» (1931), «O'lim yovga» (1932), «Poyga» (1932), «Daryo kechasi» (1936), «O'lka» (1939), «Baxt» (1940) kabi to'plamlari ham bor. Manba: Ziyouz.com$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Zaynab va Omon» dostoni$$, $$Eng mashhur asarlarimdan biri — «Zaynab va Omon» dostoni, uni 1930-yillarda yozganman. Shuningdek, «Ikki qizning hikoyati» (1935–1937) dostonim ham bor.$$, $$["zaynab", "omon", "doston", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Hamid Olimjon$$, TRUE,
       $$Hamid Olimjonning eng mashhur dostonlaridan biri qaysi?$$, $$«Zaynab va Omon» — Hamid Olimjonning 1930-yillarda yozilgan mashhur dostoni. Uning «Ikki qizning hikoyati» (1935–1937) dostoni ham bor. Manba: Ziyouz.com$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Boshqa dostonlarim va balladalarim$$, $$Men «Oygul va Baxtiyor» (1937) hamda «Semurg'» (1939) dostonlarini yozganman. «Jangchi Tursun» va «Roksananing ko'z yoshlari» kabi balladalar ham yaratganman.$$, $$["oygul", "semurg", "doston", "ballada", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Hamid Olimjon$$, TRUE,
       $$Hamid Olimjonning «Oygul va Baxtiyor» va «Semurg'» asarlari qaysi janrda yozilgan?$$, $$«Oygul va Baxtiyor» 1937-yilda, «Semurg'» 1939-yilda yozilgan dostonlardir. Shoir «Jangchi Tursun», «Roksananing ko'z yoshlari» kabi balladalar ham yaratgan. Manba: Ziyouz.com$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Drama va tarjimalarim$$, $$Men «Muqanna» she'riy dramasini va «Jinoyat» dramasini yozganman. Pushkin, Tolstoy, Gorkiy, Mayakovskiy va Lermontov asarlarini o'zbek tiliga tarjima qilganman.$$, $$["muqanna", "drama", "tarjima", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Hamid Olimjon$$, TRUE,
       $$Hamid Olimjon qaysi she'riy dramani yozgan va kimlarning asarlarini tarjima qilgan?$$, $$Hamid Olimjon «Muqanna» she'riy dramasi va «Jinoyat» dramasini yozgan. U Pushkin, Tolstoy, Gorkiy, Mayakovskiy, Lermontov, Shevchenko kabi adiblarning asarlarini o'zbek tiliga tarjima qilgan. Manba: Ziyouz.com$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Rahbarlik faoliyatim$$, $$1939-yildan umrimning oxirigacha O'zbekiston Yozuvchilar uyushmasiga rahbarlik qilganman. 1943-yilda O'zbekiston Fanlar akademiyasining muxbir a'zosi etib saylanganman.$$, $$["uyushma", "rahbar", "akademiya", "muxbir", "yozuvchi"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Hamid Olimjon$$, TRUE,
       $$Hamid Olimjon qaysi tashkilotga rahbarlik qilgan?$$, $$Hamid Olimjon 1939-yildan umrining oxirigacha O'zbekiston Yozuvchilar uyushmasiga rahbarlik qilgan. 1943-yilda O'zbekiston Fanlar akademiyasining muxbir a'zosi bo'lgan. Manba: Ziyouz.com$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1944-yil 3-iyulda avtomobil halokatiga uchrab vafot etganman. Bor-yo'g'i 34 yoshda edim.$$, $$["vafot", "halokat", "avtomobil", "1944", "umr"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Hamid Olimjon$$, TRUE,
       $$Hamid Olimjon qachon va qanday vafot etgan?$$, $$Hamid Olimjon 1944-yil 3-iyulda avtomobil halokatiga uchrab vafot etgan. U atigi 34 yoshda edi. Manba: Ziyouz.com$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Hamid Olimjon qaysi shaharda tug'ilgan?$$, $$["Samarqand", "Jizzax", "Toshkent", "Buxoro"]$$::jsonb, 1, $$Hamid Olimjon 1909-yil 12-dekabrda Jizzax shahrida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Hamid Olimjonning 1929-yilda chiqqan ilk she'riy to'plami qanday nomlanadi?$$, $$["«Baxt»", "«O'lka»", "«Ko'klam»", "«Daryo kechasi»"]$$::jsonb, 2, $$Hamid Olimjonning birinchi she'riy to'plami «Ko'klam» 1929-yilda nashr etilgan.$$
  FROM heroes h WHERE h.slug = 'hamid-olimjon';


-- ═══════════ Usmon Nosir (1912–1944) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('usmon-nosir', $$Usmon Nosir$$, $$Shoir va tarjimon$$, 1912, 1944,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Usmon Nosir (1912–1944) — atoqli o'zbek shoiri va tarjimoni, «Yurak» va «Mehrim» she'riy to'plamlari muallifi. U 1937-yilgi qatag'on qurboni bo'lib, umrining oxiri Magadan va Kemerovo viloyatlaridagi qamoqxonalarda o'tgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Usmon Nosirman — «Yurak» she'rining muallifi, shoir va tarjimonman. Mendan she'rlarim, kitoblarim, tarjimalarim va hayot yo'lim haqida so'ra!$$,
 $$❤️$$, $$["usmon", "nosir", "yurak", "sher", "shoir", "qatagon"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1912-yil 13-noyabrda Namangan viloyatida tug'ilganman.$$, $$["tugil", "tavallud", "namangan", "1912", "noyabr"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Usmon Nosir (1912–1944)$$, TRUE,
       $$Usmon Nosir qachon va qayerda tug'ilgan?$$, $$Usmon Nosir 1912-yil 13-noyabrda Namangan viloyatida tavallud topgan. Manba: Ziyouz.com, «Zamonaviy o'zbek she'riyati» bo'limi.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsilim$$, $$1929–1930-yillarda Moskvadagi Kinematografiya institutining ssenariy fakultetida, 1933–1934-yillarda esa Alisher Navoiy nomidagi Samarqand davlat universitetining til va adabiyot fakultetida tahsil olganman.$$, $$["oqi", "tahsil", "moskva", "samarqand", "institut", "universitet"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Usmon Nosir (1912–1944)$$, TRUE,
       $$Usmon Nosir qayerlarda tahsil olgan?$$, $$Usmon Nosir 1929–1930-yillarda Moskvadagi Kinematografiya institutining ssenariy fakultetida, 1933–1934-yillarda Alisher Navoiy nomidagi Samarqand davlat universitetining til va adabiyot fakultetida o'qigan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Yurak» she'rim$$, $$Eng mashhur she'rlarimdan biri — «Yurak». U shunday boshlanadi: «Yurak, sensan mening sozim, / Tilimni nayga jo'r etding». 1935-yilda «Yurak» nomli she'riy to'plamim ham nashr etilgan.$$, $$["yurak", "sher", "asar", "kitob", "yoz", "soz"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Usmon Nosir (1912–1944)$$, TRUE,
       $$Usmon Nosirning «Yurak» she'ri qanday misralar bilan boshlanadi?$$, $$«Yurak» she'ri «Yurak, sensan mening sozim, / Tilimni nayga jo'r etding» misralari bilan boshlanadi. 1935-yilda shoirning «Yurak» nomli to'plami nashr etilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$She'riy to'plamlarim$$, $$Men «Quyosh bilan suhbat», «Safarbar satrlar» (1932), «Traktorobod» (1934), «Yurak» (1935) hamda «Mehrim» (1936) she'riy to'plamlarini yozganman. 1934-yilda «Norbo'ta» va «Naxshon» dostonlarini ham yaratganman.$$, $$["asar", "kitob", "yoz", "toplam", "doston", "mehrim"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Usmon Nosir (1912–1944)$$, TRUE,
       $$Usmon Nosir qanday she'riy to'plamlar va dostonlar yozgan?$$, $$Usmon Nosirning she'riy to'plamlari: «Quyosh bilan suhbat», «Safarbar satrlar» (1932), «Traktorobod» (1934), «Yurak» (1935), «Mehrim» (1936). U «Norbo'ta» va «Naxshon» (1934) dostonlari muallifi hamdir. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Atlas» dramam$$, $$1935-yilda «Atlas» nomli she'riy drama yozganman. Bu asarim havaskorlar teatri sahnasida qo'yilgan.$$, $$["atlas", "drama", "teatr", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Usmon Nosir (1912–1944)$$, TRUE,
       $$Usmon Nosirning «Atlas» dramasi haqida nima ma'lum?$$, $$Usmon Nosir 1935-yilda «Atlas» nomli she'riy drama yozgan va u havaskorlar teatri sahnasida qo'yilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tarjimalarim$$, $$Men rus shoirlarining asarlarini o'zbek tiliga o'girganman: Pushkinning «Bog'chasaroy fontani» va Lermontovning «Demon» dostonlarini tarjima qilganman.$$, $$["tarjim", "pushkin", "lermontov", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Usmon Nosir (1912–1944)$$, TRUE,
       $$Usmon Nosir qaysi asarlarni o'zbek tiliga tarjima qilgan?$$, $$Usmon Nosir A. S. Pushkinning «Bog'chasaroy fontani» va M. Yu. Lermontovning «Demon» dostonlarini o'zbek tiliga tarjima qilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Qatag'on qurboni$$, $$1937-yil 13-iyulda meni «xalq dushmani» degan ayb bilan hibsga olishgan. Avval Magadan, so'ng Kemerovo viloyatidagi qamoqxonalarga yuborilganman.$$, $$["qatagon", "qamoq", "hibs", "surgun", "magadan", "lager"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Usmon Nosir (1912–1944)$$, TRUE,
       $$Usmon Nosir nima uchun va qachon qamoqqa olingan?$$, $$Usmon Nosir 1937-yil 13-iyulda «xalq dushmani» degan ayb bilan hibsga olingan. U avval Magadan, so'ngra Kemerovo viloyatlaridagi qamoqxonalarga yuborilgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1944-yil 9-martda Kemerovo viloyatidagi qamoqda vafot etganman.$$, $$["vafot", "kemerovo", "qamoq", "magadan", "1944"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati» bo'limi: Usmon Nosir (1912–1944)$$, TRUE,
       $$Usmon Nosir qachon va qayerda vafot etgan?$$, $$Usmon Nosir 1944-yil 9-martda Kemerovo viloyatidagi qamoqda vafot etgan. Manba: Ziyouz.com.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Usmon Nosirning 1935-yilda nashr etilgan mashhur she'riy to'plami qanday nomlanadi?$$, $$["«Mehrim»", "«Yurak»", "«Traktorobod»", "«Quyosh bilan suhbat»"]$$::jsonb, 1, $$«Yurak» to'plami 1935-yilda nashr etilgan. «Safarbar satrlar» 1932-yilda, «Traktorobod» 1934-yilda, «Mehrim» esa 1936-yilda chiqqan.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Usmon Nosir qaysi shoirning «Demon» dostonini o'zbek tiliga tarjima qilgan?$$, $$["A. S. Pushkin", "M. Yu. Lermontov", "Sergey Yesenin", "Alisher Navoiy"]$$::jsonb, 1, $$Usmon Nosir M. Yu. Lermontovning «Demon» dostonini, A. S. Pushkinning esa «Bog'chasaroy fontani» dostonini o'zbek tiliga tarjima qilgan.$$
  FROM heroes h WHERE h.slug = 'usmon-nosir';


-- ═══════════ Toshmuhammad Qori-Niyoziy (1897–1970) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('qori-niyoziy', $$Toshmuhammad Qori-Niyoziy$$, $$Matematik, akademiyaning birinchi prezidenti$$, 1897, 1970,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Toshmuhammad Qori-Niyoziy — matematik olim, pedagog va jamoat arbobi, O'zbekiston Fanlar akademiyasining birinchi prezidenti (1943-1947). U elementar va oliy matematika bo'yicha o'zbek tilidagi birinchi darsliklar muallifi.$$,
 $$Assalomu alaykum, aziz farzand! Men Toshmuhammad Qori-Niyoziyman — matematik olimman, O'zbekiston Fanlar akademiyasining birinchi prezidenti bo'lganman. Mendan matematika darsliklari, akademiya va hayot yo'lim haqida so'ra!$$,
 $$📐$$, $$["matematik", "akadem", "prezident", "darslik", "olim", "fan"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1897-yil 9-fevralda Xo'jand shahrida tug'ilganman.$$, $$["tugil", "tavallud", "xojand", "qachon", "1897"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Qori-Niyoziy$$, TRUE,
       $$Toshmuhammad Qori-Niyoziy qachon va qayerda tug'ilgan?$$, $$Toshmuhammad Qori-Niyoziy 1897-yil 9-fevralda Xo'jand shahrida tavallud topgan. Keyinchalik uning hayoti va faoliyati Farg'ona hamda Toshkent bilan bog'liq bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Birinchi maktabim$$, $$1917-yilda Farg'onada birinchi yangi tipdagi o'zbek maktabiga asos solganman. 1920-yilda esa Farg'ona viloyat ta'lim-tarbiya texnikumiga direktor bo'lganman.$$, $$["maktab", "fargon", "talim", "direktor", "texnikum"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Qori-Niyoziy$$, TRUE,
       $$U 1917-yilda Farg'onada qanday muhim ish qilgan?$$, $$Qori-Niyoziy 1917-yilda Farg'onada birinchi yangi tipdagi o'zbek maktabiga asos solgan. 1920-yilda bu maktab Farg'ona viloyat ta'lim-tarbiya texnikumiga aylantirilgan va Qori-Niyoziy unga direktor bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Universitet va rektorlik$$, $$O'rta Osiyo universitetini 1929-yilda bitirganman. 1931-yilda professor bo'lganman va 1931-1933-yillarda shu universitetga rektorlik qilganman.$$, $$["universitet", "rektor", "professor", "oqi", "bitir"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Qori-Niyoziy$$, TRUE,
       $$U qaysi universitetni bitirgan va unga qachon rektorlik qilgan?$$, $$Qori-Niyoziy O'rta Osiyo universitetini 1929-yilda bitirgan, 1931-yilda professor unvonini olgan va 1931-1933-yillarda shu universitetning rektori bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Darsliklarim va kitoblarim$$, $$Elementar va oliy matematika bo'yicha o'zbek tilidagi birinchi darsliklarni men yozganman. «Hayot maktabi» nomli xotira kitobim ham bor. «Fan va turmush» jurnaliga bosh muharrirlik ham qilganman.$$, $$["asar", "kitob", "yoz", "darslik", "matematik", "jurnal"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Qori-Niyoziy$$, TRUE,
       $$U o'zbek tilida qaysi fan bo'yicha birinchi darsliklarni yozgan?$$, $$Qori-Niyoziy elementar va oliy matematika bo'yicha o'zbek tilidagi birinchi darsliklar muallifi. Uning «Hayot maktabi» xotira kitobida respublikadagi ilmiy va madaniy yuksalish tasvirlangan, u 1939-yildan «Fan va turmush» jurnalining bosh muharriri ham bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Fanlar akademiyasi$$, $$1940-1943-yillarda SSSR Fanlar akademiyasi O'zbekiston filiali prezidiumiga rais bo'lganman. 1943-yilda O'zbekiston Fanlar akademiyasi tashkil topgach, uning birinchi prezidenti etib saylanganman va 1947-yilgacha shu vazifada ishlaganman.$$, $$["akadem", "prezident", "fanlar", "saylan", "1943"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Qori-Niyoziy$$, TRUE,
       $$U qachon O'zbekiston Fanlar akademiyasining birinchi prezidenti bo'lgan?$$, $$Qori-Niyoziy 1940-1943-yillarda SSSR Fanlar akademiyasi O'zbekiston filiali prezidiumi raisi bo'lgan. 1943-yilda O'zbekiston Fanlar akademiyasi tashkil etilgach, u uning birinchi prezidenti etib saylangan va 1943-1947-yillarda shu lavozimda ishlagan. O'sha 1943-yilda u akademik bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Lavozimlarim$$, $$1937-1938-yillarda O'zbekiston maorif xalq komissari va Fan qo'mitasi raisi bo'lganman. 1939-yildan boshlab Toshkent irrigatsiya va mexanizatsiyalash muhandislari instituti matematika kafedrasiga mudirlik qilganman.$$, $$["komissar", "maorif", "kafedra", "mudir", "lavozim"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Qori-Niyoziy$$, TRUE,
       $$U 1937-1938-yillarda qanday lavozimda ishlagan?$$, $$Qori-Niyoziy 1937-1938-yillarda O'zbekiston maorif xalq komissari va Fan qo'mitasi raisi bo'lgan. 1939-yildan Toshkent irrigatsiya va mexanizatsiyalash muhandislari institutida matematika kafedrasi mudiri bo'lib ishlagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvon va mukofotlarim$$, $$1939-yilda fizika-matematika fanlari doktori bo'lganman va O'zbekistonda xizmat ko'rsatgan fan arbobi unvonini olganman. 1952-yilda Davlat mukofoti bilan taqdirlanganman, 1967-yilda esa Mehnat Qahramoni unvoniga sazovor bo'lganman.$$, $$["mukofot", "unvon", "doktor", "qahramon", "arbob"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Qori-Niyoziy$$, TRUE,
       $$U qanday unvon va mukofotlarga sazovor bo'lgan?$$, $$Qori-Niyoziy 1939-yilda fizika-matematika fanlari doktori va O'zbekistonda xizmat ko'rsatgan fan arbobi bo'lgan. U 1952-yilda Davlat mukofoti bilan taqdirlangan, 1967-yilda Mehnat Qahramoni unvonini olgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1970-yil 18-martda Toshkent shahrida vafot etganman. O'sha 1970-yilda menga Beruniy nomidagi O'zbekiston Davlat mukofoti berilgan.$$, $$["vafot", "oxir", "beruniy", "1970", "toshkent"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Toshmuhammad Qori-Niyoziy$$, TRUE,
       $$Toshmuhammad Qori-Niyoziy qachon va qayerda vafot etgan?$$, $$U 1970-yil 18-martda Toshkentda vafot etgan va o'sha yili Beruniy nomidagi O'zbekiston Davlat mukofotiga sazovor bo'lgan. O'zbekiston pedagogika fanlari ilmiy tekshirish instituti, Toshkentdagi ko'chalardan biri va 206-maktab uning nomi bilan atalgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Toshmuhammad Qori-Niyoziy qaysi tashkilotning birinchi prezidenti bo'lgan?$$, $$["O'zbekiston Fanlar akademiyasi", "O'zbekiston Yozuvchilar uyushmasi", "Toshkent davlat universiteti", "O'zbekiston Rassomlar uyushmasi"]$$::jsonb, 0, $$1943-yilda O'zbekiston Fanlar akademiyasi tashkil etilganda Qori-Niyoziy uning birinchi prezidenti etib saylangan va 1947-yilgacha shu lavozimda ishlagan.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Qori-Niyoziy o'zbek tilida qaysi fan bo'yicha birinchi darsliklarni yozgan?$$, $$["Matematika", "Kimyo", "Tarix", "Biologiya"]$$::jsonb, 0, $$U elementar va oliy matematika bo'yicha o'zbek tilidagi birinchi darsliklarning muallifi bo'lgan.$$
  FROM heroes h WHERE h.slug = 'qori-niyoziy';


-- ═══════════ Habib Abdullayev (1912–1962) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('habib-abdullayev', $$Habib Abdullayev$$, $$Geolog olim, akademik$$, 1912, 1962,
 (SELECT id FROM eras WHERE code = 'xx-asr'),
 $$Habib Abdullayev (1912–1962) — geolog olim, geologiya-mineralogiya fanlari doktori, O'zbekiston Fanlar akademiyasining akademigi va 1956-yildan prezidenti. U birinchi bo'lib O'rta Osiyoni alohida metallogenik provinsiya sifatida ajratgan va konlar geologiyasini chuqur o'rgangan.$$,
 $$Assalomu alaykum, aziz farzand! Men Habib Abdullayevman — geolog olim, O'zbekiston Fanlar akademiyasining prezidentiman. Mendan tog'lar, konlar va geologiya ilmi haqida so'ra!$$,
 $$⛏️$$, $$["geolog", "akademi", "kon", "prezident", "mineral", "fanlar"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1912-yil 31-avgustda O'sh shahrida tug'ilganman.$$, $$["tugil", "tavallud", "osh", "1912"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Habib Abdullayev$$, TRUE,
       $$Habib Abdullayev qachon va qayerda tug'ilgan?$$, $$Habib Abdullayev 1912-yil 31-avgustda O'sh shahrida tavallud topgan. Keyinchalik u O'zbekistonning eng mashhur geolog olimlaridan biriga aylangan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'qishim va ilk ishim$$, $$1935-yilda O'rta Osiyo industriya institutining konchilik fakultetini tugatganman. Shu yildan boshlab geologiya-razvedka partiyasiga boshliq bo'lib ishlaganman.$$, $$["oqi", "institut", "konchilik", "talim", "razvedka"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Habib Abdullayev$$, TRUE,
       $$Habib Abdullayev qaysi institutni tugatgan?$$, $$U 1935-yilda O'rta Osiyo industriya institutining konchilik fakultetini tugatgan va geologiya-razvedka partiyasi boshlig'i bo'lib ishlagan. 1940-yildan shu institutda dotsent bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Fanlar doktori bo'lishim$$, $$1946-yilda «O'rta Osiyoning sheelitli skarnlari geologiyasi» mavzusida doktorlik dissertatsiyasini yoqlab, geologiya-mineralogiya fanlari doktori bo'lganman. 1947-yilda O'zbekiston Fanlar akademiyasining akademigi etib saylanganman.$$, $$["doktor", "dissert", "skarn", "unvon", "akademi"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Habib Abdullayev$$, TRUE,
       $$Habib Abdullayev qachon fanlar doktori bo'lgan?$$, $$Habib Abdullayev 1946-yilda «O'rta Osiyoning sheelitli skarnlari geologiyasi» mavzusida doktorlik dissertatsiyasini yoqlagan. 1947-yilda esa O'zbekiston Fanlar akademiyasining akademigi bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Akademiya prezidenti$$, $$1947-yildan O'zbekiston Fanlar akademiyasining vitse-prezidenti, 1956-yildan esa prezidenti bo'lib ishlaganman. Shu bilan birga Geologiya institutini ham boshqarganman.$$, $$["prezident", "akademi", "fanlar", "lavozim", "vitse"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Habib Abdullayev$$, TRUE,
       $$Habib Abdullayev Fanlar akademiyasida qanday lavozimlarda ishlagan?$$, $$U 1947-yildan O'zbekiston Fanlar akademiyasining vitse-prezidenti, 1952–1955-yillarda texnika va geologiya-kimyo fanlari bo'limining raisi, 1956-yildan umrining oxirigacha akademiya prezidenti bo'lgan. Ayni paytda Geologiya instituti direktori ham edi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilmiy asarlarim$$, $$Men 130 dan ortiq ilmiy asar, jumladan 7 ta monografiya yozganman. «O'rta Osiyo magmatizmi va rudalanish jarayoni» (1960) kitobim shular jumlasidandir.$$, $$["asar", "kitob", "yoz", "monograf", "ilmiy", "magmatizm"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Habib Abdullayev$$, TRUE,
       $$Habib Abdullayev nechta ilmiy asar yozgan?$$, $$Habib Abdullayev 130 dan ortiq ilmiy asar, shu jumladan 7 monografiya yozgan. Uning «Rudalanishning granitoid intruziyalar bilan genetik bog'liqligi» asari nemis, ingliz va xitoy tillariga tarjima qilingan, 1960-yildan u Fransiya geologiya va Buyuk Britaniya Qirollik mineralogiya jamiyatlarining a'zosi bo'lgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Konlar va kashfiyotlarim$$, $$Langar volfram-molibden konining geologik tuzilishi va mineral tarkibini o'rganganman. Birinchi bo'lib O'rta Osiyoni alohida metallogenik provinsiya sifatida ajratganman.$$, $$["kon", "langar", "volfram", "ruda", "kashf", "metallogen"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Habib Abdullayev$$, TRUE,
       $$Habib Abdullayev qaysi konni o'rgangan va qanday kashfiyot qilgan?$$, $$U Langar volfram-molibden konining geologik tuzilishini tadqiq etgan, endogen ruda hosil bo'lishi nazariyasini rivojlantirgan va volfram, qalay, rangli hamda qora metallar konlarining hosil bo'lish yo'llarini aniqlagan. Birinchi bo'lib O'rta Osiyoni alohida metallogenik provinsiya sifatida ajratgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Shogirdlarim$$, $$Mening rahbarligimda 7 kishi doktorlik, 28 kishi nomzodlik dissertatsiyasini yoqlagan. «O'zbekiston geologiya jurnali»ni birinchi bo'lib tashkil qilib, uning mas'ul muharriri bo'lganman.$$, $$["shogird", "jurnal", "muharrir", "talaba", "nomzod"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Habib Abdullayev$$, TRUE,
       $$Habib Abdullayev rahbarligida nechta olim yetishib chiqqan?$$, $$Uning rahbarligida 7 kishi doktorlik, 28 kishi nomzodlik dissertatsiyasini yoqlagan. U ToshPI geologiya-razvedka fakultetida birinchi petrologiya va metallogeniya kafedrasini tashkil etgan hamda «O'zbekiston geologiya jurnali»ga asos solgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 1962-yil 20-iyunda Toshkent shahrida vafot etganman. Chig'atoy qabristoniga dafn etilganman.$$, $$["vafot", "dafn", "qabris", "1962", "oxir"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Habib Abdullayev$$, TRUE,
       $$Habib Abdullayev qachon vafot etgan?$$, $$Habib Abdullayev 1962-yil 20-iyunda Toshkentda vafot etgan va Chig'atoy qabristoniga dafn qilingan. Keyinchalik O'zbekiston Fanlar akademiyasining Geologiya va geofizika instituti, Toshkent metrosining bir bekati va bir qancha ko'chalarga uning nomi berilgan, 1970-yilda «Metallogeniya» monografiyasi uchun Beruniy nomidagi Davlat mukofoti berilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Habib Abdullayev qaysi yildan O'zbekiston Fanlar akademiyasining prezidenti bo'lgan?$$, $$["1947-yildan", "1952-yildan", "1956-yildan", "1960-yildan"]$$::jsonb, 2, $$Habib Abdullayev 1947-yildan akademiyaning vitse-prezidenti, 1956-yildan esa umrining oxirigacha O'zbekiston Fanlar akademiyasining prezidenti bo'lib ishlagan.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Habib Abdullayev qayerda tug'ilgan?$$, $$["Toshkent shahrida", "Samarqand shahrida", "Buxoro shahrida", "O'sh shahrida"]$$::jsonb, 3, $$Habib Abdullayev 1912-yil 31-avgustda O'sh shahrida tug'ilgan, keyinchalik Toshkentda yashab ijod qilgan.$$
  FROM heroes h WHERE h.slug = 'habib-abdullayev';


-- ═══════════ Said Ahmad (1920–2007) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('said-ahmad', $$Said Ahmad$$, $$O'zbekiston xalq yozuvchisi$$, 1920, 2007,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$Said Ahmad (1920–2007) — O'zbekiston xalq yozuvchisi va O'zbekiston Qahramoni, «Ufq» trilogiyasi hamda «Kelinlar qo'zg'oloni» komediyasining muallifi. U hajviy hikoyalari bilan xalq mehrini qozongan, turmush o'rtog'i shoira Saida Zunnunova bilan birga o'zbek adabiyotida o'chmas iz qoldirgan.$$,
 $$Assalomu alaykum, aziz farzand! Men Said Ahmadman — «Ufq» trilogiyasi va «Kelinlar qo'zg'oloni» komediyasining muallifiman. Mendan hayotim, asarlarim va rafiqam Saida Zunnunova haqida so'ra!$$,
 $$✍️$$, $$["yozuv", "asar", "ufq", "kelin", "hajv", "komediya"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1920-yil 10-iyunda Toshkent shahrida tug'ilganman. Asl ism-sharifim Saidahmad Husanxo'jayev, «Said Ahmad» esa mening adabiy taxallusimdir.$$, $$["tugil", "tavallud", "toshkent", "taxallus", "husanxojayev"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Said Ahmad$$, TRUE,
       $$Said Ahmad qachon va qayerda tug'ilgan?$$, $$Said Ahmad 1920-yil 10-iyunda Toshkent shahrida tug'ilgan. Uning asl ism-sharifi Husanxo'jayev Saidahmad bo'lib, «Said Ahmad» — adabiy taxallusi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$O'qishim va ilk kitobim$$, $$Men Toshkent rassomlik bilim yurtida, so'ngra 1940–1943-yillarda Toshkent pedagogika institutida o'qiganman. Ilk hikoyalar to'plamim «Tortiq» 1940-yilda chiqqan, yoshligimda «Mushtum» jurnalida adabiy xodim bo'lib ishlaganman.$$, $$["oqi", "institut", "tortiq", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Said Ahmad$$, TRUE,
       $$Said Ahmad qayerlarda o'qigan va ilk to'plami qaysi?$$, $$Said Ahmad Toshkent rassomlik bilim yurtida va 1940–1943-yillarda Toshkent pedagogika institutida o'qigan. Uning ilk hikoyalar to'plami «Tortiq» 1940-yilda nashr etilgan; u «Mushtum» jurnali va «Yosh leninchi» gazetasida adabiy xodim bo'lib ishlagan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Ufq» trilogiyam$$, $$Eng yirik asarim — «Ufq» trilogiyasi. Uni 1964–1974-yillarda yozganman. 1988-yilda esa «Jimjitlik» romanim nashr etilgan.$$, $$["ufq", "trilogiya", "roman", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Said Ahmad$$, TRUE,
       $$Said Ahmadning «Ufq» trilogiyasi qaysi yillarda yaratilgan?$$, $$«Ufq» trilogiyasi Said Ahmad ijodining cho'qqisi bo'lib, 1964–1974-yillarda yaratilgan. 1988-yilda yozuvchining «Jimjitlik» romani ham nashr etilgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Kelinlar qo'zg'oloni»$$, $$Men hajviy asarlar ustasi sifatida tanilganman. 1976-yilda «Kelinlar qo'zg'oloni», 1986-yilda «Kuyov» komediyalarini yozganman. «Farg'ona hikoyalari» (1948) va «Cho'l burguti» (1960) to'plamlarim ham bor.$$, $$["kelin", "komediya", "hajv", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Said Ahmad$$, TRUE,
       $$Said Ahmadning «Kelinlar qo'zg'oloni» komediyasi qachon yozilgan?$$, $$«Kelinlar qo'zg'oloni» komediyasi 1976-yilda yozilgan. Said Ahmad 1986-yilda «Kuyov» komediyasini ham yaratgan; uning ijodida hajviy va yumoristik hikoyalar salmoqli o'rin tutadi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Og'ir sinov yillari$$, $$1947-yilda meni «xalq dushmani» degan tuhmat bilan hibsga olishgan. Stalin vafotidan so'ng oqlanganman va ijodimni davom ettirganman.$$, $$["qamoq", "hibs", "qatagon", "dushman", "tuhmat", "stalin"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Said Ahmad$$, TRUE,
       $$Said Ahmad nima uchun va qachon hibsga olingan?$$, $$Said Ahmad 1947-yilda «xalq dushmani» degan ayblov bilan hibsga olingan. U Stalin vafotidan keyin oqlangan va ijodini davom ettirgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Rafiqam Saida$$, $$Turmush o'rtog'im — shoira Saida Zunnunova. U 1926-yilda Andijon shahrida tug'ilgan, «Qizingiz yozdi» (1948) va «Gullar vodiysi» (1954) kabi kitoblar muallifi edi.$$, $$["saida", "zunnun", "rafiqa", "turmush", "oila", "shoira"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Said Ahmad$$, TRUE,
       $$Said Ahmadning turmush o'rtog'i kim bo'lgan?$$, $$Said Ahmadning turmush o'rtog'i shoira Saida Zunnunova edi. U 1926-yilda Andijon shahrida tug'ilgan; «Qizingiz yozdi» (1948), «Gullar vodiysi» (1954), «Gulxan» (1959) kabi asarlar muallifi. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi: Saida Zunnunova.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvon va mukofotlarim$$, $$1980-yilda menga O'zbekiston xalq yozuvchisi unvoni berilgan. 1996-yilda «Do'stlik», 1997-yilda «Buyuk xizmatlari uchun» ordenlari bilan, 1999-yilda esa O'zbekiston Qahramoni unvoni bilan taqdirlanganman.$$, $$["unvon", "mukofot", "qahramon", "orden", "dostlik"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Said Ahmad$$, TRUE,
       $$Said Ahmad qachon O'zbekiston Qahramoni unvoniga sazovor bo'lgan?$$, $$Said Ahmad 1980-yilda O'zbekiston xalq yozuvchisi, 1999-yilda O'zbekiston Qahramoni unvonlariga sazovor bo'lgan. U «Do'stlik» (1996) va «Buyuk xizmatlari uchun» (1997) ordenlari bilan mukofotlangan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Umrimning so'nggi yillarida ham qalamni qo'ymadim: «Qorako'z majnun» (2001) va «Kiprikda qolgan tong» (2003) kitoblarimni yozdim. Men 2007-yilda vafot etganman.$$, $$["vafot", "olim", "oxir", "qorakoz", "kiprik"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: Said Ahmad$$, TRUE,
       $$Said Ahmad qachon vafot etgan?$$, $$Said Ahmad 2007-yilda vafot etgan. Umrining so'nggi yillarida u «Qorako'z majnun» (2001) va «Kiprikda qolgan tong» (2003) kitoblarini yaratgan. Manba: Ziyouz.com, «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Said Ahmadning «Ufq» trilogiyasi qaysi yillarda yozilgan?$$, $$["1940–1950-yillarda", "1964–1974-yillarda", "1980–1990-yillarda", "1994–2003-yillarda"]$$::jsonb, 1, $$«Ufq» trilogiyasi 1964–1974-yillarda yaratilgan bo'lib, Said Ahmad ijodining eng yirik asari hisoblanadi.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$Said Ahmadning turmush o'rtog'i bo'lgan shoira kim edi?$$, $$["Zulfiya", "Saida Zunnunova", "Nodira", "Uvaysiy"]$$::jsonb, 1, $$Said Ahmadning rafiqasi shoira Saida Zunnunova edi. U 1926-yilda Andijon shahrida tug'ilgan.$$
  FROM heroes h WHERE h.slug = 'said-ahmad';


-- ═══════════ O'tkir Hoshimov (1941–2013) · verdict: fixed ═══════════
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id, bio_uz, greeting_uz,
                    portrait_emoji, on_topic_keywords)
VALUES ('otkir-hoshimov', $$O'tkir Hoshimov$$, $$O'zbekiston xalq yozuvchisi$$, 1941, 2013,
 (SELECT id FROM eras WHERE code = 'mustaqillik'),
 $$O'tkir Hoshimov — O'zbekiston xalq yozuvchisi, «Dunyoning ishlari», «Ikki eshik orasi» va «Bahor qaytmaydi» kabi mashhur asarlar muallifi. Uning 50 dan ortiq asari qariyb 2 million nusxada tarqalgan.$$,
 $$Assalomu alaykum, aziz farzand! Men O'tkir Hoshimovman. Mendan «Dunyoning ishlari», «Ikki eshik orasi» va boshqa asarlarim haqida so'ra!$$,
 $$✍️$$, $$["hoshimov", "otkir", "yozuvchi", "roman", "asar", "kitob"]$$);

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tug'ilishim$$, $$Men 1941-yil 5-avgustda Toshkentning Do'mbirobod mahallasida tug'ilganman. Bolaligim urush qiyinchiliklari va muhtojliklari davriga to'g'ri kelgan.$$, $$["tugil", "tavallud", "toshkent", "dombirobod", "1941"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$O'tkir Hoshimov qachon va qayerda tug'ilgan?$$, $$O'tkir Hoshimov 1941-yil 5-avgustda Toshkentning Do'mbirobod mahallasida tug'ilgan. Bolaligi urush qiyinchiliklari va muhtojliklari davrida kechgan bo'lsa-da, o'rta maktabni a'lo baholar bilan bitirgan. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Tahsilim va ishlarim$$, $$Ishlab yurib, Toshkent davlat universiteti jurnalistika fakultetining sirtqi bo'limida o'qiganman. «Toshkent oqshomi» gazetasida bo'lim mudiri, G'afur G'ulom nomidagi nashriyotda bosh muharrir o'rinbosari, so'ng «Sharq yulduzi» jurnalida bosh muharrir bo'lib ishlaganman.$$, $$["oqish", "tahsil", "universitet", "jurnalist", "muharrir", "gazeta"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$O'tkir Hoshimov qayerda o'qigan va qayerlarda ishlagan?$$, $$O'tkir Hoshimov ishlab yurib, Toshkent davlat universiteti jurnalistika fakultetining sirtqi bo'limida tahsil olgan. «Temiryo'lchi», «Toshkent haqiqati», «Qizil O'zbekiston» gazetalarida, 1966-1982-yillarda «Toshkent oqshomi»da bo'lim mudiri, 1982-1985-yillarda G'afur G'ulom nomidagi nashriyotda bosh muharrir o'rinbosari, 1985-yildan «Sharq yulduzi» jurnalida bosh muharrir bo'lib ishlagan. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Ilk kitobim$$, $$Ilk kitobim — «Po'lat chavandoz» 1962-yilda bosilib chiqqan. Hammasi bo'lib 50 dan ortiq asar yozganman, ular qariyb 2 million nusxada tarqalgan.$$, $$["polat", "chavandoz", "ilk", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$O'tkir Hoshimovning ilk kitobi qaysi va u jami qancha asar yozgan?$$, $$O'tkir Hoshimovning birinchi kitobi — «Po'lat chavandoz» 1962-yilda bosilib chiqqan. Yozuvchining asarlari ellikdan ortiq bo'lib, ularning umumiy adadi qariyb 2 milliondan oshadi. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Yoshlikdagi qissalarim$$, $$«Bahor qaytmaydi» (1970), «Qalbingga quloq sol» (1973) va «Nur borki, soya bor» (1976) asarlarimni yozganman. 1976-yilda shu asarlarim uchun Respublika Yoshlar mukofotiga sazovor bo'lganman.$$, $$["bahor", "qalb", "nur", "yoshlar", "mukofot", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$O'tkir Hoshimov yoshligida qaysi asarlari uchun Respublika Yoshlar mukofotini olgan?$$, $$O'tkir Hoshimov «Bahor qaytmaydi» (1970), «Qalbingga quloq sol» (1973), «Nur borki, soya bor» (1976) kabi asarlar yaratgan va 1976-yilda mazkur asarlari uchun Respublika Yoshlar mukofotiga sazovor bo'lgan. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Dunyoning ishlari»$$, $$1982-yilda «Dunyoning ishlari» qissam nashr etilgan. Bu asarim O'zbekiston Yozuvchilar uyushmasining Oybek mukofoti bilan taqdirlangan.$$, $$["dunyoning ishlari", "dunyo", "qissa", "asar", "kitob", "yoz", "oybek"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$«Dunyoning ishlari» asari qachon nashr etilgan va muallifga qanday mukofot keltirgan?$$, $$«Dunyoning ishlari» qissasi 1982-yilda yaratilgan. Bu asari uchun O'tkir Hoshimov O'zbekiston Yozuvchilar uyushmasining Oybek mukofoti bilan taqdirlangan. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$«Ikki eshik orasi»$$, $$«Ikki eshik orasi» romanim 1986-yilda nashr etilgan. Bu romanim 1986-yilda Hamza nomidagi Respublika Davlat mukofotiga sazovor bo'lgan.$$, $$["ikki eshik orasi", "eshik", "roman", "asar", "kitob", "yoz", "hamza"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$«Ikki eshik orasi» romani qachon nashr etilgan va muallif u uchun qanday mukofot olgan?$$, $$«Ikki eshik orasi» romani 1986-yilda nashr etilgan. Ushbu roman 1986-yilda Hamza nomidagi Respublika Davlat mukofotiga sazovor bo'lgan. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Keyingi asarlarim$$, $$2001-yilda «Daftar hoshiyasidagi bitiklar» kitobim chop etilgan. «Hazon bo'lgan bahor», «To'ylar muborak», «Vijdon dorisi» kabi sahna asarlari ham yozganman.$$, $$["daftar", "hoshiya", "bitik", "toylar", "vijdon", "sahna", "asar", "kitob", "yoz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$O'tkir Hoshimovning «Daftar hoshiyasidagi bitiklar» kitobi qachon chiqqan va u qanday sahna asarlari yozgan?$$, $$O'tkir Hoshimovning «Daftar hoshiyasidagi bitiklar» (2001) kitobi ijtimoiy-ma'naviy hayotda muayyan iz qoldirgan. U «Hazon bo'lgan bahor», «To'ylar muborak», «Vijdon dorisi» kabi sahna asarlari ham yaratgan. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Unvon va mukofotlarim$$, $$1991-yilda menga «O'zbekiston xalq yozuvchisi» unvoni berilgan. 1996-yilda «Mehnat shuhrati», 2001-yilda «Buyuk xizmatlari uchun» ordenlari bilan mukofotlanganman.$$, $$["mukofot", "orden", "unvon", "xalq", "shuhrat", "xizmat"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$O'tkir Hoshimov qanday unvon va ordenlarga sazovor bo'lgan?$$, $$O'tkir Hoshimovga 1991-yilda «O'zbekiston xalq yozuvchisi» unvoni berilgan. U 1996-yilda «Mehnat shuhrati» ordeni, 2001-yilda «Buyuk xizmatlari uchun» ordeni bilan mukofotlangan. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified, question_uz, detail_uz)
SELECT h.id, $$Umrimning oxiri$$, $$Men 2013-yil 24-mayda Toshkent shahrida vafot etganman.$$, $$["vafot", "oxir", "2013", "may"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari» bo'limi: O'tkir Hoshimov$$, TRUE,
       $$O'tkir Hoshimov qachon va qayerda vafot etgan?$$, $$O'tkir Hoshimov 2013-yil 24-mayda Toshkent shahrida vafot etgan. Manba: Ziyouz.com — «O'zbek ziyolilari» bo'limi.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$O'tkir Hoshimov «Ikki eshik orasi» romani uchun qaysi mukofotga sazovor bo'lgan?$$, $$["Oybek nomidagi mukofot", "Hamza nomidagi Respublika Davlat mukofoti", "«Mehnat shuhrati» ordeni", "Respublika Yoshlar mukofoti"]$$::jsonb, 1, $$O'tkir Hoshimov «Ikki eshik orasi» romani uchun 1986-yilda Hamza nomidagi Respublika Davlat mukofotiga sazovor bo'lgan. Oybek mukofotini esa «Dunyoning ishlari» qissasi uchun olgan.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';

INSERT INTO quiz_questions (hero_id, question_uz, options, correct_index, explanation_uz)
SELECT h.id, $$O'tkir Hoshimov qaysi yili «O'zbekiston xalq yozuvchisi» unvonini olgan?$$, $$["1986", "1991", "1996", "2001"]$$::jsonb, 1, $$O'tkir Hoshimovga «O'zbekiston xalq yozuvchisi» unvoni 1991-yilda berilgan. 1996-yilda «Mehnat shuhrati», 2001-yilda «Buyuk xizmatlari uchun» ordenlari bilan mukofotlangan.$$
  FROM heroes h WHERE h.slug = 'otkir-hoshimov';
