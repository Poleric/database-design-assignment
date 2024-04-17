CREATE TABLE BAGGAGE(
    baggage_id            NUMBER       PRIMARY KEY,
    baggage_type_id       VARCHAR(10)  NOT NULL REFERENCES BAGGAGE_TYPE(baggage_type_id),
    payment_id            VARCHAR(10)  NOT NULL REFERENCES PAYMENT(payment_id),
    flight_ticket_id      VARCHAR(13)  NOT NULL REFERENCES FLIGHT_TICKET(flight_ticket_id),
    baggage_weight_in_kg  NUMBER       NOT NULL,
    price                 NUMBER       NOT NULL,
    additional_info       VARCHAR(100)
);