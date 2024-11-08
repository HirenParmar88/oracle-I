
--------------------------> 22 OCT 2019 PEPER <-----------------------------

******TABLE 1************

SQL> CREATE TABLE SALESMAN(
  2  SNUM NUMBER(4) CONSTRAINT PKSNUM PRIMARY KEY,
  3  SNAME VARCHAR2(20) NOT NULL,
  4  CITY VARCHAR2(20) NOT NULL,
  5  COMMISSION NUMBER(5,2));

Table created.

*******TABLE 2*************

SQL> CREATE TABLE CUSTOMER(
  2    CNUM NUMBER(4) CONSTRAINT PKCNUM PRIMARY KEY,
  3    CNAME VARCHAR2(20) NOT NULL,
  4    CITY VARCHAR2(20) NOT NULL,
  5    RATING NUMBER(4) NOT NULL,
  6    SNUM NUMBER(4), CONSTRAINTS FKSNUM FOREIGN KEY(SNUM) REFERENCES SALESMAN);

Table created.
**************INSERT METHODS*************

SQL> INSERT INTO SALESMAN VALUES(1001,'RAKESH','BHAVNAGAR',86.4);

1 row created.

SQL> INSERT INTO SALESMAN (SNUM,SNAME,CITY,COMMISSION) VALUES ('1002','SURESH','RAJKOT','10.3');

1 row created.

SQL> INSERT INTO SALESMAN VALUES(&SNUM,'&SNAME','&CITY',&COMMISSION);
Enter value for snum: 1003
Enter value for sname: HIREN
Enter value for city: MAHUVA
Enter value for commission: 44.2
old   1: INSERT INTO SALESMAN VALUES(&SNUM,'&SNAME','&CITY',&COMMISSION)
new   1: INSERT INTO SALESMAN VALUES(1003,'HIREN','MAHUVA',44.2)

1 row created.

SQL> DESC SALESMAN;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SNUM                                      NOT NULL NUMBER(4)
 SNAME                                     NOT NULL VARCHAR2(20)
 CITY                                      NOT NULL VARCHAR2(20)
 COMMISSION                                         NUMBER(5,2)

SQL> SELECT * FROM SALESMAN;

      SNUM SNAME                CITY                 COMMISSION
---------- -------------------- -------------------- ----------
      1001 RAKESH               BHAVNAGAR                  86.4
      1002 SURESH               RAJKOT                     10.3
      1003 HIREN                MAHUVA                     44.2
      1004 GANESH               SURAT                      88.2
      1005 PARESH               BHUJ                      31.25
      1006 MAHESH               MAHUVA                     99.5

6 rows selected.

*********************************
SQL> INSERT INTO CUSTOMER VALUES(&CNUM,'&CNAME','&CITY',&RATING,&SNUM);
Enter value for cnum: 101
Enter value for cname: PARESH
Enter value for city: MAHUVA
Enter value for rating: 1
Enter value for snum: 1001
old   1: INSERT INTO CUSTOMER VALUES(&CNUM,'&CNAME','&CITY',&RATING,&SNUM)
new   1: INSERT INTO CUSTOMER VALUES(101,'PARESH','MAHUVA',1,1001)

1 row created.

SQL> DESC CUSTOMER;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CNUM                                      NOT NULL NUMBER(4)
 CNAME                                     NOT NULL VARCHAR2(20)
 CITY                                      NOT NULL VARCHAR2(20)
 RATING                                    NOT NULL NUMBER(4)
 SNUM                                               NUMBER(4)

SQL> SELECT * FROM CUSTOMER;

      CNUM CNAME                CITY                     RATING       SNUM
---------- -------------------- -------------------- ---------- ----------
       101 PARESH               MAHUVA                        1       1001
       102 MAHESH               MAHUVA                        2       1002
       103 JAY                  BHAVNAGAR                     3       1003
       104 RAVI                 AMRELI                        3       1004
       105 AMAN                 MAHUVA                        5       1005
	   
*****************************QUERIES || COMMANDS**************************************************

1)DISPLAY ALL CUSTOMER WHOSE SALESMAN NUMBER IS 1001
SQL> SELECT * FROM SALESMAN WHERE SNUM=1001;

      SNUM SNAME                CITY                 COMMISSION
---------- -------------------- -------------------- ----------
      1001 RAKESH               BHAVNAGAR                  86.4

2)DISPLAY DETAIL OF SALESMAN NAME WITH THEIR CUSTOMER NAME.
SQL> SELECT * FROM SALESMAN WHERE SNAME LIKE'%RAKESH%';

      SNUM SNAME                CITY                 COMMISSION
---------- -------------------- -------------------- ----------
      1001 RAKESH               BHAVNAGAR                  86.4
	  
6)FIND SECOND HIGHEST COMMISSION.	  
	  
SQL> SELECT MAX(COMMISSION) FROM SALESMAN WHERE COMMISSION<(SELECT MAX(COMMISSION) FROM SALESMAN);

MAX(COMMISSION)
---------------
           88.2	  
		   
****FIRST HIGHEST COMMISSION**

SQL> SELECT SNUM,SNAME,COMMISSION FROM SALESMAN WHERE COMMISSION=(SELECT MAX(COMMISSION) FROM SALESMAN);

      SNUM SNAME                COMMISSION
---------- -------------------- ----------
      1006 MAHESH                     99.5

QUERY-7) FIND ANNUAL COMMISSION OF ALL SALESMAN.

SQL> SELECT SNUM,SNAME,CITY,COMMISSION/30 DAILY_COMMISSION,12*COMMISSION ANNUAL_COMMISSION 
	FROM SALESMAN ORDER BY ANNUAL_COMMISSION ASC;		   
	 
	       SNUM SNAME                CITY                 DAILY_COMMISSION ANNUAL_COMMISSION
---------- -------------------- -------------------- ---------------- -----------------
      1002 SURESH               RAJKOT                     .343333333             123.6
      1005 PARESH               BHUJ                       1.04166667               375
      1003 HIREN                MAHUVA                     1.47333333             530.4
      1001 RAKESH               BHAVNAGAR                        2.88            1036.8
      1004 GANESH               SURAT                            2.94            1058.4
      1006 MAHESH               MAHUVA                     3.31666667              1194

6 rows selected.

QUERY-8) DISPLAY CUSTOMERS NAME CONTAINS'SH' LAST TWO CHAR.

SQL> SELECT * FROM CUSTOMER WHERE CNAME LIKE'%SH';

      CNUM CNAME                CITY                     RATING       SNUM
---------- -------------------- -------------------- ---------- ----------
       101 PARESH               MAHUVA                        1       1001
       102 MAHESH               MAHUVA                        2       1002
	   
QUERY-9)DISP CUSTOMER IN ASC ORDER CNUM.

SQL> SELECT CNUM,CNAME FROM CUSTOMER ORDER BY CNAME ASC;

      CNUM CNAME
---------- --------------------
       105 AMAN
       103 JAY
       102 MAHESH
       101 PARESH
       104 RAVI
SQL> SELECT CNUM,CNAME FROM CUSTOMER ORDER BY CNUM ASC;

      CNUM CNAME
---------- --------------------
       101 PARESH
       102 MAHESH
       103 JAY
       104 RAVI
       105 AMAN