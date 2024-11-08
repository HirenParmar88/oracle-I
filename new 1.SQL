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
 BAL                                                NUMBER(9,2)


   
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