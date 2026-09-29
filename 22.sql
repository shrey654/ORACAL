SQL> DECLARE
  2      i NUMBER := 1;
  3  BEGIN
  4      WHILE i <= 5 LOOP
  5          DBMS_OUTPUT.PUT_LINE(i);
  6          i := i + 1;
  7      END LOOP;
  8  END;
  9  /

1
2
3
4
5

PL/SQL procedure successfully completed.