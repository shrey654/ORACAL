SQL> DECLARE
  2      i NUMBER := 1;
  3  BEGIN
  4      LOOP
  5          DBMS_OUTPUT.PUT_LINE(i);
  6          i := i + 1;
  7          EXIT WHEN i > 10;
  8      END LOOP;
  9  END;
 10  /

1
2
3
4
5
6
7
8
9
10

PL/SQL procedure successfully completed.