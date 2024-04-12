select s.sid as "Sid", s.serial# as "Serial#", nvl(s.username, ' ') as "Username", s.machine as "Machine", s.schemaname as "Schema name", s.logon_time as "Login time", s.program as "Program", s.osuser as "Os user", s.status as "Status", nvl(s.process, ' ') as "OS Process id"
from v$session s
where nvl(s.username, 'a') not like 'a' and status like 'ACTIVE'
order by 1,2