-- Qahramon jihozlari.
--
-- MUHIM QOIDA: XP hech qachon sarflanmaydi. Jihoz «ochiq» yoki «yopiq» ekani
-- saqlanmaydi — u har safar profildan hisoblanadi (daraja / jami XP / seriya).
-- Shu sababli ochilgan narsa hech qachon yopilmaydi va ichki valyuta ham yo'q.
--
-- Har bir jihozda qisqa tarixiy izoh bor: bu o'yin emas, ta'limiy mahsulot.

CREATE TABLE avatar_items (
    id             BIGSERIAL PRIMARY KEY,
    code           TEXT NOT NULL UNIQUE,
    name_uz        TEXT NOT NULL,
    slot           TEXT NOT NULL CHECK (slot IN ('HEAD', 'BODY', 'WEAPON', 'SHIELD', 'ACCESSORY')),
    description_uz TEXT NOT NULL,
    unlock_type    TEXT NOT NULL CHECK (unlock_type IN ('LEVEL', 'TOTAL_XP', 'STREAK')),
    unlock_value   INT  NOT NULL,
    ordinal        INT  NOT NULL DEFAULT 0
);

CREATE TABLE avatar_equipment (
    profile_id BIGINT NOT NULL REFERENCES learner_profiles (id) ON DELETE CASCADE,
    slot       TEXT   NOT NULL CHECK (slot IN ('HEAD', 'BODY', 'WEAPON', 'SHIELD', 'ACCESSORY')),
    item_id    BIGINT NOT NULL REFERENCES avatar_items (id),
    PRIMARY KEY (profile_id, slot)
);

-- ============================== JIHOZLAR KATALOGI ==============================
-- Ochilish chegaralari daraja formulasi bilan muvofiqlashtirilgan:
-- L-darajaga yetish uchun jami 50·L·(L−1) XP kerak.

INSERT INTO avatar_items (code, name_uz, slot, description_uz, unlock_type, unlock_value, ordinal) VALUES
('oddiy-chopon', $$Oddiy chopon$$, 'BODY',
 $$Chopon — Markaziy Osiyoda asrlar davomida kiyilgan ustki kiyim. Yozda salqin, qishda issiq saqlaydi.$$,
 'LEVEL', 1, 1),
('doppi', $$Do'ppi$$, 'HEAD',
 $$Do'ppi — o'zbek milliy bosh kiyimi. Har viloyatning o'z naqshi bor: Chust do'ppisida oq qalampir naqshi tikiladi.$$,
 'LEVEL', 1, 2),
('yogoch-qilich', $$Yog'och qilich$$, 'WEAPON',
 $$Yosh jangchilar mashqni yog'och qilichdan boshlagan — chinakam po'lat qilich faqat tayyorgarlikdan keyin berilgan.$$,
 'TOTAL_XP', 100, 3),
('charm-sovut', $$Charm sovut$$, 'BODY',
 $$Qalin charmdan tikilgan yengil sovut. U temir sovutdan arzon bo'lgani uchun oddiy askarlar shuni kiygan.$$,
 'LEVEL', 2, 4),
('charm-qalqon', $$Charm qalqon$$, 'SHIELD',
 $$Yog'och gardishga charm tortilgan qalqon. Yengilligi tufayli otliq jangchilar uni afzal ko'rgan.$$,
 'TOTAL_XP', 300, 5),
('dubulga', $$Dubulg'a$$, 'HEAD',
 $$Dubulg'a — boshni himoya qiluvchi temir bosh kiyim. Uchi cho'qqili shakli zarbani yon tomonga siltab yuborgan.$$,
 'LEVEL', 3, 6),
('polat-qilich', $$Po'lat qilich$$, 'WEAPON',
 $$Damashq usulida toblangan po'lat qilich. Uning tig'idagi to'lqinsimon naqsh metallning qatlamlaridan hosil bo'lgan.$$,
 'TOTAL_XP', 500, 7),
('kamon-sadoq', $$Kamon va sadoq$$, 'WEAPON',
 $$Murakkab kamon yog'och, shox va payning qatlamlaridan yasalgan. Dasht jangchilari undan ot ustida turib otgan.$$,
 'LEVEL', 4, 8),
('olov-tumor', $$Olov tumor$$, 'ACCESSORY',
 $$Tumor — omad tilab taqiladigan bezak. Bu tumor yetti kunlik uzluksiz mashq uchun beriladi.$$,
 'STREAK', 7, 9),
('temir-sovut', $$Temir sovut$$, 'BODY',
 $$Temir halqalardan to'qilgan sovut. Bir sovutga o'n minglab halqa ketgan va uni yasash oylab davom etgan.$$,
 'LEVEL', 6, 10),
('nayza', $$Nayza$$, 'WEAPON',
 $$Uzun dastali nayza otliq hujumida asosiy qurol bo'lgan — u qarshi tomonga yaqinlashmasdan zarba berish imkonini bergan.$$,
 'TOTAL_XP', 1200, 11),
('zar-qalqon', $$Zar naqshli qalqon$$, 'SHIELD',
 $$Zar suvi yuritilgan qalqon nafaqat himoya, balki lavozim belgisi ham bo'lgan.$$,
 'LEVEL', 8, 12),
('ipak-kamar', $$Ipak kamar$$, 'ACCESSORY',
 $$Ipak Buyuk ipak yo'li orqali tarqalgan eng qimmat matolardan biri edi. Ipak kamar egasining obro'sini ko'rsatgan.$$,
 'TOTAL_XP', 2000, 13),
('ipak-chopon', $$Ipak chopon$$, 'BODY',
 $$Xonlar saroyida ipak chopon sovg'a sifatida berilgan — bu eng yuqori e'tirof belgisi hisoblangan.$$,
 'LEVEL', 10, 14),
('tug', $$Tug'$$, 'ACCESSORY',
 $$Tug' — qo'shin bayrog'i. Jangda tug' yiqilsa, saf buzilgan hisoblangan, shuning uchun uni eng ishonchli jangchi ko'targan.$$,
 'TOTAL_XP', 3000, 15),
('zar-dubulga', $$Zar dubulg'a$$, 'HEAD',
 $$Zar bilan bezatilgan dubulg'a sarkardalarga tegishli bo'lgan: uni jangda uzoqdan ko'rib turish mumkin edi.$$,
 'LEVEL', 12, 16),
('zar-sovut', $$Zar sovut$$, 'BODY',
 $$Marosim sovuti — bayram va qabul kunlarida kiyilgan. Unda himoya bilan bir qatorda naqsh san'ati ham namoyon bo'lgan.$$,
 'LEVEL', 15, 17),
('zar-toj', $$Zar toj$$, 'HEAD',
 $$Toj — hukmdorlik belgisi. Temuriylar davrida toj naqshlariga sakkiz burchakli yulduz — girih tushirilgan.$$,
 'LEVEL', 18, 18),
('sohibqiron-qilichi', $$Sohibqiron qilichi$$, 'WEAPON',
 $$Eng oliy jihoz. «Sohibqiron» — «baxtli yulduz sohibi» degani; bu unvon Amir Temurga nisbatan ishlatilgan.$$,
 'LEVEL', 20, 19);
