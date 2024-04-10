CREATE TABLE ROUTE (
    route_id           VARCHAR(7) PRIMARY KEY,
    from_airport_id    VARCHAR(3) NOT NULL REFERENCES AIRPORT(airport_id),
    to_airport_id      VARCHAR(3) NOT NULL REFERENCES AIRPORT(airport_id),
    route_description  VARCHAR(100)
);