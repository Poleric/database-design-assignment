CREATE TABLE OFFER(
    offer_id       VARCHAR(10)   PRIMARY KEY,
    account_id     NUMBER        NOT NULL REFERENCES ACCOUNT(account_id),
    offer_details  VARCHAR(100),
    discount_rate  NUMBER(3)     NOT NULL CHECK (discount_rate BETWEEN 0 AND 100),
    expiry_date    DATE          NOT NULL
);