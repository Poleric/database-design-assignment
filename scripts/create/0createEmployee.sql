CREATE TABLE EMPLOYEE(
    employee_id NUMBER,
    employee_name VARCHAR(255) NOT NULL,
    gender CHAR(1) NOT NULL,
    hired_date DATE NOT NULL,
    salary NUMBER(7,2) NOT NULL,
    PRIMARY KEY (employee_id),
    CONSTRAINT check_gender CHECK (gender = 'M' OR gender = 'F'),
    CONSTRAINT check_salary_not_neg CHECK (salary > 0)
);
