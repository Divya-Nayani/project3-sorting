ALTER TABLE sorting.service
    ADD CONSTRAINT service_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.company (id),
    ADD CONSTRAINT service_recycle_fk
        FOREIGN KEY (recycle_id) REFERENCES sorting.recycle (id)
            ON DELETE CASCADE ON UPDATE RESTRICT ;

ALTER TABLE sorting.question
    ADD CONSTRAINT question_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.company(id)
            ON DELETE CASCADE ON UPDATE RESTRICT ;

ALTER TABLE sorting.rate
    ADD CONSTRAINT rate_service_fk
        FOREIGN KEY (service_id) REFERENCES sorting.service(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.user_service
    ADD CONSTRAINT user_service_user_fk
        FOREIGN KEY (user_id) REFERENCES sorting.user(id),
    ADD CONSTRAINT user_service_service_fk
        FOREIGN KEY (service_id) REFERENCES sorting.service(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;