CREATE TABLE TRANSACTION_METHOD (
    transaction_method_id  VARCHAR(4)   NOT NULL,
    method_name            VARCHAR(20)  NOT NULL,
    description            VARCHAR(100),
    PRIMARY KEY (transaction_method_id)
);