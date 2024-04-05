CREATE TABLE ROUTE (
    route_id           NUMBER,
    from_airport_id    VARCHAR(3)   NOT NULL,
    to_airport_id      VARCHAR(3)   NOT NULL,
    route_description  VARCHAR(64)  NOT NULL,
    PRIMARY KEY (route_id),
    FOREIGN KEY (from_airport_id) REFERENCES AIRPORT (airport_id),
    FOREIGN KEY (to_airport_id)   REFERENCES AIRPORT (airport_id)
);