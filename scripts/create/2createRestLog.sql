CREATE TABLE REST_LOG (
    rest_log_id         NUMBER       PRIMARY KEY,
    pilot_id        VARCHAR(6)  NOT NULL REFERENCES PILOT (pilot_id),
    start_datetime  TIMESTAMP    NOT NULL,
    end_datetime    TIMESTAMP    NOT NULL
);