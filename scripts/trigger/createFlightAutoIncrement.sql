CREATE SEQUENCE FLIGHT_ID_SEQUENCE
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    CACHE 50;

CREATE OR REPLACE TRIGGER FLIGHT_ID_AUTO_INCREMENT
    BEFORE INSERT ON FLIGHT
    FOR EACH ROW
BEGIN
    :NEW.FLIGHT_ID := FLIGHT_ID_SEQUENCE.NEXTVAL;
END;
/