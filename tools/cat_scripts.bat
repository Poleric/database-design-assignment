@ECHO OFF

REM cd to batch file dir
cd /D "%~dp0"

cd ..\scripts\

DEL create_all.sql create_trigger_all.sql insert_all.sql run.sql 2> nul

type nul > create_all.sql && FOR /R .\create %%f IN (*.sql) DO type %%f >> create_all.sql & echo. >> create_all.sql
type nul > create_trigger_all.sql && FOR /R .\trigger %%f IN (*.sql) DO type %%f >> create_trigger_all.sql & echo. >> create_trigger_all.sql
type nul > insert_all.sql && FOR /R .\insert %%f IN (*.sql) DO type %%f >> insert_all.sql & echo. >> insert_all.sql
REM copy /b .\create\*.sql create_all.sql
REM copy /b .\trigger\*.sql create_trigger_all.sql
REM copy /b .\insert\*.sql insert_all.sql

type create_all.sql > run.sql && echo. >> run.sql && type create_trigger_all.sql >> run.sql && echo. >> run.sql && type insert_all.sql >> run.sql
REM copy /b create_all.sql+create_trigger_all.sql+insert_all.sql run.sql