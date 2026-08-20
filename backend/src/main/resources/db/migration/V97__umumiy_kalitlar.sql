-- Yangi ajdodlarning ijod kartochkalariga UMUMIY so'rov kalitlarini qo'shish.
--
-- MUAMMO. Bola "Qaysi asarlarni yozgansiz?" yoki "Qanday kitoblar yozgansiz?"
-- deb so'raydi — kartochkalarda esa faqat aniq asar nomlari kalit qilingan
-- («sarob», «al-kashshof»). Umumiy «asar», «kitob», «yoz», «ijod» o'zaklari
-- bo'lmagani uchun retrieval dvigateli kartochkani topolmay, «Bu haqda tarix
-- sukut saqlaydi» derdi. Eski ajdodlarda bu kalitlar bor edi — yangi
-- to'plamga ham qo'shamiz. `||` jsonb massivlarni birlashtiradi, takror kalit
-- zarar qilmaydi (matchScore har kalitni alohida sanaydi, ball +1 ortishi
-- saralashga ta'sir qilmaydi — baribir shu kartochka g'olib).

-- Ijod va asarlarga oid kartochkalar: umumiy «asar/kitob/yoz/ijod» o'zaklari
UPDATE fact_cards SET keywords = keywords || '["asar", "kitob", "yoz", "ijod"]'::jsonb
WHERE hero_id IN (SELECT id FROM heroes WHERE slug IN
  ('imom-at-termiziy','mahmud-zamaxshariy','burhoniddin-marginoniy','najmiddin-kubro',
   'bahouddin-naqshband','muqimiy','furqat','abdulla-qahhor'))
  AND (topic_uz ILIKE '%asar%' OR topic_uz ILIKE '%ijod%' OR topic_uz ILIKE '%kitob%'
       OR topic_uz ILIKE '%devon%' OR topic_uz ILIKE '%hikoya%' OR topic_uz ILIKE '%roman%'
       OR topic_uz ILIKE '%qissa%' OR topic_uz ILIKE '%she''r%' OR topic_uz ILIKE '%hajviy%'
       OR topic_uz ILIKE '%komediya%' OR topic_uz ILIKE '%tarjima%');

-- Naqshbandning shiori — bola uni «hikmat» deb ham so'raydi
UPDATE fact_cards SET keywords = keywords || '["hikmat", "hikma"]'::jsonb
WHERE topic_uz = 'Shiorim'
  AND hero_id = (SELECT id FROM heroes WHERE slug = 'bahouddin-naqshband');
