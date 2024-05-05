SET LINESIZE 65;
SET PAGESIZE 100;
SET VERIFY OFF;
SET FEEDBACK OFF;
SET SERVEROUT ON;

COLUMN "Account ID" FORMAT 99999999;
COLUMN "Membership Name" FORMAT A20;
COLUMN "Number of Tickets" FORMAT 9999999999;
COLUMN "Amount Spent" FORMAT $999999999.99;

ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';

BREAK ON "Membership Name" SKIP 1 ON REPORT;

COMPUTE SUM LABEL 'Total' OF "Number of Tickets" "Amount Spent" ON "Membership Name";
COMPUTE SUM LABEL 'Overall' OF "Number of Tickets" "Amount Spent" ON REPORT;

ACCEPT v_timeframe_start DATE FORMAT 'DD/MM/YYYY' DEFAULT '01/01/2020' PROMPT "Enter the starting date (DD/MM/YYYY)    (Default: 2020/1) : "
ACCEPT v_timeframe_end   DATE FORMAT 'DD/MM/YYYY' DEFAULT '01/01/2025' PROMPT "Enter the ending date   (DD/MM/YYYY)    (Default: 2025/1) : "
ACCEPT v_num_of_preview  NUMBER FORMAT 999 DEFAULT 10                  PROMPT "Enter the number of records to preview  (Default: 10)     : "

TTITLE -
    CENTER 'Total Spending for each membership category' SKIP 1 -
    CENTER '-------------------------------------------' SKIP 2 -
    RIGHT 'Page No: ' FORMAT 99 SQL.PNO SKIP 2;

SELECT
    "Account ID",
    NVL("Membership Name", 'No membership') AS "Membership Name",
    COUNT(FT.FLIGHT_TICKET_ID) AS "Number of Tickets",
    "Amount Spent"
FROM FLIGHT_TICKET FT
    JOIN (SELECT
        A.ACCOUNT_ID         AS     "Account ID",
        MEMBERSHIP_TYPE_NAME AS     "Membership Name",
        SUM(P.AMOUNT)        AS     "Amount Spent",
        rank() OVER (PARTITION BY M.MEMBERSHIP_TYPE_ID ORDER BY SUM(P.AMOUNT) DESC) rnk
    FROM ACCOUNT A
        LEFT JOIN MEMBERSHIP M ON A.ACCOUNT_ID = M.ACCOUNT_ID
        LEFT JOIN MEMBERSHIP_TYPE MT ON M.MEMBERSHIP_TYPE_ID = MT.MEMBERSHIP_TYPE_ID
        JOIN PAYMENT P ON A.ACCOUNT_ID = P.ACCOUNT_ID
        LEFT JOIN REFUND R ON P.PAYMENT_ID = R.PAYMENT_ID
    WHERE R.REFUND_ID IS NULL AND P.CREATED_AT BETWEEN TO_DATE('&v_timeframe_start', 'DD/MM/YYYY') AND TO_DATE('&v_timeframe_end', 'DD/MM/YYYY')
    GROUP BY A.ACCOUNT_ID, MEMBERSHIP_TYPE_NAME, M.MEMBERSHIP_TYPE_ID) ON FT.ACCOUNT_ID = "Account ID"
WHERE rnk <= &v_num_of_preview
GROUP BY "Account ID", "Membership Name", "Amount Spent"
ORDER BY DECODE("Membership Name", 'Bronze', 1, 'Silver', 2, 'Gold', 3, NULL, 4), "Amount Spent" DESC;

CLEAR BREAKS;
CLEAR COMPUTES;

COLUMN "Total Spending" FORMAT $99999999999.99;
COLUMN "Percentage to Total" FORMAT 990.99;

BREAK ON REPORT;

COMPUTE SUM LABEL 'Total' OF "Total Spending" "Percentage to Total" ON REPORT;

PROMPT;

TTITLE -
    CENTER 'Total percentage of each membership' SKIP 1 -
    CENTER '-----------------------------------' SKIP 2 -
    RIGHT 'Page No: ' FORMAT 99 SQL.PNO SKIP 2;

SELECT
    NVL(MEMBERSHIP_TYPE_NAME, 'No membership') AS "Membership Name",
    SUM(AMOUNT) AS "Total Spending",
    SUM(AMOUNT) / (SELECT SUM(AMOUNT) FROM PAYMENT P LEFT JOIN REFUND R ON P.PAYMENT_ID = R.PAYMENT_ID WHERE REFUND_ID IS NULL) * 100 AS "Percentage to Total"
FROM ACCOUNT A
    LEFT JOIN MEMBERSHIP M ON A.ACCOUNT_ID = M.ACCOUNT_ID
    LEFT JOIN MEMBERSHIP_TYPE MT ON M.MEMBERSHIP_TYPE_ID = MT.MEMBERSHIP_TYPE_ID
    JOIN PAYMENT P ON A.ACCOUNT_ID = P.ACCOUNT_ID
    LEFT JOIN REFUND R ON P.PAYMENT_ID = R.PAYMENT_ID
GROUP BY MEMBERSHIP_TYPE_NAME;

TTITLE OFF;
CLEAR COLUMNS;
CLEAR COMPUTES;