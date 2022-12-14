DECLARE
    STRING VARCHAR(27) := 'WOW';
    NUM NUMBER(27);
    S1 VARCHAR(27);
    S2 VARCHAR(27);
    FLAG NUMBER(1):= 1;
BEGIN
    NUM := LENGTH(STRING);
    -- dbms_output.put_line(NUM);
    
    -- SUBSTRING FUNCTION 
    -- SUBSTR(STRING, STARTING INDEX, LENGTH), 1 BASED INDEXING
    FOR COUNTER IN 1..NUM/2
        LOOP
            S1 := SUBSTR(STRING, COUNTER, 1);
            S2 := SUBSTR(STRING, NUM-COUNTER+1, 1);
            IF S1 != S2 THEN 
                FLAG:= 0;
            END IF;
        END LOOP;

    IF FLAG = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('PALINDROME');
    ELSE
        DBMS_OUTPUT.PUT_LINE('NOT PALINDROME');
    END IF;
END;