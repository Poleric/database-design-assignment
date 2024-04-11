CREATE TABLE OFFER(
    offer_id       NUMBER        PRIMARY KEY,
    account_id     NUMBER        NOT NULL REFERENCES ACCOUNT(account_id),
    offer_details  VARCHAR(100),
    discount_rate  NUMBER(3)     NOT NULL CHECK (discount_rate BETWEEN 0 AND 100),
    expiry_date    DATE          NOT NULL,
    is_claimed     NUMBER(1)     DEFAULT 0  CHECK(is_claimed IN (0, 1) )
);