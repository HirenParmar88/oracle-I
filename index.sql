

**********************INDEX PRAC.**************************


SQL> CREATE TABLE TEST1(
  2  RNO NUMBER(10),
  3  NAME VARCHAR2(10));

Table created.


SQL> INSERT INTO TEST1 VALUES(1,'HIREN');

1 row created.

SQL> INSERT INTO TEST1 VALUES(2,'HIREN');

1 row created.

SQL> INSERT INTO TEST1 VALUES('&RNO','&NAME');
Enter value for rno: 3
Enter value for name: FFSFF
old   1: INSERT INTO TEST1 VALUES('&RNO','&NAME')
new   1: INSERT INTO TEST1 VALUES('3','FFSFF')

1 row created.

SQL> INSERT INTO TEST1 VALUES('&RNO','&NAME');
Enter value for rno: 4
Enter value for name: DDD
old   1: INSERT INTO TEST1 VALUES('&RNO','&NAME')
new   1: INSERT INTO TEST1 VALUES('4','DDD')

1 row created.


SQL> DESC TEST1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 RNO                                                NUMBER(10)
 NAME                                               VARCHAR2(10)
 
 
 SQL> SELECT * FROM TEST1;

       RNO NAME
---------- ----------
         1 HIREN
         2 HIREN
         3 FFSFF
         4 DDD
         5 RRR
         6 GGG
         7 HHH
         8 TTT
         9 LLL
        10 SSS
        11 KKK

       RNO NAME
---------- ----------
        12 WWW
        13 RRR
        14 EEE
        15 XXX


16 rows selected.


SQL> SELECT COUNT(*) FROM TEST1;

  COUNT(*)
----------
        16


SQL> CREATE INDEX TESTINX ON TEST1(RNO);

Index created.


SQL> SELECT * FROM TEST1 WHERE NAME='HIREN';

       RNO NAME
---------- ----------
         1 HIREN
         2 HIREN

****************************************************************

SQL> CREATE TABLE TEST2 AS SELECT * FROM TEST1;

Table created.

SQL> SELECT COUNT(*) FROM TEST2;

  COUNT(*)
----------
        16

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

16 rows created.

SQL> CREATE INDEX TEST2IDX ON TEST2(NAME);

Index created.

SQL> SELECT * FROM TEST2;

       RNO NAME
---------- ----------
         1 HIREN
         2 HIREN
         3 FFSFF
         4 DDD
         5 RRR
         6 GGG
         7 HHH
         8 TTT
         9 LLL
        10 SSS
        11 KKK

       RNO NAME
---------- ----------
        12 WWW
        13 RRR
        14 EEE
        15 XXX

         1 HIREN
         2 HIREN
         3 FFSFF
         4 DDD
         5 RRR
         6 GGG

       RNO NAME
---------- ----------
         7 HHH
         8 TTT
         9 LLL
        10 SSS
        11 KKK
        12 WWW
        13 RRR
        14 EEE
        15 XXX


32 rows selected.

SQL> SELECT COUNT(*) FROM TEST2;

  COUNT(*)
----------
        32
		
		
		
SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

32 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

64 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

128 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

256 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

512 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

1024 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

2048 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

4096 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

8192 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

16384 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

32768 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

65536 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

131072 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

262144 rows created.

SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

524288 rows created.

SQL>
SQL> INSERT INTO TEST2 SELECT * FROM TEST2;

1048576 rows created.

SQL>
SQL>
SQL> SELECT COUNT(*) FROM TEST2;

  COUNT(*)
----------
   2097152
