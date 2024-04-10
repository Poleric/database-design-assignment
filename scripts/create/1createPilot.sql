CREATE TABLE PILOT (
    pilot_id              NUMBER NOT NULL,
    employee_id           NUMBER NOT NULL,
    pilot_license_number  VARCHAR(10) NOT NULL,
    total_flight_hour     NUMBER,
    PRIMARY KEY (pilot_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(employee_id)
);