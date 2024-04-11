CREATE SEQUENCE REFUND_ID_SEQUENCE
    START WITH 0
    INCREMENT BY 1
    CACHE 10;

CREATE OR REPLACE TRIGGER REFUND_ID_AUTO_INCREMENT
    BEFORE INSERT ON REFUND
    FOR EACH ROW
BEGIN
    :NEW.REFUND_ID := ('RP' || LPAD(REFUND_ID_SEQUENCE.NEXTVAL, 8, '0'));
END;
/