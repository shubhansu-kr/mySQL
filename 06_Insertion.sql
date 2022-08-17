INSERT INTO student
VALUES
    (21, 'Avinash');


-- To insert values during runtime 
-- INSERT INTO student
-- VALUES
    -- ( &RollNo, '&st_Name');

-- Update Command 
-- It is used to update already existing data 
-- We can either update data of all the rows or specific rows(selected row)

-- Syntax
/* 
    UPDATE TABLE_NAME
    SET 
    COLUMN_NAME1 = VALUE1,....
    COLUMN_NAMEN = VALUEN;
*/


-- Change name of all the rows 
UPDATE student 
SET
st_name = 'Updated Value';

-- Insert few records to play along 
INSERT INTO student
VALUES
    (22, 'Avinash');
INSERT INTO student
VALUES
    (23, 'Avinash');
INSERT INTO student
VALUES
    (24, 'Avinash');
INSERT INTO student
VALUES
    (25, 'Avinash');
INSERT INTO student
VALUES
    (26, 'Avinash');


UPDATE student
SET 
st_name = 'Avesh'
WHERE 
RollNo = 22;

