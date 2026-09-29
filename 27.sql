SQL> DECLARE
  2      n NUMBER;
  3      i NUMBER := 1;
  4      s NUMBER := 0;
  5  BEGIN
  6      n := &n;
  7      WHILE i <= n LOOP
  8          s := s + i;
  9          i := i + 3;
 10      END LOOP;
 11      DBMS_OUTPUT.PUT_LINE('Sum = ' || s);
 12  END;
 13  /
Enter value for n: 10
old   6:     n := &n;
new   6:     n := 10;

Sum = 22

PL/SQL procedure successfully completed.