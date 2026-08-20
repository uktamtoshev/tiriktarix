# HeyGen — 3-минутное презентационное видео TIRIK TARIX

Ведущий — **сам Амир Темур** (аватар из портрета проекта), язык — английский,
хронометраж — ровно 3:00. Об авторе — ни слова, только о продукте.
Исходник B-roll: `REC-20260820145734.mp4` (180 с, 2021×1080).

Цифры в скрипте — из базы на 19–20 августа 2026 (1522 карточки подтверждены
прямо на экране в кадре 2:18: чип «BARCHASI · 1522»).

---

## 0. Что подготовить до захода в HeyGen

| Ассет | Файл | Зачем |
|---|---|---|
| Портрет аватара | `frontend/public/portretlar/amir-temur.jpg` (902×1176) | Avatar IV — лицо ведущего |
| Запасной крупный план | `frontend/public/portretlar/amir-temur-yaqin.webp` (640×640) | если Avatar IV не возьмёт поясной план |
| B-roll | `REC-20260820145734.mp4` | демо продукта |
| Логотип | `frontend/public/logo/` | вотермарка в углу |

**Обрезать B-roll до 16:9.** Запись 2021×1080 = 1.87:1, HeyGen рендерит 1.78:1 —
иначе появятся чёрные поля. Кроп по ширине до 1920, высота остаётся 1080.

**Замазать левый нижний угол** (опционально): там висит бейдж Next.js «N» и
всплывающий статус `localhost:55708/...`. Лёгкое размытие 120×40 px или кроп.

---

## 1. ПРОМТ ДЛЯ АВАТАРА (HeyGen → Avatars → Avatar IV → Upload photo)

Загрузить `amir-temur.jpg`, в поле **motion / acting prompt** вставить:

```
A dignified 14th-century Central Asian ruler seated on a throne, addressing
children with calm authority and warmth. Slow, deliberate head movements.
Steady eye contact with the camera. Occasional slight forward lean on emphasis,
a single measured hand gesture at key statements. No smiling teeth — the
expression is grave, proud, and kind, like a grandfather telling something
important. Keep the crown, robe and throne perfectly stable. Regal, unhurried,
never theatrical.
```

> Если HeyGen пометит изображение как «public figure»: это оригинальная
> иллюстрация проекта (в приложении подписана «Rassom tasavvuri · zamonaviy
> illyustratsiya Zafarnoma miniatyuralari asosida»), а не фотография живого
> человека — указать это в апелляции.

---

## 2. ГОЛОС

- Тип: **deep mature male, British or neutral English**, тембр 45–60 лет.
- Скорость: **0.92–0.95** (медленнее дефолта — речь правителя, не диктора).
- Emotion / style: **Serious → Friendly** на первой и последней сцене.
- Pause: перед каждой цифрой ставить `<break time="0.4s"/>` — цифры должны
  «падать».

**Произношение узбекских слов** — добавить в Pronunciation dictionary:

| Слово | Как читать |
|---|---|
| Tirik Tarix | TEE-rik TA-rikh |
| Assalomu alaykum | as-sa-LO-mu a-lay-KUM |
| Sohibqiron | so-hib-ki-RON |
| Shahrisabz | shah-ri-SABZ |
| Amir Taragay | a-MEER ta-ra-GUY |
| Barlas | bar-LAS |
| Selungur | se-lun-GOOR |
| Bu haqda tarix sukut saqlaydi | bu HAK-da ta-RIKH su-KOOT sak-LIE-di |
| Qahramonlar haqida o'qima — ular bilan gaplash | kah-ra-mon-LAR ha-KEE-da o-KEE-ma — u-LAR bi-LAN gap-LASH |

---

## 3. МАСТЕР-ПРОМТ (HeyGen → Create Video with AI / Video Agent)

Одним блоком в поле промта:

```
Create a 3-minute (180 second) product presentation video in English, 16:9,
1920x1080.

NARRATOR: the historical ruler Amir Temur himself, speaking in the first
person. Use my uploaded Avatar IV avatar. Tone: regal, grave, warm — a
grandfather addressing children. Deep mature male English voice at 0.93 speed.
Never break character. Never mention the product's author, team, age or any
person behind it — the video is about the product only.

FOOTAGE: use my uploaded screen recording (REC-20260820145734.mp4) as the
B-roll for the whole middle section. Do not generate stock footage — every
frame of the product must come from that recording.

LAYOUT:
- 0:00-0:16 and 2:50-3:00 — avatar full frame, dark background, subtle gold
  particles, no screen recording.
- 0:16-2:50 — screen recording full frame; avatar as a circular
  picture-in-picture in the bottom-right corner, 22% of frame height, thin gold
  ring border.

VISUAL STYLE: dark obsidian background, gold accents (#C9A227), serif display
typography (Cinzel or similar), slow cinematic dissolves between scenes, no
whooshes, no zoom bursts. Match the dark-and-gold look of the product itself.

ON-SCREEN TEXT: gold serif lower-thirds, appearing only on the key numbers
listed in the script. Burned-in English captions at the bottom, small,
semi-transparent.

MUSIC: sparse, low, Central Asian strings (dutar/tanbur) with a slow drum
pulse. Volume at -22 dB — the voice always dominates. No music at all during
0:52-1:50 (the dialogue demo).

Use the exact script below, scene by scene. Do not rewrite, shorten or add
sentences. Keep the timings.
```

Дальше в то же поле — скрипт из раздела 4 (или, если работаешь в Video Editor
вручную, вставляй по сцене).

---

## 4. СКРИПТ ПО СЦЕНАМ

Колонка «B-roll» — какой отрезок исходной записи ставить под сцену.
Запись длиннее, чем нужно (180 с исходника на 154 с эфира), поэтому часть
отрезков ускоряется или подрезается.

### Сцена 1 · 0:00–0:16 · аватар во весь кадр

> Assalomu alaykum. I am Amir Temur — Sohibqiron.
> For six hundred years, children have read about me in textbooks.
> Paragraphs. Dates. Silence.
> Today, in Uzbekistan, they do something else. They talk to me.

*Плашка: нет. Фон — тёмный, портрет крупно.*

---

### Сцена 2 · 0:16–0:30 · B-roll: rec 0:03–0:12 + 0:16–0:21 (лендинг → шесть врат → восемь эпох)

> This is Tirik Tarix — Living History.
> Six gates. Eight ages of Uzbekistan, from the Selungur cave to independence.
> Every word of it in Uzbek. Every gate of it free.

*Плашка: `8 ERAS · 6 GATES · 100% FREE`*

---

### Сцена 3 · 0:30–0:52 · B-roll: rec 0:26–0:55, скорость 1.3× (Ajdodlar zali, фильтры, галерея)

> The first gate is the Hall of Ancestors.
> One hundred and twenty-one of us wait here. Poets, astronomers, scholars, khans.
> Filter by era, search by name, and choose.
> A child does not open a chapter about us. A child opens a conversation with us.

*Плашка: `121 ANCESTORS`*

---

### Сцена 4 · 0:52–1:22 · B-roll: rec 0:55–1:25, скорость 1.0× — НЕ ускорять

> Watch. A child chooses me, and asks in their own words: in which year were you born?
> I answer in the first person. Kesh, near Shahrisabz, the ninth of April,
> thirteen thirty-six. My father — Amir Taragay of the Barlas.
> And beneath my answer, a seal: the National Encyclopedia of Uzbekistan.
> Not my imagination. A source.

*Плашка: `EVERY ANSWER CARRIES ITS SOURCE`. Музыка — на паузу.*
*Ключевой момент: зум 105% на печать источника под ответом.*

---

### Сцена 5 · 1:22–1:50 · B-roll: rec 1:25–1:47, скорость 1.0× (второй вопрос, ответ, кнопка TINGLASH)

> Ask again — the campaigns, Hindustan, Ankara — and again the seal appears:
> the seventh-grade history textbook.
> Here is the law of this place. Artificial intelligence gives me my voice.
> Human historians give me my truth.
> Every answer is built only from fact cards a historian has verified.
> And where history is silent, I am silent too.
> Bu haqda tarix sukut saqlaydi.

*Плашка на узбекской фразе: `"About this, history keeps its silence."`*
*Это смысловой центр ролика — держать паузу 1.5 с после последней строки.*

---

### Сцена 6 · 1:50–2:12 · B-roll: rec 1:47–2:12, скорость 1.15× (события → карты → фильмы)

> Beyond the hall, the other gates open.
> Sixty-four events on one timeline.
> Maps where the borders move with the centuries, and my campaigns are drawn
> across Central Asia.
> Seventeen short documentaries, every one checked against a historian's
> list before a child is allowed to see it.
> Not a playlist. A curriculum.

*Плашки по очереди: `64 EVENTS` → `8 ERAS OF MAPS` → `17 FILMS`*

---

### Сцена 7 · 2:12–2:26 · B-roll: rec 2:12–2:22, скорость 0.8× (Xazina, чип 1522)

> And here is the treasury.
> One thousand five hundred and twenty-two fact cards, each one with its source.
> This is the foundation every answer, every quiz, every film is built on.

*Плашка: `1 522 VERIFIED FACT CARDS`. Задержать кадр на чипе «BARCHASI · 1522».*

---

### Сцена 8 · 2:26–2:42 · B-roll: rec 2:22–2:45, скорость 1.4× (Qurolxona → профиль, лестница званий)

> Then history becomes a game.
> One thousand three hundred and sixty-nine questions across the eight ages.
> Experience, streaks, thirty-two pieces of armour to earn for your own warrior.
> And a ladder of ranks — from beginner, to scholar, to Sohibqiron.

*Плашка: `1 369 QUESTIONS · 32 ITEMS · 7 RANKS`*

---

### Сцена 9 · 2:42–2:50 · B-roll: rec 2:45–2:58, скорость 1.6× (Bellashuv, поиск соперника)

> And when two children duel — one minute, one subject —
> they are not fighting each other. They are remembering.

---

### Сцена 10 · 2:50–3:00 · аватар во весь кадр

> Tirik Tarix. Free, forever, in the Uzbek language.
> Do not read about your heroes. Speak with them.
> Qahramonlar haqida o'qima — ular bilan gaplash.

*Финальный кадр: логотип-медальон по центру на чёрном, под ним слоган
латиницей и его перевод мелким шрифтом: «Don't read about heroes — talk to them.»*

---

## 5. Чек-лист перед рендером

- [ ] Общий хронометраж 2:58–3:00, не больше
- [ ] B-roll обрезан до 16:9, бейдж Next.js в левом низу замазан
- [ ] Аватар-PIP не перекрывает карточки контента (правый низ — там пусто во всех кадрах)
- [ ] Сцены 4–5 идут на 1.0× и без музыки
- [ ] Субтитры включены (жюри может смотреть без звука)
- [ ] Ни одного упоминания автора, возраста, FuturePath
- [ ] Все цифры совпадают с базой на день рендера — если контент вырос, поправить
      скрипт, а не оставлять старое

## 6. Что можно доснять, чтобы ролик стал сильнее

1. **Отказ героя.** В текущей записи оба ответа Темура с источником, а самой
   сильной сцены — «Bu haqda tarix sukut saqlaydi» — на экране нет. Задать
   Темуру вопрос, которого нет в карточках, и записать высеченную надпись
   отказа. Вставить в сцену 5 вместо ускоренного куска.
2. **Админ-панель методиста** — 3 секунды: показать, где живёт «человеческая»
   половина принципа. Вставить в сцену 5 под слова «Human historians give me
   my truth».
3. **Озвучка.** Нажать TINGLASH и дать 2 секунды реального узбекского голоса
   героя — это слышимое доказательство, что продукт работает.

## 7. Спорное место — проверить перед рендером

Лендинг говорит «OLTITA DARVOZA» (шесть врат), но экран Bellashuv в кадре 2:46
подписан «DARVOZA VII». В скрипте стоит «Six gates» — по лендингу, который
зритель видит своими глазами в сцене 2. Если врат уже семь — поправить и
лендинг, и строку в сцене 2.
