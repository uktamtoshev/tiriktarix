-- Fakt kartochkalari va test savollarining ruscha matni.
--
-- OXIRGI IKKI JADVAL. V102/V103 da ajdodlar, davrlar, voqealar, filmlar,
-- xaritalar va jihozlar ruscha ustunlarni oldi. Bu ikkitasi — eng kattasi
-- (1522 kartochka va 1369 savol) — o'shanda qolib ketgan edi.
--
-- NEGA SHUNCHA MUHIM. Fakt kartochkasi — loyihaning HAQIQAT MANBASI: ajdodning
-- javobi, test savoli va film stsenariysi hammasi shundan chiqadi. Ya'ni
-- rus tilidagi bola hozir interfeysni ruscha ko'radi, lekin eng asosiy
-- matnni — faktning o'zini — o'zbekcha o'qiydi.
--
-- ZAXIRA O'ZGARMAYDI. Ustun bo'sh bo'lsa — o'zbekcha asl matn ko'rsatiladi.
-- Bu «Prinsip №1» ga mos: tarjimasi yo'q kartochka sahifani buzmaydi va
-- tekshirilmagan matn haqiqat sifatida chiqmaydi.
--
-- TEKSHIRUV METODISTDA QOLADI. Ustunlar bo'sh tug'iladi va ularni panel
-- orqali to'ldirish/tuzatish mumkin — tarjima ham xuddi asl matn kabi
-- metodist qo'lidan o'tadi.

ALTER TABLE fact_cards
    ADD COLUMN topic_ru    text,
    ADD COLUMN question_ru text,
    ADD COLUMN fact_ru     text,
    ADD COLUMN detail_ru   text;

ALTER TABLE quiz_questions
    ADD COLUMN question_ru    text,
    ADD COLUMN explanation_ru text;

-- Variantlar — massiv, shuning uchun matn emas, JSON ustun (asl `options`
-- bilan bir xil shakl). Tartib asl massiv bilan BIR XIL bo'lishi shart:
-- `correct_index` ikkalasiga ham tegishli.
ALTER TABLE quiz_questions
    ADD COLUMN options_ru jsonb;
