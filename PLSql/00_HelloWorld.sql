-- http://172.18.20.17:8080/apex

-- Print hello world
BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO pl/sql');
END;

-- Add two number 
DECLARE 
    A NUMBER(10) := 21;
    B NUMBER(10) := 7;
    S NUMBER(10);
BEGIN 
    S := A + B;
    DBMS_OUTPUT.PUT_LINE(S);
END;

-- Take user input 
DECLARE 
    A NUMBER(10);
    B NUMBER(10);
    S NUMBER(10);
BEGIN 
    A := &NUM;
    B := &NUM;
    S := A + B;
    DBMS_OUTPUT.PUT_LINE(S);
END;
    
