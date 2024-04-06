CREATE TABLE FLIGHT(
    flight_id VARCHAR(10) NOT NULL,
    route_id NUMBER NOT NULL,
    aircraft_id VARCHAR(10) NOT NULL,
    departure_date_time DATE NOT NULL,
    estimated_flight_duration NUMBER NOT NULL,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (route_id) REFERENCES ROUTE(route_id),
    FOREIGN KEY (aircraft_id) REFERENCES AIRCRAFT(aircraft_id)
)