CREATE TABLE SPECIAL_SERVICE (
    special_service_id           VARCHAR(4)    PRIMARY KEY,
    special_service_name         VARCHAR(20)   NOT NULL UNIQUE,
    special_service_description  VARCHAR(100)
);
