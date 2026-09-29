--Create Audit Table

SQL> CREATE TABLE audit_log
  2  (
  3      employee_id NUMBER,
  4      employee_name VARCHAR2(50),
  5      action VARCHAR2(20),
  6      action_date DATE
  7  );

Table created.

--Create Trigger

SQL> CREATE OR REPLACE TRIGGER employee_audit
  2  AFTER INSERT ON employees
  3  FOR EACH ROW
  4  BEGIN
  5      INSERT INTO audit_log
  6      VALUES
  7      (:NEW.employee_id,
  8       :NEW.first_name || ' ' || :NEW.last_name,
  9       'INSERT',
 10       SYSDATE);
 11  END;
 12  /

Trigger created.

--Insert Employee

SQL> INSERT INTO employees
  2  (employee_id, first_name, last_name, email, hire_date, job_id, salary)
  3  VALUES
  4  (999,'Amit','Shah','ASHAH',SYSDATE,'IT_PROG',6000);

1 row created.

SQL> COMMIT;

Commit complete.

--Check Audit

SQL> SELECT * FROM audit_log;

EMPLOYEE_ID EMPLOYEE_NAME   ACTION     ACTION_DA
----------- --------------- ---------- ---------
        999 Amit Shah       INSERT     29-SEP-26