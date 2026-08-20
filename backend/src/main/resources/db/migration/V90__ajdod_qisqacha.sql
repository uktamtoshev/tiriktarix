-- Portret ostidagi QISQACHA MA'LUMOT kartasi (suhbat sahifasi).
--
-- NIMA UCHUN. Suhbat sahifasida bola ajdodning to'liq portretini ko'radi,
-- uning ostida esa faqat yashagan yillari turardi. «Bu kim bo'lgan, u nima
-- qilgan?» degan eng oddiy savolga javob olish uchun sahifaning pastidagi
-- tarjimai hol bo'limigacha tushish kerak edi. Endi eng kerakli bir necha
-- qator portretning o'zi ostida turadi — suhbatni boshlashdan oldin.
--
-- MATN QAYERDAN. Hech narsa yangidan yozilmadi va yoddan yozilmadi: har bir
-- qator loyihaning O'Z tasdiqlangan fakt kartochkalaridan (V2 seed:
-- «Tug'ilishi», «Hukmronligi», «Rasadxona», «Ziji jadidi Ko'ragoniy»,
-- «Madrasalari», «Vafoti») va V36 tarjimai holidan yig'ildi. Manba kartaning
-- ostida ko'rsatiladi — tekshirib bo'ladigan bo'lib qolsin.
--
-- SHAKLI. {"rows": [{"label": ..., "value": ...}], "source": "..."}.
-- Manba har bir qatorda emas, kartaning ostida bir marta yoziladi: qatorlar
-- qisqa, ularning har biriga izoh osib qo'yilsa karta o'qilmay qoladi.
--
-- HOZIRCHA FAQAT MIRZO ULUG'BEKDA. Qolgan ajdodlarda ustun NULL bo'lib
-- qoladi va karta umuman chizilmaydi. Matn tayyor bo'lgan sari qo'shiladi
-- (yoki boshqaruv panelidagi «Краткая справка» maydonidan kiritiladi).

ALTER TABLE heroes ADD COLUMN summary_uz JSONB;

UPDATE heroes
   SET summary_uz = $${
  "rows": [
    {
      "label": "Tug'ilgan",
      "value": "1394-yil 22-mart, Sultoniya shahri. Asl ismi — Muhammad Tarag'ay"
    },
    {
      "label": "Kim bo'lgan",
      "value": "Temuriy hukmdor, astronom va matematik. Amir Temurning nabirasi, Shohrux Mirzoning o'g'li"
    },
    {
      "label": "Hukmronligi",
      "value": "1409-yildan Samarqand taxtida. Movarounnahrni qariyb qirq yil boshqargan, poytaxtini Sharqning ilm-fan markaziga aylantirgan"
    },
    {
      "label": "Nima qilgan",
      "value": "1424–1429-yillarda Samarqandda rasadxona qurdirgan; «Ziji jadidi Ko'ragoniy» asarida 1018 yulduzning jadvalini tuzgan; Buxoro (1417), Samarqand Registoni (1417–1420) va G'ijduvonda (1433) uchta madrasa qurdirgan"
    },
    {
      "label": "Vafoti",
      "value": "1449-yil 27-oktabr, o'g'li Abdullatif fitnasi natijasida. Go'ri Amirda bobosi Amir Temur yoniga dafn etilgan"
    }
  ],
  "source": "O'zbekiston milliy ensiklopediyasi; «O'zbekiston tarixi» 7-sinf darsligi"
}$$::jsonb
 WHERE slug = 'mirzo-ulugbek';
