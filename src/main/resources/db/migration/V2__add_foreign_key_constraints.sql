ALTER TABLE sorting.service
    ADD CONSTRAINT service_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.company (id)
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

ALTER TABLE sorting.user_role
    ADD CONSTRAINT user_service_user_fk
        FOREIGN KEY (user_id) REFERENCES sorting.user(id),
    ADD CONSTRAINT user_service_role_fk
        FOREIGN KEY (role_id) REFERENCES sorting.role(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.service_type
    ADD CONSTRAINT service_type_service_fk
        FOREIGN KEY (service_id) REFERENCES sorting.service(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.address
    ADD CONSTRAINT address_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.company(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.answer
    ADD CONSTRAINT answer_question_fk
        FOREIGN KEY (question_id) REFERENCES sorting.question(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;