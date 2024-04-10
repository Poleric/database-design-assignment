CREATE TABLE EMPLOYEE (
    employee_id    NUMBER        PRIMARY KEY,
    employee_name  VARCHAR(255)  NOT NULL,
    gender         CHAR(1)       CHECK (gender = 'M' OR gender = 'F' OR gender IS NULL),
    hired_date     DATE          NOT NULL,
    salary         NUMBER(7,2)   NOT NULL CHECK (salary > 0)
);
