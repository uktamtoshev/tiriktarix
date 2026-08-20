-- «Batafsil» matnlarini KENGAYTIRISH — yakuniy tozalash.
--
-- V70–V87 da butun-butun to'plamlar qayta yozilgan edi. Bu migratsiyada esa
-- alohida qolib ketgan kartochkalar tuzatiladi: ularning ikkinchi va uchinchi
-- xatboshisi yaxshi, faqat BIRINCHI xatboshi kartochkadagi faktni takrorlaydi.
--
-- USUL. Butun matn qayta yozilmaydi — faqat birinchi xatboshi almashtiriladi,
-- qolgan qismi o'z holicha saqlanadi. Shu bois har bir UPDATE quyidagicha:
--   yangi birinchi xatboshi || E'\n\n' || eski matnning qolgan qismi.
--
-- MANBA. V79–V87 qoidasi saqlanadi: TASHQI manba ishlatilmagan. Yangi
-- xatboshilar bazadagi tekshirilgan kartochkalardan va atama izohlaridan
-- yig'ilgan. Yangi sana, ism yoki raqam qo'shilmagan.

-- ================================= ABDULLA AVLONIY =================================

UPDATE fact_cards SET detail_uz = $$Gazetani o'z uyidan chiqarish nashrning naqadar kichik imkoniyat bilan boshlanganini ko'rsatadi: alohida tahririyat ham, bino ham yo'q edi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Gazetalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

UPDATE fact_cards SET detail_uz = $$Ikki maktab orasida to'rt yil bor va ular bir-biridan farq qiladi: keyingisi ikki sinfli, ya'ni kengroq dasturga ega bo'lgan.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Maktabim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

UPDATE fact_cards SET detail_uz = $$Siyosiy vakil — bugungi til bilan aytganda elchi. Bu vazifa til bilish, muomala va vaziyatni tez baholashni talab qiladi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Elchilik$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

UPDATE fact_cards SET detail_uz = $$«Padarkush» — o'zbek dramaturgiyasining birinchi asarlaridan biri; uni Mahmudxo'ja Behbudiy Samarqandda yozgan.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Ilk spektakl$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'abdulla-avloniy');

-- ================================= HUSAYN BOYQARO =================================

UPDATE fact_cards SET detail_uz = $$Mirxond va Xondamir bobo va nabira bo'lgan — ya'ni tarixnavislik bu oilada kasb sifatida uzatilgan.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Saroyimdagi tarixchilar$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

UPDATE fact_cards SET detail_uz = $$Do'stlikning davlat ishiga aylanishi kam uchraydigan hol: odatda hukmdor yaqinini emas, tajribali amaldorni tanlaydi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Navoiyga ishonchim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

UPDATE fact_cards SET detail_uz = $$Muhrdor — hukmdor muhrini saqlovchi mansabdor; uning qo'lidan o'tmagan hujjat kuchga ega bo'lmasdi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Do'stim Navoiy$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

UPDATE fact_cards SET detail_uz = $$Umarshayx Mirzo Amir Temurning o'g'illaridan biri edi; undan tarqalgan avlod temuriylar xonadonining alohida tarmog'ini tashkil qilgan.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Temuriylar shajaram$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'husayn-boyqaro');

-- ==================================== CHO'LPON ====================================

UPDATE fact_cards SET detail_uz = $$Uchalamiz uch xil sohada ishlaganmiz: Qodiriy — roman, Fitrat — drama va ilmiy nasr, men esa asosan she'riyat.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Zamondoshlarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

UPDATE fact_cards SET detail_uz = $$Drama studiyasi maxsus ochilgan edi: uning vazifasi o'zbek teatri uchun professional aktyorlar tayyorlash bo'lgan.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Moskvadagi yillarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'cholpon');

-- ========================= MUNAVVARQORI ABDURASHIDXONOV =========================

UPDATE fact_cards SET detail_uz = $$Oilamizda ta'lim ikki tomondan kelgan: otam ham, onamning otasi ham mudarris bo'lgan.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

UPDATE fact_cards SET detail_uz = $$Maktab uchun alohida bino qurish imkoni yo'q edi, shuning uchun dars o'z hovlimda o'tkazilgan — jadid maktablarining ko'pi shunday boshlangan.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Jadid maktabim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

UPDATE fact_cards SET detail_uz = $$Harakat ishtirokchisining o'z qo'li bilan yozgan xotirasi tarixchi uchun alohida qimmatga ega: unda hujjatda qolmaydigan tafsilotlar saqlanadi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Xotiralar kitobim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

UPDATE fact_cards SET detail_uz = $$Imlo masalasi o'sha davrdagi eng keskin bahslardan biri edi: alifbo va yozuv qoidalari hali qat'iy belgilanmagan edi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Til va imlo qurultoyi$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'munavvarqori');

-- ================================= IS'HOQXON IBRAT =================================

UPDATE fact_cards SET detail_uz = $$To'raqo'rg'on Namangan yaqinidagi qishloq. Men umrimning katta qismini shu yerda o'tkazganman va bosmaxonamni ham aynan shu qishloqda ochganman.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Tug'ilishim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

UPDATE fact_cards SET detail_uz = $$Bosmaxonani poytaxtda emas, qishloqda ochish g'ayrioddiy qadam edi: bunday korxonalar odatda yirik shaharlarda joylashardi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Bosmaxonam$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

UPDATE fact_cards SET detail_uz = $$Mahalliy tarix yozish o'sha davrda kam uchraydigan ish edi: mualliflar odatda umumiy tarix yoki sulolalar solnomasini yozardi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$«Tarixi Farg'ona»$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

UPDATE fact_cards SET detail_uz = $$«Turkiston viloyatining gazeti» o'lkadagi eng qadimgi nashrlardan biri bo'lgan va u mahalliy tilda chiqardi.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Gazetalardagi maqolalarim$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'ishoqxon-ibrat');

-- =============================== MAHMUDXO'JA BEHBUDIY ===============================

UPDATE fact_cards SET detail_uz = $$Qarshi — Qashqadaryo vohasining eng yirik shahri; uning tarixi juda qadimiy va u turli davrlarda turlicha atalgan.$$
  || E'\n\n' || substring(detail_uz from position(E'\n\n' in detail_uz) + 2)
 WHERE topic_uz = $$Shahar nomimda$$ AND hero_id = (SELECT id FROM heroes WHERE slug = 'mahmudxoja-behbudiy');
