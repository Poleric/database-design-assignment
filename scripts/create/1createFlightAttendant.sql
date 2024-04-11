CREATE TABLE FLIGHT_ATTENDANT (
    flight_attendant_id  VARCHAR(10)  PRIMARY KEY,
    employee_id          NUMBER       REFERENCES EMPLOYEE (employee_id)
);