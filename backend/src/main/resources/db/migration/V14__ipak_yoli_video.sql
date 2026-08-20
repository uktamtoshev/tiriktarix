-- «Ipak yo'li: bir karvonning yo'li» seriyasiga tashqi video biriktiriladi.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13 dagi kabi). Interfeysda 4-bosqich
-- matni «Animatsiya tayyor» emas, «Video biriktirildi (tashqi manba)» deb
-- ko'rsatiladi — bolaga yolg'on aytilmaydi.
--
-- Video: «BUYUK IPAK YO'LI: Qadimgi savdo yo'li haqida qiziqarli ma'lumotlar»
--   kanal      : ONG tv (99,1 ming obunachi, 95 ming ko'rish)
--   davomiyligi: 523 sekund = 8 daq. 43 son. → 9 daqiqa
--   til        : o'zbek
--   nega shu   : xaritada karvonlar yuradi va Samarqand, Buxoro, Urganch,
--                Balx, Hirot yozib qo'yilgan — kartochka mazmuni («bir karvon
--                ko'zi bilan») aynan shu. Katta kanal, ya'ni o'z mahsuloti,
--                boshqa filmning qayta yuklamasi emas.
--   tekshirildi: sarlavha, kanal, davomiylik, ochiqligi va nashr holati
--                2026-07-30 da YouTube oEmbed va sahifa HTML orqali tasdiqlangan
--
-- OGOHLANTIRISH METODIST UCHUN: videoning OVOZI tekshirilmagan. YouTube nutq
-- tanish tizimi o'zbek tilini bilmaydi va ovozni «fransuz» deb belgilab
-- qo'ygan (a.fr), shuning uchun avtomatik ma'lumotdan ovoz tilini aniqlash
-- mumkin emas. Sarlavha, tavsif va XARITADAGI YOZUVLAR o'zbekcha, lekin ovozni
-- odam eshitib tasdiqlashi kerak.
--
-- verified = FALSE bo'lib qoladi: metodist-tarixchi to'liq ko'rmaguncha.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=v_GysQjXzX4',
       status           = 'PUBLISHED',
       duration_minutes = 9,
       source           = $$YouTube: ONG tv$$
 WHERE title_uz = $$Ipak yo'li: bir karvonning yo'li$$;
