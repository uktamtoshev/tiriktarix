-- 1-partiya kartochkalarini yoqish.
--
-- QAROR (foydalanuvchi bilan kelishildi, 2026-08-01): yangi ajdodlarning
-- kartochkalari ham xuddi V2 dagi asl seed kabi verified = TRUE bilan
-- e'lon qilinadi — aks holda M1 dvijoki ularni o'qimaydi va qahramon
-- har qanday savolga «Bu haqda tarix sukut saqlaydi» deb javob beradi.
-- Metodist ro'yxat bo'yicha o'qib chiqadi va xato topsa tuzatadi.

UPDATE fact_cards SET verified = TRUE
 WHERE hero_id IN (SELECT id FROM heroes WHERE slug IN
   ('ahmad-al-fargoniy','abu-nasr-forobiy','cholpon','abdulla-oripov','erkin-vohidov'));
