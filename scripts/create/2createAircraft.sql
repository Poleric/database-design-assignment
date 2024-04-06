CREATE TABLE AIRCRAFT (
    aircraft_id NUMBER NOT NULL,
    aircraft_model_id NUMBER NOT NULL,
    capacity NUMBER(10,2) NOT NULL,
    purchase_date DATE NOT NULL,
    PRIMARY KEY (aircraft_id),
    FOREIGN KEY (aircraft_model_id) REFERENCES AIRCRAFT_MODEL(aircraft_model_id)
);