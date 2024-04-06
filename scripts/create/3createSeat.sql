CREATE TABLE SEAT(
    seat_id NUMBER NOT NULL,
    aircraft_id VARCHAR(10) NOT NULL,
    seat_class_id VARCHAR(10) NOT NULL,
    seat_number NUMBER NOT NULL,
    PRIMARY KEY (seat_id),
    FOREIGN KEY (aircraft_id) REFERENCES AIRCRAFT (aircraft_id),
    FOREIGN KEY (seat_class_id) REFERENCES SEAT_CLASS (seat_class_id)
)