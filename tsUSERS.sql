--para rgpbdd_s1
connect sys@rgpbdd_s1 as sysdba
create tablespace users
datafile '/opt/oracle/oradata/FREE/rgpbdd_s1/users01.dbf' size 100m
autoextend on next 10m maxsize 11g
extent management local
segment space management auto;
--asignar al tablespace users como el tablespace por defecto
alter database default tablespace users;

--para rgpbdd_s2
connect sys@rgpbdd_s2 as sysdba
create tablespace users
datafile '/opt/oracle/oradata/FREE/rgpbdd_s2/users01.dbf' size 100m
autoextend on next 10m maxsize 11g
extent management local
segment space management auto;
--asignar al tablespace users como el tablespace por defecto
alter database default tablespace users;

