CREATE TABLE MEMBERSHIP_TYPE (
    membership_type_id    NUMBER,
    membership_type_name  VARCHAR(20) NOT NULL,
    membership_discount   NUMBER,  -- whole number
    membership_perks      VARCHAR(64),
    PRIMARY KEY (membership_type_id)
);
