--Package Specification

SQL> CREATE OR REPLACE PACKAGE number_package
  2  IS
  3      PROCEDURE factorial(n NUMBER);
  4      FUNCTION is_prime(n NUMBER) RETURN VARCHAR2;
  5  END number_package;
  6  /

Package created.

--Package Body

SQL> CREATE OR REPLACE PACKAGE BODY number_package
  2  IS
  3      PROCEDURE factorial(n NUMBER)
  4      IS
  5          f NUMBER := 1;
  6      BEGIN
  7          FOR i IN 1..n LOOP
  8              f := f * i;
  9          END LOOP;
 10
 11          DBMS_OUTPUT.PUT_LINE('Factorial = ' || f);
 12      END factorial;
 13
 14      FUNCTION is_prime(n NUMBER)
 15      RETURN VARCHAR2
 16      IS
 17      BEGIN
 18          IF n < 2 THEN
 19              RETURN 'Not Prime';
 20          END IF;
 21
 22          FOR i IN 2..n-1 LOOP
 23              IF MOD(n,i) = 0 THEN
 24                  RETURN 'Not Prime';
 25              END IF;
 26          END LOOP;
 27
 28          RETURN 'Prime';
 29      END is_prime;
 30  END number_package;
 31  /

Package body created.

--Call Procedure

SQL> EXEC number_package.factorial(5);

Factorial = 120

PL/SQL procedure successfully completed.

--Call Function

SQL> SELECT number_package.is_prime(7) FROM dual;

NUMBER_PACKAGE.IS_PRIME(7)
--------------------------
Prime