CREATE TABLE FLIGHT_ATTENDANT (
    flight_attendant_id  NUMBER PRIMARY KEY,
    employee_id          NUMBER REFERENCES EMPLOYEE (employee_id)
);