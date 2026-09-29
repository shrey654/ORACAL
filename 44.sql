--Create Table
SQL> CREATE TABLE student2
  2  (
  3      sid NUMBER PRIMARY KEY,
  4      sname VARCHAR2(30),
  5      dob DATE,
  6      address VARCHAR2(50),
  7      city VARCHAR2(20)
  8  );

Table created.

--Insert Record

SQL> INSERT INTO student2
  2  VALUES (1,'SHREY','15-JAN-2005','Rajkot','Rajkot');

1 row created.

SQL> COMMIT;

Commit complete.

--Create Procedure

SQL> CREATE OR REPLACE PROCEDURE show_student
  2  (
  3      p_sid NUMBER
  4  )
  5  IS
  6      v_sname student2.sname%TYPE;
  7      v_dob student2.dob%TYPE;
  8      v_address student2.address%TYPE;
  9      v_city student2.city%TYPE;
 10  BEGIN
 11      SELECT sname, dob, address, city
 12      INTO v_sname, v_dob, v_address, v_city
 13      FROM student2
 14      WHERE sid = p_sid;
 15
 16      DBMS_OUTPUT.PUT_LINE('SID = ' || p_sid);
 17      DBMS_OUTPUT.PUT_LINE('Name = ' || v_sname);
 18      DBMS_OUTPUT.PUT_LINE('DOB = ' || v_dob);
 19      DBMS_OUTPUT.PUT_LINE('Address = ' || v_address);
 20      DBMS_OUTPUT.PUT_LINE('City = ' || v_city);
 21  END;
 22  /

Procedure created.
--Call Block
SQL> BEGIN
  2      show_student(1);
  3  END;
  4  /

SID = 1
Name = SHREY
DOB = 15-JAN-05
Address = Rajkot
City = Rajkot

PL/SQL procedure successfully completed.