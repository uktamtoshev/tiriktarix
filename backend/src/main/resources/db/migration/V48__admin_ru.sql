-- Boshqaruv paneli matnlari rus tiliga o'tkazildi.
--
-- SABAB. Panel — xodimlar quroli, mahsulot emas. Uni ishlatadigan jamoa rus
-- tilida ishlaydi, sayt esa butunlay o'zbekcha bo'lib qoladi.
--
-- NEGA USTUNLAR QAYTA NOMLANADI. `_uz` qo'shimchasi «bu maydonda o'zbekcha
-- kontent» degani. Fakt kartochkalari, test savollari, ajdodlar nomlari uchun
-- bu to'g'ri va o'zgarmaydi. Lekin panelning O'Z matnlari (ulanish nomi,
-- izohi, jurnal tafsiloti) endi ruscha — ularda `_uz` yolg'on nom bo'lardi.
--
-- KONTENT JADVALLARIGA TEGILMAYDI: fact_cards, quiz_questions, heroes, eras,
-- historical_events, films, map_features — hammasi o'zbekcha va shunday qoladi.

ALTER TABLE integration_keys RENAME COLUMN label_uz TO label;
ALTER TABLE integration_keys RENAME COLUMN notes_uz  TO notes;

-- Eski yozuvlar o'zbekcha qoladi — jurnal tarixi qayta yozilmaydi.
ALTER TABLE admin_audit_log RENAME COLUMN summary_uz TO summary;


-- Boshlang'ich ulanishlarning nomi va izohi — panelda ko'rinadi, demak ruscha.

UPDATE integration_keys
   SET label = $$Озвучка (TTS) — основная$$,
       notes = $$Для озвучивания реплик предков и учебных текстов.
Ключ читается кодом через IntegrationKeyService.secretOf('TTS_MAIN').$$
 WHERE code = 'TTS_MAIN';

UPDATE integration_keys
   SET label = $$Распознавание речи (STT) — основное$$,
       notes = $$Чтобы ребёнок мог задать вопрос голосом.
Ключ читается кодом через IntegrationKeyService.secretOf('STT_MAIN').$$
 WHERE code = 'STT_MAIN';

UPDATE integration_keys
   SET label = $$Движок диалогов (Claude)$$,
       notes = $$Запасная запись. ПОКА НЕ ЧИТАЕТСЯ: движок диалогов берёт ключ
из переменной окружения ANTHROPIC_API_KEY и читает её один раз при старте.
Ключ отсюда заработает после того, как движок переведут на базу.$$
 WHERE code = 'LLM_ANTHROPIC';
