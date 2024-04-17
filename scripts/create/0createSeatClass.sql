CREATE TABLE SEAT_CLASS(
    seat_class_id      VARCHAR(4)   PRIMARY KEY,
    class_name         VARCHAR(20)  NOT NULL UNIQUE,
    class_description  VARCHAR(100)
);