CREATE TABLE MAINTENANCE_LOG(
    maintenance_log_id       NUMBER        PRIMARY KEY,
    aircraft_id              VARCHAR(6)   NOT NULL REFERENCES AIRCRAFT(aircraft_id),
    maintenance_type_id      VARCHAR(4)    NOT NULL REFERENCES MAINTENANCE_TYPE(maintenance_type_id),
    maintenance_datetime     TIMESTAMP     NOT NULL,
    maintenance_description  VARCHAR(100)  NOT NULL
);