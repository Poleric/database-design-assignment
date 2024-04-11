CREATE SEQUENCE REST_LOG_ID_SEQUENCE
    START WITH 1
    INCREMENT BY 1
    CACHE 10;

CREATE OR REPLACE TRIGGER REST_LOG_ID_AUTO_INCREMENT
    BEFORE INSERT ON REST_LOG
    FOR EACH ROW
BEGIN
    :NEW.REST_LOG_ID := REST_LOG_ID_SEQUENCE.NEXTVAL;
END;