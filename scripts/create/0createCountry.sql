CREATE TABLE COUNTRY (
    country_id    VARCHAR(2)   PRIMARY KEY ,  -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    country_name  VARCHAR(64)  NOT NULL UNIQUE
);
