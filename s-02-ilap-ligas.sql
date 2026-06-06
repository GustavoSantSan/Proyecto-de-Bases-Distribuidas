--@Autor:          Gustavo Santana Sánchez, Rodrigo García Peñafort.
--@Fecha creación: 05/06/2026.
--@Descripción:    Creación de ligas en los 4 nodos.



clear screen
whenever sqlerror exit rollback;


Prompt ============================
Prompt Creando ligas en gssbdd_s1
Prompt ============================
connect ilap_bdd/ilap_bdd@gssbdd_s1

-- PDB local
create database link gssbdd_s2.fi.unam using 'GSSBDD_S2';
--PDB remotas
create database link rgpbdd_s1.fi.unam using 'RGPBDD_S1';
create database link rgpbdd_s2.fi.unam using 'RGPBDD_S2';


Prompt ============================
Prompt Creando ligas en gssbdd_s2
Prompt ============================
connect ilap_bdd/ilap_bdd@gssbdd_s2

-- PDB local
create database link gssbdd_s1.fi.unam using 'GSSBDD_S1';
-- PDB remotas
create database link rgpbdd_s1.fi.unam using 'RGPBDD_S1';
create database link rgpbdd_s2.fi.unam using 'RGPBDD_S2';


Prompt ============================
Prompt Creando ligas en rgpbdd_s1
Prompt ============================
connect ilap_bdd/ilap_bdd@rgpbdd_s1

-- PDB local
create database link rgpbdd_s2.fi.unam using 'RGPBDD_S2';
-- PDB remotas
create database link gssbdd_s1.fi.unam using 'GSSBDD_S1';
create database link gssbdd_s2.fi.unam using 'GSSBDD_S2';


Prompt ============================
Prompt Creando ligas en rgpbdd_s2
Prompt ============================
connect ilap_bdd/ilap_bdd@rgpbdd_s2

-- PDB local
create database link rgpbdd_s1.fi.unam using 'RGPBDD_S1';
-- PDB remotas
create database link gssbdd_s1.fi.unam using 'GSSBDD_S1';
create database link gssbdd_s2.fi.unam using 'GSSBDD_S2';


Prompt Listo!

