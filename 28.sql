SQL> DECLARE
  2      n NUMBER;
  3      a NUMBER := 0;
  4      b NUMBER := 1;
  5      c NUMBER;
  6      i NUMBER := 1;
  7  BEGIN
  8      n := &n;
  9      WHILE i <= n LOOP
 10          DBMS_OUTPUT.PUT_LINE(a);
 11          c := a + b;
 12          a := b;
 13          b := c;
 14          i := i + 1;
 15      END LOOP;
 16  END;
 17  /
Enter value for n: 8
old   8:     n := &n;
new   8:     n := 8;

0
1
1
2
3
5
8
13

PL/SQL procedure successfully completed.