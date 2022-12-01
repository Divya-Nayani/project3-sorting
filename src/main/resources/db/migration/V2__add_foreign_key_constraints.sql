ALTER TABLE sorting.question
    ADD CONSTRAINT question_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.company(id),
    ADD CONSTRAINT question_user_fk
        FOREIGN KEY (user_id) REFERENCES sorting.user(id)
            ON DELETE CASCADE ON UPDATE RESTRICT ;

ALTER TABLE sorting.rate
    ADD CONSTRAINT rate_user_fk
        FOREIGN KEY (user_id) REFERENCES sorting.user(id),
    ADD CONSTRAINT rate_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.company(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.collection_point_service_type
    ADD CONSTRAINT collection_point_service_type_collection_point_fk
        FOREIGN KEY (collection_point_id) REFERENCES sorting.collection_point(id),
    ADD CONSTRAINT collection_point_service_type_service_type_fk
        FOREIGN KEY (service_type_id) REFERENCES sorting.service_type(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.user_role
    ADD CONSTRAINT user_role_user_fk
        FOREIGN KEY (user_id) REFERENCES sorting.user(id),
    ADD CONSTRAINT user_role_role_fk
        FOREIGN KEY (role_id) REFERENCES sorting.role(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.service_type
    ADD CONSTRAINT service_type_service_group_fk
        FOREIGN KEY (service_group_id) REFERENCES sorting.service_group(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.collection_point
    ADD CONSTRAINT collection_point_company_fk
        FOREIGN KEY (company_id) REFERENCES sorting.company(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.answer
    ADD CONSTRAINT answer_question_fk
        FOREIGN KEY (question_id) REFERENCES sorting.answer(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE sorting.company
    ADD CONSTRAINT company_user_fk
        FOREIGN KEY (user_id) REFERENCES sorting.company(id)
            ON DELETE CASCADE ON UPDATE RESTRICT;