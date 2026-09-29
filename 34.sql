SQL> DECLARE
  2      v_id NUMBER := &id;
  3      v_count NUMBER;
  4  BEGIN
  5      SELECT COUNT(*)
  6      INTO v_count
  7      FROM employees
  8      WHERE employee_id = v_id;
  9
 10      IF v_count = 0 THEN
 11          INSERT INTO employees
 12          (employee_id, first_name, last_name, email, hire_date, job_id, salary)
 13          VALUES
 14          (v_id, '&fname', '&lname', '&email', SYSDATE, '&jobid', &salary);
 15
 16          DBMS_OUTPUT.PUT_LINE('Employee inserted successfully');
 17      ELSE
 18          DBMS_OUTPUT.PUT_LINE('Employee already exists');
 19      END IF;
 20  END;
 21  /
 output:

 Enter value for id: 999
Enter value for fname: Rahul
Enter value for lname: Patel
Enter value for email: RPATEL
Enter value for jobid: IT_PROG
Enter value for salary: 5000

Employee inserted successfully

PL/SQL procedure successfully completed.