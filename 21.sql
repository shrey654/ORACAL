SQL> DECLARE
  2      y NUMBER;
  3  BEGIN
  4      y := &y;
  5      IF MOD(y,400) = 0 OR
  6         (MOD(y,4) = 0 AND MOD(y,100) <> 0) THEN
  7          DBMS_OUTPUT.PUT_LINE(y || ' is Leap Year');
  8      ELSE
  9          DBMS_OUTPUT.PUT_LINE(y || ' is Not Leap Year');
 10      END IF;
 11  END;
 12  /
Enter value for y: 2024
old   4:     y := &y;
new   4:     y := 2024;

2024 is Leap Year

PL/SQL procedure successfully completed.