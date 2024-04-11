-- https://www.quora.com/What-are-the-types-of-aircraft-maintenance  https://en.wikipedia.org/wiki/Aircraft_maintenance_checks
CREATE TABLE MAINTENANCE_TYPE(
    maintenance_type_id           VARCHAR(4)    PRIMARY KEY ,
    maintenance_type_name         VARCHAR(40)   NOT NULL UNIQUE,
    maintenance_type_description  VARCHAR(200)  NOT NULL
);