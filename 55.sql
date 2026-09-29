--Create Client Table

SQL> CREATE TABLE client_master
  2  (
  3      c_no NUMBER PRIMARY KEY,
  4      name VARCHAR2(30)
  5  );

Table created.

--Insert Record

SQL> INSERT INTO client_master
  2  VALUES (101,'Rahul');

1 row created.

SQL> COMMIT;

Commit complete.

--Create TEMP Table

SQL> CREATE TABLE temp
  2  (
  3      c_no NUMBER,
  4      name VARCHAR2(30),
  5      operation VARCHAR2(20),
  6      o_date DATE,
  7      uid VARCHAR2(30)
  8  );

Table created.

--Create Update Trigger

SQL> CREATE OR REPLACE TRIGGER client_update
  2  BEFORE UPDATE ON client_master
  3  FOR EACH ROW
  4  BEGIN
  5      INSERT INTO temp
  6      VALUES
  7      (:OLD.c_no,
  8       :OLD.name,
  9       'UPDATE',
 10       SYSDATE,
 11       USER);
 12  END;
 13  /

Trigger created.

--Update Client

SQL> UPDATE client_master
  2  SET name = 'Shrey'
  3  WHERE c_no = 101;

1 row updated.

SQL> COMMIT;

Commit complete.

--Check TEMP

SQL> SELECT * FROM temp;

      C_NO NAME       OPERATION  O_DATE    UID
---------- ---------- ---------- --------- ----------------
       101 Rahul      UPDATE     29-SEP-26 SYSTEM