CREATE TABLE MEAL(
    meal_id           NUMBER       PRIMARY KEY,
    meal_name         VARCHAR(30)  NOT NULL,
    meal_description  VARCHAR(100),
    supplier          VARCHAR(30)  NOT NULL
);