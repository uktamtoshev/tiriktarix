# Промт для Claude Code — регистрация, персонаж и экипировка за XP

> Скопируй всё, что ниже разделителя, в Claude Code, запущенный в корне репозитория TIRIK TARIX.

---

Реализуй в этом репозитории фичу **«Qahramoning» (Твой герой)**: полноценная регистрация (логин/пароль), выбор персонажа — юноша или девушка, и система экипировки, которая **открывается за достигнутые уровни и накопленный XP, но XP при этом не тратится** (это витрина достижений, а не валюта). Работай по плану с todo-списком: сначала изучи контекст, затем бэкенд → тесты → фронтенд → сборка. Не коммить в git без моего подтверждения.

## 0. Сначала изучи контекст

Прочитай перед началом работы:

- `README.md` — архитектура, дизайн-система TEMIR VA ZAR, правила производительности и доступности, API.
- `backend/src/main/java/uz/tiriktarix/profile/` — `LearnerProfile`, `Levels` (формула уровней), `ProfileService`, `ProfileController`, `Achievements`.
- `backend/src/main/java/uz/tiriktarix/quiz/QuizService.java` — как начисляется XP.
- `backend/src/main/java/uz/tiriktarix/config/WebConfig.java`, `backend/src/main/resources/application.yml`.
- `backend/src/main/resources/db/migration/V1__schema.sql` — схема; **последняя миграция сейчас V9, новые начинай с V10**.
- `frontend/src/lib/api.ts` — API-клиент, `getClientId()`, типы, `tellMascot()`.
- `frontend/src/app/globals.css` — токены и утилиты (`tt-*`, цвета obsidian/steel/zar/parchment/dust/qon).
- `frontend/src/components/ui/` — UI-кит (`Panel`, `Button`, `Badge`, `HeroMedallion`, `GateCard`, `FilterChip`, `SectionTitle`, `Ornament`).
- `frontend/src/components/art/Warriors.tsx` и `HeroScene.tsx` — референс стиля SVG-арта.
- `frontend/src/components/Header.tsx`, `Mascot.tsx`, `frontend/src/app/(shell)/profil/page.tsx`.

Ключевые факты: Java 17 / Spring Boot 3.5 / JPA / Flyway / PostgreSQL 16; Next.js 16 (App Router, TS) / Tailwind 4 / framer-motion; весь пользовательский текст — **узбекский (латиница)**; формула уровней `Levels.java`: для уровня L суммарно нужно `50·L·(L−1)` XP (2-й уровень = 100 XP, 3-й = 300, 4-й = 600, 5-й = 1000, 8-й = 2800, 10-й = 4500, 15-й = 10500, 20-й = 19000).

## 1. Архитектурное решение (важно, не переусложняй)

Сейчас профиль привязан к анонимному `clientId` (UUID в localStorage), и все существующие эндпоинты (`/api/quiz/submit`, `/api/profile/{clientId}`, чат) работают по нему. **Сохрани это как есть.** Аккаунт — надстройка над профилем:

- Таблица `users` + `learner_profiles.user_id` (nullable FK). При регистрации анонимный профиль **привязывается** к аккаунту — XP, стрик и результаты не теряются.
- Ответ register/login содержит `clientId` профиля → фронтенд кладёт его в `localStorage["tirik-tarix-client-id"]`. Так вход с нового устройства восстанавливает прогресс, а все существующие эндпоинты продолжают работать без изменений.
- JWT нужен только для новых защищённых эндпоинтов (`/api/auth/me`, `/api/avatar/**`).
- **Гостевой режим не ломать**: незарегистрированный пользователь пользуется всем как раньше, но не имеет персонажа и «Xazina» — там показывай CTA «Ro'yxatdan o't».

## 2. Бэкенд

### 2.1 Аккаунты (пакет `uz.tiriktarix.auth`)

- Зависимости: `spring-boot-starter-security` + `jjwt` (api/impl/jackson, 0.12.x).
- `users`: `id`, `username` (уникален без учёта регистра: `UNIQUE INDEX ON lower(username)`; 3–20 символов `[a-zA-Z0-9_]`), `password_hash` (BCrypt), `created_at`.
- **Это детская платформа: никаких email и телефонов.** Только псевдоним + пароль (мин. 6 символов). В UI подсказка: «Haqiqiy ismingni yozma — taxallus o'ylab top».
- API:
  - `POST /api/auth/register` `{username, password, gender, displayName?, anonymousClientId?}` → `{token, clientId, profile}`. Если `anonymousClientId` передан и такой профиль существует и ещё не привязан — привязать его; иначе создать новый профиль. Сразу проставить `avatar_gender` и надеть стартовую экипировку.
  - `POST /api/auth/login` `{username, password}` → `{token, clientId, profile}`.
  - `GET /api/auth/me` (Bearer) → профиль + аватар.
- Stateless JWT-фильтр; секрет из env `TIRIK_TARIX_JWT_SECRET` (dev-default в `application.yml`), срок жизни токена 30 дней. SecurityConfig: все существующие эндпоинты и `/api/auth/**` — `permitAll`, `/api/avatar/**` и `/api/auth/me` — `authenticated`. CORS как в `WebConfig`.
- Ошибки: занятый username → 409 с `{message: "Bu taxallus band"}`; неверный логин/пароль → 401 `{message: "Taxallus yoki parol noto'g'ri"}`.

### 2.2 Персонаж и экипировка (пакет `uz.tiriktarix.avatar`)

- `learner_profiles` + колонка `avatar_gender` (`MALE`/`FEMALE`, nullable — у гостей пусто).
- `avatar_items`: `id`, `code` (уникальный, kebab-case), `name_uz`, `slot` (`HEAD`/`BODY`/`WEAPON`/`SHIELD`/`ACCESSORY`), `description_uz` (короткий исторический факт о предмете — это образовательный продукт), `unlock_type` (`LEVEL`/`TOTAL_XP`/`STREAK`), `unlock_value`, `ordinal`.
- `avatar_equipment`: `profile_id`, `slot`, `item_id`, `PRIMARY KEY (profile_id, slot)`.
- **Состояние «открыто/закрыто» НЕ хранится** — оно вычисляется из профиля: `LEVEL` → `Levels.of(xp).level() >= unlock_value`; `TOTAL_XP` → `xp >= unlock_value`; `STREAK` → `streak_days >= unlock_value`. XP никогда не списывается, открытое не закрывается.
- API:
  - `GET /api/avatar` (Bearer) → `{gender, equipped: {slot: itemCode}, items: [{code, nameUz, slot, descriptionUz, unlockType, unlockValue, unlocked, progress, target}]}` — `progress/target` для прогресс-бара закрытых (для `LEVEL` отдавай прогресс в XP до нужного уровня через `Levels.cumulativeXpToReach`).
  - `POST /api/avatar/equip` (Bearer) `{slot, itemCode | null}` — `null` снимает предмет. **Сервер обязан проверить, что предмет открыт и слот совпадает** (иначе 400) — клиенту не доверять.
  - `PATCH /api/avatar/gender` (Bearer) `{gender}` — смену пола персонажа разрешить бесплатно.
- Расширь ответ `POST /api/quiz/submit` полем `newlyUnlocked: [{code, nameUz, slot}]` — предметы, чей порог пересечён именно этим начислением XP (сравни уровень/XP до и после).

### 2.3 Миграции

- `V10__auth.sql` — `users`, `ALTER TABLE learner_profiles` (`user_id`, `avatar_gender`).
- `V11__avatar.sql` — `avatar_items`, `avatar_equipment` + сид каталога из раздела 4.
- Старые миграции не менять.

### 2.4 Тесты (по образцу `LevelsTest`)

- Юнит: разблокировка по границам (499 XP — меч закрыт, 500 — открыт; 2-й уровень — доспех открыт), запрет equip закрытого предмета и чужого слота.
- Интеграционный: register → login → me; привязка анонимного профиля (XP сохранился); занятый username → 409.

## 3. Фронтенд

### 3.1 Страницы входа: `/royxat` и `/kirish`

- `royxat` — регистрация в 2 шага в стиле проекта (Panel, Cinzel-заголовки, `tt-reveal`):
  1. «Taxallus» + «Parol» (+ подсказка про псевдоним);
  2. **«Qahramoningni tanla»** — два больших портрета (юноша / девушка, `O'g'il bola` / `Qiz bola`) с золотой рамкой выбора и лёгкой анимацией; кнопка «Boshlaymiz!».
- `kirish` — вход. После успеха: сохранить `token` (`tirik-tarix-token`) и `clientId` в localStorage, редирект в `/profil`.
- В `lib/api.ts`: `authApi()` (fetch с `Authorization: Bearer`), `getToken()/logout()`, типы `AvatarState`, `AvatarItem`. Выход — кнопка в профиле: чистит токен, пользователь остаётся гостем со своим clientId.

### 3.2 Персонаж — `components/art/Character.tsx`

- Чистый SVG (без картинок и внешних ассетов), `viewBox="0 0 240 320"`, стиль TEMIR VA ZAR как в `Warriors.tsx`/`HeroScene.tsx`: тёмная фигура (obsidian/steel-градиенты), золотые контуры и детали (zar), но **дружелюбный юный герой** — простое открытое лицо (глаза, брови, улыбка), не мрачный силуэт. Аудитория — дети.
- Порядок слоёв: задняя рука → тело/ноги (базовая одежда) → слот BODY → передняя рука → голова (лицо+причёска зависят от `gender`) → слот HEAD → слот WEAPON (в правой руке) → слот SHIELD (левая рука) → слот ACCESSORY.
- Поза юноши и девушки одинаковая (одни якорные точки), различия — причёска, лицо, крой базовой одежды; каждый предмет — отдельный SVG-`<g>` в словаре `itemCode → JSX`, садится на обе фигуры.
- Пропсы: `gender`, `equipped`, `size`; `aria-label="Sening qahramoning"`. Никаких тяжёлых фильтров/blur на мобильных, анимации уважают `prefers-reduced-motion`.

### 3.3 Страница «Xazina» — `/xazina`

- Заголовок «Xazina», подзаголовок: «XP to'plab, jihozlarni och — XP sarflanmaydi».
- Слева sticky-панель с живым превью персонажа (как липкая карточка героя на странице диалога), справа сетка предметов с фильтрами-чипами по слотам (`FilterChip`).
- Карточка предмета: мини-превью (тот же SVG-слой), название, исторический факт; открытый — «Kiyish»/«Yechish» (equip применяется мгновенно, превью обновляется); закрытый — приглушённый с 🔒, текстом «{N}-darajada ochiladi» или «{N} XP da ochiladi» и прогресс-баром (паттерн закрытых ачивок из `profil/page.tsx`).
- Гостю — экран-приглашение с CTA «Ro'yxatdan o't».

### 3.4 Профиль и шапка

- В «Yutuqlar zali» добавь сцену персонажа: большой `Character` в панели с гирих-орнаментом, рядом `displayName`/taxallus, звание и кнопка «Xazina».
- В `Header.tsx`: у авторизованного — мини-аватар (голова персонажа в кольце, как `HeroMedallion`) со ссылкой на `/profil`; у гостя — кнопка «Ro'yxatdan o't». Добавь пункт «Xazina» в навигацию.

### 3.5 Момент открытия предмета

- В результатах квиза, если пришёл `newlyUnlocked`: золотой баннер «Yangi jihoz ochildi: {nameUz}!», конфетти (canvas-confetti уже есть) и `tellMascot("celebrate", ...)`.

## 4. Каталог предметов (сид V11)

XP-пороги согласованы с формулой уровней; предметы из истории Узбекистана, у каждого — короткий факт в `description_uz`.

| code | name_uz | slot | unlock | порог |
|---|---|---|---|---|
| oddiy-chopon | Oddiy chopon | BODY | LEVEL | 1 (старт, надет) |
| doppi | Do'ppi | HEAD | LEVEL | 1 (старт, надет) |
| yogoch-qilich | Yog'och qilich | WEAPON | TOTAL_XP | 100 |
| charm-sovut | Charm sovut | BODY | LEVEL | 2 |
| charm-qalqon | Charm qalqon | SHIELD | TOTAL_XP | 300 |
| dubulga | Dubulg'a | HEAD | LEVEL | 3 |
| polat-qilich | Po'lat qilich | WEAPON | TOTAL_XP | 500 |
| kamon-sadoq | Kamon va sadoq | WEAPON | LEVEL | 4 |
| olov-tumor | Olov tumor | ACCESSORY | STREAK | 7 |
| temir-sovut | Temir sovut | BODY | LEVEL | 6 |
| nayza | Nayza | WEAPON | TOTAL_XP | 1200 |
| zar-qalqon | Zar naqshli qalqon | SHIELD | LEVEL | 8 |
| ipak-kamar | Ipak kamar | ACCESSORY | TOTAL_XP | 2000 |
| ipak-chopon | Ipak chopon | BODY | LEVEL | 10 |
| tug | Tug' | ACCESSORY | TOTAL_XP | 3000 |
| zar-dubulga | Zar dubulg'a | HEAD | LEVEL | 12 |
| zar-sovut | Zar sovut | BODY | LEVEL | 15 |
| zar-toj | Zar toj | HEAD | LEVEL | 18 |
| sohibqiron-qilichi | Sohibqiron qilichi | WEAPON | LEVEL | 20 |

## 5. Правила

- Весь UI-текст — узбекский (латиница); комментарии в коде — в стиле репозитория.
- Использовать существующие токены/утилиты и UI-кит; новых библиотек не добавлять (кроме security/jjwt на бэке).
- Правила производительности из README: без `mix-blend-mode` на прокручиваемых слоях, `will-change` точечно, декоративные анимации — только ≥1024px и с учётом `prefers-reduced-motion`.
- Доступность: фокус-кольца по списку селекторов, контраст AA на тёмном фоне, `aria-label` на SVG и иконках-кнопках.
- Помни про ловушку CSS-слоёв: базовые правила — только внутри `@layer base`.
- Обнови README: раздел про фичу + строки в таблице API + отметка в дорожной карте Фазы 1.

## 6. Что НЕ делать

- Не трогать диалоговый движок, карты, фильмы и логику начисления XP (матрицу в `QuizService`).
- Не вводить трату/списание XP, внутреннюю валюту и платежи.
- Не собирать персональные данные (email, телефон, настоящее имя).
- Не делать refresh-токены, восстановление пароля и rate-limiting — вне скоупа (оставь TODO-комментарии).
- Не добавлять растровые ассеты — весь арт только SVG в коде.

## 7. Приёмка (Definition of Done)

1. `cd backend && JAVA_HOME=$(/usr/libexec/java_home -v 17) mvn test` — зелёный, включая новые тесты.
2. `cd frontend && npm run build && npm run lint` — без ошибок.
3. Новый пользователь: регистрация → выбор персонажа → в профиле стоит герой в chopon и do'ppi; мини-аватар появился в шапке.
4. Анонимный прогресс (XP, стрик) сохранился после регистрации.
5. На 2-м уровне (100 XP) открывается Charm sovut, при 500 XP — Po'lat qilich; открытие показано баннером в результатах квиза; предметы надеваются в «Xazina», XP не уменьшается.
6. Equip закрытого предмета отклоняется сервером (400), даже если дёрнуть API напрямую.
7. Гостевой режим работает как раньше: квизы, чат, профиль без персонажа + CTA регистрации.
8. Вход с «другого устройства» (чистый localStorage) по логину/паролю восстанавливает прогресс и экипировку.

В конце дай короткую сводку: что сделано, какие файлы созданы/изменены, как проверить вручную за 2 минуты.
