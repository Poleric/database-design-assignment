CREATE TABLE AIRCRAFT_MODEL (
    aircraft_model_id   VARCHAR(4),  -- https://en.wikipedia.org/wiki/List_of_aircraft_type_designators
    aircraft_type_id    VARCHAR(3)   NOT NULL,
    model_name          VARCHAR(20)  NOT NULL,
    model_manufacturer  VARCHAR(20)  NOT NULL,
    release_date        DATE         NOT NULL,
    PRIMARY KEY (aircraft_model_id),
    FOREIGN KEY (aircraft_type_id) REFERENCES AIRCRAFT_TYPE(aircraft_type_id)
);

