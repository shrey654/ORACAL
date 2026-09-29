SQL> DECLARE
  2      n NUMBER;
  3      fact NUMBER := 1;
  4      i NUMBER := 1;
  5  BEGIN
  6      n := &n;
  7      WHILE i <= n LOOP
  8          fact := fact * i;
  9          i := i + 1;
 10      END LOOP;
 11      DBMS_OUTPUT.PUT_LINE('Factorial = ' || fact);
 12  END;
 13  /
Enter value for n: 5
old   6:     n := &n;
new   6:     n := 5;

Factorial = 120

PL/SQL procedure successfully completed.