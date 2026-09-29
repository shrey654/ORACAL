--Create Procedure
SQL> CREATE OR REPLACE PROCEDURE square_num
  2  (
  3      p_num IN OUT NUMBER
  4  )
  5  IS
  6  BEGIN
  7      p_num := p_num * p_num;
  8  END;
  9  /

Procedure created.


--Call Block

SQL> DECLARE
  2      n NUMBER := &n;
  3  BEGIN
  4      square_num(n);
  5      DBMS_OUTPUT.PUT_LINE('Square = ' || n);
  6  END;
  7  /
Enter value for n: 5
old   2:     n NUMBER := &n;
new   2:     n NUMBER := 5;

Square = 25

PL/SQL procedure successfully completed.