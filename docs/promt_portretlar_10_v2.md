# Промт для Claude Code — портреты 10 предков (готовые ссылки на файлы)

> Скопируй всё, что ниже разделителя, в Claude Code в корне репозитория TIRIK TARIX. Это версия 2 — с прямыми ссылками на конкретные файлы вместо категорий.

---

Скачай изображения по ссылкам ниже и подключи их к карточкам предков в галерее «Ajdodlar zali». Ссылки ведут на Wikimedia Commons; формат `Special:FilePath/…` отдаёт сам файл, скачивается через `curl -L`.

## Таблица: герой → файл → как подписать

| Герой (slug из базы) | Прямая ссылка на файл | kind | Подпись `portrait_caption_uz` |
|---|---|---|---|
| Amir Temur | `https://commons.wikimedia.org/wiki/Special:FilePath/Depiction%20of%20Timur%20granting%20audience%20on%20the%20occasion%20of%20his%20accession,%20in%20the%20near%20contemporary%20Zafarnama%20(1424-1428),%201467%20edition.jpg` | MINIATURE | `Zafarnoma qo'lyozmasidan miniatyura, 1467-yil` |
| Mirzo Ulug'bek | `https://commons.wikimedia.org/wiki/Special:FilePath/Ulugh%20Beg,%20Timurid%20painting%201425-50.jpg` | MINIATURE | `Davr miniaturasi, taxminan 1425–1450-yillar` |
| Alisher Navoiy | `https://commons.wikimedia.org/wiki/Special:FilePath/Alisher%20Navoiy's%20Portrait.jpg` | MINIATURE | `XV asr miniaturasi` |
| Zahiriddin Bobur | `https://commons.wikimedia.org/wiki/Special:FilePath/Idealized%20portrait%20of%20Babur%20(1483-1530)%20in%20Persian%20style,%20painted%20circa%201605-1615%20in%20India%20(British%20Museum%201921,1011,0.3).jpg` | MINIATURE | `Fors uslubidagi portret, taxminan 1605–1615-yillar, Britaniya muzeyi` |
| Ibn Sino | `https://commons.wikimedia.org/wiki/Special:FilePath/Avicenne%20-%20Avicenna%20-%20Ibn%20Sina%20(980-1037)%20CIPB1451.jpg` | ARTWORK | `Keyingi davr tasviri (portret emas)` |
| Ibn Sino (запасной) | `https://commons.wikimedia.org/wiki/Special:FilePath/Avicenna-miniatur.jpg` | MINIATURE | `O'rta asr miniaturasi` |
| Muhammad al-Xorazmiy | `https://commons.wikimedia.org/wiki/Special:FilePath/Statue%20of%20Muhammad%20ibn%20Musa%20al-Khwarizmi%20in%20Urgench.jpg` | ARTWORK | `Urganchdagi haykal, zamonaviy` |
| Muhammad al-Xorazmiy (запасной) | `https://commons.wikimedia.org/wiki/Special:FilePath/Al-Khwarizmi%20portrait.jpg` | ARTWORK | `Zamonaviy tasvir (portret emas)` |
| Abu Rayhon Beruniy | `https://commons.wikimedia.org/wiki/Special:FilePath/Biruni-russian.jpg` | ARTWORK | `Keyingi davr tasviri (portret emas)` |
| Jaloliddin Manguberdi | `https://commons.wikimedia.org/wiki/Special:FilePath/Jalal%20al-Din%20Khwarazm-Shah%20crossing%20the%20rapid%20Indus%20river,%20escaping%20Chinggis%20Khan%20and%20his%20army.jpg` | MINIATURE | `Sind daryosidan o'tish sahnasi, qo'lyozma miniaturasi` |
| Imom al-Buxoriy | `https://commons.wikimedia.org/wiki/Special:FilePath/Memorial%20complex%20of%20Imam%20al-Bukhari.jpg` | ARTWORK | `Imom al-Buxoriy yodgorlik majmuasi, Samarqand` |
| Abdulla Qodiriy | файла не нашёл — ищи сам в `commons.wikimedia.org/wiki/Category:Abdulla_Qodiriy` | PHOTO | `Fotosurat, XX asr` |

## Обязательная проверка перед скачиванием

Ссылки я собрал поиском и **не мог открыть страницы файлов**, поэтому для каждого файла ты обязан:

1. Открыть страницу описания: `https://commons.wikimedia.org/wiki/File:<имя файла>` — **и проверить лицензию**. Годится `Public domain`, `PD-old`, `CC0`, `CC BY`, `CC BY-SA`. Не годится `Fair use`, «несвободный файл», отсутствие лицензии.
2. Проверить, что на изображении **действительно этот человек** (описание файла, категория). Если это однофамилец или другой персонаж — не бери, скажи мне.
3. Если файл не открывается или лицензия несвободная — найди замену в категории того же героя и укажи это в отчёте.

**Осторожно:** файл `Al-Biruni Portrait.jpg` лежит на en.wikipedia, а не на Commons — такие файлы часто загружены по «fair use» и **не годятся**. Проверь отдельно; если несвободный — бери `Biruni-russian.jpg`.

## Важное правило о подписях

Классические портреты из школьных учебников (Ибн Сина, Беруни, аль-Хорезми) — это, как правило, **советские рисунки XX века с известными авторами, и они несвободны**. Поэтому берём свободные аналоги, но подписываем честно: если изображение — не прижизненный портрет, в подписи должно стоять «zamonaviy tasvir» или «haykal», а не «portret». Прижизненных изображений Ибн Сины, Беруни, аль-Хорезми и аль-Бухари не существует.

## Что сделать технически

1. Скачай файлы (`curl -L -o`), оптимизируй: большая сторона ~800px, вес ≤ 300 КБ, формат webp (`sips` / ImageMagick / `cwebp`). Новых npm-зависимостей не ставь.
2. Сохрани как `frontend/public/portretlar/<slug>.webp`, где `<slug>` — реальный slug героя из сид-миграций (не выдумывай, посмотри в базе).
3. Новая Flyway-миграция (следующим свободным номером): для каждого героя `UPDATE heroes SET portrait_url = '/portretlar/<slug>.webp', portrait_kind = '<MINIATURE|ARTWORK|PHOTO>', portrait_caption_uz = '<подпись из таблицы>', portrait_source = '<музей/автор + лицензия + Wikimedia Commons>' WHERE slug = '<slug>'`.
4. Портрет Амира Темура, если уже стоит AI-иллюстрация, **не заменяй** без моего слова — спроси, что оставить: миниатюру 1467 года или текущую иллюстрацию.
5. Проверь отображение: золотое кольцо медальона, `loading="lazy"`, `alt="<Ism> portreti"`, фиксированные размеры (без сдвига вёрстки), эмодзи-фолбэк если файла нет.

## Приёмка

1. `mvn test`, `npm run build && npm run lint` — зелёные.
2. У каждого героя либо изображение с проверенной лицензией и честной подписью, либо фолбэк с объяснением.
3. Ни одно изображение не названо «портретом», если это памятник, комплекс или поздняя иллюстрация.
4. Папка `public/portretlar/` — суммарно не больше 2–3 МБ.
5. Галерея не «прыгает», на мобильной ширине всё читается.

В конце — таблица: герой, файл, лицензия, тип, вес; отдельно список тех, где нужна замена или моё решение.
