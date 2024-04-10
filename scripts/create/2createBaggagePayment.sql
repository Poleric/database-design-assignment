CREATE TABLE BAGGAGE_PAYMENT(
    baggage_payment_id VARCHAR(10) NOT NULL,
    transcation_id VARCHAR(10) NOT NULL,
    payment_amount NUMBER,
    PRIMARY KEY(baggage_payment_id),
    FOREIGN KEY(transaction_id) REFERENCES TRANSACTION(transaction_id)
)