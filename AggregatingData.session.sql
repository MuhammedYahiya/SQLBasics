CREATE TABLE fruits(
    id INTEGER PRIMARY KEY,
    name TEXT,
    quantity INTEGER,
    aisle INTEGER
);


INSERT INTO fruits VALUES(1,"orange",6,2);
INSERT INTO fruits VALUES(2,"banana",4,2);
INSERT INTO fruits VALUES(3,"grapes",3,3);
INSERT INTO fruits VALUES(4,"mango",2,3);
INSERT INTO fruits VALUES(5,"guva",5,4);
INSERT INTO fruits VALUES(6,"apple",1,4);


SELECT SUM( quantity) FROM fruits; --sum the quantity and shows 21
SELECT MAX(quantity) FROM fruits; --show the maximum quantity
SELECT aisle, SUM(quantity) FROM fruits GROUP BY aisle;  --grouped the asile and show quantity based on each asile