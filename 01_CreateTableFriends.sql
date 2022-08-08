CREATE TABLE Friends (
    SNo INT, 
    st_Name VARCHAR(26),
    city VARCHAR(26),
    MobileNo INT
);

INSERT INTO Friends VALUES (1, 'Harsh Vidit', 'Jodhpur', 9430234233);
INSERT INTO Friends VALUES (2, 'Hridhanu Bose', 'Bengal', 9430234233);
INSERT INTO Friends VALUES (3, 'Avesh Singh', 'Muz', 9430234233);
INSERT INTO Friends VALUES (4, 'Avinash Kr', 'Barely', 9430234233);
INSERT INTO Friends VALUES (5, 'Raushan shahi', 'Muz', 9430234233);
INSERT INTO Friends VALUES (6, 'Vivek kr', 'Muz', 9430234233);
INSERT INTO Friends VALUES (7, 'Saurabh Singh', 'Jalandhar', 9430234233);
INSERT INTO Friends VALUES (8, 'Ritesh kr', 'Phagwara', 9430234233);
INSERT INTO Friends VALUES (9, 'Utkarsh singh', 'Matihari', 9430234233);
INSERT INTO Friends VALUES (10, 'Harsh ruhela', 'Bokaro', 9430234233);
INSERT INTO Friends VALUES (11, 'Shambhavi Singh', 'Muz', 9430234233);
INSERT INTO Friends VALUES (12, 'Hruthik', 'AP', 9430234233);

INSERT INTO Friends (SNO, st_Name, city) VALUES (13, 'Rishi', 'Delhi');

-- DESC Friends; 

SELECT * FROM Friends; 

SELECT st_Name, city from Friends;

SELECT * from Friends WHERE SNo > 5 ;

SELECT st_Name FROM Friends WHERE SNo = 5 ;

