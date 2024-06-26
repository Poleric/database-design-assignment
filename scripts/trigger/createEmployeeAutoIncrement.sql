CREATE SEQUENCE EMPLOYEE_ID_SEQUENCE
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    CACHE 100;

CREATE OR REPLACE TRIGGER EMPLOYEE_ID_AUTO_INCREMENT
    BEFORE INSERT ON EMPLOYEE
    FOR EACH ROW
BEGIN
    :NEW.EMPLOYEE_ID := EMPLOYEE_ID_SEQUENCE.NEXTVAL;
END;
/