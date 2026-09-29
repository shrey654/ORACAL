SQL> CREATE OR REPLACE TRIGGER office_hours
  2  BEFORE INSERT OR UPDATE OR DELETE ON main_table
  3  BEGIN
  4      IF TO_CHAR(SYSDATE,'DY','NLS_DATE_LANGUAGE=ENGLISH') = 'SUN'
  5         OR TO_NUMBER(TO_CHAR(SYSDATE,'HH24')) >= 19 THEN
  6
  7          RAISE_APPLICATION_ERROR
  8          (-20002,
  9           'Transaction not allowed after office hours or on Sunday');
 10      END IF;
 11  END;
 12  /

Trigger created.

--Output

If the transaction is attempted after 7 PM:

SQL> INSERT INTO main_table
  2  VALUES (4,'Jay',6000);

ERROR at line 1:
ORA-20002: Transaction not allowed after office hours or on Sunday

During allowed office hours:

SQL> INSERT INTO main_table
  2  VALUES (4,'Jay',6000);

1 row created.