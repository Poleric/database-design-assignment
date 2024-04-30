CREATE SEQUENCE BP_ID_SEQUENCE
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    CACHE 50;

CREATE OR REPLACE TRIGGER BP_ID_AUTO_INCREMENT
    BEFORE INSERT ON BAGGAGE_PAYMENT
    FOR EACH ROW
BEGIN
    :NEW.BAGGAGE_PAYMENT_ID := ('BP' || LPAD(BP_ID_SEQUENCE.NEXTVAL, 8, '0'));
END;
/