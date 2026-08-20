-- «Mening kartalarim» — o'quvchi o'zi yozgan flesh-kartalar.
--
-- MUAMMO. Bu kartalar faqat brauzerning localStorage'ida yotardi
-- (`frontend/src/lib/flashcards.ts`). Ya'ni:
--   • brauzer xotirasi tozalansa — hammasi yo'qoladi;
--   • bola uyda yozgan kartani maktabda ko'ra olmaydi;
--   • telefondan kirsa — bo'sh ro'yxat.
-- Bola o'zi yozgan matn — bu uning mehnati, va uni yo'qotib qo'yish mumkin emas.
--
-- NEGA ALOHIDA JADVAL, `fact_cards` EMAS. Bu kartalar — shaxsiy eslatma,
-- metodist tekshirmagan matn. Ular umumiy Xazinaga TUSHMASLIGI kerak, aks holda
-- «Prinsip №1» buziladi: bola yozgan tekshirilmagan matn boshqa bolaga haqiqat
-- sifatida ko'rinib qolardi. Shuning uchun bog'lanish faqat profil bilan va
-- hech qanday ochiq ro'yxatga chiqmaydi.
--
-- PROFIL O'CHSA — kartalar ham o'chadi (ON DELETE CASCADE): egasiz shaxsiy
-- eslatmani saqlashning ma'nosi yo'q.

CREATE TABLE own_cards (
    id         bigserial PRIMARY KEY,
    profile_id bigint      NOT NULL REFERENCES learner_profiles (id) ON DELETE CASCADE,
    front_uz   text        NOT NULL,
    back_uz    text        NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now(),

    -- Bo'sh karta ma'nosiz; juda uzuni esa ro'yxatni buzadi.
    CONSTRAINT own_cards_front_not_blank CHECK (btrim(front_uz) <> ''),
    CONSTRAINT own_cards_back_not_blank  CHECK (btrim(back_uz) <> ''),
    CONSTRAINT own_cards_front_len       CHECK (char_length(front_uz) <= 500),
    CONSTRAINT own_cards_back_len        CHECK (char_length(back_uz) <= 2000)
);

-- Ro'yxat har doim bitta profil bo'yicha va yangi kartadan boshlab olinadi.
CREATE INDEX idx_own_cards_profile ON own_cards (profile_id, created_at DESC);
