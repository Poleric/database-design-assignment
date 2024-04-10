CREATE TABLE PAYMENT(
    payment_id      VARCHAR(10) NOT NULL,
    transaction_id  VARCHAR(10) NOT NULL,
    account_id      NUMBER      NOT NULL,
    PRIMARY KEY(payment_id),
    FOREIGN KEY(transaction_id) REFERENCES TRANSACTION(transaction_id),
    FOREIGN KEY(account_id)     REFERENCES ACCOUNT(account_id)
);