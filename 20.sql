SQL> DECLARE
  2      n NUMBER;
  3      i NUMBER := 1;
  4  BEGIN
  5      n := &n;
  6      WHILE i <= 10 LOOP
  7          DBMS_OUTPUT.PUT_LINE(n || ' x ' || i || ' = ' || n*i);
  8          i := i + 1;
  9      END LOOP;
 10  END;
 11  /
Enter value for n: 5
old   5:     n := &n;
new   5:     n := 5;

5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
5 x 4 = 20
5 x 5 = 25
5 x 6 = 30
5 x 7 = 35
5 x 8 = 40
5 x 9 = 45
5 x 10 = 50

PL/SQL procedure successfully completed.