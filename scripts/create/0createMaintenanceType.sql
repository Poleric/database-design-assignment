CREATE TABLE MAINTENANCE_TYPE(
    maintenance_type_id NUMBER NOT NULL,
    maintenance_type_name VARCHAR(20) NOT NULL,
    maintenance_type_description VARCHAR(100) NOT NULL,
    importance_level VARCHAR(20) NOT NULL,
    PRIMARY KEY (maintenance_type_id)
)