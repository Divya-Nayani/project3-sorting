CREATE TABLE IF NOT EXISTS sorting.users (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     first_name           VARCHAR(255) NOT NULL,
     last_name            VARCHAR(255) NOT NULL,
     age                  INT          NOT NULL,
     email                VARCHAR(255) NOT NULL,
     is_active            BOOLEAN,
     password             VARCHAR(255),
     phone                VARCHAR(255),
     role                 VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS sorting.service(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     name                 VARCHAR(255) NOT NULL,
     payment_type         VARCHAR(255) NOT NULL,
     per_unit_cost        DOUBLE,
     company_id           BIGINT UNIQUE,
     recycle_id           BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.recycle(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     amount               DOUBLE
);

CREATE TABLE IF NOT EXISTS sorting.company(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     name                 VARCHAR(255) NOT NULL,
     phone                VARCHAR(255) NOT NULL,
     description          TEXT,
     email                VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS sorting.address(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     country              VARCHAR(255) NOT NULL,
     region               VARCHAR(255) NOT NULL,
     address              VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS sorting.question (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     description          TEXT,
     company_id           BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.answer (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     description          TEXT
);

CREATE TABLE IF NOT EXISTS sorting.rate (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     service_id           BIGINT UNIQUE,
     name                 VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS sorting.user_service (
     user_id              BIGINT UNIQUE,
     service_id           BIGINT UNIQUE
);