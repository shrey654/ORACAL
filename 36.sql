SQL> DECLARE
  2      CURSOR c1 IS
  3          SELECT id, fname, lname FROM student;
  4      v_id student.id%TYPE;
  5      v_fname student.fname%TYPE;
  6      v_lname student.lname%TYPE;
  7  BEGIN
  8      OPEN c1;
  9
 10      IF c1%ISOPEN THEN
 11          DBMS_OUTPUT.PUT_LINE('Cursor is Open');
 12      END IF;
 13
 14      LOOP
 15          FETCH c1 INTO v_id, v_fname, v_lname;
 16          EXIT WHEN c1%NOTFOUND;
 17
 18          DBMS_OUTPUT.PUT_LINE(
 19              v_id || ' ' || v_fname || ' ' || v_lname);
 20      END LOOP;
 21
 22      IF c1%NOTFOUND THEN
 23          DBMS_OUTPUT.PUT_LINE('No more records');
 24      END IF;
 25
 26      CLOSE c1;
 27
 28      IF NOT c1%ISOPEN THEN
 29          DBMS_OUTPUT.PUT_LINE('Cursor is Closed');
 30      END IF;
 31  END;
 32  /

 Output
 
Cursor is Open
1 Shrey Makwana
2 Rahul Patel
3 Amit Shah
No more records
Cursor is Closed

PL/SQL procedure successfully completed.