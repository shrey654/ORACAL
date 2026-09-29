--Procedure

SQL> CREATE OR REPLACE PROCEDURE count_emp
  2  (
  3      p_dept_id NUMBER
  4  )
  5  IS
  6      v_count NUMBER;
  7  BEGIN
  8      SELECT COUNT(*)
  9      INTO v_count
 10      FROM employees
 11      WHERE department_id = p_dept_id;
 12
 13      DBMS_OUTPUT.PUT_LINE(
 14          'Number of employees = ' || v_count);
 15  END;
 16  /

Procedure created.

--Call

SQL> EXEC count_emp(90);

Number of employees = 3

PL/SQL procedure successfully completed.