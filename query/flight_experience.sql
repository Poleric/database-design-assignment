SET LINESIZE 110;
SET PAGESIZE 100;
SET VERIFY OFF;
SET FEEDBACK OFF;
SET SERVEROUT ON;

COLUMN "Aircraft Model ID" FORMAT A20;
COLUMN "Aircraft Model Name" FORMAT A20;
COLUMN "Pilot ID" FORMAT A10;
COLUMN "Hours flown within timeframe" FORMAT 999999999999;
COLUMN "Total Flight Hours" FORMAT 99999999999999;

BREAK ON "Aircraft Model ID" ON "Aircraft Model Name" SKIP 1;

COMPUTE AVG LABEL 'Average Hours' OF "Hours flown within timeframe" "Total Flight Hours" ON "Aircraft Model Name";

ACCEPT v_timeframe_start DATE FORMAT 'DD/MM/YYYY' DEFAULT '01/01/2020' PROMPT "Enter the starting date (DD/MM/YYYY)    (Default: 2020/1) : "
ACCEPT v_timeframe_end   DATE FORMAT 'DD/MM/YYYY' DEFAULT '01/01/2025' PROMPT "Enter the ending date   (DD/MM/YYYY)    (Default: 2025/1) : "
ACCEPT v_aircraft_model  CHAR FORMAT A4 DEFAULT NULL                   PROMPT "Enter Aircraft Model                       (Default: ALL) : "

TTITLE -
    CENTER 'Flight Experience of each Aircraft Type' SKIP 1 -
    CENTER '---------------------------------------' SKIP 2 -
    RIGHT 'Page No: ' FORMAT 99 SQL.PNO SKIP 2;

SELECT
    A.AIRCRAFT_MODEL_ID AS "Aircraft Model ID",
    AM.MODEL_NAME AS "Aircraft Model Name",
    PILOT_ID AS "Pilot ID",
    SUM(EST_DURATION_IN_HOUR) AS "Hours flown within timeframe",
    SUM(EST_DURATION_IN_HOUR) + (
    SELECT FLIGHT_HOUR
    FROM FLIGHT_HOUR
    WHERE PILOT_ID = P.PILOT_ID
        AND AIRCRAFT_MODEL_ID = A.AIRCRAFT_MODEL_ID) AS "Total Flight Hours"
FROM FLIGHT F
    JOIN FLIGHT_CREW_SCHEDULE FCS ON F.FLIGHT_ID = FCS.FLIGHT_ID
    JOIN EMPLOYEE E ON FCS.EMPLOYEE_ID = E.EMPLOYEE_ID
    JOIN PILOT P ON E.EMPLOYEE_ID = P.EMPLOYEE_ID
    JOIN AIRCRAFT A ON F.AIRCRAFT_ID = A.AIRCRAFT_ID
    JOIN AIRCRAFT_MODEL AM ON A.AIRCRAFT_MODEL_ID = AM.AIRCRAFT_MODEL_ID
WHERE F.DEPARTURE_DATETIME BETWEEN TO_TIMESTAMP('&v_timeframe_start', 'DD/MM/YYYY') AND TO_TIMESTAMP('&v_timeframe_end', 'DD/MM/YYYY')
    AND A.AIRCRAFT_MODEL_ID = DECODE('&v_aircraft_model', 'NULL', A.AIRCRAFT_MODEL_ID, '&v_aircraft_model')
GROUP BY PILOT_ID, A.AIRCRAFT_MODEL_ID, AM.MODEL_NAME
ORDER BY A.AIRCRAFT_MODEL_ID, AM.MODEL_NAME, "Total Flight Hours" DESC;

TTITLE OFF;
CLEAR COLUMNS;
CLEAR BREAKS;
CLEAR COMPUTES;