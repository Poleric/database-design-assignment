CREATE TABLE PILOT (
    pilot_id              NUMBER PRIMARY KEY,
    employee_id           NUMBER NOT NULL REFERENCES EMPLOYEE(employee_id),
    pilot_license_number  VARCHAR(10) NOT NULL,
    total_flight_hour     NUMBER
);