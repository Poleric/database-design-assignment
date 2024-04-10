CREATE TABLE FLIGHT_SEQUENCE (
    flight_ticket_id  VARCHAR(15)  NOT NULL REFERENCES FLIGHT_TICKET(flight_ticket_id),
    flight_id         VARCHAR(10)  NOT NULL REFERENCES FLIGHT(flight_id),
    seat_id           VARCHAR(10)  NOT NULL,
    flight_sequence   NUMBER       NOT NULL CHECK (flight_sequence > 0),
    PRIMARY KEY(flight_ticket_id, flight_id)
);