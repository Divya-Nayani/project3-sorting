CREATE TABLE IF NOT EXISTS sorting.users (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     first_name           VARCHAR(255) NOT NULL,
     last_name            VARCHAR(255) NOT NULL,
     age                  INT          NOT NULL,
     email                VARCHAR(255) NOT NULL,
     is_active            BOOLEAN,
     password             VARCHAR(255),
     phone                VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS sorting.service(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     descriptor           VARCHAR(255) NOT NULL,
     payment_type         VARCHAR(255) NOT NULL,
     per_unit_cost        DOUBLE,
     company_id           BIGINT UNIQUE,
     location             VARCHAR(255) NOT NULL,
     start_date           DATE,
     end_date             DATE,
     taking_out           BOOLEAN
);

CREATE TABLE IF NOT EXISTS sorting.service_type(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     name                 VARCHAR(255) NOT NULL,
     service_id           BIGINT UNIQUE
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
     exactAddress         VARCHAR(255) NOT NULL
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

CREATE TABLE IF NOT EXISTS sorting.role (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     role_type            BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.user_role (
     user_id              BIGINT UNIQUE,
     role_id              BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.user_service (
     user_id              BIGINT UNIQUE,
     service_id           BIGINT UNIQUE
);