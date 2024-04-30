CREATE TABLE FLIGHT (
    flight_id             NUMBER      PRIMARY KEY ,
    route_id              VARCHAR(7)  NOT NULL REFERENCES ROUTE(route_id),
    aircraft_id           VARCHAR(6)  NOT NULL REFERENCES AIRCRAFT(aircraft_id),
    departure_datetime    TIMESTAMP   NOT NULL,
    est_duration_in_hour  NUMBER      NOT NULL CHECK (est_duration_in_hour > 0),
    is_codeshare          NUMBER(1)   DEFAULT 0 CHECK (is_codeshare IN (0, 1) )  -- boolean
);