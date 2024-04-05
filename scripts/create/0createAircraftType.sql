CREATE TABLE AIRCRAFT_TYPE (
    aircraft_type_id           VARCHAR(3),
    aircraft_type_name         VARCHAR(20)  NOT NULL,
    aircraft_type_description  VARCHAR(64),
    PRIMARY KEY (aircraft_type_id)
);