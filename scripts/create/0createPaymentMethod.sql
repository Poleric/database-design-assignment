CREATE TABLE PAYMENT_METHOD (
    payment_method_id  VARCHAR(4)   PRIMARY KEY,
    method_name        VARCHAR(30)  NOT NULL UNIQUE,
    description        VARCHAR(200)
);