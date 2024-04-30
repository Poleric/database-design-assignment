CREATE TABLE REFUND(
    refund_id   VARCHAR(10)   PRIMARY KEY,
    payment_id  VARCHAR(10)   NOT NULL REFERENCES PAYMENT(payment_id),
    created_at  TIMESTAMP     NOT NULL,
    reason      VARCHAR(100)  NOT NULL
);