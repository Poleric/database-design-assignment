CREATE TABLE MAINTENANCE_LOG(
    maintenance_log_id NUMBER NOT NULL,
    aircraft_id VARCHAR(10) NOT NULL,
    maintenance_type_id VARCHAR(4) NOT NULL,
    maintenance_date_time DATE NOT NULL,
    maintenance_description VARCHAR(200),
    PRIMARY KEY (maintenance_log_id),
    FOREIGN KEY (maintenance_type_id) REFERENCES MAINTENANCE_TYPE(maintenance_type_id),
    FOREIGN KEY (aircraft_id) REFERENCES AIRCRAFT(aircraft_id)
)