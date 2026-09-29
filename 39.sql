SQL> DECLARE
  2      a NUMBER := &a;
  3      b NUMBER := &b;
  4      c NUMBER;
  5  BEGIN
  6      c := a / b;
  7      DBMS_OUTPUT.PUT_LINE('Result = ' || c);
  8  EXCEPTION
  9      WHEN ZERO_DIVIDE THEN
 10          DBMS_OUTPUT.PUT_LINE('Error: Cannot divide by zero');
 11  END;
 12  /

 input :

 Enter value for a: 10
Enter value for b: 0

output :

Error: Cannot divide by zero

PL/SQL procedure successfully completed.