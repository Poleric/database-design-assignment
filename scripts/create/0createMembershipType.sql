CREATE TABLE MEMBERSHIP_TYPE (
    membership_type_id      NUMBER        NOT NULL,
    membership_type_name    VARCHAR(20)   NOT NULL,
    membership_description  VARCHAR(100),
    membership_discount     NUMBER(3, 0)  DEFAULT 0  CHECK (membership_discount < 100 AND membership_discount > 0),  -- whole number
    PRIMARY KEY (membership_type_id)
);
