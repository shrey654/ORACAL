SQL> DECLARE
  2      v_id employees.employee_id%TYPE := 45;
  3      v_fname employees.first_name%TYPE;
  4      v_lname employees.last_name%TYPE;
  5      v_email employees.email%TYPE;
  6      v_salary employees.salary%TYPE;
  7      v_dept employees.department_id%TYPE;
  8  BEGIN
  9      SELECT first_name, last_name, email, salary, department_id
 10      INTO v_fname, v_lname, v_email, v_salary, v_dept
 11      FROM employees
 12      WHERE employee_id = v_id;
 13
 14      DBMS_OUTPUT.PUT_LINE('Employee ID : ' || v_id);
 15      DBMS_OUTPUT.PUT_LINE('First Name  : ' || v_fname);
 16      DBMS_OUTPUT.PUT_LINE('Last Name   : ' || v_lname);
 17      DBMS_OUTPUT.PUT_LINE('Email       : ' || v_email);
 18      DBMS_OUTPUT.PUT_LINE('Salary      : ' || v_salary);
 19      DBMS_OUTPUT.PUT_LINE('Department  : ' || v_dept);
 20  END;
 21  /

 output:
 Employee ID : 45
First Name  : Steven
Last Name   : King
Email       : SKING
Salary      : 24000
Department  : 90

PL/SQL procedure successfully completed.