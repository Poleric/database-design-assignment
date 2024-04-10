CREATE TABLE PAYCHECK (
    paycheck_id     NUMBER NOT NULL,
    transaction_id  NUMBER NOT NULL,
    employee_id     NUMBER NOT NULL,
    pay_check_amount NUMBER NOT NULL,
    PRIMARY KEY (paycheck_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(employee_id)
);
