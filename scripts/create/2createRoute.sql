CREATE TABLE ROUTE (
    route_id           VARCHAR(7) PRIMARY KEY,  -- https://en.wikipedia.org/wiki/Flight_number
    from_airport_id    VARCHAR(3) NOT NULL REFERENCES AIRPORT(airport_id),
    to_airport_id      VARCHAR(3) NOT NULL REFERENCES AIRPORT(airport_id),
    distance_in_km     NUMBER     NOT NULL CHECK(distance_in_km > 0),
    route_description  VARCHAR(100)
);