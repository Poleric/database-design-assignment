CREATE TABLE TRANSACTION(
    transaction_id         VARCHAR(10)  NOT NULL,
    transaction_method_id  VARCHAR(4)  NOT NULL,
    created_at             TIMESTAMP    NOT NULL,
    amount                 NUMBER       NOT NULL,
    reference              VARCHAR(100),
    PRIMARY KEY(transaction_id),
    FOREIGN KEY(transaction_method_id) REFERENCES TRANSACTION_METHOD(transaction_method_id)
);