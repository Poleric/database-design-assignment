CREATE TABLE PAYMENT(
    payment_id      VARCHAR(10) PRIMARY KEY,
    transaction_id  VARCHAR(10) NOT NULL REFERENCES TRANSACTION(transaction_id),
    account_id      NUMBER      NOT NULL REFERENCES ACCOUNT(account_id)
);