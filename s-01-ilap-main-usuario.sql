--@Autor:          Jorge A. Rodríguez Campos
--@Fecha creación: 05/06/2026
--@Descripción:    Creación de usuarios en los 4 nodos



clear screen
whenever sqlerror exit rollback;
set serveroutput on

Prompt Iniciando creación/eliminación de usuarios.
accept syspass char prompt 'Proporcione el password de sys: ' hide

prompt =====================================
prompt Creando usuario en gssbdd_s1
prompt =====================================
connect sys/&&syspass@gssbdd_s1 as sysdba
@s-01-ilap-usuario.sql

prompt =====================================
prompt Creando usuario en gssbdd_s2
prompt =====================================
connect sys/&&syspass@gssbdd_s2 as sysdba
@s-01-ilap-usuario.sql

prompt =====================================
prompt Creando usuario en rgpbdd_s1
prompt =====================================
connect sys/&&syspass@rgpbdd_s1 as sysdba
@s-01-ilap-usuario.sql

prompt =====================================
prompt Creando usuario en rgpbdd_s2
prompt =====================================
connect sys/&&syspass@rgpbdd_s2 as sysdba
@s-01-ilap-usuario.sql

Prompt Listo!
exit

