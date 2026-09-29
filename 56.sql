--Create Trigger

SQL> CREATE OR REPLACE TRIGGER prevent_salary_update
  2  BEFORE UPDATE OF salary ON employees
  3  FOR EACH ROW
  4  BEGIN
  5      IF TO_NUMBER(TO_CHAR(SYSDATE,'HH24')) BETWEEN 10 AND 11 THEN
  6          RAISE_APPLICATION_ERROR
  7          (-20003,
  8           'Salary cannot be updated during this time');
  9      END IF;
 10  END;
 11  /

Trigger created.

SQL> UPDATE employees
  2  SET salary = 8000
  3  WHERE employee_id = 100;

ERROR at line 1:
ORA-20003: Salary cannot be updated during this time

Outside those hours:

SQL> UPDATE employees
  2  SET salary = 8000
  3  WHERE employee_id = 100;

1 row updated.