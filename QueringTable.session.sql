CREATE TABLE Movies(
    id INTEGER PRIMARY KEY,
    name TEXT,
    release_year INTEGER
);

INSERT INTO movies VALUES (1, "LEO", 2023);
INSERT INTO movies VALUES(2,"KGF2",2022);
INSERT INTO movies VALUES(3,"Master",2020);
INSERT INTO movies VALUES(4,"Animal",2024);
INSERT INTO movies VALUES(5,"Kaththi",2014);
INSERT INTO movies VALUES(6,"Anniyan",2008);


SELECT * FROM movies;  --show all datas in movies table
SELECT name FROM movies;  --show only name fields
SELECT * FROM movies WHERE release_year > 2020; --filter based on relase_year grether than 2020
SELECT * FROM movies ORDER BY release_year; --sorted based on relase_year