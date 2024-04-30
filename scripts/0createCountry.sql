CREATE TABLE COUNTRY (
    country_id    VARCHAR(2)   NOT NULL,  -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    country_name  VARCHAR(64)  NOT NULL UNIQUE,
    PRIMARY KEY (country_id)
);
