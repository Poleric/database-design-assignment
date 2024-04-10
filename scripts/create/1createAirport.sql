CREATE TABLE AIRPORT (
    airport_id        VARCHAR(3)   PRIMARY KEY ,  -- https://en.wikipedia.org/wiki/IATA_airport_code
    airport_fullname  VARCHAR(64)  NOT NULL UNIQUE,
    country_id        VARCHAR(2)   NOT NULL REFERENCES COUNTRY(country_id)
);
