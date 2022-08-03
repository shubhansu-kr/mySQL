-- Create Table 

-- CREATE TABLE t_name (c_name);
CREATE TABLE Friends (
    Roll INT,
    st_Name VARCHAR
);


-- Describe table 

-- DESC t_name
-- DESC Friends;

-- Select 

-- SELECT c1, c2, c3 from t_name 
SELECT (st_name) from Friends;

-- SELECT * from t_name
SELECT * FROM Friends;

-- Select with condition 
SELECT * FROM Friends where Roll = 1;

-- Insert data 

-- INSERT into t_name values (1, 'Ajay');
INSERT into Friends VALUES (1, 'Ajay') ;

-- INSERT into t_name (c1, c2, c3) values (v1, v2, v3) ;
INSERT into Friends (st_Name) VALUES ('Raj') ;

