CREATE OR REPLACE TRIGGER UPDATE_OFFER_STATUS_TO_CLAIMED
    AFTER INSERT ON OFFER_CLAIMS
    FOR EACH ROW
BEGIN
    UPDATE OFFER
        SET IS_CLAIMED = 'Cancelled'
    WHERE OFFER_ID = :NEW.OFFER_ID;
END;
/