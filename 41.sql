SQL> CREATE OR REPLACE PROCEDURE descend(n NUMBER)
  2  IS
  3  BEGIN
  4      IF n >= 1 THEN
  5          DBMS_OUTPUT.PUT_LINE(n);
  6          descend(n - 1);
  7      END IF;
  8  END;
  9  /

Procedure created.

call function :
SQL> EXEC descend(5);

5
4
3
2
1

PL/SQL procedure successfully completed.