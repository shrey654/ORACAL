--Create Table
SQL> CREATE TABLE student3
  2  (
  3      sid NUMBER PRIMARY KEY,
  4      sname VARCHAR2(30),
  5      age NUMBER,
  6      class VARCHAR2(20)
  7  );

Table created.

--Procedure

SQL> CREATE OR REPLACE PROCEDURE add_student
  2  (
  3      p_sid NUMBER,
  4      p_sname VARCHAR2,
  5      p_age NUMBER,
  6      p_class VARCHAR2
  7  )
  8  IS
  9  BEGIN
 10      INSERT INTO student3
 11      VALUES (p_sid, p_sname, p_age, p_class);
 12
 13      DBMS_OUTPUT.PUT_LINE('Record inserted successfully');
 14  END;
 15  /

Procedure created.

--Call

SQL> EXEC add_student(1,'Shrey',20,'BCA');

Record inserted successfully

PL/SQL procedure successfully completed.

--Check Record

SQL> SELECT * FROM student3;

       SID SNAME               AGE CLASS
---------- ------------------ ---- --------------------
         1 Shrey                20 BCA