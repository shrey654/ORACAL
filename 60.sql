--Package Specification

SQL> CREATE OR REPLACE PACKAGE salary_package
  2  IS
  3      PROCEDURE increase_salary
  4      (
  5          p_id NUMBER,
  6          p_amount NUMBER
  7      );
  8
  9      PROCEDURE decrease_salary
 10      (
 11          p_id NUMBER,
 12          p_amount NUMBER
 13      );
 14
 15      PROCEDURE salary_details
 16      (
 17          p_id NUMBER
 18      );
 19  END salary_package;
 20  /

Package created.

--Package Body

SQL> CREATE OR REPLACE PACKAGE BODY salary_package
  2  IS
  3
  4      PROCEDURE increase_salary
  5      (
  6          p_id NUMBER,
  7          p_amount NUMBER
  8      )
  9      IS
 10      BEGIN
 11          UPDATE employees
 12          SET salary = salary + p_amount
 13          WHERE employee_id = p_id;
 14
 15          DBMS_OUTPUT.PUT_LINE('Salary increased');
 16      END increase_salary;
 17
 18
 19      PROCEDURE decrease_salary
 20      (
 21          p_id NUMBER,
 22          p_amount NUMBER
 23      )
 24      IS
 25      BEGIN
 26          UPDATE employees
 27          SET salary = salary - p_amount
 28          WHERE employee_id = p_id;
 29
 30          DBMS_OUTPUT.PUT_LINE('Salary decreased');
 31      END decrease_salary;
 32
 33
 34      PROCEDURE salary_details
 35      (
 36          p_id NUMBER
 37      )
 38      IS
 39          v_name VARCHAR2(50);
 40          v_salary NUMBER;
 41      BEGIN
 42          SELECT first_name, salary
 43          INTO v_name, v_salary
 44          FROM employees
 45          WHERE employee_id = p_id;
 46
 47          DBMS_OUTPUT.PUT_LINE('Employee = ' || v_name);
 48          DBMS_OUTPUT.PUT_LINE('Salary = ' || v_salary);
 49      END salary_details;
 50
 51  END salary_package;
 52  /

Package body created.

--Increase Salary

SQL> EXEC salary_package.increase_salary(100,1000);

Salary increased

PL/SQL procedure successfully completed.

--Decrease Salary

SQL> EXEC salary_package.decrease_salary(100,500);

Salary decreased

PL/SQL procedure successfully completed.

--Fetch Salary Details

SQL> EXEC salary_package.salary_details(100);

Employee = Steven
Salary = 24500

PL/SQL procedure successfully completed.