SQL> BEGIN
  2      FOR i IN 1..10 LOOP
  3          DBMS_OUTPUT.PUT_LINE(i);
  4      END LOOP;
  5  END;
  6  /

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