CREATE TABLE MAINTENANCE_TYPE(
    maintenance_type_id           VARCHAR(4)    PRIMARY KEY ,
    maintenance_type_name         VARCHAR(20)   NOT NULL UNIQUE,
    maintenance_type_description  VARCHAR(100)  NOT NULL
);