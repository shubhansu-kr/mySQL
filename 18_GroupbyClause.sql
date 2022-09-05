-- It creates a data set that contains several set of records grouped 
-- together based on a condition 

-- syntax 

SELECT BRANCH, COUNT(T_ID)
FROM TEACHER
GROUP BY BRANCH;

