CREATE TABLE exercise_logs (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    minutes INTEGER,
    calories INTEGER,
    heart_rate INTEGER
);


INSERT INTO exercise_logs (type,minutes,calories,heart_rate) VALUES
("biking",30,100,110),
("biking",10,30,105),
("dancing",15,200,120),
("tree climbing",30,70,90),
("tree climbing",25,72,80),
("rowing",30,70,90),
("hiking",60,80,85),
("dancing",15,165,120);


/*Show only the outdoor activity type*/
SELECT * FROM exercise_logs WHERE type IN("biking","tree climbing","rowing","hiking");


CREATE TABLE drs_favorite(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    reason TEXT
);

INSERT INTO drs_favorite (type, reason) VALUES
("biking", "Improve endurance and flexibility"),
("hiking", "Increase cardiovascular health");

/*Select all rows from exercise_logs table where the type is in drs_favorite table*/
SELECT * FROM exercise_logs WHERE type IN (SELECT type FROM drs_favorite)


/* check  the reason have any cardiovascular*/
SELECT * FROM exercise_logs WHERE type IN(SELECT type FROM drs_favorite WHERE reason LIKE "%cardiovascular%");


/*calculate the sum of calories of each type and make the calories as a new coloumn total_calories*/

SELECT type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type;

/*filter inside the total_calories*/
SELECT type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type HAVING total_calories > 80;

/* count the type thats more than or equal 2*/
SELECT type FROM exercise_logs GROUP BY type HAVING COUNT(*) >=2;