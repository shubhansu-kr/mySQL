CREATE TABLE STUDS (
    ST_ID NUMERIC(10) PRIMARY KEY, 
    ST_NAME VARCHAR(28) NOT NULL, 
    SECTION VARCHAR(28),
    ROLL NUMERIC(10) UNIQUE, 
    COUNTRY VARCHAR(33) NOT NULL, 
    ST VARCHAR(33) NOT NULL
);

-- DECOMPOSE THE TABLE 
CREATE TABLE STUDS (
    ST_ID NUMERIC(10) PRIMARY KEY, 
    ST_NAME VARCHAR(33) NOT NULL,
    COUNTRY VARCHAR(33) NOT NULL, 
    ST VARCHAR(33) NOT NULL,
    ROLL NUMERIC(10) REFERENCES SECTION(ROLL)
);

CREATE TABLE SECTION (
    ROLL NUMERIC(10) PRIMARY KEY, 
    SECTION VARCHAR(33), 
    COURSE VARCHAR(33)
);

CREATE TABLE TEMP1 (
    STU_ID NUMERIC(10), 
    COURSE VARCHAR(11), 
    HOBBY VARCHAR(22)
);

CREATE TABLE D1 (
    STU_ID NUMERIC(10), 
    COURSE VARCHAR(22)
);

CREATE TABLE D2 (
    STU_ID NUMERIC(10), 
    HOBBY VARCHAR(22)
);