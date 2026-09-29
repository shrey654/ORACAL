SQL> DECLARE
  2      CURSOR c1 IS
  3          SELECT employee_id, first_name, last_name, salary
  4          FROM employees;
  5  BEGIN
  6      FOR r IN c1 LOOP
  7          DBMS_OUTPUT.PUT_LINE(
  8              r.employee_id || ' ' ||
  9              r.first_name || ' ' ||
 10              r.last_name || ' ' ||
 11              r.salary);
 12      END LOOP;
 13  END;
 14  /

  output:

  100 Steven King 24000
101 Neena Kochhar 17000
102 Lex De Haan 17000
103 Alexander Hunold 9000
...

PL/SQL procedure successfully completed.