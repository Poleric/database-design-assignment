CREATE TABLE MEMBERSHIP (
    membership_id       NUMBER      PRIMARY KEY,
    account_id          NUMBER      NOT NULL REFERENCES ACCOUNT(account_id),
    membership_type_id  VARCHAR(4)  NOT NULL REFERENCES MEMBERSHIP_TYPE(membership_type_id),
    accumulated_points  NUMBER      DEFAULT 0
);

