CREATE TABLE FLIGHT_Attendant(
    flight_attendant_id NUMBER,
    employee_id NUMBER,
    PRIMARY KEY (flight_attendant_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE (employee_id)
);