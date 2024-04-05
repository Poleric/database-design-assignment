CREATE TABLE REST_LOG (
    rest_id NUMBER NOT NULL,
    pilot_id NUMBER NOT NULL,
    start_date_time DATE NOT NULL,
    end_date_time DATE NOT NULL,
    PRIMARY KEY (rest_id),
    FOREIGN KEY (pilot_id) REFERENCES PILOT (pilot_id)
)