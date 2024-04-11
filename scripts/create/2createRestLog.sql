CREATE TABLE REST_LOG (
    rest_id         NUMBER       PRIMARY KEY,
    pilot_id        VARCHAR(10)  NOT NULL REFERENCES PILOT (pilot_id),
    start_datetime  TIMESTAMP    NOT NULL,
    end_datetime    TIMESTAMP    NOT NULL
);