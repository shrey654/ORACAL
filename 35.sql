 --Create Table

SQL> CREATE TABLE student
  2  (
  3      id NUMBER PRIMARY KEY,
  4      fname VARCHAR2(20),
  5      lname VARCHAR2(20),
  6      city VARCHAR2(20)
  7  );

Table created.
-- Insert Records
SQL> INSERT INTO student VALUES (1,'Shrey','Makwana','Rajkot');

1 row created.

SQL> INSERT INTO student VALUES (2,'Rahul','Patel','Ahmedabad');

1 row created.

SQL> INSERT INTO student VALUES (3,'Amit','Shah','Surat');

1 row created.

SQL> COMMIT;

Commit complete.

--Create Procedure Using Explicit Cursor

SQL> CREATE OR REPLACE PROCEDURE display_student
  2  IS
  3      CURSOR c1 IS
  4          SELECT id, fname, lname, city FROM student;
  5      v_id student.id%TYPE;
  6      v_fname student.fname%TYPE;
  7      v_lname student.lname%TYPE;
  8      v_city student.city%TYPE;
  9  BEGIN
 10      OPEN c1;
 11
 12      LOOP
 13          FETCH c1 INTO v_id, v_fname, v_lname, v_city;
 14          EXIT WHEN c1%NOTFOUND;
 15
 16          DBMS_OUTPUT.PUT_LINE(
 17              v_id || ' ' || v_fname || ' ' ||
 18              v_lname || ' ' || v_city);
 19      END LOOP;
 20
 21      CLOSE c1;
 22  END;
 23  /

Procedure created.
-- Execute

SQL> EXEC display_student;

1 Shrey Makwana Rajkot
2 Rahul Patel Ahmedabad
3 Amit Shah Surat

PL/SQL procedure successfully completed.