CREATE TABLE AIRCRAFT (
    aircraft_id        VARCHAR(6)  PRIMARY KEY,
    aircraft_model_id  VARCHAR(4)  NOT NULL UNIQUE REFERENCES AIRCRAFT_MODEL(aircraft_model_id),
    capacity           NUMBER(3)   NOT NULL,
    purchase_date      DATE        NOT NULL
);