CREATE TABLE FLIGHT_TICKET(
    flight_ticket_id    VARCHAR(15)  PRIMARY KEY,
    account_id          NUMBER       NOT NULL  REFERENCES ACCOUNT(account_id),
    payment_id          VARCHAR(10)  NOT NULL  REFERENCES PAYMENT(payment_id),
    datetime_placed     TIMESTAMP    NOT NULL,
    boarding_group      NUMBER       NOT NULL  CHECK (boarding_group > 0),
    ticket_price        NUMBER(7,2)  NOT NULL,
    ticket_status       VARCHAR(9)   NOT NULL  CHECK (ticket_status IN ('Completed', 'Paid', 'Cancelled') ),
    special_service_id  VARCHAR(4)             REFERENCES SPECIAL_SERVICE(special_service_id)
);