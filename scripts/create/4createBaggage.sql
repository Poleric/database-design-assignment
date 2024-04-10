CREATE TABLE BAGGAGE(
    baggage_id            VARCHAR(10)  PRIMARY KEY,
    baggage_type_id       VARCHAR(10)  NOT NULL REFERENCES BAGGAGE_TYPE(baggage_type_id),
    baggage_payment_id    VARCHAR(10)  NOT NULL REFERENCES BAGGAGE_PAYMENT(baggage_payment_id),
    flight_ticket_id      VARCHAR(15)  NOT NULL REFERENCES FLIGHT_TICKET(flight_ticket_id),
    baggage_weight_in_kg  NUMBER,
    price                 NUMBER,
    additional_info       VARCHAR(100)
);