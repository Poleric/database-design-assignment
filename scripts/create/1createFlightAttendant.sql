CREATE TABLE FLIGHT_ATTENDANT (
    flight_attendant_id  NUMBER  NOT NULL,
    employee_id          NUMBER  NOT NULL,
    PRIMARY KEY (flight_attendant_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE (employee_id)
);