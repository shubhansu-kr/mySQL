-- Add Or modify column 

-- MODIFY: 
-- increase width 
-- null contraint alter 
-- Adding constraints 
-- Dropping the constraint



-- 1. MODIFY SIZE OF COLUMN
-- Syntax 
-- ALTER TABLE TABLEnAME MODIFY (COLUMNnAME NEWdATATYPE (NEWsIZE));

-- ALTER TABLE DEPT MODIFY
-- (
--     D_NAME VARCHAR(34)
-- );

-- 2. CHANGE NULL CONSTRAINT

-- SYNTAX: 
-- ALTER TABLE TABLEnAME MODIFY(COLUMNnAME DATATYPE(SIZE) NULL/NOT NULL)

-- ALTER TABLE TABLEnAME MODIFY
-- (
--     COLUMNnAME DATATYPE
--     (SIZE) NULL/NOT NULL
-- );

-- 3. ADD PRIMARY KEY 

-- SYNTAX 
-- ALTER TABLE TABLEnAME ADD 
--      PRIMARY KEY(COLUMNnAME);

-- ALTER TABLE TABLEnAME ADD
--      CONSTRAINT PK PRIMARY KEY(COLUMNnAME);

-- 4. dROP PRIMARY KEY 

-- SYNTAX 
-- ALTER TABLE TABLEnAME DROP PRIMARY KEY;

-- ALTER TABLE TABLEnAME DROP 
--      CONSTRAINT CONSTRAINTnAME ;

-- 5. DROP COLUMN NAME 
-- 
-- SYNTAX 
-- ALTER TABLE TABLEnAME DROP 
-- COLUMN COLUMNnAME;

