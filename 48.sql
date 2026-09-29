--Package Specification

SQL> CREATE OR REPLACE PACKAGE student_package
  2  IS
  3      PROCEDURE add_student
  4      (
  5          p_sid NUMBER,
  6          p_sname VARCHAR2,
  7          p_age NUMBER,
  8          p_class VARCHAR2
  9      );
 10
 11      PROCEDURE delete_student
 12      (
 13          p_sid NUMBER
 14      );
 15  END student_package;
 16  /

Package created.

--Package Body

SQL> CREATE OR REPLACE PACKAGE BODY student_package
  2  IS
  3      PROCEDURE add_student
  4      (
  5          p_sid NUMBER,
  6          p_sname VARCHAR2,
  7          p_age NUMBER,
  8          p_class VARCHAR2
  9      )
 10      IS
 11      BEGIN
 12          INSERT INTO student3
 13          VALUES (p_sid, p_sname, p_age, p_class);
 14
 15          DBMS_OUTPUT.PUT_LINE('Record added');
 16      END;
 17
 18      PROCEDURE delete_student
 19      (
 20          p_sid NUMBER
 21      )
 22      IS
 23      BEGIN
 24          DELETE FROM student3
 25          WHERE sid = p_sid;
 26
 27          DBMS_OUTPUT.PUT_LINE('Record deleted');
 28      END;
 29  END student_package;
 30  /

Package body created.

--Add Record

SQL> EXEC student_package.add_student(2,'Rahul',21,'BCA');

Record added

PL/SQL procedure successfully completed.

--Delete Record

SQL> EXEC student_package.delete_student(2);

Record deleted

PL/SQL procedure successfully completed.