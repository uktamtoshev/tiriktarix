-- Galereyaga yangi ajdodlar (2-partiya): jadid ma'rifatparvarlari va XX asr adiblari.
--
-- MANBALAR: Ziyouz.com ensiklopedik bo'limlari («O'zbek ziyolilari»,
-- «Zamonaviy o'zbek she'riyati»). Hech narsa yoddan yozilmadi.
-- Qatag'on mavzusi ataylab quruq, bir jumlada berilgan — bolalar mahsuloti.
--
-- verified = TRUE — foydalanuvchi qarori (2026-08-01, V39 dagi kabi):
-- aks holda M1 dvijoki kartochkalarni o'qimaydi. Metodist ro'yxat
-- bo'yicha tekshiradi.


-- ===================== Mahmudxo'ja Behbudiy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'mahmudxoja-behbudiy', $$Mahmudxo'ja Behbudiy$$, $$Jadidlar yetakchisi$$, 1875, 1919, e.id,
       $$Samarqandda tug'ilgan ma'rifatparvar. Birinchi o'zbek dramasi «Padarkush»ni yozgan, «Samarqand» gazetasi va «Oyina» jurnalini chiqargan.$$, $$Assalomu alaykum! Men Mahmudxo'ja Behbudiyman. «Padarkush», gazetalarim va yangi maktablar haqida so'ra.$$, $$🎭$$, $$["behbudiy", "padarkush", "oyina", "samarqand gazetasi", "jadid", "drama", "teatr", "mufti", "ma'rifat", "darslik"]$$::jsonb
  FROM eras e WHERE e.code = 'jadidlar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1875-yilda Samarqandda, din olimlari oilasida tug'ilganman.$$, $$["tug'ilish", "samarqand", "1875", "oila"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ilm yo'lim$$, $$Arab tilini chuqur o'rganganman. 1902-yilda Makkaga borib, qaytishda xo'ja va mufti unvonlariga ega bo'lganman.$$, $$["ilm", "makka", "mufti", "1902", "safar"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Safarlarim$$, $$Qozon, Ufa va Orenburgga borib, tatar ziyolilari va nashrlari bilan tanishganman.$$, $$["qozon", "ufa", "orenburg", "tatar", "safar"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Maqolalarim$$, $$1901-yildan boshlab «Taraqqiy», «Shuhrat», «Turon» va boshqa nashrlarda maqolalar chop etganman.$$, $$["maqola", "taraqqiy", "shuhrat", "turon", "matbuot"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Gazeta va jurnalim$$, $$1912–1913-yillarda ona shahrimda «Samarqand» gazetasi va «Oyina» jurnalini ta'sis etganman.$$, $$["samarqand", "oyina", "gazeta", "jurnal", "1913"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Darsliklarim$$, $$«Qisqacha umumiy jug'rofiya» (1903), «Bolalar uchun kitob» (1904) va «Qisqacha islom tarixi» (1904) darsliklarini yozganman.$$, $$["darslik", "jug'rofiya", "kitob", "1903", "1904"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Padarkush» dramasi$$, $$1911-yilda «Padarkush» dramasini yozdim — u yangi o'zbek adabiyotining ilk drama asari bo'ldi.$$, $$["padarkush", "drama", "1911", "birinchi"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Padarkush» sahnada$$, $$«Padarkush» 1914-yil 25-yanvarda Samarqandda sahnaga qo'yilgan, so'ng Buxoro va Toshkent teatrlarida ko'rsatilgan.$$, $$["sahna", "teatr", "1914", "premyera"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Yangi maktab$$, $$Yangi usul maktablarini va ular uchun o'quv dasturlarini targ'ib qilganman.$$, $$["yangi usul", "maktab", "ta'lim", "dastur"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1919-yilda Qarshi shahrida qatl etilganman.$$, $$["vafot", "1919", "qarshi"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Mahmudxo'ja Behbudiy (1875–1919)$$, TRUE
  FROM heroes h WHERE h.slug = 'mahmudxoja-behbudiy';

-- ===================== Munavvarqori Abdurashidxonov =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'munavvarqori', $$Munavvarqori Abdurashidxonov$$, $$Adibi avval$$, 1878, 1931, e.id,
       $$Toshkentlik ma'rifatparvar. 1901-yilda jadid maktabini ochgan, «Adibi avval» darsligini yozgan, Turkiston xalq dorilfununining ilk rektori bo'lgan.$$, $$Assalomu alaykum! Men Munavvarqori Abdurashidxonovman. Yangi maktablar, darsliklarim va dorilfunun haqida so'ra.$$, $$📖$$, $$["munavvarqori", "adibi avval", "jadid maktabi", "dorilfunun", "xurshid", "darslik", "toshkent", "ta'lim", "rektor"]$$::jsonb
  FROM eras e WHERE e.code = 'jadidlar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1878-yilda Toshkentning Darxon mahallasida, mudarris oilasida tug'ilganman. Onam Xosiyat otin ham mudarris qizi edi.$$, $$["tug'ilish", "toshkent", "darxon", "1878", "oila"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$1885–1890-yillarda Buxorodagi Mir Arab madrasasida tahsil olganman. Qur'onni to'liq yod olib, hofiz bo'lganman.$$, $$["o'qish", "mir arab", "madrasa", "buxoro", "hofiz"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Jadid maktabim$$, $$1901-yilda o'z hovlimda yangi usul maktabini ochganman.$$, $$["maktab", "1901", "yangi usul", "hovli"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Adibi avval»$$, $$1907-yilda «Adibi avval» darsligini yozdim — u o'zbek tilidagi ilk alifbo kitoblaridan bo'lib, butun Turkiston maktablarida qo'llanildi.$$, $$["adibi avval", "alifbo", "darslik", "1907"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Boshqa darsliklarim$$, $$«Adib us-soniy» (1907), «Yer yuzi» (1916–1917) va «O'zbekcha til saboqligi» (1925–1926) darsliklarini yaratganman.$$, $$["adib us-soniy", "yer yuzi", "til saboqligi", "darslik"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Gazetalarim$$, $$1906-yilda «Xurshid» gazetasini tashkil etganman; «Najot» va «Kengash» gazetalarida ham ishlaganman.$$, $$["xurshid", "najot", "kengash", "gazeta", "1906"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Sadoi Turkiston»$$, $$1914–1915-yillarda «Sadoi Turkiston» gazetasida xizmat qilganman.$$, $$["sadoi turkiston", "gazeta", "1914"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Dorilfunun$$, $$1918-yil aprelida Turkiston xalq dorilfununining asoschisi va rektori etib saylanganman.$$, $$["dorilfunun", "rektor", "universitet", "1918"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Maorif ishim$$, $$Toshkent shahar maorif noziri va 1922-yilda Akademmarkaz raisi bo'lib ishlaganman.$$, $$["maorif", "nozir", "akademmarkaz", "1922"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1929-yilda qamoqqa olinib, 1931-yilda Moskvada qatl etilganman. 1991-yilda nomim oqlangan.$$, $$["vafot", "1931", "qamoq", "oqlanish"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Munavvar qori Abdurashidxonov (1878–1931)$$, TRUE
  FROM heroes h WHERE h.slug = 'munavvarqori';

-- ===================== Abdulla Avloniy =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'abdulla-avloniy', $$Abdulla Avloniy$$, $$Turon teatri asoschisi$$, 1878, 1934, e.id,
       $$Toshkentlik pedagog, shoir va teatr arbobi. «Turkiy guliston yoxud axloq» darsligini yozgan, jadid teatr truppasini tuzgan.$$, $$Assalomu alaykum! Men Abdulla Avloniyman. Maktabim, teatr truppam va «Turkiy guliston» haqida so'ra.$$, $$🎪$$, $$["avloniy", "turkiy guliston", "turon", "teatr", "taraqqiy", "shuhrat", "maktab", "axloq", "pedagog"]$$::jsonb
  FROM eras e WHERE e.code = 'jadidlar';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1878-yil 7-dekabrda Toshkentda, to'quvchi oilasida tug'ilganman.$$, $$["tug'ilish", "toshkent", "1878", "to'quvchi"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$O'qishim$$, $$1885–1895-yillarda maktabxona va madrasada o'qiganman. Arab, fors va rus tillarini mustaqil o'rganganman.$$, $$["o'qish", "madrasa", "til", "mustaqil"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Gazetalarim$$, $$1907-yilda o'z uyimda «Shuhrat» gazetasini chiqarganman; 1917-yilda «Turon» gazetasini nashr etganman.$$, $$["shuhrat", "turon", "gazeta", "1907", "1917"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Maktabim$$, $$1908-yilda Toshkentning Mirobod mahallasida yangi usul maktabini ochganman, 1912-yilda Degrezda ikki sinfli maktab tashkil etganman.$$, $$["maktab", "mirobod", "degrez", "1908", "1912"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Xayriya jamiyati$$, $$1909-yilda «Jamiyati xayriya» xayriya jamiyatini tuzganman.$$, $$["xayriya", "jamiyat", "1909"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Darsliklarim$$, $$«Birinchi muallim» (1911), «Ikkinchi muallim» (1912) va «Maktab gulistoni» (1915) darsliklarini yozganman.$$, $$["birinchi muallim", "ikkinchi muallim", "maktab gulistoni", "darslik"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Turkiy guliston»$$, $$1913-yilda «Turkiy guliston yoxud axloq» kitobimni chop etdim — u bolalarga odob-axloqdan saboq beradi.$$, $$["turkiy guliston", "axloq", "1913", "kitob"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Teatr truppam$$, $$1913-yilda teatr truppasini tuzib, 1910–1916-yillarda bir qancha pyesalarni tarjima qilib sahnalashtirdim.$$, $$["teatr", "truppa", "1913", "sahna", "pyesa"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Elchilik$$, $$1919–1920-yillarda Afg'onistonda siyosiy vakil bo'lib ishlaganman.$$, $$["afg'oniston", "elchi", "1919"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$So'nggi yillarim$$, $$1930–1934-yillarda O'rta Osiyo universitetida professor va kafedra mudiri bo'lganman. 1934-yil 24-avgustda vafot etganman.$$, $$["universitet", "professor", "vafot", "1934"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Abdulla Avloniy (1878–1934)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdulla-avloniy';

-- ===================== Abdurauf Fitrat =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'abdurauf-fitrat', $$Abdurauf Fitrat$$, $$Birinchi professor$$, 1886, 1938, e.id,
       $$Buxorolik olim, dramaturg va musiqashunos. «Munozara» asarini yozgan, Shashmaqomni notaga yozdirgan, o'zbek olimlaridan birinchilardan bo'lib professor unvonini olgan.$$, $$Assalomu alaykum! Men Abdurauf Fitratman. Asarlarim, til ilmi va Shashmaqom haqida so'ra.$$, $$🎼$$, $$["fitrat", "munozara", "sayha", "shashmaqom", "abulfayzxon", "professor", "buxoro", "istanbul", "til", "musiqa"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1886-yilda Buxoroda, ziyoli oilasida tug'ilganman.$$, $$["tug'ilish", "buxoro", "1886"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Taxallusim$$, $$1909–1913-yillarda Istanbul dorilfununida o'qidim; shu davrda «Fitrat» — «bilimdon» taxallusini oldim.$$, $$["istanbul", "taxallus", "fitrat", "o'qish", "1909"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Sayha»$$, $$1911-yilda «Sayha» («Chorlov») she'riy to'plamim chiqqan.$$, $$["sayha", "chorlov", "she'r", "1911"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Munozara»$$, $$1913-yilda Istanbulda «Munozara» asarim chop etilgan — unda eski va yangi qarashlar bahsi berilgan.$$, $$["munozara", "1913", "bahs", "islohot"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Dramalarim$$, $$«Qon», «Temur sag'anasi», «O'g'izxon», «Abulfayzxon» va «Arslon» kabi dramalar yozganman.$$, $$["drama", "abulfayzxon", "temur sag'anasi", "qon", "arslon"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Til ilmim$$, $$«Adabiyot qoidalari» va «Eski o'zbek adabiyoti namunalari» asarlarini yaratganman; til darsliklarim 1925–1930-yillarda besh marta chop etilgan.$$, $$["til", "adabiyot qoidalari", "grammatika", "darslik"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Professor unvoni$$, $$O'zbek olimlari orasida birinchilardan bo'lib professor unvonini olganman.$$, $$["professor", "unvon", "birinchi"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Musiqa maktabim$$, $$1921-yilda Sharq musiqa maktabini tashkil etib, Shashmaqom kuylarini notaga yozish ishlariga rahbarlik qilganman.$$, $$["shashmaqom", "musiqa", "nota", "1921", "maktab"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Musiqa kitobim$$, $$1927-yilda «O'zbek klassik musiqasi va uning tarixi» risolamni nashr ettirganman.$$, $$["musiqa kitobi", "1927", "risola", "tarix"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1938-yil 4-oktabrda Abdulla Qodiriy va Cho'lpon bilan birga qatag'on qurboni bo'lganman.$$, $$["vafot", "1938", "qatag'on"]$$::jsonb, $$Ziyouz.com — «O'zbek ziyolilari»: Abdurauf Fitrat (1886–1938)$$, TRUE
  FROM heroes h WHERE h.slug = 'abdurauf-fitrat';

-- ===================== Oybek =====================
INSERT INTO heroes (slug, name_uz, title_uz, birth_year, death_year, era_id,
                    bio_uz, greeting_uz, portrait_emoji, on_topic_keywords)
SELECT 'oybek', $$Oybek$$, $$«Navoiy» romani muallifi$$, 1905, 1968, e.id,
       $$Toshkentlik yozuvchi va shoir. Asl ismi — Muso Toshmuhammadov. «Qutlug' qon» va «Navoiy» romanlarini yozgan, Fanlar akademiyasi akademigi bo'lgan.$$, $$Assalomu alaykum! Men Oybekman. «Navoiy» romanim, she'rlarim va tarjimalarim haqida so'ra.$$, $$📚$$, $$["oybek", "navoiy romani", "qutlug' qon", "muso", "toshmuhammadov", "roman", "bolalik", "akademik", "tarjima"]$$::jsonb
  FROM eras e WHERE e.code = 'xx-asr';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tug'ilishim$$, $$Men 1905-yil 10-yanvarda Toshkentning Govkush mahallasida tug'ilganman. Asl ismim — Muso Toshmuhammadov, «Oybek» — taxallusim.$$, $$["tug'ilish", "toshkent", "govkush", "1905", "muso"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Ijodim boshlanishi$$, $$1922-yildan she'r yoza boshlaganman va umrimning oxirigacha ijod qildim.$$, $$["she'r", "1922", "ijod"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$She'riy to'plamlarim$$, $$«Tuyg'ular» davri to'plamlarim 1920–1930-yillarda chiqqan; «Fanga yurish» (1930) va «Tanlash» (1935) shular jumlasidan.$$, $$["to'plam", "she'r", "fanga yurish", "tanlash"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Qutlug' qon»$$, $$1940-yilda «Qutlug' qon» romanimni yozdim.$$, $$["qutlug' qon", "roman", "1940"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Navoiy» romani$$, $$«Navoiy» romanim 1944-yilda chiqqan — u o'zbek adabiyotidagi eng yirik tarixiy romanlardan biri sanaladi.$$, $$["navoiy", "roman", "1944", "tarixiy"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Boshqa romanlarim$$, $$«Oltin vodiydan shabadalar» (1949), «Quyosh qoraymas» (1954) va «Ulug' yo'l» (1963) romanlarini yozganman.$$, $$["oltin vodiy", "quyosh qoraymas", "ulug' yo'l", "roman"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$«Bolalik»$$, $$1963-yilda «Bolalik» xotira-qissamni yozdim — unda o'z bolaligim hikoya qilinadi.$$, $$["bolalik", "qissa", "xotira", "1963"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Akademiklik$$, $$1943-yilda O'zbekiston Fanlar akademiyasining haqiqiy a'zosi bo'lganman.$$, $$["akademik", "fanlar akademiyasi", "1943"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Tarjimalarim$$, $$Pushkinning «Yevgeniy Onegin», Lermontovning «Maskarad» va Molyerning «Tartyuf» asarlarini o'zbekchaga o'girganman.$$, $$["tarjima", "pushkin", "onegin", "lermontov", "molyer"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';
INSERT INTO fact_cards (hero_id, topic_uz, fact_uz, keywords, source, verified)
SELECT h.id, $$Umrimning oxiri$$, $$1968-yil 1-iyulda Toshkentda vafot etganman.$$, $$["vafot", "1968", "toshkent"]$$::jsonb, $$Ziyouz.com — «Zamonaviy o'zbek she'riyati»: Oybek (1905–1968)$$, TRUE
  FROM heroes h WHERE h.slug = 'oybek';

-- ===================== TEST SAVOLLARI (2-partiya) =====================

-- mahmudxoja-behbudiy: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$Mahmudxo'ja Behbudiy qachon va qayerda tug'ilgan?$$,
 $$["1875-yilda Samarqandda", "1878-yilda Toshkentda", "1886-yilda Buxoroda", "1894-yilda Qo'qonda"]$$, 0,
 $$Behbudiy 1875-yilda Samarqandda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$Behbudiy 1902-yilda qayerga safar qilgan?$$,
 $$["Istanbulga", "Makkaga", "Moskvaga", "Dehliga"]$$, 1,
 $$1902-yilda Makkaga borib, xo'ja va mufti unvonlari bilan qaytgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$Birinchi o'zbek dramasi qaysi?$$,
 $$["«Padarkush»", "«Abulfayzxon»", "«Yorqinoy»", "«Oltin devor»"]$$, 0,
 $$Behbudiyning «Padarkush»i yangi o'zbek adabiyotining ilk dramasi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$«Padarkush» qachon yozilgan?$$,
 $$["1905", "1911", "1914", "1917"]$$, 1,
 $$Drama 1911-yilda yozilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$«Padarkush» ilk bor qachon va qayerda sahnaga qo'yilgan?$$,
 $$["1914-yil 25-yanvarda Samarqandda", "1911-yilda Toshkentda", "1913-yilda Buxoroda", "1916-yilda Qo'qonda"]$$, 0,
 $$Premyera 1914-yil 25-yanvarda Samarqandda bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$Behbudiy qaysi jurnalni chiqargan?$$,
 $$["«Oyina»", "«Yoshlik»", "«Mushtum»", "«Guliston»"]$$, 0,
 $$1913-yilda «Oyina» jurnalini ta'sis etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$Behbudiy qaysi gazetani ta'sis etgan?$$,
 $$["«Xurshid»", "«Samarqand»", "«Turon»", "«Taraqqiy»"]$$, 1,
 $$O'z shahrida «Samarqand» gazetasini chiqargan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$Quyidagilardan qaysi biri Behbudiy darsligi?$$,
 $$["«Qisqacha umumiy jug'rofiya»", "«Adibi avval»", "«Turkiy guliston»", "«Birinchi muallim»"]$$, 0,
 $$«Qisqacha umumiy jug'rofiya» (1903) — Behbudiy darsligi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$Behbudiy qanday maktablarni targ'ib qilgan?$$,
 $$["Eski maktablarni", "Yangi usul maktablarini", "Faqat rus maktablarini", "Harbiy maktablarni"]$$, 1,
 $$U yangi usul maktablari va dasturlarini targ'ib qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy'), NULL,
 $$Behbudiy qachon vafot etgan?$$,
 $$["1917", "1919", "1925", "1931"]$$, 1,
 $$1919-yilda Qarshi shahrida qatl etilgan.$$);

-- munavvarqori: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$Munavvarqori qachon va qayerda tug'ilgan?$$,
 $$["1878-yilda Toshkentda", "1875-yilda Samarqandda", "1886-yilda Buxoroda", "1897-yilda Andijonda"]$$, 0,
 $$U 1878-yilda Toshkentning Darxon mahallasida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$Munavvarqori qaysi madrasada o'qigan?$$,
 $$["Mir Arabda", "Registonda", "Ulug'bek madrasasida", "Kukaldoshda"]$$, 0,
 $$1885–1890-yillarda Buxorodagi Mir Arab madrasasida tahsil olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$Munavvarqori jadid maktabini qachon ochgan?$$,
 $$["1895", "1901", "1907", "1918"]$$, 1,
 $$1901-yilda o'z hovlisida yangi usul maktabini ochgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$«Adibi avval» nima?$$,
 $$["She'riy to'plam", "Alifbo darsligi", "Gazeta", "Drama"]$$, 1,
 $$«Adibi avval» (1907) — o'zbek tilidagi ilk alifbo kitoblaridan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$«Adibi avval» qachon yozilgan?$$,
 $$["1901", "1907", "1914", "1925"]$$, 1,
 $$Darslik 1907-yilda yaratilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$Munavvarqori 1906-yilda qaysi gazetani tashkil etgan?$$,
 $$["«Xurshid»", "«Samarqand»", "«Sadoi Turkiston»", "«Oyina»"]$$, 0,
 $$1906-yilda «Xurshid» gazetasini tashkil etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$Munavvarqori qaysi oliy dargohning ilk rektori bo'lgan?$$,
 $$["ToshDU", "Turkiston xalq dorilfununi", "O'rta Osiyo universiteti", "Mir Arab madrasasi"]$$, 1,
 $$1918-yil aprelida Turkiston xalq dorilfununiga rektor etib saylangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$Quyidagilardan qaysi biri Munavvarqori darsligi?$$,
 $$["«Yer yuzi»", "«Maktab gulistoni»", "«Turkiy guliston»", "«Bolalar uchun kitob»"]$$, 0,
 $$«Yer yuzi» (1916–1917) — uning darsligi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$1922-yilda Munavvarqori qanday lavozimda ishlagan?$$,
 $$["Akademmarkaz raisi", "Vazir", "Muzey direktori", "Teatr rahbari"]$$, 0,
 $$U 1922-yilda Akademmarkaz raisi bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'munavvarqori'), NULL,
 $$Munavvarqori nomi qachon oqlangan?$$,
 $$["1956", "1970", "1991", "2000"]$$, 2,
 $$Uning nomi 1991-yilda oqlangan.$$);

-- abdulla-avloniy: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$Abdulla Avloniy qachon va qayerda tug'ilgan?$$,
 $$["1878-yil 7-dekabrda Toshkentda", "1875-yilda Samarqandda", "1886-yilda Buxoroda", "1905-yilda Toshkentda"]$$, 0,
 $$Avloniy 1878-yil 7-dekabrda Toshkentda, to'quvchi oilasida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$Avloniy qaysi tillarni mustaqil o'rgangan?$$,
 $$["Arab, fors va rus", "Ingliz va fransuz", "Xitoy va hind", "Faqat arab"]$$, 0,
 $$U arab, fors va rus tillarini mustaqil o'rgangan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$Avloniy 1907-yilda o'z uyida qaysi gazetani chiqargan?$$,
 $$["«Shuhrat»", "«Xurshid»", "«Oyina»", "«Najot»"]$$, 0,
 $$1907-yilda o'z uyida «Shuhrat» gazetasini chiqargan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$Avloniy yangi usul maktabini qayerda ochgan?$$,
 $$["Mirobodda", "Darxonda", "Registonda", "Govkushda"]$$, 0,
 $$1908-yilda Toshkentning Mirobod mahallasida maktab ochgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$1909-yilda Avloniy nimani tuzgan?$$,
 $$["Teatr truppasi", "«Jamiyati xayriya»", "Dorilfunun", "Bosmaxona"]$$, 1,
 $$1909-yilda «Jamiyati xayriya» xayriya jamiyatini tuzgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$«Turkiy guliston yoxud axloq» qachon chiqqan?$$,
 $$["1908", "1913", "1915", "1920"]$$, 1,
 $$Kitob 1913-yilda chop etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$«Turkiy guliston yoxud axloq» nima haqida?$$,
 $$["Odob-axloq haqida", "Geografiya haqida", "Matematika haqida", "Musiqa haqida"]$$, 0,
 $$U bolalarga odob-axloqdan saboq beradigan darslik.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$Avloniy teatr truppasini qachon tuzgan?$$,
 $$["1905", "1913", "1917", "1920"]$$, 1,
 $$1913-yilda teatr truppasini tashkil etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$1919–1920-yillarda Avloniy qayerda ishlagan?$$,
 $$["Afg'onistonda siyosiy vakil", "Moskvada elchi", "Istanbulda o'qituvchi", "Qozonda muharrir"]$$, 0,
 $$U Afg'onistonda siyosiy vakil bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdulla-avloniy'), NULL,
 $$Umrining so'nggi yillarida Avloniy qayerda ishlagan?$$,
 $$["O'rta Osiyo universitetida professor", "Maktabda o'qituvchi", "Teatrda rejissyor", "Gazetada muxbir"]$$, 0,
 $$1930–1934-yillarda universitetda professor va kafedra mudiri bo'lgan.$$);

-- abdurauf-fitrat: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$Abdurauf Fitrat qachon va qayerda tug'ilgan?$$,
 $$["1886-yilda Buxoroda", "1878-yilda Toshkentda", "1897-yilda Andijonda", "1905-yilda Samarqandda"]$$, 0,
 $$Fitrat 1886-yilda Buxoroda tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$«Fitrat» taxallusi qanday ma'noni anglatadi?$$,
 $$["Bilimdon", "Kurashchi", "Yulduz", "Ustoz"]$$, 0,
 $$«Fitrat» — «bilimdon» degan ma'noni bildiradi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$Fitrat qayerda oliy tahsil olgan?$$,
 $$["Istanbul dorilfununida", "Moskva universitetida", "Qohira universitetida", "Toshkentda"]$$, 0,
 $$1909–1913-yillarda Istanbul dorilfununida o'qigan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$«Munozara» qachon va qayerda chop etilgan?$$,
 $$["1913-yilda Istanbulda", "1911-yilda Buxoroda", "1920-yilda Toshkentda", "1925-yilda Moskvada"]$$, 0,
 $$«Munozara» 1913-yilda Istanbulda nashr etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$Quyidagilardan qaysi biri Fitrat dramasi?$$,
 $$["«Abulfayzxon»", "«Padarkush»", "«Oltin devor»", "«Yorqinoy»"]$$, 0,
 $$«Abulfayzxon» — Fitrat qalamiga mansub drama.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$Fitrat qaysi she'riy to'plamni yozgan?$$,
 $$["«Sayha»", "«Buloqlar»", "«Munojot»", "«Tong nafasi»"]$$, 0,
 $$«Sayha» («Chorlov») to'plami 1911-yilda chiqqan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$Fitrat 1921-yilda nimani tashkil etgan?$$,
 $$["Sharq musiqa maktabini", "Teatr truppasini", "Dorilfununni", "Gazetani"]$$, 0,
 $$1921-yilda Sharq musiqa maktabini tashkil etgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$Fitrat rahbarligida nima notaga yozilgan?$$,
 $$["Shashmaqom kuylari", "Marsh kuylari", "Opera ariyalari", "Xalq qo'shiqlari"]$$, 0,
 $$U Shashmaqom kuylarini notaga yozish ishlariga rahbarlik qilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$Fitrat qanday unvonga birinchilardan bo'lib erishgan?$$,
 $$["Professor", "Akademik", "Xalq shoiri", "Qahramon"]$$, 0,
 $$U o'zbek olimlari orasida birinchilardan bo'lib professor unvonini olgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'abdurauf-fitrat'), NULL,
 $$Fitrat umri qanday yakunlangan?$$,
 $$["1938-yilda qatag'on qurboni bo'lgan", "Uzoq umr ko'rgan", "Xorijga ketgan", "Noma'lum"]$$, 0,
 $$1938-yil 4-oktabrda qatag'on qurboni bo'lgan.$$);

-- oybek: 10 ta savol
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$Oybekning asl ismi nima?$$,
 $$["Muso Toshmuhammadov", "Abdulhamid Sulaymon o'g'li", "Abdurauf Fitrat", "G'afur G'ulom"]$$, 0,
 $$Oybek — taxallus; asl ismi Muso Toshmuhammadov.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$Oybek qachon va qayerda tug'ilgan?$$,
 $$["1905-yil 10-yanvarda Toshkentda", "1897-yilda Andijonda", "1894-yilda Toshkentda", "1915-yilda Samarqandda"]$$, 0,
 $$U 1905-yil 10-yanvarda Toshkentning Govkush mahallasida tug'ilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$Oybek ijodini qachon boshlagan?$$,
 $$["1922-yildan", "1930-yildan", "1940-yildan", "1950-yildan"]$$, 0,
 $$1922-yildan she'r yoza boshlagan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$«Qutlug' qon» romani qachon yozilgan?$$,
 $$["1930", "1940", "1944", "1954"]$$, 1,
 $$«Qutlug' qon» 1940-yilda yozilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$«Navoiy» romani qachon chiqqan?$$,
 $$["1940", "1944", "1949", "1963"]$$, 1,
 $$«Navoiy» romani 1944-yilda nashr etilgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$«Navoiy» romani nimasi bilan mashhur?$$,
 $$["Eng yirik tarixiy romanlardan biri", "Birinchi she'riy roman", "Tarjima asar", "Bolalar kitobi"]$$, 0,
 $$U o'zbek adabiyotidagi eng yirik tarixiy romanlardan sanaladi.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$«Bolalik» asari qanday janrda?$$,
 $$["Xotira-qissa", "Roman", "Drama", "She'riy doston"]$$, 0,
 $$«Bolalik» (1963) — xotira-qissa.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$Oybek qachon akademik bo'lgan?$$,
 $$["1938", "1943", "1950", "1960"]$$, 1,
 $$1943-yilda O'zbekiston Fanlar akademiyasining haqiqiy a'zosi bo'lgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$Oybek qaysi asarni o'zbekchaga tarjima qilgan?$$,
 $$["«Yevgeniy Onegin»", "«Ilohiy komediya»", "«Hamlet»", "«Shohnoma»"]$$, 0,
 $$Pushkinning «Yevgeniy Onegin» asarini o'girgan.$$);
INSERT INTO quiz_questions (hero_id, era_id, question_uz, options, correct_index, explanation_uz) VALUES
((SELECT id FROM heroes WHERE slug = 'oybek'), NULL,
 $$Oybek qachon vafot etgan?$$,
 $$["1958", "1968", "1978", "1988"]$$, 1,
 $$U 1968-yil 1-iyulda Toshkentda vafot etgan.$$);
