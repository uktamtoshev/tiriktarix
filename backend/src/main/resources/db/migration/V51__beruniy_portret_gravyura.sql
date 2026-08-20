-- Beruniy tasviri: pochta markasi o'rniga toza gravyura.
--
-- Eski tasvir 1973-yilgi SSSR markasining TO'LIQ surati edi — ramkasi va
-- «ПОЧТА СССР» yozuvi bilan. Yangi fayl — o'sha marka tasviridan olingan toza
-- gravyura (muallif uni ramkasiz qayta ishlagan), pergament ohangiga
-- moslashtirildi. HALOLLIK saqlanadi: izohda bu tasvir markadan kelib
-- chiqqani ochiq aytiladi, «portret emas» yozuvi qoladi.
--
-- Litsenziya: CC BY-SA 4.0, muallif ko'rsatilgan (litsenziya talabi).

UPDATE heroes
   SET portrait_url        = '/portretlar/abu-rayhon-beruniy-gravyura.webp',
       portrait_kind       = 'ARTWORK',
       portrait_caption_uz = $$Gravyura uslubidagi tasvir, 1973-yilgi marka asosida (portret emas)$$,
       portrait_source     = $$Wikimedia Commons, «Al-Biruni Portrait.jpg» — Michel Bakni, CC BY-SA 4.0; 1973-yilgi SSSR markasidagi tasvir asosida$$
 WHERE slug = 'abu-rayhon-beruniy';
