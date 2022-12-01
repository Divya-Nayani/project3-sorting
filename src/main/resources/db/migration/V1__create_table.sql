CREATE TABLE IF NOT EXISTS sorting.users (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     first_name           VARCHAR(255) NOT NULL,
     last_name            VARCHAR(255) NOT NULL,
     email                VARCHAR(255) NOT NULL,
     is_active            BOOLEAN,
     password             VARCHAR(255),
     phone                VARCHAR(255),
     profile_picture      VARCHAR(255),
     notification         BOOLEAN
 );

CREATE TABLE IF NOT EXISTS sorting.collection_point(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     payment_type         VARCHAR(255) NOT NULL,
     per_unit_cost        DOUBLE,
     company_id           BIGINT UNIQUE,
     location_latitude    VARCHAR(255) NOT NULL,
     location_longitude   VARCHAR(255) NOT NULL,
     start_time           TIME,
     end_time             TIME,
     taking_out           BOOLEAN,
     address              VARCHAR(255),
     main_point           BOOLEAN
);

CREATE TABLE IF NOT EXISTS sorting.service_type(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     name                 VARCHAR(255) NOT NULL,
     service_group_id     BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.service_group(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     name                 VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS sorting.company(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     name                 VARCHAR(255) NOT NULL,
     phone                VARCHAR(255) NOT NULL,
     description          TEXT
);

CREATE TABLE IF NOT EXISTS sorting.question (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     description          TEXT,
     company_id           BIGINT UNIQUE,
     user_id              BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.answer (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     description          TEXT
);

CREATE TABLE IF NOT EXISTS sorting.rate (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     user_id              BIGINT UNIQUE,
     rating_level         INT,
     company_id           BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.role (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     role_type            BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.user_role (
     user_id              BIGINT UNIQUE,
     role_id              BIGINT UNIQUE
);

CREATE TABLE IF NOT EXISTS sorting.collection_point_service_type (
     collection_point_id   BIGINT UNIQUE,
     service_type_id       BIGINT UNIQUE
);