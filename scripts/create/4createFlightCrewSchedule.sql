CREATE TABLE FLIGHT_CREW_SCHEDULE(
    employee_id NUMBER NOT NULL,
    flight_id VARCHAR(10) NOT NULL,
    crew_role_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(employee_id,flight_id),
    FOREIGN KEY(employee_id) REFERENCES EMPLOYEE(employee_id),
    FOREIGN KEY(flight_id) REFERENCES FLIGHT(flight_id),
    FOREIGN KEY(crew_role_id) REFERENCES CREW_ROLE(crew_role_id)
)