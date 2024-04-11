CREATE TABLE MEAL(
    meal_id           NUMBER       PRIMARY KEY,
    meal_name         VARCHAR(20)  NOT NULL,
    meal_description  VARCHAR(100),
    supplier          VARCHAR(20)  NOT NULL
);