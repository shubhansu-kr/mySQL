-- DML : Insert delete update select 
-- DDL : create alter drop create view drop view rename
-- DCL : grant privelages , revoke 

-- Create table
-- syntax: 
-- create table tableName (attr dataType constraint)
CREATE TABLE STUDENT (
    S_ID NUMBER(10), 
    S_NAME VARCHAR(26)
);

-- APPLY CONSTRAINT 

-- 1. PRIMARY KEY 
-- SYNTAX: COLUMN-NAME DATATYPE(SIZE) PRIMARY KEY 

-- 2. UNIQUE KEY 
-- SYNTAX: COLUMN-NAME DATATYPE(SIZE) UNIQUE 

-- 3. NOT NULL 
-- SYNTAX: COLUMN-NAME DATATYPE(SIZE) NOT NULL 

-- 4. FOREIGN KEY 
-- SYNTAX: COLUMN-NAME DATATYPE(SIZE) REFRENCES MASTER-TABLE-NAME(COL-NAME)

-- 5. CHECK CONSTRAINT 
-- SYNTAX: COLUMN-NAME DATATYPE(SIZE) CHECK (BOOLEAN EXPRESSION)

CREATE TABLE STUDENT (
    S_ID NUMBER(10) PRIMARY KEY, 
    S_NAME VARCHAR(25) NOT NULL, 
    ROLL NUMBER(2) UNIQUE, 
    AGE NUMBER(3) CHECK (AGE >= 18), 
    DEPT_id NUMBER(3) REFERENCES DEPT(DEPT_ID)
);

-- ALTER TABLE 

-- ADD NEW COLUMN 
-- SYNTAX: ALTER TABLE TABLEnAME ADD (COLnAME DATATYPE(SIZE), ...);

ALTER TABLE STUDENT ADD  (COUNTRY VARCHAR(34));

-- mODIFY EXISTING COLUMN 
-- SYNTAX: ALTER TABLE TABLEnAME MODIFY (COLnAME DATATYPE(SIZE), ...);
ALTER TABLE STUDENT MODIFY (COUNTRY VARCHAR(10));

-- aDDING CONSTRAINT 
ALTER TABLE STUDENT ADD PRIMARY KEY (S_ID);

-- CHANGE NOT NULL TO NULL 
ALTER TABLE STUDENT MODIFY (S_NAME VARCHAR(24) NULL);

-- ADD OTHER CONSTRAINTS 
ALTER TABLE STUDENT ADD UNIQUE (S_NAME);

-- DROPPING THE CONSTRAINT 

-- PRIMARY KEY
ALTER TABLE STUDENT DROP CONSTRAINT PRIMARY KEY;

-- OTHER
ALTER TABLE STUDENT DROP CONSTRAINT S_NAME;

-- DROP COLUMN 
ALTER TABLE STUDENT DROP COLUMN COUNTRY;

-- DROP TABLE 
DROP TABLE STUDENT;

-- DML: DATA MANIPULATION LANG 
INSERT INTO STUDENT (COLLIST) VALUES ('NAME');

UPDATE STUDENT 
SET 
COLNAME = 'DATA';

UPDATE STUDENT 
SET 
COLNAME = 'DATA'
WHERE ROWID = 'THIS';

-- DELETE ALL ROWS 
DELETE FROM STUDENT;

-- DELETE SPECIFIC ROW 
DELETE FROM STUDENT WHERE ROWID = 'THIS';

-- SELECT COMMAND 
-- SELECT COLlIST FROM TABLEnAME;

-- SELECT DISTINCT COLLIST FROM TABLEnAME ;

-- DEFALUT ASCENDING ORDER 
SELECT * FROM TABLEnAME ORDER BY COL ;  

-- DESC FOR DESCENDING ORDER, ASC FOR ASCENDING ORDER 

-- ALIAS 
SELECT COL_LIST ALIAS_NAME FROM STUDENT;

SELECT COL_LIST 'ALIAS_NAME' FROM STUDENT;

SELECT COL_LIST AS 'ALIAS_NAME' FROM STUDENT;

-- BETWEEN 
SELECT * FROM STUDENT 
WHERE ROLL BETWEEN LOWERbOUND AND UPPERBOUND ;

SELECT * FROM STUDENT 
WHERE 
NAME LIKE 'R%';

-- SELECT STATEMENT1 UNION SELECT STATEMENT2;
-- SELECT STATEMENT1 INTERSECTION SELECT STATEMENT2;
-- SELECT STATEMENT1 MINUS SELECT STATEMENT2;

-- DUAL IS THE DEFAULT TABLE USED FOR GENRAL COMPUTATION 
SELECT 9+2 FROM DUAL;

-- AGGREGATE FUNCTION 
-- AVG, MIN, MAX, SUM, COUNT

SELECT AVG(SALARY) FROM STUDENT 
GROUP BY CITY ;

SELECT AVG(SALARY) FROM STUDENT 
GROUP BY CITY 
HAVING AVG(SALARY) > 32323;

-- DCL 
GRANT DELETE, UPDATE, SELECT 
ON OBJECT_NAME
TO USER_NAME 
WITH GRANT PRIVILEGES;