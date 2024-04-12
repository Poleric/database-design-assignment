CREATE TABLE PILOT (
    pilot_id              VARCHAR(6)   PRIMARY KEY,
    employee_id           NUMBER       NOT NULL UNIQUE REFERENCES EMPLOYEE(employee_id),
    pilot_license_number  VARCHAR(10)  NOT NULL,
    total_flight_hour     NUMBER       DEFAULT 0
);