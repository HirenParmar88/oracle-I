
SQL*Plus: Release 11.2.0.1.0 Production on Sat Jun 25 12:09:21 2022

Copyright (c) 1982, 2010, Oracle.  All rights reserved.

Enter user-name: Scott
Enter password:

Connected to:
Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
BONUS                          TABLE
DEPT                           TABLE
EMP                            TABLE
EMPINFO                        TABLE
HIREN                          TABLE
PRODUCT003                     TABLE
SALGRADE                       TABLE

7 rows selected.

SQL> SELECT * FROM PRODUCT003;

       PID PNAME                     PRICE        QOH
---------- -------------------- ---------- ----------
       101 MAGGI                       5.2
       102 PASTA                       5.2
       103 PIZZA                       5.2

SQL> CREATE TABLE STUDENT003(
  2  RNO NUMBER(3),
  3  NAME VARCHAR2(20),
  4  DOB DATE,
  5  CITY VARCHAR2(12));

Table created.

SQL> DESCRIBE STUDENT003;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 RNO                                                NUMBER(3)
 NAME                                               VARCHAR2(20)
 DOB                                                DATE
 CITY                                               VARCHAR2(12)

SQL> INSERT INTO STUDENT003 VALUES (1,'HIREN','28-AUG-2003','DUDHALA NO.2');

1 row created.

SQL> INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY');
Enter value for rno: 2
Enter value for name: JAY
Enter value for dob: 27-AUG-2002
Enter value for city: MAHUVA
old   1: INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY')
new   1: INSERT INTO STUDENT003 VALUES (2, 'JAY', '27-AUG-2002', 'MAHUVA')

1 row created.

SQL> INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY');
Enter value for rno: 3
Enter value for name: JIGAR
Enter value for dob: 22-MAR-2002
Enter value for city:
old   1: INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY')
new   1: INSERT INTO STUDENT003 VALUES (3, 'JIGAR', '22-MAR-2002', '')

1 row created.

SQL> SELECT * FROM STUDENT003 WHERE CITY IS NULL;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         3 JIGAR                22-MAR-02

SQL> UPDATE STUDENT003 SET CITY='MAHUVA' WHERE RNO=3;

1 row updated.

SQL> SELECT * FROM STUDENT003;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         1 HIREN                28-AUG-03 DUDHALA NO.2
         2 JAY                  27-AUG-02 MAHUVA
         3 JIGAR                22-MAR-02 MAHUVA

SQL> ALTER TABLE STUDENT003 MODIFY CITY NOT NULL;

Table altered.

SQL> SELECT * FROM STUDENT003;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         1 HIREN                28-AUG-03 DUDHALA NO.2
         2 JAY                  27-AUG-02 MAHUVA
         3 JIGAR                22-MAR-02 MAHUVA

SQL> INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY');
Enter value for rno: 4
Enter value for name: HARSH
Enter value for dob: 22-JAN-2001
Enter value for city:
old   1: INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY')
new   1: INSERT INTO STUDENT003 VALUES (4, 'HARSH', '22-JAN-2001', '')
INSERT INTO STUDENT003 VALUES (4, 'HARSH', '22-JAN-2001', '')
                                                          *
ERROR at line 1:
ORA-01400: cannot insert NULL into ("SCOTT"."STUDENT003"."CITY")


SQL> SELECT * FROM SUUDENT003;
SELECT * FROM SUUDENT003
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> SELECT * FROM STUDENT003;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         1 HIREN                28-AUG-03 DUDHALA NO.2
         2 JAY                  27-AUG-02 MAHUVA
         3 JIGAR                22-MAR-02 MAHUVA

SQL> INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY');
Enter value for rno: 4
Enter value for name: HARSH
Enter value for dob: 22-MAY-2000
Enter value for city: BHAVNAGAR
old   1: INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY')
new   1: INSERT INTO STUDENT003 VALUES (4, 'HARSH       ', '22-MAY-2000', 'BHAVNAGAR')

1 row created.

SQL> SELECT * FROM STUDENT003;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         1 HIREN                28-AUG-03 DUDHALA NO.2
         2 JAY                  27-AUG-02 MAHUVA
         3 JIGAR                22-MAR-02 MAHUVA
         4 HARSH                       22-MAY-00 BHAVNAGAR

SQL> UPDATE STUDENT003 SET DOB='21-FEB-2003', CITY='ANAND' WHERE RNO=4;

1 row updated.

SQL> SELECT * FROM STUDENT003;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         1 HIREN                28-AUG-03 DUDHALA NO.2
         2 JAY                  27-AUG-02 MAHUVA
         3 JIGAR                22-MAR-02 MAHUVA
         4 HARSH                       21-FEB-03 ANAND

SQL> INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY');
Enter value for rno: 5
Enter value for name: MANAN
Enter value for dob: 28-MAR-2002
Enter value for city: RAJULA
old   1: INSERT INTO STUDENT003 VALUES (&RNO, '&NAME', '&DOB', '&CITY')
new   1: INSERT INTO STUDENT003 VALUES (5, 'MANAN', '28-MAR-2002', 'RAJULA')

1 row created.

SQL> SELECT * FROM STUDENT003;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         1 HIREN                28-AUG-03 DUDHALA NO.2
         2 JAY                  27-AUG-02 MAHUVA
         3 JIGAR                22-MAR-02 MAHUVA
         4 HARSH                       21-FEB-03 ANAND
         5 MANAN                28-MAR-02 RAJULA

SQL> DELETE STUDENT003 WHERE RNO=4;

1 row deleted.

SQL> SELECT * FROM STUDENT003;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         1 HIREN                28-AUG-03 DUDHALA NO.2
         2 JAY                  27-AUG-02 MAHUVA
         3 JIGAR                22-MAR-02 MAHUVA
         5 MANAN                28-MAR-02 RAJULA

SQL> INSERT INTO STUDENT003 VALUES (4, 'PARAG', '23-MAR-2002', 'TALAJA');

1 row created.

SQL> SELECT * FROM STUDENT003;

       RNO NAME                 DOB       CITY
---------- -------------------- --------- ------------
         1 HIREN                28-AUG-03 DUDHALA NO.2
         2 JAY                  27-AUG-02 MAHUVA
         3 JIGAR                22-MAR-02 MAHUVA
         5 MANAN                28-MAR-02 RAJULA
         4 PARAG                23-MAR-02 TALAJA

SQL> COMMIT;

Commit complete.

SQL>