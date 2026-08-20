-- «Navoiy: turkiy so'z kuchi» seriyasiga tashqi video biriktiriladi.
-- Bu QAHRAMON kartochkasi (alisher-navoiy), davr kartochkasi emas.
--
-- MUHIM: bu BIZNING animatsiyamiz emas (V13–V30 dagi kabi). Interfeysda
-- 4-bosqich matni «Video biriktirildi (tashqi manba)» deb ko'rsatiladi.
--
-- Video: «Alisher Navoiy hayoti va ijodiy faoliyati haqida qiziqarli
--         ma'lumotlar»
--   kanal      : TARIXIY VIDEOLAR TV (@TARIXIYVIDEOLARTV) — yirik o'zbek
--                tarix kanali, o'z chizilgan mahsuloti. V25 (Al-Xorazmiy)
--                va V30 (Ulug'bek) kartochkalarida ham shu kanal.
--   davomiyligi: 457 sekund = 7 daq. 37 son. → 8 daqiqa
--   til        : o'zbek
--   ko'rishlar : 68 000+
--   tekshirildi: sarlavha, kanal, davomiylik, ochiqligi, embed ruxsati va
--                isFamilySafe belgisi 2026-07-31 da YouTube oEmbed hamda
--                sahifadagi playerResponse orqali tasdiqlangan
--
-- NEGA AYNAN SHU. Kartochka o'zagi — «Xamsa» va turkiy so'zning kuchi.
-- Videoning teglarida «Alisher Navoiy Xamsasi», «Xamsa haqida maʼlumot»,
-- «Alisher Navoiy va Husayn Boyqaro» va «Navoiy va Lutfiy suhbati» bor —
-- ya'ni kartochkadagi uchala nuqta ham (Xamsa, Hirot saroyi, turkiy she'r
-- an'anasi) yoritiladi. Format — hikoya, ya'ni g'azal kontserti yoki
-- spektakl parchasi emas. Davomiyligi 7 daq. 37 son. — butun katalogda
-- kartochka davomiyligiga eng yaqin video. Afishasi ham mavzuga mos:
-- qalam, ochiq kitob va yozayotgan Navoiy.
--
-- ALTERNATIVA (bir qatorni almashtirish kifoya). «Xamsanavislik an'anasi
-- va Alisher Navoiyning "Xamsa"si» — https://youtu.be/qYrkpDGsHdw,
-- 470 sekund = 7 daq. 50 son., O'zbek tili va adabiyoti universiteti,
-- ma'ruzachi Dilnavoz Yusupova. Aynan kartochkaning o'zagi: xamsanavislik
-- AN'ANASI (Nizomiy, Dehlaviy — forsiyda) va Navoiyning turkiyda beshlik
-- yozishi nega jasorat bo'lgani. Tanlanmadi, chunki format — talabalarga
-- akademik ma'ruza: katta o'smirlarga mos, 5–7-sinf uchun og'ir.
--
-- QABUL QILINMAGAN, LEKIN AYTIB O'TISH KERAK. Shu kanalning ancha mashhur
-- «Alisher Navoiy hayoti va ijodi» videosi (12 daq. 56 son., 372 000
-- ko'rish, https://youtu.be/IZ9Ia11TZSQ) EMBED QILISHGA RUXSAT BERMAYDI
-- (playerResponse: embed=false). Bizning modal plyerimiz iframe ustiga
-- qurilgan, ya'ni u yerda video ochilmaydi. Shuning uchun olinmadi.
--
-- OGOHLANTIRISH METODIST UCHUN:
--   1) FORMAT. Sarlavhada «qiziqarli ma'lumotlar» — faktlar ro'yxatiga
--      aylanib qolmaganini, ijod haqida hikoya borligini ko'rib tekshirish
--      kerak.
--   2) «MUHOKAMAT UL-LUG'ATAYN». Kartochkaning kalit g'oyasi — turkiy til
--      forsiydan kam emasligi isboti. Teglarda bu asar yo'q; videoda
--      tilga olinadimi — ko'rib aniqlash kerak. Aks holda kartochka matni
--      bilan to'ldiriladi yoki yuqoridagi alternativaga o'tiladi.
--   3) Teglar orasida «navoiy g'azallari» bor — bu SEO uchun; video
--      kontsert emas, ammo tasdiqlash uchun ko'rib chiqilsin.
--   4) DAVOMIYLIK: kartochkada ~7 daqiqa, videoda 7 daq. 37 son. —
--      katalogdagi eng yaxshi moslik.
--
-- verified = FALSE.

UPDATE films
   SET video_url        = 'https://www.youtube.com/watch?v=KhQ-BpX1IHI',
       status           = 'PUBLISHED',
       duration_minutes = 8,
       source           = $$YouTube: TARIXIY VIDEOLAR TV$$
 WHERE title_uz = $$Navoiy: turkiy so'z kuchi$$;
