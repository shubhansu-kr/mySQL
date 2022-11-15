-- SYNTAX TO DECLARE A CURSOR: 

-- CURSOR CURSOR_NAME IS SELECT STATEMENT;
-- EG : CURSOR C IS SELECT * FROM T21;

-- SYNTAX TO OPEN A CURSOR 
-- OPEN CURSOR_NAME;

-- USE LOOP TO PROCESS 
-- LOOP 
--     SEQUENCE OF COMMANDS 
--     EXIT WHEN CURSOR_NAME%NOTFOUND
-- END LOOP;

-- FETCH DATA FROM CURSOR 
-- SYNTAX: FETCH CURSOR_NAME INTO VARIABLES;
-- EG: FETCH C INTO MY ROLLNO, SNAME;

-- LOOP: 
-- LOOP
--      FETCH C INTO MY_VARIABLE;
--      EXIT WHEN C%NOTFOUND;
--      PROCESS DATA;
-- END LOOP;

-- CLOSE CURSOR_NAME;

-- WAP TO DISPLAY THE NAMES OF ONLY THOSE STUDENTS WHO BELONG TO CSE
DECLARE 
    SNAME STD21.SNAME%TYPE;
    SROLL STD21.SROLL%TYPE;
    BNAME STD21.BNAME%TYPE; 
    
    CURSOR NEW_CURSOR IS SELECT * FROM STD21;
BEGIN

    OPEN NEW_CURSOR;
    LOOP 
        FETCH NEW_CURSOR INTO SNAME, SROLL, BNAME;
        EXIT WHEN NEW_CURSOR%NOTFOUND;
        IF BNAME = 'CSE' THEN 
            DBMS_OUTPUT.PUT_LINE(SNAME || SROLL || BNAME);
        END IF;
    END LOOP;
    CLOSE NEW_CURSOR;
END;