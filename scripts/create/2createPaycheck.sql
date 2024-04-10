CREATE TABLE PAYCHECK (
    paycheck_id       VARCHAR(10)  NOT NULL,
    transaction_id    VARCHAR(10)  NOT NULL,
    employee_id       NUMBER       NOT NULL,
    PRIMARY KEY (paycheck_id),
    FOREIGN KEY (transaction_id) REFERENCES TRANSACTION(transaction_id),
    FOREIGN KEY (employee_id)    REFERENCES EMPLOYEE(employee_id)
);
