TTITLE CENTER 'Account Details' format DATE _DATE RIGHT 'Page No: ' FORMAT 99 SQL.PNO SKIP 2;

SELECT account_id, username, gender
FROM ACCOUNT
WHERE username LIKE '%s%';