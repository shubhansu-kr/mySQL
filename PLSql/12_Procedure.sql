-- PROCEDURES : STORED AND USER DEFINED 

DECLARE 
    NUM1 NUMBER(10);
    NUM2 NUMBER(10);
    MUL NUMBER (29);

    -- SYNTAX: 
    -- PROCEDURE FUNCTION_NAME (ARGUMENT_NAME IN/OUT DATA_TYPE....) 
    -- IN FOR INPUT AND OUT FOR RETURNING
    PROCEDURE MULTIPLICATION (NUM1 IN NUMBER, UM2 IN NUMBER, MUL OUT NUMBER) IS 
    BEGIN 
        MUL := NUM1 * NUM2;
    END MULTIPLICATION;

BEGIN 
    NUM1:= 23;
    NUM2:= 44;

    MULTIPLICATION(NUM1, NUM2, MUL);

    DBMS_OUTPUT.PUT_LINE(MUL);

END;


-- NORMAL PROCEDURE IS WRITTEN INSIDE ANY BLOCK 
-- STORED PROCEDURE IS NOT WRITTEN INSIDE ANY BLOCK 

-- SYNTAX: 
-- CREATE OR REPLACE PROCEDURE PROCEDURE_NAME(ARGUMENTS ) IS 
--      VARIABLE AND CONSTANT DECLARATIONS;
-- BEGIN 
--      PL/SQL STATEMENTS;
-- EXCEPTION 
--      EXCEPTION HANDLING STATEMENTS;
-- END;

CREATE OR REPLACE PROCEDURE SUM21(NUM1 IN NUMBER, NUM2 IN NUMBER, SUM1 OUT NUMBER) IS
BEGIN 
    SUM1 := NUM1 + NUM2;
END;

DECLARE 
    NUM1 NUMBER (10);
    NUM2 NUMBER (10);
    SUM1 NUMBER (10);
BEGIN 
    NUM1 := 33;
    NUM2 := 9;
    SUM21(NUM1, NUM2, SUM1);
    DBMS_OUTPUT.PUT_LINE(SUM1);
END;