-- iNCREMENT SIMPLE COUNTER IN LOOP 

DECLARE
    i NUMBER(10) := 0;
BEGIN
    LOOP
        dbms_output.put_line(i);
        i:=i+1; 
        EXIT WHEN i > 5;
    END LOOP;

END;

-- whILE LOOP

DECLARE
    i NUMBER(10) := 0;
BEGIN
    WHILE i < 5 LOOP
        dbms_output.put_line(i);
        i:=i+1; 
    END LOOP;

END;


-- FOR LOOP
DECLARE
    i NUMBER(10) := 0;
BEGIN
    FOR COUNTER IN 0..9
    LOOP 
        dbms_output.put_line(COUNTER);
    END LOOP;
END;

