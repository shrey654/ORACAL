--Create History Table

SQL> CREATE TABLE salary_history
  2  (
  3      employee_id NUMBER,
  4      old_salary NUMBER,
  5      new_salary NUMBER,
  6      change_date DATE
  7  );

Table created.

--Create Trigger

SQL> CREATE OR REPLACE TRIGGER salary_history_trigger
  2  AFTER UPDATE OF salary ON employees
  3  FOR EACH ROW
  4  BEGIN
  5      INSERT INTO salary_history
  6      VALUES
  7      (:OLD.employee_id,
  8       :OLD.salary,
  9       :NEW.salary,
 10       SYSDATE);
 11  END;
 12  /

Trigger created.

--Update Salary

SQL> UPDATE employees
  2  SET salary = salary + 1000
  3  WHERE employee_id = 100;

1 row updated.

SQL> COMMIT;

Commit complete.

--Check History

SQL> SELECT * FROM salary_history;

EMPLOYEE_ID OLD_SALARY NEW_SALARY CHANGE_DA
----------- ---------- ---------- ---------
        100       5000       6000 29-SEP-26