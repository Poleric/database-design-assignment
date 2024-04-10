CREATE TABLE TRANSACTION_METHOD (
    transaction_method_id  VARCHAR(4)   PRIMARY KEY,
    method_name            VARCHAR(20)  NOT NULL UNIQUE,
    description            VARCHAR(100)
);