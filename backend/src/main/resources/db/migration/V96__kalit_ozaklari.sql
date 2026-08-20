-- Yangi ajdodlar (V94) kalit so'zlarini dvigatel konvensiyasiga keltirish.
--
-- MUAMMO. FactCardRetrievalEngine savol ichida kalit so'zni SUBSTRING sifatida
-- qidiradi, shuning uchun bazadagi eski kalitlar o'zak holida yoziladi
-- («tugil» — «tug'ilgansiz» ni ham topadi). V94 agentlari esa to'liq
-- so'zshakllarni yozgan («tug'ilish»), va «Qayerda tug'ilgansiz?» savoli
-- kartochkani topolmay qolardi. Har bir kalitga 5 harfli o'zak-prefiks
-- qo'shildi; asl kalitlar saqlanadi.

UPDATE fact_cards SET keywords = $$["bug'", "termiz", "termi", "824", "hijriy 209", "hijri", "surxondaryo", "surxo", "tug'ilish", "tugil"]$$::jsonb WHERE id = 1867;
UPDATE fact_cards SET keywords = $$["al-bug'iy", "az-zariyr", "taxallus", "taxal", "laqab", "ko'zi ojiz"]$$::jsonb WHERE id = 1868;
UPDATE fact_cards SET keywords = $$["safar", "makka", "madina", "madin", "iroq", "xuroson", "xuros", "850"]$$::jsonb WHERE id = 1869;
UPDATE fact_cards SET keywords = $$["al-buxoriy", "muslim", "musli", "abu dovud", "ustoz", "shogird", "shogi", "muhaddis", "muhad"]$$::jsonb WHERE id = 1870;
UPDATE fact_cards SET keywords = $$["xotira", "xotir", "yod", "yetmish hadis", "yetmi", "makka", "quvvai hofiza", "quvva", "hofiz"]$$::jsonb WHERE id = 1871;
UPDATE fact_cards SET keywords = $$["sahiyh", "sahiy", "hasan", "zaiyf", "g'ariyb", "gariy", "isnod", "daraja", "daraj"]$$::jsonb WHERE id = 1872;
UPDATE fact_cards SET keywords = $$["al-jomi' as-sahiyh", "sunan at-termiziy", "884", "hadis to'plami", "topla", "kutub sitta"]$$::jsonb WHERE id = 1873;
UPDATE fact_cards SET keywords = $$["asarlar", "asarl", "kitob", "al-ilal", "kitob uz-zuhd", "meros"]$$::jsonb WHERE id = 1874;
UPDATE fact_cards SET keywords = $$["ash-shamoil", "payg'ambar", "payga", "408 hadis", "56 bob", "fazilatlar", "fazil"]$$::jsonb WHERE id = 1875;
UPDATE fact_cards SET keywords = $$["892", "vafot", "bug'", "termiz", "termi", "dafn"]$$::jsonb WHERE id = 1876;
UPDATE fact_cards SET keywords = $$["zamaxshar", "zamax", "xorazm", "xoraz", "1075", "tug'ilish", "tugil", "abulqosim", "abulq", "otam"]$$::jsonb WHERE id = 1877;
UPDATE fact_cards SET keywords = $$["bolalik", "bolal", "ot", "oyoq", "tikuvchilik", "tikuv", "ilm", "sinov"]$$::jsonb WHERE id = 1878;
UPDATE fact_cards SET keywords = $$["ustozlar", "ustoz", "abu mudar isfahoniy", "isfah", "buxoro", "buxor", "arab tili", "xattotlik", "xatto"]$$::jsonb WHERE id = 1879;
UPDATE fact_cards SET keywords = $$["safar", "bag'dod", "bagdo", "marv", "nishopur", "nisho", "damashq", "damas", "isfahon", "isfah", "makka"]$$::jsonb WHERE id = 1880;
UPDATE fact_cards SET keywords = $$["jorulloh", "jorul", "makka", "laqab", "faxru xorazm", "xoraz", "ustoz ud-dunyo"]$$::jsonb WHERE id = 1881;
UPDATE fact_cards SET keywords = $$["al-kashshof", "tafsir", "tafsi", "qur'on", "makka", "al-azhar", "qo'lyozma", "qolyo"]$$::jsonb WHERE id = 1882;
UPDATE fact_cards SET keywords = $$["muqaddimat ul-adab", "muqad", "otsiz", "lug'at", "turkiy", "turki", "forsiy", "forsi", "1137"]$$::jsonb WHERE id = 1883;
UPDATE fact_cards SET keywords = $$["al-mufassal", "grammatika", "gramm", "arab tili", "1121", "shuhrat", "shuhr"]$$::jsonb WHERE id = 1884;
UPDATE fact_cards SET keywords = $$["asarlar", "asarl", "50", "25", "shogirdlar", "shogi", "200", "ilm"]$$::jsonb WHERE id = 1885;
UPDATE fact_cards SET keywords = $$["vafot", "1144", "ko'hna urganch", "urgan", "xorazm", "xoraz", "maqbara", "maqba"]$$::jsonb WHERE id = 1886;
UPDATE fact_cards SET keywords = $$["1123", "rishton", "risht", "marg'ilon", "margi", "farg'ona vodiysi", "fargo", "vodiy", "tug'ilgan joyi", "tugil"]$$::jsonb WHERE id = 1887;
UPDATE fact_cards SET keywords = $$["ali", "burhoniddin", "burho", "unvon", "din dalili", "dalil", "abul hasan", "nisba"]$$::jsonb WHERE id = 1888;
UPDATE fact_cards SET keywords = $$["marg'ilon", "margi", "sunduqul orifiyn", "sundu", "orifi", "oriflar makoni", "orifl", "makon", "mavlono", "mavlo", "ulamolar", "ulamo"]$$::jsonb WHERE id = 1889;
UPDATE fact_cards SET keywords = $$["hidoya", "hidoy", "chillaxona", "chill", "sohibi hidoya chillaxonasi", "sohib", "pur siddiq", "siddi", "marg'ilon", "margi"]$$::jsonb WHERE id = 1890;
UPDATE fact_cards SET keywords = $$["samarqand", "samar", "tahsil", "tahsi", "ilmiy markaz", "marka", "munozara", "munoz", "olimlar", "oliml"]$$::jsonb WHERE id = 1891;
UPDATE fact_cards SET keywords = $$["hidoya", "hidoy", "1178", "hijriy 573", "hijri", "fiqh", "hanafiy", "hanaf", "samarqand", "samar"]$$::jsonb WHERE id = 1892;
UPDATE fact_cards SET keywords = $$["bidoyat al-mubtadiy", "bidoy", "kifoyat al-muntahiy", "kifoy", "nashr al-mazhab", "kitob al-faroid", "asarlar", "asarl"]$$::jsonb WHERE id = 1893;
UPDATE fact_cards SET keywords = $$["ustozlar", "ustoz", "kitob ul-mashoyix", "an-nasafiy", "al-hinduvoniy", "shayxlar", "shayx"]$$::jsonb WHERE id = 1894;
UPDATE fact_cards SET keywords = $$["iroq", "safar", "al-quduriy", "jome' us-sag'ir", "fiqh"]$$::jsonb WHERE id = 1895;
UPDATE fact_cards SET keywords = $$["1197", "vafot", "samarqand", "samar", "chokardiza", "choka", "haj", "hijriy 593", "hijri"]$$::jsonb WHERE id = 1896;
UPDATE fact_cards SET keywords = $$["sayot", "xiva", "xorazm", "xoraz", "1145", "tug'ilgan joy", "tugil"]$$::jsonb WHERE id = 1897;
UPDATE fact_cards SET keywords = $$["ahmad ibn umar", "shayxi valiytarosh", "shayx", "valiy", "laqab", "avliyo", "avliy"]$$::jsonb WHERE id = 1898;
UPDATE fact_cards SET keywords = $$["kubraviya", "kubra", "tariqat", "tariq", "tasavvuf", "tasav", "xufiya zikr", "xufiy", "markaziy osiyo", "marka", "eron"]$$::jsonb WHERE id = 1899;
UPDATE fact_cards SET keywords = $$["al-usul al-ashara", "favoyih ul-jamol", "favoy", "tafsir", "tafsi", "sharh us-sunna", "asarlar", "asarl"]$$::jsonb WHERE id = 1900;
UPDATE fact_cards SET keywords = $$["arab tili", "forsiy", "forsi", "fi odob us-solikin", "soliklar odobi", "solik", "qo'llanma", "qolla"]$$::jsonb WHERE id = 1901;
UPDATE fact_cards SET keywords = $$["ruboiy", "ruboi", "she'riyat", "sheri", "ishq", "solik", "haqiqat", "haqiq", "tasavvuf", "tasav"]$$::jsonb WHERE id = 1902;
UPDATE fact_cards SET keywords = $$["muridlar", "murid", "mo'g'ullar", "mogul", "xorazm", "xoraz", "shogirdlar", "shogi", "bosqin", "bosqi"]$$::jsonb WHERE id = 1903;
UPDATE fact_cards SET keywords = $$["mudofaa", "mudof", "shamshir", "shams", "xorazm", "xoraz", "qahramonlik", "qahra", "yov", "shahid", "shahi"]$$::jsonb WHERE id = 1904;
UPDATE fact_cards SET keywords = $$["1221", "shahid", "shahi", "vafot", "bayroq", "bayro", "mudofaa", "mudof", "o'q"]$$::jsonb WHERE id = 1905;
UPDATE fact_cards SET keywords = $$["1318", "buxoro", "buxor", "qasri hinduyon", "hindu", "qasri orifon", "orifo", "tavallud", "taval", "tug'ilgan", "tugil"]$$::jsonb WHERE id = 1906;
UPDATE fact_cards SET keywords = $$["tasavvuf", "tasav", "qur'on", "tafsir", "tafsi", "hadis", "ilm", "yoshlik", "yoshl"]$$::jsonb WHERE id = 1907;
UPDATE fact_cards SET keywords = $$["naqshband", "naqsh", "laqab", "dehqonchilik", "dehqo", "shoyi", "hunar"]$$::jsonb WHERE id = 1908;
UPDATE fact_cards SET keywords = $$["abdulholiq g'ijduvoniy", "abdul", "gijdu", "pir", "ustod", "ta'limot", "talim"]$$::jsonb WHERE id = 1909;
UPDATE fact_cards SET keywords = $$["hayotnoma", "hayot", "dalili oshiqon", "dalil", "oshiq", "odob al-solikin", "13 ta asar", "tasavvuf", "tasav", "kitob"]$$::jsonb WHERE id = 1910;
UPDATE fact_cards SET keywords = $$["naqshbandiya", "naqsh", "tariqat", "tariq", "arabiston", "arabi", "eron", "markaziy osiyo", "marka", "targ'ib", "targi"]$$::jsonb WHERE id = 1911;
UPDATE fact_cards SET keywords = $$["dast ba koru dil ba yor", "shior", "qo'l ishda", "olloh dilda", "mehnat", "mehna"]$$::jsonb WHERE id = 1912;
UPDATE fact_cards SET keywords = $$["balogardon", "balog", "bahouddin", "bahou", "dinning faxri", "dinni", "karomat", "karom", "nom"]$$::jsonb WHERE id = 1913;
UPDATE fact_cards SET keywords = $$["amir temur", "alisher navoiy", "alish", "navoi", "abdurahmon jomiy", "abdur", "maxtumquli", "maxtu", "izdoshlar", "izdos", "naqshbandiya yo'li", "naqsh"]$$::jsonb WHERE id = 1914;
UPDATE fact_cards SET keywords = $$["1389", "vafot", "qishloq", "qishl", "1993", "675 yillik", "yilli"]$$::jsonb WHERE id = 1915;
UPDATE fact_cards SET keywords = $$["qo'qon", "1850", "taxallus", "taxal", "mirzaxo'ja", "mirza", "oyshabibi", "oysha", "tug'ilish", "tugil"]$$::jsonb WHERE id = 1916;
UPDATE fact_cards SET keywords = $$["oyshabibi", "oysha", "she'riyat", "sheri", "navoiy", "navoi", "jomiy", "nizomiy", "nizom", "fuzuliy", "fuzul"]$$::jsonb WHERE id = 1917;
UPDATE fact_cards SET keywords = $$["maktab", "makta", "moxlar oyim", "moxla", "madrasa", "madra", "nodira", "nodir", "buxoro", "buxor", "tahsil", "tahsi"]$$::jsonb WHERE id = 1918;
UPDATE fact_cards SET keywords = $$["1876", "mirzalik", "mirza", "yer qurilishi", "quril", "mahkama", "mahka", "qo'qon", "ijod"]$$::jsonb WHERE id = 1919;
UPDATE fact_cards SET keywords = $$["hazrat", "hazra", "madrasa", "madra", "hujra", "1885", "qashshoqlik", "qashs"]$$::jsonb WHERE id = 1920;
UPDATE fact_cards SET keywords = $$["hajviyot", "hajvi", "tanobchilar", "tanob", "saylov", "saylo", "devonamen", "devon", "ko'samen", "kosam", "pashshalar", "pashs"]$$::jsonb WHERE id = 1921;
UPDATE fact_cards SET keywords = $$["sayohatnoma", "sayoh", "4 qism", "vazn", "band", "xalq turmushi", "turmu", "qishloq", "qishl"]$$::jsonb WHERE id = 1922;
UPDATE fact_cards SET keywords = $$["toshkent", "toshk", "1887", "1892", "almaiy", "almai", "nodim", "safar"]$$::jsonb WHERE id = 1923;
UPDATE fact_cards SET keywords = $$["ishchilar mavzusi", "ishch", "mavzu", "maskovchi boy", "masko", "voqeai viktor", "voqea", "vikto", "lirika", "lirik", "do'stlik", "dostl", "optimizm", "optim"]$$::jsonb WHERE id = 1924;
UPDATE fact_cards SET keywords = $$["1903", "25-may", "vafot", "qo'qon", "umr oxiri"]$$::jsonb WHERE id = 1925;
UPDATE fact_cards SET keywords = $$["1859", "qo'qon", "zokirjon", "zokir", "taxallus", "taxal", "furqat", "furqa"]$$::jsonb WHERE id = 1926;
UPDATE fact_cards SET keywords = $$["maktab", "makta", "madrasa", "madra", "xattotlik", "xatto", "arab tili", "1873"]$$::jsonb WHERE id = 1927;
UPDATE fact_cards SET keywords = $$["navoiy", "navoi", "fors tili", "nazira", "nazir", "taxmis", "taxmi", "adabiyot", "adabi"]$$::jsonb WHERE id = 1928;
UPDATE fact_cards SET keywords = $$["yangi marg'ilon", "margi", "1876", "savdo", "taxallus", "taxal", "tog'a"]$$::jsonb WHERE id = 1929;
UPDATE fact_cards SET keywords = $$["toshkent", "toshk", "1889", "gazeta", "gazet", "turkiston viloyatining gazeti", "turki", "viloy", "publitsistika", "publi"]$$::jsonb WHERE id = 1930;
UPDATE fact_cards SET keywords = $$["ilm xosiyati", "xosiy", "gimnaziya", "gimna", "vistavka xususida", "vista", "xusus", "maqola", "maqol", "ma'rifat", "marif"]$$::jsonb WHERE id = 1931;
UPDATE fact_cards SET keywords = $$["hammomi xayol", "hammo", "chor darvesh", "darve", "nuh manzar", "manza", "hajnoma", "hajno", "tarjima", "tarji"]$$::jsonb WHERE id = 1932;
UPDATE fact_cards SET keywords = $$["sayding qo'yaber sayyod", "saydi", "qoyab", "sayyo", "musaddas", "musad", "erkinlik", "erkin", "zulm", "she'r"]$$::jsonb WHERE id = 1933;
UPDATE fact_cards SET keywords = $$["istanbul", "istan", "makka", "hindiston", "hindi", "kashmir", "kashm", "tibet", "safar"]$$::jsonb WHERE id = 1934;
UPDATE fact_cards SET keywords = $$["yorkent", "yorke", "1893", "1909", "vafot", "dongdor", "dongd", "tabiblik", "tabib"]$$::jsonb WHERE id = 1935;
UPDATE fact_cards SET keywords = $$["1907", "17-sentyabr", "qo'qon", "tug'ilgan", "tugil"]$$::jsonb WHERE id = 1936;
UPDATE fact_cards SET keywords = $$["universitet", "unive", "pedagogika", "pedag", "1930", "o'rta osiyo"]$$::jsonb WHERE id = 1937;
UPDATE fact_cards SET keywords = $$["1924", "oy kuyganda", "kuyga", "mushtum", "musht", "norin shilpiq", "shilp", "she'r", "taxallus", "taxal"]$$::jsonb WHERE id = 1938;
UPDATE fact_cards SET keywords = $$["boshsiz odam", "boshs", "1929", "olam yasharadi", "yasha", "1935", "hikoya", "hikoy", "to'plam", "topla"]$$::jsonb WHERE id = 1939;
UPDATE fact_cards SET keywords = $$["sarob", "1935", "roman", "qo'shchinor chiroqlari", "qoshc", "chiro", "1951"]$$::jsonb WHERE id = 1940;
UPDATE fact_cards SET keywords = $$["sinchalak", "sinch", "1958", "o'tmishdan ertaklar", "otmis", "ertak", "1965", "muhabbat", "muhab", "1968", "qissa"]$$::jsonb WHERE id = 1941;
UPDATE fact_cards SET keywords = $$["shohi so'zana", "sozan", "og'riq tishlar", "tishl", "tobutdan tovush", "tobut", "tovus", "ayajonlarim", "ayajo", "komediya", "komed", "drama"]$$::jsonb WHERE id = 1942;
UPDATE fact_cards SET keywords = $$["tarjima", "tarji", "pushkin", "pushk", "tolstoy", "tolst", "gogol", "chexov", "chexo", "rus adabiyoti", "adabi"]$$::jsonb WHERE id = 1943;
UPDATE fact_cards SET keywords = $$["1968", "25-may", "moskva", "moskv", "vafot", "xalq yozuvchisi", "yozuv", "hamza mukofoti", "mukof", "1966", "1967"]$$::jsonb WHERE id = 1944;
UPDATE fact_cards SET keywords = $$["2000", "buyuk xizmatlari uchun", "xizma", "orden", "xotira", "xotir"]$$::jsonb WHERE id = 1945;

UPDATE heroes SET on_topic_keywords = $$["imom at-termiziy", "abu iso", "muhaddis", "muhad", "hadis", "al-jomi' as-sahiyh", "sunan at-termiziy"]$$::jsonb WHERE id = 63;
UPDATE heroes SET on_topic_keywords = $$["zamaxshariy", "zamax", "jorulloh", "jorul", "al-kashshof", "muqaddimat ul-adab", "muqad", "xorazm", "xoraz", "tilshunos", "tilsh"]$$::jsonb WHERE id = 64;
UPDATE heroes SET on_topic_keywords = $$["burhoniddin marg'inoniy", "burho", "margi", "hidoya", "hidoy", "faqih", "marg'ilon", "rishton", "risht", "sohibi hidoya", "sohib"]$$::jsonb WHERE id = 65;
UPDATE heroes SET on_topic_keywords = $$["najmiddin kubro", "najmi", "kubraviya", "kubra", "shayxi valiytarosh", "shayx", "valiy", "xorazm", "xoraz", "tasavvuf", "tasav", "ruboiy", "ruboi"]$$::jsonb WHERE id = 66;
UPDATE heroes SET on_topic_keywords = $$["bahouddin naqshband", "bahou", "naqsh", "naqshbandiya", "balogardon", "balog", "hayotnoma", "hayot", "qasri orifon", "orifo", "buxoro", "buxor"]$$::jsonb WHERE id = 67;
UPDATE heroes SET on_topic_keywords = $$["muqimiy", "muqim", "muhammad aminxo'ja", "muham", "aminx", "sayohatnoma", "sayoh", "tanobchilar", "tanob", "hajviyot", "hajvi", "qo'qon"]$$::jsonb WHERE id = 68;
UPDATE heroes SET on_topic_keywords = $$["furqat", "furqa", "zokirjon", "zokir", "shoir", "publitsist", "publi", "sayding qo'yaber sayyod", "saydi", "qoyab", "sayyo", "yorkent", "yorke"]$$::jsonb WHERE id = 69;
UPDATE heroes SET on_topic_keywords = $$["abdulla qahhor", "abdul", "qahho", "sarob", "o'tmishdan ertaklar", "otmis", "ertak", "sinchalak", "sinch", "hikoya", "hikoy", "yozuvchi", "yozuv"]$$::jsonb WHERE id = 70;
