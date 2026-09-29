SQL> SET SERVEROUTPUT ON;

SQL> DECLARE
  2      ch CHAR(1);
  3  BEGIN
  4      ch := '&ch';
  5
  6      IF (ch BETWEEN 'A' AND 'Z') OR
  7         (ch BETWEEN 'a' AND 'z') THEN
  8          DBMS_OUTPUT.PUT_LINE(ch || ' is a Letter');
  9      ELSIF ch BETWEEN '0' AND '9' THEN
 10          DBMS_OUTPUT.PUT_LINE(ch || ' is a Digit');
 11      ELSE
 12          DBMS_OUTPUT.PUT_LINE(ch || ' is neither Letter nor Digit');
 13      END IF;
 14  END;
 15  /
Enter value for ch: A
old   4:     ch := '&ch';
new   4:     ch := 'A';

A is a Letter

PL/SQL procedure successfully completed.