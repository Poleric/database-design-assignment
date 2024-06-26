CREATE OR REPLACE TRIGGER UPDATE_STATUS_TO_CANCELLED
    AFTER INSERT ON REFUND
    FOR EACH ROW
BEGIN
    UPDATE FLIGHT_TICKET
        SET TICKET_STATUS = 'Cancelled'
    WHERE FLIGHT_TICKET_ID IN (
            SELECT FLIGHT_TICKET_ID
            FROM FLIGHT_TICKET
            WHERE PAYMENT_ID = :NEW.PAYMENT_ID
        );
END;
/