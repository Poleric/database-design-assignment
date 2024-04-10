CREATE TABLE FLIGHT_HOUR (
    pilot_id           NUMBER      REFERENCES PILOT(pilot_id),
    aircraft_model_id  VARCHAR(4)  REFERENCES AIRCRAFT_MODEL(aircraft_model_id),
    flight_hour        NUMBER,
    PRIMARY KEY (pilot_id, flight_hour)
);
