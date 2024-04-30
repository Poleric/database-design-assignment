CREATE TABLE MEMBERSHIP_TYPE (
    membership_type_id      VARCHAR(4)    PRIMARY KEY ,
    membership_type_name    VARCHAR(20)   NOT NULL UNIQUE,
    membership_description  VARCHAR(100),
    membership_discount     NUMBER(3, 0)  DEFAULT 0  CHECK (membership_discount < 100 AND membership_discount > 0)  -- whole number
);
