CREATE TABLE MOVIES
(
    TITLE VARCHAR(100) PRIMARY KEY,
    LANG VARCHAR (29) NOT NULL,
    ACTOR VARCHAR (20),
    ACTRESS VARCHAR (20),
    VILLAN VARCHAR (20),
    LOC VARCHAR (29),
    DIREC VARCHAR(20),
    TURN_OVER NUMBER (12)
);

INSERT INTO MOVIES
VALUES
    ('AA', 'HINDI', 'Q', 'Z', 'P', 'MUM', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('BB', 'PUNJABI', 'W', 'Z', 'U', 'PUN', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('CC', 'HINDI', 'E', 'X', 'U', 'UP', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('DD', 'ENGLISH', 'Q', 'X', 'I', 'LON', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('EE', 'TELGU', 'R', 'C', 'O', 'HYD', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('FF', 'ENGLISH', 'T', 'C', 'O', 'LON', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('GG', 'PUNJABI', 'Y', 'V', 'I', 'PUN', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('HH', 'TELGU', 'E', 'V', 'L', 'HYD', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('II', 'ENGLISH', 'R', 'B', 'L', 'MUM', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('JJ', 'MARATHI', 'Y', 'B', 'K', 'GUJ', 'J', 3400000);
INSERT INTO MOVIES
VALUES
    ('KK', 'HINDI', 'T', 'N', 'K', 'GUJ', 'J', 3400000);

-- qUERIES : 

-- wRITE A QUERY TO FIND THE NUMBER OF MOVIES IN THE TABLE;
SELECT COUNT(TITLE)
FROM MOVIES;

-- LIST OF ACTORS 
SELECT DISTINCT ACTOR
FROM MOVIES;

-- update director data 

UPDATE MOVIES 
SET DIREC = 'X'
WHERE LANG = 'ENGLISH';

UPDATE MOVIES 
SET DIREC = 'YOLO'
WHERE LANG = 'PUNJABI';

UPDATE MOVIES 
SET DIREC = 'KUMARI'
WHERE LANG = 'HINDI';

UPDATE MOVIES 
SET DIREC = 'PODE'
WHERE LANG = 'TELGU';

UPDATE MOVIES 
SET DIREC = 'PODE'
WHERE LOC = 'UP';

-- UPDATE VALUATION OF MOVIES

UPDATE MOVIES 
SET TURN_OVER = 4800000
WHERE ACTOR = 'R';

UPDATE MOVIES 
SET TURN_OVER = 5400000
WHERE VILLAN = 'P';

UPDATE MOVIES 
SET TURN_OVER = 8900000
WHERE VILLAN = 'L';

UPDATE MOVIES 
SET TURN_OVER = 12400000
WHERE ACTRESS = 'V';

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --