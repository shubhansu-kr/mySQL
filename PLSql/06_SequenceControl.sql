DECLARE
    i NUMBER(10) := 21;
    j NUMBER(10) := 33;
BEGIN
    -- GOTO LABEL-NAME;
    -- <<LABEL-NAME>>;
    DBMS_OUTPUT.PUT_LINE('A');
    DBMS_OUTPUT.PUT_LINE('B');
    GOTO B;
    DBMS_OUTPUT.PUT_LINE('C');
    <<B>>
    DBMS_OUTPUT.PUT_LINE('D');
    DBMS_OUTPUT.PUT_LINE('E');

END;


DECLARE
    i NUMBER(10) := 21;
    j NUMBER(10) := 33;
BEGIN
    IF i > j THEN 
        GOTO A;
    END IF;
    DBMS_OUTPUT.PUT_LINE('J > I');
    GOTO C;
    <<A>>
    DBMS_OUTPUT.PUT_LINE('I > J');
    <<C>>
    DBMS_OUTPUT.PUT_LINE('EXIT');
END;

DECLARE
    i NUMBER(10) := 0;
    j NUMBER(10) := 33;
BEGIN
    <<A>>
    DBMS_OUTPUT.PUT_LINE('hELL');
    IF i < 5 THEN 
        i := i+1;
        GOTO A;
    END IF;
END;