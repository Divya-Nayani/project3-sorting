/*created a table that represents the user*/
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


/*created a table that represents the service*/
CREATE TABLE IF NOT EXISTS sorting.service(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     name                 VARCHAR(255) NOT NULL,
     payment_type         VARCHAR(255) NOT NULL,
     per_unit_cost        DOUBLE,
     company_id           BIGINT UNIQUE,
     recycle_id           BIGINT UNIQUE
);

/*created a table that represents the recycle*/
CREATE TABLE IF NOT EXISTS sorting.recycle(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     amount               DOUBLE
);

/*created a table that represents the company*/
CREATE TABLE IF NOT EXISTS sorting.company(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     name                 VARCHAR(255) NOT NULL,
     phone                VARCHAR(255) NOT NULL,
     description          TEXT,
     email                VARCHAR(255) NOT NULL
);

/*created a table that represents the address*/
CREATE TABLE IF NOT EXISTS sorting.address(
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     country              VARCHAR(255) NOT NULL,
     region               VARCHAR(255) NOT NULL,
     address              VARCHAR(255) NOT NULL
);

/*created a table that represents the question*/
CREATE TABLE IF NOT EXISTS sorting.question (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     description          TEXT,
     company_id           BIGINT UNIQUE
);

/*created a table that represents the answer*/
CREATE TABLE IF NOT EXISTS sorting.answer (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     description          TEXT
);

/*created a table that represents the rate*/
CREATE TABLE IF NOT EXISTS sorting.rate (
     id                   BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     service_id           BIGINT UNIQUE,
     name                 VARCHAR(255)
);

/*created a table that represents the user_service*/
CREATE TABLE IF NOT EXISTS sorting.user_service (
     user_id              BIGINT UNIQUE,
     service_id           BIGINT UNIQUE
);

ALTER TABLE sorting.service
    ADD CONSTRAINT service_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.company (id),
    ADD CONSTRAINT service_recycle_fk
        FOREIGN KEY (recycle_id) REFERENCES sorting.recycle (id)
            ON DELETE CASCADE ON UPDATE RESTRICT ;

ALTER TABLE sorting.question
    ADD CONSTRAINT question_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.resort_company(id)
            ON DELETE CASCADE ON UPDATE RESTRICT ;

ALTER TABLE sorting.rate
    ADD CONSTRAINT rate_service_fk
        FOREIGN KEY (service_id) REFERENCES sorting.service(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.user_service
    ADD CONSTRAINT user_service_user_fk
        FOREIGN KEY (user_id) REFERENCES sorting.user(id),
    ADD CONSTRAINT user_service_service_fk
        FOREIGN KEY (service_id) REFERENCES sorting.service(id),
            ON DELETE CASCADE ON UPDATE RESTRICT;






