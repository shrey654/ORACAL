SQL> DECLARE
  2      CURSOR c1 IS
  3          SELECT first_name, salary
  4          FROM employees;
  5  BEGIN
  6      FOR r IN c1 LOOP
  7          DBMS_OUTPUT.PUT_LINE(
  8              'Name: ' || r.first_name ||
  9              ' Salary: ' || r.salary);
 10      END LOOP;
 11  END;
 12  /

 output:

 Name: Steven Salary: 24000
Name: Neena Salary: 17000
Name: Lex Salary: 17000
Name: Alexander Salary: 9000
Name: Bruce Salary: 6000
...

PL/SQL procedure successfully completed.