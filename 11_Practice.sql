-- Create a table using the attribute constraints 
-- primary key
-- not null
-- unique
-- check


create TABLE party
(
    pId NUMERIC(10) PRIMARY KEY,
    mName VARCHAR(26) NOT NULL,
    mobileNumber NUMERIC(10) UNIQUE,
    age NUMERIC CHECK (age > 18)
);

-- Enter values in table and check for constraints 

INSERT INTO party
VALUES
    (1, 'avi', 6201324232, 21);

-- Try inserting duplicate primary key: Error 
INSERT INTO party
VALUES
    (1, 'raman', 6201324562, 20);

-- Try to insert null val in name: error 
INSERT INTO party
    (pId, mobileNumber, age)
VALUES
    (2, 6201324232, 21);

-- Try to create duplicate phone number 
INSERT INTO party
VALUES
    (2, 'avesh', 6201324232, 19);

-- Try to add null number : No error
INSERT INTO party
    (pId, name, age)
VALUES
    (2, 'avesh', 19);

-- Age less than 18
INSERT INTO party
VALUES
    (3, 'ani', 6201324232, 14);


SELECT *
FROM party; 