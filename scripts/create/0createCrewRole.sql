CREATE TABLE CREW_ROLE(
    crew_role_id  VARCHAR(4)   NOT NULL,
    role_name     VARCHAR(20)  NOT NULL UNIQUE,
    PRIMARY KEY (crew_role_id)
);
