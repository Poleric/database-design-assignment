CREATE TABLE OFFER_CLAIMS(
    payment_id VARCHAR(10) NOT NULL,
    offer_id VARCHAR(10) NOT NULL,
    date_claimed DATE,
    PRIMARY KEY(ticket_payment_id,offer_id),
    FOREIGN KEY(ticket_payment_id) REFERENCES TICKET_PAYMENT(payment_id),
    FOREIGN KEY(offer_id) REFERENCES OFFER(offer_id)
)