
****************ORACLE OPERATORS************************
1.ARITHMETIC OPERATOR
2.RELATIONAL
3.COMPARISON
4.LOGICAL
5.BITWISE
6.SET 
*********************************************

SQL> DESC DUAL;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DUMMY                                              VARCHAR2(1)

SQL> DESC EMP;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)

SQL> DESC DEPT;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTNO                                    NOT NULL NUMBER(2)
 DNAME                                              VARCHAR2(14)
 LOC                                                VARCHAR2(13)
**********************************************************************************
1)ARITHMETIC OPERATOR
************************
1.+

SQL> SELECT +3 FROM DUAL;

        +3
----------
         3
		 
2.-

SQL> SELECT -4 FROM DUAL;

        -4
----------
        -4
		
3./

SQL> SELECT SAL/10 FROM EMP;

    SAL/10
----------
        80
     297.5
       245
       300
       500
       110
       300
       130

8 rows selected.

4.*

SQL> SELECT SAL * 5 FROM EMP;

     SAL*5
----------
      4000
     14875
     12250
     15000
     25000
      5500
     15000
      6500

8 rows selected.

5.+
SQL> SELECT SAL + 200 FROM EMP;

   SAL+200
----------
      1000
      3175
      2650
      3200
      5200
      1300
      3200
      1500

8 rows selected.

6.- (SUBTRACTION)

SQL> SELECT SAL-100 FROM EMP;

   SAL-100
----------
       700
      2875
      2350
      2900
      4900
      1000
      2900
      1200

8 rows selected.

**************************************************************************************
2)CHARACTER OPERATOR
***********************
1.|| (concatenetes character string)

SQL> SELECT 'THE NAME OF THE EMPLOYEE IS :' || ENAME FROM EMP;

'THENAMEOFTHEEMPLOYEEIS:'||ENAME
---------------------------------------
THE NAME OF THE EMPLOYEE IS :SMITH
THE NAME OF THE EMPLOYEE IS :JONES
THE NAME OF THE EMPLOYEE IS :CLARK
THE NAME OF THE EMPLOYEE IS :SCOTT
THE NAME OF THE EMPLOYEE IS :KING
THE NAME OF THE EMPLOYEE IS :ADAMS
THE NAME OF THE EMPLOYEE IS :FORD
THE NAME OF THE EMPLOYEE IS :MILLER

8 rows selected.

SQL> SELECT CONCAT ( CONCAT ( ENAME, ' IS A ') ,JOB) FROM EMP WHERE SAL > 2000;

CONCAT(CONCAT(ENAME,'ISA'
-------------------------
JONES IS A MANAGER
CLARK IS A MANAGER
SCOTT IS A ANALYST
KING IS A PRESIDENT
FORD IS A ANALYST

*********************************************************************************************************
3)COMPARISON OPERATOR
**********************

1.= (EQUAL)

SQL> SELECT ENAME "EMPLOYEE" FROM EMP WHERE SAL=1500;

no rows selected

2.!=,^=,<> (INEQUALITY)

SQL> SELECT ENAME FROM EMP WHERE SAL ^=5000;

ENAME
----------
SMITH
JONES
CLARK
SCOTT
ADAMS
FORD
MILLER

7 rows selected.

3.> (GREATER THEN)

SQL> SELECT ENAME "EMPLOYEE",JOB "TITLE",SAL FROM EMP WHERE SAL > 3000;

EMPLOYEE   TITLE            SAL
---------- --------- ----------
KING       PRESIDENT       5000


4.< (LESS THEN)

SQL> SELECT ENAME "EMPLOYEE",JOB "TITLE",SAL FROM EMP WHERE SAL < 3000;

EMPLOYEE   TITLE            SAL
---------- --------- ----------
SMITH      CLERK            800
JONES      MANAGER         2975
CLARK      MANAGER         2450
ADAMS      CLERK           1100
MILLER     CLERK           1300

5.>= (GREATER THEN OR EQUAL)

SQL> SELECT ENAME "EMPLOYEE",JOB "TITLE",SAL FROM EMP WHERE SAL >= 3000;

EMPLOYEE   TITLE            SAL
---------- --------- ----------
SCOTT      ANALYST         3000
KING       PRESIDENT       5000
FORD       ANALYST         3000

6.<= (LESS THEN OR EQUAL)

SQL> SELECT ENAME "EMPLOYEE",JOB "TITLE",SAL FROM EMP WHERE SAL <= 1500;

EMPLOYEE   TITLE            SAL
---------- --------- ----------
SMITH      CLERK            800
ADAMS      CLERK           1100
MILLER     CLERK           1300

7. IN

SQL> SELECT * FROM EMP WHERE ENAME IN('SMITH','WARD');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
	  
8.ANY/SOME

SQL> SELECT * FROM DEPT WHERE LOC = SOME('NEW YORK','DALLAS');

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK
        20 RESEARCH       DALLAS

9.NOT IN

SQL> SELECT * FROM DEPT WHERE LOC NOT IN('NEW YORK','DALLAS');

    DEPTNO DNAME          LOC
---------- -------------- -------------
        30 SALES          CHICAGO
        40 OPERATIONS     BOSTON
		
10. ALL

SQL> SELECT * FROM EMP WHERE SAL >= ALL (1400,3000);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
	  
11. [NOT] BETWEEN

SQL> SELECT EMPNO,ENAME,JOB,SAL FROM EMP WHERE SAL BETWEEN 3000 AND 5000;

     EMPNO ENAME      JOB              SAL
---------- ---------- --------- ----------
      7788 SCOTT      ANALYST         3000
      7839 KING       PRESIDENT       5000
      7902 FORD       ANALYST         3000
	  
12. EXISTS

SQL> SELECT * FROM EMP WHERE EXISTS(SELECT ENAME FROM EMP WHERE MGR IS NULL);

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

13. [NOT] LIKE

SQL> SELECT * FROM EMP WHERE ENAME LIKE'%E%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
	  
14. IS [NOT] NULL

SQL> SELECT * FROM EMP WHERE COMM IS NOT NULL AND SAL > 1500;

no rows selected
*********************************************************************************************************
4)LOGICAL OPERATOR

1. NOT

SQL> SELECT * FROM EMP WHERE NOT(JOB IS NULL);

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

SQL> SELECT * FROM EMP WHERE NOT (SAL BETWEEN 1000 AND 2000);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

6 rows selected.

2. AND

SQL> SELECT * FROM EMP WHERE JOB='CLERK' AND DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
	  
3. OR

SQL> SELECT * FROM EMP WHERE JOB='CLERK' OR DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
	  
*********************************************************************************************************
5) SET OPERATOR

1.UNION

SQL> SELECT * FROM (SELECT ENAME FROM EMP WHERE JOB='CLERK' 
	 UNION 
	 SELECT ENAME FROM EMP WHERE JOB='ANALYST');

ENAME
----------
ADAMS
FORD
MILLER
SCOTT
SMITH

SQL> SELECT * FROM (SELECT ENAME,EMPNO,JOB FROM EMP WHERE JOB='CLERK' UNION SELECT ENAME,EMPNO,JOB FROM EMP WHERE JOB='ANALYST');

ENAME           EMPNO JOB
---------- ---------- ---------
ADAMS            7876 CLERK
FORD             7902 ANALYST
MILLER           7934 CLERK
SCOTT            7788 ANALYST
SMITH            7369 CLERK

2. UNION ALL

SQL> SELECT * FROM (SELECT ENAME FROM EMP WHERE JOB='CLERK' 
	 UNION ALL 
	 SELECT ENAME FROM EMP WHERE JOB='ANALYST');

ENAME
----------
SMITH
ADAMS
MILLER
SCOTT
FORD

SQL> SELECT * FROM (SELECT ENAME,EMPNO,JOB FROM EMP WHERE JOB='CLERK' 
	 UNION ALL 
	 SELECT ENAME,EMPNO,JOB FROM EMP WHERE JOB='ANALYST');

ENAME           EMPNO JOB
---------- ---------- ---------
SMITH            7369 CLERK
ADAMS            7876 CLERK
MILLER           7934 CLERK
SCOTT            7788 ANALYST
FORD             7902 ANALYST

3. INTERSECT AND INTERSECT ALL

SQL> SELECT * FROM (SELECT ENAME FROM EMP WHERE JOB='CLERK' 
	 INTERSECT 
	 SELECT ENAME FROM EMP WHERE JOB='ANALYST');

no rows selected

4. MINUS

SQL> SELECT * FROM (SELECT EMPNO,ENAME,SAL FROM EMP WHERE JOB='PRESIDENT'
	 MINUS 
	 SELECT EMPNO,ENAME,SAL FROM EMP WHERE JOB='MANAGER');

     EMPNO ENAME             SAL
---------- ---------- ----------
      7839 KING             5000
*********************************************************************************************************
6) OTHER OPERATORS 

1. (+) 

SQL> SELECT ENAME,DNAME FROM EMP, DEPT WHERE DEPT.DEPTNO=EMP.DEPTNO(+);

ENAME      DNAME
---------- --------------
MILLER     ACCOUNTING
CLARK      ACCOUNTING
KING       ACCOUNTING
FORD       RESEARCH
ADAMS      RESEARCH
JONES      RESEARCH
SMITH      RESEARCH
SCOTT      RESEARCH
           SALES
           OPERATIONS

10 rows selected.

2. PRIOR

SQL> SELECT EMPNO,ENAME,MGR FROM EMP CONNECT BY PRIOR EMPNO=MGR;

     EMPNO ENAME             MGR
---------- ---------- ----------
      7788 SCOTT            7566
      7876 ADAMS            7788
      7902 FORD             7566
      7369 SMITH            7902
      7934 MILLER           7782
      7876 ADAMS            7788
      7566 JONES            7839
      7788 SCOTT            7566
      7876 ADAMS            7788
      7902 FORD             7566
      7369 SMITH            7902

     EMPNO ENAME             MGR
---------- ---------- ----------
      7782 CLARK            7839
      7934 MILLER           7782
      7369 SMITH            7902
      7839 KING
      7566 JONES            7839
      7788 SCOTT            7566
      7876 ADAMS            7788
      7902 FORD             7566
      7369 SMITH            7902
      7782 CLARK            7839
      7934 MILLER           7782

22 rows selected.