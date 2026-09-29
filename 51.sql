SQL> SET SERVEROUTPUT ON;

--Create Main Table

SQL> CREATE TABLE main_table
  2  (
  3      id NUMBER PRIMARY KEY,
  4      name VARCHAR2(30),
  5      salary NUMBER
  6  );

Table created.

--Insert Record

SQL> INSERT INTO main_table VALUES (1,'Shrey',5000);

1 row created.

SQL> INSERT INTO main_table VALUES (2,'Rahul',6000);

1 row created.

SQL> COMMIT;

Commit complete.

--Create Backup Table

SQL> CREATE TABLE backup_table
  2  (
  3      id NUMBER,
  4      name VARCHAR2(30),
  5      salary NUMBER,
  6      delete_date DATE
  7  );

Table created.

--Create Trigger

SQL> CREATE OR REPLACE TRIGGER backup_delete
  2  BEFORE DELETE ON main_table
  3  FOR EACH ROW
  4  BEGIN
  5      INSERT INTO backup_table
  6      VALUES
  7      (:OLD.id, :OLD.name, :OLD.salary, SYSDATE);
  8  END;
  9  /

Trigger created.

--Delete Record

SQL> DELETE FROM main_table WHERE id = 1;

1 row deleted.

SQL> COMMIT;

Commit complete.

--Check Backup Table

SQL> SELECT * FROM backup_table;

        ID NAME                               SALARY DELETE_DA
---------- ------------------------------ ---------- ---------
         1 Shrey                               5000 29-SEP-26