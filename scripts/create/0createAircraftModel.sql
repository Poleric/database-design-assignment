CREATE TABLE AIRCRAFT_MODEL (
    aircraft_model_id   VARCHAR(4)   PRIMARY KEY ,  -- https://en.wikipedia.org/wiki/List_of_aircraft_type_designators
    model_name          VARCHAR(20)  NOT NULL UNIQUE,
    model_manufacturer  VARCHAR(20)  NOT NULL,
    number_of_seat      NUMBER       NOT NULL CHECK (number_of_seat > 0),
    release_date        DATE         NOT NULL
);
