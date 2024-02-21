CREATE TABLE Famous_People (id INTEGER PRIMARY KEY AUTO_INCREMENT,
first_name TEXT,
last_name TEXT,
birthdate TEXT,
occupation INTEGER,
friends_id INTEGER
);

INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Leonardo", "Dicaprio", "11-11-1974", 1, 10);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Willie", "Nelson", "04-29-1933", 2, 9);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Misty", "Copeland", "09-10-1982", 3, 8);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Doutzen", "Kroes", "01-23-1985", 4, 7);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Jack", "Nicholson", "04-22-1937", 1,6);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Christoph", "Waltz", "10-04-1956", 1, 5);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Bob", "Fosse", "04-27-1911", 3, 4);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Thom", "Yorke", "10-07-1968", 2, 3);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Kate", "Moss", "01-16-1974", 4, 2);
INSERT INTO Famous_People (first_name, last_Name, birthdate, occupation, friends_id)
VALUES ("Cary", "Grant", "01-18-1904", 5, 1);

CREATE TABLE Occupation (id INTEGER PRIMARY KEY,
title TEXT);

INSERT INTO Occupation VALUES (1, "Actor");
INSERT INTO Occupation VALUES (2, "Musician");
INSERT INTO Occupation VALUES (3, "Dancer");
INSERT INTO Occupation VALUES (4, "Model");
INSERT INTO Occupation VALUES (5, "Actor");


/* show the occupation of each famous_people*/
SELECT Famous_people.first_name, Famous_people.last_name, Occupation.title FROM famous_people
    JOIN Occupation
    ON famous_people.id = Occupation.id

/* show there friends using self join*/
SELECT Famous_people.first_name, Famous_people.last_name, friends.first_name as firend_first_name, friends.last_name as firend_last_name FROM famous_people
    JOIN famous_people friends
    ON famous_people.friends_id = friends.id
