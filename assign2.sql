CREATE TABLE ACMASTER2(
 ACNO2 NUMBER(3) CONSTRAINTS PKACNO2 PRIMARY KEY,
 NAME VARCHAR2(10),
 ADATE DATE,
 BAL NUMBER(9,2));
 
 
 
 CREATE TABLE ACTRAN2(
  TNO NUMBER(3),
  TDATE DATE,
  AMOUNT NUMBER(7,2),
  ACTYPE CHAR(1),
  ACNO NUMBER(3), CONSTRAINTS FKACNO2 FOREIGN KEY(ACNO) REFERENCES ACMASTER);
  
 SQL> INSERT INTO ACMASTER2 VALUES (101,'ASHOK','1-APR-1997',5000);

1 row created.

SQL> INSERT INTO ACMASTER2 VALUES (&ACNO,'&NAME','&ADATE',&BAL);
Enter value for acno: 102
Enter value for name: NILESH
Enter value for adate: 2-JAN-1998
Enter value for bal: 1000
old   1: INSERT INTO ACMASTER2 VALUES (&ACNO,'&NAME','&ADATE',&BAL)
new   1: INSERT INTO ACMASTER2 VALUES (102,'NILESH','2-JAN-1998',1000)

1 row created.

INSERT INTO ACMASTER2 VALUES (101,'ASHOK','1-APR-1997',5000);
INSERT INTO ACMASTER2 VALUES (102,'NILESH','2-JUN-1998',1000);
INSERT INTO ACMASTER2 VALUES (103,'RITESH','4-JUL-1998' ,2060);
INSERT INTO ACMASTER2 VALUES (104,'MUKESH','20-DEC-1998', 5000);
INSERT INTO ACMASTER2 VALUES (105,'JAYESH', '25-DEC-1998', 60000);
INSERT INTO ACMASTER2 VALUES (106,'RAJESH', '26-JAN-1999', 2400);
INSERT INTO ACMASTER2 VALUES (107,'KUNAL', '21-JAN-1999', 1500);
INSERT INTO ACMASTER2 VALUES (108,'DEVANG', '20-JAN-1999', 1999);
INSERT INTO ACMASTER2 VALUES (109,'ABHAY', '26-FEB-1999', 2050);
INSERT INTO ACMASTER2 VALUES (110, 'KAPIL', '25-MAR-1999', 1000);


SQL>
SQL> INSERT INTO ACMASTER2 VALUES (103,'RITESH','4-JUL-1998' ,2060);

1 row created.

SQL> INSERT INTO ACMASTER2 VALUES (104,'MUKESH','20-DEC-1998', 5000);

1 row created.

SQL> INSERT INTO ACMASTER2 VALUES (105,'JAYESH', '25-DEC-1998', 60000);

1 row created.

SQL> INSERT INTO ACMASTER2 VALUES (106,'RAJESH', '26-JAN-1999', 2400);

1 row created.

SQL> INSERT INTO ACMASTER2 VALUES (107,'KUNAL', '21-JAN-1999', 1500);

1 row created.

SQL> INSERT INTO ACMASTER2 VALUES (108,'DEVANG', '20-JAN-1999', 1999);

1 row created.

SQL> INSERT INTO ACMASTER2 VALUES (109,'ABHAY', '26-FEB-1999', 2050);

1 row created.

SQL> INSERT INTO ACMASTER2 VALUES (110, 'KAPIL', '25-MAR-1999', 1000);

1 row created.

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL
---------- ---------- --------- ----------
       101 ASHOK      01-APR-97       5000
       102 NILESH     02-JAN-98       1000
       103 RITESH     04-JUL-98       2060
       104 MUKESH     20-DEC-98       5000
       105 JAYESH     25-DEC-98      60000
       106 RAJESH     26-JAN-99       2400
       107 KUNAL      21-JAN-99       1500
       108 DEVANG     20-JAN-99       1999
       109 ABHAY      26-FEB-99       2050
       110 KAPIL      25-MAR-99       1000

10 rows selected.


SQL> DESC ACTRAN2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TNO                                                NUMBER(3)
 TDATE                                              DATE
 AMOUNT                                             NUMBER(7,2)
 ACTYPE                                             CHAR(1)
 ACNO                                               NUMBER(3)

SQL> SELECT * FROM ACTRAN2;

no rows selected


INSERT INTO ACTRAN2 VALUES (1, '1-APR-2000', 500, 'W', 101);
INSERT INTO ACTRAN2 VALUES (2, '2-JUN-2000', 1000, 'D', 101);
INSERT INTO ACTRAN2 VALUES (3, '4-JUL-2000', 500, 'W', 102);
INSERT INTO ACTRAN2 VALUES (4, '20-DEC-2000', 6000, 'D', 103);
INSERT INTO ACTRAN2 VALUES (5, '25-DEC-2001', 200, 'D', 105);
INSERT INTO ACTRAN2 VALUES (6, '26-JAN-2001', 1500, 'D', 106);
INSERT INTO ACTRAN2 VALUES (7, '21-JAN-2001', 3000, 'D', 105);
INSERT INTO ACTRAN2 VALUES (8, '20-JAN-2002', 5000, 'D', 102);
INSERT INTO ACTRAN2 VALUES (9, '26-FEB-2002', 50000, 'D', 101);
INSERT INTO ACTRAN2 VALUES (10, '25-MAR-2003', 4500, 'D', 109);
SQL> INSERT INTO ACTRAN2 VALUES (1, '1-APR-2000', 500, 'W', 101);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (2, '2-JUN-2000', 1000, 'D', 101);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (3, '4-JUL-2000', 500, 'W', 102);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (4, '20-DEC-2000', 6000, 'D', 103);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (5, '25-DEC-2001', 200, 'D', 105);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (6, '26-JAN-2001', 1500, 'D', 106);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (7, '21-JAN-2001', 3000, 'D', 105);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (8, '20-JAN-2002', 5000, 'D', 102);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (9, '26-FEB-2002', 50000, 'D', 101);

1 row created.

SQL> INSERT INTO ACTRAN2 VALUES (10, '25-MAR-2003', 4500, 'D', 109);

1 row created.

SQL> SELECT * FROM ACTRAN2;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         1 01-APR-00        500 W        101
         2 02-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109

10 rows selected.


Queries 
^^^^^^^
^^^^^^^
*****************************************************************************************
1. Modify balance of all rows of ACMASTER by adding 100 rupees in their current balance.
*****************************************************************************************
	SQL> UPDATE ACMASTER2 SET BAL = (100);

	10 rows updated.

	SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL
---------- ---------- --------- ----------
       101 ASHOK      01-APR-97        100
       102 NILESH     02-JUN-98        100
       103 RITESH     04-JUL-98        100
       104 MUKESH     20-DEC-98        100
       105 JAYESH     25-DEC-98        100
       106 RAJESH     26-JAN-99        100
       107 KUNAL      21-JAN-99        100
       108 DEVANG     20-JAN-99        100
       109 ABHAY      26-FEB-99        100
       110 KAPIL      25-MAR-99        100

10 rows selected.

*************************************************************
2. Delete the row from ACTRAN table having transaction no 1.
*************************************************************

SQL> DESC ACTRAN2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TNO                                                NUMBER(3)
 TDATE                                              DATE
 AMOUNT                                             NUMBER(7,2)
 ACTYPE                                             CHAR(1)
 ACNO                                               NUMBER(3)

SQL> SELECT * FROM ACTRAN2;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         1 01-APR-00        500 W        101
         2 02-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109

10 rows selected.

SQL> DELETE FROM ACTRAN2 WHERE TNO=1;

1 row deleted.

SQL> SELECT * FROM ACTRAN2;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 02-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109

9 rows selected.

*****************************************************************
3. Replace the name MUKESH with ROGER having account number 104
*****************************************************************

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL
---------- ---------- --------- ----------
       101 ASHOK      01-APR-97        100
       102 NILESH     02-JUN-98        100
       103 RITESH     04-JUL-98        100
       104 MUKESH     20-DEC-98        100
       105 JAYESH     25-DEC-98        100
       106 RAJESH     26-JAN-99        100
       107 KUNAL      21-JAN-99        100
       108 DEVANG     20-JAN-99        100
       109 ABHAY      26-FEB-99        100
       110 KAPIL      25-MAR-99        100

10 rows selected.

SQL> UPDATE FROM ACMASTER2 SET NAME='ROGER' WHERE ACNO=104
  2
SQL> UPDATE FROM ACMASTER2 SET NAME='ROGER' WHERE ACNO=104;
UPDATE FROM ACMASTER2 SET NAME='ROGER' WHERE ACNO=104
       *
ERROR at line 1:
ORA-00903: invalid table name


SQL> UPDATE ACMASTER2 SET NAME='ROGER' WHERE ACNO=104;

1 row updated.

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL
---------- ---------- --------- ----------
       101 ASHOK      01-APR-97        100
       102 NILESH     02-JUN-98        100
       103 RITESH     04-JUL-98        100
       104 ROGER      20-DEC-98        100
       105 JAYESH     25-DEC-98        100
       106 RAJESH     26-JAN-99        100
       107 KUNAL      21-JAN-99        100
       108 DEVANG     20-JAN-99        100
       109 ABHAY      26-FEB-99        100
       110 KAPIL      25-MAR-99        100

10 rows selected.

*************************************************
4. Delete account having account no 110
*************************************************

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL
---------- ---------- --------- ----------
       101 ASHOK      01-APR-97        100
       102 NILESH     02-JUN-98        100
       103 RITESH     04-JUL-98        100
       104 ROGER      20-DEC-98        100
       105 JAYESH     25-DEC-98        100
       106 RAJESH     26-JAN-99        100
       107 KUNAL      21-JAN-99        100
       108 DEVANG     20-JAN-99        100
       109 ABHAY      26-FEB-99        100
       110 KAPIL      25-MAR-99        100

10 rows selected.

SQL> DELETE FROM ACMASTER2 WHERE ACNO=110;

1 row deleted.

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL
---------- ---------- --------- ----------
       101 ASHOK      01-APR-97        100
       102 NILESH     02-JUN-98        100
       103 RITESH     04-JUL-98        100
       104 ROGER      20-DEC-98        100
       105 JAYESH     25-DEC-98        100
       106 RAJESH     26-JAN-99        100
       107 KUNAL      21-JAN-99        100
       108 DEVANG     20-JAN-99        100
       109 ABHAY      26-FEB-99        100

9 rows selected.

******************************************************************************************
5. Display all account holders’ name those who have opened account before year 1999
******************************************************************************************

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL CITY
---------- ---------- --------- ---------- ---------------
       101 ASHOK      01-APR-97       5100 MAHUVA
       102 NILESH     02-JUN-98       1100 BHAVNAGAR
       103 RITESH     04-JUL-98       2160 RAJKOT
       104 ROGER      20-DEC-98       5100 JUNAGADH
       105 JAYESH     25-DEC-98      60100
       106 RAJESH     26-JAN-99       2500
       107 KUNAL      21-JAN-99       1600
       108 DEVANG     20-JAN-99       2099
       109 ABHAY      26-FEB-99       2150

9 rows selected.

SQL> SELECT * FROM ACMASTER2 WHERE ADATE < '1-JAN-1999';

      ACNO NAME       ADATE            BAL CITY
---------- ---------- --------- ---------- ---------------
       101 ASHOK      01-APR-97       5100 MAHUVA
       102 NILESH     02-JUN-98       1100 BHAVNAGAR
       103 RITESH     04-JUL-98       2160 RAJKOT
       104 ROGER      20-DEC-98       5100 JUNAGADH
       105 JAYESH     25-DEC-98      60100



*************************************************
6. List all transactions of account number 101
*************************************************

SQL> SELECT BAL FROM ACMASTER2 WHERE ACNO=101;

       BAL
----------
      5100
	  
~~~~~~~~~OR~~~~~~~~~~~	
	
SQL> SELECT * FROM ACMASTER2 WHERE ACNO=101;

      ACNO NAME       ADATE            BAL CITY
---------- ---------- --------- ---------- ---------------
       101 ASHOK      01-APR-97       5100 MAHUVA


**********************************************************************
7. List all account holders detail having balance greater than 2000
**********************************************************************

SQL> SELECT ACNO,NAME,BAL FROM ACMASTER2 WHERE BAL>2000;

      ACNO NAME              BAL
---------- ---------- ----------
       101 ASHOK            5100
       103 RITESH           2160
       104 ROGER            5100
       105 JAYESH          60100
       106 RAJESH           2500
       108 DEVANG           2099
       109 ABHAY            2150

7 rows selected.


******************************************************************************
8. Update transaction type and amount with D and 5000 having transition no 3
******************************************************************************

SQL> SELECT * FROM ACTRAN2;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 02-JUN-00       1000 D        101
         3 04-JUL-00        500 W        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109

9 rows selected.

SQL> DESC ACTRAN2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TNO                                                NUMBER(3)
 TDATE                                              DATE
 AMOUNT                                             NUMBER(7,2)
 ACTYPE                                             CHAR(1)
 ACNO                                               NUMBER(3)

SQL> UPDATE ACTRAN2 SET ACTYPE='D', AMOUNT=5000 WHERE TNO=3;

1 row updated.

SQL> SELECT * FROM ACTRAN2;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 02-JUN-00       1000 D        101
         3 04-JUL-00       5000 D        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109

9 rows selected.


******************************************
9. Display all rows of ACTRAN
******************************************

SQL> SELECT * FROM ACTRAN2;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 02-JUN-00       1000 D        101
         3 04-JUL-00       5000 D        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109

9 rows selected.

***************************************************
10. Add column CITY in ACMASTER
***************************************************

SQL> ALTER TABLE ACMASTER2 ADD CITY VARCHAR2(15);

Table altered.

SQL> DESC ACMASTER2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACNO                                      NOT NULL NUMBER(3)
 NAME                                               VARCHAR2(10)
 ADATE                                              DATE
 BAL                                                NUMBER(9,2)
 CITY                                               VARCHAR2(15)

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL CITY
---------- ---------- --------- ---------- ---------------
       101 ASHOK      01-APR-97        100
       102 NILESH     02-JUN-98        100
       103 RITESH     04-JUL-98        100
       104 ROGER      20-DEC-98        100
       105 JAYESH     25-DEC-98        100
       106 RAJESH     26-JAN-99        100
       107 KUNAL      21-JAN-99        100
       108 DEVANG     20-JAN-99        100
       109 ABHAY      26-FEB-99        100

9 rows selected.

************************************************************
11. Add city name in following order
	a. 101 MAHUVA
	b. 102 BHAVNAGAR
	c. 103 RAJKOT
	d. 104 JUNAGADH
	e. 105 to 109 KATPAR
************************************************************

SQL> UPDATE ACMASTER2 SET CITY='MAHUVA' WHERE ACNO=101;

1 row updated.

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL CITY
---------- ---------- --------- ---------- ---------------
       101 ASHOK      01-APR-97        100 MAHUVA
       102 NILESH     02-JUN-98        100
       103 RITESH     04-JUL-98        100
       104 ROGER      20-DEC-98        100
       105 JAYESH     25-DEC-98        100
       106 RAJESH     26-JAN-99        100
       107 KUNAL      21-JAN-99        100
       108 DEVANG     20-JAN-99        100
       109 ABHAY      26-FEB-99        100

9 rows selected.

SQL> COMMIT;

Commit complete.

SQL> UPDATE ACMASTER2 SET CITY='BHAVNAGAR' WHERE ACNO=102;

1 row updated.

SQL> UPDATE ACMASTER2 SET CITY='RAJKOT' WHERE ACNO=103;

1 row updated.

SQL> UPDATE ACMASTER2 SET CITY='JUNAGADH' WHERE ACNO=104;

1 row updated.

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL CITY
---------- ---------- --------- ---------- ---------------
       101 ASHOK      01-APR-97       5100 MAHUVA
       102 NILESH     02-JUN-98       1100 BHAVNAGAR
       103 RITESH     04-JUL-98       2160 RAJKOT
       104 ROGER      20-DEC-98       5100 JUNAGADH
       105 JAYESH     25-DEC-98      60100
       106 RAJESH     26-JAN-99       2500
       107 KUNAL      21-JAN-99       1600
       108 DEVANG     20-JAN-99       2099
       109 ABHAY      26-FEB-99       2150

9 rows selected.

-- Update city for account numbers 105 to 109
SQL> UPDATE ACMASTER SET city = 'KATPAR' WHERE ACNO BETWEEN 105 AND 109;
                            --or
SQL> UPDATE ACMASTER2 SET CITY='KATPAR' WHERE ACNO>=105 AND ACNO<=109;

5 rows updated.

SQL> SELECT * FROM ACMASTER2;

      ACNO NAME       ADATE            BAL CITY
---------- ---------- --------- ---------- ---------------
       101 ASHOK      01-APR-97       5100 MAHUVA
       102 NILESH     02-JUN-98       1100 BHAVNAGAR
       103 RITESH     04-JUL-98       2160 RAJKOT
       104 ROGER      20-DEC-98       5100 JUNAGADH
       105 JAYESH     25-DEC-98      60100 KATPAR
       106 RAJESH     26-JAN-99       2500 KATPAR
       107 KUNAL      21-JAN-99       1600 KATPAR
       108 DEVANG     20-JAN-99       2099 KATPAR
       109 ABHAY      26-FEB-99       2150 KATPAR

9 rows selected.


*********************************************************
12. Change date to ‘1-APR-2002’ of transaction no 9
*********************************************************

SQL> DESC ACTRAN2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TNO                                                NUMBER(3)
 TDATE                                              DATE
 AMOUNT                                             NUMBER(7,2)
 ACTYPE                                             CHAR(1)
 ACNO                                               NUMBER(3)

SQL> SELECT * FROM ACTRAN2;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 02-JUN-00       1000 D        101
         3 04-JUL-00       5000 D        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 26-FEB-02      50000 D        101
        10 25-MAR-03       4500 D        109

9 rows selected.

SQL> UPDATE ACTRAN2 SET TDATE='1-APR-2002' WHERE TNO=9;

1 row updated.

SQL> SELECT * FROM ACTRAN2;

       TNO TDATE         AMOUNT A       ACNO
---------- --------- ---------- - ----------
         2 02-JUN-00       1000 D        101
         3 04-JUL-00       5000 D        102
         4 20-DEC-00       6000 D        103
         5 25-DEC-01        200 D        105
         6 26-JAN-01       1500 D        106
         7 21-JAN-01       3000 D        105
         8 20-JAN-02       5000 D        102
         9 01-APR-02      50000 D        101
        10 25-MAR-03       4500 D        109

9 rows selected.



