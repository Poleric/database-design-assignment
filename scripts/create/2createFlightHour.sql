CREATE TABLE FLIGHT_HOUR (
    pilot_id           NUMBER      PRIMARY KEY REFERENCES PILOT(pilot_id),
    aircraft_model_id  VARCHAR(4)  PRIMARY KEY REFERENCES AIRCRAFT_MODEL(aircraft_model_id),
    flight_hour        NUMBER
);
