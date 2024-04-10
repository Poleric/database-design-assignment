CREATE TABLE MEMBERSHIP (
    membership_id       NUMBER,
    account_id          NUMBER      NOT NULL,
    membership_type_id  VARCHAR(4)  NOT NULL,
    accumulated_points  NUMBER      DEFAULT 0,
    PRIMARY KEY (membership_id),
    FOREIGN KEY (account_id)         REFERENCES ACCOUNT(account_id),
    FOREIGN KEY (membership_type_id) REFERENCES MEMBERSHIP_TYPE(membership_type_id)
);

