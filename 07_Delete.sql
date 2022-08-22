CREATE TABLE student (
    id Number(10), 
    st_name VARCHAR(26), 
    city VARCHAR(26)
);

-- INSERT INTO student VALUES (&id, '&st_name', '&city');

-- UPDATE ALL THE ROWS 


-- DELETE FROM TABLE 


-- delete all the rows 
-- Table exits but records are deleted only 
DELETE FROM student;
SELECT * FROM student;

-- delete specific rows : let's say delete roll 1
DELETE FROM student 
WHERE 
rollNo = 1 ;

SELECT * FROM student;

DELETE FROM student 
WHERE 
REGD_NO > 5; 

SELECT * FROM student;

-- Delete the whole table 
DROP TABLE student;

SELECT * FROM student;
-- Table/view doesn't exist 


