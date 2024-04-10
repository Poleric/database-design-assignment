CREATE TABLE SEAT(
    seat_id        VARCHAR(10)  PRIMARY KEY,
    aircraft_id    VARCHAR(10)  NOT NULL REFERENCES AIRCRAFT (aircraft_id),
    seat_class_id  VARCHAR(10)  NOT NULL REFERENCES SEAT_CLASS (seat_class_id),
    seat_number    NUMBER       NOT NULL
);