DECLARE 
    S1 EMP21%ROWTYPE;
    S2 EMP21%ROWTYPE;
BEGIN 
    SELECT * INTO S1 FROM EMP21 WHERE ID = 1;
    SELECT * INTO S2 FROM EMP21 WHERE ID = 2;

    IF S1.SALARY > S2.SALARY THEN 
        DBMS_OUTPUT.PUT_LINE(S1.ID || ' ' || S1.SALARY);
    ELSE 
        DBMS_OUTPUT.PUT_LINE(S2.ID || ' ' || S2.SALARY);
    END IF;

END;

-- cHECK FOR EVEN OR ODD: MOD(A, B) = A % B
DECLARE 
    S1 EMP21%ROWTYPE;
    S2 EMP21%ROWTYPE;
BEGIN 
    SELECT * INTO S1 FROM EMP21 WHERE ID = 1;
    SELECT * INTO S2 FROM EMP21 WHERE ID = 2;

    IF MOD(S1.SALARY, 2) = 0 THEN 
        DBMS_OUTPUT.PUT_LINE(S1.ID || ' EVEN ' || S1.SALARY);
    ELSE 
        DBMS_OUTPUT.PUT_LINE(S2.ID || ' ODD ' || S2.SALARY);
    END IF;

END;

-- COMPARE THREE NUMBERS 
DECLARE 
    S1 EMP21%ROWTYPE;
    S2 EMP21%ROWTYPE;
    S3 EMP21%ROWTYPE;
BEGIN 
    SELECT * INTO S1 FROM EMP21 WHERE ID = 1;
    SELECT * INTO S2 FROM EMP21 WHERE ID = 2;
    SELECT * INTO S3 FROM EMP21 WHERE ID = 3;

    IF S1.SALARY > S2.SALARY AND S1.SALARY > S3.SALARY THEN 
        DBMS_OUTPUT.PUT_LINE(S1.ID || ' ' || S1.SALARY);
    ELSIF S2.SALARY > S1.SALARY AND S1.SALARY > S3.SALARY THEN
        DBMS_OUTPUT.PUT_LINE(S2.ID || ' ' || S2.SALARY);
    ELSE 
        DBMS_OUTPUT.PUT_LINE(S3.ID || ' ' || S3.SALARY);
    END IF;

END;

-- Assign Grade based on marks 
DECLARE
    MARKS NUMBER(20);
BEGIN 
    MARKS := 65;
    
    IF MARKS > 79 THEN 
        DBMS_OUTPUT.PUT_LINE('GRADE: A');
    ELSIF MARKS > 59 THEN 
        DBMS_OUTPUT.PUT_LINE('GRADE: B');
    ELSIF MARKS >= 40 THEN 
        DBMS_OUTPUT.PUT_LINE('GRADE: C');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('GRADE: F');
    END IF;
END;