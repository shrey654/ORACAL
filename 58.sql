--Create Trigger

SQL> CREATE OR REPLACE TRIGGER check_duplicate_email
  2  BEFORE INSERT ON employees
  3  FOR EACH ROW
  4  DECLARE
  5      v_count NUMBER;
  6  BEGIN
  7      SELECT COUNT(*)
  8      INTO v_count
  9      FROM employees
 10      WHERE email = :NEW.email;
 11
 12      IF v_count > 0 THEN
 13          RAISE_APPLICATION_ERROR
 14          (-20004,'Email already exists');
 15      END IF;
 16  END;
 17  /

Trigger created.

--perform the following INSERT statement:

SQL> INSERT INTO employees
  2  (employee_id, first_name, last_name, email, hire_date, job_id, salary)
  3  VALUES
  4  (1000,'Raj','Patel','SKING',SYSDATE,'IT_PROG',6000);

ERROR at line 1:
ORA-20004: Email already exists