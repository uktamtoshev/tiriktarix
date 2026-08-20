-- id 143 dagi kirill qoldig'ini tuzatish (V93 ning davomi).
--
-- V93 dagi replace(fact_uz, 'пулига', 'puliga') ishlamadi, chunki so'z ASLIDA
-- aralash terilgan ekan: lotincha «pul» + kirillcha «ига» — ya'ni «pulига».
-- To'liq kirill so'z sifatida qidirish uni topa olmadi. Endi aynan aralash
-- variant almashtiriladi va tekshiruv so'rovi (fact_uz ~ '[а-яА-ЯёЁ]')
-- toza natija qaytaradi.

UPDATE fact_cards SET fact_uz = replace(fact_uz, $$pulига$$, $$puliga$$) WHERE id = 143;
