CREATE SEQUENCE FA_ID_SEQUENCE
    START WITH 1
    INCREMENT BY 1
    CACHE 10;

CREATE OR REPLACE TRIGGER FA_ID_AUTO_INCREMENT
    BEFORE INSERT ON FLIGHT_ATTENDANT
    FOR EACH ROW
BEGIN
    :NEW.FLIGHT_ATTENDANT_ID := ('FA' || LPAD(FA_ID_SEQUENCE.NEXTVAL, 5, '0'));
END;