New:
create database msis;

use msis;

CREATE TABLE Comments (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    commentText TEXT
);

INSERT INTO Comments (id, commentText) VALUES
(1, "I have something important to say"),
(2, "D&S is awesome"),
(3, "😁");

select * from Comments;














Old:
create database db_a7;

use db_a7;

CREATE TABLE CommentText (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    commentText VARCHAR(64)
);

INSERT INTO CommentText (id, commentText) VALUES
(1, "I have something important to say"),
(2, "D&S is awesome"),
(3, "😁");

select * from CommentText;






Old:
create database db_a7;

use db_a7;

CREATE TABLE Student (
    userid VARCHAR(64) PRIMARY KEY,
    firstName VARCHAR(64),
    lastName VARCHAR(64),
    dob DATE DEFAULT NULL,
    gender CHAR(1) DEFAULT ''
);

INSERT INTO Student (userid, firstName, lastName, dob, gender) VALUES
("huang263", "Jack", "Huang", "1997-05-06",  "M"),
("ruoctian", "Riva", "Tian", "1997-11-13",  "F");

CREATE TABLE StudentGrade (
    gradeId INTEGER PRIMARY KEY AUTO_INCREMENT,
    userid VARCHAR(64) UNIQUE,
    studentcomment TEXT NOT NULL,
    commentDateUtc DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    gpa ENUM('low', 'medium', 'high') NOT NULL DEFAULT 'high'
);

INSERT INTO StudentGrade (gradeId, userid, studentcomment) VALUES
(1, 'huang263', 'JJJack Huang'),
(2, 'ruoctian', 'RRRiva Tian');

select * from Student;
