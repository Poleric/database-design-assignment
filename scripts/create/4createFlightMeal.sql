CREATE TABLE FLIGHT_MEAL(
    meal_id    NUMBER       NOT NULL REFERENCES MEAL(meal_id),
    flight_id  NUMBER       NOT NULL REFERENCES FLIGHT(flight_id),
    meal_for   VARCHAR(20)  NOT NULL,
    PRIMARY KEY(meal_id, flight_id)
);