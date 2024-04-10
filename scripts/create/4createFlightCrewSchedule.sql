CREATE TABLE FLIGHT_CREW_SCHEDULE(
    employee_id   NUMBER       NOT NULL REFERENCES EMPLOYEE(employee_id),
    flight_id     VARCHAR(10)  NOT NULL REFERENCES FLIGHT(flight_id),
    crew_role_id  VARCHAR(4)   NOT NULL REFERENCES CREW_ROLE(crew_role_id),
    PRIMARY KEY(employee_id, flight_id)
);