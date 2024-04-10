CREATE TABLE REFUND(
    refund_id VARCHAR(10) NOT NULL,
    transaction_id NUMBER NOT NULL,
    payment_id VARCHAR(10) NOT NULL,
    refund_amount NUMBER(7,2),
    reason VARCHAR(200),
    PRIMARY KEY (refund_id),
    FOREIGN KEY (transaction_id) REFERENCES TRANSACTION(transaction_id),
    FOREIGN KEY (payment_id) REFERENCES TICKET_PAYMENT(payment_id)
)