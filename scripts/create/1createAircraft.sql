CREATE TABLE AIRCRAFT (
    aircraft_id        VARCHAR(10)  NOT NULL,
    aircraft_model_id  VARCHAR(4)   NOT NULL,
    capacity           NUMBER(3)    NOT NULL,
    purchase_date      DATE         NOT NULL,
    PRIMARY KEY (aircraft_id),
    FOREIGN KEY (aircraft_model_id) REFERENCES AIRCRAFT_MODEL(aircraft_model_id)
);