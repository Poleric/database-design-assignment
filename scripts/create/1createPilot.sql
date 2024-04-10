CREATE TABLE PILOT (
    pilot_id     NUMBER NOT NULL,
    employee_id  NUMBER NOT NULL,
    PRIMARY KEY (pilot_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(employee_id)
);