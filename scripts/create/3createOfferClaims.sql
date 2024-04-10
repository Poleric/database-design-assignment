CREATE TABLE OFFER_CLAIMS(
    payment_id        VARCHAR(10) REFERENCES PAYMENT(payment_id),
    offer_id          VARCHAR(10) REFERENCES OFFER(offer_id),
    datetime_claimed  TIMESTAMP NOT NULL,
    PRIMARY KEY (payment_id, offer_id)
);