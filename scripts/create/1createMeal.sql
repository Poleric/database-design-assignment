CREATE TABLE MEAL(
    meal_id VARCHAR(10),
    meal_name VARCHAR(20),
    meal_description VARCHAR(200),
    supplier VARCHAR(20),
    meal_type_id VARCHAR(10),
    PRIMARY KEY(meal_id),
    FOREIGN KEY (meal_type_id) REFERENCES MEAL_TYPE(meal_type_id)
)