SQL> DECLARE
  2      n NUMBER;
  3  BEGIN
  4      n := &n;
  5
  6      IF n > 0 THEN
  7          DBMS_OUTPUT.PUT_LINE('Number is Positive');
  8      ELSIF n < 0 THEN
  9          DBMS_OUTPUT.PUT_LINE('Number is Negative');
 10      ELSE
 11          DBMS_OUTPUT.PUT_LINE('Number is Zero');
 12      END IF;
 13  END;
 14  /
Enter value for n: -5
old   4:     n := &n;
new   4:     n := -5;

Number is Negative

PL/SQL procedure successfully completed.