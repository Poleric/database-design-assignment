CREATE TABLE AIRCRAFT (
    aircraft_id        VARCHAR(6)  PRIMARY KEY,  -- https://en.wikipedia.org/wiki/Aircraft_registration
    aircraft_model_id  VARCHAR(4)  NOT NULL REFERENCES AIRCRAFT_MODEL(aircraft_model_id),
    purchase_date      DATE        NOT NULL
);