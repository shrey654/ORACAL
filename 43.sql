SQL> DECLARE
  2      v_id NUMBER := &id;
  3      v_count NUMBER;
  4  BEGIN
  5      SELECT COUNT(*)
  6      INTO v_count
  7      FROM employees
  8      WHERE employee_id = v_id;
  9
 10      IF v_count > 0 THEN
 11          DBMS_OUTPUT.PUT_LINE('Employee exists');
 12      ELSE
 13          DBMS_OUTPUT.PUT_LINE('Employee does not exist');
 14      END IF;
 15  END;
 16  /
Enter value for id: 100
old   2:     v_id NUMBER := &id;
new   2:     v_id NUMBER := 100;

Employee exists

PL/SQL procedure successfully completed.