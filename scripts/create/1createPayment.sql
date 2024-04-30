CREATE TABLE PAYMENT(
    payment_id         VARCHAR(10)  PRIMARY KEY,
    payment_method_id  VARCHAR(10)  NOT NULL REFERENCES PAYMENT_METHOD(payment_method_id),
    account_id         NUMBER       NOT NULL REFERENCES ACCOUNT(account_id),
    created_at         TIMESTAMP    NOT NULL,
    amount             NUMBER       NOT NULL CHECK (amount > 0),
    reference          VARCHAR(200)
);