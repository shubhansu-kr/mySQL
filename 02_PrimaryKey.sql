-- PRIMARY KEY is a constraint applied on a column to restrict 
-- any duplicate data entry

-- Primary key cannot be null 



CREATE TABLE Student
(
    RollNo NUMERIC PRIMARY KEY,
    st_Name VARCHAR(26)
);

INSERT INTO Student
VALUES
    (1, 'Harsh Vidit');

-- Contraints violated : Duplicate Roll Entry
INSERT INTO Student
VALUES
    (1, 'Hridhanu Bose');

-- Constraint violated: Primary key cannot be null 
INSERT INTO Student
    (st_Name)
VALUES
    ('Hruthik');

SELECT *
FROM Student;

SELECT *
FROM Student
WHERE 
RollNo = 4 AND st_Name = 'Harsh Vidit';

-- Show all the datails of the database object created
SELECT * from TAB; 