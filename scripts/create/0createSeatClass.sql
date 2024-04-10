CREATE TABLE SEAT_CLASS(
    seat_class_id   VARCHAR(4)   NOT NULL,
    class_name      VARCHAR(20)  NOT NULL,
    class_priority  NUMBER       NOT NULL  CHECK (class_priority >= 0),
    PRIMARY KEY (seat_class_id)
);