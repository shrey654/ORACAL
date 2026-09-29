SQL> DECLARE
  2      i NUMBER := 12;
  3  BEGIN
  4      WHILE i <= 100 LOOP
  5          DBMS_OUTPUT.PUT_LINE(i);
  6          i := i + 20;
  7      END LOOP;
  8  END;
  9  /

12
32
52
72
92

PL/SQL procedure successfully completed.