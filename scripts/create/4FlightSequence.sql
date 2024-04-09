CREATE TABLE FLIGHT_SEQUENCE(
    flight_ticket_id VARCHAR(10) NOT NULL,
    flight_id VARCHAR(10) NOT NULL,
    SEAT_ID NUMBER NOT NULL,
    flight_sequence NUMBER NOT NULL,
    PRIMARY KEY(flight_ticket_id,flight_id),
    FOREIGN KEY(flight_ticket_id) REFERENCES FLIGHT_TICKET(flight_ticket_id)
)