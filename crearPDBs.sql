--crea rgpbdd_s1
create pluggable database rgpbdd_s1
admin user admin identified by admin
file_name_convert = (
'/opt/oracle/oradata/FREE/pdbseed',
'/opt/oracle/oradata/FREE/rgpbdd_s1'
);


--crea rgpbdd_s2
create pluggable database rgpbdd_s2
admin user admin identified by admin
file_name_convert = (
'/opt/oracle/oradata/FREE/pdbseed',
'/opt/oracle/oradata/FREE/rgpbdd_s2'
);



