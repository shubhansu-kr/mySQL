CREATE TABLE Cars(
    RegNo NUMERIC(16) PRIMARY KEY,
    EngineNo Numeric(16) UNIQUE,
    ChesisNo NUMERIC(16) UNIQUE,
    Model_Name VARCHAR(26) Not Null,
    Manufacturer VARCHAR(26)
);

-- Not Null is used for the attributes which may have duplicate 
-- entries but cannot be null. eg- Name 

