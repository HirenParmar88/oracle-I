
			********date 13/09/2022****tuesday*************OLDPEPER QUESTIONS***

SQL> CREATE TABLE DEPARTMENT(
  2  DEPTID NUMBER(3) PRIMARY KEY,
  3  DNAME VARCHAR2(20) NOT NULL,
  4  DEPTLOC VARCHAR2(20) NOT NULL);

Table created.

SQL> CREATE TABLE EMPLOYEE(
  2  EMPID NUMBER(3) PRIMARY KEY,
  3  EMPNAME VARCHAR2(20) NOT NULL,
  4  DOJ DATE,
  5  DOB DATE,
  6  SALARY NUMBER(7) NOT NULL,
  7  DEPTID NUMBER(3),
  8  CONSTRAINTS FKDEPTID FOREIGN KEY(DEPTID) REFERENCES DEPARTMENT);

Table created.

SQL> DESC DEPARTMENT;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTID                                    NOT NULL NUMBER(3)
 DNAME                                     NOT NULL VARCHAR2(20)
 DEPTLOC                                   NOT NULL VARCHAR2(20)

SQL> DESC EMPLOYEE;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                     NOT NULL NUMBER(3)
 EMPNAME                                   NOT NULL VARCHAR2(20)
 DOJ                                                DATE
 DOB                                                DATE
 SALARY                                    NOT NULL NUMBER(7)
 DEPTID                                             NUMBER(3)
 
 ----------------------------------------------------------------------------------------------------
 INSERT DATA IN BOTH THE TABLES:
 *************************************
 
 SQL> INSERT INTO DEPARTMENT VALUES(1,'AAA','PPP');

1 row created.

SQL> INSERT INTO DEPARTMENT VALUES(2,'BBB','QQQ');

1 row created.

SQL> INSERT INTO DEPARTMENT VALUES(3,'CCC','RRR');

1 row created.

SQL> INSERT INTO DEPARTMENT VALUES(4,'DDD','SSS');

1 row created.

SQL> INSERT INTO DEPARTMENT VALUES(5,'EEE','TTT');

1 row created.

SQL> SELECT * FROM DEPARTMENT;

    DEPTID DNAME                DEPTLOC
---------- -------------------- --------------------
         1 AAA                  PPP
         2 BBB                  QQQ
         3 CCC                  RRR
         4 DDD                  SSS
         5 EEE                  TTT
		 
		 
******************************************************************************

SQL> INSERT INTO EMPLOYEE VALUES(101,'HIREN','3-FEB-1999','28-AUG-2003',35000,1);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES(102,'DHARMESH','3-FEB-1998','28-AUG-2002',15000,2);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES(103,'AMAN','3-FEB-1994','12-AUG-2002',25000,3);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES(104,'JAY','3-FEB-1994','12-AUG-2003',33000,4);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES(105,'JIGAR','11-FEB-1994','22-AUG-2003',10000,5);

1 row created.

SQL> SELECT * FROM EMPLOYEE;

     EMPID EMPNAME              DOJ       DOB           SALARY     DEPTID
---------- -------------------- --------- --------- ---------- ----------
       101 HIREN                03-FEB-99 28-AUG-03      35000          1
       102 DHARMESH             03-FEB-98 28-AUG-02      15000          2
       103 AMAN                 03-FEB-94 12-AUG-02      25000          3
       104 JAY                  03-FEB-94 12-AUG-03      33000          4
       105 JIGAR                11-FEB-94 22-AUG-03      10000          5
	   
--------------------------------PERFORM COMMANDS---------------------------------------------

1)DISPLAY DEPTID AND DEPTNAME OF ALL DEPARTMENT.





2)DISPLAY RECORDS OF EMPLOYEE WHOSE SALARY IS GREATER THAN 25000.

SQL> SELECT EMPID, EMPNAME, SALARY FROM EMPLOYEE WHERE SALARY>25000;

     EMPID EMPNAME                  SALARY
---------- -------------------- ----------
       101 HIREN                     35000
       104 JAY                       33000
	   
3)DISPLAY RECORDS OF ALL EMPLOYEES IN ASCENDING ORDER OF THEIR NAME.

