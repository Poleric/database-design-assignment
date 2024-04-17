CREATE TABLE CREW_ROLE(
    crew_role_id      VARCHAR(4)   PRIMARY KEY ,
    role_name         VARCHAR(20)  NOT NULL UNIQUE,
    role_description  VARCHAR(300)
);
