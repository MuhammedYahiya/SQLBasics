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