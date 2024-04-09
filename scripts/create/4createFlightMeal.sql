CREATE TABLE FLIGHT_MEAL(
    meal_id VARCHAR(10) NOT NULL,
    flight_id VARCHAR(10) NOT NULL,
    PRIMARY KEY(meal_id,flight_id),
    FOREIGN KEY(meal_id) REFERENCES MEAL(meal_id),
    FOREIGN KEY(flight_id) REFERENCES FLIGHT(flight_id)
)