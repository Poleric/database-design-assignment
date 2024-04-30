CREATE TABLE ACCOUNT (
    account_id       NUMBER        PRIMARY KEY ,
    username         VARCHAR(255)  NOT NULL  UNIQUE,
    hashed_password  VARCHAR(60)   NOT NULL,
    joined_datetime  TIMESTAMP     NOT NULL,
    email_address    VARCHAR(254)  NOT NULL  UNIQUE  CHECK (REGEXP_LIKE(email_address,'^[a-z0-9!#$%&''*+/=?^_`{|}~-]+(\.[a-z0-9!#$%&''*+/=?^_`{|}~-]+)*@(([a-z0-9]([a-z0-9-]*[a-z0-9])?\.)+[a-z0-9]([a-z0-9-]*[a-z0-9])?|\[((2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])\.){3}((2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:)\])$')),  -- http://emailregex.com/
    phone_number     VARCHAR(20)             UNIQUE,
    gender           CHAR(1)                         CHECK (gender in ('M', 'F', NULL))
);
