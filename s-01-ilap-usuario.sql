--@Autores:        Gustavo Santana Sánchez, Rodrigo García Peñafort.
--@Fecha creación: 05/06/2026.
--@Descripción:    Eliminación y creación del usuario.



drop user if exists ilap_bdd;

create user ilap_bdd identified by ilap_bdd;

grant create session to ilap_bdd;
grant create table to ilap_bdd;
grant create view to ilap_bdd;
grant create synonym to ilap_bdd;
grant create sequence to ilap_bdd;
grant create procedure to ilap_bdd;
grant create trigger to ilap_bdd;
grant create database link to ilap_bdd;

