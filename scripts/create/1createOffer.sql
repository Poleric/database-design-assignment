CREATE TABLE OFFER(
    offer_id NUMBER NOT NULL,
    account_id NUMBER NOT NULL,
    offer_details VARCHAR(100),
    conditions VARCHAR(50),
    discount NUMBER(5,2),
    expiry_date DATE,
    PRIMARY KEY(offer_id),
    FOREIGN KEY(account_id) REFERENCES ACCOUNT(account_id)
)