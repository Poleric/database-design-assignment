CREATE TABLE FLIGHT_HOUR (
    pilot_id NUMBER NOT NULL,
    aircraft_model_id NUMBER NOT NULL,
    flight_hour NUMBER,
    PRIMARY KEY (pilot_id,aircraft_model_id),
    FOREIGN KEY (pilot_id) REFERENCES PILOT(pilot_id),
    FOREIGN KEY (aircraft_model_id) REFERENCES AIRCRAFT_MODEL(aircraft_model_id)
)