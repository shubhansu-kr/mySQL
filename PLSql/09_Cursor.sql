-- Cursor: Work area on server side which executes query and 
-- stores the data call active data site 

-- Cursor are of two types: 
-- implicit : Managed by the oracle engine
-- explicit : Managed by the user 

-- declare CURSOR
-- open CURSOR
-- read/write CURSOR
-- close CURSOR

-- %ISOPEN : RETURNS TRUE IF CURSOR IS OPEN 
-- %FOUND : RETURNS TRUE IF RECORD WAS FETCHED SECESSFULLY
-- %NOTFOUND : RETURNS TRUE IF RECORD WAS NOT FETCHED SUCCESSFULLY
-- %ROWCOUNT : RETURNS THE NUMBER OF RECORDS PROCESSED BY THE CURSOR

-- WHILE USING IMPLICIT CURSOR, THE NAME OF CURSOR IS SQL 

-- SQL%ISOPEN: aLWAYS RETURN FALSE BECAUSE ENGINE ALWAYS CLOSES THE CURSOR
-- SQL%FOUND
-- SQL%NOTFOUND
-- SQL%ROWCOUNT

-- EXPLICIT 
-- DECLARE THE CURSOR IN THE DECLARE PART OF THE PLSQL
-- OPEN THE CURSOR
-- USE LOOP FETCH DATA PROCESS DATA
-- END LOOP AND CLOSE THE CURSOR

-- EXIT CONDITION : IF C%NOTFOUND BREAK;

-- WAP TO CHECK IF THE DATA IS PRESENT IN THE TABLE OR NOT 

-- CREATE TABLE T21 (
--     SNAME VARCHAR(24)
-- );

-- FOUND || NOT FOUND
DECLARE
BEGIN
    UPDATE T21
    SET SNAME = 'ABSENT'
    WHERE 
    SNAME = 'AVESH';

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('DATA FOUND');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
    END IF;
END;

-- ROW COUNT
DECLARE
BEGIN
    UPDATE T21
    SET SNAME = 'VISHWA'
    WHERE 
    SNAME = 'VI';

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('DATA FOUND');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
    END IF;

    DBMS_OUTPUT.PUT_LINE('NUMBER OF ROWS AFFECTED: ' ||  SQL%ROWCOUNT);
    
END;


-- IS OPEN 
DECLARE
BEGIN
    UPDATE T21
    SET SNAME = 'ABSENT'
    WHERE 
    SNAME = 'AVESH';

    IF SQL%ISOPEN THEN 
        DBMS_OUTPUT.PUT_LINE('IS OPEN');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('IS NOT OPEN');
    END IF;
END;
