-- Portreti yo'q bo'lgan besh ajdodga tasvir biriktiriladi.
--
-- HALOLLIK QOIDASI (V9 va V22 dagi kabi). Ibn Sino, Beruniy, al-Xorazmiy va
-- al-Buxoriyning TIRIKLIGIDA CHIZILGAN tasviri mavjud emas. Shuning uchun
-- hech bir izohda «portret» so'zi ishlatilmaydi: haykal — haykal, marka —
-- marka, yodgorlik majmuasi — majmua deb yoziladi. Bola rasmga qarab «bu
-- o'sha odamning haqiqiy qiyofasi» degan xulosaga kelmasligi kerak.
--
-- Barcha fayllar Wikimedia Commons'dan olindi, litsenziyasi 2026-07-31 da
-- Commons API (extmetadata) orqali BITTALAB tekshirildi. Fayllar 800 px
-- ichiga siqilgan, webp, har biri 300 KB dan kam.
--
-- Ilova: webp konverteri sifatida loyihada allaqachon mavjud `sharp`
-- ishlatildi (Next bilan keladi) — yangi npm bog'liqligi qo'shilmadi.

-- Miniatura uslubidagi tasvir. Sanasi va muallifi noma'lum, shuning uchun
-- «o'rta asr miniaturasi» deb ATALMAYDI — faqat «miniatura uslubidagi tasvir».
UPDATE heroes
   SET portrait_url        = '/portretlar/ibn-sino.webp',
       portrait_kind       = 'ARTWORK',
       portrait_caption_uz = $$Miniatyura uslubidagi tasvir (portret emas)$$,
       portrait_source     = $$Wikimedia Commons, «Avicenna-miniatur.jpg» — public domain, muallifi noma'lum$$
 WHERE slug = 'ibn-sino';

-- Urganchdagi zamonaviy haykal. Fotosurat muallifi ko'rsatilishi SHART:
-- CC BY-SA 4.0 shuni talab qiladi.
UPDATE heroes
   SET portrait_url        = '/portretlar/al-xorazmiy.webp',
       portrait_kind       = 'ARTWORK',
       portrait_caption_uz = $$Urganchdagi haykal, zamonaviy$$,
       portrait_source     = $$Wikimedia Commons, foto: Adam Harangozó, CC BY-SA 4.0$$
 WHERE slug = 'al-xorazmiy';

-- 1973-yilgi SSSR pochta markasi. Izohda aynan shu aytiladi: bu rassomning
-- XX asrdagi tasavvuri, tarixiy tasvir emas.
UPDATE heroes
   SET portrait_url        = '/portretlar/abu-rayhon-beruniy.webp',
       portrait_kind       = 'ARTWORK',
       portrait_caption_uz = $$1973-yilgi pochta markasidagi tasvir (portret emas)$$,
       portrait_source     = $$Wikimedia Commons, «Biruni-russian.jpg» — SSSR markasi, 1973, public domain$$
 WHERE slug = 'abu-rayhon-beruniy';

-- Haqiqiy qo'lyozma miniaturasi (1596–1600), «Chingiznoma» dan: Jaloliddin
-- Sind daryosidan o'tayotgan sahna. Uning o'zi tasvirlangan.
UPDATE heroes
   SET portrait_url        = '/portretlar/jaloliddin-manguberdi.webp',
       portrait_kind       = 'MINIATURE',
       portrait_caption_uz = $$Sind daryosidan o'tish sahnasi, qo'lyozma miniaturasi, 1596–1600$$,
       portrait_source     = $$Wikimedia Commons, «Chingiznoma» qo'lyozmasi, rassomlar Banvari Xurd va Dharm Das, public domain$$
 WHERE slug = 'jaloliddin-manguberdi';

-- Yodgorlik majmuasining fotosurati. DIQQAT: bu binoning surati, odamning
-- emas — shuning uchun portrait_kind = 'ARTWORK' («Rassom tasavvuri» deb
-- ko'rsatiladi) emas, balki izohning o'zi hal qiluvchi: unda «majmua» deb
-- yozilgan. Shaharning nomi ataylab yozilmadi: Commons'dagi tavsifda
-- «Buxoro» deyilgan, aslida majmua Samarqand yaqinida — bu ziddiyat
-- tekshirilmaguncha shahar ko'rsatilmaydi.
UPDATE heroes
   SET portrait_url        = '/portretlar/imom-al-buxoriy.webp',
       portrait_kind       = 'PHOTO',
       portrait_caption_uz = $$Imom al-Buxoriy yodgorlik majmuasi (bino surati, portret emas)$$,
       portrait_source     = $$Wikimedia Commons, foto: MinaUktamova, CC BY 4.0$$
 WHERE slug = 'imom-al-buxoriy';
