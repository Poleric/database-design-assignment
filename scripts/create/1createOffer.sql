CREATE TABLE OFFER(
    offer_id       NUMBER        NOT NULL,
    account_id     NUMBER        NOT NULL,
    offer_details  VARCHAR(100),
    discount_rate  NUMBER(3)     NOT NULL CHECK (discount_rate BETWEEN 0 AND 100),
    expiry_date    DATE          NOT NULL,
    PRIMARY KEY(offer_id),
    FOREIGN KEY(account_id) REFERENCES ACCOUNT(account_id)
);