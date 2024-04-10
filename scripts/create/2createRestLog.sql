CREATE TABLE REST_LOG (
    rest_id         NUMBER NOT NULL,
    pilot_id        NUMBER NOT NULL,
    start_datetime  TIMESTAMP NOT NULL,
    end_datetime    TIMESTAMP NOT NULL,
    PRIMARY KEY (rest_id),
    FOREIGN KEY (pilot_id) REFERENCES PILOT (pilot_id)
);