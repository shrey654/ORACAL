SQL> CREATE OR REPLACE PROCEDURE delete_dept
  2  (
  3      p_dept_id NUMBER
  4  )
  5  IS
  6  BEGIN
  7      DELETE FROM employees
  8      WHERE department_id = p_dept_id;
  9
 10      DBMS_OUTPUT.PUT_LINE(
 11          SQL%ROWCOUNT || ' records deleted');
 12  END;
 13  /

Procedure created.

output: 

  SQL> EXEC delete_dept(50);

3 records deleted

PL/SQL procedure successfully completed.