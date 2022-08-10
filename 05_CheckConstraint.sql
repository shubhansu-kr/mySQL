CREATE TABLE Players (
    RegNo NUMERIC(16) PRIMARY KEY,
    pName VARCHAR(26) NOT NULL,
    Age NUMERIC(3) CHECK (Age < 19)
);

-- Check is used to apply contraint for every entity. 
-- Syntax : Column Name datatype CHECK (Condition(TRUE));

CREATE TABLE Players (
    RegNo NUMERIC(16) PRIMARY KEY,
    pName VARCHAR(26) NOT NULL,
    Age NUMERIC(3) CHECK (Age <= 30 AND Age >= 20)
);
