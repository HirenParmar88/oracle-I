
************************CLAUSE PARACTISE***************************
WHERE
BETWEEN
DISTINCT
LIKE
ORDER BY
IN
NOT IN
*************************************************************************

SQL> CREATE TABLE TABLE1(
  2  ID NUMBER(3),
  3  NAME VARCHAR2(30),
  4  CITY VARCHAR2(40),
  5  LASTNAME VARCHAR2(50)
  6  );

Table created.

SQL> DESC TABLE1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(3)
 NAME                                               VARCHAR2(30)
 CITY                                               VARCHAR2(40)
 LASTNAME                                           VARCHAR2(50)

SQL> INSERT INTO TABLE1 VALUES(&ID,'&NAME','&CITY','&LASTNAME');
Enter value for id: 1
Enter value for name: HIREN
Enter value for city: DUDHALA NO 2
Enter value for lastname: PARMAR
old   1: INSERT INTO TABLE1 VALUES(&ID,'&NAME','&CITY','&LASTNAME')
new   1: INSERT INTO TABLE1 VALUES(1,'HIREN','DUDHALA NO 2','PARMAR')

1 row created.

SQL> /
Enter value for id: 2
Enter value for name: AMAN
Enter value for city: MAHUVA
Enter value for lastname: BAMBHANIYA
old   1: INSERT INTO TABLE1 VALUES(&ID,'&NAME','&CITY','&LASTNAME')
new   1: INSERT INTO TABLE1 VALUES(2,'AMAN','MAHUVA','BAMBHANIYA')

1 row created.

SQL> /
Enter value for id: 3
Enter value for name: DHARMAESH
Enter value for city: DUDHALA
Enter value for lastname: GELATAR
old   1: INSERT INTO TABLE1 VALUES(&ID,'&NAME','&CITY','&LASTNAME')
new   1: INSERT INTO TABLE1 VALUES(3,'DHARMAESH','DUDHALA','GELATAR')

1 row created.

SQL> /
Enter value for id: 4
Enter value for name: JAY
Enter value for city: MAHUVA
Enter value for lastname: CHAUHAN
old   1: INSERT INTO TABLE1 VALUES(&ID,'&NAME','&CITY','&LASTNAME')
new   1: INSERT INTO TABLE1 VALUES(4,'JAY','MAHUVA','CHAUHAN')

1 row created.

SQL> /
Enter value for id: 5
Enter value for name: HARSH
Enter value for city: MAHUVA
Enter value for lastname: SIDDHPURA
old   1: INSERT INTO TABLE1 VALUES(&ID,'&NAME','&CITY','&LASTNAME')
new   1: INSERT INTO TABLE1 VALUES(5,'HARSH','MAHUVA','SIDDHPURA')

1 row created.

SQL> SET LINESIZE 170;
SQL> /

        ID NAME                           CITY                                     LASTNAME
---------- ------------------------------ ---------------------------------------- --------------------------------------------------
         1 HIREN                          DUDHALA NO 2                             PARMAR
         2 AMAN                           MAHUVA                                   BAMBHANIYA
         3 DHARMAESH                      DUDHALA                                  GELATAR
         4 JAY                            MAHUVA                                   CHAUHAN
         5 HARSH                          MAHUVA                                   SIDDHPURA

******WHERE CLAUSE*********		 
		 
SQL> SELECT ID, NAME, LASTNAME FROM TABLE1 WHERE CITY='MAHUVA';

        ID NAME                           LASTNAME
---------- ------------------------------ --------------------------------------------------
         2 AMAN                           BAMBHANIYA
         4 JAY                            CHAUHAN
         5 HARSH                          SIDDHPURA
		 
		 
*********************************************************************************************************
