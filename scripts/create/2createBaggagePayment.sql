CREATE TABLE BAGGAGE_PAYMENT(
    baggage_payment_id  VARCHAR(10) PRIMARY KEY ,
    transaction_id      VARCHAR(10) NOT NULL REFERENCES TRANSACTION(transaction_id)
);