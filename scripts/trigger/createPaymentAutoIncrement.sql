CREATE SEQUENCE PAYMENT_ID_SEQUENCE
    START WITH 1
    INCREMENT BY 1
    CACHE 50;

CREATE OR REPLACE TRIGGER PAYMENT_ID_AUTO_INCREMENT
    BEFORE INSERT ON PAYMENT
    FOR EACH ROW
BEGIN
    :NEW.PAYMENT_ID := ('TP' || LPAD(PAYMENT_ID_SEQUENCE.NEXTVAL, 8, '0'));
END;
/