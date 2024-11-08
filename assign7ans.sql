

								ORACLE-1
								
							ASSIGNMENT-7
							
						HIREN D.PARMAR		RNO : 03
////////////////////////////////////////////////////////////////////////////////////////////////////

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




///////////////////////////////////////////////////////////////////////////////////////////////////
COMMANDS :-
-----------------
1. Display all the information of the EMP table?
***************************************************
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

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

***************************************************
2. Display unique Jobs from EMP table?
***************************************************
SQL> SELECT DISTINCT(JOB) FROM EMP;

JOB
---------
CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST

SQL> SELECT UNIQUE JOB FROM EMP;

JOB
---------
CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST

**************************************************
3. List the emps in the asc order of their Salaries?
**************************************************
SQL> SELECT * FROM EMP ORDER BY SAL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10

14 rows selected.

********************************************************************************
4. List the details of the emps in asc order of the Dptnos and desc of Jobs? 
********************************************************************************
SQL> SELECT * FROM EMP ORDER BY(DEPTNO), JOB DESC;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

14 rows selected.

**************************************************************
5. Display all the unique job groups in the descending order?
**************************************************************
SQL> SELECT DISTINCT JOB FROM EMP ORDER BY JOB DESC;

JOB
---------
SALESMAN
PRESIDENT
MANAGER
CLERK
ANALYST

						OR
						
SQL> SELECT UNIQUE JOB FROM EMP ORDER BY JOB DESC;

JOB
---------
SALESMAN
PRESIDENT
MANAGER
CLERK
ANALYST

*************************************************************
6. Display all the details of all ‘Mgrs’ 
************************************************************
SQL> SELECT * FROM EMP WHERE EMPNO IN(SELECT MGR FROM EMP);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

6 rows selected.
*************************************************************
7. List the emps who joined before 1981. 
*************************************************************
SQL> SELECT * FROM EMP WHERE HIREDATE < '1-JAN-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
	  
***********************************************************************************
8. List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal. 
***********************************************************************************
SQL> SELECT EMPNO, ENAME, SAL, SAL/30 DAILY, SAL*12 ANNUAL FROM EMP ORDER BY ANNUAL;

     EMPNO ENAME             SAL      DAILY     ANNUAL
---------- ---------- ---------- ---------- ----------
      7369 SMITH             800 26.6666667       9600
      7900 JAMES             950 31.6666667      11400
      7876 ADAMS            1100 36.6666667      13200
      7521 WARD             1250 41.6666667      15000
      7654 MARTIN           1250 41.6666667      15000
      7934 MILLER           1300 43.3333333      15600
      7844 TURNER           1500         50      18000
      7499 ALLEN            1600 53.3333333      19200
      7782 CLARK            2450 81.6666667      29400
      7698 BLAKE            2850         95      34200
      7566 JONES            2975 99.1666667      35700

     EMPNO ENAME             SAL      DAILY     ANNUAL
---------- ---------- ---------- ---------- ----------
      7788 SCOTT            3000        100      36000
      7902 FORD             3000        100      36000
      7839 KING             5000 166.666667      60000

14 rows selected.

*************************************************************************
9. Display the Empno, Ename, job, Hiredate, Exp of all Mgrs 
********************************************************************
SQL> SELECT EMPNO, ENAME, HIREDATE, (SYSDATE-HIREDATE)/365 EXP FROM EMP WHERE JOB='MANAGER';

     EMPNO ENAME      HIREDATE         EXP
---------- ---------- --------- ----------
      7566 JONES      02-APR-81 41.3745043
      7698 BLAKE      01-MAY-81 41.2950523
      7782 CLARK      09-JUN-81 41.1882029
	  
*************************************************************************************
10. List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369. 
***************************************************************************
SQL> SELECT EMPNO,ENAME, SAL, (SYDATE-HIREDATE)/365 EXP FROM EMP WHERE=7369;

****************************************************************
11. Display all the details of the emps whose Comm. Is more than their Sal. 
*****************************************************************
SQL> SELECT * FROM EMP WHERE COMM > SAL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
	  
*****************************************************************************************
12. List the emps in the asc order of Designations of those joined after the second half of 1981.
*******************************************************************************************************
SQL> SELECT * FROM EMP WHERE HIREDATE >= '1-DEC-1981' ORDER BY JOB;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

************************************************************************************************
13. List the emps along with their Exp and Daily Sal is more than Rs.100.
******************************************************************************
SQL> SELECT ENAME,JOB,(SYSDATE-HIREDATE)/360 EXP,SAL/30 DAILYSAL FROM EMP WHERE (SAL/30)>100;

ENAME      JOB              EXP   DAILYSAL
---------- --------- ---------- ----------
KING       PRESIDENT 41.3130667 166.666667
******************************************************
14. List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order. 
***************************************************************************
SQL> SELECT * FROM EMP WHERE JOB IN('CLERK','ANALYST') ORDER BY JOB DESC;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

6 rows selected.

*********************************************************************************************
15. List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority. 
***************************************************
SQL> SELECT * FROM EMP WHERE HIREDATE IN('1-MAY-81','3-DEC-81','17-DEC-81','19-JAN-80') ORDER BY(HIREDATE);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

*******************************************************************************************
16. List the emp who are working for the Deptno 10 or20. 
**************************************************************
SQL> SELECT * FROM EMP WHERE DEPTNO IN(10,20);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

8 rows selected.

********************************************************************************************
17. List the emps who are joined in the year 81. 
*********************************************************************************************
SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '%1';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

10 rows selected.

*********************************************************************************************
18. List the emps who are joined in the month of Aug 1980. 
*********************************************************************************************
ANS---->
SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '%AUG%80';

no rows selected

EXPERIMENT:

SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '%AUG%81';

no rows selected

SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '%SEP%81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

***************************************************************************************
19. List the emps Who Annual sal ranging from 22000 and 45000. 
*******************************************************************
SQL> SELECT ENAME,JOB,SAL*12 ANNUAL FROM EMP WHERE SAL*22 BETWEEN 22000 AND 45000;

ENAME      JOB           ANNUAL
---------- --------- ----------
ALLEN      SALESMAN       19200
WARD       SALESMAN       15000
MARTIN     SALESMAN       15000
TURNER     SALESMAN       18000
ADAMS      CLERK          13200
MILLER     CLERK          15600

6 rows selected.

********************************************************************************************
20. List the Enames those are having five characters in their Names. 
**********************************************************************
SQL> SELECT * FROM EMP WHERE LENGTH(ENAME)=5;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

8 rows selected.
***********************************************************************************************
21. List the Enames those are starting with ‘S’ and with five characters. 
***********************************************************************************************
SQL> SELECT * FROM EMP WHERE ENAME LIKE 'S____';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

***********************************************************************************************
22. List the emps those are having four chars and third character must be ‘r’. 
*******************************************************************************************
SQL> SELECT * FROM EMP WHERE ENAME LIKE('__R__');

no rows selected

SQL> SELECT * FROM EMP WHERE ENAME LIKE('__r__');

no rows selected
****************************************************************************
23. List the Five character names starting with ‘S’ and ending with ‘H’. 
***************************************************************************
SQL> SELECT * FROM EMP WHERE ENAME LIKE 'S___H';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20

*******************************************************************************************
24. List the emps who joined in January.
********************************************************************************************

SQL> SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE LIKE '%JAN%';

ENAME      HIREDATE
---------- ---------
MILLER     23-JAN-82
******************************************************************************
25. List the emps who joined in the month of which second character is ‘a’. 
******************************************************************************
SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '__-_A_%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
*********************************************************************************************
26. List the emps whose Sal is four digit number ending with Zero.
******************************************************************************************
SQL> SELECT * FROM EMP WHERE SAL LIKE'___0';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

11 rows selected.
**************************************************************************************************
27. List the emps whose names having a character set ‘ll’ together. 
***************************************************************************************************












***************************************************************************************************
28. List the emps those who joined in 80’s. 
****************************************************************************************************
SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '80%';

no rows selected

****************************************************************************************************
29. List the emps who does not belong to Deptno 20. 
*****************************************************************************************************
SQL> SELECT * FROM EMP WHERE DEPTNO<>20;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

9 rows selected.
*************************************************************************************************
30. List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries. 
*************************************************************************************************
SQL> SELECT * FROM EMP WHERE JOB NOT IN('MANAGER','PRESIDENT') ORDER BY SAL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

10 rows selected.

***************************************************************************************************
31. List all the emps who joined before or after 1981. 
****************************************************************************************************
SQL> SELECT * FROM EMP WHERE HIREDATE NOT LIKE '%81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
*****************************************************************************************************
32. List the emps whose Empno not starting with digit78. 
*****************************************************************************************************
SQL> SELECT * FROM EMP WHERE EMPNO NOT LIKE '78%';

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
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

11 rows selected.
******************************************************************************************************
33. List the emps who are working under ‘MGR’. 
******************************************************************************************************
SQL> SELECT * FROM EMP WHERE MGR IS NOT NULL;

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
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

13 rows selected.
******************************************************************************************************
34. List the emps who joined in any year but not belongs to the month of March. 
******************************************************************************************************
SQL> SELECT * FROM EMP WHERE HIREDATE NOT LIKE '%MAR%';

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
*********************************************************************************************************
35. List all the Clerks of Deptno 20. 
***************************************************************
SQL> SELECT * FROM EMP WHERE JOB='CLERK' AND DEPTNO=20;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
*********************************************************************************************************
36. List the emps of Deptno 30 or 10 joined in the year 1981. 
****************************************************************
SQL> SELECT * FROM EMP WHERE DEPTNO IN(30,10) AND HIREDATE LIKE '%81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

8 rows selected.
								OR
SQL> SELECT * FROM EMP WHERE (DEPTNO=30 OR DEPTNO=10) AND HIREDATE LIKE'%81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

8 rows selected.
*******************************************************************************************************
37. Display the details of SMITH. 
**********************************

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
********************************************************************************************************
38. Display the location of SMITH. 
*************************************
SQL> SELECT E.ENAME, E.JOB, D.LOC FROM EMP E, DEPT D WHERE E.DEPTNO=D.DEPTNO AND E.ENAME='SMITH';

ENAME      JOB       LOC
---------- --------- -------------
SMITH      CLERK     DALLAS
*****************************************************************************************************
39. List the total information of EMP table along with DNAME and Loc of all the emps 
****************************************************************************************
SQL> SELECT E.*, D.DNAME, D.LOC FROM EMP E, DEPT D WHERE E.DEPTNO=D.DEPTNO;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO DNAME          LOC
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- -------------- -------------
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10 ACCOUNTING     NEW YORK
      7839 KING       PRESIDENT            17-NOV-81       5000                    10 ACCOUNTING     NEW YORK
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10 ACCOUNTING     NEW YORK
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20 RESEARCH       DALLAS
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20 RESEARCH       DALLAS
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20 RESEARCH       DALLAS
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20 RESEARCH       DALLAS
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20 RESEARCH       DALLAS
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30 SALES          CHICAGO
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30 SALES          CHICAGO
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 SALES          CHICAGO
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30 SALES          CHICAGO
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30 SALES          CHICAGO
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30 SALES          CHICAGO

14 rows selected.
***************************************************************************************************************
40. List the Empno, Ename, Sal, Dname of all the ‘MGRS’ and ‘ANALYST’ working in New York, Dallas with
	an exp more than 7 years without receiving the Comm asc order of Loc. 
*****************************************************************************************************************












******************************************************************************************
41. Display the Empno, Ename, Sal, Dname, Loc, Deptno, Job of all emps working at CJICAGO or working for 
ACCOUNTING dept with Ann Sal>28000, but the Sal should not be=3000 or 2800 who doesn’t belongs to the 
Mgr and whose no is having a digit ‘7’ or ‘8’ in 3rd position in the asc order of Deptno and desc order of job. 
********************************************************












********************************************************************************************************
42. Display the total information of the emps along with Grades in the asc order.
**********************************************************************************
SQL> 

SELECT E.ENAME, E.SAL, G.GRADE, G.LOSAL, G.HISAL 
FROM EMP E, SALGRADE G 
WHERE E.SAL BETWEEN G.LOSAL AND G.HISAL 
WHERE E.SAL >=G.LOSAL AND E.SAL <=G.HISAL 
ORDER BY G.GRADE;

*******************************************************************************************************
43. List all the Grade2 and Grade 3 emps. 
*****************************************
SQL> 

SELECT E.ENAME, E.SAL, G.GRADE, G.LOSAL, G.HISAL 
FROM EMP E, SALGRADE G 
WHERE E.SAL>=G.LOSAL AND E.SAL<=G.HISAL 
AND G.GRADE IN(2,3);

ENAME             SAL      GRADE      LOSAL      HISAL
---------- ---------- ---------- ---------- ----------
WARD             1250          2       1201       1400
MARTIN           1250          2       1201       1400
MILLER           1300          2       1201       1400
ALLEN            1600          3       1401       2000
TURNER           1500          3       1401       2000
*******************************************************************************************************
44. Display all Grade 4,5 Analyst and Mgr. 
*********************************************
SQL> SELECT E.ENAME, E.SAL, G.GRADE, G.LOSAL, G.HISAL
  2  FROM EMP E, SALGRADE G
  3  WHERE E.SAL>=G.LOSAL AND E.SAL<=G.HISAL
  4  AND G.GRADE IN(4,5)
  5  AND E.JOB IN('ANALYST','MANAGER');

ENAME             SAL      GRADE      LOSAL      HISAL
---------- ---------- ---------- ---------- ----------
JONES            2975          4       2001       3000
BLAKE            2850          4       2001       3000
CLARK            2450          4       2001       3000
SCOTT            3000          4       2001       3000
FORD             3000          4       2001       3000
*******************************************************************************************************
45. List the Empno, Ename, Sal, Dname, Grade, Exp, and Ann Sal of emps working for Dept10 or20. 
*************************************************************************************************
SELECT E.EMPNO, E.ENAME, E.SAL, D.DNAME, G.GRADE, (SYSDATE-E.HIREDATE)/365 EXP, E.SAL*12 ANNUAL
FROM EMP E, DEPT D, SALGRADE G
WHERE E.DEPTNO = D.DEPTNO AND E.SAL>=G.LOSAL
AND E.SAL<=G.HISAL AND E.DEPTNO IN(10,20);

     EMPNO ENAME             SAL DNAME               GRADE        EXP     ANNUAL
---------- ---------- ---------- -------------- ---------- ---------- ----------
      7369 SMITH             800 RESEARCH                1  41.714788       9600
      7566 JONES            2975 RESEARCH                4  41.424377      35700
      7782 CLARK            2450 ACCOUNTING              4 41.2380756      29400
      7788 SCOTT            3000 RESEARCH                4 35.3750619      36000
      7839 KING             5000 ACCOUNTING              5 40.7969797      60000
      7876 ADAMS            1100 RESEARCH                1 35.2819112      13200
      7902 FORD             3000 RESEARCH                4 40.7531441      36000
      7934 MILLER           1300 ACCOUNTING              2 40.6134181      15600

8 rows selected.
*******************************************************************************************************
46. List all the information of emp with Loc and the Grade of all the emps belong to the Grade range from 2 to 4 
working at the Dept those are not starting with char set ‘OP’ and not ending with ‘S’ with the designation having 
a char ‘a’ any where joined in the year 1981 but not in the month of Mar or Sep and Sal not end with ‘00’ in the 
asc order of Grades 
***********************************************************












*********************************************************************************************
47. List the details of the Depts along with Empno, Ename or without the emps
******************************************************************************
SQL> SELECT D.DNAME, E.ENAME FROM EMP E, DEPT D WHERE D.DEPTNO=E.DEPTNO(+);

DNAME          ENAME
-------------- ----------
ACCOUNTING     CLARK
ACCOUNTING     KING
ACCOUNTING     MILLER
RESEARCH       JONES
RESEARCH       FORD
RESEARCH       ADAMS
RESEARCH       SMITH
RESEARCH       SCOTT
SALES          WARD
SALES          TURNER
SALES          ALLEN
SALES          JAMES
SALES          BLAKE
SALES          MARTIN
OPERATIONS

15 rows selected.
						OR
						
SQL> SELECT D.DNAME, E.ENAME, FROM EMP E RIGHT OUTER JOIN DEPT D ON D.DEPTNO=E.DEPTNO;

*********************************************************************************************
48. List the details of the emps whose Salaries more than the employee BLAKE. 
*******************************************************************************
SQL> SELECT ENAME, SAL FROM EMP WHERE SAL>(SELECT SAL FROM EMP WHERE ENAME = 'BLAKE');

ENAME             SAL
---------- ----------
JONES            2975
SCOTT            3000
KING             5000
FORD             3000

**************************************************************************
49. List the emps whose Jobs are same as ALLEN.
***************************************************
SQL> SELECT * FROM EMP WHERE JOB=(SELECT JOB FROM EMP WHERE ENAME='ALLEN');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
*******************************************************************************************
50. List the emps who are senior to King. 
******************************************
SQL> SELECT * FROM EMP WHERE HIREDATE<(SELECT HIREDATE FROM EMP WHERE ENAME='KING');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

8 rows selected.
************************************************************************************************
51. List the Emps who are senior to their own MGRS.
***************************************************