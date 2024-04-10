CREATE TABLE MEAL(
    meal_id           VARCHAR(10) NOT NULL,
    meal_name         VARCHAR(20) NOT NULL,
    meal_description  VARCHAR(100),
    supplier          VARCHAR(20) NOT NULL,
    PRIMARY KEY(meal_id)
);