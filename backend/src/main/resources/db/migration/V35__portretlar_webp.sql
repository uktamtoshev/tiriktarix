-- Qolgan uchta portret ham webp'ga o'tkazildi.
--
-- NEGA. V33/V34 dan keyin public/portretlar/ 3,1 MB ga chiqdi — bu README dagi
-- «arzon telefon» talabiga to'g'ri kelmaydi: galereyada o'nta medalyon birdan
-- yuklanadi. Uchta eski jpg (Ulug'bek 600 KB, Navoiy 417 KB, Qodiriy 329 KB)
-- webp'ga o'tkazilgach papka 1,4 MB bo'ldi — sifat ko'zga ko'rinarli
-- o'zgarmadi, hajm esa ikki baravardan ko'proq kamaydi.
--
-- TASVIRLARNING O'ZI O'ZGARMADI — faqat format va o'lcham. Manba, litsenziya
-- va izohlar V9 dagidek qoladi, shuning uchun bu yerda faqat portrait_url
-- yangilanadi.
--
-- Eski jpg fayllar o'chirildi: ular endi hech qayerdan chaqirilmaydi.
-- Amir Temurning ikkita fayli (amir-temur.jpg va amir-temur-portret.jpg)
-- ataylab qoldirildi — V22 dagi qaytish yo'li saqlanadi.

UPDATE heroes SET portrait_url = '/portretlar/mirzo-ulugbek.webp'   WHERE slug = 'mirzo-ulugbek';
UPDATE heroes SET portrait_url = '/portretlar/alisher-navoiy.webp'  WHERE slug = 'alisher-navoiy';
UPDATE heroes SET portrait_url = '/portretlar/abdulla-qodiriy.webp' WHERE slug = 'abdulla-qodiriy';
