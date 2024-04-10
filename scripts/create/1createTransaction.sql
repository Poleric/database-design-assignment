CREATE TABLE TRANSACTION(
    transaction_id         VARCHAR(10)  PRIMARY KEY,
    transaction_method_id  VARCHAR(4)   NOT NULL REFERENCES TRANSACTION_METHOD(transaction_method_id),
    created_at             TIMESTAMP    NOT NULL,
    amount                 NUMBER       NOT NULL,
    reference              VARCHAR(100)
);