--Create Procedure
SQL> CREATE OR REPLACE PROCEDURE minimum_num
  2  (
  3      a IN NUMBER,
  4      b IN NUMBER,
  5      c OUT NUMBER
  6  )
  7  IS
  8  BEGIN
  9      IF a < b THEN
 10          c := a;
 11      ELSE
 12          c := b;
 13      END IF;
 14  END;
 15  /

Procedure created.

--Call Block

SQL> DECLARE
  2      a NUMBER := &a;
  3      b NUMBER := &b;
  4      c NUMBER;
  5  BEGIN
  6      minimum_num(a, b, c);
  7      DBMS_OUTPUT.PUT_LINE('Minimum = ' || c);
  8  END;
  9  /
Enter value for a: 25
Enter value for b: 15
old   2:     a NUMBER := &a;
new   2:     a NUMBER := 25;
old   3:     b NUMBER := &b;
new   3:     b NUMBER := 15;

Minimum = 15

PL/SQL procedure successfully completed.