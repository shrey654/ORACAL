SQL> SET SERVEROUTPUT ON;

SQL> DECLARE
  2      n NUMBER;
  3  BEGIN
  4      n := &n;
  5      IF MOD(n,2) = 0 THEN
  6          DBMS_OUTPUT.PUT_LINE(n || ' is Even');
  7      ELSE
  8          DBMS_OUTPUT.PUT_LINE(n || ' is Odd');
  9      END IF;
 10  END;
 11  /
Enter value for n: 7
old   4:     n := &n;
new   4:     n := 7;

7 is Odd

PL/SQL procedure successfully completed.