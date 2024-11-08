				UNIT 4 [SUB QUERY]

SQL> SELECT ENAME, DNAME FROM (SELECT E.*, D.* FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO) EMPDEPT;

ENAME      DNAME
---------- --------------
CLARK      ACCOUNTING
KING       ACCOUNTING
MILLER     ACCOUNTING
JONES      RESEARCH
FORD       RESEARCH
ADAMS      RESEARCH
SMITH      RESEARCH
SCOTT      RESEARCH
WARD       SALES
TURNER     SALES
ALLEN      SALES
JAMES      SALES
BLAKE      SALES
MARTIN     SALES

14 rows selected.

*************************
UPDATE SUB QUERY
*********************************************
SQL> UPDATE EMP SET SAL = SAL+100 WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

6 rows updated.

***************************************
DELETE USING SUB QUERY
*********************************************
SQL> DELETE FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE LOC='CHICAGO');

6 rows deleted.

*********************************
CREATE TABLE USING SUB QUERY
********************************************
SQL> CREATE TABLE MYEMP AS SELECT * FROM EMP;

Table created.

****************************************************
INSERT DATA USING SUB QUERY
********************************
SQL> INSERT INTO MYDEPT SELECT * FROM DEPT WHERE DNAME='SALES';

*********************************************************************

SQL> SELECT ENAME, DEPTNO FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

no rows selected


*******THIS QUERY USE TO FIND FIRST HIGHEST SALARY............

SQL> SELECT ENAME, SAL FROM EMP WHERE SAL=(SELECT MAX(SAL) EMP);

*******THIS QUERY USE TO FIND SECOND HIGHEST SALARY............

SQL> SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP);

  MAX(SAL)
----------
      3000
	  
*******THIS QUERY USE TO FIND THIRD HIGHEST SALARY............

SQL> SELECT ENAME, SAL FROM EMP WHERE SAL=(SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP)));

ENAME             SAL
---------- ----------
JONES            2975


*********************SUB QUERY USING TABLE *************************************

SQL> SELECT ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC) WHERE ROWNUM=2;

no rows selected

[INNER JOIN]
*******************************
THITA STYLE*******

SQL> SELECT I.BNAME, S.RNO, S.NAME FROM ISSUE I, STUDENT S WHERE I.RNO=S.RNO;

ANSI STYLE*********

