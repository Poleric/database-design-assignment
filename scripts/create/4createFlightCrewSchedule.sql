CREATE TABLE FLIGHT_CREW_SCHEDULE(
    employee_id     NUMBER      NOT NULL REFERENCES EMPLOYEE(employee_id),
    flight_id       NUMBER      NOT NULL REFERENCES FLIGHT(flight_id),
    crew_role_id    VARCHAR(4)  NOT NULL REFERENCES CREW_ROLE(crew_role_id),
    clock_in_time   TIMESTAMP,
    clock_out_time  TIMESTAMP,
    PRIMARY KEY(employee_id, flight_id)
);