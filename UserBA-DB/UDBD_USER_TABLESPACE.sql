--��ռ�
CREATE TABLESPACE UBAD
DATAFILE 'C:\app\root\oradata\UBAD' size 512M
         EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO; 
--������ռ�
CREATE TABLESPACE UBAD_Index
DATAFILE 'C:\app\root\oradata\UBAD_Index' size 256M         
         EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;     

--2.���û�
create user UBAD identified by UBAD 
default tablespace UBAD;
 
--3.��Ȩ
grant connect,resource to UBAD;
grant create any sequence to UBAD;
grant create any table to UBAD;
grant delete any table to UBAD;
grant insert any table to UBAD;
grant select any table to UBAD;
grant unlimited tablespace to UBAD;
grant execute any procedure to UBAD;
grant update any table to UBAD;
grant create any view to UBAD;

--4.����޷���ѯ��̬������
grant select on v_$statname to UBAD; 
grant select on v_$sesstat to UBAD; 
grant select on v_$session to UBAD; 
grant select on v_$mystat to UBAD;
