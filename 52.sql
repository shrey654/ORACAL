--Create Trigger

SQL> CREATE OR REPLACE TRIGGER salary_check
  2  BEFORE INSERT OR UPDATE OF salary ON main_table
  3  FOR EACH ROW
  4  BEGIN
  5      IF :NEW.salary < 5000 THEN
  6          RAISE_APPLICATION_ERROR
  7          (-20001,'Salary must be 5000 or more');
  8      END IF;
  9  END;
 10  /

Trigger created.

-- INSERT

SQL> INSERT INTO main_table
  2  VALUES (3,'Amit',4000);

INSERT INTO main_table
*
ERROR at line 1:
ORA-20001: Salary must be 5000 or more
ORA-06512: at "SALARY_CHECK", line 4
ORA-04088: error during execution of trigger 'SALARY_CHECK'
Test UPDATE
SQL> UPDATE main_table
  2  SET salary = 3000
  3  WHERE id = 2;

UPDATE main_table
       *
ERROR at line 1:
ORA-20001: Salary must be 5000 or more
Valid Salary
SQL> UPDATE main_table
  2  SET salary = 7000
  3  WHERE id = 2;

1 row updated.