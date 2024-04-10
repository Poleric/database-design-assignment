CREATE TABLE PAYCHECK (
    paycheck_id       VARCHAR(10)  PRIMARY KEY ,
    transaction_id    VARCHAR(10)  NOT NULL REFERENCES TRANSACTION(transaction_id),
    employee_id       NUMBER       NOT NULL REFERENCES EMPLOYEE(employee_id)
);
