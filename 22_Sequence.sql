-- We can genrate sequence automatically using sql compiler 

-- Syntax: 
-- CREATE SEQUENCE S_NAME 
-- INCREMENT BY 1 
-- START WITH 1 
-- MAX VALUE 100;

CREATE SEQUENCE SNO INCREMENT BY 1 START WITH 1 MAXVALUE 100;

-- CYCLE: WITH CYCLE, WHEN THE RANGE IS EXHAUSTED, VALUES RESETS TO START VALUE;


CREATE SEQUENCE SNO INCREMENT BY 1 START WITH 1 MAXVALUE 100 CYCLE;

CREATE SEQUENCE customers_seq
 START WITH     1000
 INCREMENT BY   1;

-- CHECK STATUS OF SEQUENCE 
SELECT SNO.CURRVAL FROM DUAL; 

SELECT SNO.NEXTVAL FROM DUAL; 


CREATE TABLE SEQ(
    S_NO NUMERIC (19), 
    S_NAME VARCHAR (340)
);

INSERT INTO SEQ VALUES(SNO.CURRVAL, 'SFD');
INSERT INTO SEQ VALUES(SNO.NEXTVAL, 'FDS');
INSERT INTO SEQ VALUES(SNO.NEXTVAL, 'RST');
INSERT INTO SEQ VALUES(SNO.NEXTVAL, 'FRE');
INSERT INTO SEQ VALUES(SNO.NEXTVAL, 'GBS');
INSERT INTO SEQ VALUES(SNO.NEXTVAL, 'HTS');
INSERT INTO SEQ VALUES(SNO.NEXTVAL, 'BTG');


DROP SEQUENCE SNO;