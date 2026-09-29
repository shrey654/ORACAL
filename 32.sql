SQL> DECLARE
  2      i NUMBER;
  3      j NUMBER;
  4      flag NUMBER;
  5  BEGIN
  6      FOR i IN 2..50 LOOP
  7          flag := 0;
  8
  9          FOR j IN 2..i-1 LOOP
 10              IF MOD(i,j) = 0 THEN
 11                  flag := 1;
 12                  EXIT;
 13              END IF;
 14          END LOOP;
 15
 16          IF flag = 0 THEN
 17              DBMS_OUTPUT.PUT_LINE(i);
 18          END IF;
 19      END LOOP;
 20  END;
 21  /

 output:
 2
3
5
7
11
13
17
19
23
29
31
37
41
43
47

PL/SQL procedure successfully completed.