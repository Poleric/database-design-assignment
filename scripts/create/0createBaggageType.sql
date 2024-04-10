CREATE TABLE BAGGAGE_TYPE(
    baggage_type_id           VARCHAR(3)    PRIMARY KEY,
    baggage_type_name         VARCHAR(20)   NOT NULL UNIQUE,
    baggage_type_description  VARCHAR(100)
);
