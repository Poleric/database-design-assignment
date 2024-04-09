CREATE TABLE FLIGHT_TICKET(
    flight_ticket_id NUMBER NOT NULL,
    account_id NUMBER NOT NULL,
    date_placed DATE NOT NULL,
    boarding_group VARCHAR(20),
    ticket_price NUMBER(7,2),
    PRIMARY KEY (flight_ticket_id),
    FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
)