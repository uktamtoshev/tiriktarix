-- Tirik tarix: asosiy sxema.
-- Yagona kontent bazasi — fakt kartochkalari barcha modullarni oziqlantiradi.

CREATE TABLE eras (
    id             BIGSERIAL PRIMARY KEY,
    code           TEXT    NOT NULL UNIQUE,
    name_uz        TEXT    NOT NULL,
    ordinal        INT     NOT NULL,
    year_from      INT,
    year_to        INT,
    description_uz TEXT
);

CREATE TABLE heroes (
    id                BIGSERIAL PRIMARY KEY,
    slug              TEXT    NOT NULL UNIQUE,
    name_uz           TEXT    NOT NULL,
    title_uz          TEXT,
    birth_year        INT,
    death_year        INT     NOT NULL,
    era_id            BIGINT  REFERENCES eras (id),
    bio_uz            TEXT,
    greeting_uz       TEXT,
    portrait_emoji    TEXT,
    on_topic_keywords JSONB   NOT NULL DEFAULT '[]'
);

CREATE TABLE fact_cards (
    id       BIGSERIAL PRIMARY KEY,
    hero_id  BIGINT  REFERENCES heroes (id),
    era_id   BIGINT  REFERENCES eras (id),
    topic_uz TEXT    NOT NULL,
    fact_uz  TEXT    NOT NULL,
    keywords JSONB   NOT NULL DEFAULT '[]',
    source   TEXT    NOT NULL,
    verified BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE INDEX idx_fact_cards_hero ON fact_cards (hero_id) WHERE verified;
CREATE INDEX idx_fact_cards_era ON fact_cards (era_id) WHERE verified;

CREATE TABLE historical_events (
    id             BIGSERIAL PRIMARY KEY,
    era_id         BIGINT NOT NULL REFERENCES eras (id),
    title_uz       TEXT   NOT NULL,
    year_from      INT    NOT NULL,
    year_to        INT,
    location_uz    TEXT,
    description_uz TEXT   NOT NULL
);

CREATE INDEX idx_events_era ON historical_events (era_id, year_from);

CREATE TABLE quiz_questions (
    id             BIGSERIAL PRIMARY KEY,
    hero_id        BIGINT REFERENCES heroes (id),
    era_id         BIGINT REFERENCES eras (id),
    fact_card_id   BIGINT REFERENCES fact_cards (id),
    question_uz    TEXT   NOT NULL,
    options        JSONB  NOT NULL,
    correct_index  INT    NOT NULL,
    explanation_uz TEXT
);

CREATE INDEX idx_quiz_hero ON quiz_questions (hero_id);
CREATE INDEX idx_quiz_era ON quiz_questions (era_id);

CREATE TABLE learner_profiles (
    id               BIGSERIAL PRIMARY KEY,
    client_id        TEXT NOT NULL UNIQUE,
    display_name     TEXT,
    xp               INT  NOT NULL DEFAULT 0,
    streak_days      INT  NOT NULL DEFAULT 0,
    last_active_date DATE
);

CREATE TABLE conversations (
    id         BIGSERIAL PRIMARY KEY,
    hero_id    BIGINT      NOT NULL REFERENCES heroes (id),
    client_id  TEXT        NOT NULL,
    started_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_conversations_client ON conversations (client_id, hero_id);

CREATE TABLE chat_messages (
    id              BIGSERIAL PRIMARY KEY,
    conversation_id BIGINT      NOT NULL REFERENCES conversations (id),
    role            TEXT        NOT NULL,
    text_uz         TEXT        NOT NULL,
    refusal_type    TEXT,
    fact_card_id    BIGINT      REFERENCES fact_cards (id),
    created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_chat_messages_conversation ON chat_messages (conversation_id, created_at);

CREATE TABLE quiz_results (
    id         BIGSERIAL PRIMARY KEY,
    profile_id BIGINT      NOT NULL REFERENCES learner_profiles (id),
    scope      TEXT        NOT NULL,
    score      INT         NOT NULL,
    total      INT         NOT NULL,
    xp_earned  INT         NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_quiz_results_profile ON quiz_results (profile_id, created_at DESC);
