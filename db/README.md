# Дамп базы данных

`tirik_tarix_dump.sql` — дамп PostgreSQL (схема + контент): эпохи, герои,
факт-карточки, события, тесты, фильмы, карты, джихозы, ранги.

Репозиторий публичный, поэтому **данные пользователей в дамп не входят** —
таблицы созданы пустыми: `users`, `integration_keys`, `admin_audit_log`,
`avatar_equipment`, `avatar_purchases`, `chat_messages`, `conversations`,
`film_watches`, `learner_profiles`, `own_cards`, `quiz_results`, `voice_cache`.

## Восстановление

```bash
createdb tirik_tarix
psql -d tirik_tarix -f db/tirik_tarix_dump.sql
```

`flyway_schema_history` входит в дамп, поэтому бэкенд поднимется поверх
восстановленной базы и применит только более новые миграции.

## Обновление дампа

```bash
pg_dump -d tirik_tarix \
  --exclude-table-data=users --exclude-table-data=integration_keys \
  --exclude-table-data=admin_audit_log --exclude-table-data=avatar_equipment \
  --exclude-table-data=avatar_purchases --exclude-table-data=chat_messages \
  --exclude-table-data=conversations --exclude-table-data=film_watches \
  --exclude-table-data=learner_profiles --exclude-table-data=own_cards \
  --exclude-table-data=quiz_results --exclude-table-data=voice_cache \
  -f db/tirik_tarix_dump.sql
```
