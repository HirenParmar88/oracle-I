
***************************EMP TABLE*********************
SQL> CREATE TABLE EMP(
  2  EMPNO NUMBER(4) NOT NULL,
  3  ENAME VARCHAR2(10),
  4  JOB VARCHAR2(9),
  5  MGR NUMBER(4),
  6  HIREDATE DATE,
  7  SAL NUMBER(7,2),
  8  COMM NUMBER(7,2),
  9  DEPTNO NUMBER(2));

Table created.

SQL> DESC EMP;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 EMPNO                                                             NOT NULL NUMBER(4)
 ENAME                                                                      VARCHAR2(10)
 JOB                                                                        VARCHAR2(9)
 MGR                                                                        NUMBER(4)
 HIREDATE                                                                   DATE
 SAL                                                                        NUMBER(7,2)
 COMM                                                                       NUMBER(7,2)
 DEPTNO                                                                     NUMBER(2)
 
SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.
****************************DEPT TABLE*******************************
SQL> CREATE TABLE DEPT(
  2  DEPTNO NUMBER(2) NOT NULL,
  3  DNAME VARCHAR2(14),
  4  LOC VARCHAR2(13));

Table created.

SQL> DESC DEPT;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 DEPTNO                                                            NOT NULL NUMBER(2)
 DNAME                                                                      VARCHAR2(14)
 LOC                                                                        VARCHAR2(13)

SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK
        20 RESEARCH       DALLAS
        30 SALES          CHICAGO
        40 OPERATIONS     BOSTON
*******************************************************************************************
[01] List all information about those employees whose earning at least 1000 and are either 
clerk or salesman.

***********************

SQL> SELECT * FROM EMP
  2  WHERE SAL>=1000
  3  AND (JOB='SALESMAN' OR JOB='CLERK');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30

      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30

      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


6 rows selected.

**************************************************************************
[02] List all employees of dept no. 30 who are manager, salesman or clerk.

***********************

SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=30
  3  AND (JOB='SALESMAN' OR JOB='CLERK');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30

      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30

      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30
		
*************************************************************************************
[03] List the details of the employees who are not getting commission.

************************************

SQL> SELECT * FROM EMP
  2  WHERE COMM=0 OR COMM IS NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20

      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30

      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7788 SCOTT      ANALYST         7566 19-APR-87       3000
        20

      7839 KING       PRESIDENT            17-NOV-81       5000
        10

      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30

      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20

      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


11 rows selected.

***************************************************************************
[04] List the details of the employees which have ‘R’ or ‘r’ followed by ‘s’ or ‘S’ in their 
name.

********************************
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE '%R%S%'
  3  OR ENAME LIKE '%r%s%';

no rows selected

SQL> SELECT * FROM EMP
  2  WHERE UPPER(ENAME) LIKE '%R%S%';

no rows selected

SQL> SELECT * FROM EMP
  2  WHERE LOWER(ENAME) LIKE '%a%s%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30


SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE '%E%S%'
  3  OR ENAME LIKE '%e%s%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7566 JONES      MANAGER         7839 02-APR-81       2975
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30


SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE '%R%S%'
  3  OR ENAME LIKE '%r%s%';

no rows selected

*******************************************************************************************
[05] List all the employees whose earning is in the list followed and whose name starts 
with ‘A’ or ‘a’.
Salary: 1250, 1150, 950, 2975, 5000, 3000, 10000.
*****************************************************

SQL> SELECT * FROM EMP
  2  WHERE (ENAME LIKE 'A%' OR ENAME LIKE '%a')
  3  AND (SAL=1250 OR SAL=1100 OR SAL=950 OR SAL=2975 OR SAL=5000 OR SAL=3000 OR SAL=10000);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20


SQL> SELECT * FROM EMP
  2  WHERE (ENAME LIKE 'A%' OR ENAME LIKE 'a%')
  3  AND SAL IN (1250,1100,950,2975,5000,3000,10000);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20


SQL> SELECT * FROM EMP WHERE (ENAME LIKE 'A%' OR ENAME LIKE 'a%') 
	 AND SAL = ANY(1250,1100,950,2975,5000,3000,10000);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20
&&&&&&&&&&&&& EXAMPLE &&&&&&&&&&&

SQL> SELECT * FROM EMP WHERE ENAME LIKE '__R%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30

      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30

      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20
***********************************************************************************************
[06] List all employees whose ‘HIREDATE’ year between 1981 and 1987 with initial 
character of name in uppercase and remaining characters in lowercase.
******************************************
SQL> SELECT INITCAP(ENAME) FROM EMP;

INITCAP(EN
----------
Smith
Allen
Ward
Jones
Martin
Blake
Clark
Scott
King
Turner
Adams
James
Ford
Miller

14 rows selected.

SQL> SELECT LOWER(ENAME) FROM EMP;

LOWER(ENAM
----------
smith
allen
ward
jones
martin
blake
clark
scott
king
turner
adams
james
ford
miller

14 rows selected.

||||||||||||||||

SQL> SELECT ENAME, HIREDATE FROM EMP
  2  WHERE HIREDATE BETWEEN '1-JAN-1981' AND '31-DEC-1987' AND ENAME=INITCAP(ENAME);

no rows selected

SQL> SET PAGESIZE 120;
SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20

      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30

      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30

      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7788 SCOTT      ANALYST         7566 19-APR-87       3000
        20

      7839 KING       PRESIDENT            17-NOV-81       5000
        10

      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30

      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20

      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


14 rows selected.

SQL> SELECT ENAME, HIREDATE FROM EMP
  2  WHERE HIREDATE BETWEEN '1-JAN-1981' AND '31-DEC-1987' AND ENAME = INITCAP (ENAME);

no rows selected

************************************************************************************************
[07] Find the number of employees working in department inputted by user.
********************************************

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20

      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30

      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30

      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7788 SCOTT      ANALYST         7566 19-APR-87       3000
        20

      7839 KING       PRESIDENT            17-NOV-81       5000
        10

      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30

      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20

      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


14 rows selected.

SQL> SELECT * FROM EMP WHERE DEPTNO=&DEPTNO;
Enter value for deptno: 20
old   1: SELECT * FROM EMP WHERE DEPTNO=&DEPTNO
new   1: SELECT * FROM EMP WHERE DEPTNO=20

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20

      7788 SCOTT      ANALYST         7566 19-APR-87       3000
        20

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20
***************************************************************************************
[08] Calculate number of employees holding different jobs in different departments.

[09] Calculate the number of employees holding different jobs in different departments.
************************************************

SQL> SELECT DEPTNO,COUNT(DEPTNO) FROM EMP GROUP BY DEPTNO;

    DEPTNO COUNT(DEPTNO)
---------- -------------
        30             6
        20             5
        10             3

SQL> SELECT ENAME,DEPTNO FROM EMP ORDER BY DEPTNO;

ENAME          DEPTNO
---------- ----------
CLARK              10
KING               10
MILLER             10
JONES              20
FORD               20
ADAMS              20
SMITH              20
SCOTT              20
WARD               30
TURNER             30
ALLEN              30
JAMES              30
BLAKE              30
MARTIN             30

14 rows selected.

SQL> SELECT JOB,COUNT(JOB) FROM EMP GROUP BY JOB;

JOB       COUNT(JOB)
--------- ----------
CLERK              4
SALESMAN           4
PRESIDENT          1
MANAGER            3
ANALYST            2

SQL> SELECT DEPTNO,JOB,COUNT(JOB) FROM EMP
  2  GROUP BY DEPTNO,JOB
  3  ORDER BY DEPTNO,JOB;

    DEPTNO JOB       COUNT(JOB)
---------- --------- ----------
        10 CLERK              1
        10 MANAGER            1
        10 PRESIDENT          1
        20 ANALYST            2
        20 CLERK              2
        20 MANAGER            1
        30 CLERK              1
        30 MANAGER            1
        30 SALESMAN           4

9 rows selected.
********************************************************************************************
[10] Calculate the number of employees excluding president holding different job titles in 
different departments.
********************************************
SQL> SELECT DEPTNO,JOB,COUNT(JOB) FROM EMP
  2  GROUP BY DEPTNO,JOB
  3  HAVING JOB <> 'PRESIDENT';

    DEPTNO JOB       COUNT(JOB)
---------- --------- ----------
        20 CLERK              2
        30 SALESMAN           4
        20 MANAGER            1
        30 CLERK              1
        30 MANAGER            1
        10 CLERK              1
        10 MANAGER            1
        20 ANALYST            2

8 rows selected.
****************************************************************************************
[11] Display all jobs in different departments each have more than two employees with 
that job titles.
*************************************************
SQL> SELECT DEPTNO,JOB,COUNT(JOB) FROM EMP
  2  GROUP BY DEPTNO,JOB
  3  HAVING COUNT(JOB)>2;

    DEPTNO JOB       COUNT(JOB)
---------- --------- ----------
        30 SALESMAN           4
		
***************************************************************************************
[12] Find all the departments that have at least two clerks.
*******************************************************

SQL> SELECT DEPTNO,JOB,COUNT(JOB) FROM EMP
  2  GROUP BY DEPTNO,JOB
  3  HAVING JOB='CLERK' AND COUNT(JOB)>=2;

    DEPTNO JOB       COUNT(JOB)
---------- --------- ----------
        20 CLERK              2
*********************************************************************************
[13] Determine average annual salary per department excluding the manager and 
president.
***********************************************
SQL> SELECT DEPTNO,JOB,AVG(SAL*12) FROM EMP
  2  WHERE JOB NOT IN('MANAGER','PRESIDENT')
  3  GROUP BY DEPTNO,JOB;

    DEPTNO JOB       AVG(SAL*12)
---------- --------- -----------
        20 CLERK           11400
        30 SALESMAN        16800
        30 CLERK           11400
        10 CLERK           15600
        20 ANALYST         36000

*************************************************************************************
[14] List employee job titles immediately followed by name.
*********************************************
SQL> SELECT ENAME || ' ' || JOB FULLNAME FROM EMP;

FULLNAME
--------------------
SMITH CLERK
ALLEN SALESMAN
WARD SALESMAN
JONES MANAGER
MARTIN SALESMAN
BLAKE MANAGER
CLARK MANAGER
SCOTT ANALYST
KING PRESIDENT
TURNER SALESMAN
ADAMS CLERK
JAMES CLERK
FORD ANALYST
MILLER CLERK

14 rows selected.

SQL> SELECT DEPTNO DEPARTMENT,JOB,SAL*12 ANNUALSAL FROM EMP ORDER BY DEPTNO;

DEPARTMENT JOB        ANNUALSAL
---------- --------- ----------
        10 MANAGER        29400
        10 PRESIDENT      60000
        10 CLERK          15600
        20 MANAGER        35700
        20 ANALYST        36000
        20 CLERK          13200
        20 CLERK           9600
        20 ANALYST        36000
        30 SALESMAN       15000
        30 SALESMAN       18000
        30 SALESMAN       19200
        30 CLERK          11400
        30 MANAGER        34200
        30 SALESMAN       15000

14 rows selected.

SQL> SELECT DEPTNO DEPARTMENT,JOB,SAL*12 "ANNUAL SALARY" FROM EMP ORDER BY DEPTNO;

DEPARTMENT JOB       ANNUAL SALARY
---------- --------- -------------
        10 MANAGER           29400
        10 PRESIDENT         60000
        10 CLERK             15600
        20 MANAGER           35700
        20 ANALYST           36000
        20 CLERK             13200
        20 CLERK              9600
        20 ANALYST           36000
        30 SALESMAN          15000
        30 SALESMAN          18000
        30 SALESMAN          19200
        30 CLERK             11400
        30 MANAGER           34200
        30 SALESMAN          15000

14 rows selected.

SQL> SELECT DEPTNO DEPT_NO,JOB,SAL*12 "ANNUAL_SAL" FROM EMP ORDER BY DEPTNO;

   DEPT_NO JOB       ANNUAL_SAL
---------- --------- ----------
        10 MANAGER        29400
        10 PRESIDENT      60000
        10 CLERK          15600
        20 MANAGER        35700
        20 ANALYST        36000
        20 CLERK          13200
        20 CLERK           9600
        20 ANALYST        36000
        30 SALESMAN       15000
        30 SALESMAN       18000
        30 SALESMAN       19200
        30 CLERK          11400
        30 MANAGER        34200
        30 SALESMAN       15000

14 rows selected.

************************************************************************************
[15] List the department name as four letter code ordered by the department name.
*******************************************

SQL> SELECT ENAME,JOB,DEPTNO,DECODE(DEPTNO,10,'ACCO',20,'RESE',30,'SALE',40,'OPER')FROM EMP;

ENAME      JOB           DEPTNO DECO
---------- --------- ---------- ----
SMITH      CLERK             20 RESE
ALLEN      SALESMAN          30 SALE
WARD       SALESMAN          30 SALE
JONES      MANAGER           20 RESE
MARTIN     SALESMAN          30 SALE
BLAKE      MANAGER           30 SALE
CLARK      MANAGER           10 ACCO
SCOTT      ANALYST           20 RESE
KING       PRESIDENT         10 ACCO
TURNER     SALESMAN          30 SALE
ADAMS      CLERK             20 RESE
JAMES      CLERK             30 SALE
FORD       ANALYST           20 RESE
MILLER     CLERK             10 ACCO

14 rows selected.


SQL> SELECT EMPNO,ENAME,DNAME FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

     EMPNO ENAME      DNAME
---------- ---------- --------------
      7782 CLARK      ACCOUNTING
      7839 KING       ACCOUNTING
      7934 MILLER     ACCOUNTING
      7566 JONES      RESEARCH
      7902 FORD       RESEARCH
      7876 ADAMS      RESEARCH
      7369 SMITH      RESEARCH
      7788 SCOTT      RESEARCH
      7521 WARD       SALES
      7844 TURNER     SALES
      7499 ALLEN      SALES
      7900 JAMES      SALES
      7698 BLAKE      SALES
      7654 MARTIN     SALES

14 rows selected.
***********************************************************************************
[16] Find out the name of hiredate of the last person hired.
************************************************
SQL> SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE=(SELECT MAX(HIREDATE)FROM EMP);

ENAME      HIREDATE
---------- ---------
ADAMS      23-MAY-87

SQL> SELECT * FROM (SELECT ENAME,HIREDATE FROM EMP ORDER BY HIREDATE DESC) WHERE ROWNUM<2;

ENAME      HIREDATE
---------- ---------
ADAMS      23-MAY-87

***********************************************************************************
[17] Decode deptno into dept name from dept table.
********************************************************





*************************************************************************************************
[18] List all last characters from the position of character ‘A’ or ‘a’ in ename.
**********************************************************
SQL> SELECT SUBSTR(ENAME,3,4) FROM EMP;

SUBS
----
ITH
LEN
RD
NES
RTIN
AKE
ARK
OTT
NG
RNER
AMS
MES
RD
LLER

14 rows selected.

SQL> SELECT ENAME,INSTR(ENAME,'A',1) FROM EMP;

ENAME      INSTR(ENAME,'A',1)
---------- ------------------
SMITH                       0
ALLEN                       1
WARD                        2
JONES                       0
MARTIN                      2
BLAKE                       3
CLARK                       3
SCOTT                       0
KING                        0
TURNER                      0
ADAMS                       1
JAMES                       2
FORD                        0
MILLER                      0

14 rows selected.

SQL> SELECT SUBSTR (ENAME,INSTR(ENAME,'A',1),LENGTH(ENAME))NAME FROM EMP WHERE INSTR(ENAME,'A',1)>0;

NAME
----------
ALLEN
ARD
ARTIN
AKE
ARK
ADAMS
AMES

7 rows selected.

*****************************************************************************************
[19] Find names of the employees who are working in sales department.
***************************************************************************
SQL> SELECT E.ENAME, D.DNAME EROM EMP E, DEPT D WHERE D.DEPTNO = E.DEPTNO AND DNAME='SALES';
SELECT E.ENAME, D.DNAME EROM EMP E, DEPT D WHERE D.DEPTNO = E.DEPTNO AND DNAME='SALES'
                             *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected

//USING SUB QUERY//

SQL> SELECT ENAME,DEPTNO FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

ENAME          DEPTNO
---------- ----------
ALLEN              30
WARD               30
MARTIN             30
BLAKE              30
TURNER             30
JAMES              30

6 rows selected.
*******************************************************************
[20] List name, job and salary of the employees in department 20 who have the same job 
as that of employees in ‘SALES’ and ‘HRD’.
********************************************

SELECT ENAME,JOB,SAL FROM EMP
WHERE DEPTNO=20
AND JOB IN(SELECT JOB FROM EMP
			WHERE DEPTNO=(SELECT DEPTNO FROM DEPT 
			WHERE DNAME='SALES' OR DNAME='HDR'));
			
			
SQL> SELECT ENAME,JOB,SAL FROM EMP
  2  WHERE DEPTNO=20
  3  AND JOB IN(SELECT JOB FROM EMP
  4  WHERE DEPTNO=(SELECT DEPTNO FROM DEPT
  5  WHERE DNAME='SALES' OR DNAME='HDR'));

ENAME      JOB              SAL
---------- --------- ----------
JONES      MANAGER         2975
ADAMS      CLERK           1100
SMITH      CLERK            800

*****************************************************************************
[22] Find out the highest paid employee in each department and display their name and 
deptno.
****************************************
SQL> SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO;

  MAX(SAL)
----------
      2850
      3000
      5000
	  
SQL> SELECT ENAME,SAL,DEPTNO FROM EMP
  2     WHERE SAL IN(SELECT MAX(SAL) FROM EMP
  3     GROUP BY DEPTNO);

ENAME             SAL     DEPTNO
---------- ---------- ----------
BLAKE            2850         30
SCOTT            3000         20
KING             5000         10
FORD             3000         20

***********************************************************************************************
[23] List employee who have the same job as that of Mr. Jones and who have more salary 
than any one employee of Dept 30.
**********************************************
SQL> 
SELECT ENAME, JOB FROM EMP 
WHERE JOB=(SELECT JOB FROM EMP WHERE ENAME='JONES');

ENAME      JOB
---------- ---------
JONES      MANAGER
BLAKE      MANAGER
CLARK      MANAGER

SQL> 
SELECT ENAME,JOB FROM EMP 
WHERE JOB=(SELECT JOB FROM EMP WHERE ENAME='JONES') 
AND SAL>ANY(SELECT SAL FROM EMP WHERE DEPTNO=30);

ENAME      JOB
---------- ---------
JONES      MANAGER
BLAKE      MANAGER
CLARK      MANAGER

*******************************************************************************
[24] list the employee name , deptno and dept location of all clerks.
******************************************
SQL> SELECT E.ENAME,D.DEPTNO,D.LOC FROM EMP E, DEPT D WHERE E.DEPTNO=D.DEPTNO AND E.JOB='CLERK';

ENAME          DEPTNO LOC
---------- ---------- -------------
MILLER             10 NEW YORK
SMITH              20 DALLAS
ADAMS              20 DALLAS
JAMES              30 CHICAGO

**********************************************************************************
[25] List the location of all departments and the employees working at those location.
*****************************************************************************************
SQL> SELECT D.LOC,D.DEPTNO,E.ENAME FROM EMP E,DEPT D WHERE E.DEPTNO=D.DEPTNO ORDER BY D.LOC;

LOC               DEPTNO ENAME
------------- ---------- ----------
CHICAGO               30 TURNER
CHICAGO               30 WARD
CHICAGO               30 BLAKE
CHICAGO               30 MARTIN
CHICAGO               30 JAMES
CHICAGO               30 ALLEN
DALLAS                20 SCOTT
DALLAS                20 ADAMS
DALLAS                20 FORD
DALLAS                20 JONES
DALLAS                20 SMITH
NEW YORK              10 KING
NEW YORK              10 CLARK
NEW YORK              10 MILLER

14 rows selected.

OR************

SQL> SELECT ENAME FROM EMP WHERE DEPTNO IN(SELECT DEPTNO FROM DEPT WHERE LOC='CHICAGO');

ENAME
----------
WARD
TURNER
ALLEN
JAMES
BLAKE
MARTIN

6 rows selected.
********************************************************************************************************
[26] list the employees who are earning more than their managers.
*******************************************************************
---------------------SELF JOIN-----------------------

SQL> SELECT E.ENAME EMPLOYEE,E.SAL,M.ENAME MANAGER,M.SAL FROM EMP E,EMP M WHERE E.MGR = M.EMPNO AND E.SAL > M.SAL;

EMPLOYEE          SAL MANAGER           SAL
---------- ---------- ---------- ----------
FORD             3000 JONES            2975
SCOTT            3000 JONES            2975

*********************************************************************
[27] list all character from the position of character ‘A’ or ‘a’ in empname.
***********************************************************************************














****************************************************************************************************
[28] Select name , job and salary of employee in dept 20 who have the same job as that of 
each in ‘SALES\’ or ‘HRD’.
********************************************************************************************