CREATE TABLE BAGGAGE(
    baggage_id VARCHAR(10) NOT NULL,
    baggage_type_id VARCHAR(10) NOT NULL,
    baggage_payment_id VARCHAR(10) NOT NULL,
    flight_ticket_id NUMBER NOT NULL,
    baggage_weight NUMBER,
    additional_info VARCAHR(200),
    PRIMARY KEY(baggage_id),
    FOREIGN KEY(baggage_type_id) REFERENCES BAGGAGE_TYPE(baggage_type_id),
    FOREIGN KEY(baggage_payment_id) REFERENCES BAGGAGE_PAYMENT(baggage_payment_id),
    FOREIGN KEY(flight_ticket_id) REFERENCES FLIGHT_TICKET(flight_ticket_id)
)