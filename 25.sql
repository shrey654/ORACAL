SQL> DECLARE
  2      rollno NUMBER;
  3      name VARCHAR2(30);
  4      mark1 NUMBER;
  5      mark2 NUMBER;
  6      mark3 NUMBER;
  7      total NUMBER;
  8      percentage NUMBER;
  9  BEGIN
 10      rollno := &rollno;
 11      name := '&name';
 12      mark1 := &mark1;
 13      mark2 := &mark2;
 14      mark3 := &mark3;
 15
 16      total := mark1 + mark2 + mark3;
 17      percentage := total / 3;
 18
 19      DBMS_OUTPUT.PUT_LINE('Roll No = ' || rollno);
 20      DBMS_OUTPUT.PUT_LINE('Name = ' || name);
 21      DBMS_OUTPUT.PUT_LINE('Total = ' || total);
 22      DBMS_OUTPUT.PUT_LINE('Percentage = ' || percentage);
 23
 24      IF percentage >= 70 THEN
 25          DBMS_OUTPUT.PUT_LINE('Class = Distinction');
 26      ELSIF percentage >= 60 THEN
 27          DBMS_OUTPUT.PUT_LINE('Class = First Class');
 28      ELSIF percentage >= 50 THEN
 29          DBMS_OUTPUT.PUT_LINE('Class = Second Class');
 30      ELSIF percentage >= 40 THEN
 31          DBMS_OUTPUT.PUT_LINE('Class = Pass Class');
 32      ELSE
 33          DBMS_OUTPUT.PUT_LINE('Class = Fail');
 34      END IF;
 35  END;
 36  /
Enter value for rollno: 101
Enter value for name: Shrey
Enter value for mark1: 80
Enter value for mark2: 75
Enter value for mark3: 85

Roll No = 101
Name = Shrey
Total = 240
Percentage = 80
Class = Distinction

PL/SQL procedure successfully completed.