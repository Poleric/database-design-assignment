CREATE TABLE MEMBERSHIP_TYPE (
    membership_type_id    NUMBER,
    membership_type_name  VARCHAR(20)   NOT NULL,
    membership_discount   NUMBER(3, 0)  DEFAULT 0,  -- whole number
    membership_perks      VARCHAR(64),
    PRIMARY KEY (membership_type_id),
    CONSTRAINT check_discount_valid CHECK (membership_discount < 100 AND membership_discount > 0)
);
