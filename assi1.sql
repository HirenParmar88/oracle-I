
							ORACLE BCA SEM-5
							
							ASSIGNMENT-1
							
							NAME : HIREN PARMAR

							ROLLNO : 03
_______________________________________________________________________________________

ANS:
_______________________________________________________________________________________



 1)CREATE TABLE ACMASTER(
    ACNO NUMBER(3) CONSTRAINTS PKACNO PRIMARY KEY,
    NAME VARCHAR2(10),
    ADATE DATE,
    BAL NUMBER(9,2));

 DESC ACMASTER;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACNO                                      NOT NULL NUMBER(3)
 NAME                                               VARCHAR2(10)
 ADATE                                              DATE
 BAL 											    NUMBER(9,2)


SQL> INSERT INTO ACMASTER VALUES(101,'ASHOK','1-APR-1997',5000);

1 row created.

SQL> INSERT INTO ACMASTER VALUES(&ACNO,'&NAME','&ADATE',&BAL);
Enter value for acno: 102
Enter value for name: NILESH
Enter value for adate: 2-JUN-1998
Enter value for bal: 1000
old   1: INSERT INTO ACMASTER VALUES(&ACNO,'&NAME','&ADATE',&BAL)
new   1: INSERT INTO ACMASTER VALUES(102,'NILESH','2-JUN-1998',1000)

1 row created.


SQL> INSERT INTO ACMASTER (ACNO,NAME,ADATE,BAL) VALUES (103,'RITESH','4-JUL-1998',2060);

1 row created.


SQL> SELECT * FROM ACMASTER ;

      ACNO NAME       ADATE            BAL
---------- ---------- --------- ----------
       101 ASHOK      01-APR-97       5000
       102 NILESH     02-JUN-98       1000
       103 RITESH     04-JUL-98       2060
       104 MUKESH     20-DEC-98       5000
       105 JAYESH     25-DEC-98      60000
       106 RAJESH     26-JAN-99       2400
       107 KUNAL      21-JAN-99       1500
       108 DEVANG     20-JAN-99       1999
       109 ABHAY      26-FEB-99       2050
       110 KAPIL      25-MAR-99       1000

10 rows selected.

   
2)CREATE TABLE ACTRAN(
   TNO NUMBER(3),
   TDATE DATE,
   AMOUNT NUMBER(7,2),
   ACTYPE CHAR(1),
   ACNO NUMBER(3), CONSTRAINTS FKACNO FOREIGN KEY(ACNO) REFERENCES ACMASTER);
  
   
 DESC ACTRAN;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TNO                                                NUMBER(3)
 TDATE                                              DATE
 AMOUNT                                             NUMBER(7,2)
 ACTYPE                                             CHAR(1)
 ACNO                                               NUMBER(3)
 
 
 SQL> INSERT INTO ACTRAN VALUES(1,'1-APR-2000',500,'W',101);

1 row created.


SQL>  INSERT INTO ACTRAN VALUES(2,'1-JUN-2000',1000,'D',101);

1 row created.

SQL>  INSERT INTO ACTRAN VALUES(3,'4-JUL-2000',500,'W',102);

1 row created.

SQL>  INSERT INTO ACTRAN VALUES(4,'20-DEC-2000',6000,'D',103);

1 row created.

SQL>  INSERT INTO ACTRAN VALUES(5,'25-DEC-2001',200,'D',105);

1 row created.

SQL>  INSERT INTO ACTRAN VALUES(6,'26-JAN-2001',1500,'D',106);

1 row created.

SQL>  INSERT INTO ACTRAN VALUES(7,'21-JAN-2001',3000,'D',105);

1 row created.

SQL>  INSERT INTO ACTRAN VALUES(8,'20-JAN-2002',50000,'D',101);

1 row created.

SQL> DELETE ACTRAN WHERE TNO=8;

1 row deleted.

SQL>  INSERT INTO ACTRAN VALUES(8,'20-JAN-2002',5000,'D',102);

1 row created.

SQL>  INSERT INTO ACTRAN VALUES(9,'26-FEB-2002',50000,'D',101);

1 row created.

SQL>  INSERT INTO ACTRAN VALUES(10,'25-MAR-2003',4500,'D',109);

1 row created.

SQL> SELECT * FROM ACTRAN;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         1 01-APR-00        500 W        101
         1 01-APR-00        500 W        101
         1 01-APR-00        500 W        101
         2 01-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
        10 25-MAR-03       4500 D        109

12 rows selected.

SQL> DELETE ACTRAN WHERE TNO=1;

3 rows deleted.

SQL> SELECT * FROM ACTRAN;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 01-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109

9 rows selected.

SQL>  INSERT INTO ACTRAN VALUES(1,'1-APR-2000',500,'W',101);

1 row created.

SQL> SELECT * FROM ACTRAN;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 01-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109
         1 01-APR-00        500 W        101

10 rows selected.

SQL> UPDATE ACTRAN SET TDATE='2-JUN-2000' WHERE TNO=9;

1 row updated.

SQL> SELECT * FROM ACTRAN;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 01-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 02-JUN-00      50000 D        101
        10 25-MAR-03       4500 D        109
         1 01-APR-00        500 W        101

10 rows selected.


SQL> ALTER TABLE ACTRAN ADD USERNM VARCHAR2(10);

Table altered.

SQL> DESCRIBE ACTRAN;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TNO                                                NUMBER(3)
 TDATE                                              DATE
 AMOUNT                                             NUMBER(7,2)
 ACTYPE                                             CHAR(1)
 ACNO                                               NUMBER(3)
 USERNM                                             VARCHAR2(10)

SQL> ALTER TABLE ACTRAN ADD CONSTRAINTS TNO UNIQUE (TNO);

Table altered.

SQL> SELECT * FROM ACTRAN;

       TNO TDATE         AMOUNT A       ACNO USERNM
---------- --------- ---------- - ---------- ----------
         2 01-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 02-JUN-00      50000 D        101
        10 25-MAR-03       4500 D        109
         1 01-APR-00        500 W        101

10 rows selected.

SQL> INSERT INTO ACTRAN (TNO,TDATE,AMOUNT) VALUES (11,'4-JUL-2000',5000);

1 row created.

SQL> INSERT INTO ACTRAN (TNO,TDATE,AMOUNT) VALUES (3,'4-JUL-2000',5000);
INSERT INTO ACTRAN (TNO,TDATE,AMOUNT) VALUES (3,'4-JUL-2000',5000)
*
ERROR at line 1:
ORA-00001: unique constraint (SCOTT.TNO) violated

SQL> ALTER TABLE ACTRAN DROP CONSTRAINTS FKACNO;

Table altered.

SQL> ALTER TABLE ACMASTER DROP CONSTRAINTS PKACNO;

Table altered.

SQL> DESC ACMASTER;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACNO                                               NUMBER(3)
 NAME                                               VARCHAR2(10)
 ADATE                                              DATE
 BAL                                                NUMBER(9,2)

SQL> ALTER TABLE ACMASTER MODIFY NAME VARCHAR2(8);

Table altered.

SQL> DESC ACMASTER;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACNO                                               NUMBER(3)
 NAME                                               VARCHAR2(8)
 ADATE                                              DATE
 BAL                                                NUMBER(9,2)


SQL> ALTER TABLE ACMASTER ADD CONSTRAINTS PKACNO PRIMARY KEY (ACNO);

Table altered.

SQL> DESC ACMASTER;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACNO                                      NOT NULL NUMBER(3)
 NAME                                               VARCHAR2(8)
 ADATE                                              DATE
 BAL                                                NUMBER(9,2)

SQL> ALTER TABLE ACMASTER MODIFY NAME NOT NULL;

Table altered.

SQL> DESC ACMASTER;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACNO                                      NOT NULL NUMBER(3)
 NAME                                      NOT NULL VARCHAR2(8)
 ADATE                                              DATE
 BAL                                                NUMBER(9,2)

SQL> ALTER TABLE ACMASTER ADD CONSTRAINTS BALCK CHECK(BAL>0);

Table altered.

SQL> DESC ACTRAN;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TNO                                                NUMBER(3)
 TDATE                                              DATE
 AMOUNT                                             NUMBER(7,2)
 ACTYPE                                             CHAR(1)
 ACNO                                               NUMBER(3)
 USERNM                                             VARCHAR2(10)

SQL> ALTER TABLE ACTRAN USERNM TO ACUSERNM;
ALTER TABLE ACTRAN USERNM TO ACUSERNM
                   *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option


SQL> ALTER TABLE ACTRAN RENAME COLUMN USERNM TO ACUSERNM;

Table altered.

SQL> DESC ACTRAN;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TNO                                                NUMBER(3)
 TDATE                                              DATE
 AMOUNT                                             NUMBER(7,2)
 ACTYPE                                             CHAR(1)
 ACNO                                               NUMBER(3)
 ACUSERNM                                           VARCHAR2(10)


SQL> DESC ACMASTER;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACNO                                      NOT NULL NUMBER(3)
 NAME                                      NOT NULL VARCHAR2(8)
 ADATE                                              DATE
 BAL                                                NUMBER(9,2)

SQL> ALTER TABLE ACMASTER MODIFY (NAME NULL);

Table altered.

SQL> DESC ACMASTER;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACNO                                      NOT NULL NUMBER(3)
 NAME                                               VARCHAR2(8)
 ADATE                                              DATE
 BAL                                                NUMBER(9,2)

SQL> ALTER TABLE ACMASTER DROP CONSTRAINTS BALCK;

Table altered.
 
 
 