SQL> DECLARE
  2      CURSOR c1 IS
  3          SELECT employee_id, first_name, salary
  4          FROM
  5          (
  6              SELECT employee_id, first_name, salary
  7              FROM employees
  8              ORDER BY salary DESC
  9          )
 10          WHERE ROWNUM <= 5;
 11  BEGIN
 12      FOR r IN c1 LOOP
 13          DBMS_OUTPUT.PUT_LINE(
 14              r.employee_id || ' ' ||
 15              r.first_name || ' ' ||
 16              r.salary);
 17      END LOOP;
 18  END;
 19  /

 output:

 100 Steven 24000
101 Neena 17000
102 Lex 17000
103 Alexander 9000
104 Bruce 6000

PL/SQL procedure successfully completed.