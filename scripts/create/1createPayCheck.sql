CREATE TABLE PAY_CHECK (
    pay_check_id NUMBER NOT NULL,
    transaction_id NUMBER NOT NULL,
    employee_id NUMBER NOT NULL,
    pay_check_amount NUMBER NOT NULL,
    PRIMARY KEY (pay_check_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(employee_id)
);
