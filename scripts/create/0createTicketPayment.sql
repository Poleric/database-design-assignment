CREATE TABLE TICKET_PAYMENT(
    payment_id VARCHAR(10) NOT NULL,
    transaction_id NUMBER NOT NULL,
    account_id NUMBER NOT NULL,
    payment_amount NUMBER(7,2),
    reference_ VARCHAR(50),
    remark_ VARCHAR(100),
    PRIMARY KEY(payment_id),
    FOREIGN KEY(transaction_id) REFERENCES TRANSACTION(transaction_id),
    FOREIGN KEY(account_id) REFERENCES ACCOUNT(account_id)
)