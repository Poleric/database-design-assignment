CREATE TABLE TRANSACTION(
    transaction_id VARCHAR(10) NOT NULL,
    transaction_type_id VARCHAR(10) NOT NULL,
    transaction_receipt_no NUMBER,
    transaction_date_time DATE,
    PRIMARY KEY(transaction_id),
    FOREIGN KEY(transaction_type_id) REFERENCES TRANSACTION_TYPE(transaction_type_id)
)