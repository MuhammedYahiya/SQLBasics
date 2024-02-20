CREATE TABLE students(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone INTEGER,
    birthdate TEXT
);


CREATE TABLE students_grade(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    student_id INTEGER,
    test TEXT,
    grade INTEGER
);

INSERT INTO students(first_name,last_name,email,phone,birthdate) VALUES
("Peter","Rabbit","peter@gmail.com",55559999,"2002-06-24"),
("Alice","Wonderland","alice@gmail.com",55554444,"2002-04-16");

INSERT INTO students_grade (student_id,test,grade) VALUE
(1,"Nutrition",95),
(2,"Nutrition",92),
(1,"Chemistry",85),
(2,"Chemistry",95);


/*Cross join*/
SELECT * FROM students_grade,students; --just join the two tables

/* implicit inner join */

SELECT * FROM students_grade,students
    WHERE students_grade.student_id = students.id; --join based on the id 

/* explicit inner join */
SELECT students.first_name,students.email,students_grade.test,students_grade.grade FROM students
    JOIN students_grade
    ON students.id = students_grade.student_id
    WHERE grade > 90;